// 待真机验证
//
// GpxParser.swift — 数据格式组
// GPX 解析：trk/trkpt、时间、ele、心率/功率扩展、命名空间兼容；以及 GPX → FIT 入口。
//
// 对照安卓源码：
// - 解析口径：GpxToFitConverter.kt parseGpx（正则版：lat/lon 两种属性顺序、gpxtpx:hr/cad/power、
//   <hr>/<cadence>/<cad>/<power> 兜底、<jichi:*> 元数据）。本文件改用 Foundation.XMLParser
//   （命名空间兼容更好；正则在 Swift 里同样能写，但 XML 解析器对嵌套 extensions 更稳）。
// - 运动类型：同文件 detectSportFromGpx（<name> 标记解析，见 FitSport.detect）。
// - 单点兜底元数据：Keep cycling 单点轨迹用 <jichi:distance/duration/calorie/avgHr/maxHr/avgCadence>
//   补 total_distance/时长，否则目标平台显示 0 里程。
// - 点数上限：安卓 MAX_POINTS = 50000，长距离骑行不截断；这里同样。

import Foundation

public enum GpxError: Error, LocalizedError {
    case invalidXml(String)
    case noTrackPoints

    public var errorDescription: String? {
        switch self {
        case .invalidXml(let m): return "GPX 解析失败：\(m)"
        case .noTrackPoints: return "GPX 里没有有效轨迹点"
        }
    }
}

/// Keep 单点兜底元数据（GpxToFitConverter.Meta 同款）。
public struct GpxMeta {
    public var distanceMeters: Double = 0
    public var durationSeconds: Int64 = 0
    public var calories: Int = 0
    public var avgHeartRate: Int = 0
    public var maxHeartRate: Int = 0
    public var avgCadence: Int = 0
    public var valid: Bool { distanceMeters > 0 || durationSeconds > 0 }
    public init() {}
}

public struct GpxParseResult {
    public var points: [TrackPoint]
    public var name: String?
    public var type: String?
    public var sport: FitSport?       // 从 <name>/<type> 猜到的运动类型，猜不到为 nil
    public var subSport: FitSport.SubSport
    public var meta: GpxMeta

    public init(points: [TrackPoint], name: String? = nil, type: String? = nil,
                sport: FitSport? = nil, subSport: FitSport.SubSport = .generic, meta: GpxMeta = GpxMeta()) {
        self.points = points; self.name = name; self.type = type
        self.sport = sport; self.subSport = subSport; self.meta = meta
    }
}

public enum GpxParser {

    public static let maxPoints = 50000 // 安卓同款上限

    // MARK: - 解析

    /// 解析 GPX 数据。时间缺失的点记 0（后续生成 FIT 时按索引补递增时间，与安卓一致）。
    public static func parse(_ data: Data) throws -> GpxParseResult {
        let delegate = ParserDelegate()
        let parser = XMLParser(data: data)
        parser.delegate = delegate
        parser.shouldProcessNamespaces = true // 命名空间兼容：gpxtpx:hr 与无前缀 <hr> 都按本地名收
        guard parser.parse() else {
            throw GpxError.invalidXml(parser.parserError?.localizedDescription ?? "未知错误")
        }
        guard !delegate.points.isEmpty else { throw GpxError.noTrackPoints }
        let detected = delegate.name.flatMap { FitSport.detect(fromName: $0) }
            ?? delegate.type.flatMap { FitSport.detect(fromName: $0) }
        return GpxParseResult(points: delegate.points, name: delegate.name, type: delegate.type,
                              sport: detected?.sport, subSport: detected?.subSport ?? .generic,
                              meta: delegate.meta)
    }

    public static func parse(_ text: String) throws -> GpxParseResult {
        guard let data = text.data(using: .utf8) else { throw GpxError.invalidXml("非 UTF-8 文本") }
        return try parse(data)
    }

    // MARK: - GPX → FIT 入口

    /// GPX → FIT：解析后直接生成 FIT。sport 传 nil 时从 <name> 猜，猜不到按骑行兜底（安卓同款）。
    /// - Parameters:
    ///   - source: 来源平台（DataSource，骨架组 Models.swift 定义；用于调用方记账，不影响字节内容）
    ///   - fixGcj02: 为 true 时先把轨迹点按 GCJ-02 → WGS-84 转一遍（迈金/Keep 等国内源用）
    ///   - shiftHours: 行者 FIT 式时间问题不适用于 GPX，一般留 0；个别源时间带 +8 时区偏移时传 -8
    public static func gpxToFit(_ data: Data, sport: FitSport? = nil, source: DataSource? = nil,
                                fixGcj02: Bool = false, shiftHours: Double = 0) throws -> Data {
        _ = source // 来源只用于调用方记账，不改变 FIT 内容
        let result = try parse(data)
        var points = result.points
        if fixGcj02 { points = GeoUtils.gcj02ToWgs84(points: points) }
        if shiftHours != 0 {
            let delta = shiftHours * 3600
            points = points.map { var p = $0; if p.timestamp > 0 { p.timestamp += delta }; return p }
        }
        let resolved = sport ?? result.sport ?? .cycling
        var options = FitBuildOptions()
        if points.count == 1, result.meta.valid {
            // 单点兜底：用 <jichi:*> 元数据补里程/时长/卡路里/心率（安卓 v8.1.4）
            options.overrideDistanceMeters = result.meta.distanceMeters
            options.timerSeconds = result.meta.durationSeconds
            if result.meta.calories > 0 { options.totalCalories = result.meta.calories }
        }
        return FitBuilder.build(points: points, sport: resolved, subSport: result.subSport, options: options)
    }

    /// FIT → GPX 的轨迹点提取（上层入口在 GpxBuilder.fitToGpx；这里只做解析复用）。
    public static func fitToTrackPoints(_ data: Data) throws -> FitParseResult {
        try FitParser.parse(data)
    }

    // MARK: - XML 解析器

    private final class ParserDelegate: NSObject, XMLParserDelegate {
        var points: [TrackPoint] = []
        var name: String?
        var type: String?
        var meta = GpxMeta()

        private var current: TrackPoint?
        private var inTrkpt = false
        private var inName = false
        private var inType = false
        private var inExtensions = false
        private var text = ""
        private var elementStack: [String] = []

        // 本地名（去前缀）：gpxtpx:hr、hr、ns3:hr 都收成 "hr"。
        private func localName(_ elementName: String) -> String {
            elementName.split(separator: ":").last.map(String.init) ?? elementName
        }

        func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?,
                    qualifiedName qName: String?, attributes attributeDict: [String: String] = [:]) {
            let local = localName(elementName)
            elementStack.append(local)
            text = ""
            switch local {
            case "trkpt":
                // lat/lon 两种属性顺序都兼容（安卓 v7.9.8 专门处理过 lon 在前的文件）
                guard points.count < GpxParser.maxPoints,
                      let latStr = attributeDict["lat"], let lonStr = attributeDict["lon"],
                      let lat = Double(latStr), let lon = Double(lonStr),
                      GeoUtils.isValidCoordinate(lat: lat, lon: lon) else {
                    current = nil
                    return
                }
                current = TrackPoint(lat: lat, lon: lon)
                inTrkpt = true
            case "name":
                // 只收 trk 下的 <name>（trkpt 里一般没有 name；extensions 里的 name 不收）
                if !inTrkpt, name == nil { inName = true }
            case "type":
                if !inTrkpt, type == nil { inType = true }
            case "extensions":
                if inTrkpt { inExtensions = true }
            default:
                break
            }
        }

        func parser(_ parser: XMLParser, foundCharacters string: String) {
            text += string
        }

        func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?,
                    qualifiedName qName: String?) {
            let local = localName(elementName)
            let value = text.trimmingCharacters(in: .whitespacesAndNewlines)
            defer { text = "" }
            guard let last = elementStack.popLast(), last == local else { return }
            if inTrkpt, var p = current {
                switch local {
                case "ele":
                    if let v = Double(value) { p.ele = v }
                case "time":
                    p.timestamp = Self.parseTime(value) ?? 0
                case "hr":
                    p.heartRate = Int(value) ?? p.heartRate
                case "cad", "cadence":
                    p.cadence = Int(value) ?? p.cadence
                case "power":
                    p.power = Int(value) ?? p.power
                case "trkpt":
                    points.append(p)
                    current = nil
                    inTrkpt = false
                    inExtensions = false
                    return
                case "extensions":
                    inExtensions = false
                default:
                    break
                }
                current = p
                return
            }
            // trkpt 之外：<name>、<type>、<jichi:*> 元数据
            switch local {
            case "name":
                if inName { name = value; inName = false }
            case "type":
                if inType { type = value; inType = false }
            case "distance":
                if elementStack.contains("extensions") { meta.distanceMeters = Double(value) ?? 0 }
            case "duration":
                if elementStack.contains("extensions") { meta.durationSeconds = Int64(value) ?? 0 }
            case "calorie":
                if elementStack.contains("extensions") { meta.calories = Int(value) ?? 0 }
            case "avgHr":
                if elementStack.contains("extensions") { meta.avgHeartRate = Int(value) ?? 0 }
            case "maxHr":
                if elementStack.contains("extensions") { meta.maxHeartRate = Int(value) ?? 0 }
            case "avgCadence":
                if elementStack.contains("extensions") { meta.avgCadence = Int(value) ?? 0 }
            default:
                break
            }
        }

        func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
            // XML 损坏时，已收到的点保留；调用方按 GpxError 处理（parse() 会抛错）。
        }

        /// 解析 ISO-8601 时间：带 Z、带时区偏移、带小数秒、无时区（当 UTC）都收。
        /// 安卓正则版只认 "...Z" 形，遇到 "+08:00" 会丢时间；这里用 ISO8601DateFormatter 全收。
        static func parseTime(_ s: String) -> TimeInterval? {
            var t = s.trimmingCharacters(in: .whitespacesAndNewlines)
            guard !t.isEmpty else { return nil }
            t = t.replacingOccurrences(of: " ", with: "T")
            let f = ISO8601DateFormatter()
            f.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
            if let d = f.date(from: t) { return d.timeIntervalSince1970 }
            f.formatOptions = [.withInternetDateTime]
            if let d = f.date(from: t) { return d.timeIntervalSince1970 }
            // 无时区后缀（既无 Z 也无 ±hh:mm）：当 UTC 处理。
            let hasZone = t.hasSuffix("Z") || t.dropFirst(10).contains("+") || t.dropFirst(10).contains("-")
            if !hasZone, let d = f.date(from: t + "Z") { return d.timeIntervalSince1970 }
            // 最后兜底：yyyy-MM-dd'T'HH:mm:ss
            let df = DateFormatter()
            df.locale = Locale(identifier: "en_US_POSIX")
            df.timeZone = TimeZone(secondsFromGMT: 0)
            df.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
            return df.date(from: t)?.timeIntervalSince1970
        }
    }
}

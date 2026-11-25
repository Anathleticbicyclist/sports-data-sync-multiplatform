// 待真机验证
//
// GpxBuilder.swift — 数据格式组
// GPX 生成（标准 1.1，含心率/踏频/功率扩展）；以及 FIT → GPX 入口。
//
// 对照安卓源码：
// - 生成口径：merge/TrackMerger.java buildGpx（creator“鸡翅幸哲迈进OB”、gpxtpx 命名空间、
//   坐标 7 位小数、UTC 时间 yyyy-MM-dd'T'HH:mm:ss'Z'、有 hr/cad/power 才写 extensions）。
// - FIT → GPX：先 FitParser.parse 拿点列，再按同一格式写出；时间缺失的点不写 <time>。

import Foundation

public enum GpxBuilder {

    public static let creator = "鸡翅幸哲迈进OB"

    // MARK: - 生成

    /// 轨迹点 → GPX 1.1 文本。`title` 写进 <name>；`sportName` 写进 <type>
    ///（running/cycling/hiking，与安卓 TrackMerger.sportName 一致）。
    /// `meta` 有值时把 <jichi:*> 元数据写进 <extensions>（Keep 单点兜底透传用）。
    public static func build(points: [TrackPoint], title: String, sport: FitSport = .cycling,
                             meta: GpxMeta? = nil) -> String {
        let sportName: String = {
            switch sport {
            case .running: return "running"
            case .hiking: return "hiking"
            default: return "cycling"
            }
        }()
        var sb = ""
        sb += "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
        sb += "<gpx version=\"1.1\" creator=\"\(creator)\" xmlns=\"http://www.topografix.com/GPX/1/1\" "
        sb += "xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\" "
        sb += "xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" "
        sb += "xsi:schemaLocation=\"http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd\""
        if let m = meta, m.valid {
            sb += " xmlns:jichi=\"https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform\""
        }
        sb += ">\n"
        sb += "<metadata><name>\(escape(title))</name><time>\(formatTime(Date().timeIntervalSince1970))</time></metadata>\n"
        sb += "<trk>\n<name>\(escape(title))</name>\n<type>\(sportName)</type>\n"
        if let m = meta, m.valid {
            sb += "<extensions>\n"
            if m.distanceMeters > 0 { sb += "<jichi:distance>\(trimNum(m.distanceMeters))</jichi:distance>\n" }
            if m.durationSeconds > 0 { sb += "<jichi:duration>\(m.durationSeconds)</jichi:duration>\n" }
            if m.calories > 0 { sb += "<jichi:calorie>\(m.calories)</jichi:calorie>\n" }
            if m.avgHeartRate > 0 { sb += "<jichi:avgHr>\(m.avgHeartRate)</jichi:avgHr>\n" }
            if m.maxHeartRate > 0 { sb += "<jichi:maxHr>\(m.maxHeartRate)</jichi:maxHr>\n" }
            if m.avgCadence > 0 { sb += "<jichi:avgCadence>\(m.avgCadence)</jichi:avgCadence>\n" }
            sb += "</extensions>\n"
        }
        sb += "<trkseg>\n"
        for p in points {
            sb += "<trkpt lat=\"\(trimNum(p.lat))\" lon=\"\(trimNum(p.lon))\">\n"
            if p.ele > -1000, p.ele < 9000 {
                sb += "<ele>\(trimNum(p.ele))</ele>\n"
            }
            if p.timestamp > 0 {
                sb += "<time>\(formatTime(p.timestamp))</time>\n"
            }
            if p.heartRate > 0 || p.cadence > 0 || p.power > 0 {
                sb += "<extensions><gpxtpx:TrackPointExtension>\n"
                if p.heartRate > 0 { sb += "<gpxtpx:hr>\(p.heartRate)</gpxtpx:hr>\n" }
                if p.cadence > 0 { sb += "<gpxtpx:cad>\(p.cadence)</gpxtpx:cad>\n" }
                if p.power > 0 { sb += "<gpxtpx:power>\(p.power)</gpxtpx:power>\n" }
                sb += "</gpxtpx:TrackPointExtension></extensions>\n"
            }
            sb += "</trkpt>\n"
        }
        sb += "</trkseg>\n</trk>\n</gpx>\n"
        return sb
    }

    public static func buildData(points: [TrackPoint], title: String, sport: FitSport = .cycling,
                                 meta: GpxMeta? = nil) -> Data {
        Data(build(points: points, title: title, sport: sport, meta: meta).utf8)
    }

    // MARK: - FIT → GPX 入口

    /// FIT → GPX：解析 FIT 拿点列与摘要，再按标准 1.1 写出。
    /// 标题默认取文件名（去扩展名）；GCJ-02 的 FIT（如迈金）先转 WGS-84 再写，
    /// 否则导出的 GPX 在别的地图上整体偏几百米。
    /// - Parameter fixGcj02: 为 true 时对解析出的点做 GCJ-02 → WGS-84。
    public static func fitToGpx(_ data: Data, title: String, fixGcj02: Bool = false,
                                source: DataSource? = nil) throws -> Data {
        _ = source // 来源只用于调用方记账，不改变 GPX 内容
        let result = try FitParser.parse(data)
        var points = result.points
        if fixGcj02 { points = GeoUtils.gcj02ToWgs84(points: points) }
        let sport = FitSport(rawValue: result.summary.sport) ?? .cycling
        var meta: GpxMeta? = nil
        if points.count == 1 {
            // 单点 FIT：把摘要里的里程/时长透传成 <jichi:*>，下游转 FIT 时不丢数据
            var m = GpxMeta()
            m.distanceMeters = result.summary.totalDistanceMeters
            m.durationSeconds = result.summary.timerSeconds
            m.calories = result.summary.totalCalories
            if m.valid { meta = m }
        }
        return buildData(points: points, title: title, sport: sport, meta: meta)
    }

    /// GPX → FIT 的另一路入口（与 GpxParser.gpxToFit 相同实现，放在这里供“从 FIT 出发”的调用方就近用）。
    public static func gpxToFit(_ data: Data, sport: FitSport? = nil) throws -> Data {
        try GpxParser.gpxToFit(data, sport: sport)
    }

    // MARK: - 格式辅助（与安卓 TrackMerger.trimNum / SimpleDateFormat 同款）

    /// 数字去尾零：整数不写小数点，否则 7 位小数（安卓 trimNum 同款）。
    static func trimNum(_ v: Double) -> String {
        guard v.isFinite else { return "0" }
        if v == v.rounded(.towardZero), abs(v) < 1e15 { return String(Int64(v)) }
        return String(format: "%.7f", v)
    }

    /// Unix 秒 → UTC 的 yyyy-MM-dd'T'HH:mm:ss'Z'。
    static func formatTime(_ unix: TimeInterval) -> String {
        let df = DateFormatter()
        df.locale = Locale(identifier: "en_US_POSIX")
        df.timeZone = TimeZone(secondsFromGMT: 0)
        df.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
        return df.string(from: Date(timeIntervalSince1970: unix))
    }

    static func escape(_ s: String) -> String {
        s.replacingOccurrences(of: "&", with: "&amp;")
            .replacingOccurrences(of: "<", with: "&lt;")
            .replacingOccurrences(of: ">", with: "&gt;")
            .replacingOccurrences(of: "\"", with: "&quot;")
    }
}

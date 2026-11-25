// 待真机验证
//
// FitParser.swift — 数据格式组
// FIT 文件解析：文件头 / 定义消息 / 数据消息 / 压缩时间戳消息；提取轨迹点与活动摘要。
// 解析失败抛 FitError，不崩溃；坏文件返回错误，不返回半截数据。
//
// 对照安卓源码：
// - 解析口径：merge/FitParser.java（Garmin FIT SDK 解码版）
// - 坑位修正：api/FitDeviceFaker.kt v9.6.9（0x80=压缩时间戳、0x40=定义消息；定义消息 bit5=开发者字段；
//   architecture 字节决定大小端；CRC-16 用 16 项 nibble 表）
// - 坐标修正：util/FitGcj02Fixer.kt；时间修正：util/FitTimeFixer.kt
// - 字段号以 Garmin FIT Profile 21.x 为准，与安卓 GpxToFitConverter.kt 的注释一致

import Foundation

public enum FitError: Error, LocalizedError {
    case notFitFile
    case truncated
    case invalidHeader(String)
    case noRecordPoints
    case unsupported(String)

    public var errorDescription: String? {
        switch self {
        case .notFitFile: return "不是 FIT 文件（缺 .FIT 签名）"
        case .truncated: return "FIT 文件不完整"
        case .invalidHeader(let m): return "FIT 文件头异常：\(m)"
        case .noRecordPoints: return "FIT 里没有带坐标的轨迹点"
        case .unsupported(let m): return "不支持的 FIT 内容：\(m)"
        }
    }
}

/// FIT 标准 CRC-16（16 项 nibble 表，与安卓 FitBuilder/FitDeviceFaker/FitGcj02Fixer 三处同一张表）。
/// 注意：这不是 CRC-16/CCITT(0x1021)，FitTimeFixer.kt 里那个 0x8408 逐位算法是错的，别用。
public enum FitCRC {
    private static let table: [UInt16] = [
        0x0000, 0xCC01, 0xD801, 0x1400, 0xF001, 0x3C00, 0x2800, 0xE401,
        0xA001, 0x6C00, 0x7800, 0xB401, 0x5000, 0x9C01, 0x8801, 0x4400
    ]

    public static func crc16(_ data: Data, range: Range<Int>? = nil) -> UInt16 {
        var crc: UInt16 = 0
        let r = range ?? 0..<data.count
        for i in r {
            let b = UInt16(data[i])
            var tmp = table[Int(crc & 0xF)]
            crc = (crc >> 4) & 0x0FFF
            crc = crc ^ tmp ^ table[Int(b & 0xF)]
            tmp = table[Int(crc & 0xF)]
            crc = (crc >> 4) & 0x0FFF
            crc = crc ^ tmp ^ table[Int((b >> 4) & 0xF)]
        }
        return crc
    }
}

/// FIT 基础类型号（FitBuilder.kt 同款）。
public enum FitBaseType: UInt8 {
    case `enum` = 0x00
    case sint8 = 0x01
    case uint8 = 0x02
    case sint16 = 0x83
    case uint16 = 0x84
    case sint32 = 0x85
    case uint32 = 0x86
    case string = 0x07
    case float32 = 0x88
    case uint8z = 0x0A
    case uint16z = 0x8B
    case uint32z = 0x8C
    case byte = 0x0D

    public var size: Int {
        switch self {
        case .enum, .sint8, .uint8, .uint8z, .byte: return 1
        case .sint16, .uint16, .uint16z: return 2
        case .sint32, .uint32, .uint32z, .float32: return 4
        case .string: return 1 // 变长，按定义里的 size 走
        }
    }

    /// 该类型的“无效值”（FIT 用全 1 表示缺失）。
    public var invalidUInt: UInt64 {
        switch self {
        case .enum, .sint8, .uint8, .uint8z, .byte: return 0xFF
        case .sint16, .uint16, .uint16z: return 0xFFFF
        case .sint32, .uint32, .uint32z, .float32: return 0xFFFF_FFFF
        case .string: return 0
        }
    }
}

/// 全局消息号（只列解析用到的；编号来自 Garmin FIT Profile，与安卓代码一致）。
public enum FitGlobalMessage: UInt16 {
    case fileId = 0
    case sport = 12
    case session = 18
    case lap = 19
    case record = 20
    case event = 21
    case deviceInfo = 23
    case activity = 34
}

/// 活动摘要（对照安卓 FitParser.FitResult：点列 + sport + 爬升/下降 + 计时 + 卡路里 + 设备原值）。
public struct FitSummary {
    public var sport: Int              // FIT sport 枚举：1 跑步 / 2 骑行 / 17 徒步…；-1 未知
    public var title: String           // 安卓解析不带标题，恒为空串
    public var ascentMeters: Int
    public var descentMeters: Int
    public var timerSeconds: Int64     // 优先 session 的 total_timer_time，没有才用首尾时间跨度
    public var totalCalories: Int
    public var manufacturer: Int       // file_id 原值，合并时照抄；默认 255
    public var product: Int            // file_id 原值；默认 1
    public var serialNumber: UInt32    // file_id 原值；0 表示无
    public var startTimestamp: TimeInterval // Unix 秒；0 未知
    public var endTimestamp: TimeInterval
    public var totalDistanceMeters: Double // session 的 total_distance 或点列累加

    public init() {
        sport = -1; title = ""; ascentMeters = 0; descentMeters = 0; timerSeconds = 0
        totalCalories = 0; manufacturer = 255; product = 1; serialNumber = 0
        startTimestamp = 0; endTimestamp = 0; totalDistanceMeters = 0
    }
}

public struct FitParseResult {
    public var points: [TrackPoint]
    public var summary: FitSummary

    /// 转成共享的 ActivityRecord（Models.swift 的字段口径：距离米、时长秒、sportType 是字符串）。
    /// remoteId 填 ""（FIT 里没有平台侧的活动 id）；fileName 由调用方传。
    public func toActivityRecord(id: String, source: DataSource, title: String, fileName: String) -> ActivityRecord {
        let sportName: String = {
            switch summary.sport {
            case 1: return "running"
            case 17: return "hiking"
            case 2: return "cycling"
            default: return "cycling"
            }
        }()
        let duration = summary.timerSeconds > 0 ? Double(summary.timerSeconds)
            : (summary.endTimestamp > summary.startTimestamp ? summary.endTimestamp - summary.startTimestamp : 0)
        return ActivityRecord(id: id, source: source, title: title,
                              startDate: Date(timeIntervalSince1970: summary.startTimestamp),
                              distanceMeters: summary.totalDistanceMeters,
                              durationSeconds: duration,
                              elevationGainMeters: Double(summary.ascentMeters),
                              sportType: sportName, remoteId: "", fileName: fileName)
    }
}

public enum FitParser {

    public static let fitEpochOffset: TimeInterval = 631065600 // FIT 纪元 1989-12-31 UTC 与 Unix 纪元之差

    // MARK: - 入口

    public static func isFit(_ data: Data) -> Bool {
        data.count >= 12 && data[8] == 0x2E && data[9] == 0x46 && data[10] == 0x49 && data[11] == 0x54 // ".FIT"
    }

    /// 解析 FIT。无坐标点、文件头坏、截断都抛错；不崩溃。
    /// - Parameter verifyCRC: 为 true 时校验文件尾 CRC，校验不过抛错。默认 false：
    ///   行者等来源的文件 CRC 本来就是错的（FitTimeFixer.kt 注明 iGPSPORT 不查 CRC），
    ///   查 CRC 会把能用的文件也拒掉。
    public static func parse(_ data: Data, verifyCRC: Bool = false) throws -> FitParseResult {
        guard data.count >= 14 else { throw FitError.truncated }
        guard isFit(data) else { throw FitError.notFitFile }
        let headerSize = Int(data[0])
        guard headerSize == 12 || headerSize == 14 else {
            throw FitError.invalidHeader("header size = \(headerSize)")
        }
        guard headerSize <= data.count else { throw FitError.truncated }

        // 行者 FIT 的 data_size 字段可能比实际小 2 字节（FitTimeFixer.kt v7.1.1），
        // 所以 dataEnd 按文件实际大小算，末 2 字节当 CRC，不信任字段值。
        let declaredSize = Int(readUInt32LE(data, at: 4))
        var dataEnd = headerSize + declaredSize
        if dataEnd > data.count - 2 || dataEnd < headerSize { dataEnd = data.count - 2 }
        dataEnd = max(headerSize, dataEnd)

        if verifyCRC, data.count >= headerSize + 2 {
            let end = min(headerSize + declaredSize, data.count - 2)
            let stored = readUInt16LE(data, at: data.count - 2)
            if end > headerSize && FitCRC.crc16(data, range: 0..<end) != stored {
                throw FitError.invalidHeader("文件尾 CRC 不匹配")
            }
        }

        var points: [TrackPoint] = []
        points.reserveCapacity(4096)
        var summary = FitSummary()
        var lastTimestamp: UInt32 = 0 // 压缩时间戳 / 无时间戳点的回退基准（安卓用 longRef 存上一个有效时间）
        var defs: [Int: MessageDefinition] = [:]
        var pos = headerSize

        while pos < dataEnd {
            let header = data[pos]
            pos += 1
            if header & 0x80 != 0 {
                // 压缩时间戳数据消息：local type 在 bit5-6；时间戳是 5 位偏移（0-31 秒），
                // 满 32 秒回绕，基准取上一个完整时间戳的高位（FIT 协议标准做法）。
                // 跳过长度 = 1 + (totalSize - tsSize)，tsSize 取定义里 253 号字段的 size，不能写死
                // （FitDeviceFaker.kt v9.6.9 修正点 1）。
                let localType = Int((header >> 5) & 0x03)
                let timeOffset = UInt32(header & 0x1F)
                guard let def = defs[localType] else { break } // 无定义就无法知道长度，停
                let fullTs = decompressTimestamp(offset: timeOffset, lastFull: lastTimestamp)
                if def.globalNumber == FitGlobalMessage.record.rawValue {
                    if let p = recordPoint(data: data, at: pos, def: def, timestamp: fitToUnix(fullTs)) {
                        points.append(p)
                    }
                }
                lastTimestamp = fullTs
                pos += 1 + (def.totalSize - def.timestampFieldSize)
                if pos > dataEnd { break }
                continue
            }
            if header & 0x40 != 0 {
                // 定义消息（0x40 才是定义标志，0x80 不是——FitDeviceFaker.kt v9.6.9 修正点 1）。
                let localType = Int(header & 0x0F)
                guard let (def, next) = parseDefinition(data: data, at: pos - 1, header: header) else { break }
                defs[localType] = def
                pos = next
                if pos > dataEnd { break }
                continue
            }
            // 普通数据消息
            let localType = Int(header & 0x0F)
            guard let def = defs[localType] else { break }
            guard pos + def.totalSize <= dataEnd else { break }
            switch def.globalNumber {
            case FitGlobalMessage.record.rawValue:
                let ts = fieldUInt32(data: data, at: pos, def: def, fieldNumber: 253)
                if let ts { lastTimestamp = ts }
                if let p = recordPoint(data: data, at: pos, def: def, timestamp: ts.flatMap { fitToUnix($0) }) {
                    points.append(p)
                }
            case FitGlobalMessage.session.rawValue:
                applySession(data: data, at: pos, def: def, summary: &summary)
            case FitGlobalMessage.fileId.rawValue:
                applyFileId(data: data, at: pos, def: def, summary: &summary)
            case FitGlobalMessage.sport.rawValue:
                if summary.sport == -1,
                   let v = fieldUInt(data: data, at: pos, def: def, fieldNumber: 0), v != 0xFF {
                    summary.sport = Int(v)
                }
            default:
                break
            }
            pos += def.totalSize
        }

        guard !points.isEmpty else { throw FitError.noRecordPoints }

        // 摘要收尾：计时没有 session 值时退到首尾跨度（与安卓一致）。
        if summary.timerSeconds <= 0,
           let first = points.first?.timestamp, let last = points.last?.timestamp, last > first {
            summary.timerSeconds = Int64(last - first)
        }
        if summary.startTimestamp == 0 { summary.startTimestamp = points.first?.timestamp ?? 0 }
        if summary.endTimestamp == 0 { summary.endTimestamp = points.last?.timestamp ?? 0 }
        if summary.totalDistanceMeters <= 0 {
            summary.totalDistanceMeters = GeoUtils.totalDistanceMeters(points: points)
        }
        return FitParseResult(points: points, summary: summary)
    }

    // MARK: - 压缩时间戳

    /// 5 位偏移还原完整 FIT 时间戳：高位取上一个完整时间戳，还原值小于上一个则 +32 秒（回绕）。
    static func decompressTimestamp(offset: UInt32, lastFull: UInt32) -> UInt32 {
        var ts = (lastFull & ~0x1F) | offset
        if ts < lastFull { ts &+= 32 }
        return ts
    }

    /// FIT 时间戳（UInt32，自 1989-12-31 起的秒）→ Unix 秒。
    /// 用 UInt64 算，避免 2038 年附近及 0xFFFFFFFF 无效值溢出；无效值返回 nil 由调用方处理。
    public static func fitToUnix(_ fitTimestamp: UInt32) -> TimeInterval? {
        guard fitTimestamp != 0xFFFF_FFFF else { return nil }
        return TimeInterval(UInt64(fitTimestamp) + UInt64(fitEpochOffset))
    }

    public static func unixToFit(_ unix: TimeInterval) -> UInt32 {
        let v = Int64(unix) - Int64(fitEpochOffset)
        return UInt32(max(0, min(Int64(UInt32.max), v)))
    }

    // MARK: - 定义消息

    struct FieldDef {
        var number: Int
        var size: Int
        var baseType: UInt8
        var offset: Int
    }

    struct MessageDefinition {
        var globalNumber: UInt16
        var bigEndian: Bool
        var fields: [FieldDef]
        var totalSize: Int
        var timestampFieldSize: Int // 253 号字段的 size；压缩时间戳跳过长度要用
        func field(_ number: Int) -> FieldDef? { fields.first { $0.number == number } }
    }

    /// 解析一条定义消息。`at` 指向消息头字节。返回定义与下一条记录起点。
    static func parseDefinition(data: Data, at: Int, header: UInt8) -> (MessageDefinition, Int)? {
        var p = at + 1
        guard p + 5 <= data.count else { return nil }
        p += 1 // reserved
        let arch = data[p]; p += 1
        let bigEndian = arch != 0 // architecture != 0 为大端（FitDeviceFaker.kt 修正点 3）
        let globalNumber = bigEndian ? readUInt16BE(data, at: p) : readUInt16LE(data, at: p)
        p += 2
        let fieldCount = Int(data[p]); p += 1
        var fields: [FieldDef] = []
        var totalSize = 0
        var tsSize = 0
        for _ in 0..<fieldCount {
            guard p + 3 <= data.count else { return nil }
            let num = Int(data[p]), size = Int(data[p + 1]), base = data[p + 2]
            fields.append(FieldDef(number: num, size: size, baseType: base, offset: totalSize))
            totalSize += size
            if num == 253 { tsSize = size }
            p += 3
        }
        // bit5(0x20) 置位表示后面有开发者字段：1 字节个数 + 每字段 3 字节，跳过
        // （FitDeviceFaker.kt v9.6.9 修正点 2；不跳会整体错位）。
        if header & 0x20 != 0 {
            guard p + 1 <= data.count else { return nil }
            let devCount = Int(data[p]); p += 1
            p += devCount * 3
            guard p <= data.count else { return nil }
        }
        return (MessageDefinition(globalNumber: globalNumber, bigEndian: bigEndian, fields: fields,
                                  totalSize: totalSize, timestampFieldSize: tsSize), p)
    }

    // MARK: - 字段读取

    static func readUInt16LE(_ d: Data, at: Int) -> UInt16 {
        guard at + 1 < d.count else { return 0 }
        return UInt16(d[at]) | (UInt16(d[at + 1]) << 8)
    }

    static func readUInt16BE(_ d: Data, at: Int) -> UInt16 {
        guard at + 1 < d.count else { return 0 }
        return (UInt16(d[at]) << 8) | UInt16(d[at + 1])
    }

    static func readUInt32LE(_ d: Data, at: Int) -> UInt32 {
        guard at + 3 < d.count else { return 0 }
        return UInt32(d[at]) | (UInt32(d[at + 1]) << 8) | (UInt32(d[at + 2]) << 16) | (UInt32(d[at + 3]) << 24)
    }

    static func readInt32(_ d: Data, at: Int, bigEndian: Bool) -> Int32 {
        let u: UInt32
        if bigEndian {
            guard at + 3 < d.count else { return 0 }
            u = (UInt32(d[at]) << 24) | (UInt32(d[at + 1]) << 16) | (UInt32(d[at + 2]) << 8) | UInt32(d[at + 3])
        } else {
            u = readUInt32LE(d, at: at)
        }
        return Int32(bitPattern: u)
    }

    /// 按定义读一个无符号字段；无效值（全 1）或字段不存在返回 nil。
    static func fieldUInt(data: Data, at msgStart: Int, def: MessageDefinition, fieldNumber: Int) -> UInt64? {
        guard let f = def.field(fieldNumber) else { return nil }
        let off = msgStart + f.offset
        guard off + f.size <= data.count else { return nil }
        var v: UInt64 = 0
        if def.bigEndian {
            for i in 0..<f.size { v = (v << 8) | UInt64(data[off + i]) }
        } else {
            for i in 0..<f.size { v |= UInt64(data[off + i]) << (8 * i) }
        }
        // 无效值：全 1（按字段字节数算）
        let invalid: UInt64 = f.size >= 8 ? .max : (UInt64(1) << (8 * f.size)) - 1
        if v == invalid { return nil }
        return v
    }

    static func fieldUInt32(data: Data, at msgStart: Int, def: MessageDefinition, fieldNumber: Int) -> UInt32? {
        fieldUInt(data: data, at: msgStart, def: def, fieldNumber: fieldNumber).map { UInt32($0 & 0xFFFF_FFFF) }
    }

    // MARK: - 消息提取

    /// 半圆坐标 → 度（deg = semicircles * 180 / 2^31）。
    static func semicirclesToDegrees(_ raw: Int32) -> Double {
        Double(raw) * 180.0 / 2147483648.0
    }

    /// 一条 record 消息 → TrackPoint。无 lat/lon 返回 nil（安卓同样只收有坐标的点）。
    /// - timestamp: 已换算好的 Unix 秒；nil 时用上一个有效时间回退（安卓 longRef 做法），再没有就记 0。
    static func recordPoint(data: Data, at msgStart: Int, def: MessageDefinition,
                            timestamp: TimeInterval?) -> TrackPoint? {
        guard let latF = def.field(0), let lonF = def.field(1),
              latF.size == 4, lonF.size == 4 else { return nil }
        let latRaw = readInt32(data, at: msgStart + latF.offset, bigEndian: def.bigEndian)
        let lonRaw = readInt32(data, at: msgStart + lonF.offset, bigEndian: def.bigEndian)
        // 无效坐标：0x7FFFFFFF / -0x80000000（FitGcj02Fixer.kt 同款判断）
        guard latRaw != 0x7FFF_FFFF, latRaw != Int32(bitPattern: 0x8000_0000),
              lonRaw != 0x7FFF_FFFF, lonRaw != Int32(bitPattern: 0x8000_0000) else { return nil }
        let lat = semicirclesToDegrees(latRaw)
        let lon = semicirclesToDegrees(lonRaw)
        guard GeoUtils.isValidCoordinate(lat: lat, lon: lon) else { return nil }

        // 海拔优先 enhanced_altitude（field 78），没有再取 altitude（field 2）。
        // 待真机验证：enhanced_altitude 在 FIT Profile 21.x 里的 scale 安卓代码未写死
        // （只调 SDK 的 getEnhancedAltitude()），这里按“原始值即米”读，并做合理性兜底：
        // 原始值 > 9000 米视为 scale 不符，回退到 field 2；field 2 的原始编码是
        // uint16，(米 + 500) * 5，与 GpxToFitConverter 写入口径一致。
        var ele = 0.0
        if let v = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 78),
           v > 0, v < 9000 {
            ele = Double(v)
        } else if let v = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 2) {
            ele = Double(v) / 5.0 - 500.0
        }

        // 速度优先 enhanced_speed（73），没有再取 speed（6），都没有记 -1（安卓同款）。
        var speed = -1.0
        if let v = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 73) {
            speed = Double(v) / 1000.0
        } else if let v = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 6) {
            speed = Double(v) / 1000.0
        }
        let dist = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 5).map { Double($0) / 100.0 } ?? -1.0
        let hr = Int(fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 3) ?? 0)
        let cad = Int(fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 4) ?? 0)
        let pow = Int(fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 7) ?? 0)
        return TrackPoint(lat: lat, lon: lon, ele: ele, timestamp: timestamp ?? 0,
                          heartRate: min(255, hr), cadence: min(255, cad),
                          power: min(65535, pow), distanceMeters: dist, speedMetersPerSecond: speed)
    }

    static func applySession(data: Data, at msgStart: Int, def: MessageDefinition, summary: inout FitSummary) {
        if summary.sport == -1, let v = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 5) {
            summary.sport = Int(v)
        }
        if let v = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 22) { summary.ascentMeters = Int(v) }
        if let v = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 23) { summary.descentMeters = Int(v) }
        if let v = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 8) {
            summary.timerSeconds = Int64(v) / 1000 // total_timer_time 单位毫秒
        }
        if let v = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 11) { summary.totalCalories = Int(v) }
        if let v = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 9) {
            summary.totalDistanceMeters = Double(v) / 100.0 // total_distance 单位厘米
        }
        if let v = fieldUInt32(data: data, at: msgStart, def: def, fieldNumber: 2),
           let unix = fitToUnix(v) { summary.startTimestamp = unix }
    }

    static func applyFileId(data: Data, at msgStart: Int, def: MessageDefinition, summary: inout FitSummary) {
        if let v = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 1) { summary.manufacturer = Int(v) }
        if let v = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 2) { summary.product = Int(v) }
        if let v = fieldUInt(data: data, at: msgStart, def: def, fieldNumber: 3) { summary.serialNumber = UInt32(v & 0xFFFF_FFFF) }
    }

    // MARK: - 坐标修正（迈金 GCJ-02 → WGS-84）

    /// 就地改写 FIT 里所有 record 的 lat/lon（field 0/1），GCJ-02 → WGS-84，改完重算文件尾 CRC。
    /// 移植自 FitGcj02Fixer.fix：只改境内点；失败/无需修改返回 nil，调用方保留原文件。
    public static func convertGcj02ToWgs84InFit(_ data: Data) -> Data? {
        guard data.count >= 14, isFit(data) else { return nil }
        let headerSize = Int(data[0])
        guard headerSize == 12 || headerSize == 14 else { return nil }
        var bytes = data
        let dataSize = Int(readUInt32LE(bytes, at: 4))
        var dataEnd = headerSize + dataSize
        if dataEnd > bytes.count - 2 { dataEnd = bytes.count - 2 }
        var defs: [Int: MessageDefinition] = [:]
        var pos = headerSize
        var changed = false
        while pos < dataEnd {
            let header = bytes[pos]; pos += 1
            if header & 0x80 != 0 {
                let localType = Int((header >> 5) & 0x03)
                guard let def = defs[localType] else { pos += 3; continue }
                if patchRecordCoordinates(bytes: &bytes, at: pos, def: def) { changed = true }
                // 跳过长度 = totalSize - tsSize（pos 已在消息头之后）。
                // 注意：安卓 FitGcj02Fixer.kt 这里写的是 size + 1，多跳了字节，疑似 bug；
                // 以 FitDeviceFaker.kt v9.6.9 的修正口径为准。
                pos += def.totalSize - def.timestampFieldSize
                continue
            }
            let localType = Int(header & 0x0F)
            if header & 0x40 != 0 {
                guard let (def, next) = parseDefinition(data: bytes, at: pos - 1, header: header) else { break }
                defs[localType] = def; pos = next
                continue
            }
            guard let def = defs[localType] else { continue }
            if def.globalNumber == FitGlobalMessage.record.rawValue {
                if patchRecordCoordinates(bytes: &bytes, at: pos, def: def) { changed = true }
            }
            pos += def.totalSize
        }
        guard changed else { return data }
        let crc = FitCRC.crc16(bytes, range: 0..<(bytes.count - 2))
        bytes[bytes.count - 2] = UInt8(crc & 0xFF)
        bytes[bytes.count - 1] = UInt8((crc >> 8) & 0xFF)
        return bytes
    }

    private static func patchRecordCoordinates(bytes: inout Data, at: Int, def: MessageDefinition) -> Bool {
        guard let latF = def.field(0), let lonF = def.field(1),
              latF.size == 4, lonF.size == 4 else { return false }
        let latRaw = readInt32(bytes, at: at + latF.offset, bigEndian: def.bigEndian)
        let lonRaw = readInt32(bytes, at: at + lonF.offset, bigEndian: def.bigEndian)
        guard latRaw != 0x7FFF_FFFF, lonRaw != 0x7FFF_FFFF else { return false }
        let lat = semicirclesToDegrees(latRaw), lon = semicirclesToDegrees(lonRaw)
        guard GeoUtils.isInChina(lat: lat, lon: lon) else { return false }
        let fixed = GeoUtils.gcj02ToWgs84(lat: lat, lon: lon)
        let newLat = Int32((fixed.lat * 2147483648.0 / 180.0).rounded())
        let newLon = Int32((fixed.lon * 2147483648.0 / 180.0).rounded())
        guard newLat != latRaw || newLon != lonRaw else { return false }
        writeInt32(&bytes, at: at + latF.offset, value: newLat, bigEndian: def.bigEndian)
        writeInt32(&bytes, at: at + lonF.offset, value: newLon, bigEndian: def.bigEndian)
        return true
    }

    static func writeInt32(_ d: inout Data, at: Int, value: Int32, bigEndian: Bool) {
        let u = UInt32(bitPattern: value)
        if bigEndian {
            d[at] = UInt8((u >> 24) & 0xFF); d[at + 1] = UInt8((u >> 16) & 0xFF)
            d[at + 2] = UInt8((u >> 8) & 0xFF); d[at + 3] = UInt8(u & 0xFF)
        } else {
            d[at] = UInt8(u & 0xFF); d[at + 1] = UInt8((u >> 8) & 0xFF)
            d[at + 2] = UInt8((u >> 16) & 0xFF); d[at + 3] = UInt8((u >> 24) & 0xFF)
        }
    }

    // MARK: - 时间修正（行者 FIT 是北京时间，需减 8 小时）

    /// 把 FIT 里所有 timestamp（field 253）减去指定秒数，另含 file_id.time_created（field 4）、
    /// session/lap.start_time（field 2）。移植自 FitTimeFixer.fixXingzheFitTime。
    /// 与安卓原版不同：这里改完重算文件尾 CRC，让文件自洽（只写最后 2 字节 CRC 位，不动
    /// data_size 与任何消息；行者文件 data_size 本来就不准，这里不信任它、也不改它——
    /// 安卓不重算是怕按声明的 data_size 定位 CRC 会盖掉末尾消息，这里按文件实际末尾定位，
    /// 与本文件 parse()、convertGcj02ToWgs84InFit 把“尾 2 字节当 CRC”的口径一致）。
    /// 压缩时间戳消息缺定义时不直接结束：逐字节扫描到下一个能解析的定义消息再继续，
    /// 避免后面所有时间戳漏改（扫描期间不写任何字节；文件本身已不规范时这是启发式恢复）。
    /// 值为 0 的时间字段不改（无效的 time_created 之类）。
    public static func shiftTimestamps(_ data: Data, bySeconds seconds: Int64) -> Data {
        guard data.count >= 14, isFit(data) else { return data }
        var bytes = data
        let headerSize = Int(bytes[0])
        let dataEnd = bytes.count - 2 // 用文件实际大小，不信任 data_size 字段
        var defs: [Int: (global: UInt16, archBig: Bool, fields: [(num: Int, size: Int, offset: Int)], timeIdx: [Int])] = [:]
        var pos = headerSize
        let timeFieldsByMessage: [UInt16: Set<Int>] = [0: [4], 18: [2], 19: [2]]
        while pos < dataEnd {
            let header = bytes[pos]; pos += 1
            if header & 0x80 != 0 {
                // 压缩时间戳消息不含完整时间戳，跳过（其时间由基准 + 5 位偏移算出，基准改了它跟着走）。
                // 跳过长度 = 1 + (totalSize - tsSize)，tsSize 取定义里 253 号字段的 size。
                let localType = Int((header >> 5) & 0x03)
                guard let def = defs[localType] else {
                    // 缺定义：本条消息长度未知，无法按固定步长跳过；逐字节扫描下一个定义消息，
                    // 登记后继续，避免直接 break 丢掉后面所有时间戳。扫描期间不改任何字节，
                    // 只认“保留字节为 0、字段数与总长合理”的定义头，降低 payload 字节撞上定义头的概率。
                    var resumed: Int? = nil
                    var scan = pos
                    while scan < dataEnd {
                        let h = bytes[scan]
                        if h & 0xC0 == 0x40, scan + 1 < bytes.count, bytes[scan + 1] == 0,
                           let (cand, next) = parseDefinition(data: bytes, at: scan, header: h),
                           next > scan, next <= dataEnd, !cand.fields.isEmpty, cand.totalSize > 0 {
                            let lt = Int(h & 0x0F)
                            var timeIdx: [Int] = []
                            let extra = timeFieldsByMessage[cand.globalNumber] ?? []
                            for (i, f) in cand.fields.enumerated() where f.size == 4 && (f.number == 253 || extra.contains(f.number)) {
                                timeIdx.append(i)
                            }
                            defs[lt] = (cand.globalNumber, cand.bigEndian,
                                        cand.fields.map { ($0.number, $0.size, $0.offset) }, timeIdx)
                            resumed = next
                            break
                        }
                        scan += 1
                    }
                    guard let next = resumed else { break }
                    pos = next
                    continue
                }
                let total = def.fields.reduce(0) { $0 + $1.size }
                let tsSize = def.fields.first { $0.num == 253 }?.size ?? 0
                pos += 1 + (total - tsSize)
                continue
            }
            let localType = Int(header & 0x0F)
            if header & 0x40 != 0 {
                guard let (def, next) = parseDefinition(data: bytes, at: pos - 1, header: header) else { break }
                var timeIdx: [Int] = []
                let extra = timeFieldsByMessage[def.globalNumber] ?? []
                for (i, f) in def.fields.enumerated() where f.size == 4 && (f.number == 253 || extra.contains(f.number)) {
                    timeIdx.append(i)
                }
                defs[localType] = (def.globalNumber, def.bigEndian,
                                   def.fields.map { ($0.number, $0.size, $0.offset) }, timeIdx)
                pos = next
                continue
            }
            guard let def = defs[localType] else { break }
            let msgSize = def.fields.reduce(0) { $0 + $1.size }
            guard pos + msgSize <= dataEnd else { break }
            for idx in def.timeIdx {
                var off = pos
                for i in 0..<idx { off += def.fields[i].size }
                let cur: UInt32 = def.archBig
                    ? (UInt32(bytes[off]) << 24) | (UInt32(bytes[off + 1]) << 16) | (UInt32(bytes[off + 2]) << 8) | UInt32(bytes[off + 3])
                    : readUInt32LE(bytes, at: off)
                let newValue = Int64(cur) + seconds
                guard newValue > 0 else { continue }
                let u = UInt32(newValue)
                if def.archBig {
                    bytes[off] = UInt8((u >> 24) & 0xFF); bytes[off + 1] = UInt8((u >> 16) & 0xFF)
                    bytes[off + 2] = UInt8((u >> 8) & 0xFF); bytes[off + 3] = UInt8(u & 0xFF)
                } else {
                    bytes[off] = UInt8(u & 0xFF); bytes[off + 1] = UInt8((u >> 8) & 0xFF)
                    bytes[off + 2] = UInt8((u >> 16) & 0xFF); bytes[off + 3] = UInt8((u >> 24) & 0xFF)
                }
            }
            pos += msgSize
        }
        // 时间戳改完重算文件尾 CRC，让文件自洽（与 convertGcj02ToWgs84InFit 同款做法）。
        // 只写最后 2 字节（CRC 位），不动 data_size 与任何消息；若文件尾 2 字节本来就不是 CRC
        //（无 CRC 的截断文件），本函数与 parse() 同样按“尾 2 字节是 CRC”处理，需真机用行者真文件验证。
        if bytes.count >= 2 {
            let crc = FitCRC.crc16(bytes, range: 0..<(bytes.count - 2))
            bytes[bytes.count - 2] = UInt8(crc & 0xFF)
            bytes[bytes.count - 1] = UInt8((crc >> 8) & 0xFF)
        }
        return bytes
    }
}

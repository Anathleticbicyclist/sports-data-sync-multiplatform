// 待真机验证
//
// FitBuilder.swift — 数据格式组
// FIT 文件生成：按 FIT 协议手写 file_id / event / device_info / session / lap / activity / record，
// 加 14 字节文件头与首尾 CRC。可被各平台解析的“标准”写法以安卓 GpxToFitConverter.kt 为准，
// 该转换器已在黑鸟线上接口实测上传成功。
//
// 对照安卓源码：
// - 字节写法：api/FitBuilder.kt（文件头 protocol 0x20、profile 2172、文件 CRC 覆盖“头 + 数据”）
// - 消息流与字段号：GpxToFitConverter.kt buildFitBody（v9.6.9：elapsed 与 timer 分开写；
//   均速 = 里程 / 计时时间；event timer stop 成对；lap 按天分圈；record 累计 distance 必写）
// - BlackbirdApi.kt 另有一套 file_id/record 写法（厂商 146 黑鸟 / 产品 16），字段号与此一致
//
// 已知口径差异（写死前请核对）：
// - FitBuilder.kt 文件头 protocol=0x20、profile=2172；GpxToFitConverter.kt 用 protocol=0x10、profile=2132，
//   且文件尾 CRC 只算 body、不含文件头。两者在黑鸟都传成功过，本文件取 FitBuilder.kt 的标准写法。
// - 跑步踏频：v9.6.9 备忘称“跑步踏频已按规范改到固定第 3 个字节”，但 Kotlin 源码树里找不到对应实现
//   （GpxToFitConverter 与 BlackbirdApi 都把 cadence 写为 record 消息 field 4，uint8）。
//   本文件按 FIT 标准写 field 4；若某平台跑步踏频读不到/错位，以该平台实际解析为准再改。

import Foundation

/// FIT sport 枚举（GpxToFitConverter.detectSportFromGpx 的映射表）。
public enum FitSport: Int {
    case running = 1
    case cycling = 2
    case swimming = 5
    case training = 10
    case walking = 11
    case mountaineering = 16
    case hiking = 17
    case multisport = 18

    /// sub_sport 枚举（同上）。
    public enum SubSport: Int {
        case generic = 0
        case street = 2
        case trail = 3
        case indoorCycling = 6
        case road = 7
        case mountain = 8
        case indoorRunning = 14
        case indoorWalking = 16
        case indoorSwimming = 21
        case openWater = 30
    }

    /// 英文名 → (sport, subSport)，与安卓 detectSportFromGpx 同款（含 indoor 优先匹配）。
    public static func detect(fromName name: String) -> (sport: FitSport, subSport: SubSport)? {
        let n = name.lowercased()
        if n.contains("indoorcycling") || n.contains("spinning") { return (.cycling, .indoorCycling) }
        if n.contains("cycling") || n.contains("riding") || n.contains("bike") || n.contains("ebike") { return (.cycling, .road) }
        if n.contains("indoorrunning") || n.contains("treadmill") { return (.running, .indoorRunning) }
        if n.contains("running") || n.contains("run") { return (.running, .street) }
        if n.contains("mountaineering") || n.contains("mountaineer") { return (.mountaineering, .generic) }
        if n.contains("hiking") || n.contains("hike") || n.contains("trail") { return (.hiking, .trail) }
        if n.contains("indoorwalking") { return (.walking, .indoorWalking) }
        if n.contains("walking") || n.contains("walk") { return (.walking, .street) }
        if n.contains("indoorswimming") { return (.swimming, .indoorSwimming) }
        if n.contains("swimming") || n.contains("swim") { return (.swimming, .openWater) }
        if n.contains("triathlon") || n.contains("multisport") { return (.multisport, .generic) }
        if n.contains("fitness") || n.contains("workout") || n.contains("training") { return (.training, .generic) }
        return nil
    }
}

/// 生成 FIT 时的覆盖值（轨迹合并用；单条转换全留默认即可）。
/// 对照安卓 GpxToFitConverter.MergeInfo + convertPoints 的 override 参数。
public struct FitBuildOptions {
    public var manufacturer: Int = 255   // 合并时照抄第一段原件的 file_id；GPX 转换保持 255/1
    public var product: Int = 1
    public var serialNumber: UInt32 = 0  // >0 才写 serial_number 字段
    public var timerSeconds: Int64 = 0   // >0 时覆盖 session/activity 的 total_timer_time（各段计时之和）
    public var totalCalories: Int = 0    // >0 时覆盖功率公式估算值
    public var overrideDistanceMeters: Double = 0 // >0 时总里程用调用方算好的值
    public var overrideAscentMeters: Double = 0
    public var overrideDescentMeters: Double = 0
    /// 多 lap 的分段点下标（含 0，如 [0, 1200, 2400] 表示按天分 3 圈）；空 = 一个 lap。
    public var lapStarts: [Int] = []
    public var lapAscents: [Double] = []   // 与 lapStarts 等长时按段采用，否则现算
    public var lapDescents: [Double] = []
    public var eventGroup: Int = 0

    public init() {}
}

public enum FitBuilder {

    public static let fitEpochOffset: TimeInterval = 631065600 // FIT 时间 = UTC 秒 - 631065600

    // MARK: - 入口

    /// 从轨迹点生成完整 FIT 文件（14 字节头 + 消息体 + 尾 CRC）。
    /// - Parameters:
    ///   - points: 轨迹点（至少 1 个；无时间戳的点按索引每秒递增补时间，与安卓一致）
    ///   - sport: FIT sport；subSport: FIT sub_sport
    ///   - startUnix: 首点无时间戳时用的开始时间（Unix 秒）；有时间戳则忽略
    /// - Returns: 完整 FIT 文件字节
    public static func build(points: [TrackPoint], sport: FitSport = .cycling,
                             subSport: FitSport.SubSport = .generic,
                             startUnix: TimeInterval = Date().timeIntervalSince1970,
                             options: FitBuildOptions = FitBuildOptions()) -> Data {
        precondition(!points.isEmpty, "无有效轨迹点")
        let body = buildBody(points: points, sport: sport, subSport: subSport, startUnix: startUnix, options: options)
        return wrapFile(body: body)
    }

    /// 从 GPX 轨迹点生成 FIT（GPX→FIT 的底层入口；上层入口在 GpxParser.gpxToFit）。
    public static func buildFromTrackPoints(_ points: [TrackPoint], sport: FitSport,
                                            subSport: FitSport.SubSport = .generic) -> Data {
        build(points: points, sport: sport, subSport: subSport)
    }

    // MARK: - 文件组装

    /// 组装标准 FIT 文件：14 字节 header + body + 尾 CRC（FitBuilder.kt 写法）。
    static func wrapFile(body: Data) -> Data {
        var out = Data()
        var header = Data(count: 14)
        header[0] = 14
        header[1] = 0x20 // protocol version 2.0
        header[2] = UInt8(2172 & 0xFF); header[3] = UInt8((2172 >> 8) & 0xFF) // profile version 21.72
        header[4] = UInt8(body.count & 0xFF); header[5] = UInt8((body.count >> 8) & 0xFF)
        header[6] = UInt8((body.count >> 16) & 0xFF); header[7] = UInt8((body.count >> 24) & 0xFF)
        header[8] = 0x2E; header[9] = 0x46; header[10] = 0x49; header[11] = 0x54 // ".FIT"
        let headerCRC = FitCRC.crc16(header, range: 0..<12)
        header[12] = UInt8(headerCRC & 0xFF); header[13] = UInt8((headerCRC >> 8) & 0xFF)
        out.append(header)
        out.append(body)
        // 文件 CRC = 文件头(14 字节) + body（FitBuilder.kt；GpxToFitConverter 只算 body，口径不同，见文件头注释）
        let fileCRC = FitCRC.crc16(out, range: 0..<out.count)
        out.append(UInt8(fileCRC & 0xFF)); out.append(UInt8((fileCRC >> 8) & 0xFF))
        return out
    }

    // MARK: - 消息体

    private struct LapStat {
        var startTs, endTs: TimeInterval
        var elapsedSeconds: Int64
        var distanceMeters, ascentMeters, descentMeters: Double
        var avgSpeed, maxSpeed: Double
        var avgHr, maxHr, avgCad, maxCad, avgPow, maxPow, calories: Int
    }

    static func buildBody(points pts: [TrackPoint], sport: FitSport, subSport: FitSport.SubSport,
                          startUnix: TimeInterval, options: FitBuildOptions) -> Data {
        var out = Data()
        let n = pts.count
        let hasTime = (pts.first?.timestamp ?? 0) > 0 && (pts.last?.timestamp ?? 0) > 0
        let fit0 = (pts.first?.timestamp ?? 0) > 0 ? pts[0].timestamp : startUnix
        let fitLast = (pts.last?.timestamp ?? 0) > 0 ? pts[n - 1].timestamp
            : (startUnix + TimeInterval(max(1, n - 1)))
        func fitTs(_ unix: TimeInterval) -> UInt32 { FitParser.unixToFit(unix) }

        // --- file_id (local 0) ---
        // type=4 activity；manufacturer/product/serialNumber 合并时照抄原件，GPX 转换写 255/1。
        if options.serialNumber > 0 {
            out.append(definition(local: 0, global: 0, fields: [(0, 1, 0x00), (1, 2, 0x84), (2, 2, 0x84), (3, 4, 0x86), (4, 4, 0x86)]))
            var d = Data(); d.append(0x00); d.append(4); d.append(u16(options.manufacturer)); d.append(u16(options.product))
            d.append(u32(UInt64(options.serialNumber))); d.append(u32(UInt64(fitTs(fit0)))); out.append(d)
        } else {
            out.append(definition(local: 0, global: 0, fields: [(0, 1, 0x00), (1, 2, 0x84), (2, 2, 0x84), (4, 4, 0x86)]))
            var d = Data(); d.append(0x00); d.append(4); d.append(u16(options.manufacturer)); d.append(u16(options.product))
            d.append(u32(UInt64(fitTs(fit0)))); out.append(d)
        }

        // --- event timer start (local 1)：event=0(timer)，event_type=0(start) ---
        out.append(definition(local: 1, global: 21, fields: [(0, 4, 0x86), (1, 1, 0x00), (2, 1, 0x00), (3, 1, 0x02)]))
        var ev = Data(); ev.append(0x01); ev.append(u32(UInt64(fitTs(fit0)))); ev.append(0); ev.append(0); ev.append(UInt8(options.eventGroup)); out.append(ev)

        // --- device_info (local 2) ---
        if options.serialNumber > 0 {
            out.append(definition(local: 2, global: 23, fields: [(0, 1, 0x00), (1, 2, 0x84), (2, 2, 0x84), (3, 4, 0x86), (4, 2, 0x84), (253, 4, 0x86)]))
            var d = Data(); d.append(0x02); d.append(255); d.append(u16(1)); d.append(u16(options.manufacturer))
            d.append(u32(UInt64(options.serialNumber))); d.append(u16(options.product)); d.append(u32(UInt64(fitTs(fit0)))); out.append(d)
        } else {
            out.append(definition(local: 2, global: 23, fields: [(0, 1, 0x00), (1, 2, 0x84), (253, 4, 0x86)]))
            var d = Data(); d.append(0x02); d.append(255); d.append(u16(1)); d.append(u32(UInt64(fitTs(fit0)))); out.append(d)
        }

        // --- 统计（与安卓 computeLapStat / buildFitBody 同款口径） ---
        var durationS: Int64 = hasTime ? max(1, Int64(pts[n - 1].timestamp - pts[0].timestamp)) : Int64(max(1, n - 1))
        if n == 1 { durationS = max(1, durationS) }
        let elapsedS = durationS
        let timerS: Int64 = options.timerSeconds > 0 ? options.timerSeconds : durationS
        // lap 分段：合法的 lapStarts（以 0 开头、严格递增）才按段写多个 lap，否则一个 lap。
        let lapValid = options.lapStarts.count > 1 && options.lapStarts.first == 0
            && options.lapStarts.allSatisfy { $0 >= 0 && $0 < n }
            && zip(options.lapStarts, options.lapStarts.dropFirst()).allSatisfy { $1 > $0 }
            && (options.lapAscents.isEmpty || options.lapAscents.count == options.lapStarts.count)
            && (options.lapDescents.isEmpty || options.lapDescents.count == options.lapStarts.count)
        let lapRanges: [Range<Int>] = lapValid
            ? options.lapStarts.enumerated().map { idx, s in s..<(idx + 1 < options.lapStarts.count ? options.lapStarts[idx + 1] : n) }
            : [0..<n]
        let lapStartSet = Set(lapRanges.map { $0.lowerBound }.filter { $0 > 0 })

        var distM = 0.0, ascent = 0.0, descent = 0.0, maxSpeed = 0.0
        var hrSum = 0, hrN = 0, maxHr = 0, cadSum = 0, cadN = 0, maxCad = 0, powSum = 0, powN = 0, maxPow = 0
        let useOverride = options.overrideDistanceMeters > 0
        if useOverride {
            for p in pts where p.speedMetersPerSecond > maxSpeed { maxSpeed = p.speedMetersPerSecond }
        }
        if !useOverride || maxSpeed <= 0 {
            for i in 1..<n {
                let seg = GeoUtils.haversineMeters(lat1: pts[i - 1].lat, lon1: pts[i - 1].lon, lat2: pts[i].lat, lon2: pts[i].lon)
                let skip = useOverride && seg > 5000 // 多天合并的段间跳变不参与统计
                if !skip {
                    distM += seg
                    let de = pts[i].ele - pts[i - 1].ele
                    if de > 0 { ascent += de } else { descent += -de }
                    let dt = pts[i].timestamp - pts[i - 1].timestamp
                    if dt > 0 { maxSpeed = max(maxSpeed, seg / dt) }
                }
            }
        }
        if useOverride {
            distM = options.overrideDistanceMeters
            ascent = options.overrideAscentMeters; descent = options.overrideDescentMeters
        }
        for p in pts {
            if p.speedMetersPerSecond > maxSpeed { maxSpeed = p.speedMetersPerSecond }
            if p.heartRate > 0 { hrSum += p.heartRate; hrN += 1; maxHr = max(maxHr, p.heartRate) }
            if p.cadence > 0 { cadSum += p.cadence; cadN += 1; maxCad = max(maxCad, p.cadence) }
            if p.power > 0 { powSum += p.power; powN += 1; maxPow = max(maxPow, p.power) }
        }
        let avgSpeed = timerS > 0 ? distM / Double(timerS) : 0 // 均速 = 里程 / 计时时间，不是真实跨度
        let avgHr = hrN > 0 ? hrSum / hrN : 0
        let avgCad = cadN > 0 ? cadSum / cadN : 0
        let avgPow = powN > 0 ? powSum / powN : 0
        let calories: Int = {
            if options.totalCalories > 0 { return options.totalCalories }
            if avgPow > 0 { return Int(Double(avgPow) * (Double(timerS) / 3600.0) * 3.6) }
            if sport == .running { return Int(distM / 1000.0 * 60.0) } // 跑步 60 kcal/km
            return 0
        }()

        // --- session (local 3) ---
        // 字段号按 Garmin SDK 21.176 SessionMesg（安卓注释）：253 时间戳，2 start_time，3/4 起点坐标，
        // 5 sport，6 sub_sport，7 elapsed，8 timer，9 distance，11 卡路里，14 均速，15 极速，
        // 16/17 均/最大心率，18/19 均/最大踏频，20/21 均/最大功率，22/23 爬升/下降，
        // 26 num_laps，33 num_lengths，124/125 增强均速/极速。
        out.append(definition(local: 3, global: 18, fields: [
            (253, 4, 0x86), (2, 4, 0x86), (3, 4, 0x85), (4, 4, 0x85), (5, 1, 0x00), (6, 1, 0x00),
            (7, 4, 0x86), (8, 4, 0x86), (9, 4, 0x86), (11, 2, 0x84), (14, 2, 0x84), (15, 2, 0x84),
            (16, 1, 0x02), (17, 1, 0x02), (18, 1, 0x02), (19, 1, 0x02), (20, 2, 0x84), (21, 2, 0x84),
            (22, 2, 0x84), (23, 2, 0x84), (26, 1, 0x02), (33, 1, 0x02), (124, 2, 0x84), (125, 2, 0x84)]))
        var s = Data(); s.append(0x03)
        s.append(u32(UInt64(fitTs(fitLast)))); s.append(u32(UInt64(fitTs(fit0))))
        s.append(semicirclesData(pts[0].lat)); s.append(semicirclesData(pts[0].lon))
        s.append(UInt8(sport.rawValue)); s.append(UInt8(subSport.rawValue))
        s.append(u32(UInt64(elapsedS * 1000))); s.append(u32(UInt64(timerS * 1000))) // elapsed 与 timer 分开写
        s.append(u32(UInt64((distM * 100).rounded()))); s.append(u16(calories))
        s.append(u16(Int((avgSpeed * 1000).rounded()))); s.append(u16(Int((maxSpeed * 1000).rounded())))
        s.append(UInt8(avgHr)); s.append(UInt8(maxHr)); s.append(UInt8(avgCad)); s.append(UInt8(maxCad))
        s.append(u16(avgPow)); s.append(u16(maxPow))
        s.append(u16(Int(ascent))); s.append(u16(Int(descent)))
        s.append(UInt8(lapRanges.count)); s.append(0)
        s.append(u16(Int((avgSpeed * 1000).rounded()))); s.append(u16(Int((maxSpeed * 1000).rounded())))
        out.append(s)

        // --- lap (local 4)，每段一份汇总 ---
        out.append(definition(local: 4, global: 19, fields: [
            (253, 4, 0x86), (2, 4, 0x86), (3, 4, 0x85), (4, 4, 0x85), (7, 4, 0x86), (8, 4, 0x86),
            (9, 4, 0x86), (11, 2, 0x84), (13, 2, 0x84), (14, 2, 0x84), (15, 1, 0x02), (16, 1, 0x02),
            (17, 1, 0x02), (18, 1, 0x02), (19, 2, 0x84), (20, 2, 0x84), (21, 2, 0x84), (22, 2, 0x84),
            (32, 1, 0x02), (110, 2, 0x84), (111, 2, 0x84)]))
        for (lapIdx, range) in lapRanges.enumerated() {
            let stat = lapStat(points: pts, range: range,
                               ascentOverride: lapValid && !options.lapAscents.isEmpty ? options.lapAscents[lapIdx] : nil,
                               descentOverride: lapValid && !options.lapDescents.isEmpty ? options.lapDescents[lapIdx] : nil,
                               sport: sport)
            let startPt = pts[range.lowerBound]
            var l = Data(); l.append(0x04)
            l.append(u32(UInt64(fitTs(stat.endTs)))); l.append(u32(UInt64(fitTs(stat.startTs))))
            l.append(semicirclesData(startPt.lat)); l.append(semicirclesData(startPt.lon))
            l.append(u32(UInt64(stat.elapsedSeconds * 1000))); l.append(u32(UInt64(stat.elapsedSeconds * 1000)))
            l.append(u32(UInt64((stat.distanceMeters * 100).rounded()))); l.append(u16(stat.calories))
            l.append(u16(Int((stat.avgSpeed * 1000).rounded()))); l.append(u16(Int((stat.maxSpeed * 1000).rounded())))
            l.append(UInt8(stat.avgHr)); l.append(UInt8(stat.maxHr)); l.append(UInt8(stat.avgCad)); l.append(UInt8(stat.maxCad))
            l.append(u16(stat.avgPow)); l.append(u16(stat.maxPow))
            l.append(u16(Int(stat.ascentMeters))); l.append(u16(Int(stat.descentMeters)))
            l.append(1)
            l.append(u16(Int((stat.avgSpeed * 1000).rounded()))); l.append(u16(Int((stat.maxSpeed * 1000).rounded())))
            out.append(l)
        }

        // --- activity (local 5) ---
        // 253 时间戳，0 total_timer_time（毫秒，计时时间），1 num_sessions，2 type，3 event，
        // 4 event_type，5 local_timestamp（开始时间 - FIT 纪元）。
        out.append(definition(local: 5, global: 34, fields: [
            (253, 4, 0x86), (0, 4, 0x86), (1, 2, 0x84), (2, 1, 0x00), (3, 1, 0x00), (4, 1, 0x00), (5, 4, 0x86)]))
        var a = Data(); a.append(0x05)
        a.append(u32(UInt64(fitTs(fitLast)))); a.append(u32(UInt64(timerS * 1000))); a.append(u16(1))
        a.append(1); a.append(1); a.append(0); a.append(u32(UInt64(fitTs(fit0)))); out.append(a)

        // --- record (local 6) ---
        // 253 时间戳，0/1 经纬度（半圆），2 海拔 (米+500)*5，3 心率，4 踏频，5 累计距离（厘米），
        // 6 速度（米/秒*1000），7 功率。累计 distance 字段必须写，平台靠它算里程。
        out.append(definition(local: 6, global: 20, fields: [
            (253, 4, 0x86), (0, 4, 0x85), (1, 4, 0x85), (2, 2, 0x84), (3, 1, 0x02),
            (4, 1, 0x02), (5, 4, 0x86), (6, 2, 0x84), (7, 2, 0x84)]))
        var cum = 0.0
        var prev = pts[0]
        for i in 0..<n {
            let p = pts[i]
            var seg = 0.0
            if i > 0, !lapStartSet.contains(i) {
                if p.distanceMeters > 0, prev.distanceMeters > 0, p.distanceMeters > prev.distanceMeters {
                    seg = p.distanceMeters - prev.distanceMeters
                } else if p.distanceMeters > 0, prev.distanceMeters > 0 {
                    seg = 0
                } else {
                    seg = GeoUtils.haversineMeters(lat1: prev.lat, lon1: prev.lon, lat2: p.lat, lon2: p.lon)
                }
                cum += seg
            }
            prev = p
            let ts = p.timestamp > 0 ? p.timestamp : (startUnix + TimeInterval(i))
            var spd = 0.0
            if p.speedMetersPerSecond >= 0 {
                spd = p.speedMetersPerSecond
            } else if i > 0, !lapStartSet.contains(i), pts[i].timestamp > 0, pts[i - 1].timestamp > 0 {
                let dt = pts[i].timestamp - pts[i - 1].timestamp
                if dt > 0 { spd = seg / dt }
            }
            var r = Data(); r.append(0x06)
            r.append(u32(UInt64(fitTs(ts))))
            r.append(semicirclesData(p.lat)); r.append(semicirclesData(p.lon))
            r.append(u16(Int(((p.ele + 500.0) * 5.0).rounded()))) // 海拔编码 = (米 + 500) * 5
            r.append(UInt8(min(255, p.heartRate)))
            // 踏频写 record field 4（uint8）。见文件头注释：v9.6.9“固定第 3 个字节”在 Kotlin 树里无对应实现，待真机验证。
            r.append(UInt8(min(255, p.cadence)))
            r.append(u32(UInt64((cum * 100).rounded()))) // 累计距离（厘米），必须写
            r.append(u16(Int((spd * 1000).rounded())))
            r.append(u16(min(65535, p.power)))
            out.append(r)
        }

        // --- event timer stop (local 1)，与开头的 timer start 成对 ---
        var stop = Data(); stop.append(0x01); stop.append(u32(UInt64(fitTs(fitLast))))
        stop.append(0); stop.append(1); stop.append(UInt8(options.eventGroup)); out.append(stop)

        return out
    }

    static func lapStat(points pts: [TrackPoint], range: Range<Int>,
                        ascentOverride: Double?, descentOverride: Double?, sport: FitSport) -> LapStat {
        let from = range.lowerBound, to = range.upperBound
        let startTs = pts[from].timestamp, endTs = pts[to - 1].timestamp
        let elapsed = max(1, Int64(endTs - startTs))
        var dist = 0.0, asc = 0.0, desc = 0.0, maxSpd = 0.0
        var hrSum = 0, hrN = 0, maxHr = 0, cadSum = 0, cadN = 0, maxCad = 0, powSum = 0, powN = 0, maxPow = 0
        for i in from..<to {
            let p = pts[i]
            if p.speedMetersPerSecond > maxSpd { maxSpd = p.speedMetersPerSecond }
            if p.heartRate > 0 { hrSum += p.heartRate; hrN += 1; maxHr = max(maxHr, p.heartRate) }
            if p.cadence > 0 { cadSum += p.cadence; cadN += 1; maxCad = max(maxCad, p.cadence) }
            if p.power > 0 { powSum += p.power; powN += 1; maxPow = max(maxPow, p.power) }
            if i > from {
                let prev = pts[i - 1]
                let seg: Double
                if p.distanceMeters > 0, prev.distanceMeters > 0, p.distanceMeters > prev.distanceMeters {
                    seg = p.distanceMeters - prev.distanceMeters
                } else if p.distanceMeters > 0, prev.distanceMeters > 0 {
                    seg = 0
                } else {
                    seg = GeoUtils.haversineMeters(lat1: prev.lat, lon1: prev.lon, lat2: p.lat, lon2: p.lon)
                }
                dist += seg
                if ascentOverride == nil {
                    let de = p.ele - prev.ele
                    if de > 0 { asc += de } else { desc += -de }
                }
                if p.speedMetersPerSecond < 0 {
                    let dt = p.timestamp - prev.timestamp
                    if dt > 0 { maxSpd = max(maxSpd, seg / dt) }
                }
            }
        }
        if let a = ascentOverride { asc = a }
        if let d = descentOverride { desc = d }
        let avgSpd = elapsed > 0 ? dist / Double(elapsed) : 0
        let avgHr = hrN > 0 ? hrSum / hrN : 0
        let avgCad = cadN > 0 ? cadSum / cadN : 0
        let avgPow = powN > 0 ? powSum / powN : 0
        let cal: Int = {
            if avgPow > 0 { return Int(Double(avgPow) * (Double(elapsed) / 3600.0) * 3.6) }
            if sport == .running { return Int(dist / 1000.0 * 60.0) }
            return 0
        }()
        return LapStat(startTs: startTs, endTs: endTs, elapsedSeconds: elapsed, distanceMeters: dist,
                       ascentMeters: asc, descentMeters: desc, avgSpeed: avgSpd, maxSpeed: maxSpd,
                       avgHr: avgHr, maxHr: maxHr, avgCad: avgCad, maxCad: maxCad,
                       avgPow: avgPow, maxPow: maxPow, calories: cal)
    }

    // MARK: - 字节写辅助（小端，与安卓 FitBuilder 同款）

    /// 定义消息：头字节 = 0x40 | local（bit6 是定义标志，bit7=1 是压缩时间戳，别写反）。
    static func definition(local: Int, global: Int, fields: [(num: Int, size: Int, baseType: Int)]) -> Data {
        var d = Data()
        d.append(UInt8(0x40 | (local & 0x0F)))
        d.append(0) // reserved
        d.append(0) // architecture：0 = 小端
        d.append(u16(global))
        d.append(UInt8(fields.count))
        for f in fields { d.append(UInt8(f.num)); d.append(UInt8(f.size)); d.append(UInt8(f.baseType)) }
        return d
    }

    /// 经纬度（度）→ 半圆坐标，写成 4 字节小端（sint32 当 uint32 写）。
    static func semicirclesData(_ deg: Double) -> Data {
        let raw = Int32((deg * 2147483648.0 / 180.0).rounded())
        return u32(UInt64(bitPattern: Int64(raw)))
    }

    static func u16(_ v: Int) -> Data {
        let u = UInt16(clamping: v)
        return Data([UInt8(u & 0xFF), UInt8((u >> 8) & 0xFF)])
    }

    static func u32(_ v: UInt64) -> Data {
        let u = UInt32(truncatingIfNeeded: v)
        return Data([UInt8(u & 0xFF), UInt8((u >> 8) & 0xFF), UInt8((u >> 16) & 0xFF), UInt8((u >> 24) & 0xFF)])
    }
}

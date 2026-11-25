// 待真机验证
//
// GeoUtils.swift — 数据格式组
// 纯函数：坐标换算、距离、爬升、配速/均速、经纬度校验。无网络，不碰钥匙串/文件系统。
//
// 对照安卓源码：
// - GCJ-02 换算移植自 util/FitGcj02Fixer.kt（源自 assets/magene_fix.js，Strava 实测青岛地区平均偏移约 450 米）
// - 距离用 GpxToFitConverter.kt 的 Haversine（地球半径 6371000 米）
// - 爬升去噪阈值参考 merge/TrackMerger.java 的 8 米基准法（单点变化 <8 米时基准不动）

import Foundation

/// 数据格式组共用的轨迹点（其余文件直接用，不再另定义）。
/// 对照安卓 GpxToFitConverter.TrackPoint（v9.6.9 为 9 字段）。
/// distM / speedMs 为 -1 表示未知（GPX 解析时就是未知，转换时现算）。
public struct TrackPoint: Equatable {
    public var lat: Double          // 纬度（度，WGS-84）
    public var lon: Double          // 经度（度，WGS-84）
    public var ele: Double          // 海拔（米）
    public var timestamp: TimeInterval // Unix 秒；0 表示未知
    public var heartRate: Int       // bpm，0 表示未知
    public var cadence: Int         // spm/rpm，0 表示未知
    public var power: Int           // 瓦，0 表示未知
    public var distanceMeters: Double // 设备自带的累计里程（米），-1 表示未知
    public var speedMetersPerSecond: Double // 设备记录的速度（米/秒），-1 表示未知

    public init(lat: Double, lon: Double, ele: Double = 0, timestamp: TimeInterval = 0,
                heartRate: Int = 0, cadence: Int = 0, power: Int = 0,
                distanceMeters: Double = -1, speedMetersPerSecond: Double = -1) {
        self.lat = lat; self.lon = lon; self.ele = ele; self.timestamp = timestamp
        self.heartRate = heartRate; self.cadence = cadence; self.power = power
        self.distanceMeters = distanceMeters; self.speedMetersPerSecond = speedMetersPerSecond
    }

    /// 是否有可用坐标（0,0 当作无效，安卓解析时同样丢弃无坐标点）。
    public var hasCoordinate: Bool { GeoUtils.isValidCoordinate(lat: lat, lon: lon) && !(lat == 0 && lon == 0) }
}

public enum GeoUtils {

    // MARK: - GCJ-02 / WGS-84（移植自 FitGcj02Fixer.kt，与 magene_fix.js 一致）

    private static let gcjA = 6378245.0
    private static let gcjEE = 0.00669342162296594323

    /// 是否在中国大陆境内（含边框）。境外坐标不做偏移换算，直接原值返回。
    public static func isInChina(lat: Double, lon: Double) -> Bool {
        lon >= 72.004 && lon <= 137.8347 && lat >= 0.8293 && lat <= 55.8271
    }

    private static func transformLat(x: Double, y: Double) -> Double {
        var ret = -100.0 + 2.0 * x + 3.0 * y + 0.2 * y * y + 0.1 * x * y + 0.2 * sqrt(abs(x))
        ret += (20.0 * sin(6.0 * x * .pi) + 20.0 * sin(2.0 * x * .pi)) * 2.0 / 3.0
        ret += (20.0 * sin(y * .pi) + 40.0 * sin(y / 3.0 * .pi)) * 2.0 / 3.0
        ret += (160.0 * sin(y / 12.0 * .pi) + 320.0 * sin(y * .pi / 30.0)) * 2.0 / 3.0
        return ret
    }

    private static func transformLon(x: Double, y: Double) -> Double {
        var ret = 300.0 + x + 2.0 * y + 0.1 * x * x + 0.1 * x * y + 0.1 * sqrt(abs(x))
        ret += (20.0 * sin(6.0 * x * .pi) + 20.0 * sin(2.0 * x * .pi)) * 2.0 / 3.0
        ret += (20.0 * sin(x * .pi) + 40.0 * sin(x / 3.0 * .pi)) * 2.0 / 3.0
        ret += (150.0 * sin(x / 12.0 * .pi) + 300.0 * sin(x / 30.0 * .pi)) * 2.0 / 3.0
        return ret
    }

    /// WGS-84 → GCJ-02（火星坐标）。境外或非法值直接返回原值。
    public static func wgs84ToGcj02(lat: Double, lon: Double) -> (lat: Double, lon: Double) {
        guard lat.isFinite, lon.isFinite, isInChina(lat: lat, lon: lon) else { return (lat, lon) }
        var dLat = transformLat(x: lon - 105.0, y: lat - 35.0)
        var dLon = transformLon(x: lon - 105.0, y: lat - 35.0)
        let radLat = lat / 180.0 * .pi
        var magic = sin(radLat)
        magic = 1 - gcjEE * magic * magic
        let sqrtMagic = sqrt(magic)
        dLat = (dLat * 180.0) / ((gcjA * (1 - gcjEE)) / (magic * sqrtMagic) * .pi)
        dLon = (dLon * 180.0) / (gcjA / sqrtMagic * cos(radLat) * .pi)
        return (lat + dLat, lon + dLon)
    }

    /// GCJ-02 → WGS-84，二分迭代精确解（与安卓完全一致：±0.02 度窗口、30 轮、1e-8 阈值）。
    /// 迈金等国内平台给的是 GCJ-02，不转的话轨迹在 Strava/佳明上整体偏约 450 米。
    public static func gcj02ToWgs84(lat: Double, lon: Double) -> (lat: Double, lon: Double) {
        guard lat.isFinite, lon.isFinite, isInChina(lat: lat, lon: lon) else { return (lat, lon) }
        var minLat = lat - 0.02, maxLat = lat + 0.02
        var minLon = lon - 0.02, maxLon = lon + 0.02
        var currentLat = lat, currentLon = lon
        for _ in 0..<30 {
            currentLat = (minLat + maxLat) / 2
            currentLon = (minLon + maxLon) / 2
            let conv = wgs84ToGcj02(lat: currentLat, lon: currentLon)
            let deltaLat = conv.lat - lat
            let deltaLon = conv.lon - lon
            if abs(deltaLat) < 1e-8 && abs(deltaLon) < 1e-8 { break }
            if deltaLat > 0 { maxLat = currentLat } else { minLat = currentLat }
            if deltaLon > 0 { maxLon = currentLon } else { minLon = currentLon }
        }
        return (currentLat, currentLon)
    }

    /// 批量转一串轨迹点（只转境内点，境外点原样保留）。
    public static func gcj02ToWgs84(points: [TrackPoint]) -> [TrackPoint] {
        points.map { p in
            var q = p
            let c = gcj02ToWgs84(lat: p.lat, lon: p.lon)
            q.lat = c.lat; q.lon = c.lon
            return q
        }
    }

    // MARK: - 距离

    /// 两点距离（Haversine，地球半径 6371000 米，与安卓 GpxToFitConverter 一致）。
    public static func haversineMeters(lat1: Double, lon1: Double, lat2: Double, lon2: Double) -> Double {
        let r = 6371000.0
        let p1 = lat1 * .pi / 180, p2 = lat2 * .pi / 180
        let dp = (lat2 - lat1) * .pi / 180, dl = (lon2 - lon1) * .pi / 180
        let a = sin(dp / 2) * sin(dp / 2) + cos(p1) * cos(p2) * sin(dl / 2) * sin(dl / 2)
        return 2 * r * asin(sqrt(min(1, a)))
    }

    /// 轨迹总距离（米）。优先用设备累计里程差值（两点都有且递增才用，与安卓一致）；
    /// 否则按经纬度现算。`maxSegmentMeters` 设了就跳过超过该值的段（多天合并的段间跳变，
    /// 安卓合并时用 5000 米；单条轨迹传 nil 不跳过）。
    public static func totalDistanceMeters(points: [TrackPoint], maxSegmentMeters: Double? = nil) -> Double {
        guard points.count > 1 else { return 0 }
        var total = 0.0
        for i in 1..<points.count {
            let prev = points[i - 1], cur = points[i]
            let seg: Double
            if cur.distanceMeters > 0, prev.distanceMeters > 0, cur.distanceMeters > prev.distanceMeters {
                seg = cur.distanceMeters - prev.distanceMeters
            } else if cur.distanceMeters > 0, prev.distanceMeters > 0 {
                seg = 0 // 有累计里程但不递增，记 0，不拿经纬度现算
            } else {
                seg = haversineMeters(lat1: prev.lat, lon1: prev.lon, lat2: cur.lat, lon2: cur.lon)
            }
            if let max = maxSegmentMeters, seg > max { continue }
            total += seg
        }
        return total
    }

    // MARK: - 爬升 / 下降（去噪）

    /// 累计爬升/下降（米）。`threshold` 为去噪阈值：只有相对基准变化超过阈值才计入并更新基准。
    /// - threshold = 0：原始逐点累加（安卓 GpxToFitConverter 的做法，GPS 海拔抖动会虚增爬升）。
    /// - threshold = 8：安卓 TrackMerger 的 8 米基准法，合并/贴纸统计用这个口径。
    public static func elevationGainLoss(points: [TrackPoint], threshold: Double = 0) -> (ascent: Double, descent: Double) {
        var ascent = 0.0, descent = 0.0
        guard let first = points.first else { return (0, 0) }
        var base = first.ele
        for p in points.dropFirst() {
            guard p.ele > -1000, p.ele < 9000 else { continue } // 明显坏值跳过
            let d = p.ele - base
            if threshold <= 0 {
                if d > 0 { ascent += d } else { descent += -d }
                base = p.ele
            } else if d >= threshold {
                ascent += d; base = p.ele
            } else if d <= -threshold {
                descent += -d; base = p.ele
            }
        }
        return (ascent, descent)
    }

    // MARK: - 配速 / 均速

    /// 均速（米/秒）。距离 <= 0 或时长 <= 0 返回 0。
    public static func averageSpeedMetersPerSecond(distanceMeters: Double, durationSeconds: Double) -> Double {
        guard distanceMeters > 0, durationSeconds > 0 else { return 0 }
        return distanceMeters / durationSeconds
    }

    /// 均速（公里/小时）。
    public static func averageSpeedKmh(distanceMeters: Double, durationSeconds: Double) -> Double {
        averageSpeedMetersPerSecond(distanceMeters: distanceMeters, durationSeconds: durationSeconds) * 3.6
    }

    /// 配速（每公里多少秒），跑步用。距离或时长无效返回 nil。
    public static func paceSecondsPerKm(distanceMeters: Double, durationSeconds: Double) -> Double? {
        guard distanceMeters > 0, durationSeconds > 0 else { return nil }
        return durationSeconds / (distanceMeters / 1000.0)
    }

    /// 配速格式化为 "m'ss''/km"，无效返回 "--'--''"。
    public static func formattedPace(distanceMeters: Double, durationSeconds: Double) -> String {
        guard let sec = paceSecondsPerKm(distanceMeters: distanceMeters, durationSeconds: durationSeconds) else { return "--'--''" }
        let m = Int(sec) / 60, s = Int(sec) % 60
        return String(format: "%d'%02d''/km", m, s)
    }

    // MARK: - 校验

    /// 经纬度是否合法（纬度 -90…90，经度 -180…180，且不是 NaN）。
    public static func isValidCoordinate(lat: Double, lon: Double) -> Bool {
        lat.isFinite && lon.isFinite && lat >= -90 && lat <= 90 && lon >= -180 && lon <= 180
    }

    /// 轨迹点是否可用：坐标合法、不是 (0,0)。时间缺失不判坏（安卓会按索引补递增时间）。
    public static func isUsablePoint(_ p: TrackPoint) -> Bool {
        p.hasCoordinate
    }
}

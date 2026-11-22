// 来源：jadx 反编译自 dev-9.6.8 APK（com.jichi.bikecomputer.model.TrackStats）。
// 改写说明：Java 类改写为 Kotlin 类，距离/爬升/下降/极速/时长字段与 haversine/update/fromPoints 逻辑原样保留。
// 已知问题：原件引用的 io.jenetics.jpx.Degrees.MIN_VALUE 经 smali 核对实际就是 0.0，已直接写成 0.0 并去掉该依赖；
// 原件无 @Metadata，smali .source 为 .java，说明原件为 Java，参数名按用法还原。
package com.jichi.bikecomputer.model

class TrackStats {
    @JvmField var distanceM: Double = 0.0
    @JvmField var ascentM: Double = 0.0
    @JvmField var descentM: Double = 0.0
    @JvmField var maxSpeedMs: Float = 0f
    @JvmField var durationMs: Long = 0L
    @JvmField var elapsedMs: Long = 0L

    fun avgSpeedMs(): Double =
        if (durationMs > 0) distanceM * 1000.0 / durationMs else 0.0

    fun update(previous: TrackPoint?, current: TrackPoint) {
        if (previous == null) return
        val segmentM = haversineM(previous.lat, previous.lon, current.lat, current.lon)
        if (segmentM > 200.0) return
        distanceM += segmentM
        val speed = current.speed.coerceAtLeast(0f)
        if (speed > maxSpeedMs) maxSpeedMs = speed
        if (previous.alt.isNaN() || current.alt.isNaN()) return
        val altDelta = current.alt - previous.alt
        if (altDelta > 0.3) {
            ascentM += altDelta
        } else if (altDelta < -0.3) {
            descentM += -altDelta
        }
    }

    companion object {
        @JvmStatic
        fun haversineM(lat1: Double, lon1: Double, lat2: Double, lon2: Double): Double {
            val halfLatDiff = Math.toRadians(lat2 - lat1) / 2.0
            val halfLonDiff = Math.toRadians(lon2 - lon1) / 2.0
            return 1.2742E7 * Math.asin(
                Math.sqrt(
                    Math.sin(halfLatDiff) * Math.sin(halfLatDiff) +
                        Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2)) *
                        Math.sin(halfLonDiff) * Math.sin(halfLonDiff)
                )
            )
        }

        @JvmStatic
        fun fromPoints(points: List<TrackPoint>?): TrackStats {
            val stats = TrackStats()
            if (!points.isNullOrEmpty()) {
                var previous = points[0]
                for (i in 1 until points.size) {
                    val current = points[i]
                    stats.update(previous, current)
                    previous = current
                }
                if (points.size >= 2) {
                    val span = points.last().timestamp - points[0].timestamp
                    stats.durationMs = span
                    stats.elapsedMs = span
                }
                for (point in points) {
                    if (point.speed > stats.maxSpeedMs) {
                        stats.maxSpeedMs = point.speed
                    }
                }
            }
            return stats
        }
    }
}

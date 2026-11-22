// 来源：jadx 反编译自 dev-9.6.8 APK（com.jichi.bikecomputer.model.TrackPoint）。
// 改写说明：Java POJO 改写为 Kotlin 类，公开可变字段与两个构造函数保持原样；手写 JSON 解析逻辑原样保留。
// 互操作说明：原件是 Java 公开字段，恢复的 Java 文件直接以字段方式读写，故各字段加 @JvmField（否则 Java 侧编不过）；
// 已知问题：未改成 data class——原件使用引用相等，data class 会改变 equals/hashCode 行为；
// 原件无 @Metadata，smali .source 为 .java，说明原件为 Java，字段名直接取自反编译结果。
package com.jichi.bikecomputer.model

class TrackPoint {
    @JvmField var timestamp: Long = 0L
    @JvmField var lat: Double = 0.0
    @JvmField var lon: Double = 0.0
    @JvmField var altGps: Double = 0.0
    @JvmField var altBaro: Double = 0.0
    @JvmField var alt: Double = 0.0
    @JvmField var speed: Float = 0f
    @JvmField var bearing: Float = 0f
    @JvmField var pressure: Float = 0f
    @JvmField var heartRate: Int = 0
    @JvmField var cadence: Int = 0
    @JvmField var power: Int = 0
    @JvmField var wheelSpeed: Float = 0f

    constructor()

    constructor(timestamp: Long, lat: Double, lon: Double) {
        this.timestamp = timestamp
        this.lat = lat
        this.lon = lon
        this.alt = Double.NaN
        this.altGps = Double.NaN
        this.altBaro = Double.NaN
    }

    fun toJson(): String = buildString(180) {
        append("{\"ts\":")
        append(timestamp)
        append(",\"lat\":")
        append(lat)
        append(",\"lon\":")
        append(lon)
        append(",\"ag\":")
        append(altGps)
        append(",\"ab\":")
        append(altBaro)
        append(",\"al\":")
        append(alt)
        append(",\"sp\":")
        append(speed)
        append(",\"be\":")
        append(bearing)
        append(",\"pr\":")
        append(pressure)
        append(",\"hr\":")
        append(heartRate)
        append(",\"ca\":")
        append(cadence)
        append(",\"pw\":")
        append(power)
        append(",\"ws\":")
        append(wheelSpeed)
        append('}')
    }

    companion object {
        @JvmStatic
        fun fromJson(json: String): TrackPoint {
            val point = TrackPoint()
            try {
                extractRaw(json, "\"ts\":")?.let { point.timestamp = it.toLong() }
                extractRaw(json, "\"lat\":")?.let { point.lat = it.toDouble() }
                extractRaw(json, "\"lon\":")?.let { point.lon = it.toDouble() }
                extractRaw(json, "\"ag\":")?.let { point.altGps = it.toDouble() }
                extractRaw(json, "\"ab\":")?.let { point.altBaro = it.toDouble() }
                extractRaw(json, "\"al\":")?.let { point.alt = it.toDouble() }
                extractRaw(json, "\"sp\":")?.let { point.speed = it.toFloat() }
                extractRaw(json, "\"be\":")?.let { point.bearing = it.toFloat() }
                extractRaw(json, "\"pr\":")?.let { point.pressure = it.toFloat() }
                extractRaw(json, "\"hr\":")?.let { point.heartRate = it.toInt() }
                extractRaw(json, "\"ca\":")?.let { point.cadence = it.toInt() }
                extractRaw(json, "\"pw\":")?.let { point.power = it.toInt() }
                extractRaw(json, "\"ws\":", '}')?.let { point.wheelSpeed = it.toFloat() }
            } catch (_: Exception) {
                // 原件同样静默吞掉解析异常，返回已部分填充的 TrackPoint。
            }
            return point
        }

        /**
         * 取出 `"key":<value>` 中 value 的原始子串；key 不存在返回 null。
         * 找不到结束符时 substring 会抛异常，由调用方的 try/catch 按原件行为中止后续解析。
         */
        private fun extractRaw(json: String, key: String, endChar: Char = ','): String? {
            val keyIndex = json.indexOf(key)
            if (keyIndex < 0) return null
            val valueStart = keyIndex + key.length
            val endIndex = json.indexOf(endChar, keyIndex)
            return json.substring(valueStart, endIndex)
        }
    }
}

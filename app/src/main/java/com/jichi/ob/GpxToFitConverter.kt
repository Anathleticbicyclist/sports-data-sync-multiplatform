package com.jichi.ob

import java.io.ByteArrayOutputStream
import java.util.regex.Pattern

/**
 * GPX -> FIT 转换器 —— v6.2.4 新增
 *
 * 【背景】黑鸟单车上传接口 POST /api/records/upload 只接受 FIT 文件（accept=.fit，页面明确"请选择
 * .fit文件"）。行者等来源下载的是 GPX，直接上传时黑鸟把 GPX 当 FIT 解析 → "FIT decode error:
 * Unexpected end of input stream"。本转换器把 GPX 轨迹转成标准 FIT（file_id/event/device_info/
 * session/lap/activity/record 消息流 + CRC），已在黑鸟线上接口实测上传成功（recordId 落库）。
 *
 * 【格式要点（对照真实FIT文件逆向确认）】
 * - 定义消息 header = 0x40|local（bit6 标志，不是 0x80）；数据消息 header = local
 * - base_type: enum=0x00 uint8=0x02 uint16=0x84 sint32=0x85 uint32=0x86
 * - 坐标用 semicircles：deg * 2^31/180；时间 = unix - 631065600 (FIT epoch 1989-12-31)
 * - total_elapsed_time/total_timer_time 单位 ms；total_distance 单位 cm；avg_speed 单位 m/s*1000
 * - altitude 单位 m*5；distance 单位 cm
 */
object GpxToFitConverter {

    private const val FIT_EPOCH_OFFSET = 631065600L

    private val CRC_TABLE = intArrayOf(
        0x0000, 0xCC01, 0xD801, 0x1400, 0xF001, 0x3C00, 0x2800, 0xE401,
        0xA001, 0x6C00, 0x7800, 0xB401, 0x5000, 0x9C01, 0x8801, 0x4400
    )

    private val TRKPT_RE = Pattern.compile(
        "<trkpt\\s+lat=\"([-\\d.]+)\"\\s+lon=\"([-\\d.]+)\"[^>]*>(.*?)</trkpt>",
        Pattern.DOTALL
    )
    private val ELE_RE = Pattern.compile("<ele>([-\\d.]+)</ele>")
    private val TIME_RE = Pattern.compile("<time>([^<]+)</time>")

    data class TrackPoint(val lat: Double, val lon: Double, val ele: Double, val ts: Long)

    fun isFit(data: ByteArray): Boolean =
        data.size >= 12 && data[8] == '.'.code.toByte() && data[9] == 'F'.code.toByte() &&
            data[10] == 'I'.code.toByte() && data[11] == 'T'.code.toByte()

    private fun fitCrc(data: ByteArray): Int {
        var crc = 0
        for (b in data) {
            val ub = b.toInt() and 0xFF
            var tmp = CRC_TABLE[crc and 0xF]
            crc = (crc shr 4) and 0x0FFF
            crc = crc xor tmp xor CRC_TABLE[ub and 0xF]
            tmp = CRC_TABLE[crc and 0xF]
            crc = (crc shr 4) and 0x0FFF
            crc = crc xor tmp xor CRC_TABLE[(ub shr 4) and 0xF]
        }
        return crc
    }

    private fun parseGpx(gpx: String): List<TrackPoint> {
        val pts = mutableListOf<TrackPoint>()
        val m = TRKPT_RE.matcher(gpx)
        while (m.find()) {
            val lat = m.group(1).toDoubleOrNull() ?: continue
            val lon = m.group(2).toDoubleOrNull() ?: continue
            val inner = m.group(3)
            var ele = 0.0
            ELE_RE.matcher(inner).let { if (it.find()) ele = it.group(1).toDoubleOrNull() ?: 0.0 }
            var ts = 0L
            TIME_RE.matcher(inner).let {
                if (it.find()) {
                    val t = it.group(1).trim().removeSuffix("Z")
                    try {
                        val p = java.time.Instant.parse(t + "Z")
                        ts = p.epochSecond
                    } catch (_: Exception) {
                        // 兼容无时区格式
                        try { ts = java.time.Instant.parse(t).epochSecond } catch (_: Exception) {}
                    }
                }
            }
            pts.add(TrackPoint(lat, lon, ele, ts))
        }
        return pts
    }

    private fun degToSemicircle(deg: Double): Int =
        (deg * (Math.pow(2.0, 31.0) / 180.0)).toInt()

    private fun haversineM(lat1: Double, lon1: Double, lat2: Double, lon2: Double): Double {
        val r = 6371000.0
        val p1 = Math.toRadians(lat1); val p2 = Math.toRadians(lat2)
        val dp = Math.toRadians(lat2 - lat1); val dl = Math.toRadians(lon2 - lon1)
        val a = Math.sin(dp / 2) * Math.sin(dp / 2) +
            Math.cos(p1) * Math.cos(p2) * Math.sin(dl / 2) * Math.sin(dl / 2)
        return 2 * r * Math.asin(Math.sqrt(a))
    }

    // 字节写辅助
    private fun u8(out: ByteArrayOutputStream, v: Int) { out.write(v and 0xFF) }
    private fun u16(out: ByteArrayOutputStream, v: Int) {
        out.write(v and 0xFF); out.write((v shr 8) and 0xFF)
    }
    private fun u32(out: ByteArrayOutputStream, v: Long) {
        out.write((v and 0xFF).toInt()); out.write(((v shr 8) and 0xFF).toInt())
        out.write(((v shr 16) and 0xFF).toInt()); out.write(((v shr 24) and 0xFF).toInt())
    }

    private class DefBuilder(private val local: Int, private val global: Int) {
        private val fields = mutableListOf<Triple<Int, Int, Int>>() // fn, size, baseType
        fun f(fn: Int, sz: Int, bt: Int) = apply { fields.add(Triple(fn, sz, bt)) }
        fun build(): ByteArray {
            val out = ByteArrayOutputStream()
            u8(out, 0x40 or local)   // definition header bit6
            u8(out, 0)               // reserved
            u8(out, 0)               // architecture little-endian
            u16(out, global)
            u8(out, fields.size)
            for ((fn, sz, bt) in fields) { u8(out, fn); u8(out, sz); u8(out, bt) }
            return out.toByteArray()
        }
    }

    /** 转换GPX字节为FIT字节 */
    fun convert(gpx: ByteArray): ByteArray {
        val pts = parseGpx(String(gpx, Charsets.UTF_8))
        require(pts.isNotEmpty()) { "GPX无有效轨迹点" }
        val startUnix = pts.firstOrNull { it.ts > 0L }?.ts ?: (System.currentTimeMillis() / 1000)
        val body = buildFitBody(pts, startUnix)

        val header = ByteArray(14)
        header[0] = 14
        header[1] = 0x10
        // profile version 2132 (u16 LE)
        header[2] = (2132 and 0xFF).toByte(); header[3] = ((2132 shr 8) and 0xFF).toByte()
        // data size (u32 LE)
        header[4] = (body.size and 0xFF).toByte(); header[5] = ((body.size shr 8) and 0xFF).toByte()
        header[6] = ((body.size shr 16) and 0xFF).toByte(); header[7] = ((body.size shr 24) and 0xFF).toByte()
        header[8] = '.'.code.toByte(); header[9] = 'F'.code.toByte()
        header[10] = 'I'.code.toByte(); header[11] = 'T'.code.toByte()
        // header crc (前12字节)
        val hcrc = fitCrc(header.copyOf(12))
        header[12] = (hcrc and 0xFF).toByte(); header[13] = ((hcrc shr 8) and 0xFF).toByte()

        val out = ByteArrayOutputStream()
        out.write(header)
        out.write(body)
        val bcrc = fitCrc(body)
        out.write(bcrc and 0xFF); out.write((bcrc shr 8) and 0xFF)
        return out.toByteArray()
    }

    private fun buildFitBody(pts: List<TrackPoint>, startUnix: Long): ByteArray {
        val out = ByteArrayOutputStream()
        val fit0 = pts[0].ts.takeIf { it > 0 } ?: startUnix
        val fitLast = pts.last().ts.takeIf { it > 0 } ?: (startUnix + 1)

        // --- file_id (local 0) ---
        out.write(DefBuilder(0, 0).f(0, 1, 0x00).f(1, 2, 0x84).f(2, 2, 0x84).f(4, 4, 0x86).build())
        out.write(ByteArrayOutputStream().also { o ->
            u8(o, 4); u16(o, 255); u16(o, 1); u32(o, fit0 - FIT_EPOCH_OFFSET)
        }.toByteArray())

        // --- event timer start (local 1) ---
        out.write(DefBuilder(1, 21).f(0, 4, 0x86).f(1, 1, 0x00).f(2, 1, 0x00).f(3, 1, 0x02).build())
        out.write(ByteArrayOutputStream().also { o ->
            u32(o, fit0 - FIT_EPOCH_OFFSET); u8(o, 0); u8(o, 0); u8(o, 0)
        }.toByteArray())

        // --- device_info (local 2) ---
        out.write(DefBuilder(2, 23).f(0, 1, 0x00).f(1, 2, 0x84).f(253, 4, 0x86).build())
        out.write(ByteArrayOutputStream().also { o ->
            u8(o, 255); u16(o, 1); u32(o, fit0 - FIT_EPOCH_OFFSET)
        }.toByteArray())

        // --- 统计 ---
        val n = pts.size
        val durationS = if (pts[0].ts > 0 && pts.last().ts > 0)
            Math.max(1L, pts.last().ts - pts[0].ts) else 1L
        var distM = 0.0; var ascent = 0.0; var descent = 0.0
        for (i in 1 until n) {
            distM += haversineM(pts[i - 1].lat, pts[i - 1].lon, pts[i].lat, pts[i].lon)
            val de = pts[i].ele - pts[i - 1].ele
            if (de > 0) ascent += de else descent += -de
        }
        val avgSpeed = if (durationS > 0) distM / durationS else 0.0

        // --- session (local 3) ---
        out.write(DefBuilder(3, 18)
            .f(253, 4, 0x86).f(2, 4, 0x86).f(3, 4, 0x85).f(4, 4, 0x85)
            .f(5, 1, 0x00).f(6, 1, 0x00).f(7, 4, 0x86).f(8, 4, 0x86)
            .f(9, 4, 0x86).f(14, 2, 0x84).f(21, 2, 0x84).f(22, 2, 0x84)
            .f(27, 1, 0x00).f(28, 1, 0x00).f(30, 2, 0x84).build())
        out.write(ByteArrayOutputStream().also { o ->
            u32(o, fitLast - FIT_EPOCH_OFFSET)
            u32(o, fit0 - FIT_EPOCH_OFFSET)
            u32(o, degToSemicircle(pts[0].lat).toLong()); u32(o, degToSemicircle(pts[0].lon).toLong())
            u8(o, 2); u8(o, 0)
            u32(o, durationS * 1000); u32(o, durationS * 1000)
            u32(o, (distM * 100).toLong())
            u16(o, (avgSpeed * 1000).toInt())
            u16(o, ascent.toInt()); u16(o, descent.toInt())
            u8(o, 0); u8(o, 0); u16(o, 1)
        }.toByteArray())

        // --- lap (local 4) ---
        out.write(DefBuilder(4, 19)
            .f(253, 4, 0x86).f(2, 4, 0x86).f(3, 4, 0x85).f(4, 4, 0x85)
            .f(7, 4, 0x86).f(8, 4, 0x86).f(9, 4, 0x86).f(13, 2, 0x84)
            .f(27, 1, 0x00).f(28, 1, 0x00).build())
        out.write(ByteArrayOutputStream().also { o ->
            u32(o, fitLast - FIT_EPOCH_OFFSET)
            u32(o, fit0 - FIT_EPOCH_OFFSET)
            u32(o, degToSemicircle(pts[0].lat).toLong()); u32(o, degToSemicircle(pts[0].lon).toLong())
            u32(o, durationS * 1000); u32(o, durationS * 1000)
            u32(o, (distM * 100).toLong())
            u16(o, (avgSpeed * 1000).toInt())
            u8(o, 0); u8(o, 0)
        }.toByteArray())

        // --- activity (local 5) ---
        out.write(DefBuilder(5, 34)
            .f(0, 4, 0x86).f(1, 4, 0x86).f(2, 1, 0x00).f(3, 1, 0x00)
            .f(4, 1, 0x00).f(5, 1, 0x00).f(6, 4, 0x86).build())
        out.write(ByteArrayOutputStream().also { o ->
            u32(o, fitLast - FIT_EPOCH_OFFSET)
            u32(o, durationS * 1000)
            u8(o, 1); u8(o, 1); u8(o, 0); u8(o, 0)
            u32(o, fit0)
        }.toByteArray())

        // --- record (local 6) ---
        out.write(DefBuilder(6, 20)
            .f(253, 4, 0x86).f(0, 4, 0x85).f(1, 4, 0x85)
            .f(2, 2, 0x84).f(5, 4, 0x86).f(6, 2, 0x84).build())
        val step = Math.max(1, n / 200)
        var cum = 0.0
        var prev = pts[0]
        for (i in 0 until n step step) {
            val p = pts[i]
            if (i > 0) cum += haversineM(prev.lat, prev.lon, p.lat, p.lon)
            prev = p
            val ts = p.ts.takeIf { it > 0 } ?: fit0
            var spd = 0.0
            if (i > 0 && pts[i].ts > 0 && pts[i - 1].ts > 0) {
                val dt = pts[i].ts - pts[i - 1].ts
                if (dt > 0) spd = haversineM(pts[i - 1].lat, pts[i - 1].lon, p.lat, p.lon) / dt
            }
            out.write(ByteArrayOutputStream().also { o ->
                u32(o, ts - FIT_EPOCH_OFFSET)
                u32(o, degToSemicircle(p.lat).toLong()); u32(o, degToSemicircle(p.lon).toLong())
                u16(o, (p.ele * 5).toInt())
                u32(o, (cum * 100).toLong())
                u16(o, (spd * 1000).toInt())
            }.toByteArray())
        }
        return out.toByteArray()
    }
}

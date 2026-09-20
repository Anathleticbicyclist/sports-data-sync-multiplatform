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

    // v7.9.8: 兼容 lat/lon 与 lon/lat 两种属性顺序（部分平台 GPX 为 lon 在前）
    private val TRKPT_RE = Pattern.compile(
        "<trkpt\\s+(?:lat=\"([-\\d.]+)\"\\s+lon=\"([-\\d.]+)\"|lon=\"([-\\d.]+)\"\\s+lat=\"([-\\d.]+)\")[^>]*>(.*?)</trkpt>",
        Pattern.DOTALL
    )
    private val ELE_RE = Pattern.compile("<ele>([-\\d.]+)</ele>")
    private val TIME_RE = Pattern.compile("<time>([^<]+)</time>")
    private val HR_RE = Pattern.compile("<gpxtpx:hr>(\\d+)</gpxtpx:hr>|<hr>(\\d+)</hr>")
    private val CAD_RE = Pattern.compile("<gpxtpx:cad>(\\d+)</gpxtpx:cad>|<cadence>(\\d+)</cadence>|<cad>(\\d+)</cad>")
    private val POWER_RE = Pattern.compile("<gpxtpx:power>(\\d+)</gpxtpx:power>|<power>(\\d+)</power>")
    // v8.1.4: Keep cycling 单点兜底时透传的元数据（写入 GPX <extensions>）
    private val META_DIST_RE = Pattern.compile("<jichi:distance>([\\d.]+)</jichi:distance>")
    private val META_DUR_RE = Pattern.compile("<jichi:duration>(\\d+)</jichi:duration>")
    private val META_CAL_RE = Pattern.compile("<jichi:calorie>(\\d+)</jichi:calorie>")
    private val META_AVGHR_RE = Pattern.compile("<jichi:avgHr>(\\d+)</jichi:avgHr>")
    private val META_MAXHR_RE = Pattern.compile("<jichi:maxHr>(\\d+)</jichi:maxHr>")
    private val META_AVGCAD_RE = Pattern.compile("<jichi:avgCadence>([\\d.]+)</jichi:avgCadence>")

    /** v8.1.4: Keep cycling 单点兜底元数据（distance米/duration秒/calorie千卡/avgHr/maxHr） */
    data class Meta(val dist: Double = 0.0, val dur: Long = 0L, val cal: Int = 0, val avgHr: Int = 0, val maxHr: Int = 0, val avgCadence: Int = 0) {
        val valid: Boolean get() = dist > 0.0 || dur > 0L
    }

    private fun parseMeta(gpx: String): Meta = Meta(
        META_DIST_RE.matcher(gpx).let { if (it.find()) it.group(1).toDoubleOrNull() ?: 0.0 else 0.0 },
        META_DUR_RE.matcher(gpx).let { if (it.find()) it.group(1).toLongOrNull() ?: 0L else 0L },
        META_CAL_RE.matcher(gpx).let { if (it.find()) it.group(1).toIntOrNull() ?: 0 else 0 },
        META_AVGHR_RE.matcher(gpx).let { if (it.find()) it.group(1).toIntOrNull() ?: 0 else 0 },
        META_MAXHR_RE.matcher(gpx).let { if (it.find()) it.group(1).toIntOrNull() ?: 0 else 0 },
        META_AVGCAD_RE.matcher(gpx).let { if (it.find()) it.group(1).toDoubleOrNull()?.toInt() ?: 0 else 0 },
    )

    data class TrackPoint(val lat: Double, val lon: Double, val ele: Double, val ts: Long, val hr: Int = 0, val cad: Int = 0, val power: Int = 0)

    /** v6.2.5: 限制参与转换的轨迹点数，避免超大GPX(数万点)解析+距离计算导致卡顿；3000点足够还原轨迹 */
    private const val MAX_POINTS = 50000  // v6.3.14: 3000→50000，长距离骑行不截断

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
        while (m.find() && pts.size < MAX_POINTS) {
            val lat = m.group(1)?.toDoubleOrNull() ?: m.group(4)?.toDoubleOrNull() ?: continue
            val lon = m.group(2)?.toDoubleOrNull() ?: m.group(3)?.toDoubleOrNull() ?: continue
            val inner = m.group(5)
            var ele = 0.0
            ELE_RE.matcher(inner).let { if (it.find()) ele = it.group(1).toDoubleOrNull() ?: 0.0 }
            var ts = 0L
            TIME_RE.matcher(inner).let {
                if (it.find()) {
                    var t = it.group(1).trim().replace(" ", "T")
                    if (!t.endsWith("Z")) t += "Z"
                    try {
                        val p = java.time.Instant.parse(t)
                        ts = p.epochSecond
                    } catch (_: Exception) {}
                }
            }
            // v6.3.11: 解析Garmin TrackPointExtension中的心率/踏频/功率
            var hr = 0; var cad = 0; var power = 0
            HR_RE.matcher(inner).let { if (it.find()) hr = (it.group(1) ?: it.group(2) ?: "0").toIntOrNull() ?: 0 }
            CAD_RE.matcher(inner).let { if (it.find()) cad = (it.group(1) ?: it.group(2) ?: it.group(3) ?: "0").toIntOrNull() ?: 0 }
            POWER_RE.matcher(inner).let { if (it.find()) power = (it.group(1) ?: it.group(2) ?: "0").toIntOrNull() ?: 0 }
            pts.add(TrackPoint(lat, lon, ele, ts, hr, cad, power))
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
            // FIT 协议：Definition 消息头 = bit6（0x40|local），bit7=1 是 Compressed Timestamp 消息。
            // 已验证：Garmin FIT SDK 21.x 用 HDR_TYPE_DEF_BIT=0x40 判定定义消息，此写法正确（勿改 0x80）。
            u8(out, 0x40 or local)
            u8(out, 0)               // reserved
            u8(out, 0)               // architecture little-endian
            u16(out, global)
            u8(out, fields.size)
            for ((fn, sz, bt) in fields) { u8(out, fn); u8(out, sz); u8(out, bt) }
            return out.toByteArray()
        }
    }

    private val NAME_RE = Pattern.compile("<name>([^<]+)</name>")

    /** 从 GPX <name> 运动类型标记解析 FIT (sport, sub_sport)。
     *  Keep v7.9.2 写 "from keep - running/cycling/hiking"，v8.1.6 起写精确 dataType
     *  （outdoorCycling/indoorCycling/mountaineering/outdoorRunning/indoorRunning/outdoorWalking/
     *   indoorWalking/outdoorSwimming/indoorSwimming 等）。
     *  FIT sport 枚举：1=running 2=cycling 5=swimming 10=training 11=walking 16=mountaineering
     *  17=hiking 18=multisport；sub_sport：2=street 3=trail 6=indoor_cycling 7=road 8=mountain
     *  14=indoor_running 16=indoor_walking 21=indoor_swimming 30=open_water。
     *  识别失败返回 Pair(-1, 0)（由调用方决定兜底）。 */
    private fun detectSportFromGpx(gpx: String): Pair<Int, Int> {
        return try {
            val m = NAME_RE.matcher(gpx)
            if (!m.find()) return Pair(-1, 0)
            val name = m.group(1).lowercase()
            when {
                // 骑行（室内优先——indoorCycling 含 "cycling" 子串，必须先匹配）
                name.contains("indoorcycling") || name.contains("spinning") -> Pair(2, 6)   // indoor_cycling
                name.contains("cycling") || name.contains("riding") || name.contains("bike") || name.contains("ebike") -> Pair(2, 7) // road
                // 跑步
                name.contains("indoorrunning") || name.contains("treadmill") -> Pair(1, 14) // indoor_running
                name.contains("running") || name.contains("run") -> Pair(1, 2)              // street
                // 登山（mountaineering 不能落到 hiking，先匹配）
                name.contains("mountaineering") || name.contains("mountaineer") -> Pair(16, 0)
                name.contains("hiking") || name.contains("hike") || name.contains("trail") -> Pair(17, 3)
                // 步行
                name.contains("indoorwalking") -> Pair(11, 16)                              // indoor_walking
                name.contains("walking") || name.contains("walk") -> Pair(11, 2)
                // 游泳
                name.contains("indoorswimming") -> Pair(5, 21)                              // indoor_swimming
                name.contains("swimming") || name.contains("swim") -> Pair(5, 30)           // open_water
                // 铁三 / 健身
                name.contains("triathlon") || name.contains("multisport") -> Pair(18, 0)
                name.contains("fitness") || name.contains("workout") || name.contains("training") -> Pair(10, 0)
                else -> Pair(-1, 0)
            }
        } catch (_: Exception) { Pair(-1, 0) }
    }

    /** 转换GPX字节为FIT字节。sport: FIT sport 枚举（1=跑步 running，2=骑行 cycling，17=徒步 hiking）。
     *  默认 -1 = 自动从 GPX <name> 运动类型标记解析（v8.1.6 起解析 (sport, sub_sport) 完整映射）；
     *  解析失败或未标记时按骑行(2)兜底（兼容历史行为）。
     *  v8.1.4: 若 GPX 含 <jichi:*> 元数据（Keep cycling 单点兜底），单点轨迹的
     *  total_distance/时长/热量/心率 用元数据，目标平台不再显示 0 里程。 */
    fun convert(gpx: ByteArray, sport: Int = -1): ByteArray {
        val gpxStr = String(gpx, Charsets.UTF_8)
        val pts = parseGpx(gpxStr)
        require(pts.isNotEmpty()) { "GPX无有效轨迹点" }
        val startUnix = pts.firstOrNull { it.ts > 0L }?.ts ?: (System.currentTimeMillis() / 1000)
        val (detSport, detSub) = if (sport > 0) Pair(sport, 0) else detectSportFromGpx(gpxStr)
        val resolvedSport = if (detSport > 0) detSport else 2
        val meta = parseMeta(gpxStr)
        // v8.1.4: 单点兜底时用 Keep 详情元数据覆盖 total_distance/时长（cal/hr 单点场景无真实值，按现有规则计算）
        return convertPoints(pts, resolvedSport, meta.dist, meta.dur, detSub, meta.avgCadence)
    }

    /**
     * v7.9.7: 轨迹合并入口——从已解析的 TrackPoint 列表直接生成标准合法 FIT。
     * 与 [convert] 共用 buildFitBody + header 组装，保证合并产物与单条转换同样合法（含 header/CRC）。
     * @param sport FIT sport 枚举（1=跑步，2=骑行，17=徒步）
     * @param subSport FIT sub_sport 枚举（0=generic，2=street，6=indoor_cycling，7=road 等；0=不指定）
     * @param metaDistKeep / metaDurKeep 单点兜底元数据（仅单点轨迹时覆盖 total_distance/时长；0=不覆盖）
     */
    fun convertPoints(pts: List<TrackPoint>, sport: Int = 2, metaDistKeep: Double = 0.0, metaDurKeep: Long = 0L, subSport: Int = 0, metaAvgCadence: Int = 0): ByteArray {
        require(pts.isNotEmpty()) { "无有效轨迹点" }
        val startUnix = pts.firstOrNull { it.ts > 0L }?.ts ?: (System.currentTimeMillis() / 1000)
        val body = buildFitBody(pts, startUnix, sport, subSport, metaDistKeep, metaDurKeep)
        return buildFitFile(body)
    }

    /** v7.9.7: 公开 GPX 解析入口（轨迹合并复用；私有 parseGpx 仅供内部单条转换） */
    fun parseGpxBytes(gpx: ByteArray): List<TrackPoint> = parseGpx(String(gpx, Charsets.UTF_8))

    /** 组装标准 FIT 文件：14字节header + body + bodyCRC */
    private fun buildFitFile(body: ByteArray): ByteArray {
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

    private fun buildFitBody(pts: List<TrackPoint>, startUnix: Long, sport: Int = 2, subSport: Int = 0, metaDist: Double = 0.0, metaDur: Long = 0L): ByteArray {
        val out = ByteArrayOutputStream()
        // v6.2.7: 若无有效时间戳(行者等GPX time格式不兼容/缺失)，生成递增时间戳避免FIT时间异常被黑鸟拒
        val hasTime = pts[0].ts > 0 && pts.last().ts > 0
        val fit0 = pts[0].ts.takeIf { it > 0 } ?: startUnix
        val fitLast = pts.last().ts.takeIf { it > 0 } ?: (startUnix + Math.max(1L, (pts.size - 1).toLong()))

        // --- file_id (local 0) ---
        out.write(DefBuilder(0, 0).f(0, 1, 0x00).f(1, 2, 0x84).f(2, 2, 0x84).f(4, 4, 0x86).build())
        out.write(ByteArrayOutputStream().also { o ->
            u8(o, 0x00); u8(o, 4); u16(o, 255); u16(o, 1); u32(o, fit0 - FIT_EPOCH_OFFSET)
        }.toByteArray())

        // --- event timer start (local 1) ---
        out.write(DefBuilder(1, 21).f(0, 4, 0x86).f(1, 1, 0x00).f(2, 1, 0x00).f(3, 1, 0x02).build())
        out.write(ByteArrayOutputStream().also { o ->
            u8(o, 0x01); u32(o, fit0 - FIT_EPOCH_OFFSET); u8(o, 0); u8(o, 0); u8(o, 0)
        }.toByteArray())

        // --- device_info (local 2) ---
        out.write(DefBuilder(2, 23).f(0, 1, 0x00).f(1, 2, 0x84).f(253, 4, 0x86).build())
        out.write(ByteArrayOutputStream().also { o ->
            u8(o, 0x02); u8(o, 255); u16(o, 1); u32(o, fit0 - FIT_EPOCH_OFFSET)
        }.toByteArray())

        // --- 统计 ---
        val n = pts.size
        var durationS = if (hasTime)
            Math.max(1L, pts.last().ts - pts[0].ts)
        else
            Math.max(1L, (n - 1).toLong()) // 无有效时间，按点估算每秒一点
        // v8.1.4: Keep cycling 单点兜底——单点轨迹无真实时长/距离，用详情元数据覆盖
        // （实测 cyclinglog 不返回 rawDataURL，但返回 distance/duration，透传后目标平台不再显示 0 里程/1秒）
        val isSinglePoint = n == 1
        if (isSinglePoint && metaDur > 0) durationS = metaDur
        var distM = 0.0; var ascent = 0.0; var descent = 0.0
        var maxSpeedMs = 0.0
        var hrSum = 0L; var hrN = 0L; var maxHr = 0
        var cadSum = 0L; var cadN = 0L; var maxCad = 0
        var powSum = 0L; var powN = 0L; var maxPow = 0
        for (i in 1 until n) {
            distM += haversineM(pts[i - 1].lat, pts[i - 1].lon, pts[i].lat, pts[i].lon)
            val de = pts[i].ele - pts[i - 1].ele
            if (de > 0) ascent += de else descent += -de
            val dt = pts[i].ts - pts[i - 1].ts
            if (dt > 0) {
                val spd = haversineM(pts[i - 1].lat, pts[i - 1].lon, pts[i].lat, pts[i].lon) / dt
                if (spd > maxSpeedMs) maxSpeedMs = spd
            }
        }
        if (isSinglePoint && metaDist > 0) {
            distM = metaDist
            maxSpeedMs = if (durationS > 0) metaDist / durationS else 0.0
        }
        for (p in pts) {
            if (p.hr > 0) { hrSum += p.hr; hrN++; if (p.hr > maxHr) maxHr = p.hr }
            if (p.cad > 0) { cadSum += p.cad; cadN++; if (p.cad > maxCad) maxCad = p.cad }
            if (p.power > 0) { powSum += p.power; powN++; if (p.power > maxPow) maxPow = p.power }
        }
        val avgSpeed = if (durationS > 0) distM / durationS else 0.0
        val avgHr = if (hrN > 0) (hrSum / hrN).toInt() else 0
        val avgCad = if (cadN > 0) (cadSum / cadN).toInt() else 0
        val avgPow = if (powN > 0) (powSum / powN).toInt() else 0
        // 卡路里：有功率 → 功率×时长×3.6；无功率跑步 → 60kcal/km（与贴纸统计同口径）
        val calories = when {
            avgPow > 0 -> (avgPow * (durationS / 3600.0) * 3.6).toInt()
            sport == 1 -> (distM / 1000.0 * 60.0).toInt()
            else -> 0
        }

        // --- session (local 3)：补齐 心率/踏频/功率/卡路里/增强速度 汇总，平台详情页才能解析出这些数据 ---
        // Garmin SDK 21.176 SessionMesg 权威字段号（此前误用 LapMesg 字段号导致平台读不到）：
        // 253 timestamp,2 start_time,3/4 start pos,5 sport,6 sub_sport,7 elapsed,8 timer,9 distance,
        // 11 total_calories,14 avg_speed,15 max_speed,16 avg_hr,17 max_hr,18 avg_cad,19 max_cad,
        // 20 avg_power,21 max_power,22 ascent,23 descent,26 num_laps,33 num_lengths,124/125 enhanced
        out.write(DefBuilder(3, 18)
            .f(253, 4, 0x86).f(2, 4, 0x86).f(3, 4, 0x85).f(4, 4, 0x85)
            .f(5, 1, 0x00).f(6, 1, 0x00).f(7, 4, 0x86).f(8, 4, 0x86)
            .f(9, 4, 0x86).f(11, 2, 0x84).f(14, 2, 0x84).f(15, 2, 0x84)
            .f(16, 1, 0x02).f(17, 1, 0x02).f(18, 1, 0x02).f(19, 1, 0x02)
            .f(20, 2, 0x84).f(21, 2, 0x84).f(22, 2, 0x84).f(23, 2, 0x84)
            .f(26, 1, 0x02).f(33, 1, 0x02).f(124, 2, 0x84).f(125, 2, 0x84).build())
        out.write(ByteArrayOutputStream().also { o ->
            u8(o, 0x03)
            u32(o, fitLast - FIT_EPOCH_OFFSET)     // 253 timestamp
            u32(o, fit0 - FIT_EPOCH_OFFSET)        // 2 start_time
            u32(o, degToSemicircle(pts[0].lat).toLong()); u32(o, degToSemicircle(pts[0].lon).toLong()) // 3/4
            u8(o, sport); u8(o, subSport)            // 5 sport / 6 sub_sport
            u32(o, durationS * 1000); u32(o, durationS * 1000) // 7/8
            u32(o, (distM * 100).toLong())         // 9 total_distance (100cm)
            u16(o, calories.coerceIn(0, 65535))    // 11 total_calories
            u16(o, (avgSpeed * 1000).toInt())      // 14 avg_speed (m/s*1000)
            u16(o, (maxSpeedMs * 1000).toInt())    // 15 max_speed
            u8(o, avgHr); u8(o, maxHr)             // 16 avg_hr / 17 max_hr
            u8(o, avgCad); u8(o, maxCad)           // 18 avg_cad / 19 max_cad
            u16(o, avgPow); u16(o, maxPow)         // 20 avg_power / 21 max_power
            u16(o, ascent.toInt()); u16(o, descent.toInt()) // 22/23
            u8(o, 1); u8(o, 0)                     // 26 num_laps / 33 num_lengths
            u16(o, (avgSpeed * 1000).toInt())      // 124 enhanced_avg_speed
            u16(o, (maxSpeedMs * 1000).toInt())    // 125 enhanced_max_speed
        }.toByteArray())

        // --- lap (local 4)：同样补齐关键汇总（avg_speed/max_speed/hr/power） ---
        // Garmin SDK 21.176 LapMesg 权威字段号：
        // 253 timestamp,2 start_time,3/4 start pos,7 elapsed,8 timer,9 distance,11 calories,
        // 13 avg_speed,14 max_speed,15 avg_hr,16 max_hr,17 avg_cad,18 max_cad,
        // 19 avg_power,20 max_power,21 ascent,22 descent,32 num_lengths,110/111 enhanced
        out.write(DefBuilder(4, 19)
            .f(253, 4, 0x86).f(2, 4, 0x86).f(3, 4, 0x85).f(4, 4, 0x85)
            .f(7, 4, 0x86).f(8, 4, 0x86).f(9, 4, 0x86).f(11, 2, 0x84)
            .f(13, 2, 0x84).f(14, 2, 0x84).f(15, 1, 0x02).f(16, 1, 0x02)
            .f(17, 1, 0x02).f(18, 1, 0x02).f(19, 2, 0x84).f(20, 2, 0x84)
            .f(21, 2, 0x84).f(22, 2, 0x84).f(32, 1, 0x02).f(110, 2, 0x84).f(111, 2, 0x84).build())
        out.write(ByteArrayOutputStream().also { o ->
            u8(o, 0x04)
            u32(o, fitLast - FIT_EPOCH_OFFSET)     // 253
            u32(o, fit0 - FIT_EPOCH_OFFSET)        // 2
            u32(o, degToSemicircle(pts[0].lat).toLong()); u32(o, degToSemicircle(pts[0].lon).toLong()) // 3/4
            u32(o, durationS * 1000); u32(o, durationS * 1000) // 7/8
            u32(o, (distM * 100).toLong())         // 9
            u16(o, calories.coerceIn(0, 65535))    // 11
            u16(o, (avgSpeed * 1000).toInt())      // 13 avg_speed
            u16(o, (maxSpeedMs * 1000).toInt())    // 14 max_speed
            u8(o, avgHr); u8(o, maxHr)             // 15/16
            u8(o, avgCad); u8(o, maxCad)           // 17/18
            u16(o, avgPow); u16(o, maxPow)         // 19/20
            u16(o, ascent.toInt()); u16(o, descent.toInt()) // 21/22
            u8(o, 1)                               // 32 num_lengths
            u16(o, (avgSpeed * 1000).toInt())      // 110 enhanced_avg_speed
            u16(o, (maxSpeedMs * 1000).toInt())    // 111 enhanced_max_speed
        }.toByteArray())

        // --- activity (local 5) ---
        out.write(DefBuilder(5, 34)
            .f(0, 4, 0x86).f(1, 4, 0x86).f(2, 1, 0x00).f(3, 1, 0x00)
            .f(4, 1, 0x00).f(5, 1, 0x00).f(6, 4, 0x86).build())
        out.write(ByteArrayOutputStream().also { o ->
            u8(o, 0x05)
            u32(o, fitLast - FIT_EPOCH_OFFSET)
            u32(o, durationS * 1000)
            u8(o, 1); u8(o, 1); u8(o, 0); u8(o, 0)
            u32(o, fit0)
        }.toByteArray())

        // --- record (local 6) ---
        out.write(DefBuilder(6, 20)
            .f(253, 4, 0x86).f(0, 4, 0x85).f(1, 4, 0x85)
            .f(2, 2, 0x84).f(3, 1, 0x02).f(4, 1, 0x02)
            .f(5, 4, 0x86).f(6, 2, 0x84).f(7, 2, 0x84).build())
        val step = 1  // v6.3.14: 不再抽稀到200点，保留全部轨迹点
        var cum = 0.0
        var prev = pts[0]
        for (i in 0 until n step step) {
            val p = pts[i]
            if (i > 0) cum += haversineM(prev.lat, prev.lon, p.lat, p.lon)
            prev = p
            val ts = p.ts.takeIf { it > 0 } ?: (startUnix + i) // 无time: 按索引递增每秒一点
            var spd = 0.0
            if (i > 0 && pts[i].ts > 0 && pts[i - 1].ts > 0) {
                val dt = pts[i].ts - pts[i - 1].ts
                if (dt > 0) spd = haversineM(pts[i - 1].lat, pts[i - 1].lon, p.lat, p.lon) / dt
            }
            out.write(ByteArrayOutputStream().also { o ->
                u8(o, 0x06)
                u32(o, ts - FIT_EPOCH_OFFSET)
                u32(o, degToSemicircle(p.lat).toLong()); u32(o, degToSemicircle(p.lon).toLong())
                u16(o, ((p.ele + 500.0) * 5.0).toInt())  // FIT 海拔编码 = (m + 500) * 5
                u8(o, p.hr)  // heart_rate uint8
                u8(o, p.cad) // cadence uint8
                u32(o, (cum * 100).toLong())
                u16(o, (spd * 1000).toInt())
                u16(o, p.power) // power uint16
            }.toByteArray())
        }
        return out.toByteArray()
    }
}

package com.jichi.ob.merge

import com.jichi.ob.GpxToFitConverter
import java.io.ByteArrayOutputStream
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.TimeZone

/**
 * v7.9.7 轨迹合并核心。
 *
 * 算法参考开源 fitactivity（muktihari/fit，Go）的 MergeMany：
 * 1. 按各段开始时间排序（乱序选择也能得到正确顺序）；
 * 2. 以第一条为基础，其余段按时间顺序追加；
 * 3. 段间时间回退/重叠的点剔除，保证最终 Record 时间严格递增；
 * 4. distance 由下游 FIT 生成器按点序重算累计（从 0 开始）；
 * 5. sport 统一为单值（用户可指定，默认取第一段），符合"合并成一条记录"的直觉；
 * 6. 保留点级心率/踏频/功率/海拔，不丢任何数据。
 */
object TrackMerger {

    const val SPORT_RUNNING = 1
    const val SPORT_CYCLING = 2
    const val SPORT_HIKING = 17

    /** 段内大间隙截断阈值：>60s 的暂停/停表/跨天间隔计为 60s（Strava moving-time 口径） */
    private const val MAX_SEG_INTERVAL_S = 60L

    data class Segment(
        val name: String,
        val sport: Int,
        val points: List<GpxToFitConverter.TrackPoint>
    )

    data class MergedResult(
        val points: List<GpxToFitConverter.TrackPoint>,
        val sport: Int,
        val sportName: String,
        val startTime: Long,
        val endTime: Long,
        val totalDurationSec: Long,
        val totalDistanceKm: Double,
        val ascentM: Double,
        val descentM: Double,
        val avgHr: Int,
        val maxHr: Int,
        val avgCad: Int,
        val avgPower: Int,
        val segmentCount: Int,
        val pointCount: Int
    )

    /**
     * 合并多个 GPX 文件（文件名或标题 → 字节）。
     * @param forcedSport >0 时强制统一为指定类型；否则取第一段类型。
     */
    fun mergeGpxFiles(files: List<Pair<String, ByteArray>>, forcedSport: Int = -1): MergedResult {
        val segments = files.mapNotNull { (name, bytes) ->
            try {
                val pts = GpxToFitConverter.parseGpxBytes(bytes)
                if (pts.isEmpty()) null else Segment(name, detectSport(name), pts)
            } catch (_: Exception) { null }
        }
        if (segments.isEmpty()) throw IllegalArgumentException("所有轨迹均解析失败")
        return mergeSegments(segments, forcedSport)
    }

    /** 合并多个点列表（供 FIT 源等已解析场景）。 */
    fun mergePointGroups(groups: List<List<GpxToFitConverter.TrackPoint>>, forcedSport: Int = -1): MergedResult {
        val segments = groups.mapIndexed { i, pts ->
            Segment("segment${i + 1}", if (i == 0) detectSport("") else -1, pts)
        }.filter { it.points.isNotEmpty() }
        if (segments.isEmpty()) throw IllegalArgumentException("无可合并的轨迹")
        return mergeSegments(segments, forcedSport)
    }

    private fun mergeSegments(segments: List<Segment>, forcedSport: Int): MergedResult {
        // 1) 剔除空段，按开始时间排序
        val valid = segments.filter { it.points.isNotEmpty() }
        val sorted = valid.sortedBy { it.points.firstOrNull()?.ts ?: 0L }

        // 2) sport 统一：forced 优先；否则取第一段（自动识别失败默认骑行）
        val sport = when {
            forcedSport > 0 -> forcedSport
            else -> sorted.firstOrNull()?.sport?.takeIf { it > 0 } ?: SPORT_CYCLING
        }

        // 3) 拼接点，时间戳压缩（运动时间口径）：
        //    段间间隔清零（紧接 +1s）；段内保留原始时间差，但 >120s 的大间隙（暂停/停表/跨天）
        //    截断为 120s——真实 FIT 记录常含数十分钟到数小时的暂停，多条合并后暂停全部累加，
        //    会被平台解析成几十小时（如 4 条记录合并出 50:11:17），平均速度严重偏低。
        //    v7.9.11 段间压缩 + v8.0.7 段内大间隙压缩。
        val merged = ArrayList<GpxToFitConverter.TrackPoint>()
        val segStartIdx = ArrayList<Int>() // 每段首点在 merged 中的索引（统计时跳过段间"跳飞"距离）
        var cursorTs = -1L // 上段末点的时间戳（压缩后）
        for (seg in sorted) {
            var prevRawTs = -1L
            var segFirst = true
            for (p in seg.points) {
                val newTs: Long
                when {
                    p.ts <= 0L -> newTs = if (cursorTs < 0) 1L else cursorTs + 1
                    prevRawTs < 0L -> {
                        // 段首：第一段保留原始起点，其余段紧接上段末点
                        newTs = if (cursorTs < 0) p.ts else cursorTs + 1
                        prevRawTs = p.ts
                    }
                    else -> {
                        // 段内：保留原始时间差，但 >MAX_SEG_INTERVAL_S 的大间隙截断
                        newTs = cursorTs + (p.ts - prevRawTs).coerceAtMost(MAX_SEG_INTERVAL_S)
                        prevRawTs = p.ts
                    }
                }
                if (newTs > cursorTs) {
                    if (segFirst) { segStartIdx.add(merged.size); segFirst = false }
                    merged.add(p.copy(ts = newTs))
                    cursorTs = newTs
                }
            }
        }
        if (merged.isEmpty()) throw IllegalArgumentException("合并后无有效轨迹点")

        // 4) 统计（含累加距离、累计爬升/下降、心率）
        //    距离/爬升只按段内累计：段首点重置 prev，段间"跳飞"（不同地点记录相连）不计入总距离
        var distanceKm = 0.0
        var ascent = 0.0
        var descent = 0.0
        var hrSum = 0L; var hrCount = 0L; var maxHr = 0
        var cadSum = 0L; var cadCount = 0L
        var powerSum = 0L; var powerCount = 0L
        var prev: GpxToFitConverter.TrackPoint? = null
        var prevEle: Double? = null
        val segStartSet = segStartIdx.toHashSet()
        for ((i, p) in merged.withIndex()) {
            if (i in segStartSet) { prev = null; prevEle = null }
            val pr = prev
            if (pr != null) {
                distanceKm += haversineKm(pr.lat, pr.lon, p.lat, p.lon)
            }
            val pe = prevEle
            if (pe != null) {
                val d = p.ele - pe
                if (d > 0) ascent += d else descent += -d
            }
            if (p.hr > 0) { hrSum += p.hr; hrCount++; if (p.hr > maxHr) maxHr = p.hr }
            if (p.cad > 0) { cadSum += p.cad; cadCount++ }
            if (p.power > 0) { powerSum += p.power; powerCount++ }
            prev = p
            prevEle = if (p.ele > 0) p.ele else null
        }
        val startTs = merged.first().ts.takeIf { it > 0 } ?: (System.currentTimeMillis() / 1000)
        val endTs = merged.last().ts.takeIf { it > 0 } ?: (startTs + merged.size)
        val duration = (endTs - startTs).coerceAtLeast(1L)

        return MergedResult(
            points = merged,
            sport = sport,
            sportName = sportName(sport),
            startTime = startTs,
            endTime = endTs,
            totalDurationSec = duration,
            totalDistanceKm = distanceKm,
            ascentM = ascent,
            descentM = descent,
            avgHr = if (hrCount > 0) (hrSum / hrCount).toInt() else 0,
            maxHr = maxHr,
            avgCad = if (cadCount > 0) (cadSum / cadCount).toInt() else 0,
            avgPower = if (powerCount > 0) (powerSum / powerCount).toInt() else 0,
            segmentCount = sorted.size,
            pointCount = merged.size
        )
    }

    /** 生成合并后的标准 GPX（1.1，带 <type> 运动类型 + gpxtpx 心率/踏频/功率扩展）。 */
    fun buildGpx(result: MergedResult, title: String): ByteArray {
        val sb = StringBuilder()
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
        sb.append("<gpx version=\"1.1\" creator=\"鸡翅幸哲迈进OB\" xmlns=\"http://www.topografix.com/GPX/1/1\" ")
        sb.append("xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\" ")
        sb.append("xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" ")
        sb.append("xsi:schemaLocation=\"http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd\">\n")
        sb.append("<trk>\n")
        sb.append("<name>").append(esc(title)).append("</name>\n")
        sb.append("<type>").append(sportName(result.sport)).append("</type>\n")
        sb.append("<trkseg>\n")
        val fmt = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US)
        fmt.timeZone = TimeZone.getTimeZone("UTC")
        for (p in result.points) {
            sb.append("<trkpt lat=\"").append(trimNum(p.lat)).append("\" lon=\"").append(trimNum(p.lon)).append("\">\n")
            if (p.ele > 0) sb.append("<ele>").append(trimNum(p.ele)).append("</ele>\n")
            if (p.ts > 0) sb.append("<time>").append(fmt.format(Date(p.ts * 1000))).append("</time>\n")
            if (p.hr > 0 || p.cad > 0 || p.power > 0) {
                sb.append("<extensions><gpxtpx:TrackPointExtension>\n")
                if (p.hr > 0) sb.append("<gpxtpx:hr>").append(p.hr).append("</gpxtpx:hr>\n")
                if (p.cad > 0) sb.append("<gpxtpx:cad>").append(p.cad).append("</gpxtpx:cad>\n")
                if (p.power > 0) sb.append("<gpxtpx:power>").append(p.power).append("</gpxtpx:power>\n")
                sb.append("</gpxtpx:TrackPointExtension></extensions>\n")
            }
            sb.append("</trkpt>\n")
        }
        sb.append("</trkseg>\n</trk>\n</gpx>\n")
        return sb.toString().toByteArray(Charsets.UTF_8)
    }

    fun sportName(sport: Int): String = when (sport) {
        SPORT_RUNNING -> "running"
        SPORT_HIKING -> "hiking"
        else -> "cycling"
    }

    /** 从文件名/标题关键词识别运动类型（与 GpxToFitConverter 口径一致）。 */
    fun detectSportFromName(name: String): Int = detectSport(name)

    private fun detectSport(name: String): Int {
        val n = name.lowercase()
        return when {
            n.contains("cycling") || n.contains("riding") || n.contains("bike") || n.contains("骑行") || n.contains("公路") || n.contains("山地") -> SPORT_CYCLING
            n.contains("hiking") || n.contains("walking") || n.contains("trail") || n.contains("徒步") || n.contains("登山") || n.contains("健走") -> SPORT_HIKING
            n.contains("running") || n.contains("run") || n.contains("跑步") -> SPORT_RUNNING
            else -> -1
        }
    }

    private fun haversineKm(lat1: Double, lon1: Double, lat2: Double, lon2: Double): Double {
        val r = 6371.0088
        val dLat = Math.toRadians(lat2 - lat1)
        val dLon = Math.toRadians(lon2 - lon1)
        val a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
                Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2)) * Math.sin(dLon / 2) * Math.sin(dLon / 2)
        return r * 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))
    }

    private fun trimNum(v: Double): String = if (v == Math.floor(v) && !v.isInfinite()) v.toLong().toString() else String.format(Locale.US, "%.7f", v)

    private fun esc(s: String): String = s.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("\"", "&quot;")
}
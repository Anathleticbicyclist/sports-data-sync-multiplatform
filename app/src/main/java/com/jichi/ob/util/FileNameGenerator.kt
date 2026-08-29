package com.jichi.ob.util

import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.TimeZone

/**
 * 统一文件名生成器（v6.3.1）
 * 格式：目标平台_运动时间_运动类型_来源ID.扩展名
 * 示例：iGPSPORT_20260825_120000_骑行_xz221312982.fit
 */
object FileNameGenerator {

    /** 目标平台英文名称 */
    private val TARGET_NAMES = mapOf(
        DataSource.IGPSPORT to "iGPSPORT",
        DataSource.XINGZHE to "XingZhe",
        DataSource.MAGENE to "Magene",
        DataSource.BLACKBIRD to "Blackbird",
        DataSource.BRYTON to "Bryton",
        DataSource.OUTBASE to "Outbase"
    )

    /** 常见运动类型关键词（按优先级匹配） */
    private val SPORT_KEYWORDS = listOf(
        "室内骑行", "户外骑行", "公路骑行", "山地骑行", "室内跑步", "户外跑步",
        "骑行", "跑步", "游泳", "徒步", "登山", "滑雪", "滑冰", "健身", "瑜伽",
        "划船机", "椭圆机", "动感单车", "铁人三项", "竞走", "越野跑"
    )

    private val illegalChars = Regex("[\\\\/:*?\"<>|\\s]+")

    /** 生成统一文件名（用源平台名，如行者数据上传到任何平台都显示 XingZhe_xxx） */
    fun generate(target: DataSource, record: ActivityRecord, ext: String): String {
        // v6.3.5: 用源平台名(record.source)而非目标平台(target)，确保跨平台同步时文件名标识数据来源
        val sourceName = TARGET_NAMES[record.source] ?: record.source.shortName
        val time = formatTime(record.startTime)
        val sportType = extractSportType(record.title)
        val sourceId = "${record.source.shortName}${record.id.take(12)}"
        val cleanExt = ext.trimStart('.')
        return "${clean(sourceName)}_${time}_${clean(sportType)}_${clean(sourceId)}.$cleanExt"
    }

    /** 清理文件名非法字符 */
    private fun clean(s: String): String =
        illegalChars.replace(s, "_").trim('_').ifEmpty { "unknown" }

    /** 统一时间格式 yyyyMMdd_HHmmss */
    private fun formatTime(startTime: String): String {
        if (startTime.isBlank()) return "unknown"
        val raw = startTime.trim()
        // .NET 日期格式: /Date(1724584446000)/ 或 /Date(1724584446000+0800)/
        if (raw.startsWith("/Date(") && raw.endsWith(")/")) {
            try {
                val num = raw.removePrefix("/Date(").removeSuffix(")/").substringBefore("+").substringBefore("-")
                val ts = num.toLong()
                val date = Date(if (ts > 1e12) ts else ts * 1000)
                return SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(date)
            } catch (_: Exception) {}
        }
        // 尝试多种格式解析（含带时区偏移的格式，如 2026-08-25T19:14:06+08:00）
        val patterns = listOf(
            "yyyy-MM-dd HH:mm:ss",
            "yyyy-MM-dd'T'HH:mm:ss'Z'",
            "yyyy-MM-dd'T'HH:mm:ss",
            "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
            "yyyy-MM-dd'T'HH:mm:ss.SSS",
            "yyyy-MM-dd'T'HH:mm:ssXXX",
            "yyyy-MM-dd'T'HH:mm:ss.SSSXXX",
            "yyyy-MM-dd'T'HH:mm:ssXXX",
            "yyyy/MM/dd HH:mm:ss",
            "yyyy-MM-dd HH:mm",
            "yyyy-MM-dd",
            "yyyyMMdd HH:mm:ss",
            "yyyyMMdd'T'HH:mm:ss",
            "MMM dd, yyyy HH:mm:ss",
            "EEE MMM dd HH:mm:ss zzz yyyy"
        )
        for (p in patterns) {
            try {
                val fmt = SimpleDateFormat(p, Locale.US).apply { timeZone = TimeZone.getDefault() }
                val date = fmt.parse(raw)
                if (date != null) {
                    val out = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US)
                    return out.format(date)
                }
            } catch (_: Exception) {}
        }
        // 带时区偏移但格式不标准的，如 2026-08-25T19:14:06+0800（无冒号）
        if (raw.contains("+") || raw.contains("-")) {
            try {
                val cleaned = raw.replace(Regex("([+-]\\d{2})(\\d{2})$"), "$1:$2")
                val fmt = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssXXX", Locale.US).apply { timeZone = TimeZone.getDefault() }
                val date = fmt.parse(cleaned)
                if (date != null) {
                    return SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(date)
                }
            } catch (_: Exception) {}
        }
        // 尝试纯数字时间戳（秒/毫秒）
        raw.toLongOrNull()?.let { ts ->
            val date = Date(if (ts > 1e12) ts else ts * 1000)
            return SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(date)
        }
        // 尝试带小数的时间戳
        raw.toDoubleOrNull()?.let { ts ->
            val ms = if (ts > 1e12) ts.toLong() else (ts * 1000).toLong()
            return SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date(ms))
        }
        return "unknown"
    }

    /** 从标题提取运动类型 */
    private fun extractSportType(title: String): String {
        if (title.isBlank()) return "运动"
        for (kw in SPORT_KEYWORDS) {
            if (title.contains(kw)) return kw
        }
        //  fallback：取标题最后一个非空片段
        val parts = title.split(Regex("[\\s,，、]+")).filter { it.isNotBlank() }
        return parts.lastOrNull()?.take(10) ?: "运动"
    }
}

package com.jichi.ob.util

import android.util.Log
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale
import java.util.TimeZone

/**
 * GPX 时间修正工具（v6.3.3）
 * 行者等平台 GPX 中的 <time> 是本地时间但错误标注了 Z(UTC)，
 * 直接上传到 Outbase 会被双重时区转换导致时间偏移（如差16小时）。
 * 修复：将所有 <time> 元素的时间减去时区偏移（默认8小时，UTC+8），
 * 使其成为正确的 UTC 时间。
 */
object GpxTimeFixer {
    private const val TAG = "GpxTimeFixer"

    /** 修正行者 GPX 时间：本地时间标Z → 正确UTC（减8小时） */
    fun fixXingzheGpx(gpxBytes: ByteArray): ByteArray {
        return fixGpxTime(gpxBytes, 8) // UTC+8 减8小时
    }

    /**
     * 修正 GPX 中所有 <time> 元素的时间
     * @param offsetHours 需要减去的小时数（正数=减，负数=加）
     */
    fun fixGpxTime(gpxBytes: ByteArray, offsetHours: Int): ByteArray {
        try {
            val content = String(gpxBytes, Charsets.UTF_8)
            if (!content.contains("<time>", ignoreCase = true)) return gpxBytes

            val sdf = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US).apply {
                timeZone = TimeZone.getTimeZone("UTC")
            }
            val sdfMs = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US).apply {
                timeZone = TimeZone.getTimeZone("UTC")
            }

            var fixedCount = 0
            // 匹配 <time>2026-08-25T19:14:00Z</time> 或带毫秒
            val regex = Regex("""<time>([^<]+)</time>""", RegexOption.IGNORE_CASE)
            val result = regex.replace(content) { match ->
                val timeStr = match.groupValues[1].trim()
                try {
                    val date: Date? = when {
                        timeStr.contains(".") -> sdfMs.parse(timeStr)
                        else -> sdf.parse(timeStr)
                    }
                    if (date != null) {
                        val cal = Calendar.getInstance(TimeZone.getTimeZone("UTC"))
                        cal.time = date
                        cal.add(Calendar.HOUR_OF_DAY, -offsetHours)
                        val newTime = sdf.format(cal.time)
                        fixedCount++
                        "<time>$newTime</time>"
                    } else match.value
                } catch (_: Exception) { match.value }
            }

            if (fixedCount > 0) {
                Log.d(TAG, "修正 GPX 时间: $fixedCount 个时间点减去 ${offsetHours}h")
                return result.toByteArray(Charsets.UTF_8)
            }
        } catch (e: Exception) {
            Log.w(TAG, "GPX 时间修正失败: ${e.message}")
        }
        return gpxBytes
    }
}

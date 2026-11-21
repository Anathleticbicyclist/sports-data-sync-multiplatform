package com.jichi.ob

import com.jichi.ob.util.GpxTimeFixer
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * P1: GpxTimeFixer 单测
 *
 * 覆盖真实语义：fixGpxTime 把所有 <time> 按 offsetHours 平移（正数=往前减，
 * 负数=往后加）；带毫秒的时间解析后按无毫秒格式输出；无 <time> 或无法解析
 * 的 <time> 原样保留；fixXingzheGpx 默认减 8 小时（UTC+8）。
 *
 * 注意：成功平移路径调 android.util.Log，本地单测依赖
 * app/build.gradle 里 testOptions.unitTests.returnDefaultValues = true，
 * 否则 android.jar 桩会抛 RuntimeException("Stub!")。
 */
class GpxTimeFixerTest {

    private fun gpx(vararg times: String): String = buildString {
        append("<gpx><trk><trkseg>")
        for (t in times) append("<trkpt lat=\"39.9\" lon=\"116.4\"><time>$t</time></trkpt>")
        append("</trkseg></trk></gpx>")
    }

    private fun fixed(gpxText: String, offsetHours: Int): String =
        String(GpxTimeFixer.fixGpxTime(gpxText.toByteArray(Charsets.UTF_8), offsetHours), Charsets.UTF_8)

    @Test
    fun `fixGpxTime 减 8 小时`() {
        val out = fixed(gpx("2026-08-25T19:14:00Z"), 8)
        assertTrue("实际输出: $out", out.contains("<time>2026-08-25T11:14:00Z</time>"))
    }

    @Test
    fun `fixGpxTime 跨天回退到前一天`() {
        val out = fixed(gpx("2026-08-25T02:00:00Z"), 8)
        assertTrue("实际输出: $out", out.contains("<time>2026-08-24T18:00:00Z</time>"))
    }

    @Test
    fun `fixGpxTime offset 为 0 时间不变`() {
        val out = fixed(gpx("2026-08-25T19:14:00Z"), 0)
        assertTrue("实际输出: $out", out.contains("<time>2026-08-25T19:14:00Z</time>"))
    }

    @Test
    fun `fixGpxTime 负 offset 向后平移`() {
        // offsetHours 为负表示加时间：-2 即 +2 小时
        val out = fixed(gpx("2026-08-25T19:14:00Z"), -2)
        assertTrue("实际输出: $out", out.contains("<time>2026-08-25T21:14:00Z</time>"))
    }

    @Test
    fun `fixGpxTime 多个 time 点全部平移`() {
        val out = fixed(gpx("2026-08-25T19:14:00Z", "2026-08-25T19:15:30Z"), 8)
        assertTrue("实际输出: $out", out.contains("<time>2026-08-25T11:14:00Z</time>"))
        assertTrue("实际输出: $out", out.contains("<time>2026-08-25T11:15:30Z</time>"))
        assertTrue("旧时间应已消失: $out", !out.contains("19:14:00Z") && !out.contains("19:15:30Z"))
    }

    @Test
    fun `fixGpxTime 带毫秒的时间去掉毫秒并平移`() {
        val out = fixed(gpx("2026-08-25T19:14:00.500Z"), 8)
        assertTrue("实际输出: $out", out.contains("<time>2026-08-25T11:14:00Z</time>"))
    }

    @Test
    fun `fixXingzheGpx 默认减 8 小时`() {
        val bytes = GpxTimeFixer.fixXingzheGpx(gpx("2026-08-25T19:14:00Z").toByteArray(Charsets.UTF_8))
        val out = String(bytes, Charsets.UTF_8)
        assertTrue("实际输出: $out", out.contains("<time>2026-08-25T11:14:00Z</time>"))
    }

    @Test
    fun `无 time 元素原样返回`() {
        val input = "<gpx><trk><trkseg><trkpt lat=\"39.9\" lon=\"116.4\"/></trkseg></trk></gpx>"
            .toByteArray(Charsets.UTF_8)
        assertArrayEquals(input, GpxTimeFixer.fixGpxTime(input, 8))
    }

    @Test
    fun `无法解析的 time 原样保留`() {
        val input = gpx("not-a-time")
        val out = fixed(input, 8)
        assertTrue("实际输出: $out", out.contains("<time>not-a-time</time>"))
    }

    @Test
    fun `空输入原样返回`() {
        assertArrayEquals(ByteArray(0), GpxTimeFixer.fixGpxTime(ByteArray(0), 8))
    }

    @Test
    fun `非 time 内容不受影响`() {
        val input = "<gpx><trk><name>morning ride</name><trkseg>" +
            "<trkpt lat=\"39.9\" lon=\"116.4\"><time>2026-08-25T19:14:00Z</time></trkpt>" +
            "</trkseg></trk></gpx>"
        val out = fixed(input, 8)
        assertTrue("实际输出: $out", out.contains("<name>morning ride</name>"))
        assertTrue("实际输出: $out", out.contains("<time>2026-08-25T11:14:00Z</time>"))
    }
}

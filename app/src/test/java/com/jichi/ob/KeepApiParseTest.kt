package com.jichi.ob

import com.jichi.ob.api.KeepApi
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * v8.1.3: Keep 轨迹 JSON 解析兼容性单测
 * 覆盖社区实际返回的 lat/lon 字段 + JSONObject 包裹两种结构
 */
class KeepApiParseTest {

    private val api = KeepApi()

    /** 反射调用私有 parsePoints */
    private fun parse(json: String): List<DoubleArray> {
        val m = KeepApi::class.java.getDeclaredMethod("parsePoints", String::class.java)
        m.isAccessible = true
        @Suppress("UNCHECKED_CAST")
        return m.invoke(api, json) as List<DoubleArray>
    }

    /** 反射调用私有 buildGpx，校验时间换算 */
    private fun buildGpx(points: List<DoubleArray>, startMs: Long, sport: String): String {
        val m = KeepApi::class.java.getDeclaredMethod("buildGpx", List::class.java, Long::class.javaPrimitiveType, String::class.java)
        m.isAccessible = true
        return String(m.invoke(api, points, startMs, sport) as ByteArray, Charsets.UTF_8)
    }

    @Test
    fun `parsePoints 兼容 lat lon 字段数组`() {
        // 社区 Keep rawDataURL 解压后格式：元素含 lat/lon/timestamp/altitude
        val json = """[{"lat":39.908,"lon":116.397,"timestamp":0,"altitude":43.2},
                       {"lat":39.909,"lon":116.398,"timestamp":65,"altitude":44.1},
                       {"lat":39.910,"lon":116.399,"timestamp":130,"altitude":45.0}]"""
        val pts = parse(json)
        assertEquals(3, pts.size)
        assertEquals(39.908, pts[0][0], 1e-6)
        assertEquals(116.397, pts[0][1], 1e-6)
        assertEquals(0.0, pts[0][2], 1e-6)
        assertEquals(65.0, pts[1][2], 1e-6)
        assertEquals(44.1, pts[1][3], 1e-6)
    }

    @Test
    fun `parsePoints 兼容 latitude longitude 旧字段`() {
        val json = """[{"latitude":31.2,"longitude":121.5,"unixTimestamp":1750000000000,"altitude":10.0}]"""
        val pts = parse(json)
        assertEquals(1, pts.size)
        assertEquals(31.2, pts[0][0], 1e-6)
        assertEquals(1750000000000.0, pts[0][2], 1e-6)
    }

    @Test
    fun `parsePoints 兼容 JSONObject 包裹 points`() {
        val json = """{"points":[{"lat":30.1,"lon":120.2,"timestamp":10},{"lat":30.2,"lon":120.3,"timestamp":20}]}"""
        val pts = parse(json)
        assertEquals(2, pts.size)
        assertEquals(30.2, pts[1][0], 1e-6)
    }

    @Test
    fun `buildGpx 相对秒换算为 startTime 加真实毫秒`() {
        val startMs = 1743552000000L // 2025-04-02 00:00:00 UTC
        // 相对秒 5400 = 1.5 小时 → 不应被 ×100 压缩成 9 分钟
        val pts = listOf(
            doubleArrayOf(37.8, 112.5, 0.0, 800.0),
            doubleArrayOf(37.9, 112.6, 5400.0, 810.0),
        )
        val gpx = buildGpx(pts, startMs, "cycling")
        // ts=0 首点不写 time（设计如此）；5400s = 1.5h → 01:30:00
        assertTrue("实际输出:\n$gpx", gpx.contains("<time>2025-04-02T01:30:00Z</time>"))
        // 不得再出现 ×100 压缩后的 09:00（错误时间）
        assertTrue("时间被错误压缩:\n$gpx", !gpx.contains("2025-04-02T00:09:00Z"))
    }

    @Test
    fun `buildGpx 绝对毫秒直接使用`() {
        val pts = listOf(doubleArrayOf(37.8, 112.5, 1743552000000.0, 800.0))
        val gpx = buildGpx(pts, 0L, "running")
        assertTrue(gpx.contains("<time>2025-04-02T00:00:00Z</time>"))
    }
}

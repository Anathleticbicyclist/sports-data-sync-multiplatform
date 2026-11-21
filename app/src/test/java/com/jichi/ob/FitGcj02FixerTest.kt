package com.jichi.ob

import com.jichi.ob.util.FitGcj02Fixer
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.abs

/**
 * P1: FitGcj02Fixer 单测（纯函数，无 android.util.Log，可直接在 JVM 单测跑）
 *
 * 覆盖真实语义：gcj02ToWgs84 对中国境内坐标做偏移修正（北京/上海实测偏移
 * 约 0.001~0.006 度，方向因地而异，只断言量级），境外坐标与 NaN 原样返回；
 * fix() 对非 FIT/非法头返回 null，对境外 record 不修改，对境内 record
 * 改写 lat/lon 半圆值。
 */
class FitGcj02FixerTest {

    // ---- gcj02ToWgs84 ----

    @Test
    fun `境外坐标近似不变_纽约`() {
        val (lat, lon) = FitGcj02Fixer.gcj02ToWgs84(40.7128, -74.0060)
        assertEquals(40.7128, lat, 0.0)
        assertEquals(-74.0060, lon, 0.0)
    }

    @Test
    fun `境外坐标近似不变_伦敦`() {
        val (lat, lon) = FitGcj02Fixer.gcj02ToWgs84(51.5074, -0.1278)
        assertEquals(51.5074, lat, 0.0)
        assertEquals(-0.1278, lon, 0.0)
    }

    @Test
    fun `境外坐标近似不变_悉尼`() {
        val (lat, lon) = FitGcj02Fixer.gcj02ToWgs84(-33.8688, 151.2093)
        assertEquals(-33.8688, lat, 0.0)
        assertEquals(151.2093, lon, 0.0)
    }

    @Test
    fun `中国范围外经度不修正`() {
        // 经度 140 超出中国范围上限 137.8347
        val (lat, lon) = FitGcj02Fixer.gcj02ToWgs84(39.9, 140.0)
        assertEquals(39.9, lat, 0.0)
        assertEquals(140.0, lon, 0.0)
    }

    @Test
    fun `北京 GCJ 坐标有偏移修正`() {
        val (lat, lon) = FitGcj02Fixer.gcj02ToWgs84(39.908, 116.397)
        // 实测：lat -0.0014 度，lon -0.0062 度；量级应在 1e-4~0.01 度之间
        assertTrue("lat 偏移 ${lat - 39.908} 超出预期量级", abs(lat - 39.908) in 1e-4..0.01)
        assertTrue("lon 偏移 ${lon - 116.397} 超出预期量级", abs(lon - 116.397) in 1e-4..0.01)
    }

    @Test
    fun `上海 GCJ 坐标有偏移修正`() {
        val (lat, lon) = FitGcj02Fixer.gcj02ToWgs84(31.2304, 121.4737)
        // 实测：lat +0.0019 度，lon -0.0045 度
        assertTrue("lat 偏移 ${lat - 31.2304} 超出预期量级", abs(lat - 31.2304) in 1e-4..0.01)
        assertTrue("lon 偏移 ${lon - 121.4737} 超出预期量级", abs(lon - 121.4737) in 1e-4..0.01)
    }

    @Test
    fun `NaN 输入原样返回`() {
        val (lat, lon) = FitGcj02Fixer.gcj02ToWgs84(Double.NaN, Double.NaN)
        assertTrue(lat.isNaN())
        assertTrue(lon.isNaN())
    }

    // ---- fix()：最小 FIT 构造与解析 ----

    private fun degreesToSemicircles(value: Double): Int =
        Math.round(value * 2147483648.0 / 180.0).toInt()

    private fun semicirclesToDegrees(value: Int): Double = value * (180.0 / 2147483648.0)

    /** 构造最小 FIT：14 字节头 + 1 条 record 定义（field 0/1 为 lat/lon）+ 1 条数据 + CRC。 */
    private fun buildRecordFit(latDeg: Double, lonDeg: Double): ByteArray {
        return buildFitWithFields(
            20, listOf(0 to degreesToSemicircles(latDeg), 1 to degreesToSemicircles(lonDeg))
        )
    }

    /** 通用最小 FIT：字段均为 4 字节，值为给定的 int32。 */
    private fun buildFitWithFields(globalMesgNum: Int, fields: List<Pair<Int, Int>>): ByteArray {
        val defLen = 6 + fields.size * 3
        val dataLen = 1 + fields.size * 4
        val dataSize = defLen + dataLen
        val out = ByteBuffer.allocate(14 + dataSize + 2).order(ByteOrder.LITTLE_ENDIAN)
        out.put(14.toByte())
        out.put(0x10.toByte())
        out.putShort(0x2000.toShort())
        out.putInt(dataSize)
        out.put(".FIT".toByteArray(Charsets.US_ASCII))
        out.putShort(0)
        out.put(0x40.toByte())
        out.put(0)
        out.put(0)
        out.putShort(globalMesgNum.toShort())
        out.put(fields.size.toByte())
        for ((num, _) in fields) {
            out.put(num.toByte())
            out.put(4.toByte())
            out.put(0x86.toByte())
        }
        out.put(0)
        for ((_, value) in fields) out.putInt(value)
        out.putShort(0)
        return out.array()
    }

    /** 从 record 数据消息读回 lat/lon（度）。 */
    private fun readRecordLatLon(data: ByteArray, fieldCount: Int): Pair<Double, Double> {
        val base = 14 + (6 + fieldCount * 3) + 1
        val latRaw = ByteBuffer.wrap(data, base, 4).order(ByteOrder.LITTLE_ENDIAN).int
        val lonRaw = ByteBuffer.wrap(data, base + 4, 4).order(ByteOrder.LITTLE_ENDIAN).int
        return semicirclesToDegrees(latRaw) to semicirclesToDegrees(lonRaw)
    }

    @Test
    fun `fix 非 FIT 返回 null`() {
        assertNull(FitGcj02Fixer.fix("this is not a fit file".toByteArray(Charsets.UTF_8)))
        assertNull(FitGcj02Fixer.fix(ByteArray(0)))
        assertNull(FitGcj02Fixer.fix(ByteArray(10)))
    }

    @Test
    fun `fix headerSize 非法返回 null`() {
        val input = buildRecordFit(39.908, 116.397).copyOf()
        input[0] = 16 // 合法值只认 12 或 14
        assertNull(FitGcj02Fixer.fix(input))
    }

    @Test
    fun `fix 境外 record 不修改返回原内容`() {
        val input = buildRecordFit(51.5074, -0.1278) // 伦敦
        val result = FitGcj02Fixer.fix(input)
        assertNotNull(result)
        assertArrayEquals(input, result)
    }

    @Test
    fun `fix 北京 record 坐标被修正`() {
        val input = buildRecordFit(39.908, 116.397)
        val result = FitGcj02Fixer.fix(input)
        assertNotNull(result)
        result!!
        assertEquals("长度不变", input.size, result.size)
        val (fixedLat, fixedLon) = readRecordLatLon(result, 2)
        // 与 gcj02ToWgs84 同算法：lat 偏移约 -0.0014 度，lon 约 -0.0062 度
        assertTrue("lat 偏移 ${fixedLat - 39.908} 超出预期量级", abs(fixedLat - 39.908) in 1e-4..0.01)
        assertTrue("lon 偏移 ${fixedLon - 116.397} 超出预期量级", abs(fixedLon - 116.397) in 1e-4..0.01)
        val (origLat, origLon) = readRecordLatLon(input, 2)
        assertTrue("输入本身不被修改", abs(origLat - 39.908) < 1e-6 && abs(origLon - 116.397) < 1e-6)
    }

    @Test
    fun `fix 无经纬度字段的 record 不修改`() {
        // 只有 timestamp 字段（253），patchRecord 因缺 lat/lon 直接返回 false
        val input = buildFitWithFields(20, listOf(253 to 1_000_000_000))
        val result = FitGcj02Fixer.fix(input)
        assertNotNull(result)
        assertArrayEquals(input, result)
    }
}

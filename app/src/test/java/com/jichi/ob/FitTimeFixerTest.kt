package com.jichi.ob

import com.jichi.ob.util.FitTimeFixer
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * P1: FitTimeFixer.fixXingzheFitTime 单测
 *
 * 覆盖真实语义：行者 FIT 的时间戳字段减 8 小时（28800 秒）；值为 0 或减后
 * <= 0 的字段不动；非 FIT 输入原样返回；输入数组本身不被修改。
 *
 * 注意：FitTimeFixer 各路径都调 android.util.Log，本地单测依赖
 * app/build.gradle 里 testOptions.unitTests.returnDefaultValues = true，
 * 否则 android.jar 桩会抛 RuntimeException("Stub!")。
 */
class FitTimeFixerTest {

    /** 构造最小 FIT：14 字节头 + 1 条定义消息 + 1 条数据消息 + 2 字节 CRC。 */
    private fun buildFit(globalMesgNum: Int, fields: List<Pair<Int, Long>>): ByteArray {
        val defLen = 6 + fields.size * 3
        val dataLen = 1 + fields.size * 4
        val dataSize = defLen + dataLen
        val out = ByteBuffer.allocate(14 + dataSize + 2).order(ByteOrder.LITTLE_ENDIAN)
        out.put(14.toByte()) // headerSize
        out.put(0x10.toByte()) // protocol version
        out.putShort(0x2000.toShort()) // profile version
        out.putInt(dataSize)
        out.put(".FIT".toByteArray(Charsets.US_ASCII))
        out.putShort(0) // header CRC
        // 定义消息：local 0，小端
        out.put(0x40.toByte())
        out.put(0) // reserved
        out.put(0) // architecture: 0 = little-endian
        out.putShort(globalMesgNum.toShort())
        out.put(fields.size.toByte())
        for ((num, _) in fields) {
            out.put(num.toByte())
            out.put(4.toByte()) // size
            out.put(0x86.toByte()) // base type uint32
        }
        // 数据消息：local 0
        out.put(0)
        for ((_, value) in fields) out.putInt(value.toInt())
        out.putShort(0) // body CRC（FitTimeFixer 不校验也不重算 CRC）
        return out.array()
    }

    /** 第 index 个 4 字节字段在文件中的偏移。 */
    private fun fieldPos(fieldCount: Int, index: Int): Int = 14 + (6 + fieldCount * 3) + 1 + index * 4

    private fun readU32LE(data: ByteArray, pos: Int): Long =
        ByteBuffer.wrap(data, pos, 4).order(ByteOrder.LITTLE_ENDIAN).int.toLong() and 0xFFFFFFFFL

    @Test
    fun `record timestamp 减 8 小时`() {
        val input = buildFit(20, listOf(253 to 1_000_000_000L))
        val result = FitTimeFixer.fixXingzheFitTime(input)
        assertEquals(30, result.size)
        assertEquals(1_000_000_000L - 28_800L, readU32LE(result, fieldPos(1, 0)))
    }

    @Test
    fun `timestamp 为 0 不修改`() {
        val input = buildFit(20, listOf(253 to 0L))
        val result = FitTimeFixer.fixXingzheFitTime(input)
        assertEquals(0L, readU32LE(result, fieldPos(1, 0)))
    }

    @Test
    fun `timestamp 等于 28800 减后为 0 不修改`() {
        val input = buildFit(20, listOf(253 to 28_800L))
        val result = FitTimeFixer.fixXingzheFitTime(input)
        assertEquals(28_800L, readU32LE(result, fieldPos(1, 0)))
    }

    @Test
    fun `timestamp 小于 8 小时不修改`() {
        val input = buildFit(20, listOf(253 to 10_000L))
        val result = FitTimeFixer.fixXingzheFitTime(input)
        assertEquals(10_000L, readU32LE(result, fieldPos(1, 0)))
    }

    @Test
    fun `file_id 的 time_created 字段同样减 8 小时`() {
        // 全局消息 0：field 4 是 time_created；253 是 timestamp，两者都应修正
        val input = buildFit(0, listOf(4 to 1_000_000_000L, 253 to 1_000_000_000L))
        val result = FitTimeFixer.fixXingzheFitTime(input)
        assertEquals(999_971_200L, readU32LE(result, fieldPos(2, 0)))
        assertEquals(999_971_200L, readU32LE(result, fieldPos(2, 1)))
    }

    @Test
    fun `session 的 start_time 字段减 8 小时`() {
        // 全局消息 18：field 2 是 start_time；253 是 timestamp
        val input = buildFit(18, listOf(2 to 1_000_000_000L, 253 to 1_000_000_000L))
        val result = FitTimeFixer.fixXingzheFitTime(input)
        assertEquals(999_971_200L, readU32LE(result, fieldPos(2, 0)))
        assertEquals(999_971_200L, readU32LE(result, fieldPos(2, 1)))
    }

    @Test
    fun `非时间字段不被修改`() {
        // record 消息 field 0 是纬度半圆值，不在修正之列
        val input = buildFit(20, listOf(0 to 123_456_789L, 253 to 1_000_000_000L))
        val result = FitTimeFixer.fixXingzheFitTime(input)
        assertEquals(123_456_789L, readU32LE(result, fieldPos(2, 0)))
        assertEquals(999_971_200L, readU32LE(result, fieldPos(2, 1)))
    }

    @Test
    fun `输入数组本身不被修改`() {
        val input = buildFit(20, listOf(253 to 1_000_000_000L))
        val result = FitTimeFixer.fixXingzheFitTime(input)
        assertEquals(1_000_000_000L, readU32LE(input, fieldPos(1, 0)))
        assertEquals(999_971_200L, readU32LE(result, fieldPos(1, 0)))
        assertTrue("结果长度与输入一致", result.size == input.size)
    }

    @Test
    fun `非 FIT 输入原样返回`() {
        val text = "this is not a fit file".toByteArray(Charsets.UTF_8)
        assertArrayEquals(text, FitTimeFixer.fixXingzheFitTime(text))
        assertArrayEquals(ByteArray(0), FitTimeFixer.fixXingzheFitTime(ByteArray(0)))
        // 短于 14 字节的 FIT 头也不认
        val short = byteArrayOf(14, 0x10, 0, 0, 0, 0, 0, 0, '.'.code.toByte(), 'F'.code.toByte())
        assertArrayEquals(short, FitTimeFixer.fixXingzheFitTime(short))
    }

    @Test
    fun `只有 FIT 头的文件不崩溃且内容不变`() {
        val headerOnly = ByteBuffer.allocate(16).order(ByteOrder.LITTLE_ENDIAN).apply {
            put(14.toByte())
            put(0x10.toByte())
            putShort(0x2000.toShort())
            putInt(0) // dataSize = 0
            put(".FIT".toByteArray(Charsets.US_ASCII))
            putShort(0)
            putShort(0)
        }.array()
        assertArrayEquals(headerOnly, FitTimeFixer.fixXingzheFitTime(headerOnly))
    }
}

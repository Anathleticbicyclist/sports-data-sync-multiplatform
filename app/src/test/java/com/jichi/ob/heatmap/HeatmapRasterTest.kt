package com.jichi.ob.heatmap

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * HeatmapRaster 的纯 JVM 单元测试（JUnit4，无 Android 依赖）。
 *
 * 用同一条直线轨迹验证线宽修复：旧默认（半径 3 + 模糊 3 次）比
 * 新默认（半径 1 + 模糊 1 次）粗得多，且不模糊时线宽恰好等于 2r+1。
 * 网格 100×100，轨迹为 y=50、x=10..89 的水平直线（每 1px 一个点，
 * 与真实轨迹在投影后相邻点约 1px 的密度相当）。
 *
 * 线宽测量方法：固定横断面法（见 HeatmapRaster.measureLineWidth），
 * 取轨迹中点、沿垂直于轨迹方向的扫描线统计连续高于阈值的像素数。
 * 不用全图行/列最大连续段——那会量到轨迹本身的长度而非线宽。
 */
class HeatmapRasterTest {

    private val width = 100
    private val height = 100

    /** 水平直线轨迹：像素坐标，DoubleArray[0]=x，DoubleArray[1]=y。 */
    private fun horizontalLine(y: Int = 50, xFrom: Int = 10, xTo: Int = 89): List<DoubleArray> =
        (xFrom..xTo).map { x -> doubleArrayOf(x.toDouble(), y.toDouble()) }

    /** 垂直直线轨迹：像素坐标。 */
    private fun verticalLine(x: Int = 50, yFrom: Int = 10, yTo: Int = 89): List<DoubleArray> =
        (yFrom..yTo).map { y -> doubleArrayOf(x.toDouble(), y.toDouble()) }

    /**
     * 对给定轨迹跑完 splat + blur 全流程，再用固定横断面法量出
     * 轨迹中点处垂直于轨迹的线宽（像素数）。
     */
    private fun lineWidth(points: List<DoubleArray>, radius: Int, blurPasses: Int): Int {
        val counts = HeatmapRaster.splat(points, width, height, radius)
        val blurred = HeatmapRaster.blur(HeatmapRaster.toFloat(counts), width, height, blurPasses)
        return HeatmapRaster.measureLineWidth(blurred, width, height, points)
    }

    /**
     * (a) 同一直线轨迹：新默认 radius=1 blur=0 的线宽 <= 4px，
     * 且明显小于旧默认 radius=3 blur=3。
     * 横断面实测：新默认 3px（= 2*1+1，不模糊），旧默认 13px
     * （7px 方块 + 3 次模糊每侧各扩 3px）。
     */
    @Test
    fun thinLineIsThinnerThanOldDefault() {
        val thin = lineWidth(horizontalLine(), radius = 1, blurPasses = 0)
        val oldDefault = lineWidth(horizontalLine(), radius = 3, blurPasses = 3)
        assertEquals("radius=1 blur=0 的横断面线宽应为 2*1+1=3px", 3, thin)
        assertEquals("radius=3 blur=3 的横断面线宽应为 7+3*2=13px", 13, oldDefault)
        assertTrue("新默认线宽 ${thin}px 应 <= 4px", thin <= 4)
        assertTrue("新默认线宽 ${thin}px 应明显小于旧默认 ${oldDefault}px", thin < oldDefault)
    }

    /**
     * (a 补充) 新默认档位 2（radius=1 blur=1）也明显细于旧默认。
     * 横断面实测 5px（3px 方块 + 1 次模糊每侧各扩 1px）。
     */
    @Test
    fun newDefaultLevel2IsThinnerThanOldDefault() {
        val level2 = lineWidth(horizontalLine(), radius = 1, blurPasses = 1)
        val oldDefault = lineWidth(horizontalLine(), radius = 3, blurPasses = 3)
        assertEquals("radius=1 blur=1 的横断面线宽应为 3+2=5px", 5, level2)
        assertTrue("2 档线宽 ${level2}px 应比旧默认 ${oldDefault}px 细", level2 < oldDefault)
    }

    /**
     * (b) blur=0 时横断面线宽 == 2*radius+1（方形落点，不模糊不扩散）。
     * 水平与垂直轨迹都测，半径 0~3。
     */
    @Test
    fun blurZeroWidthEqualsTwoRadiusPlusOne() {
        for (radius in 0..3) {
            assertEquals(
                "水平线 radius=$radius blur=0",
                2 * radius + 1,
                lineWidth(horizontalLine(), radius = radius, blurPasses = 0)
            )
            assertEquals(
                "垂直线 radius=$radius blur=0",
                2 * radius + 1,
                lineWidth(verticalLine(), radius = radius, blurPasses = 0)
            )
        }
    }

    /**
     * (c) 空轨迹 / 单点不崩溃：
     * 空轨迹 splat 全零、模糊后仍全零、横断面线宽为 0；
     * 单点 radius=1 blur=0 线宽为 3，radius=0 时为 1。
     */
    @Test
    fun emptyTrackAndSinglePointDoNotCrash() {
        val emptyPoints = emptyList<DoubleArray>()
        val emptyCounts = HeatmapRaster.splat(emptyPoints, width, height, radius = 1)
        assertEquals(width * height, emptyCounts.size)
        assertTrue("空轨迹的计数网格应全为 0", emptyCounts.all { it == 0.toShort() })
        val emptyBlurred = HeatmapRaster.blur(HeatmapRaster.toFloat(emptyCounts), width, height, 3)
        assertEquals(
            "空轨迹模糊后横断面线宽应为 0",
            0,
            HeatmapRaster.measureLineWidth(emptyBlurred, width, height, emptyPoints)
        )
        assertEquals(
            "空轨迹直接量横断面线宽应为 0",
            0,
            HeatmapRaster.measureLineWidth(emptyCounts, width, height, emptyPoints)
        )

        val singlePoint = listOf(doubleArrayOf(50.0, 50.0))
        assertEquals("单点 radius=1 blur=0 线宽应为 3", 3, lineWidth(singlePoint, radius = 1, blurPasses = 0))
        assertEquals("单点 radius=0 blur=0 线宽应为 1", 1, lineWidth(singlePoint, radius = 0, blurPasses = 0))
        assertEquals("单点 radius=1 blur=2 线宽应为 3+2*2=7", 7, lineWidth(singlePoint, radius = 1, blurPasses = 2))
    }
}

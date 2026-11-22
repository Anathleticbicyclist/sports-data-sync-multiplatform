package com.jichi.ob.heatmap

/**
 * 来源：为本次改写新抽取的纯 Kotlin 对象（无 Android 依赖），对应反编译
 * `HeatmapEngine.java` 中原来内联在 `generate()` 里的 splat + 3x3 模糊逻辑。
 *
 * 抽取原因：线宽修复需要把“点半径 radiusPx”和“模糊次数 blurPasses”拆开，
 * 且修复效果要在纯 JVM 单元测试里可验证（见 HeatmapRasterTest）。
 *
 * 约定：
 * - 网格一律按行优先展平为一维数组，下标 = y * width + x；
 * - [splat] 的入参点是**像素坐标**（调用方已把经纬度按当前 zoom 投影好），
 *   DoubleArray[0] = x（列），DoubleArray[1] = y（行）；
 * - splat 沿用原逻辑的方形落点（(2r+1)×(2r+1) 方块），而非圆形，
 *   以保持与旧版热力图相同的计数分布；单格计数上限 30000（原逻辑同）。
 */
object HeatmapRaster {

    /** 单格计数的上限，与原 HeatmapEngine.generate 中的 `s < 30000` 一致。 */
    const val MAX_COUNT: Short = 30000

    /**
     * 把像素点按方形落点累加到网格上。
     *
     * @param points 像素坐标点列，DoubleArray[0]=x，DoubleArray[1]=y
     * @param radius 落点半径（像素），即原逻辑的 `max(1, f.toInt())`；
     *   半径 r 的点会点亮 (2r+1)×(2r+1) 的方块
     * @return 行优先展平的 ShortArray，长度 width * height
     */
    fun splat(points: List<DoubleArray>, width: Int, height: Int, radius: Int): ShortArray {
        val grid = ShortArray(width * height)
        if (width <= 0 || height <= 0 || points.isEmpty()) return grid
        val r = radius.coerceAtLeast(0)
        for (point in points) {
            val cx = Math.round(point[0]).toInt()
            val cy = Math.round(point[1]).toInt()
            val yMin = maxOf(cy - r, 0)
            val yMax = minOf(cy + r, height - 1)
            val xMin = maxOf(cx - r, 0)
            val xMax = minOf(cx + r, width - 1)
            for (y in yMin..yMax) {
                val rowOffset = y * width
                for (x in xMin..xMax) {
                    val index = rowOffset + x
                    val current = grid[index]
                    if (current < MAX_COUNT) {
                        grid[index] = (current + 1).toShort()
                    }
                }
            }
        }
        return grid
    }

    /** 把 Short 计数网格转为 Float 网格（供归一化 / 模糊使用）。 */
    fun toFloat(grid: ShortArray): FloatArray =
        FloatArray(grid.size) { grid[it].toFloat() }

    /**
     * 3x3 均值模糊（box blur），与原 HeatmapEngine.blur3 完全一致：
     * 每遍用上一遍的结果算新值，边缘按夹取后的邻域取平均（角上 4 格、边上 6 格）。
     *
     * @param passes 模糊遍数；<= 0 时返回原网格的拷贝，不做任何扩散。
     *   每多一遍，有效半径约 +1px——这就是旧逻辑“线粗”的另一半来源。
     * @return 新数组，入参 grid 不被修改。
     */
    fun blur(grid: FloatArray, width: Int, height: Int, passes: Int): FloatArray {
        if (width <= 0 || height <= 0 || passes <= 0) return grid.copyOf()
        var current = grid.copyOf()
        repeat(passes) {
            val next = FloatArray(width * height)
            for (y in 0 until height) {
                val yMin = maxOf(y - 1, 0)
                val yMax = minOf(y + 1, height - 1)
                for (x in 0 until width) {
                    val xMin = maxOf(x - 1, 0)
                    val xMax = minOf(x + 1, width - 1)
                    var sum = 0f
                    var count = 0
                    for (ny in yMin..yMax) {
                        val rowOffset = ny * width
                        for (nx in xMin..xMax) {
                            sum += current[rowOffset + nx]
                            count++
                        }
                    }
                    next[y * width + x] = sum / count
                }
            }
            current = next
        }
        return current
    }

    /**
     * 测量轨迹在其中点处的线宽（像素数）——固定横断面法。
     *
     * 做法：取 [points] 中点处的像素坐标为横断面中心，以中点前后
     * 各 5 个点连成的方向为轨迹方向，沿其垂直方向向两侧逐像素
     * 采样，统计包含中心在内、高于 [threshold] 的连续像素数。
     *
     * 为什么不用“全图行/列最大连续段”：对一条长直线，全图扫描会量到
     * 轨迹本身的长度（另一路实测返回 162/168，真实线宽只有 3/13px）；
     * 包围盒推断方向的版本对斜线/折线同样不可靠。固定横断面只量
     * 中点处垂直于轨迹的一条线，量到的就是线宽，与轨迹长度无关。
     * 轴向直线（水平/垂直）下该值是精确的；斜线下为最近邻采样的近似值。
     *
     * @param points 轨迹点列（像素坐标，DoubleArray[0]=x，[1]=y，
     *   与传给 [splat] 的是同一坐标系）；空列返回 0。
     * @param threshold 大于该值才算“有颜色”；默认 0f，即任何正值都算。
     *   注意模糊会把能量扩散到相邻像素（值很小但 > 0），所以用默认阈值
     *   量到的就是模糊后的完整扩散宽度。
     * @return 中点横断面的线宽；空网格/空轨迹/中点越界或中心像素
     *   不高于阈值时返回 0。
     */
    fun measureLineWidth(
        grid: FloatArray,
        width: Int,
        height: Int,
        points: List<DoubleArray>,
        threshold: Float = 0f
    ): Int {
        if (width <= 0 || height <= 0 || grid.isEmpty() || points.isEmpty()) return 0
        val midIndex = points.size / 2
        val center = points[midIndex]
        val centerX = center[0]
        val centerY = center[1]
        val centerXi = Math.round(centerX).toInt()
        val centerYi = Math.round(centerY).toInt()
        if (centerXi !in 0 until width || centerYi !in 0 until height) return 0
        if (grid[centerYi * width + centerXi] <= threshold) return 0

        // 轨迹方向：中点前后各 5 个点的连线；点列退化（单点/重合）时
        // 方向无定义，横断面退化为水平扫描（方形落点下各方向线宽相同）。
        val span = 5
        val before = points[maxOf(0, midIndex - span)]
        val after = points[minOf(points.size - 1, midIndex + span)]
        val dirX = after[0] - before[0]
        val dirY = after[1] - before[1]
        val dirLength = Math.sqrt(dirX * dirX + dirY * dirY)
        val perpX: Double
        val perpY: Double
        if (dirLength < 1e-9) {
            perpX = 1.0
            perpY = 0.0
        } else {
            perpX = -dirY / dirLength
            perpY = dirX / dirLength
        }

        var count = 1 // 中心像素本身
        count += countRun(grid, width, height, centerX, centerY, perpX, perpY, threshold, direction = 1)
        count += countRun(grid, width, height, centerX, centerY, perpX, perpY, threshold, direction = -1)
        return count
    }

    /** 沿横断面方向从中心向一侧逐像素采样，返回高于阈值的连续像素数。 */
    private fun countRun(
        grid: FloatArray,
        width: Int,
        height: Int,
        centerX: Double,
        centerY: Double,
        perpX: Double,
        perpY: Double,
        threshold: Float,
        direction: Int
    ): Int {
        var run = 0
        var step = 1
        while (true) {
            val x = Math.round(centerX + direction * step * perpX).toInt()
            val y = Math.round(centerY + direction * step * perpY).toInt()
            if (x !in 0 until width || y !in 0 until height) break
            if (grid[y * width + x] <= threshold) break
            run++
            step++
        }
        return run
    }

    /** [measureLineWidth] 的 ShortArray 版本，阈值默认 0（任何正计数都算）。 */
    fun measureLineWidth(
        grid: ShortArray,
        width: Int,
        height: Int,
        points: List<DoubleArray>,
        threshold: Int = 0
    ): Int = measureLineWidth(toFloat(grid), width, height, points, threshold.toFloat())
}

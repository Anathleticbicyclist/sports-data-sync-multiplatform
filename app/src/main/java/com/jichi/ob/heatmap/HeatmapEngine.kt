package com.jichi.ob.heatmap

import android.graphics.Bitmap
import android.graphics.Color
import io.jenetics.jpx.Degrees
import kotlin.math.cos
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt
import kotlin.math.roundToLong

/**
 * 来源：jadx 反编译 `HeatmapEngine.java`（classes2.dex）改写为地道 Kotlin。
 * 原始公开 API 与行为保持不变：瓦片投影公式、tileBounds 的 64 瓦片上限、
 * 25,165,824 像素上限、红→黄→白配色、0.03 透明阈值均原样保留。
 *
 * 已知问题（反编译原文如此，改写时原样保留，仅在此注明）：
 * 1. jadx 对本文件报 “Multi-variable type inference failed / Type inference
 *    failed for: r13v13, types: [short]”——原 `short[][]` 计数网格在反编译
 *    中类型推断失败。改写时改用行优先展平的 [ShortArray]（见
 *    [HeatmapRaster.splat]），并用显式的 `Short` / `toShort()` 处理，
 *    不再依赖 jadx 推断出的 short 类型，警告随之消除。
 * 2. `midLat()` 以 `Degrees.MIN_VALUE` 作为累加初值（反编译原文如此），
 *    平均纬度因此带有 -MIN_VALUE/点数 的偏移；此处原样保留，不擅自修正。
 * 3. 旧签名第 5 个参数（原名 z）在反编译的方法体内从未被使用；新签名
 *    按任务要求命名为 `useCache`，同样保留仅作兼容，不参与计算。
 *
 * 线粗修复（本次核心改动）：
 * 旧逻辑用同一个 Float 参数 f 同时控制两件事：splat 半径 = max(1, f.toInt())，
 * 模糊次数 = max(1, f.roundToInt())。默认 f=3 时半径 3px（每点 7×7 方块）
 * 再加 3 遍 3×3 模糊，每遍约扩 1px，有效半宽约 6px、全宽约 13px；
 * 在 zoom 13（约 19m/px）时线宽约 110m+，看着粗；且 f 最小为 1，
 * 再细也细不下去。新签名把两者拆成 [radiusPx] 与 [blurPasses] 两个
 * 独立参数，见 [generate] 与线宽档位表（HeatmapActivity.lineWidthToRadiusBlur）。
 */
object HeatmapEngine {

    /** 像素总数上限，超过则返回 null（原逻辑：i9 * i10 > 25165824）。 */
    private const val MAX_PIXELS = 25_165_824

    /** 单格计数上限，与原逻辑 `s < 30000` 一致，见 [HeatmapRaster.MAX_COUNT]。 */
    private const val MAX_COUNT = 30000

    /** 经度转 Web 墨卡托 x（像素坐标，zoom 层级下）。 */
    @JvmStatic
    fun deg2x(lon: Double, zoom: Int): Double {
        val scale = (1 shl zoom).toDouble()
        return ((lon + 180.0) / 360.0) * 256.0 * scale
    }

    /** 纬度转 Web 墨卡托 y（像素坐标，zoom 层级下）。 */
    @JvmStatic
    fun deg2y(lat: Double, zoom: Int): Double {
        val sinLat = Math.sin(Math.toRadians(lat))
        val mercator = ((1.0 - (Math.log((sinLat + 1.0) / (1.0 - sinLat)) / (2.0 * Math.PI))) / 2.0) * 256.0
        return mercator * (1 shl zoom).toDouble()
    }

    /**
     * 按轨迹经纬度范围挑选 zoom：从 19 往下找第一个使所需瓦片数 <= [maxTiles]
     * 的层级。返回 intArrayOf(zoom, xMin, xMax, yMin, yMax)；点列为空返回 null；
     * 19 层都不满足时返回 zoom 0 的全图 bounds（原逻辑同）。
     * 点格式：DoubleArray[0]=纬度 lat，DoubleArray[1]=经度 lon。
     */
    @JvmStatic
    fun tileBounds(points: List<DoubleArray>, maxTiles: Int): IntArray? {
        var minLat = 90.0
        var maxLat = -90.0
        var minLon = 180.0
        var maxLon = -180.0
        for (point in points) {
            val lat = point[0]
            if (lat < minLat) minLat = lat
            if (lat > maxLat) maxLat = lat
            val lon = point[1]
            if (lon < minLon) minLon = lon
            if (lon > maxLon) maxLon = lon
        }
        if (minLat > maxLat) return null
        for (zoom in 19 downTo 1) {
            val xMin = Math.floor(deg2x(minLon, zoom) / 256.0).toInt()
            val xMax = Math.floor(deg2x(maxLon, zoom) / 256.0).toInt()
            val yMin = Math.floor(deg2y(maxLat, zoom) / 256.0).toInt()
            val yMax = Math.floor(deg2y(minLat, zoom) / 256.0).toInt()
            if ((xMax - xMin + 1) * (yMax - yMin + 1) <= maxTiles) {
                return intArrayOf(zoom, xMin, xMax, yMin, yMax)
            }
        }
        return intArrayOf(0, 0, 0, 0, 0)
    }

    /**
     * 生成热力图 Bitmap（新主签名）。
     *
     * @param points 轨迹点列，DoubleArray[0]=纬度，DoubleArray[1]=经度
     * @param bounds [tileBounds] 的返回值：intArrayOf(zoom, xMin, xMax, yMin, yMax)
     * @param radiusPx splat 点半径（像素）：半径 r 的点画 (2r+1)×(2r+1) 方块。
     *   1 = 最细；旧默认 f=3 对应 3。
     * @param blurPasses 3×3 均值模糊遍数；0 = 不模糊，最细；旧默认 f=3 对应 3。
     *   每多一遍，有效线宽约 +2px（两侧各约 1px）。
     * @param density 归一化用的密度基数（调用方传文件数，见 HeatmapActivity）；
     *   参与直方图上限 `max(1, round(分辨率修正 * density))` 的计算。
     * @param useCache 兼容保留参数（见文件头已知问题 3），不参与计算。
     * @return 热力图 Bitmap；点列/尺寸非法、像素超限或归一化后无有效范围时返回 null。
     */
    @JvmStatic
    @Suppress("UNUSED_PARAMETER")
    fun generate(
        points: List<DoubleArray>,
        bounds: IntArray,
        radiusPx: Int,
        blurPasses: Int,
        density: Int,
        useCache: Boolean
    ): Bitmap? {
        val zoom = bounds[0]
        val xMinTile = bounds[1]
        val xMaxTile = bounds[2]
        val yMinTile = bounds[3]
        val width = (xMaxTile - xMinTile + 1) * 256
        val height = (bounds[4] - yMinTile + 1) * 256
        if (width <= 0 || height <= 0 || width * height > MAX_PIXELS) return null

        // 经纬度 -> 以 bounds 左上角为原点的像素坐标，落点由 HeatmapRaster 完成。
        val originX = xMinTile * 256.0
        val originY = yMinTile * 256.0
        val pixelPoints = points.map { point ->
            doubleArrayOf(deg2x(point[1], zoom) - originX, deg2y(point[0], zoom) - originY)
        }
        // 显式 ShortArray：原 short[][] 在 jadx 里类型推断失败，展平后不再有此问题。
        val counts: ShortArray = HeatmapRaster.splat(pixelPoints, width, height, max(1, radiusPx))

        // 直方图上限：纬度越高中纬度每像素米数越小，阈值随之换算（原公式同）。
        val metersPerPixel = cos(Math.toRadians(midLat(points))) * 156543.03 /
            (1 shl zoom).toDouble() / 5.0
        val maxCount = max(1L, (metersPerPixel * density).roundToLong()).toInt()
        val histogram = LongArray(maxCount + 1)
        val totalPixels = (width * height).toLong()
        for (count in counts) {
            val capped = min(count.toInt(), maxCount)
            histogram[capped]++
        }
        // 累积分布映射：count -> maxCount * (累计占比)，count=0 映射为 0。
        val mapping = FloatArray(maxCount + 1)
        var cumulative = 0L
        for (value in 1..maxCount) {
            cumulative += histogram[value]
            mapping[value] = (maxCount * (cumulative.toDouble() / totalPixels)).toFloat()
        }
        val normalized = FloatArray(width * height) { index ->
            val capped = min(counts[index].toInt(), maxCount)
            if (capped > 0) mapping[capped] else 0f
        }

        val blurred = HeatmapRaster.blur(normalized, width, height, max(0, blurPasses))

        var minValue = Float.MAX_VALUE
        var maxValue = -Float.MAX_VALUE
        for (value in blurred) {
            if (value < minValue) minValue = value
            if (value > maxValue) maxValue = value
        }
        val range = maxValue - minValue
        if (range <= 0f) return null

        // 配色（原逻辑同）：t<0.03 透明；否则红→黄→白，
        // r = min(1, 3t)，g = min(1, max(0, 3t-1))，b = min(1, max(0, 3t-2))，alpha 恒 255。
        val pixels = IntArray(width * height)
        for (index in blurred.indices) {
            val t = (blurred[index] - minValue) / range
            pixels[index] = if (t < 0.03f) {
                0
            } else {
                val scaled = t * 3f
                Color.argb(
                    255,
                    (min(1f, scaled) * 255f).toInt(),
                    (min(1f, max(0f, scaled - 1f)) * 255f).toInt(),
                    (min(1f, max(0f, scaled - 2f)) * 255f).toInt()
                )
            }
        }
        return Bitmap.createBitmap(pixels, width, height, Bitmap.Config.ARGB_8888)
    }

    /**
     * 旧签名，仅作兼容委托。
     *
     * 旧参数 f 同时控制半径与模糊：radius = max(1, f.toInt())，
     * blur = max(1, f.roundToInt())。默认 f=3 时半径 3、模糊 3，
     * 有效线宽约 13px，在 zoom 13 下约 110m+，是“线太粗”的根因，
     * 且 f 最小为 1，再细也细不下去。新代码请改用主签名
     * [generate(points, bounds, radiusPx, blurPasses, density, useCache)]，
     * 线宽档位见 HeatmapActivity.lineWidthToRadiusBlur。
     */
    @Deprecated(
        "f 同时控制点半径与模糊次数，会把线画粗；请改用 generate(points, bounds, radiusPx, blurPasses, density, useCache)。"
    )
    @JvmStatic
    fun generate(
        points: List<DoubleArray>,
        bounds: IntArray,
        f: Float,
        density: Int,
        useCache: Boolean
    ): Bitmap? = generate(
        points, bounds,
        radiusPx = max(1, f.toInt()),
        blurPasses = max(1, f.roundToInt()),
        density = density,
        useCache = useCache
    )

    /**
     * 平均纬度。注意：原样保留以 `Degrees.MIN_VALUE` 为累加初值
     * （反编译原文如此，见文件头已知问题 2）。
     */
    private fun midLat(points: List<DoubleArray>): Double {
        var sum = Degrees.MIN_VALUE
        var count = 0
        for (point in points) {
            sum += point[0]
            count++
        }
        if (count <= 0) return 30.0
        return sum / count.toDouble()
    }
}

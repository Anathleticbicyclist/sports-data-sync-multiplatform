package com.jichi.ob.merge

import com.jichi.ob.GpxToFitConverter
import java.util.Locale

/**
 * 贴纸/轨迹渲染纯计算核心 —— v7.9.9
 *
 * 从 TrackPreviewView 抽出的**无 Android 依赖**逻辑，App 渲染与本地 JVM 测试共用同一份实现，
 * 保证"统计正确、投影不越界、海拔剖面正确、水印规范"可被真实数据验证。
 * 所有坐标均为像素坐标（由调用方传入画布尺寸）。
 */
object StickerCore {

    /** 贴纸底部软件名水印（细体小字、半透明、底部居中、字距拉开——对齐 Outbase 品牌字风格） */
    const val WATERMARK_TEXT = "鸡翅幸哲迈进OB"
    /** 水印字号 = 画布边长 × 0.030 */
    const val WATERMARK_TEXT_RATIO = 0.030f
    /** 水印底部间距 = 画布边长 × 0.028（最小 8px） */
    const val WATERMARK_BOTTOM_RATIO = 0.028f
    /** 水印透明度（alpha 0x99 ≈ 60%） */
    const val WATERMARK_ALPHA = 0x99

    /** 贴纸数据统计（由轨迹点自动计算，不丢心率/踏频/功率/海拔） */
    data class TrackStats(
        val distKm: Double,
        val durationSec: Long,
        val avgSpeedKmh: Double,
        val maxSpeedKmh: Double,
        val ascentM: Double,
        val avgHr: Int,
        val maxHr: Int,
        val avgCad: Int,
        val avgPower: Int,
        val caloriesKcal: Int
    )

    fun computeStats(pts: List<GpxToFitConverter.TrackPoint>): TrackStats {
        if (pts.isEmpty()) return TrackStats(0.0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0)
        var dist = 0.0; var ascent = 0.0
        var hrSum = 0L; var hrN = 0L; var maxHr = 0
        var cadSum = 0L; var cadN = 0L
        var powSum = 0L; var powN = 0L
        var maxSpeed = 0.0
        var prev: GpxToFitConverter.TrackPoint? = null
        var prevEle: Double? = null
        for (p in pts) {
            val pr = prev
            if (pr != null) {
                val d = haversineM(pr.lat, pr.lon, p.lat, p.lon)
                dist += d
                val dt = (p.ts - pr.ts).toDouble()
                if (dt > 0) {
                    val s = d / dt * 3.6 // m/s → km/h
                    if (s > maxSpeed) maxSpeed = s
                }
            }
            val pe = prevEle
            if (pe != null && p.ele > pe) ascent += p.ele - pe
            if (p.hr > 0) { hrSum += p.hr; hrN++; if (p.hr > maxHr) maxHr = p.hr }
            if (p.cad > 0) { cadSum += p.cad; cadN++ }
            if (p.power > 0) { powSum += p.power; powN++ }
            prev = p; prevEle = if (p.ele > 0) p.ele else null
        }
        val t0 = pts.first().ts.takeIf { it > 0 } ?: 0L
        val t1 = pts.last().ts.takeIf { it > 0 } ?: 0L
        val dur = (t1 - t0).coerceAtLeast(0L)
        val speed = if (dur > 0) dist / 1000.0 / (dur / 3600.0) else 0.0
        // 卡路里：有功率时按 功率×时长×3.6 估算（255W·1h 机械功=918kJ，÷4.184→219kcal，÷人体效率0.24→914kcal/h ≈ 功率×3.6）；
        // 无功率时跑步兜底 ~60kcal/km
        val avgPow = if (powN > 0) (powSum / powN).toInt() else 0
        val kcal = when {
            avgPow > 0 -> (avgPow * (dur / 3600.0) * 3.6).toInt()
            else -> (dist / 1000.0 * 60.0).toInt()
        }
        return TrackStats(
            distKm = dist / 1000.0,
            durationSec = dur,
            avgSpeedKmh = speed,
            maxSpeedKmh = maxSpeed,
            ascentM = ascent,
            avgHr = if (hrN > 0) (hrSum / hrN).toInt() else 0,
            maxHr = maxHr,
            avgCad = if (cadN > 0) (cadSum / cadN).toInt() else 0,
            avgPower = avgPow,
            caloriesKcal = kcal
        )
    }

    /**
     * 平面轨迹等比例投影：保持经纬度宽高比，居中铺满画布，四周留 pad 边距。
     * 返回 (x, y) 像素坐标列表，与 TrackPreviewView.drawTrack/drawGradientTrack 完全一致。
     */
    fun projectTrack(
        pts: List<GpxToFitConverter.TrackPoint>,
        w: Float, h: Float, pad: Float = 18f
    ): List<Pair<Float, Float>> {
        if (pts.size < 2) return emptyList()
        var minLat = Double.MAX_VALUE; var maxLat = -Double.MAX_VALUE
        var minLon = Double.MAX_VALUE; var maxLon = -Double.MAX_VALUE
        for (p in pts) {
            if (p.lat < minLat) minLat = p.lat
            if (p.lat > maxLat) maxLat = p.lat
            if (p.lon < minLon) minLon = p.lon
            if (p.lon > maxLon) maxLon = p.lon
        }
        val dLat = (maxLat - minLat).coerceAtLeast(1e-6)
        val dLon = (maxLon - minLon).coerceAtLeast(1e-6)
        val availW = w - pad * 2
        val availH = h - pad * 2
        val scale = minOf(availW / dLon.toFloat(), availH / dLat.toFloat())
        val offX = (w - dLon.toFloat() * scale) / 2f
        val offY = (h - dLat.toFloat() * scale) / 2f
        return pts.map { p ->
            (offX + (p.lon - minLon).toFloat() * scale) to (offY + (maxLat - p.lat).toFloat() * scale)
        }
    }

    /**
     * 平面轨迹投影 + 位移/缩放（贴纸轨迹可拖动、可缩放）：
     * 先按画布居中铺满，再整体乘以 [scale] 并以画布中心为锚点偏移 [dx]/[dy] 像素。
     * dx/dy 为正时轨迹向右/向下移动。
     */
    fun projectTrackEx(
        pts: List<GpxToFitConverter.TrackPoint>,
        w: Float, h: Float, pad: Float = 18f,
        dx: Float = 0f, dy: Float = 0f, scale: Float = 1f
    ): List<Pair<Float, Float>> {
        if (pts.size < 2) return emptyList()
        val base = projectTrack(pts, w, h, pad)
        if (dx == 0f && dy == 0f && scale == 1f) return base
        val cx = w / 2f; val cy = h / 2f
        return base.map { (x, y) ->
            (cx + (x - cx) * scale + dx) to (cy + (y - cy) * scale + dy)
        }
    }

    /**
     * 立体地形剖面几何（等高线山体，无 Android 依赖）：
     * x = 累计距离占比，y = 海拔映射（基线 [baseY] 为 0 海拔，向上为高海拔）。
     * 返回：profile（剖面顶线）、side（侧壁线=profile 整体下移 [thickness]）、
     *      contours（按海拔分 [layers] 层的水平参考线：每层一条从基线到剖面右侧顶点的折线，形成"层"视觉）、
     *      eleLevels（每层海拔值）、eMin/eMax（海拔范围）。
     */
    data class TerrainGeom(
        val profile: List<Pair<Float, Float>>,
        val side: List<Pair<Float, Float>>,
        val contours: List<List<Pair<Float, Float>>>,
        val eleLevels: List<Float>,
        val eMin: Float,
        val eMax: Float
    )

    fun elevationTerrain(
        pts: List<GpxToFitConverter.TrackPoint>,
        l: Float, t: Float, r: Float, b: Float,
        thickness: Float = 12f,
        layers: Int = 5
    ): TerrainGeom {
        if (pts.size < 2) {
            return TerrainGeom(emptyList(), emptyList(), emptyList(), emptyList(), 0f, 1f)
        }
        val n = pts.size
        val dist = cumulativeDist(pts)
        val totalD = maxOf(dist[n - 1], 1f)
        var eMin = Float.MAX_VALUE; var eMax = -Float.MAX_VALUE
        for (p in pts) {
            if (p.ele > 0) { if (p.ele < eMin) eMin = p.ele.toFloat(); if (p.ele > eMax) eMax = p.ele.toFloat() }
        }
        if (eMax <= eMin) { eMin = 0f; eMax = 1f }
        val hgt = (b - t).coerceAtLeast(1f)
        // 顶部留出峰值标签空间
        val topPad = hgt * 0.08f
        val usable = (hgt - topPad).coerceAtLeast(4f)
        val profile = pts.mapIndexed { i, p ->
            val x = l + (dist[i] / totalD) * (r - l)
            val ele = if (p.ele > 0) p.ele.toFloat() else eMin
            val ratio = (ele - eMin) / (eMax - eMin)
            val y = b - ratio * usable
            x to y
        }
        val side = profile.map { (x, y) -> x to (y + thickness).coerceAtMost(b) }
        // 等高线层：每层一条"该海拔水平截线"（从基线立起到该海拔，再沿 x 延伸），体现层叠
        val contours = ArrayList<List<Pair<Float, Float>>>()
        val eleLevels = ArrayList<Float>()
        for (k in 1..layers) {
            val ratio = k.toFloat() / layers
            val eleY = b - ratio * usable
            val levelEle = eMin + (eMax - eMin) * ratio
            // 截线：沿 profile 在 y <= eleY 的点连线（即该海拔以下的轮廓）
            val seg = ArrayList<Pair<Float, Float>>()
            for ((x, y) in profile) {
                if (y <= eleY + 0.5f) seg.add(x to eleY)
            }
            if (seg.isNotEmpty()) {
                contours.add(seg)
                eleLevels.add(levelEle)
            }
        }
        return TerrainGeom(profile, side, contours, eleLevels, eMin, eMax)
    }

    /** 沿轨迹累计距离（米），供渐变/色带使用 */
    fun cumulativeDist(pts: List<GpxToFitConverter.TrackPoint>): FloatArray {
        val cum = FloatArray(pts.size)
        for (i in 1 until pts.size) {
            cum[i] = cum[i - 1] + haversineM(pts[i - 1].lat, pts[i - 1].lon, pts[i].lat, pts[i].lon).toFloat()
        }
        return cum
    }

    /**
     * 2D 海拔剖面坐标（贴纸内迷你剖面 / 预览 3D 图的 z 数据源）：
     * x = 累计距离占比，y = 海拔归一化（忽略 ele<=0 的无效点）。
     * 返回 (x, y) 像素坐标。
     */
    fun elevationProfile(
        pts: List<GpxToFitConverter.TrackPoint>,
        l: Float, t: Float, r: Float, b: Float
    ): List<Pair<Float, Float>> {
        if (pts.size < 2) return emptyList()
        val n = pts.size
        val dist = cumulativeDist(pts)
        val totalD = maxOf(dist[n - 1], 1f)
        var eMin = Float.MAX_VALUE; var eMax = -Float.MAX_VALUE
        for (p in pts) {
            if (p.ele > 0) { if (p.ele < eMin) eMin = p.ele.toFloat(); if (p.ele > eMax) eMax = p.ele.toFloat() }
        }
        if (eMax <= eMin) { eMin = 0f; eMax = 1f }
        val padT = 4f
        val h = b - t
        return pts.mapIndexed { i, p ->
            val x = l + (dist[i] / totalD) * (r - l)
            val ele = if (p.ele > 0) p.ele.toFloat() else eMin
            val ratio = (ele - eMin) / (eMax - eMin)
            val y = t + padT + (1f - ratio) * (h - padT * 2)
            x to y
        }
    }

    /** 逐点速度（m/s），供速度色带 */
    fun pointSpeeds(pts: List<GpxToFitConverter.TrackPoint>): FloatArray {
        val speeds = FloatArray(pts.size)
        for (i in 1 until pts.size) {
            val p0 = pts[i - 1]; val p1 = pts[i]
            val dt = (p1.ts - p0.ts).toDouble()
            val d = haversineM(p0.lat, p0.lon, p1.lat, p1.lon)
            speeds[i] = if (dt > 0) (d / dt).toFloat() else 0f
        }
        return speeds
    }

    fun fmtDur(sec: Long): String {
        val h = sec / 3600; val m = (sec % 3600) / 60; val s2 = sec % 60
        return if (h > 0) String.format(Locale.US, "%d:%02d:%02d", h, m, s2)
        else String.format(Locale.US, "%d:%02d", m, s2)
    }

    // ===== 可编辑数据项（Outbase "可点选 N 个展示信息" 风格） =====

    /** 指标 ID 常量（贴纸数据卡可编辑指标池） */
    const val ITEM_DIST = 1
    const val ITEM_DUR = 2
    const val ITEM_AVG_SPEED = 3
    const val ITEM_MAX_SPEED = 4
    const val ITEM_ASCENT = 5
    const val ITEM_AVG_HR = 6
    const val ITEM_AVG_POWER = 7
    const val ITEM_CALORIES = 8
    const val ITEM_AVG_CAD = 9
    const val ITEM_MAX_ELE = 10

    /** 指标定义：id → (名称, 单位) */
    val ITEM_DEFS: Map<Int, Pair<String, String>> = mapOf(
        ITEM_DIST to ("距离" to "km"),
        ITEM_DUR to ("时长" to ""),
        ITEM_AVG_SPEED to ("平均速度" to "km/h"),
        ITEM_MAX_SPEED to ("最大速度" to "km/h"),
        ITEM_ASCENT to ("累计爬升" to "m"),
        ITEM_AVG_HR to ("平均心率" to "bpm"),
        ITEM_AVG_POWER to ("平均功率" to "W"),
        ITEM_CALORIES to ("卡路里" to "kcal"),
        ITEM_AVG_CAD to ("平均踏频" to "rpm"),
        ITEM_MAX_ELE to ("最高海拔" to "m")
    )

    /** 指标默认展示顺序（Strava 5 项：距离/均速/时长/爬升/心率） */
    val ITEM_DEFAULT = listOf(ITEM_DIST, ITEM_AVG_SPEED, ITEM_DUR, ITEM_ASCENT, ITEM_AVG_HR)

    /** 取某指标数值字符串（带单位格式化） */
    fun itemValue(id: Int, s: TrackStats): String = when (id) {
        // v8.0.5 数据不压图：距离锁一位小数（两位→舍弃一位；一位→锁定不缩字号）
        ITEM_DIST -> String.format(Locale.US, "%.1f", s.distKm)
        ITEM_DUR -> fmtDur(s.durationSec)
        ITEM_AVG_SPEED -> String.format(Locale.US, "%.1f", s.avgSpeedKmh)
        ITEM_MAX_SPEED -> String.format(Locale.US, "%.1f", s.maxSpeedKmh)
        ITEM_ASCENT -> String.format(Locale.US, "%.0f", s.ascentM)
        ITEM_AVG_HR -> if (s.avgHr > 0) "${s.avgHr}" else "—"
        ITEM_AVG_POWER -> if (s.avgPower > 0) "${s.avgPower}" else "—"
        ITEM_CALORIES -> if (s.caloriesKcal > 0) "${s.caloriesKcal}" else "—"
        ITEM_AVG_CAD -> if (s.avgCad > 0) "${s.avgCad}" else "—"
        ITEM_MAX_ELE -> "—" // 需要轨迹点原数据，见 maxEle()
        else -> "—"
    }

    /** v8.0.5 数字溢出收缩：12.34 → 12.3（两位舍一位）；一位小数锁定不变，不缩字号 */
    fun shrinkNum(text: String): String {
        val multi = Regex("(\\d+\\.\\d)\\d").find(text) ?: return text
        val g = multi.groupValues[1]
        return text.replace(multi.value, g)
    }

    /** 最高海拔（贴纸"最高海拔"指标数据源；不动 TrackStats 结构以免破坏既有调用） */
    fun maxEle(pts: List<GpxToFitConverter.TrackPoint>): Double {
        var max = 0.0
        for (p in pts) if (p.ele > max) max = p.ele
        return max
    }

    // ================= 贴纸模板引擎 v8.0.1（24 预设 + 组合引擎） =================

    /** 背景类型（绘制见 TrackPreviewView.drawTemplateBg；均为纯 Canvas 装饰，零地图依赖） */
    enum class StickerBg(val key: String) {
        DEEP_SPACE("深空"), CHECKER("棋盘"), NEON("霓虹"), PURE_BLACK("纯黑"),
        MINIMAL_WHITE("极简白"), CREAM("奶油"), LIGHT_GRAY("浅灰"), WARM_POSTER("暖白"),
        MAP_GRID("地图网格"), SATELLITE("深色卫星"), LIGHT_MAP("浅色地图"), CONTOUR("等高线"),
        HEAT_BG("热力底"), ORANGE_BAND("橙带底"), ICE_BAND("冰蓝底"), LIGHT_TRAIL("光绘底"),
        DUAL_DARK("对比卡底"), POSTER_ORANGE("海报橙"), RETRO_PURPLE("复古紫"),
        ANNUAL_DARK("年度底"),
        // v8.0.5 照片类背景（效果图还原）：需 overlayBitmap 照片
        PHOTO_OVERLAY("照片叠加"), FROSTED("磨砂玻璃"), PHOTO_SPLIT("双图拼接")
    }

    /** 轨迹风格 */
    enum class StickerTrack(val key: String) {
        ORANGE_GRAD("橙焰"), WHITE("纯白"), BLACK_FINE("黑细"), GRAY_FINE("灰细"),
        NEON("霓虹"), HEAT("热力"), ICE_3D("冰蓝3D"), PHANTOM("光绘")
    }

    /** 数据布局 */
    enum class StickerLayout(val key: String) {
        TRIPLE("三连排"), CORNER("角标"), GRID("六宫格"), BIG("竖排大字"),
        DUAL("对比卡"), BAR("底部条"), POSTER("海报大字")
    }

    /** 字色 */
    enum class StickerText(val key: String) {
        WHITE("白"), BLACK("黑"), ORANGE("橙"), SKY("天蓝"), NEON_PINK("霓虹"), CREAM("米白")
    }

    /** 贴纸模板（预设 = 背景×轨迹×布局×字色×发光 的精选组合） */
    data class StickerTemplate(
        val id: Int,
        val name: String,
        val category: String,
        val bg: StickerBg,
        val track: StickerTrack,
        val layout: StickerLayout,
        val text: StickerText,
        val glow: Boolean
    )

    object StickerTemplates {
        val CATEGORIES = listOf("深色经典", "浅色极简", "地图样式", "艺术特效", "数据卡片", "照片")

        val ALL: List<StickerTemplate> = listOf(
            // 深色经典
            StickerTemplate(1, "深空橙焰", "深色经典", StickerBg.DEEP_SPACE, StickerTrack.ORANGE_GRAD, StickerLayout.TRIPLE, StickerText.WHITE, true),
            StickerTemplate(2, "黑白棋盘", "深色经典", StickerBg.CHECKER, StickerTrack.WHITE, StickerLayout.TRIPLE, StickerText.WHITE, true),
            StickerTemplate(3, "霓虹夜跑", "深色经典", StickerBg.NEON, StickerTrack.NEON, StickerLayout.TRIPLE, StickerText.NEON_PINK, true),
            StickerTemplate(4, "纯黑极简", "深色经典", StickerBg.PURE_BLACK, StickerTrack.WHITE, StickerLayout.CORNER, StickerText.WHITE, false),
            // 浅色极简
            StickerTemplate(5, "极简白", "浅色极简", StickerBg.MINIMAL_WHITE, StickerTrack.BLACK_FINE, StickerLayout.TRIPLE, StickerText.BLACK, false),
            StickerTemplate(6, "奶油纸感", "浅色极简", StickerBg.CREAM, StickerTrack.BLACK_FINE, StickerLayout.TRIPLE, StickerText.CREAM, false),
            StickerTemplate(7, "浅灰线条", "浅色极简", StickerBg.LIGHT_GRAY, StickerTrack.GRAY_FINE, StickerLayout.BAR, StickerText.BLACK, false),
            StickerTemplate(8, "暖白海报", "浅色极简", StickerBg.WARM_POSTER, StickerTrack.ORANGE_GRAD, StickerLayout.POSTER, StickerText.BLACK, false),
            // 地图样式（装饰性地图质感，零地图依赖）
            StickerTemplate(9, "地图网格", "地图样式", StickerBg.MAP_GRID, StickerTrack.ORANGE_GRAD, StickerLayout.BAR, StickerText.WHITE, true),
            StickerTemplate(10, "深色卫星", "地图样式", StickerBg.SATELLITE, StickerTrack.WHITE, StickerLayout.TRIPLE, StickerText.WHITE, true),
            StickerTemplate(11, "浅色地图", "地图样式", StickerBg.LIGHT_MAP, StickerTrack.ORANGE_GRAD, StickerLayout.TRIPLE, StickerText.BLACK, false),
            StickerTemplate(12, "等高线", "地图样式", StickerBg.CONTOUR, StickerTrack.ORANGE_GRAD, StickerLayout.TRIPLE, StickerText.CREAM, false),
            // 艺术特效
            StickerTemplate(13, "速度热力", "艺术特效", StickerBg.HEAT_BG, StickerTrack.HEAT, StickerLayout.TRIPLE, StickerText.WHITE, false),
            StickerTemplate(14, "3D橙带", "艺术特效", StickerBg.ORANGE_BAND, StickerTrack.ORANGE_GRAD, StickerLayout.TRIPLE, StickerText.WHITE, true),
            StickerTemplate(15, "冬季3D冰蓝", "艺术特效", StickerBg.ICE_BAND, StickerTrack.ICE_3D, StickerLayout.BIG, StickerText.WHITE, true),
            StickerTemplate(16, "光绘拖影", "艺术特效", StickerBg.LIGHT_TRAIL, StickerTrack.PHANTOM, StickerLayout.TRIPLE, StickerText.WHITE, true),
            // 数据卡片
            StickerTemplate(17, "对比卡", "数据卡片", StickerBg.DUAL_DARK, StickerTrack.ORANGE_GRAD, StickerLayout.DUAL, StickerText.WHITE, true),
            StickerTemplate(18, "六宫格", "数据卡片", StickerBg.DEEP_SPACE, StickerTrack.ORANGE_GRAD, StickerLayout.GRID, StickerText.WHITE, false),
            StickerTemplate(19, "海报大字", "数据卡片", StickerBg.POSTER_ORANGE, StickerTrack.ORANGE_GRAD, StickerLayout.POSTER, StickerText.WHITE, false),
            StickerTemplate(20, "复古游戏", "数据卡片", StickerBg.RETRO_PURPLE, StickerTrack.WHITE, StickerLayout.GRID, StickerText.WHITE, false),
            // 照片（v8.0.5 效果图 1:1 顺序：21 透明叠加 / 22 磨砂玻璃 / 23 双图拼接 / 24 年度总结）
            StickerTemplate(21, "透明叠加", "照片", StickerBg.PHOTO_OVERLAY, StickerTrack.ORANGE_GRAD, StickerLayout.CORNER, StickerText.WHITE, true),
            StickerTemplate(22, "磨砂玻璃", "照片", StickerBg.FROSTED, StickerTrack.ORANGE_GRAD, StickerLayout.BAR, StickerText.WHITE, true),
            StickerTemplate(23, "双图拼接", "照片", StickerBg.PHOTO_SPLIT, StickerTrack.ORANGE_GRAD, StickerLayout.DUAL, StickerText.WHITE, false),
            StickerTemplate(24, "年度总结", "照片", StickerBg.ANNUAL_DARK, StickerTrack.ORANGE_GRAD, StickerLayout.POSTER, StickerText.WHITE, false)
        )

        fun byCategory(cat: String): List<StickerTemplate> = ALL.filter { it.category == cat }
        fun byId(id: Int): StickerTemplate? = ALL.firstOrNull { it.id == id }

        /** 组合引擎：背景×轨迹×布局×字色 自由混搭（= 无限可能） */
        data class Combo(
            val bg: StickerBg,
            val track: StickerTrack,
            val layout: StickerLayout,
            val text: StickerText,
            val glow: Boolean = false
        )

        /** 组合总数（当前 23×8×7×6×2 = 15,456 种；v8.0.5 恢复照片类背景） */
        val COMBO_COUNT: Int =
            StickerBg.entries.size * StickerTrack.entries.size * StickerLayout.entries.size *
                StickerText.entries.size * 2
    }

    /** 总结卡数据（月度/年度）：来自本地已下载记录的轻量统计（文件名日期识别 + 修改时间兜底） */
    data class SummaryStats(
        val count: Int,
        val totalKm: Double,
        val totalSec: Long,
        val totalAscentM: Double
    ) {
        fun fmtKm(): String = String.format(Locale.US, "%.1f", totalKm)
        fun fmtDur(): String = fmtDurOf(totalSec)
        fun fmtAscent(): String = String.format(Locale.US, "%.0f", totalAscentM)
        private fun fmtDurOf(sec: Long): String {
            val h = sec / 3600; val m = (sec % 3600) / 60
            return if (h > 0) "$h 小时 $m 分" else "$m 分钟"
        }
    }

    /** 从文件名提取日期（"kp_20220814_222216..." → 2022-08-14；无日期返回 null） */
    fun dateFromName(name: String): String? {
        val m = Regex("""(\d{4})(\d{2})(\d{2})""").find(name) ?: return null
        val (y, mo, d) = m.destructured
        return if (y.toInt() in 2000..2100 && mo.toInt() in 1..12 && d.toInt() in 1..31) "$y-$mo-$d" else null
    }

    /** 多选数据卡布局：返回每列中心 x（左/右边距比例可配，N 列均分不越界） */
    fun stickerColumns(n: Int, size: Float, leftRatio: Float = 0.04f, rightRatio: Float = 0.04f): List<Float> {
        if (n <= 0) return emptyList()
        val left = size * leftRatio
        val right = size - size * rightRatio
        val colW = (right - left) / n
        return (0 until n).map { left + colW * (it + 0.5f) }
    }

    fun haversineM(lat1: Double, lon1: Double, lat2: Double, lon2: Double): Double {
        val r = 6371000.0
        val p1 = Math.toRadians(lat1); val p2 = Math.toRadians(lat2)
        val dp = Math.toRadians(lat2 - lat1); val dl = Math.toRadians(lon2 - lon1)
        val a = Math.sin(dp / 2) * Math.sin(dp / 2) +
            Math.cos(p1) * Math.cos(p2) * Math.sin(dl / 2) * Math.sin(dl / 2)
        return 2 * r * Math.asin(Math.sqrt(a))
    }

    /** 单文件（已解析出轨迹点）的总结贡献项 */
    data class SummaryItem(val count: Int, val km: Double, val sec: Long, val ascentM: Double)

    /** 由轨迹点真实计算单文件汇总（复用 computeStats，保证距离/时长/爬升与合并口径一致） */
    fun summaryOfPoints(points: List<GpxToFitConverter.TrackPoint>): SummaryItem {
        if (points.isEmpty()) return SummaryItem(0, 0.0, 0L, 0.0)
        val s = computeStats(points)
        return SummaryItem(1, s.distKm, s.durationSec, s.ascentM)
    }

    /** 累加一条到总结 */
    fun mergeSummary(base: SummaryStats, add: SummaryItem): SummaryStats = SummaryStats(
        count = base.count + add.count,
        totalKm = base.totalKm + add.km,
        totalSec = base.totalSec + add.sec,
        totalAscentM = base.totalAscentM + add.ascentM
    )

    /** 总结卡统计：调用方（UI 层后台线程）负责"扫描目录→按日期过滤→解析"，这里只做归月过滤与聚合 */
    fun summarizeLocalFiles(
        items: List<Pair<java.io.File, SummaryItem?>>,
        year: Int, month: Int
    ): SummaryStats {
        var acc = SummaryStats(0, 0.0, 0L, 0.0)
        val prefix = "%04d-%02d".format(year, month)
        val cal = java.util.Calendar.getInstance()
        for ((f, item) in items) {
            var date = dateFromName(f.name)
            if (date == null) {
                cal.timeInMillis = f.lastModified()
                date = "%04d-%02d-%02d".format(cal.get(java.util.Calendar.YEAR), cal.get(java.util.Calendar.MONTH) + 1, cal.get(java.util.Calendar.DAY_OF_MONTH))
            }
            if (!date.startsWith(prefix)) continue
            if (item != null) acc = mergeSummary(acc, item)
        }
        return acc
    }
}

app/src/main/java/com/jichi/ob/merge/TrackMerger.kt
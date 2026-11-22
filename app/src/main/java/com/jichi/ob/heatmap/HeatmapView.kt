package com.jichi.ob.heatmap

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.LinearGradient
import android.graphics.Matrix
import android.graphics.Paint
import android.graphics.Path
import android.graphics.Rect
import android.graphics.RectF
import android.graphics.Shader
import android.view.GestureDetector
import android.view.MotionEvent
import android.view.ScaleGestureDetector
import android.view.View

/**
 * 来源：jadx 反编译 `HeatmapView.java`（classes2.dex）改写为地道 Kotlin。
 * 原始公开 API 与行为保持不变：zoom 默认 13、深色默认开、在线底图默认开、
 * 热力透明度默认 0.9、双击复位、单指拖动、双指缩放、底图瓦片按需加载、
 * 图例“多/少”与左上角状态文案原样保留。
 *
 * 已知问题（反编译原文如此，改写时注明；其中状态文案的 jadx 三元表达式
 * 已按其字符串片段还原为可读的 if-else，语义与片段一致）：
 * 1. `drawBase()` 里的网格线条件在反编译中是 `tilePx < 12 && tilePx > 宽`
 *    （恒假）且循环条件写反，底图网格实际画不出来；此处原样保留，不擅自改。
 * 2. `drawStatus()` 在 jadx 里是一串嵌套三元且对可能为 null 的 tiles 调用了
 *    方法；改写时按原文出现的 5 段文案还原为等价的分支判断。
 *
 * 矢量细线叠加层（本次新增，默认开启）：
 * 采用原因——栅格热力再细也有像素扩散：splat 方块 + 模糊会让线在任何
 * 缩放下都占若干像素宽；矢量 polyline 按同一经纬度→像素投影画线，
 * 线宽固定 2dp，在任何缩放下都是一根细线，盖在热力 bitmap 之上后
 * 轨迹走向清晰可辨，而热力图仍负责表达“走过多少次”的密度。
 * 开关：[vectorOverlayEnabled]（默认 true），或调 [setVectorOverlayEnabled]；
 * 轨迹点由 [setHeatmap] 的新重载传入（旧 6 参重载仍保留，轨迹点为空时不画线）。
 */
class HeatmapView(context: Context) : View(context) {

    private var baseOnline = true
    private var dark = true
    private var fitted = false
    private val gridPaint = Paint().apply { color = 0 }
    private var heat: Bitmap? = null
    private var heatAlpha = 0.9f
    private val heatPaint = Paint()
    private var lastFocusX = 0f
    private var lastFocusY = 0f
    private val mat = Matrix()
    private var tiles: HeatmapTileLoader? = HeatmapTileLoader(context)
    private var xtMax = 0
    private var xtMin = 0
    private var ytMax = 0
    private var ytMin = 0
    private var zoom = 13

    /** 矢量细线叠加层的轨迹点（DoubleArray[0]=纬度，[1]=经度），与热力图同源。 */
    private var trackPoints: List<DoubleArray> = emptyList()

    /**
     * 矢量细线叠加层开关，默认 true（开启）。
     * 设为 false 后只显示栅格热力图；改动后自动 invalidate。
     */
    var vectorOverlayEnabled: Boolean = true
        set(enabled) {
            field = enabled
            invalidate()
        }

    /** 矢量细线的画笔：2dp 粗、抗锯齿、半透明亮色（白色，alpha 200）。 */
    private val vectorPaint = Paint().apply {
        isAntiAlias = true
        style = Paint.Style.STROKE
        strokeWidth = 2f * context.resources.displayMetrics.density
        strokeJoin = Paint.Join.ROUND
        strokeCap = Paint.Cap.ROUND
        color = Color.argb(200, 255, 255, 255)
    }

    private val scaleGestureDetector = ScaleGestureDetector(
        context,
        object : ScaleGestureDetector.SimpleOnScaleGestureListener() {
            override fun onScale(detector: ScaleGestureDetector): Boolean {
                mat.postScale(detector.scaleFactor, detector.scaleFactor, detector.focusX, detector.focusY)
                invalidate()
                return true
            }
        }
    )

    private val gestureDetector = GestureDetector(
        context,
        object : GestureDetector.SimpleOnGestureListener() {
            override fun onDoubleTap(event: MotionEvent): Boolean {
                resetView()
                return true
            }

            override fun onDown(event: MotionEvent): Boolean = true

            override fun onScroll(
                e1: MotionEvent?,
                e2: MotionEvent,
                distanceX: Float,
                distanceY: Float
            ): Boolean {
                mat.postTranslate(-distanceX, -distanceY)
                invalidate()
                return true
            }
        }
    )

    fun getOnlineTiles(): Boolean = baseOnline

    fun resetView() {
        fitView()
        fitted = true
        invalidate()
    }

    fun setOnlineTiles(enabled: Boolean) {
        baseOnline = enabled
        val loader = tiles ?: return
        loader.setOnlineEnabled(enabled)
        if (!enabled) {
            invalidate()
        } else {
            loader.resetTiles()
            invalidate()
        }
    }

    /**
     * 设置热力图（旧 6 参签名，原样保留；轨迹点为空，矢量层不画线）。
     */
    fun setHeatmap(bitmap: Bitmap?, zoom: Int, xMin: Int, xMax: Int, yMin: Int, yMax: Int) {
        setHeatmap(bitmap, zoom, xMin, xMax, yMin, yMax, emptyList())
    }

    /**
     * 设置热力图并同时传入轨迹点，供矢量细线叠加层按同一投影画 polyline。
     */
    fun setHeatmap(
        bitmap: Bitmap?,
        zoom: Int,
        xMin: Int,
        xMax: Int,
        yMin: Int,
        yMax: Int,
        trackPoints: List<DoubleArray>
    ) {
        heat = bitmap
        this.zoom = zoom
        xtMin = xMin
        xtMax = xMax
        ytMin = yMin
        ytMax = yMax
        this.trackPoints = trackPoints.toList()
        fitted = false
        post { fitView() }
        invalidate()
    }

    private fun fitView() {
        val heatBitmap = heat ?: return
        val widthPx = (xtMax - xtMin + 1) * 256
        val heightPx = (ytMax - ytMin + 1) * 256
        if (widthPx <= 0 || heightPx <= 0) return
        var scale = minOf(width.toFloat() / widthPx, height.toFloat() / heightPx)
        if (scale <= 0f || scale.isNaN()) scale = 0.25f
        mat.reset()
        mat.postScale(scale, scale)
        fitted = true
        invalidate()
    }

    fun setDark(dark: Boolean) {
        this.dark = dark
        invalidate()
    }

    fun setHeatAlpha(alpha: Float) {
        heatAlpha = maxOf(0.1f, minOf(1.0f, alpha))
        invalidate()
    }

    override fun onTouchEvent(event: MotionEvent): Boolean {
        gestureDetector.onTouchEvent(event)
        scaleGestureDetector.onTouchEvent(event)
        if (event.actionMasked == MotionEvent.ACTION_UP ||
            event.actionMasked == MotionEvent.ACTION_POINTER_UP
        ) {
            lastFocusX = 0f
            lastFocusY = 0f
        }
        return true
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        canvas.drawColor(if (dark) -15987182 else -1512722)
        drawBase(canvas)
        val heatBitmap = heat
        if (heatBitmap == null) {
            canvas.drawText("暂无热力数据，请先扫描本地轨迹", 40f, height / 2f, textPaint())
            drawOverlay(canvas)
            return
        }
        if (!fitted) fitView()
        drawTiles(canvas)
        heatPaint.alpha = (heatAlpha * 255f).toInt()
        canvas.drawBitmap(heatBitmap, mat, heatPaint)
        drawVectorOverlay(canvas)
        drawOverlay(canvas)
    }

    /**
     * 矢量细线叠加层：把轨迹点按与 HeatmapEngine.generate 相同的投影
     * （deg2x/deg2y，减去 bounds 左上角瓦片原点）转成热力图 bitmap 内的
     * 像素坐标，连成 polyline；再经当前视图矩阵 [mat] 画到屏幕上，
     * 因此缩放/平移时细线始终贴合热力图。点数 < 2 或开关关闭时不画。
     */
    private fun drawVectorOverlay(canvas: Canvas) {
        if (!vectorOverlayEnabled || trackPoints.size < 2) return
        val originX = xtMin * 256.0
        val originY = ytMin * 256.0
        val path = Path()
        var first = true
        for (point in trackPoints) {
            val x = (HeatmapEngine.deg2x(point[1], zoom) - originX).toFloat()
            val y = (HeatmapEngine.deg2y(point[0], zoom) - originY).toFloat()
            if (first) {
                path.moveTo(x, y)
                first = false
            } else {
                path.lineTo(x, y)
            }
        }
        canvas.save()
        canvas.concat(mat)
        canvas.drawPath(path, vectorPaint)
        canvas.restore()
    }

    private fun drawTiles(canvas: Canvas) {
        val loader = tiles ?: return
        val values = FloatArray(9)
        mat.getValues(values)
        val scaleX = values[0]
        val scaleY = values[4]
        val translateX = values[2]
        val translateY = values[5]
        val xStart = maxOf(Math.floor((-translateX / scaleX) / 256.0).toInt() - 1, xtMin)
        val yStart = maxOf(Math.floor((-translateY / scaleY) / 256.0).toInt() - 1, ytMin)
        val xEnd = minOf(Math.ceil(((width - translateX) / scaleX) / 256.0).toInt() + 1, xtMax)
        val yEnd = minOf(Math.ceil(((height - translateY) / scaleY) / 256.0).toInt() + 1, ytMax)
        val src = Rect(0, 0, 256, 256)
        val dst = Rect()
        for (tileX in xStart..xEnd) {
            for (tileY in yStart..yEnd) {
                val cachedTile = loader.getCachedTile(zoom, tileX, tileY, dark)
                if (cachedTile == null) {
                    loader.requestTile(zoom, tileX, tileY, dark) { postInvalidate() }
                } else {
                    val left = (tileX - xtMin) * 256 * scaleX + translateX
                    val top = (tileY - ytMin) * 256 * scaleY + translateY
                    dst.set(
                        left.toInt(), top.toInt(),
                        (left + scaleX * 256f).toInt(), (top + scaleY * 256f).toInt()
                    )
                    canvas.drawBitmap(cachedTile, src, dst, null)
                }
            }
        }
    }

    private fun drawBase(canvas: Canvas) {
        // 注意：以下条件与循环在反编译原文中即是如此（恒假/方向反），
        // 底图网格实际画不出来；此处原样保留，见文件头已知问题 1。
        val values = FloatArray(9)
        mat.getValues(values)
        val scaleX = values[0]
        val scaleY = values[4]
        val translateX = values[2]
        val translateY = values[5]
        val tileWidthPx = scaleX * 256f
        val tileHeightPx = scaleY * 256f
        val paint = Paint().apply {
            color = if (dark) 872415231 else 855638016
            style = Paint.Style.STROKE
            strokeWidth = 1f
        }
        val path = Path()
        if (tileWidthPx < 12f && tileWidthPx > width) {
            var x = translateX % tileWidthPx
            if (x < 0f) x += tileWidthPx
            while (x > width) {
                path.moveTo(x, 0f)
                path.lineTo(x, height.toFloat())
                x += tileWidthPx
            }
        }
        if (tileHeightPx < 12f && tileHeightPx > height) {
            var y = translateY % tileHeightPx
            if (y < 0f) y += tileHeightPx
            while (y > height) {
                path.moveTo(0f, y)
                path.lineTo(width.toFloat(), y)
                y += tileHeightPx
            }
        }
        canvas.drawPath(path, paint)
    }

    private fun drawLegend(canvas: Canvas) {
        val density = resources.displayMetrics.density
        val paint = Paint().apply {
            textSize = 10f * density
            color = if (dark) -1249293 else -13947082
        }
        val left = 10f * density
        val top = height - 22f * density
        val right = left + 100f * density
        val bottom = top + 5f * density
        val rect = RectF(left, top, right, bottom)
        val gradient = LinearGradient(
            left, top, right, bottom,
            16726832, -50384, Shader.TileMode.CLAMP
        )
        val gradientPaint = Paint().apply { shader = gradient }
        canvas.drawRect(rect, gradientPaint)
        val textY = top - 4f * density
        paint.textAlign = Paint.Align.RIGHT
        canvas.drawText("多", right - 2f * density, textY, paint)
        paint.textAlign = Paint.Align.LEFT
        canvas.drawText("少", left, textY, paint)
    }

    private fun drawOverlay(canvas: Canvas) {
        drawStatus(canvas)
        drawLegend(canvas)
    }

    private fun drawStatus(canvas: Canvas) {
        val density = resources.displayMetrics.density
        val paint = Paint().apply {
            textSize = 12f * density
            color = if (dark) -1249293 else -13947082
        }
        // 由 jadx 嵌套三元里的 5 段文案还原的等价分支（见文件头已知问题 2）。
        val loader = tiles
        val status = when {
            loader == null -> "离线网格底图"
            !loader.getOnlineEnabled() -> "离线网格 · 在线底图已关闭"
            loader.isOffline() -> "底图加载失败，已使用离线网格"
            loader.getPendingTiles() > 0 -> "在线底图加载中…"
            loader.getOkTiles() > 0 -> "在线底图"
            else -> "离线网格底图"
        }
        canvas.drawText(status, 10f * density, 22f * density, paint)
    }

    private fun textPaint(): Paint = Paint().apply {
        color = if (dark) -7696488 else -10854810
        textSize = 28f
    }
}

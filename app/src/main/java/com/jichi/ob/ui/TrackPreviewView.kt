package com.jichi.ob.ui

import com.jichi.ob.merge.StickerCore

import android.content.Context
import android.graphics.*
import android.util.AttributeSet
import android.view.GestureDetector
import android.view.MotionEvent
import android.view.ScaleGestureDetector
import android.view.View
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import com.jichi.ob.GpxToFitConverter
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min
import org.json.JSONArray
import org.json.JSONObject
import java.util.Locale

/**
 * v7.9.11 轨迹预览 + 透明贴纸组件（所见即所得）。
 *
 * 核心设计：**预览即贴纸** —— [stickerPreview] 开启时，onDraw 绘制的内容与
 * [exportTransparentPng] 完全一致（同一绘制函数、同一参数），用户在预览里看到的
 * 就是导出的 PNG。轨迹与数据卡**分区布局永不重叠**；轨迹可单指拖动、双指缩放、
 * 一键预设位置；海拔剖面是**立体等高线山体**（山体填充+侧壁厚度+等高线层+峰值标签），
 * 不再是平铺折线。
 *
 * 贴纸参数：
 * - [dataStyle]：数据卡样式（Strava 卡 / Outbase 角标 / 无数据卡）
 * - [items]：可编辑数据项（2~6 项，Outbase 式多选）
 * - [include3d]：Strava 卡内叠加立体等高线山体
 * - [lineColorMode]：Outbase 纯色/渐变线条颜色
 * - [textColorMode]：数据与标签文字颜色
 * - [posMode]/[dx]/[dy]/[scale]：轨迹位置（预设档位 + 手势拖动缩放）
 */
class TrackPreviewView @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0
) : android.widget.FrameLayout(context, attrs, defStyleAttr) {

    init {
        // v8.0.6-2: FrameLayout 默认 willNotDraw=true 会跳过 onDraw → WebView 懒初始化永不执行 → 预览白屏。
        // 必须显式关闭并提前初始化渲染器。
        setWillNotDraw(false)
        post { if (web == null) initWebRenderer() }
    }

    /**
     * v8.1.0 触控根治：预览态拦截一切触摸，事件全归本 View 手势（单指平移/双指缩放旋转倾角）。
     * 根因：子视图 WebView 会消费全部触摸，父 View onTouchEvent 永远收不到 → 轨迹拖不动历版本未除。
     */
    override fun onInterceptTouchEvent(ev: android.view.MotionEvent): Boolean {
        return stickerPreview
    }

    companion object {
        /** v8.1.2b: 轨迹粗细 6 档显示名（1=最细 … 6=最粗） */
        @JvmField
        val trackWidthNames = arrayOf("", "最细", "细", "中", "较粗", "粗", "最粗")

        /** v8.0.9: 品牌角标名（下标与 sticker_templates.html 的 BRANDS 严格一致；0=自有文字标；末项=自定义透明logo） */
        @JvmField
        val BRAND_NAMES = arrayOf(
            "鸡翅OB", "iGPSPORT", "迈金", "行者", "Wahoo", "佳明", "Strava", "咕咚",
            "黑鸟", "高驰", "MyWhoosh", "Zwift", "Keep", "Zepp", "Komoot", "松拓", "Outbase", "自定义"
        )
        @JvmField
        val BRAND_CUSTOM = BRAND_NAMES.size - 1
        const val MODE_TRACK = 0
        const val MODE_3D = 1

        const val STYLE_ORANGE = 0
        const val STYLE_SPEED = 1
        const val STYLE_ELEVATION = 2
        const val STYLE_TRANSPARENT = 3
        const val STYLE_SKY = 4

        // 贴纸数据卡样式（Strava 底部数据卡 / Outbase 右下角标 / 无数据卡）
        const val STICKER_STRAVA = 0
        const val STICKER_OUTBASE = 1
        const val STICKER_NONE = 2

        // 贴纸线条/字体颜色模式（渐变仅线条支持）
        const val COLOR_WHITE = 0
        const val COLOR_GRAY = 1
        const val COLOR_BLACK = 2
        const val COLOR_ORANGE = 3
        const val COLOR_SKY = 4
        const val COLOR_GRADIENT = 5
        val stickerLineNames = listOf("白", "灰", "黑", "橙", "天蓝", "渐变")
        val stickerTextNames = listOf("白", "灰", "黑", "橙", "天蓝")

        // 轨迹位置预设档位
        const val POS_CENTER = 0
        const val POS_TOP = 1
        const val POS_BOTTOM = 2
        const val POS_LEFT = 3
        const val POS_RIGHT = 4
        val posNames = listOf("居中", "偏上", "偏下", "偏左", "偏右")

        val styleNames = listOf("Strava橙经典", "Strava速度", "Strava海拔", "Outbase透明贴纸", "极简天蓝")
        val styleDesc = listOf("单色橙+发光", "按速度蓝→红", "按海拔黄→红", "纯色可叠底", "天蓝+发光")
        val styleColors = listOf(0xFFFC4C02.toInt(), 0xFFFFB020.toInt(), 0xFFF59E0B.toInt(), 0xFF111827.toInt(), 0xFF2B8CFF.toInt())

        fun stickerLineColor(mode: Int): Int = when (mode) {
            COLOR_WHITE -> 0xFFFFFFFF.toInt()
            COLOR_GRAY -> 0xFF9AA0A6.toInt()
            COLOR_ORANGE -> 0xFFFC4C02.toInt()
            COLOR_SKY -> 0xFF2B8CFF.toInt()
            else -> 0xFF111827.toInt()
        }
        fun stickerTextColor(mode: Int): Int = when (mode) {
            COLOR_WHITE -> 0xFFFFFFFF.toInt()
            COLOR_GRAY -> 0xFF9AA0A6.toInt()
            COLOR_ORANGE -> 0xFFFC4C02.toInt()
            COLOR_SKY -> 0xFF2B8CFF.toInt()
            else -> 0xFF111827.toInt()
        }
    }

    var points: List<GpxToFitConverter.TrackPoint> = emptyList()
        set(value) { field = value; invalidate() }

    var style: Int = STYLE_ORANGE
        set(value) { field = value; invalidate() }

    /** 轨迹线宽（像素，贴纸画布按 1024 等比缩放） */
    var lineWidth: Float = 5f
        set(value) { field = value; invalidate() }

    var lineAlpha: Float = 0.95f
        set(value) { field = value.coerceIn(0.1f, 1f); invalidate() }

    var glow: Boolean = false
        set(value) { field = value; invalidate() }

    // ===== 贴纸参数（预览即贴纸） =====

    /** 贴纸预览模式：onDraw 绘制内容与导出一致 */
    var stickerPreview: Boolean = true
        set(value) { field = value; invalidate() }

    /** 数据卡样式：Strava 卡 / Outbase 角标 / 无数据卡 */
    var dataStyle: Int = STICKER_STRAVA
        set(value) { field = value; invalidate() }

    /** Strava 卡内叠加立体等高线山体 */
    var include3d: Boolean = false
        set(value) { field = value; invalidate() }

    /** 线条颜色模式（仅 Outbase 透明贴纸样式使用；渐变=整条轨迹橙→天蓝） */
    var lineColorMode: Int = COLOR_BLACK
        set(value) { field = value; invalidate() }

    /** 数据/标签文字颜色 */
    var textColorMode: Int = COLOR_WHITE
        set(value) { field = value; invalidate() }

    /** 可编辑数据项（2~6 项） */
    var items: List<Int> = StickerCore.ITEM_DEFAULT
        set(value) { field = value; invalidate() }

    /** 轨迹位置预设档位（切换后重置 dx/dy 并配合 scale） */
    var posMode: Int = POS_CENTER
        set(value) { field = value; invalidate() }

    /** 轨迹位移（像素，画布等比；正=右/下）——手势拖动修改 */
    var dx: Float = 0f
        set(value) { field = value; invalidate() }

    var dy: Float = 0f
        set(value) { field = value; invalidate() }

    /** 轨迹缩放（双指缩放修改；1=铺满原始比例） */
    var scale: Float = 1f
        set(value) { field = value.coerceIn(0.35f, 2.5f); invalidate() }

    private val paint = Paint(Paint.ANTI_ALIAS_FLAG)
    private val fillPaint = Paint(Paint.ANTI_ALIAS_FLAG)

    // ================= v8.0.1 贴纸模板引擎（24 预设 + 组合器） =================

    /** 是否走模板渲染路径（true=模板/组合；false=旧版 dataStyle 逻辑，兼容保留） */
    var useTemplate: Boolean = false
        set(value) { field = value; invalidate() }

    var bgType: StickerCore.StickerBg = StickerCore.StickerBg.DEEP_SPACE
        set(value) { field = value; invalidate() }

    var trackType: StickerCore.StickerTrack = StickerCore.StickerTrack.ORANGE_GRAD
        set(value) { field = value; invalidate() }

    var layoutType: StickerCore.StickerLayout = StickerCore.StickerLayout.TRIPLE
        set(value) { field = value; invalidate() }

    var textType: StickerCore.StickerText = StickerCore.StickerText.WHITE
        set(value) { field = value; invalidate() }

    var glowOn: Boolean = true
        set(value) { field = value; invalidate() }

    /** 对比卡/年度总结 的"累计/往期"数据（由外部后台线程计算后注入；null=显示 —） */
    var summaryStats: StickerCore.SummaryStats? = null
        set(value) { field = value; invalidate() }

    /** v8.1.1c: 贴纸标题/地址（原硬编码"RIDING·青岛"），合并结果传入默认值，用户可在编辑面板修改 */
    var titleOverride: String? = null
        set(value) { field = value; scheduleWebRender() }

    /** v8.1.1c: 手输数据覆盖（FIT 里没有/不满意的数据可手输，空文本=恢复实际值）。key=数据键(distance/duration/avgSpeed/maxSpeed/climb/hr/power/kcal/cad/alt/altMax/altMin) */
    private val dataOverrides = mutableMapOf<String, String>()
    fun setDataOverride(key: String, value: String?) {
        if (value.isNullOrBlank()) dataOverrides.remove(key) else dataOverrides[key] = value.trim()
        scheduleWebRender()
    }
    fun clearDataOverrides() { dataOverrides.clear(); scheduleWebRender() }
    fun currentDataOverride(key: String): String? = dataOverrides[key]

    /** v8.0.2: 透明背景开关（true=跳过背景绘制，导出真正透明 PNG，可贴到相片） */
    var transparentBg: Boolean = false
        set(value) { field = value; invalidate() }

    /** v8.0.2: Outbase 式 3D 立体海拔带独立开关（数据区上方绘制橙渐变立体带） */
    var show3dBand: Boolean = false
        set(value) { field = value; invalidate() }

    /** v8.3.1: 3D 轨迹模式（平面/3D 二选一；3D=轨迹随海拔Z起伏+深度+可旋转视角，非海拔剖面立体化） */
    var track3d: Boolean = false
        set(value) { field = value; invalidate() }

    /** v8.3.1: 3D 轨迹视角（弧度）：rx=俯仰(前仰后翻) ry=左右旋转 */
    var track3dRx: Float = 0.85f
        set(value) { field = value.coerceIn(-0.15f, 1.1f); invalidate() }
    var track3dRy: Float = 0.58f
        set(value) { field = value.coerceIn(-0.9f, 0.9f); invalidate() }

    /** v8.0.2: 数据层开关（false=只保留轨迹+水印，可关掉角标/数据卡） */
    var dataLayerOn: Boolean = true
        set(value) { field = value; invalidate() }

    /** v8.0.2: 品牌水印开关（false=导出/预览均不带「鸡翅幸哲迈进OB」水印） */
    var watermarkOn: Boolean = true
        set(value) { field = value; invalidate() }

    /** v8.1.2b: 轨迹粗细 6 档（1=最细 … 6=最粗，默认 3=中；setter 上限曾漏改锁死为 3） */
    var trackWidth: Int = 3
        set(value) { field = value.coerceIn(1, 6); invalidate() }

    /** v8.0.9: 轨迹显示开关（false=隐藏轨迹与 3D 海拔带，只留数据/背景） */
    var trackOn: Boolean = true
        set(value) { field = value; invalidate() }

    /** v8.0.9: 品牌角标下标（0=鸡翅OB 文字；1..15=各品牌矢量 logo；16=Outbase；17=自定义透明logo，顺序与 HTML BRANDS 严格一致） */
    var brandIdx: Int = 0
        set(value) { field = value.coerceIn(0, BRAND_NAMES.size - 1); invalidate() }

    /** v8.1.1: 自定义透明 logo（base64 data URI，由 App 选图后注入；仅 brandIdx=BRAND_CUSTOM 时使用） */
    var badgeUrl: String? = null
        set(value) { field = value; invalidate() }

    /** v8.0.5: 照片叠加位图（照片分类模板用；null 时降级为深色底并提示选照片） */
    var overlayBitmap: Bitmap? = null
        set(value) { field = value; invalidate() }

    /** v8.0.7: 贴纸比例（1:1 / 3:4 / 9:16），预览与导出同源；切换后 WebView 自动按新画布重渲染 */
    var aspect: String = "1:1"
        set(value) { field = value; invalidate() }

    /** v8.0.7: 按当前比例解析导出宽高（heightPx<=0 时按 aspect 计算） */
    fun resolveExportSize(sizePx: Int, heightPx: Int = 0): Pair<Int, Int> {
        val w = sizePx
        val h = when {
            heightPx > 0 -> heightPx
            aspect == "3:4" -> w * 4 / 3
            aspect == "9:16" -> w * 16 / 9
            else -> w
        }
        return w to h
    }

    /** 应用 24 预设之一（模板参数展开，预览即导出） */
    fun applyTemplate(t: StickerCore.StickerTemplate) {
        useTemplate = true
        bgType = t.bg; trackType = t.track; layoutType = t.layout; textType = t.text; glowOn = t.glow
        invalidate()
    }

    /** 应用组合器参数（背景×轨迹×布局×字色×发光 = 自由混搭） */
    fun applyCombo(
        bg: StickerCore.StickerBg, track: StickerCore.StickerTrack,
        layout: StickerCore.StickerLayout, text: StickerCore.StickerText, glow: Boolean
    ) {
        useTemplate = true
        bgType = bg; trackType = track; layoutType = layout; textType = text; glowOn = glow
        invalidate()
    }

    fun exitTemplate() {
        useTemplate = false
        invalidate()
    }

    private fun stickerTextColorOf(t: StickerCore.StickerText): Int = when (t) {
        StickerCore.StickerText.WHITE -> 0xFFFFFFFF.toInt()
        StickerCore.StickerText.BLACK -> 0xFF111827.toInt()
        StickerCore.StickerText.ORANGE -> 0xFFFC4C02.toInt()
        StickerCore.StickerText.SKY -> 0xFF5AC8FA.toInt()
        StickerCore.StickerText.NEON_PINK -> 0xFFFF4FD8.toInt()
        StickerCore.StickerText.CREAM -> 0xFFF5E9D8.toInt()
    }

    /** v8.0.4: 模板缩略图（用真实轨迹渲染小样，供画廊横向滑动预览；无水印、无透明底） */
    fun renderThumb(t: StickerCore.StickerTemplate, sizePx: Int = 160): Bitmap {
        applyTemplate(t)
        val bmp = Bitmap.createBitmap(sizePx, sizePx, Bitmap.Config.ARGB_8888)
        val c = Canvas(bmp)
        val s = sizePx.toFloat()
        drawTemplateSticker(c, s, s, StickerCore.ITEM_DEFAULT, 0f, 0f, 0.52f, false, false)
        return bmp
    }

    // ===== 手势：单指拖动轨迹 + 左右滑动切换模板 + 双指缩放 + 双指旋转 =====
    private var rotation = 0f   // 轨迹旋转角（度），v8.0.3 起支持

    /** v8.0.7: 预览卡左右滑动切换模板回调（+1 下一页 / -1 上一页） */
    var onTemplateSwipe: ((Int) -> Unit)? = null
    private var swipeAccumX = 0f

    private val gestureDetector = GestureDetector(context, object : GestureDetector.SimpleOnGestureListener() {
        override fun onScroll(e1: MotionEvent?, e2: MotionEvent, distanceX: Float, distanceY: Float): Boolean {
            if (stickerPreview && points.isNotEmpty() && e2.pointerCount == 1) {
                /* v8.1.0: 单指一律平移轨迹（移除左右滑切模板手势——用户多次反馈误触拖不动）；
                   切模板由模板选择/左右箭头负责
                   v8.1.1: dx/dy 单位为 CSS px（HTML translate(dx px)），物理位移 = dx×density。
                   旧公式 dx -= distance/k（k=width/1024）放大了 density 倍 → 轨迹飞动；
                   改为 ÷density 实现 1:1 跟手；导出时按 CSS 视口宽比 k 换算（见 exportTemplatePngAsync） */
                val density = resources.displayMetrics.density
                dx -= distanceX / density
                dy -= distanceY / density
                pushTransform()
                return true
            }
            return false
        }
        override fun onDown(e: MotionEvent): Boolean {
            swipeAccumX = 0f
            return stickerPreview
        }
    })

    private val scaleDetector = ScaleGestureDetector(context, object : ScaleGestureDetector.SimpleOnScaleGestureListener() {
        override fun onScale(detector: ScaleGestureDetector): Boolean {
            // v8.0.3: 双指捏合只负责缩放；旋转由 onTouchEvent 独立跟踪（互不干扰，防误触）
            if (stickerPreview && points.isNotEmpty()) {
                scale *= detector.scaleFactor
                pushTransform()
                return true
            }
            return false
        }
    })

    private var twoFinger = false
    private var twoStartAngle = 0f
    private var twoStartMidY = 0f
    private var lastTouchX = 0f
    private var lastTouchY = 0f

    /** 轨迹纵倾角（前仰后倾，度，-70~70）：v8.1.0 纵深移动 */
    private var tiltX = 0f

    private fun angleOf(e: MotionEvent): Float {
        if (e.pointerCount < 2) return 0f
        val x0 = e.getX(0); val y0 = e.getY(0)
        val x1 = e.getX(1); val y1 = e.getY(1)
        return Math.toDegrees(Math.atan2((y1 - y0).toDouble(), (x1 - x0).toDouble())).toFloat()
    }

    /** 轨迹旋转（度，0-360），v8.0.3（避免与 View.setRotation 冲突） */
    fun setTrackRotation(deg: Float) {
        rotation = ((deg % 360f) + 360f) % 360f
        pushTransform()
    }

    fun getTrackRotation(): Float = rotation

    /** 按钮兜底：按角度步进旋转（正=顺时针，负=逆时针） */
    fun rotateTrackBy(deg: Float) {
        setTrackRotation(rotation + deg)
    }

    /** 按钮兜底：按系数缩放（1.15 放大 / 0.87 缩小），限制在 0.4x–4x */
    fun zoomTrackBy(factor: Float) {
        scale = (scale * factor).coerceIn(0.4f, 4f)
        pushTransform()
    }

    /** 按钮兜底：一键复位位置/缩放/旋转/倾角 */
    fun resetTrackTransform() {
        dx = 0f; dy = 0f; scale = 1f; rotation = 0f; tiltX = 0f
        pushTransform()
    }

    /** v8.3.1: 预览 WebView 同步 3D 轨迹视角（与导出同源） */
    private fun push3D() {
        if (webReady && web != null) {
            web?.evaluateJavascript("stickerBridge.set3DRotate($track3dRx,$track3dRy);", null)
        }
        invalidate()
    }

    /** v8.3.1: 3D 轨迹开关（true=3D 立体轨迹，false=平面）；3D 与发光互斥——开 3D 强制关发光 */
    fun setTrack3dMode(on: Boolean) {
        track3d = on
        if (on) glowOn = false
        if (webReady && web != null) {
            web?.evaluateJavascript("stickerBridge.set3DMode($on,$track3dRx,$track3dRy);", null)
        }
        invalidate()
    }

    /** v8.3.1: 一键复位 3D 视角 */
    fun resetTrack3d() {
        track3dRx = 0.85f; track3dRy = 0.58f
        if (webReady && web != null) {
            web?.evaluateJavascript("stickerBridge.set3DRotate($track3dRx,$track3dRy);", null)
        }
        invalidate()
    }

    fun isTrack3d(): Boolean = track3d

    /** v8.1.1: 方向键兜底——上下左右平移轨迹（单位：画布坐标 px，约 40 步进） */
    fun moveTrackBy(ddx: Float, ddy: Float) {
        dx += ddx
        dy += ddy
        pushTransform()
    }

    /** 按钮兜底：按角度步进纵倾（正=前仰，负=后仰），限制 -70°~70° */
    fun tiltTrackBy(deg: Float) {
        tiltX = (tiltX + deg).coerceIn(-70f, 70f)
        pushTransform()
    }

    fun getTiltX(): Float = tiltX

    override fun onTouchEvent(event: MotionEvent): Boolean {
        if (!stickerPreview) return super.onTouchEvent(event)
        val d = resources.displayMetrics.density
        when (event.actionMasked) {
            MotionEvent.ACTION_DOWN -> {
                twoFinger = false
                lastTouchX = event.x; lastTouchY = event.y
            }
            MotionEvent.ACTION_POINTER_DOWN -> {
                if (event.pointerCount >= 2) {
                    twoFinger = true
                    twoStartAngle = angleOf(event)
                    twoStartMidY = (event.getY(0) + event.getY(1)) / 2f
                }
            }
            MotionEvent.ACTION_MOVE -> {
                /* v8.3.1: 3D 轨迹模式——单指拖拽旋转轨迹视角（左右=Yaw，上下=Pitch） */
                if (track3d && !twoFinger) {
                    val dxT = event.x - lastTouchX
                    val dyT = event.y - lastTouchY
                    if (kotlin.math.abs(dxT) > 1.5f * d || kotlin.math.abs(dyT) > 1.5f * d) {
                        track3dRy = (track3dRy + dxT / (360f * d)).coerceIn(-0.9f, 0.9f)
                        track3dRx = (track3dRx + dyT / (360f * d)).coerceIn(-0.15f, 1.1f)
                        lastTouchX = event.x; lastTouchY = event.y
                        push3D()
                    }
                    return true
                }
                if (twoFinger && event.pointerCount >= 2) {
                    /* 双指旋转：独立手势通道，带死区防误触 */
                    val a = angleOf(event)
                    var dd = a - twoStartAngle
                    if (dd > 180f) dd -= 360f
                    if (dd < -180f) dd += 360f
                    if (kotlin.math.abs(dd) > 2f) {
                        rotation = (rotation + dd) % 360f
                        twoStartAngle = a
                        pushTransform()
                    }
                    /* v8.1.0 纵深倾角：双指中心垂直位移 → 前仰/后仰（带透视），死区防抖 */
                    val midY = (event.getY(0) + event.getY(1)) / 2f
                    val dyMid = midY - twoStartMidY
                    if (kotlin.math.abs(dyMid) > 2f * d) {
                        tiltX = (tiltX + dyMid / (6f * d)).coerceIn(-70f, 70f)
                        twoStartMidY = midY
                        pushTransform()
                    }
                }
            }
            MotionEvent.ACTION_POINTER_UP, MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL ->
                twoFinger = false
        }
        scaleDetector.onTouchEvent(event)
        gestureDetector.onTouchEvent(event)
        return true
    }

    /** 应用位置预设档位（以画布中心为锚）：居中/偏上/偏下/偏左/偏右 */
    fun applyPosMode() {
        scale = 1f
        when (posMode) {
            POS_TOP -> { dx = 0f; dy = -110f }
            POS_BOTTOM -> { dx = 0f; dy = 110f }
            POS_LEFT -> { dx = -110f; dy = 0f }
            POS_RIGHT -> { dx = 110f; dy = 0f }
            else -> { dx = 0f; dy = 0f }
        }
        pushTransform()
    }

    /** 贴纸数据统计（App 与 JVM 测试同一份实现） */
    fun computeStats(): StickerCore.TrackStats = StickerCore.computeStats(points)

    /**
     * 导出透明贴纸 PNG：与预览完全一致的绘制内容。
     * 1024×1024 透明背景，轨迹与数据卡分区布局，底部带软件名水印。
     */
    fun exportTransparentPng(
        sizePx: Int = 1024,
        dataStyle: Int = STICKER_STRAVA,
        include3d: Boolean = false,
        lineColorMode: Int = COLOR_BLACK,
        textColorMode: Int = COLOR_WHITE,
        watermark: Boolean = true,
        items: List<Int> = StickerCore.ITEM_DEFAULT,
        dx: Float = this.dx, dy: Float = this.dy, scale: Float = this.scale
    ): Bitmap {
        val bmp = Bitmap.createBitmap(sizePx, sizePx, Bitmap.Config.ARGB_8888)
        val c = Canvas(bmp)
        val s = sizePx.toFloat()
        drawSticker(c, s, s, dataStyle, include3d, lineColorMode, textColorMode, items, dx, dy, scale, watermark)
        return bmp
    }

    // ================= v8.0.1 模板渲染（预览与导出的唯一模板绘制路径） =================

    private fun drawTemplateSticker(
        c: Canvas, w: Float, h: Float,
        itms: List<Int>, ox: Float, oy: Float, sc: Float, wm: Boolean,
        tBg: Boolean = this.transparentBg
    ) {
        if (points.isEmpty()) {
            paint.color = 0xFF9AA0A6.toInt(); paint.style = Paint.Style.STROKE; paint.strokeWidth = 1f
            paint.textSize = 14f; paint.textAlign = Paint.Align.CENTER
            drawStickerText(c, "暂无轨迹数据", w / 2f, h / 2f)
            return
        }
        val s = min(w, h)
        if (!tBg) drawTemplateBg(c, s)
        // v8.0.5-2 安全边界（举一反三重构）：3D 带不再推数据区。
        // 数据基准固定为效果图 1:1 坐标；3D 带高度自适应收缩到「轨迹底部 ↔ 数据顶部」空隙内，
        // 彻底杜绝「3D 带开启 → 数据整体下移 → 末行压水印」的系统性问题。
        // v8.1.1c: 轨迹框与 HTML render 完全同口径（topY/trH 公式一致，含 eh 扣除），
        // 导出兜底路径与预览渲染轨迹位置/形状一致，不再固定系数压缩。
        val dhFactor = when (layoutType) {
            StickerCore.StickerLayout.POSTER -> 0.30f
            StickerCore.StickerLayout.TRIPLE -> 0.30f
            StickerCore.StickerLayout.GRID -> 0.28f
            StickerCore.StickerLayout.BIG -> 0.26f
            StickerCore.StickerLayout.BAR, StickerCore.StickerLayout.DUAL -> 0.20f
            else -> 0.205f
        }
        val topY = 0.115f * 1024 * s
        val dbPx = 0.092f * 1024 * s
        val dhPx = dhFactor * 1024 * s
        val gapPx = 0.030f * 1024 * s
        val hasEle = show3dBand && points.size >= 2
        val eh = if (hasEle) max(0.15f * h, 120f * s) else 0f
        val trH = max(0.30f * 1024 * s, h - topY - dbPx - dhPx - gapPx - eh)
        val trackLeft = 0.04f * w
        val trackTop = topY
        val trackBottom = topY + trH
        // 各布局数据顶部（效果图 1:1 基准）——3D 立体带收缩上限
        val dataTop = when (layoutType) {
            StickerCore.StickerLayout.CORNER -> s * 0.13f
            StickerCore.StickerLayout.TRIPLE -> s * 0.62f
            StickerCore.StickerLayout.BIG -> s * 0.60f
            StickerCore.StickerLayout.DUAL -> s * 0.58f
            StickerCore.StickerLayout.GRID -> s * 0.56f
            StickerCore.StickerLayout.BAR -> s * 0.82f
            StickerCore.StickerLayout.POSTER -> s * 0.20f
            else -> s * 0.62f
        }
        val bandH = if (show3dBand && layoutType != StickerCore.StickerLayout.GRID &&
            layoutType != StickerCore.StickerLayout.BAR && layoutType != StickerCore.StickerLayout.POSTER
        ) s * 0.10f else 0f
        // v8.0.3: 轨迹自由旋转（双指旋转手势），以轨迹区中心为轴
        val rot = getTrackRotation()
        if (rot != 0f) {
            val cx = w / 2f + ox * sc
            val cy = (trackTop + trackBottom) * 0.5f + oy * sc
            c.save()
            c.rotate(rot, cx, cy)
            drawTemplateTrack(c, trackLeft, trackTop, 0.96f * w, trackBottom, ox, oy, sc)
            c.restore()
        } else {
            drawTemplateTrack(c, trackLeft, trackTop, 0.96f * w, trackBottom, ox, oy, sc)
        }
        // Outbase 式 3D 立体海拔带：橙渐变立体带，自适应收缩在「轨迹底部 ↔ 数据顶部」空隙内，不盖数据
        // CORNER 数据在顶部（0.13s）、带在轨迹下方（0.82-0.92s），不受数据顶部限制（复古游戏/纯黑极简还原）
        val bandTop = trackBottom + s * 0.02f
        val bandBottom = if (dataTop > bandTop) min(bandTop + bandH, dataTop - s * 0.02f) else bandTop + bandH
        if (show3dBand && bandBottom > bandTop + s * 0.01f) {
            drawTerrainBand(c, s * 0.05f, bandTop, s * 0.95f, bandBottom, ice = false)
        }
        val txtColor = stickerTextColorOf(textType)
        // v8.0.5-2：数据基准固定（效果图 1:1），不再随 3D 带偏移 → 末行永不越过水印安全线
        val dataOffset = 0f
        if (dataLayerOn) drawTemplateLayout(c, s, txtColor, itms, dataOffset)
        if (wm && watermarkOn) drawWatermark(c, s, txtColor)
    }

    // ---------- 背景（23 种，纯 Canvas 装饰，零地图依赖） ----------

    private fun drawTemplateBg(c: Canvas, s: Float) {
        when (bgType) {
            StickerCore.StickerBg.DEEP_SPACE -> { fillGrad(c, s, 0xFF0B1026.toInt(), 0xFF1B2440.toInt()); drawStars(c, s, 7, 42, 0x99) }
            StickerCore.StickerBg.CHECKER -> { drawChecker(c, s) }
            StickerCore.StickerBg.NEON -> { fillGrad(c, s, 0xFF1A0533.toInt(), 0xFF4C1D95.toInt()); drawStars(c, s, 11, 26, 0x77) }
            StickerCore.StickerBg.PURE_BLACK -> { fillGrad(c, s, 0xFF000000.toInt(), 0xFF0A0A0F.toInt()) }
            StickerCore.StickerBg.MINIMAL_WHITE -> { fillGrad(c, s, 0xFFFFFFFF.toInt(), 0xFFF2F3F5.toInt()) }
            StickerCore.StickerBg.CREAM -> { fillGrad(c, s, 0xFFFBF5EA.toInt(), 0xFFF2E7D3.toInt()) }
            StickerCore.StickerBg.LIGHT_GRAY -> { fillGrad(c, s, 0xFFF4F4F5.toInt(), 0xFFE4E4E7.toInt()); drawRoadGrid(c, s, 0x1A111827.toInt()) }
            StickerCore.StickerBg.WARM_POSTER -> { fillGrad(c, s, 0xFFFFF7ED.toInt(), 0xFFFFE8CC.toInt()) }
            StickerCore.StickerBg.MAP_GRID -> { fillGrad(c, s, 0xFFEFF3F6.toInt(), 0xFFDDE5EC.toInt()); drawRoadGrid(c, s, 0x3397A3B0.toInt()) }
            StickerCore.StickerBg.SATELLITE -> { fillGrad(c, s, 0xFF0D1B2A.toInt(), 0xFF1B3A4B.toInt()); drawSatellite(c, s) }
            StickerCore.StickerBg.LIGHT_MAP -> { fillGrad(c, s, 0xFFF6F1E7.toInt(), 0xFFEAE2D2.toInt()); drawLightMap(c, s) }
            StickerCore.StickerBg.CONTOUR -> { fillGrad(c, s, 0xFF101418.toInt(), 0xFF1C242C.toInt()); drawContours(c, s) }
            StickerCore.StickerBg.HEAT_BG -> { fillGrad(c, s, 0xFF0A0A0A.toInt(), 0xFF3B0A0A.toInt()) }
            StickerCore.StickerBg.ORANGE_BAND -> { fillGrad(c, s, 0xFF14100C.toInt(), 0xFF3A2410.toInt()) }
            StickerCore.StickerBg.ICE_BAND -> { fillGrad(c, s, 0xFF07131F.toInt(), 0xFF0E3A4A.toInt()) }
            StickerCore.StickerBg.LIGHT_TRAIL -> { fillGrad(c, s, 0xFF05030F.toInt(), 0xFF1A0E33.toInt()) }
            StickerCore.StickerBg.DUAL_DARK -> { fillGrad(c, s, 0xFF0D1017.toInt(), 0xFF1E2430.toInt()) }
            StickerCore.StickerBg.POSTER_ORANGE -> { fillGrad(c, s, 0xFFFC4C02.toInt(), 0xFFFF8A3C.toInt()) }
            StickerCore.StickerBg.RETRO_PURPLE -> { fillGrad(c, s, 0xFF2D1B4E.toInt(), 0xFF6D28D9.toInt()); drawStars(c, s, 5, 30, 0x66) }
            StickerCore.StickerBg.ANNUAL_DARK -> { fillGrad(c, s, 0xFF0A0E1C.toInt(), 0xFF16233D.toInt()); drawStars(c, s, 9, 50, 0x88) }
            // v8.0.5 照片类背景（效果图还原：透明叠加/磨砂玻璃/双图拼接）
            StickerCore.StickerBg.PHOTO_OVERLAY,
            StickerCore.StickerBg.FROSTED,
            StickerCore.StickerBg.PHOTO_SPLIT -> { drawPhotoBg(c, s, bgType) }
        }
    }

    /** v8.0.5: 照片背景绘制（透明叠加=全幅照片+轻遮罩；磨砂玻璃=模糊照片+半透明底；双图拼接=上下两半） */
    private fun drawPhotoBg(c: Canvas, s: Float, t: StickerCore.StickerBg) {
        val photo = overlayBitmap
        if (photo == null) {
            // 未选照片：透明叠加=右侧蓝色图片占位框（效果图 fx3 1:1）；其余=深色底+提示条
            if (t == StickerCore.StickerBg.PHOTO_OVERLAY) {
                fillGrad(c, s, 0xFF0B1026.toInt(), 0xFF1B2440.toInt())
                drawStars(c, s, 7, 7, 0x88)
                // 右侧蓝色图片加载占位框（fx3 效果图还原）
                val l = s * 0.45f; val r = s * 0.95f; val top = s * 0.12f; val b = s * 0.88f
                paint.reset(); paint.isAntiAlias = true
                paint.color = 0x332B8CFF.toInt()
                c.drawRoundRect(l, top, r, b, s * 0.02f, s * 0.02f, paint)
                paint.style = Paint.Style.STROKE; paint.strokeWidth = s * 0.004f
                paint.color = 0x662B8CFF.toInt()
                c.drawRoundRect(l, top, r, b, s * 0.02f, s * 0.02f, paint)
                paint.style = Paint.Style.FILL
                paint.textSize = s * 0.035f
                paint.textAlign = Paint.Align.CENTER
                paint.color = 0x99FFFFFF.toInt()
                c.drawText("照片", (l + r) / 2f, (top + b) / 2f, paint)
                return
            }
            fillGrad(c, s, 0xFF0B1026.toInt(), 0xFF1B2440.toInt())
            drawStars(c, s, 7, 7, 0x88)
            paint.reset(); paint.isAntiAlias = true
            paint.textSize = s * 0.045f
            paint.textAlign = Paint.Align.CENTER
            paint.color = 0x66FFFFFF.toInt()
            c.drawText("点击「选照片」添加背景图", s / 2f, s * 0.5f, paint)
            return
        }
        val shader = BitmapShader(photo, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP)
        val matrix = Matrix()
        val scale = maxOf(s / photo.width, s / photo.height)
        matrix.setScale(scale, scale)
        matrix.postTranslate((s - photo.width * scale) / 2f, (s - photo.height * scale) / 2f)
        shader.setLocalMatrix(matrix)
        when (t) {
            StickerCore.StickerBg.PHOTO_SPLIT -> {
                // 上半照片、下半深色底（双图拼接：上半可再叠轨迹）
                paint.reset(); paint.isAntiAlias = true
                paint.shader = shader
                c.drawRect(0f, 0f, s, s * 0.55f, paint)
                paint.shader = null
                fillGrad(c, s, 0xFF0B1026.toInt(), 0xFF1B2440.toInt())
            }
            StickerCore.StickerBg.FROSTED -> {
                // 磨砂：全幅照片 + 半透明深色玻璃层
                paint.reset(); paint.isAntiAlias = true
                paint.shader = shader
                c.drawRect(0f, 0f, s, s, paint)
                paint.shader = null
                fillGrad(c, s, 0xAA0B1026.toInt(), 0x991B2440.toInt())
            }
            else -> {
                // 透明叠加：照片填右侧占位框（fx3：左侧数据竖排 + 右侧照片）
                paint.reset(); paint.isAntiAlias = true
                val l = s * 0.45f; val r = s * 0.95f; val top = s * 0.12f; val b = s * 0.88f
                // 裁切到右侧圆角框
                val path = android.graphics.Path().apply {
                    addRoundRect(l, top, r, b, s * 0.02f, s * 0.02f, android.graphics.Path.Direction.CW)
                }
                c.save()
                c.clipPath(path)
                paint.shader = shader
                c.drawRect(l, top, r, b, paint)
                paint.shader = null
                c.restore()
                // 左侧轻遮罩保证数据可读
                paint.reset(); paint.isAntiAlias = true
                paint.color = 0x33000000.toInt()
                c.drawRect(0f, 0f, s * 0.45f, s, paint)
            }
        }
    }

    private fun fillGrad(c: Canvas, s: Float, top: Int, bottom: Int) {
        fillPaint.shader = LinearGradient(0f, 0f, s * 0.25f, s, top, bottom, Shader.TileMode.CLAMP)
        c.drawRect(0f, 0f, s, s, fillPaint)
        fillPaint.shader = null
    }

    private fun drawStars(c: Canvas, s: Float, seed: Int, n: Int, alpha: Int) {
        val rnd = java.util.Random(seed.toLong())
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.FILL
        for (i in 0 until n) {
            val x = rnd.nextFloat() * s; val y = rnd.nextFloat() * s * 0.85f
            val rr = 1f + rnd.nextFloat() * 2.2f
            paint.color = Color.argb(alpha, 255, 255, 255)
            c.drawCircle(x, y, rr, paint)
        }
    }

    private fun drawChecker(c: Canvas, s: Float) {
        val n = 8; val cell = s / n
        fillPaint.color = 0xFF101014.toInt()
        c.drawRect(0f, 0f, s, s, fillPaint)
        fillPaint.color = 0xFF2A2A32.toInt()
        for (i in 0 until n) for (j in 0 until n) {
            if ((i + j) % 2 == 0) c.drawRect(i * cell, j * cell, (i + 1) * cell, (j + 1) * cell, fillPaint)
        }
        // 顶部微光
        fillPaint.color = 0x14FFFFFF.toInt()
        c.drawRect(0f, 0f, s, s * 0.05f, fillPaint)
    }

    private fun drawRoadGrid(c: Canvas, s: Float, gridColor: Int) {
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.STROKE; paint.strokeWidth = max(s * 0.0012f, 0.8f)
        paint.color = gridColor
        for (i in 1 until 9) { c.drawLine(i * s / 9f, 0f, i * s / 9f, s, paint); c.drawLine(0f, i * s / 9f, s, i * s / 9f, paint) }
        // 道路曲线（贝塞尔）
        paint.strokeWidth = max(s * 0.006f, 2f); paint.color = Color.argb(Color.alpha(gridColor) + 30, 0x9A, 0xA6, 0xB3)
        val p1 = Path().apply { moveTo(-s * 0.05f, s * 0.3f); cubicTo(s * 0.3f, s * 0.1f, s * 0.6f, s * 0.55f, s * 1.05f, s * 0.35f) }
        c.drawPath(p1, paint)
        paint.strokeWidth = max(s * 0.004f, 1.5f)
        val p2 = Path().apply { moveTo(s * 0.4f, -s * 0.05f); cubicTo(s * 0.25f, s * 0.35f, s * 0.75f, s * 0.5f, s * 0.55f, s * 1.05f) }
        c.drawPath(p2, paint)
    }

    private fun drawSatellite(c: Canvas, s: Float) {
        // 深色卫星质感：随机亮块 + 道路网
        val rnd = java.util.Random(23L)
        fillPaint.style = Paint.Style.FILL
        for (i in 0 until 14) {
            val x = rnd.nextFloat() * s; val y = rnd.nextFloat() * s
            val w = (0.05f + rnd.nextFloat() * 0.16f) * s; val h = (0.05f + rnd.nextFloat() * 0.14f) * s
            fillPaint.color = Color.argb(0x26, 0x9C, 0xE8, 0xFF)
            c.drawRoundRect(x, y, x + w, y + h, w * 0.2f, h * 0.2f, fillPaint)
        }
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.STROKE; paint.strokeWidth = max(s * 0.003f, 1.2f)
        paint.color = 0x334F7B9E.toInt()
        val p1 = Path().apply { moveTo(-s * 0.05f, s * 0.25f); cubicTo(s * 0.35f, s * 0.4f, s * 0.55f, s * 0.1f, s * 1.05f, s * 0.45f) }
        val p2 = Path().apply { moveTo(s * 0.2f, -s * 0.05f); cubicTo(s * 0.15f, s * 0.45f, s * 0.7f, s * 0.6f, s * 0.8f, s * 1.05f) }
        c.drawPath(p1, paint); c.drawPath(p2, paint)
    }

    private fun drawLightMap(c: Canvas, s: Float) {
        // 浅色地图：淡绿/淡蓝区块 + 灰白道路
        fillPaint.style = Paint.Style.FILL
        fillPaint.color = 0x66C6E7C0.toInt()
        c.drawRoundRect(s * 0.08f, s * 0.12f, s * 0.55f, s * 0.5f, s * 0.03f, s * 0.03f, fillPaint)
        fillPaint.color = 0x66A8D2E8.toInt()
        c.drawRoundRect(s * 0.5f, s * 0.45f, s * 0.95f, s * 0.9f, s * 0.03f, s * 0.03f, fillPaint)
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.STROKE; paint.strokeWidth = max(s * 0.007f, 2.5f)
        paint.color = 0xFFFFFFFF.toInt(); paint.strokeCap = Paint.Cap.ROUND
        val p1 = Path().apply { moveTo(-s * 0.05f, s * 0.35f); cubicTo(s * 0.3f, s * 0.5f, s * 0.6f, s * 0.2f, s * 1.05f, s * 0.6f) }
        c.drawPath(p1, paint)
        paint.strokeWidth = max(s * 0.005f, 2f)
        val p2 = Path().apply { moveTo(s * 0.35f, -s * 0.05f); cubicTo(s * 0.4f, s * 0.4f, s * 0.25f, s * 0.6f, s * 0.6f, s * 1.05f) }
        c.drawPath(p2, paint)
    }

    private fun drawContours(c: Canvas, s: Float) {
        // 等高线：深底 + 多层不规则同心曲线
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.STROKE; paint.strokeWidth = max(s * 0.0015f, 1f)
        val colors = intArrayOf(0x33F1632A.toInt(), 0x2E7CB342.toInt(), 0x2E29B6F6.toInt(), 0x33E1B98F.toInt())
        for (k in 0 until 4) {
            paint.color = colors[k]
            val cx = s * (0.5f + k * 0.08f); val cy = s * (0.42f + k * 0.1f)
            val rx = s * (0.12f + k * 0.14f); val ry = rx * 0.62f
            val path = Path().apply {
                moveTo(cx - rx, cy)
                cubicTo(cx - rx * 0.5f, cy - ry, cx + rx * 0.5f, cy - ry, cx + rx, cy)
                cubicTo(cx + rx * 0.5f, cy + ry, cx - rx * 0.5f, cy + ry, cx - rx, cy)
                close()
            }
            c.drawPath(path, paint)
            c.drawPath(Path(path).apply { offset(-s * 0.03f, s * 0.045f) }, paint)
        }
    }

    // ---------- 轨迹风格（8 种） ----------

    private fun drawTemplateTrack(c: Canvas, l: Float, t: Float, r: Float, b: Float, ox: Float, oy: Float, sc: Float) {
        val pts = points
        if (pts.size < 2) return
        val w = r - l; val h = b - t
        // 3D 立体带（橙带/冰蓝）：固定区域渲染（不参与拖动缩放，对齐"海拔带固定展示"定位）
        if ((trackType == StickerCore.StickerTrack.ICE_3D) || (trackType == StickerCore.StickerTrack.ORANGE_GRAD && bgType == StickerCore.StickerBg.ORANGE_BAND)) {
            drawTerrainBand(c, l, t, r, b, ice = trackType == StickerCore.StickerTrack.ICE_3D)
            return
        }
        val projected = StickerCore.projectTrackEx(pts, w, h, 18f, ox, oy, sc)
        if (projected.size < 2) return
        when (trackType) {
            StickerCore.StickerTrack.WHITE -> { drawGlowPath(c, projected, glowOn && !track3d); drawSimpleLine(c, projected, 0xFFFFFFFF.toInt(), lineWidth, 1f) }
            StickerCore.StickerTrack.BLACK_FINE -> drawSimpleLine(c, projected, 0xFF111827.toInt(), lineWidth * 0.8f, 1f)
            StickerCore.StickerTrack.GRAY_FINE -> drawSimpleLine(c, projected, 0xFF9AA0A6.toInt(), lineWidth * 0.8f, 1f)
            StickerCore.StickerTrack.ORANGE_GRAD -> { drawGlowPath(c, projected, glowOn && !track3d); drawGradientSegments(c, projected, pts) }
            StickerCore.StickerTrack.NEON -> drawNeon(c, projected)
            StickerCore.StickerTrack.HEAT -> {
                val speeds = StickerCore.pointSpeeds(pts)
                var spMin = Float.MAX_VALUE; var spMax = 0f
                for (v in speeds) { if (v > 0.1f) { if (v < spMin) spMin = v; if (v > spMax) spMax = v } }
                if (spMax <= spMin) spMax = spMin + 1f
                drawBanded(c, projected, pts, speeds, spMin, spMax) { v -> speedColor(v) }
            }
            StickerCore.StickerTrack.ICE_3D, StickerCore.StickerTrack.PHANTOM -> drawPhantom(c, projected)
        }
    }

    private fun drawSimpleLine(c: Canvas, projected: List<Pair<Float, Float>>, color: Int, width: Float, alpha: Float) {
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.STROKE; paint.strokeCap = Paint.Cap.ROUND; paint.strokeJoin = Paint.Join.ROUND
        paint.strokeWidth = width; paint.color = Color.argb((alpha * 255).toInt(), Color.red(color), Color.green(color), Color.blue(color))
        val path = Path()
        projected.forEachIndexed { i, (x, y) -> if (i == 0) path.moveTo(x, y) else path.lineTo(x, y) }
        c.drawPath(path, paint)
    }

    private fun drawGlowPath(c: Canvas, projected: List<Pair<Float, Float>>, on: Boolean) {
        if (!on) return
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.STROKE; paint.strokeCap = Paint.Cap.ROUND; paint.strokeJoin = Paint.Join.ROUND
        paint.strokeWidth = lineWidth * 4f
        paint.color = Color.argb(0x38, 0x2B, 0x8C, 0xFF)
        val gp = Path()
        projected.forEachIndexed { i, (x, y) -> if (i == 0) gp.moveTo(x, y) else gp.lineTo(x, y) }
        c.drawPath(gp, paint)
    }

    private fun drawNeon(c: Canvas, projected: List<Pair<Float, Float>>) {
        // 霓虹：外发光 + 品红→紫→青渐变细线
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.STROKE; paint.strokeCap = Paint.Cap.ROUND; paint.strokeJoin = Paint.Join.ROUND
        paint.strokeWidth = lineWidth * 5f; paint.color = 0x44FF4FD8.toInt()
        val gp = Path()
        projected.forEachIndexed { i, (x, y) -> if (i == 0) gp.moveTo(x, y) else gp.lineTo(x, y) }
        c.drawPath(gp, paint)
        paint.strokeWidth = lineWidth * 1.4f
        for (i in 0 until projected.size - 1) {
            val f = i.toFloat() / max(projected.size - 2, 1)
            val cc = when {
                f < 0.5f -> lerp(0xFFFF4FD8.toInt(), 0xFFA855F7.toInt(), f * 2f)
                else -> lerp(0xFFA855F7.toInt(), 0xFF22D3EE.toInt(), (f - 0.5f) * 2f)
            }
            paint.color = Color.argb(0xF2, Color.red(cc), Color.green(cc), Color.blue(cc))
            c.drawLine(projected[i].first, projected[i].second, projected[i + 1].first, projected[i + 1].second, paint)
        }
    }

    private fun drawPhantom(c: Canvas, projected: List<Pair<Float, Float>>) {
        // 光绘拖影：宽→窄 多层渐隐
        for (layer in 0 until 4) {
            val width = lineWidth * (1f + (3 - layer) * 1.8f)
            val alpha = 0x14 + layer * 0x16
            paint.reset(); paint.isAntiAlias = true
            paint.style = Paint.Style.STROKE; paint.strokeCap = Paint.Cap.ROUND; paint.strokeJoin = Paint.Join.ROUND
            paint.strokeWidth = width; paint.color = Color.argb(alpha, 0x7C, 0xC0, 0xFF)
            val path = Path()
            projected.forEachIndexed { i, (x, y) -> if (i == 0) path.moveTo(x, y) else path.lineTo(x, y) }
            c.drawPath(path, paint)
        }
        drawSimpleLine(c, projected, 0xFF9BE8FF.toInt(), lineWidth * 1.1f, 0.95f)
    }

    /** 立体海拔带（橙/冰蓝渐变，Outbase 风格"从地面升起的山体"）+ 等高线 + 最高/最低点标记 */
    private fun drawTerrainBand(c: Canvas, l: Float, t: Float, r: Float, b: Float, ice: Boolean) {
        val geom = StickerCore.elevationTerrain(points, l, t, r, b, (r - l) * 0.022f, 5)
        if (geom.profile.size < 2) return
        val topC = if (ice) 0xFF4FC3F7.toInt() else 0xFFF1632A.toInt()
        val deepC = if (ice) 0xFF0E4A6A.toInt() else 0xFFD94E1E.toInt()
        val softC = if (ice) 0x664FC3F7.toInt() else 0x66F1632A.toInt()
        val band = Path()
        geom.side.forEachIndexed { i, (x, y) -> if (i == 0) band.moveTo(x, y) else band.lineTo(x, y) }
        geom.profile.asReversed().forEach { (x, y) -> band.lineTo(x, y) }
        band.close()
        fillPaint.shader = LinearGradient(l, b, l, t, deepC, softC, Shader.TileMode.CLAMP)
        c.drawPath(band, fillPaint)
        fillPaint.shader = null
        // 等高线：层叠水平截线（体现"从地面升起"的层次）
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.STROKE
        paint.strokeWidth = max((r - l) * 0.0025f, 1f)
        geom.contours.forEachIndexed { k, seg ->
            if (seg.size >= 2) {
                paint.color = if (ice) Color.argb(0x30 + k * 8, 0x9B, 0xE8, 0xFF) else Color.argb(0x30 + k * 8, 0xFF, 0xD9, 0xB8)
                val p = Path()
                seg.forEachIndexed { i, (x, y) -> if (i == 0) p.moveTo(x, y) else p.lineTo(x, y) }
                c.drawPath(p, paint)
            }
        }
        val body = Path()
        geom.profile.forEachIndexed { i, (x, y) -> if (i == 0) body.moveTo(x, y) else body.lineTo(x, y) }
        body.lineTo(r, b); body.lineTo(l, b); body.close()
        fillPaint.color = if (ice) 0x204FC3F7 else 0x26F1632A
        c.drawPath(body, fillPaint)
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.STROKE; paint.strokeCap = Paint.Cap.ROUND; paint.strokeJoin = Paint.Join.ROUND
        paint.strokeWidth = max((r - l) * 0.005f, 1.8f); paint.color = topC
        val topLine = Path()
        geom.profile.forEachIndexed { i, (x, y) -> if (i == 0) topLine.moveTo(x, y) else topLine.lineTo(x, y) }
        c.drawPath(topLine, paint)
        // 最高点 / 最低点：定位在曲线上的实际位置，圆点 + ▲/▼ 高度标签（描边保证贴照片后清晰）
        var iMax = 0; var iMin = 0
        for (i in geom.profile.indices) {
            if (geom.profile[i].second < geom.profile[iMax].second) iMax = i
            if (geom.profile[i].second > geom.profile[iMin].second) iMin = i
        }
        val (mx, my) = geom.profile[iMax]
        val (nx, ny) = geom.profile[iMin]
        val dotR = max((r - l) * 0.009f, 3.5f)
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.FILL
        paint.color = if (ice) 0xFFBFE9FF.toInt() else 0xFFFFF1E6.toInt()
        c.drawCircle(mx, my, dotR, paint)
        paint.style = Paint.Style.STROKE; paint.strokeWidth = max(dotR * 0.35f, 1.5f)
        paint.color = topC
        c.drawCircle(mx, my, dotR, paint)
        paint.reset(); paint.isAntiAlias = true
        paint.textAlign = Paint.Align.CENTER
        val lblSize = max((r - l) * 0.024f, 9f)
        paint.textSize = lblSize
        paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD)
        val hiTxt = String.format(java.util.Locale.US, "▲ %.0fm", geom.eMax)
        val loTxt = String.format(java.util.Locale.US, "▼ %.0fm", geom.eMin)
        drawStickerText(c, hiTxt, mx, (my - dotR * 2.2f).coerceAtLeast(t + lblSize), if (ice) 0xFFE3F6FF.toInt() else 0xFFFFF6EE.toInt())
        drawStickerText(c, loTxt, nx, (ny + dotR * 2.2f + lblSize * 0.8f).coerceAtMost(b - lblSize * 1.2f), if (ice) 0xFFE3F6FF.toInt() else 0xFFFFF6EE.toInt())
    }

    // ---------- 数据布局（7 种，透明数字堆叠，无大黑框） ----------

    private fun drawTemplateLayout(c: Canvas, s: Float, txtColor: Int, itms: List<Int>, off: Float = 0f) {
        when (layoutType) {
            StickerCore.StickerLayout.TRIPLE -> drawLayoutTriple(c, s, txtColor, itms, off)
            StickerCore.StickerLayout.CORNER -> drawLayoutCorner(c, s, txtColor, itms, off)
            StickerCore.StickerLayout.GRID -> drawLayoutGrid(c, s, txtColor, itms, off)
            StickerCore.StickerLayout.BIG -> drawLayoutBig(c, s, txtColor, itms, off)
            StickerCore.StickerLayout.DUAL -> drawLayoutDual(c, s, txtColor, itms, off)
            StickerCore.StickerLayout.BAR -> drawLayoutBar(c, s, txtColor, itms, off)
            StickerCore.StickerLayout.POSTER -> drawLayoutPoster(c, s, txtColor, itms, off)
        }
    }

    /**
     * v8.0.2 重叠规范：文本自适应收缩。
     * 当文本超过可用宽度时自动缩小字号（保底 minRatio），保证数字/单位/标签不重叠不溢出。
     */
    private fun fitTextSize(text: String, baseSize: Float, maxW: Float, minRatio: Float = 0.62f): Float {
        paint.textSize = baseSize
        var size = baseSize
        while (size > baseSize * minRatio && paint.measureText(text) > maxW) {
            size *= 0.9f
            paint.textSize = size
        }
        return size
    }

    /**
     * v8.0.3: 描边文字（halo 双画）——透明背景叠加到照片后依然清晰可读。
     * 亮字深描边、暗字浅描边；描边宽度随字号自适应；保持 paint 状态不破坏调用方。
     */
    private fun drawStickerText(c: Canvas, text: String, x: Float, y: Float, fillColor: Int = paint.color, maxW: Float = Float.MAX_VALUE) {
        val pc = paint.color
        val style = paint.style
        val sw = paint.strokeWidth
        paint.color = fillColor
        val r = Color.red(fillColor); val g = Color.green(fillColor); val b = Color.blue(fillColor)
        val lum = r * 0.299f + g * 0.587f + b * 0.114f
        // v8.0.5 数据不压图：文本超宽时先缩数字精度（12.34→12.3→12），锁字号不缩小
        var t = text
        if (maxW.isFinite() && paint.measureText(t) > maxW) {
            var guard = 0
            while (paint.measureText(t) > maxW && guard < 4) {
                val nxt = StickerCore.shrinkNum(t)
                if (nxt == t) break
                t = nxt; guard++
            }
        }
        paint.style = Paint.Style.STROKE
        paint.strokeWidth = max(paint.textSize * 0.10f, 2.5f)
        paint.strokeCap = Paint.Cap.ROUND
        paint.strokeJoin = Paint.Join.ROUND
        paint.color = if (lum > 140f) 0xE6202020.toInt() else 0xCCFFFFFF.toInt()
        c.drawText(t, x, y, paint)
        paint.style = Paint.Style.FILL
        paint.color = fillColor
        c.drawText(t, x, y, paint)
        paint.color = pc
        paint.style = style
        paint.strokeWidth = sw
    }

    // ================= 效果图 1:1 布局（v8.0.5：按 28 帧效果图坐标重写） =================

    /** M1 左列三行（1 深空橙焰 / 2 黑白棋盘 / 3 霓虹夜跑 / 5 极简白 / 6 奶油纸感 / 8 暖白海报 /
     *  9 地图网格 / 10 深色卫星 / 11 浅色地图 / 12 等高线 / 13 速度热力 / 14 3D橙带 / 16 光绘拖影）
     *  数字+小单位同行（单位右上）、标签在数字下方，左列三行，水印底部居中 */
    private fun drawLayoutTriple(c: Canvas, s: Float, txtColor: Int, itms: List<Int>, off: Float) {
        val show = itms.take(3)
        if (show.isEmpty()) return
        val stats = computeStats()
        val x = s * 0.10f
        // v8.0.5-2 安全边界：数据基准 0.62s、行距 0.11s，末行标签下边缘 0.931s < 水印安全线 0.94s
        var y = s * 0.62f + off
        for (id in show) {
            val num = StickerCore.itemValue(id, stats)
            val unit = StickerCore.ITEM_DEFS[id]?.second ?: ""
            val label = StickerCore.ITEM_DEFS[id]?.first ?: ""
            paint.reset(); paint.isAntiAlias = true
            paint.textAlign = Paint.Align.LEFT
            paint.textSize = s * 0.075f; paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD)
            paint.color = txtColor
            val numW = paint.measureText(num)
            drawStickerText(c, num, x, y, maxW = s * 0.9f)
            if (unit.isNotEmpty()) {
                paint.textSize = s * 0.026f
                paint.setTypeface(android.graphics.Typeface.DEFAULT)
                paint.color = Color.argb(0xB3, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
                drawStickerText(c, unit, x + numW + s * 0.012f, y - s * 0.012f, maxW = s * 0.3f)
            }
            paint.reset(); paint.isAntiAlias = true
            paint.textSize = s * 0.024f
            paint.setTypeface(null)
            paint.color = Color.argb(0x99, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
            paint.textAlign = Paint.Align.LEFT
            drawStickerText(c, label, x + s * 0.004f, y + s * 0.06f)
            y += s * 0.11f
        }
    }

    /** M2 左上两行（4 纯黑极简 / 22 透明叠加·照片）：40.54 km（距离）/ 24.3 km/h（均速） */
    private fun drawLayoutCorner(c: Canvas, s: Float, txtColor: Int, itms: List<Int>, off: Float) {
        val show = itms.take(2)
        if (show.isEmpty()) return
        val stats = computeStats()
        val x = s * 0.10f
        var y = s * 0.13f + off
        for (id in show) {
            val num = StickerCore.itemValue(id, stats)
            val unit = StickerCore.ITEM_DEFS[id]?.second ?: ""
            val label = StickerCore.ITEM_DEFS[id]?.first ?: ""
            paint.reset(); paint.isAntiAlias = true
            paint.textAlign = Paint.Align.LEFT
            paint.textSize = s * 0.055f; paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD)
            paint.color = txtColor
            val numW = paint.measureText(num)
            drawStickerText(c, num, x, y, maxW = s * 0.9f)
            if (unit.isNotEmpty()) {
                paint.textSize = s * 0.022f
                paint.setTypeface(android.graphics.Typeface.DEFAULT)
                paint.color = Color.argb(0xB3, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
                drawStickerText(c, unit, x + numW + s * 0.010f, y - s * 0.010f, maxW = s * 0.3f)
            }
            paint.reset(); paint.isAntiAlias = true
            paint.textSize = s * 0.022f
            paint.setTypeface(null)
            paint.color = Color.argb(0x99, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
            paint.textAlign = Paint.Align.LEFT
            drawStickerText(c, label, x + s * 0.004f, y + s * 0.06f)
            y += s * 0.11f
        }
    }

    /** M5 六宫格（18 六宫格 / 20 复古游戏）：两行三列 距离/时长/均速/爬升/心率/功率 */
    private fun drawLayoutGrid(c: Canvas, s: Float, txtColor: Int, itms: List<Int>, off: Float) {
        val show = itms.take(6)
        if (show.isEmpty()) return
        val stats = computeStats()
        val cols = floatArrayOf(s * 0.21f, s * 0.50f, s * 0.79f)
        // v8.0.5-2 安全边界：六宫格第3行不得越过水印安全线 0.94s（原 top=0.70/rowH=0.13 → 0.96s 溢出压水印）
        val rowH = s * 0.12f
        val topY = s * 0.56f + off
        show.forEachIndexed { i, id ->
            val cx = cols[i % 3]; val ry = topY + (i / 3) * rowH
            val num = StickerCore.itemValue(id, stats)
            val unit = StickerCore.ITEM_DEFS[id]?.second ?: ""
            val label = StickerCore.ITEM_DEFS[id]?.first ?: ""
            paint.reset(); paint.isAntiAlias = true
            paint.textAlign = Paint.Align.CENTER
            paint.textSize = s * 0.042f; paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD)
            paint.color = txtColor
            val numW = paint.measureText(num)
            drawStickerText(c, num, cx, ry, maxW = s * 0.26f)
            if (unit.isNotEmpty()) {
                paint.textSize = s * 0.020f
                paint.setTypeface(android.graphics.Typeface.DEFAULT)
                paint.color = Color.argb(0xB3, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
                drawStickerText(c, unit, cx + numW / 2f + s * 0.010f, ry - s * 0.010f, maxW = s * 0.14f)
            }
            paint.reset(); paint.isAntiAlias = true
            paint.textSize = s * 0.024f
            paint.setTypeface(null)
            paint.color = Color.argb(0x99, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
            paint.textAlign = Paint.Align.CENTER
            drawStickerText(c, label, cx, ry + s * 0.06f)
        }
    }

    /** M4-居中三行（15 冬季3D冰蓝）：40.54 / 61 m / 1:40:12 居中堆叠 */
    private fun drawLayoutBig(c: Canvas, s: Float, txtColor: Int, itms: List<Int>, off: Float) {
        val stats = computeStats()
        val show = itms.take(3)
        if (show.isEmpty()) return
        var y = s * 0.52f + off
        for (id in show) {
            val num = StickerCore.itemValue(id, stats)
            val unit = StickerCore.ITEM_DEFS[id]?.second ?: ""
            val label = StickerCore.ITEM_DEFS[id]?.first ?: ""
            paint.reset(); paint.isAntiAlias = true
            paint.textAlign = Paint.Align.CENTER
            paint.textSize = s * 0.078f; paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD)
            paint.color = txtColor
            val numW = paint.measureText(num)
            drawStickerText(c, num, s / 2f, y, maxW = s * 0.9f)
            if (unit.isNotEmpty()) {
                paint.textSize = s * 0.030f
                paint.setTypeface(android.graphics.Typeface.DEFAULT)
                paint.color = Color.argb(0xB3, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
                drawStickerText(c, unit, s / 2f + numW / 2f + s * 0.014f, y - s * 0.014f, maxW = s * 0.3f)
            }
            paint.reset(); paint.isAntiAlias = true
            paint.textSize = s * 0.026f
            paint.setTypeface(null)
            paint.color = Color.argb(0x99, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
            paint.textAlign = Paint.Align.CENTER
            drawStickerText(c, label, s / 2f, y + s * 0.06f)
            y += s * 0.105f
        }
    }

    /** M6 左右两卡（17 对比卡 / 24 双图拼接）：左「本次」右「累计」，各三行 距离/爬升/时长 */
    private fun drawLayoutDual(c: Canvas, s: Float, txtColor: Int, itms: List<Int>, off: Float) {
        val stats = computeStats()
        val sum = summaryStats
        val leftCol = itms.take(3)
        val xL = s * 0.27f; val xR = s * 0.77f
        val col0 = leftCol.getOrElse(0) { StickerCore.ITEM_DIST }
        val col1 = leftCol.getOrElse(1) { StickerCore.ITEM_ASCENT }
        val col2 = leftCol.getOrElse(2) { StickerCore.ITEM_DUR }
        val leftRows = listOf(col0, col1, col2)
        // 左卡三行
        leftRows.forEachIndexed { i, id ->
            val num = StickerCore.itemValue(id, stats)
            val unit = StickerCore.ITEM_DEFS[id]?.second ?: ""
            val label = StickerCore.ITEM_DEFS[id]?.first ?: ""
            // v8.0.5-2 安全边界：数据下移 0.60s 起，给 3D 带让出空间；末行标签 0.88s < 0.937s
            val y = s * (0.60f + i * 0.10f) + off
            paint.reset(); paint.isAntiAlias = true
            paint.textAlign = Paint.Align.CENTER
            paint.textSize = s * 0.052f; paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD)
            paint.color = txtColor
            val numW = paint.measureText(num)
            drawStickerText(c, num, xL, y, maxW = s * 0.34f)
            if (unit.isNotEmpty()) {
                paint.textSize = s * 0.020f
                paint.setTypeface(android.graphics.Typeface.DEFAULT)
                paint.color = Color.argb(0xB3, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
                drawStickerText(c, unit, xL + numW / 2f + s * 0.010f, y - s * 0.010f, maxW = s * 0.12f)
            }
            paint.reset(); paint.isAntiAlias = true
            paint.textSize = s * 0.023f
            paint.setTypeface(null)
            paint.color = Color.argb(0x99, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
            paint.textAlign = Paint.Align.CENTER
            drawStickerText(c, label, xL, y + s * 0.05f)
        }
        // 右卡：有 summary 用累计三行，否则同左卡
        val rightRows = if (sum != null) {
            listOf(sum.fmtKm() to "总距离", sum.fmtDur() to "总时长", sum.fmtAscent() to "总爬升")
        } else {
            leftRows.map { StickerCore.itemValue(it, stats) to (StickerCore.ITEM_DEFS[it]?.first ?: "") }
        }
        rightRows.forEachIndexed { i, (v, lb) ->
            // v8.0.5-2 安全边界：数据下移 0.60s 起，给 3D 带让出空间；末行标签 0.88s < 0.937s
            val y = s * (0.60f + i * 0.10f) + off
            paint.reset(); paint.isAntiAlias = true
            paint.textAlign = Paint.Align.CENTER
            paint.textSize = s * 0.052f; paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD)
            paint.color = txtColor
            drawStickerText(c, v, xR, y, maxW = s * 0.34f)
            paint.reset(); paint.isAntiAlias = true
            paint.textSize = s * 0.023f
            paint.setTypeface(null)
            paint.color = Color.argb(0x99, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
            paint.textAlign = Paint.Align.CENTER
            drawStickerText(c, lb, xR, y + s * 0.05f)
        }
        // 卡头「本次 / 累计」
        paint.reset(); paint.isAntiAlias = true
        paint.textAlign = Paint.Align.CENTER
        paint.textSize = s * 0.030f; paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD)
        paint.color = txtColor
        drawStickerText(c, "本次", xL, s * 0.58f + off)
        drawStickerText(c, "累计", xR, s * 0.58f + off)
    }

    /** M3 底部三组横排（7 浅灰线条 / 23 磨砂玻璃）：40.54km 距离 | 1:40:12 时长 | 24.3km/h 均速 */
    private fun drawLayoutBar(c: Canvas, s: Float, txtColor: Int, itms: List<Int>, off: Float) {
        val show = itms.take(3)
        if (show.isEmpty()) return
        val stats = computeStats()
        val cols = floatArrayOf(s * 0.21f, s * 0.50f, s * 0.79f)
        // v8.0.5-2 安全边界：标签下边缘不得越过水印安全线 0.937s（原 y=0.86 → 标签 0.941s 压水印）
        val y = s * 0.82f + off
        show.forEachIndexed { i, id ->
            val cx = cols[i]
            val num = StickerCore.itemValue(id, stats)
            val unit = StickerCore.ITEM_DEFS[id]?.second ?: ""
            val label = StickerCore.ITEM_DEFS[id]?.first ?: ""
            paint.reset(); paint.isAntiAlias = true
            paint.textAlign = Paint.Align.CENTER
            paint.textSize = s * 0.045f; paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD)
            paint.color = txtColor
            val numW = paint.measureText(num)
            drawStickerText(c, num, cx, y, maxW = s * 0.24f)
            if (unit.isNotEmpty()) {
                paint.textSize = s * 0.020f
                paint.setTypeface(android.graphics.Typeface.DEFAULT)
                paint.color = Color.argb(0xB3, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
                drawStickerText(c, unit, cx + numW / 2f + s * 0.010f, y - s * 0.010f, maxW = s * 0.12f)
            }
            paint.reset(); paint.isAntiAlias = true
            paint.textSize = s * 0.024f
            paint.setTypeface(null)
            paint.color = Color.argb(0x99, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
            paint.textAlign = Paint.Align.CENTER
            drawStickerText(c, label, cx, y + s * 0.05f)
        }
    }

    /** M4-海报大字（19 海报大字 / 21 年度总结）：主数字居中 0.20s + KILOMETERS 英文单位
     *  + RIDING·我的轨迹 副标 + 底部三组（时长/爬升/均速） */
    private fun drawLayoutPoster(c: Canvas, s: Float, txtColor: Int, itms: List<Int>, off: Float) {
        val stats = computeStats()
        val primary = if (itms.isNotEmpty()) itms[0] else StickerCore.ITEM_DIST
        val num = StickerCore.itemValue(primary, stats)
        val unit = StickerCore.ITEM_DEFS[primary]?.second ?: ""
        // 主数字（超大，0.20s；不缩字号，超宽靠 shrinkNum 舍精度）
        paint.reset(); paint.isAntiAlias = true
        paint.textAlign = Paint.Align.CENTER
        paint.textSize = s * 0.20f; paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD)
        paint.color = txtColor
        val numW = paint.measureText(num)
        val bigY = s * 0.24f + off
        drawStickerText(c, num, s / 2f, bigY, maxW = s * 0.96f)
        if (unit.isNotEmpty()) {
            paint.textSize = s * 0.042f
            paint.setTypeface(android.graphics.Typeface.DEFAULT)
            paint.color = Color.argb(0xB3, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
            drawStickerText(c, unit, s / 2f + numW / 2f + s * 0.020f, bigY - s * 0.020f, maxW = s * 0.3f)
        }
        // 英文单位行 KILOMETERS
        paint.reset(); paint.isAntiAlias = true
        paint.textAlign = Paint.Align.CENTER
        paint.textSize = s * 0.035f
        paint.setTypeface(android.graphics.Typeface.create("sans-serif-medium", android.graphics.Typeface.NORMAL))
        paint.color = Color.argb(0xCC, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
        drawStickerText(c, "KILOMETERS", s / 2f, s * 0.335f + off)
        // 副标 RIDING·我的轨迹
        paint.reset(); paint.isAntiAlias = true
        paint.textAlign = Paint.Align.CENTER
        paint.textSize = s * 0.030f
        paint.setTypeface(android.graphics.Typeface.create("sans-serif-light", android.graphics.Typeface.NORMAL))
        paint.color = Color.argb(0x99, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
        drawStickerText(c, "RIDING · 我的轨迹", s / 2f, s * 0.385f + off)
        // 底部三组：时长 / 爬升 / 均速
        val rest = itms.drop(1).take(3)
        if (rest.isNotEmpty()) {
            val cols = floatArrayOf(s * 0.21f, s * 0.50f, s * 0.79f)
            // v8.0.5-2 安全边界：底部标签下边缘不得越过水印安全线 0.94s（原 valY=0.88 → 标签 0.96s 压水印）
            val valY = s * 0.85f + off
            rest.forEachIndexed { i, id ->
                val v = StickerCore.itemValue(id, stats)
                val u = StickerCore.ITEM_DEFS[id]?.second ?: ""
                val lb = StickerCore.ITEM_DEFS[id]?.first ?: ""
                paint.reset(); paint.isAntiAlias = true
                paint.textAlign = Paint.Align.CENTER
                paint.textSize = s * 0.040f; paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD)
                paint.color = txtColor
                val vw = paint.measureText(v)
                drawStickerText(c, v, cols[i] - (if (u.isNotEmpty()) vw / 2f else 0f), valY, maxW = s * 0.22f)
                if (u.isNotEmpty()) {
                    paint.textSize = s * 0.020f
                    paint.setTypeface(android.graphics.Typeface.DEFAULT)
                    paint.color = Color.argb(0xB3, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
                    drawStickerText(c, u, cols[i] + vw / 2f + s * 0.010f, valY - s * 0.010f, maxW = s * 0.12f)
                }
                paint.reset(); paint.isAntiAlias = true
                paint.textSize = s * 0.023f
                paint.setTypeface(null)
                paint.color = Color.argb(0x99, Color.red(txtColor), Color.green(txtColor), Color.blue(txtColor))
                paint.textAlign = Paint.Align.CENTER
                drawStickerText(c, lb, cols[i], valY + s * 0.05f)
            }
        }
    }

    // ================= 贴纸画布（预览与导出的唯一绘制路径） =================

    private fun drawSticker(
        c: Canvas, w: Float, h: Float,
        ds: Int, inc3d: Boolean, lineCol: Int, txtCol: Int,
        itms: List<Int>,
        ox: Float, oy: Float, sc: Float,
        wm: Boolean
    ) {
        if (points.isEmpty()) {
            paint.color = 0xFF9AA0A6.toInt(); paint.style = Paint.Style.STROKE; paint.strokeWidth = 1f
            paint.textSize = 14f; paint.textAlign = Paint.Align.CENTER
            drawStickerText(c, "暂无轨迹数据", w / 2f, h / 2f)
            return
        }
        val s = min(w, h)
        // 布局：轨迹区 / 数据区 / 水印区 三分，绝不重叠
        val trackBottom = when (ds) {
            STICKER_STRAVA -> s * 0.66f
            STICKER_OUTBASE -> s * 0.82f
            else -> s * 0.94f
        }
        // 轨迹
        drawTrackIn(c, 0f, 0f, w, trackBottom, lineCol, ox, oy, sc)
        // 数据区
        val txtColor = stickerTextColor(txtCol)
        when (ds) {
            STICKER_STRAVA -> drawStravaCard(c, s, txtColor, itms, inc3d)
            STICKER_OUTBASE -> drawOutbaseBadge(c, s, txtColor, itms)
            else -> {}
        }
        // 水印（最底部居中，细体小字）
        if (wm) drawWatermark(c, s, txtColor)
    }

    /** 平面轨迹（贴纸用）：投影+位移+缩放，按 style/lineColor 渲染 */
    private fun drawTrackIn(
        c: Canvas, l: Float, t: Float, r: Float, b: Float,
        lineCol: Int, ox: Float, oy: Float, sc: Float
    ) {
        val pts = points
        if (pts.size < 2) return
        val w = r - l; val h = b - t
        val projected = StickerCore.projectTrackEx(pts, w, h, 18f, ox, oy, sc)
        if (projected.size < 2) return
        // 渐变线条：独立路径（橙→天蓝）
        if (lineCol == COLOR_GRADIENT && style == STYLE_TRANSPARENT) {
            drawGradientSegments(c, projected, pts)
            return
        }
        // 逐点速度（速度色带）/海拔（海拔色带）
        val speeds = StickerCore.pointSpeeds(pts)
        var spMin = Float.MAX_VALUE; var spMax = 0f
        for (v in speeds) { if (v > 0.1f) { if (v < spMin) spMin = v; if (v > spMax) spMax = v } }
        if (spMax <= spMin) spMax = spMin + 1f
        var eMin = Float.MAX_VALUE; var eMax = -Float.MAX_VALUE
        for (p in pts) { if (p.ele > 0) { if (p.ele < eMin) eMin = p.ele.toFloat(); if (p.ele > eMax) eMax = p.ele.toFloat() } }
        if (eMax <= eMin) { eMin = 0f; eMax = 1f }

        // 发光层
        if (glow) {
            paint.reset(); paint.isAntiAlias = true
            paint.style = Paint.Style.STROKE
            paint.strokeCap = Paint.Cap.ROUND; paint.strokeJoin = Paint.Join.ROUND
            paint.strokeWidth = lineWidth * 4f
            paint.color = Color.argb((lineAlpha * 0.22f * 255).toInt(), 0x2B, 0x8C, 0xFF)
            val gp = Path()
            projected.forEachIndexed { i, (x, y) -> if (i == 0) gp.moveTo(x, y) else gp.lineTo(x, y) }
            c.drawPath(gp, paint)
        }
        // 主线
        val resolved = when {
            style == STYLE_TRANSPARENT -> Color.argb((lineAlpha * 255).toInt(),
                Color.red(stickerLineColor(lineCol)), Color.green(stickerLineColor(lineCol)), Color.blue(stickerLineColor(lineCol)))
            else -> null
        }
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.STROKE
        paint.strokeCap = Paint.Cap.ROUND; paint.strokeJoin = Paint.Join.ROUND
        paint.strokeWidth = lineWidth

        when {
            resolved != null -> {
                paint.color = resolved
                val path = Path()
                projected.forEachIndexed { i, (x, y) -> if (i == 0) path.moveTo(x, y) else path.lineTo(x, y) }
                c.drawPath(path, paint)
            }
            style == STYLE_SPEED -> drawBanded(c, projected, pts, speeds, spMin, spMax) { v -> speedColor(v) }
            style == STYLE_ELEVATION -> drawBanded(c, projected, pts, null, eMin, eMax) { v -> elevationColor(v) }
            style == STYLE_SKY -> {
                paint.color = Color.argb((lineAlpha * 255).toInt(), 0x2B, 0x8C, 0xFF)
                val path = Path()
                projected.forEachIndexed { i, (x, y) -> if (i == 0) path.moveTo(x, y) else path.lineTo(x, y) }
                c.drawPath(path, paint)
            }
            else -> { // STYLE_ORANGE
                paint.color = Color.argb((lineAlpha * 255).toInt(), 0xFC, 0x4C, 0x02)
                val path = Path()
                projected.forEachIndexed { i, (x, y) -> if (i == 0) path.moveTo(x, y) else path.lineTo(x, y) }
                c.drawPath(path, paint)
            }
        }
    }

    private fun drawGradientSegments(c: Canvas, projected: List<Pair<Float, Float>>, pts: List<GpxToFitConverter.TrackPoint>) {
        val cum = StickerCore.cumulativeDist(pts)
        val total = max(cum[pts.size - 1], 1f)
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.STROKE
        paint.strokeCap = Paint.Cap.ROUND; paint.strokeJoin = Paint.Join.ROUND
        paint.strokeWidth = lineWidth * 1.5f
        for (i in 0 until projected.size - 1) {
            val f = (cum[i] / total).coerceIn(0f, 1f)
            val rr = (0xFC + (0x2B - 0xFC) * f).toInt().coerceIn(0, 255)
            val gg = (0x4C + (0x8C - 0x4C) * f).toInt().coerceIn(0, 255)
            val bb = (0x02 + (0xFF - 0x02) * f).toInt().coerceIn(0, 255)
            paint.color = Color.rgb(rr, gg, bb)
            c.drawLine(projected[i].first, projected[i].second, projected[i + 1].first, projected[i + 1].second, paint)
        }
    }

    private fun drawBanded(
        c: Canvas, projected: List<Pair<Float, Float>>, pts: List<GpxToFitConverter.TrackPoint>,
        values: FloatArray?, vMin: Float, vMax: Float, colorFn: (Float) -> Int
    ) {
        for (i in 0 until projected.size - 1) {
            val v = values?.get(i) ?: (if (pts[i].ele > 0) pts[i].ele.toFloat() else vMin)
            val t = ((v - vMin) / (vMax - vMin)).coerceIn(0f, 1f)
            val cc = colorFn(t)
            paint.color = Color.argb((lineAlpha * 255).toInt(), Color.red(cc), Color.green(cc), Color.blue(cc))
            c.drawLine(projected[i].first, projected[i].second, projected[i + 1].first, projected[i + 1].second, paint)
        }
    }

    private fun speedColor(t: Float): Int {
        val segs = arrayOf(0x2563EB to 0x22C55E, 0x22C55E to 0xFACC15, 0xFACC15 to 0xEF4444)
        val local = (t * 3).coerceIn(0f, 2.99f)
        val idx = local.toInt(); val frac = local - idx
        return lerp(segs[idx].first, segs[idx].second, frac)
    }

    private fun elevationColor(t: Float): Int {
        val segs = arrayOf(0xFDE047 to 0xF59E0B, 0xF59E0B to 0xB91C1C, 0xB91C1C to 0x1F2937)
        val local = (t * 3).coerceIn(0f, 2.99f)
        val idx = local.toInt(); val frac = local - idx
        return lerp(segs[idx].first, segs[idx].second, frac)
    }

    private fun lerp(c1: Int, c2: Int, t: Float): Int {
        val rr = (Color.red(c1) + (Color.red(c2) - Color.red(c1)) * t).toInt()
        val gg = (Color.green(c1) + (Color.green(c2) - Color.green(c1)) * t).toInt()
        val bb = (Color.blue(c1) + (Color.blue(c2) - Color.blue(c1)) * t).toInt()
        return Color.rgb(rr, gg, bb)
    }

    // ================= 数据卡（重新设计：大字数字 + 小单位 + 标签，列分隔线） =================

    /** Strava 风格底部数据卡：深/浅半透明圆角卡，N 列均分，数字大字+单位小字同行+标签下行 */
    private fun drawStravaCard(
        c: Canvas, s: Float, textColor: Int, itms: List<Int>, inc3d: Boolean
    ) {
        val n = itms.size.coerceIn(1, 6)
        val left = s * 0.04f
        val right = s - left
        val cardTop = s * 0.70f
        val cardBottom = s * 0.93f
        // 卡片底色：文字浅→深卡，文字深→浅卡
        val darkCard = (textColor == 0xFFFFFFFF.toInt() || textColor == 0xFF9AA0A6.toInt())
        fillPaint.color = if (darkCard) 0xE6121216.toInt() else 0xE6FFFFFF.toInt()
        val r = s * 0.035f
        val card = Path().apply { addRoundRect(left, cardTop, right, cardBottom, r, r, Path.Direction.CW) }
        c.drawPath(card, fillPaint)
        // 顶部细高光条（设计感）
        fillPaint.color = if (darkCard) 0x332B8CFF.toInt() else 0x332B8CFF.toInt()
        val strip = Path().apply { addRoundRect(left, cardTop, right, cardTop + s * 0.012f, s * 0.02f, s * 0.02f, Path.Direction.CW) }
        c.drawPath(strip, fillPaint)

        var dataTop = cardTop
        if (inc3d) {
            // 立体等高线山体（卡内上半）
            drawTerrain3D(c, left + s * 0.05f, cardTop + s * 0.035f, right - s * 0.05f, cardTop + s * 0.24f, textColor)
            dataTop = cardTop + s * 0.26f
        }
        // 数据项：N 列均分 + 列间分隔线
        val cols = StickerCore.stickerColumns(n, s, 0.06f, 0.06f)
        val valY = dataTop + s * 0.075f
        val labY = dataTop + s * 0.128f
        for ((i, id) in itms.take(n).withIndex()) {
            val cx = cols[i]
            val num = StickerCore.itemValue(id, computeStats())
            val unit = StickerCore.ITEM_DEFS[id]?.second ?: ""
            val label = StickerCore.ITEM_DEFS[id]?.first ?: ""
            // 数字（大字）
            paint.reset(); paint.isAntiAlias = true
            paint.color = textColor; paint.textAlign = Paint.Align.CENTER
            paint.textSize = s * 0.05f; paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD)
            val numW = paint.measureText(num)
            drawStickerText(c, num, cx, valY)
            // 单位（小字，同行右上）
            if (unit.isNotEmpty()) {
                paint.textSize = s * 0.024f; paint.setTypeface(android.graphics.Typeface.DEFAULT)
                paint.color = Color.argb(0xB3, Color.red(textColor), Color.green(textColor), Color.blue(textColor))
                drawStickerText(c, unit, cx + numW / 2f + s * 0.012f, valY - s * 0.008f)
            }
            // 标签（小字）
            paint.reset(); paint.isAntiAlias = true
            paint.textSize = s * 0.026f; paint.setTypeface(null)
            paint.color = Color.argb(0x99, Color.red(textColor), Color.green(textColor), Color.blue(textColor))
            paint.textAlign = Paint.Align.CENTER
            drawStickerText(c, label, cx, labY)
            // 列分隔线
            if (i > 0) {
                paint.reset(); paint.isAntiAlias = true
                paint.strokeWidth = 1f
                paint.color = if (darkCard) 0x33FFFFFF.toInt() else 0x33000000.toInt()
                val sepX = cols[i - 1] + (cols[i] - cols[i - 1]) / 2f
                c.drawLine(sepX, dataTop + s * 0.02f, sepX, cardBottom - s * 0.02f, paint)
            }
        }
    }

    /** Outbase 风格右下角数据角标：无卡片，大数字+小单位，标签在数字下方 */
    private fun drawOutbaseBadge(c: Canvas, s: Float, textColor: Int, itms: List<Int>, off: Float = 0f) {
        val show = itms.take(3)
        if (show.isEmpty()) return
        val margin = s * 0.05f
        val stats = computeStats()
        var y = s * 0.86f + off
        for (id in show) {
            val num = StickerCore.itemValue(id, stats)
            val unit = StickerCore.ITEM_DEFS[id]?.second ?: ""
            val label = StickerCore.ITEM_DEFS[id]?.first ?: ""
            paint.reset(); paint.isAntiAlias = true
            paint.textAlign = Paint.Align.RIGHT
            // 数字（大）+ 单位（小）
            val numSize = fitTextSize(num, s * 0.052f, s * 0.3f)
            paint.textSize = numSize; paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD)
            paint.color = textColor
            val numW = paint.measureText(num)
            drawStickerText(c, num, s - margin, y, maxW = s * 0.42f)
            if (unit.isNotEmpty()) {
                paint.textSize = fitTextSize(unit, numSize * 0.5f, s * 0.12f)
                paint.setTypeface(android.graphics.Typeface.DEFAULT)
                paint.color = Color.argb(0xB3, Color.red(textColor), Color.green(textColor), Color.blue(textColor))
                drawStickerText(c, unit, s - margin - numW - s * 0.02f, y - s * 0.006f, maxW = s * 0.18f)
            }
            // 标签（小字，数字下方）
            paint.reset(); paint.isAntiAlias = true
            paint.textSize = fitTextSize(label, s * 0.026f, s * 0.28f)
            paint.setTypeface(null)
            paint.color = Color.argb(0x99, Color.red(textColor), Color.green(textColor), Color.blue(textColor))
            paint.textAlign = Paint.Align.RIGHT
            drawStickerText(c, label, s - margin, y + s * 0.03f)
            y += s * 0.078f
        }
    }

    // ================= 立体地形（Outbase 橙渐变立体带） =================

    /**
     * Outbase 风格立体海拔带：橙色渐变立体带（顶线=海拔曲线，向下偏移带厚度），
     * 顶线橙色描边、基线细线、峰值/谷值标签。呈现"从地面升起的橙色山体"（对齐用户参考图）。
     */
    fun drawTerrain3D(
        c: Canvas, l: Float, t: Float, r: Float, b: Float,
        textColor: Int, thickness: Float = 12f, layers: Int = 5
    ) {
        val geom = StickerCore.elevationTerrain(points, l, t, r, b, thickness, layers)
        if (geom.profile.size < 2) return
        val ORANGE = 0xFFF1632A.toInt()       // Outbase 主橙
        val ORANGE_DEEP = 0xFFD94E1E.toInt()
        val ORANGE_SOFT = 0x66F1632A.toInt()  // 浅橙（山体淡填充）

        // 1) 立体带体：side（下沿，已偏移厚度）→ profile 反向 → 闭合，橙渐变填充（底部深橙→顶部亮橙）
        val band = Path()
        geom.side.forEachIndexed { i, (x, y) -> if (i == 0) band.moveTo(x, y) else band.lineTo(x, y) }
        geom.profile.asReversed().forEach { (x, y) -> band.lineTo(x, y) }
        band.close()
        fillPaint.shader = LinearGradient(l, b, l, t, ORANGE_DEEP, ORANGE_SOFT, Shader.TileMode.CLAMP)
        c.drawPath(band, fillPaint)
        fillPaint.shader = null

        // 2) 山体淡橙填充（顶线到基线，半透明，叠加出渐变厚度感）
        val body = Path()
        geom.profile.forEachIndexed { i, (x, y) -> if (i == 0) body.moveTo(x, y) else body.lineTo(x, y) }
        body.lineTo(r, b); body.lineTo(l, b); body.close()
        fillPaint.color = 0x26F1632A
        c.drawPath(body, fillPaint)

        // 3) 顶线：橙色粗描边（圆头圆角）
        paint.reset(); paint.isAntiAlias = true
        paint.style = Paint.Style.STROKE; paint.strokeCap = Paint.Cap.ROUND; paint.strokeJoin = Paint.Join.ROUND
        paint.strokeWidth = max((r - l) * 0.005f, 1.8f)
        paint.color = ORANGE
        val topLine = Path()
        geom.profile.forEachIndexed { i, (x, y) -> if (i == 0) topLine.moveTo(x, y) else topLine.lineTo(x, y) }
        c.drawPath(topLine, paint)

        // 4) 基线 + 海拔标签（浅灰细线，避免抢视觉）
        paint.reset(); paint.isAntiAlias = true
        paint.strokeWidth = 1f
        paint.color = if (textColor == Color.WHITE) 0x55FFFFFF.toInt() else 0x33000000.toInt()
        c.drawLine(l, b, r, b, paint)
        paint.textAlign = Paint.Align.LEFT
        paint.textSize = max((r - l) * 0.022f, 8f)
        paint.color = if (textColor == Color.WHITE) 0xAAFFFFFF.toInt() else 0x99000000.toInt()
        drawStickerText(c, String.format(java.util.Locale.US, "%.0fm", geom.eMin), l + 2f, b - 3f)
        drawStickerText(c, String.format(java.util.Locale.US, "%.0fm", geom.eMax), l + 2f, t + 10f)
    }

    // ================= 水印 =================

    private fun drawWatermark(c: Canvas, s: Float, textColor: Int) {
        paint.reset(); paint.isAntiAlias = true
        paint.textAlign = Paint.Align.CENTER
        paint.textSize = max(s * StickerCore.WATERMARK_TEXT_RATIO, 12f)
        // 品牌字：细体 + 字距拉开（对齐 Outbase 底部品牌字风格）
        paint.setTypeface(android.graphics.Typeface.create("sans-serif-light", android.graphics.Typeface.NORMAL))
        try { paint.letterSpacing = 0.22f } catch (_: Throwable) {}
        paint.color = Color.argb(StickerCore.WATERMARK_ALPHA, Color.red(textColor), Color.green(textColor), Color.blue(textColor))
        drawStickerText(c, StickerCore.WATERMARK_TEXT, s / 2f, s - max(s * StickerCore.WATERMARK_BOTTOM_RATIO, 6f))
    }

    // ================= v8.0.6 同源渲染：内嵌透明 WebView（效果图 HTML 单一数据源） =================

    /** 同源渲染 WebView（预览/导出/效果图三端一致，HTML 即 sticker_templates.html） */
    private var web: WebView? = null
    private var webReady = false
    private var renderScheduled = false
    private var pendingRender = false
    /** v8.1.4c: HTML 画布实际渲染尺寸（CSS 视口口径，getCardSize 回报），Kotlin 投影/位移换算与 HTML 同源 */
    private var cssW: Float = 0f
    private var cssH: Float = 0f
    private var lastW: Int = -1
    private var lastH: Int = -1
    /** 角标开关（大卡左上分类·模板名 + 右上 N/24） */
    var badgeOn: Boolean = true
        set(value) { field = value; invalidate() }

    /** v8.2.7c: 供预览卡 contain 后兜底强制 HTML 重渲（按新 #card 尺寸） */
    fun webReadyPublic(): Boolean = webReady && web != null

    fun refreshWebRenderPublic() {
        if (!webReady || web == null) return
        refreshCssSize()
        invalidate()
    }

    /** 模板索引（1-24；-1 = 组合模式） */
    private var templateIndex: Int = 1

    private fun initWebRenderer() {
        if (web != null) return
        val w = WebView(context).apply {
            setBackgroundColor(Color.TRANSPARENT)
            settings.javaScriptEnabled = true
            settings.domStorageEnabled = true
            settings.allowFileAccess = true
            settings.loadWithOverviewMode = true
            settings.useWideViewPort = true
            settings.cacheMode = WebSettings.LOAD_NO_CACHE
            // v8.2.7: 关闭宽视口/overview 模式——useWideViewPort=true 会让 HTML 布局视口
            // 按全屏 device-width（>WebView 实际宽）展开，卡片 800px 宽而视口只显示左半+顶部，
            // 轨迹左右与底部被视口裁切（用户实测"轨迹被截断"的根因）。关闭后 card=WebView 可视尺寸，
            // 预览所见=画布，导出仍走显式宽高直出不受影响。
            settings.loadWithOverviewMode = false
            settings.useWideViewPort = false
            webViewClient = object : WebViewClient() {
                override fun onPageFinished(view: WebView?, url: String?) {
                    webReady = true
                    refreshCssSize()
                    invalidate()
                }
            }
            loadDataWithBaseURL("file:///android_asset/", htmlSource(), "text/html", "utf-8", null)
        }
        web = w
        addView(w)
    }

    private fun htmlSource(): String = try {
        val `is` = context.assets.open("sticker_templates.html")
        val buf = java.io.ByteArrayOutputStream()
        val b = ByteArray(8192)
        var n = `is`.read(b)
        while (n > 0) { buf.write(b, 0, n); n = `is`.read(b) }
        `is`.close()
        String(buf.toByteArray(), Charsets.UTF_8)
    } catch (e: Exception) { "" }

    /** v8.1.4c: 查询 HTML 画布实际渲染尺寸（CSS 视口），缓存后重渲——Kotlin 投影/位移与 HTML 同口径 */
    private fun refreshCssSize() {
        val w = web ?: return
        w.evaluateJavascript("JSON.stringify(stickerBridge.getCardSize())") { r ->
            val s = unwrapJsString(r ?: "")
            try {
                val obj = org.json.JSONObject(s)
                val nw = obj.optDouble("w", 0.0).toFloat()
                val nh = obj.optDouble("h", 0.0).toFloat()
                // v8.2.7c: 下限从 300 放宽到 >0——预览卡被 contain 缩小后宽度可能 <300px（如 187px），
                // 旧条件直接拒绝更新 → HTML 永远按旧 cssW/cssH 布局 → 在新 card overflow:hidden 下上下被裁
                if (nw > 0f && nh > 0f && (nw != cssW || nh != cssH)) {
                    cssW = nw; cssH = nh
                }
                // v8.2.7c: 无论尺寸是否变化都触发重渲（防 contain 后 HTML 停在旧渲染）
                invalidate()
            } catch (_: Exception) { }
        }
    }

    /** 预览渲染基准：CSS 视口口径；未取到时退回控件尺寸 */
    private fun renderSize(): Pair<Float, Float> {
        val w = web ?: return (1024f to 1024f)
        return (cssW.coerceAtLeast(300f) to cssH.coerceAtLeast(300f))
            .let { if (it.first <= 0f || it.second <= 0f) (maxOf(w.width, 300).toFloat() to maxOf(w.height, 300).toFloat()) else it }
    }

    override fun onLayout(changed: Boolean, l: Int, t: Int, r: Int, b: Int) {
        super.onLayout(changed, l, t, r, b)
        val nw = r - l
        val nh = b - t
        web?.layout(0, 0, nw, nh)
        // v8.2.7c: 预览卡被 contain 缩小/比例切换导致 WebView 尺寸变化时，HTML #card 会 reflow 到新尺寸，
        // 但 stickerBridge.render 不会自动重跑 → 内容仍按旧 cssW/cssH 布局，在新 card overflow:hidden 下被裁。
        // 这里尺寸变化后延迟刷新 CSS 尺寸并触发重渲（buildRenderJs 用新尺寸 → HTML render 用新 card 尺寸，轨迹完整）
        if (changed && (nw != lastW || nh != lastH)) {
            lastW = nw
            lastH = nh
            postDelayed({ if (webReady && web != null) refreshCssSize() }, 150)
        }
    }

    /** 当前组合参数 → 匹配 24 模板索引（效果图顺序） */
    private fun templateIdxFor(): Int {
        val m = StickerCore.StickerTemplates.ALL.indexOfFirst { it.bg == bgType && it.track == trackType &&
            it.layout == layoutType && it.text == textType && it.glow == glowOn }
        return if (m >= 0) m + 1 else (templateIndex.coerceIn(1, 24))
    }

    private fun trackColorIdx(): Int = when (trackType) {
        StickerCore.StickerTrack.ORANGE_GRAD -> 0
        StickerCore.StickerTrack.WHITE -> 1
        StickerCore.StickerTrack.BLACK_FINE -> 2
        StickerCore.StickerTrack.GRAY_FINE -> 3
        StickerCore.StickerTrack.NEON -> 4
        StickerCore.StickerTrack.HEAT -> 5
        StickerCore.StickerTrack.ICE_3D -> 6
        StickerCore.StickerTrack.PHANTOM -> 7
    }

    private fun formatDuration(sec: Long): String {
        if (sec <= 0) return "0:00:00"
        val h = sec / 3600; val m = (sec % 3600) / 60; val s = sec % 60
        return String.format(Locale.US, "%d:%02d:%02d", h, m, s)
    }

    private fun bitmapToDataUrl(bmp: Bitmap): String? {
        if (bmp.isRecycled) return null
        return try {
            val out = java.io.ByteArrayOutputStream()
            bmp.compress(Bitmap.CompressFormat.JPEG, 88, out)
            "data:image/jpeg;base64," + android.util.Base64.encodeToString(out.toByteArray(), android.util.Base64.NO_WRAP)
        } catch (e: Exception) { null }
    }

    /** 构建 stickerBridge.render 调用（与效果图 HTML 同一数据源） */
    private fun buildRenderJs(): String {
        val st = computeStats()
        val data = JSONObject().apply {
            // v8.1.1c: 手输覆盖优先（空=实际值）
            put("distance", dataOverrides["distance"] ?: round1(st.distKm))
            put("duration", dataOverrides["duration"] ?: formatDuration(st.durationSec))
            put("avgSpeed", dataOverrides["avgSpeed"] ?: round1(st.avgSpeedKmh))
            put("maxSpeed", dataOverrides["maxSpeed"] ?: round1(st.maxSpeedKmh))
            put("climb", dataOverrides["climb"] ?: Math.round(st.ascentM))
            put("hr", dataOverrides["hr"] ?: st.avgHr)
            put("power", dataOverrides["power"] ?: st.avgPower)
            put("kcal", dataOverrides["kcal"] ?: st.caloriesKcal)
            put("cad", dataOverrides["cad"] ?: st.avgCad)
            put("alt", dataOverrides["alt"] ?: Math.round(st.ascentM))
            // v8.1.1c: 标题/地址不再硬编码（原"RIDING·青岛"），默认由合并结果（运动类型+日期）传入，用户可编辑
            put("title", titleOverride ?: "RIDING")
            // v8.1.0: 海拔剖面最高/最低点（真实海拔，米）
            val validE = points.map { it.ele.toFloat() }.filter { it > 0f }
            if (validE.isNotEmpty()) {
                put("altMax", dataOverrides["altMax"] ?: Math.round(validE.max()))
                put("altMin", dataOverrides["altMin"] ?: Math.round(validE.min()))
            }
            // v8.0.9: 用户勾选的数据项（HTML 按此动态渲染，选择后海报实时变化）
            put("items", JSONArray().apply { items.forEach { put(it) } })
            overlayBitmap?.let { put("photo", bitmapToDataUrl(it) ?: "") }
            // v8.0.8: 真实轨迹点（归一化口径），非示意折线；v8.1.4c: 用 CSS 视口口径投影，与 HTML 预览同源
            // v8.2.7: H 恒按 aspect 推导（W×ratio），与 HTML render 的 card 高度同口径，杜绝
            //         aspect 切换时 WebView 高度滞后导致 Kotlin 归一化与 HTML 还原口径错位 → 轨迹截断
            val (rW, _) = renderSize()
            val trackH = when (aspect) {
                "3:4" -> rW * 4f / 3f
                "9:16" -> rW * 16f / 9f
                else -> rW
            }
            val trackArr = buildTrackJson(rW, trackH)
            if (trackArr != null) put("track", trackArr)
        }
        val (col, u) = htmlText(textType)
        val opts = JSONObject().apply {
            put("showBadge", badgeOn)
            put("watermark", watermarkOn && dataLayerOn)
            put("trackColor", trackColorIdx())
            put("aspect", aspect)
            // v8.0.8: 组合维度覆盖 + 全部开关 + 粗细
            put("bg", htmlBg(bgType))
            put("track", htmlTrack(trackType))
            put("layout", htmlLayout(layoutType))
            put("text", col)
            put("textU", u)
            put("transparentBg", transparentBg)
            put("dataLayer", dataLayerOn)
            put("glow", glowOn)
            put("show3dBand", show3dBand)
            put("trackWidth", trackWidth)
            /* v8.3.1: 3D 轨迹模式 + 视角（平面/3D 二选一） */
            put("track3d", track3d)
            put("track3dRx", track3dRx)
            put("track3dRy", track3dRy)
            /* v8.3.1: 3D 轨迹模式 + 视角（平面/3D 二选一） */
            put("track3d", track3d)
            put("track3dRx", track3dRx)
            put("track3dRy", track3dRy)
            put("showTrack", trackOn)   // v8.0.9 轨迹显示开关
            put("brand", brandIdx)      // v8.0.9 品牌角标（0=鸡翅文字）
            if (brandIdx == BRAND_CUSTOM && badgeUrl != null) put("badgeUrl", badgeUrl)  // v8.1.1 自定义透明logo
        }
        val idx = if (useTemplate) templateIdxFor() else 1
        templateIndex = idx
        return "stickerBridge.render($idx, ${data.toString()}, ${opts.toString()});"
    }

    /** v8.1.2b: 与 buildRenderJs 同源构造 "idx, data, opts" 参数串，供 canvas 直出导出复用同一份渲染状态
     *  v8.1.4c: 投影按导出画布尺寸（wPx×hPx）计算，与 renderCanvas 完全同口径 */
    private fun buildRenderPayload(wPx: Int, hPx: Int): String {
        val st = computeStats()
        val data = JSONObject().apply {
            put("distance", dataOverrides["distance"] ?: round1(st.distKm))
            put("duration", dataOverrides["duration"] ?: formatDuration(st.durationSec))
            put("avgSpeed", dataOverrides["avgSpeed"] ?: round1(st.avgSpeedKmh))
            put("maxSpeed", dataOverrides["maxSpeed"] ?: round1(st.maxSpeedKmh))
            put("climb", dataOverrides["climb"] ?: Math.round(st.ascentM))
            put("hr", dataOverrides["hr"] ?: st.avgHr)
            put("power", dataOverrides["power"] ?: st.avgPower)
            put("kcal", dataOverrides["kcal"] ?: st.caloriesKcal)
            put("cad", dataOverrides["cad"] ?: st.avgCad)
            put("alt", dataOverrides["alt"] ?: Math.round(st.ascentM))
            put("title", titleOverride ?: "RIDING")
            val validE = points.map { it.ele.toFloat() }.filter { it > 0f }
            if (validE.isNotEmpty()) {
                put("altMax", dataOverrides["altMax"] ?: Math.round(validE.max()))
                put("altMin", dataOverrides["altMin"] ?: Math.round(validE.min()))
            }
            put("items", JSONArray().apply { items.forEach { put(it) } })
            overlayBitmap?.let { put("photo", bitmapToDataUrl(it) ?: "") }
            // v8.1.4c: 投影用导出画布尺寸（wPx×hPx），与 renderCanvas 布局公式同源，杜绝导出轨迹偏移/压缩
            val trackArr = buildTrackJson(wPx.toFloat(), hPx.toFloat())
            if (trackArr != null) put("track", trackArr)
        }
        val (col, u) = htmlText(textType)
        val opts = JSONObject().apply {
            put("showBadge", badgeOn)
            put("watermark", watermarkOn && dataLayerOn)
            put("trackColor", trackColorIdx())
            put("aspect", aspect)
            put("bg", htmlBg(bgType))
            put("track", htmlTrack(trackType))
            put("layout", htmlLayout(layoutType))
            put("text", col)
            put("textU", u)
            put("transparentBg", transparentBg)
            put("dataLayer", dataLayerOn)
            put("glow", glowOn)
            put("show3dBand", show3dBand)
            put("trackWidth", trackWidth)
            /* v8.3.1: 3D 轨迹模式 + 视角（平面/3D 二选一） */
            put("track3d", track3d)
            put("track3dRx", track3dRx)
            put("track3dRy", track3dRy)
            /* v8.3.1: 3D 轨迹模式 + 视角（平面/3D 二选一） */
            put("track3d", track3d)
            put("track3dRx", track3dRx)
            put("track3dRy", track3dRy)
            put("showTrack", trackOn)
            put("brand", brandIdx)
            if (brandIdx == BRAND_CUSTOM && badgeUrl != null) put("badgeUrl", badgeUrl)
        }
        val idx = if (useTemplate) templateIdxFor() else 1
        templateIndex = idx
        return "$idx, ${data.toString()}, ${opts.toString()}"
    }

    /** v8.0.9: 真实轨迹点投影为【相对轨迹框的归一化坐标 0~1】（与 HTML makeTrack 同口径，杜绝双重偏移），空点返回 null
     *  v8.1.4c: W/H 由调用方显式传入——预览传 CSS 视口(card 尺寸)、导出传画布尺寸(wPx×hPx)，
     *  根治"Kotlin 投影口径(WebView 控件 px) ≠ HTML 渲染口径(CSS 视口/画布)"导致的轨迹偏移与预览导出不一致。 */
    private fun buildTrackJson(W: Float, H: Float): JSONArray? {
        /* v8.3.1: 单一口径——Kotlin 只传原始轨迹形状（相对 lon/lat + 原始海拔），
           不再按 tw/trH 归一化（那与 HTML 端 makeTrack 的 side 正方形还原口径独立，
           是历史反复截断的根因）。HTML 端 normalizeTrack 统一 contain→正方形 side 投影。 */
        if (points.size < 2) return null
        var minLat = Double.MAX_VALUE; var maxLat = -Double.MAX_VALUE
        var minLon = Double.MAX_VALUE; var maxLon = -Double.MAX_VALUE
        for (p in points) {
            if (p.lat < minLat) minLat = p.lat
            if (p.lat > maxLat) maxLat = p.lat
            if (p.lon < minLon) minLon = p.lon
            if (p.lon > maxLon) maxLon = p.lon
        }
        val arr = JSONArray()
        for (p in points) {
            arr.put(JSONObject()
                .put("x", (p.lon - minLon).toDouble())
                .put("y", (p.lat - minLat).toDouble())
                .put("ele", if (p.ele > 0f) p.ele.toDouble() else 0.0))
        }
        return arr
    }

    // ============ 枚举 → HTML 模板字符串映射（v8.0.8 组合覆盖） ============
    private fun htmlBg(b: StickerCore.StickerBg): String = when (b) {
        StickerCore.StickerBg.DEEP_SPACE -> "bg-stars"
        StickerCore.StickerBg.CHECKER -> "bg-checker"
        StickerCore.StickerBg.NEON -> "bg-neon"
        StickerCore.StickerBg.PURE_BLACK -> "bg-black"
        StickerCore.StickerBg.MINIMAL_WHITE -> "bg-white"
        StickerCore.StickerBg.CREAM -> "bg-cream"
        StickerCore.StickerBg.LIGHT_GRAY -> "bg-grayline"
        StickerCore.StickerBg.WARM_POSTER -> "bg-warm"
        StickerCore.StickerBg.MAP_GRID -> "bg-map"
        StickerCore.StickerBg.SATELLITE -> "bg-sat"
        StickerCore.StickerBg.LIGHT_MAP -> "bg-lightmap"
        StickerCore.StickerBg.CONTOUR -> "bg-contour"
        StickerCore.StickerBg.HEAT_BG -> "bg-heat"
        StickerCore.StickerBg.ORANGE_BAND -> "bg-orangeband"
        StickerCore.StickerBg.ICE_BAND -> "bg-ice"
        StickerCore.StickerBg.LIGHT_TRAIL -> "bg-trail"
        StickerCore.StickerBg.DUAL_DARK -> "bg-dual"
        StickerCore.StickerBg.POSTER_ORANGE -> "bg-orange"
        StickerCore.StickerBg.RETRO_PURPLE -> "bg-retro"
        StickerCore.StickerBg.ANNUAL_DARK -> "bg-annual"
        StickerCore.StickerBg.PHOTO_OVERLAY -> "bg-photo"
        StickerCore.StickerBg.FROSTED -> "bg-frost"
        StickerCore.StickerBg.PHOTO_SPLIT -> "bg-split"
    }

    private fun htmlTrack(t: StickerCore.StickerTrack): String = when (t) {
        StickerCore.StickerTrack.ORANGE_GRAD -> "orange"
        StickerCore.StickerTrack.WHITE -> "white"
        StickerCore.StickerTrack.BLACK_FINE -> "blackfine"
        StickerCore.StickerTrack.GRAY_FINE -> "grayfine"
        StickerCore.StickerTrack.NEON -> "neon"
        StickerCore.StickerTrack.HEAT -> "heat"
        StickerCore.StickerTrack.ICE_3D -> "ice"
        StickerCore.StickerTrack.PHANTOM -> "phantom"
    }

    private fun htmlLayout(l: StickerCore.StickerLayout): String = when (l) {
        StickerCore.StickerLayout.TRIPLE -> "trip"
        StickerCore.StickerLayout.CORNER -> "corner"
        StickerCore.StickerLayout.GRID -> "grid"
        StickerCore.StickerLayout.BIG -> "big"
        StickerCore.StickerLayout.DUAL -> "dual"
        StickerCore.StickerLayout.BAR -> "bar"
        StickerCore.StickerLayout.POSTER -> "poster"
    }

    private fun htmlText(t: StickerCore.StickerText): Pair<String, String> = when (t) {
        StickerCore.StickerText.WHITE -> "t-dark" to "u-dark"
        StickerCore.StickerText.BLACK -> "t-black" to "u-black"
        StickerCore.StickerText.ORANGE -> "t-orange" to "u-black"
        StickerCore.StickerText.SKY -> "t-sky" to "u-dark"
        StickerCore.StickerText.NEON_PINK -> "t-neonpink" to "u-dark"
        StickerCore.StickerText.CREAM -> "t-cream" to "u-dark"
    }

    private fun round1(v: Double): Double = Math.round(v * 10.0) / 10.0

    /** 预览渲染调度：onDraw 后合并为每帧一次 JS 渲染（防抖 16ms） */
    private fun scheduleWebRender() {
        if (!webReady || web == null) return
        pendingRender = true
        if (!renderScheduled) {
            renderScheduled = true
            postDelayed({
                renderScheduled = false
                if (pendingRender) {
                    pendingRender = false
                    web?.evaluateJavascript(buildRenderJs() + "stickerBridge.setTransform($dx,$dy,$scale,$rotation,$tiltX);", null)
                }
            }, 16)
        }
    }

    /** 手势变换即时推送（不整卡重渲，轨迹跟随手指；tilt=前仰后倾带透视） */
    private fun pushTransform() {
        if (!webReady || web == null) return
        web?.evaluateJavascript("stickerBridge.setTransform($dx,$dy,$scale,$rotation,$tiltX);", null)
    }

    /** 同步导出：软件层 WebView draw 到透明 Bitmap（与预览同源）
     *  v8.1.1: viewport=device-width，导出 CSS 视口=wPx/density ≠ 预览视口——dx/dy 按宽比 k 换算，位置与预览一致 */
    fun exportTemplatePng(
        sizePx: Int = 1024,
        heightPx: Int = 0,
        watermark: Boolean = true,
        items: List<Int> = this.items,
        dx: Float = this.dx, dy: Float = this.dy, scale: Float = this.scale,
        transparentBg: Boolean = this.transparentBg
    ): Bitmap {
        val (wPx, hPx) = resolveExportSize(sizePx, heightPx)
        val w = web ?: return fallbackExport(wPx, hPx, watermark, items, dx, dy, scale, transparentBg)
        val prevW = maxOf(w.width, 1)
        val k = wPx.toFloat() / prevW
        val bmp = Bitmap.createBitmap(wPx, hPx, Bitmap.Config.ARGB_8888)
        val c = Canvas(bmp)
        val old = w.layerType
        try {
            w.measure(View.MeasureSpec.makeMeasureSpec(wPx, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(hPx, View.MeasureSpec.EXACTLY))
            w.layout(0, 0, wPx, hPx)
            w.setLayerType(View.LAYER_TYPE_SOFTWARE, null)
            w.evaluateJavascript(buildRenderJs() + "stickerBridge.setTransform(${dx * k},${dy * k},$scale,$rotation,$tiltX);", null)
            w.draw(c)
        } catch (e: Exception) {
            return fallbackExport(wPx, hPx, watermark, items, dx, dy, scale, transparentBg)
        } finally {
            w.setLayerType(old, null)
            post { w.layout(0, 0, width, height) }
        }
        return bmp
    }

    /** v8.1.2b: 导出 = JS canvas 直出 PNG（彻底放弃 WebView 截图管线）
     *  renderCanvas 与预览共用布局公式/字号/轨迹变换（同源），toDataURL 直出指定尺寸 PNG，
     *  不依赖 capturePicture / 软件层 draw / WebView 布局视口——预览调成什么样，导出就是什么样。
     *  分片存 window.__expChunks 后按片取回（evaluateJavascript 回传），解码为 Bitmap 回调。 */
    fun exportTemplatePngAsync(
        sizePx: Int = 1024,
        heightPx: Int = 0,
        watermark: Boolean = true,
        items: List<Int> = this.items,
        dx: Float = this.dx, dy: Float = this.dy, scale: Float = this.scale,
        transparentBg: Boolean = this.transparentBg,
        cb: (Bitmap) -> Unit
    ) {
        val (wPx, hPx) = resolveExportSize(sizePx, heightPx)
        val w = web ?: run { cb(fallbackExport(wPx, hPx, watermark, items, dx, dy, scale, transparentBg)); return }
        /* v8.1.4c: 位移按画布/预览视口比例换算——预览 dx/dy 是 CSS 视口像素，导出 canvas 尺寸不同，
           直接套用会偏移；scale/rotation/tilt 为比例与角度，无需换算 */
        val (rW, rH) = renderSize()
        val kx = wPx.toFloat() / rW
        val ky = hPx.toFloat() / rH
        val payload = buildRenderPayload(wPx, hPx)
        val js = "stickerBridge.setTransform(${dx * kx},${dy * ky},$scale,$rotation,$tiltX);" +
            "stickerBridge.exportPng($wPx,$hPx,$payload);"
        w.evaluateJavascript(js, null)
        fun pollReady(attempt: Int, done: () -> Unit) {
            w.evaluateJavascript("window.__expReady||''") { r ->
                if (r?.contains("1") == true) done()
                else if (attempt < 40) w.postDelayed({ pollReady(attempt + 1, done) }, 100)
                else done()
            }
        }
        pollReady(0) {
            w.evaluateJavascript("window.__expErr||''") { err ->
                if (err?.isNotBlank() == true && err != "\"\"" && err != "null") {
                    android.util.Log.e("OB_STICKER", "canvas 导出异常: $err")
                    cb(fallbackExport(wPx, hPx, watermark, items, dx, dy, scale, transparentBg))
                    return@evaluateJavascript
                }
                val sb = StringBuilder()
                fun fetchChunk(i: Int, finish: () -> Unit) {
                    w.evaluateJavascript("(window.__expChunks&&window.__expChunks[$i])||''") { s ->
                        val v = s?.trim()
                        if (v == null || v == "null" || v == "\"\"" || v == "undefined") finish()
                        else {
                            sb.append(unwrapJsString(v))
                            fetchChunk(i + 1, finish)
                        }
                    }
                }
                fetchChunk(0) {
                    val b64 = sb.toString()
                    val bmp = if (b64.length > 64) {
                        try {
                            val bytes = android.util.Base64.decode(b64, android.util.Base64.DEFAULT)
                            BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
                        } catch (e: Exception) {
                            android.util.Log.e("OB_STICKER", "base64 解码失败", e)
                            null
                        }
                    } else null
                    if (bmp == null) cb(fallbackExport(wPx, hPx, watermark, items, dx, dy, scale, transparentBg))
                    else cb(bmp)
                }
            }
        }
    }

    /** evaluateJavascript 返回值是 JSON 字符串（外层引号 + 内部转义），还原为原始内容 */
    private fun unwrapJsString(v: String): String {
        var s = v.trim()
        if (s.length >= 2 && s.startsWith("\"") && s.endsWith("\"")) s = s.substring(1, s.length - 1)
        return s.replace("\\\"", "\"").replace("\\\\", "\\").replace("\\n", "\n").replace("\\/", "/")
    }

    /** WebView 不可用时的回退：旧 Canvas 模板绘制（保底不崩；宽度基准，高度按比例） */
    private fun fallbackExport(
        wPx: Int, hPx: Int, watermark: Boolean, items: List<Int>,
        dx: Float, dy: Float, scale: Float, transparentBg: Boolean
    ): Bitmap {
        val bmp = Bitmap.createBitmap(wPx, hPx, Bitmap.Config.ARGB_8888)
        val c = Canvas(bmp)
        val s = wPx.toFloat()
        drawTemplateSticker(c, s, s, items, dx, dy, scale, watermark, transparentBg)
        return bmp
    }

    // ================= 预览绘制 =================

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        // v8.0.6 同源渲染：贴纸预览由内嵌透明 WebView 渲染（与效果图 HTML 同一数据源）
        if (web == null) initWebRenderer()
        if (webReady && web != null) {
            scheduleWebRender()
            return
        }
        // WebView 未就绪时显示加载占位（避免白屏）
        if (stickerPreview) {
            paint.color = 0xFF9AA0A6.toInt(); paint.style = Paint.Style.FILL; paint.textSize = 14f
            paint.textAlign = Paint.Align.CENTER
            canvas.drawText("贴纸渲染加载中…", width / 2f, height / 2f, paint)
            return
        }
        if (points.isEmpty()) {
            paint.color = 0xFF9AA0A6.toInt(); paint.style = Paint.Style.STROKE; paint.strokeWidth = 1f
            paint.textSize = 14f; paint.textAlign = Paint.Align.CENTER
            canvas.drawText("暂无轨迹数据", width / 2f, height / 2f, paint)
            return
        }
        // 非贴纸模式：平面轨迹 / 立体山体预览
        if (style == STYLE_TRANSPARENT) {
            drawTrackIn(canvas, 0f, 0f, width.toFloat(), height.toFloat(), lineColorMode, dx, dy, scale)
        } else {
            drawTrackIn(canvas, 0f, 0f, width.toFloat(), height.toFloat(), COLOR_BLACK, dx, dy, scale)
        }
    }

    private fun haversineM(lat1: Double, lon1: Double, lat2: Double, lon2: Double): Double {
        val rr = 6371008.8
        val dLat = Math.toRadians(lat2 - lat1)
        val dLon = Math.toRadians(lon2 - lon1)
        val a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
                Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2)) * Math.sin(dLon / 2) * Math.sin(dLon / 2)
        return rr * 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))
    }
}

app/src/main/java/com/jichi/ob/util
app/src/main/java/com/jichi/ob/util/ActivityCache.kt
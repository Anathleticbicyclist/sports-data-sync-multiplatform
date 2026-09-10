package com.jichi.ob.ui

import android.content.Context
import android.content.res.ColorStateList
import android.graphics.Color
import android.graphics.Typeface
import android.graphics.drawable.GradientDrawable
import android.util.AttributeSet
import android.view.Gravity
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.TextView

/**
 * v7.7.7: 平台选择按钮（设置页）
 * - 文字居中完整显示（不再被徽章挤压截断）
 * - 右上角一枚小品牌圆点点缀（不贴圆角弧、不挡文字）
 * - 选中：亮绿描边 + 极浅蓝底 + 文字主色加粗 + 圆点亮起品牌色
 * - 未选中：浅灰底 + 深字 + 圆点灰
 * - 禁用：整体置灰
 */
class PlatformButton @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null
) : FrameLayout(context, attrs) {

    private val dp = resources.displayMetrics.density

    private val tv: TextView
    private val dot: ImageView
    private val dotGd: GradientDrawable

    private var fillColor = 0xFFF5F7FA.toInt()
    private var strokeColor = Color.TRANSPARENT
    private var strokeWidthPx = 0
    private var brandColor = 0xFF2B8CFF.toInt()
    private val corner = (12f * dp).toInt()

    init {
        isClickable = true
        isFocusable = true

        dotGd = GradientDrawable().apply {
            shape = GradientDrawable.OVAL
            setColor(0xFFB8C0C8.toInt())
        }
        dot = ImageView(context).apply {
            background = dotGd
            layoutParams = LayoutParams((7f * dp).toInt(), (7f * dp).toInt()).apply {
                // v7.7.7: 圆点放左上角，中心对齐圆角弧线圆心（corner=12dp, dot半径3.5dp → margin≈8.5dp），不压弧线、贴近文字侧
                gravity = Gravity.TOP or Gravity.START
                topMargin = (9f * dp).toInt()
                leftMargin = (9f * dp).toInt()
            }
        }
        tv = TextView(context).apply {
            gravity = Gravity.CENTER
            textSize = 11f
            setTextColor(0xFF1F2937.toInt())
            maxLines = 2
            layoutParams = LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT)
        }
        addView(tv)
        addView(dot)
        applyBackground()
    }

    /** 绑定该平台的品牌色（选中时圆点点亮为品牌色） */
    fun bind(brand: Int) {
        brandColor = brand
    }

    var buttonText: CharSequence
        get() = tv.text
        set(value) { tv.text = value }

    var maxLines: Int
        get() = tv.maxLines
        set(v) { tv.maxLines = v }

    fun setTextColor(c: Int) { tv.setTextColor(c) }

    fun setTextSizeDp(sp: Float) { tv.textSize = sp }

    /** 兼容旧调用：圆点颜色 */
    fun setIconTint(csl: ColorStateList) {
        dotGd.setColor(csl.defaultColor)
    }

    /** 兼容旧调用：描边颜色 */
    fun setStrokeColorCsl(csl: ColorStateList) {
        strokeColor = csl.defaultColor
        applyBackground()
    }

    /** 兼容旧调用：描边宽度(px) */
    fun setStrokeWidthPx(px: Int) {
        strokeWidthPx = px
        applyBackground()
    }

    /** 统一状态设置：选中/禁用 + 圆点/文字/背景联动 */
    fun setPlatformState(selected: Boolean, enabled: Boolean) {
        if (!enabled) {
            alpha = 0.7f
            fillColor = 0xFFE8E8E8.toInt()
            strokeColor = Color.TRANSPARENT; strokeWidthPx = 0
            tv.setTextColor(0xFFB0B0B0.toInt())
            tv.setTypeface(tv.typeface, Typeface.NORMAL)
            dotGd.setColor(0xFFB0B0B0.toInt())
        } else {
            alpha = 1f
            if (selected) {
                fillColor = 0xFFEFF6FF.toInt()
                strokeColor = 0xFF22C55E.toInt()
                strokeWidthPx = (2.5f * dp).toInt()
                tv.setTextColor(0xFF2B8CFF.toInt())
                tv.setTypeface(tv.typeface, Typeface.BOLD)
                dotGd.setColor(brandColor)
            } else {
                fillColor = 0xFFF5F7FA.toInt()
                strokeColor = Color.TRANSPARENT; strokeWidthPx = 0
                tv.setTextColor(0xFF1F2937.toInt())
                tv.setTypeface(tv.typeface, Typeface.NORMAL)
                dotGd.setColor(0xFFB8C0C8.toInt())
            }
        }
        applyBackground()
    }

    override fun setBackgroundColor(color: Int) {
        fillColor = color
        applyBackground()
    }

    private fun applyBackground() {
        val d = GradientDrawable()
        d.cornerRadius = corner.toFloat()
        d.setColor(fillColor)
        if (strokeWidthPx > 0) d.setStroke(strokeWidthPx, strokeColor)
        background = d
    }
}

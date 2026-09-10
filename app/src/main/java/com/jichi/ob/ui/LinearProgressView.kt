package com.jichi.ob.ui

import android.animation.ValueAnimator
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.RectF
import android.util.AttributeSet
import android.view.View
import kotlin.math.PI
import kotlin.math.sin

/**
 * v7.7.7: 长条进度条（同步页）
 * - 灰色边框 + 浅灰轨道：不工作时也一眼看出是进度条
 * - 不确定模式：一个渐变亮段左右循环移动（边走边亮 + 漫反射光晕）
 * - 确定模式：从左到右填充，颜色随进度渐变 蓝 → 紫 → 绿 → 红
 */
class LinearProgressView @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null
) : View(context, attrs) {

    private var max = 100
    private var progress = 0
    private var indeterminate = false
    private var breath = 0f                 // 0..1 循环相位
    private var anim: ValueAnimator? = null

    private val paint = Paint(Paint.ANTI_ALIAS_FLAG)
    private val corner = 7f                 // 圆角

    fun setProgressMax(m: Int) {
        max = if (m > 0) m else 1
        invalidate()
    }

    fun setProgress(c: Int) {
        progress = c.coerceIn(0, max)
        indeterminate = false
        invalidate()
    }

    fun setProgressIndeterminate(v: Boolean) {
        indeterminate = v
        if (v) startBreath() else stopBreath()
        invalidate()
    }

    private fun startBreath() {
        if (anim != null) return
        anim = ValueAnimator.ofFloat(0f, 1f).apply {
            duration = 1500
            repeatCount = ValueAnimator.INFINITE
            addUpdateListener {
                breath = it.animatedValue as Float
                invalidate()
            }
            start()
        }
    }

    private fun stopBreath() {
        anim?.cancel()
        anim = null
    }

    override fun onDetachedFromWindow() {
        stopBreath()
        super.onDetachedFromWindow()
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        val w = width.toFloat()
        val h = height.toFloat()
        if (w <= 0 || h <= 0) return

        // 轨道：浅灰底 + 灰描边（未工作时可见轮廓）
        val rect = RectF(0f, 0f, w, h)
        paint.style = Paint.Style.FILL
        paint.color = 0xFFE8EDF2.toInt()
        paint.alpha = 255
        canvas.drawRoundRect(rect, corner, corner, paint)
        paint.style = Paint.Style.STROKE
        paint.strokeWidth = 1.5f
        paint.color = 0xFFB8C0C8.toInt()
        canvas.drawRoundRect(rect, corner, corner, paint)
        paint.style = Paint.Style.FILL

        if (indeterminate) {
            // 一个渐变亮段从左到右循环（边走边亮）
            val seg = w * 0.32f
            val start = -seg + breath * (w + seg)
            drawSeg(canvas, start, start + seg, colorFor(breath), breath, h)
        } else if (progress > 0) {
            val frac = progress.toFloat() / max
            drawSeg(canvas, 0f, w * frac, colorFor(frac), breath, h)
        }
    }

    private fun drawSeg(canvas: Canvas, start: Float, end: Float, color: Int, ph: Float, h: Float) {
        val x0 = start.coerceIn(0f, width.toFloat())
        val x1 = end.coerceIn(0f, width.toFloat())
        if (x1 <= x0) return
        // 漫反射光晕
        paint.color = color
        paint.alpha = (45 + 60 * (0.5f + 0.5f * sin(ph * 2 * PI.toFloat()))).toInt()
        canvas.drawRoundRect(RectF(x0 - 4f, 0f, x1 + 4f, h), corner, corner, paint)
        // 主体
        paint.alpha = 255
        canvas.drawRoundRect(RectF(x0, 0f, x1, h), corner, corner, paint)
        paint.alpha = 255
    }

    /** 颜色渐变：蓝 → 紫 → 绿 → 红 */
    private fun colorFor(f: Float): Int {
        val stops = intArrayOf(0xFF2B8CFF.toInt(), 0xFF8B5CF6.toInt(), 0xFF22C55E.toInt(), 0xFFEF4444.toInt())
        val pos = floatArrayOf(0f, 0.33f, 0.66f, 1f)
        var i = 0
        while (i < pos.size - 1 && f > pos[i + 1]) i++
        val f0 = pos[i]
        val f1 = pos[i + 1]
        val t = if (f1 > f0) ((f - f0) / (f1 - f0)).coerceIn(0f, 1f) else 0f
        return lerpColor(stops[i], stops[i + 1], t)
    }

    private fun lerpColor(a: Int, b: Int, t: Float): Int {
        val r = (a shr 16 and 0xFF) + (((b shr 16 and 0xFF) - (a shr 16 and 0xFF)) * t).toInt()
        val g = (a shr 8 and 0xFF) + (((b shr 8 and 0xFF) - (a shr 8 and 0xFF)) * t).toInt()
        val bl = (a and 0xFF) + (((b and 0xFF) - (a and 0xFF)) * t).toInt()
        return (0xFF shl 24) or (r shl 16) or (g shl 8) or bl
    }
}

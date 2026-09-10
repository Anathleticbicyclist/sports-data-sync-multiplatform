package com.jichi.ob.ui

import android.animation.ValueAnimator
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Path
import android.graphics.PathMeasure
import android.graphics.RectF
import android.util.AttributeSet
import android.view.View
import kotlin.math.PI
import kotlin.math.sin

/**
 * v7.7.7: 跑道型进度环
 * 围绕矩形圆角按钮外围绘制一圈"跑道"进度：
 * - 不确定模式：一个亮段沿跑道循环跑动（跑马灯）
 * - 确定模式：进度沿跑道增长
 * - 呼吸动画：进度段宽度/透明度波动，边缘漫反射光晕
 * - 颜色随进度渐变：蓝 → 紫 → 绿 → 红
 */
class RunwayProgressView @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null
) : View(context, attrs) {

    private var max = 100
    private var progress = 0
    private var indeterminate = false
    private var breath = 0f                 // 0..1 呼吸相位
    private var anim: ValueAnimator? = null

    private val path = Path()
    private val pm = PathMeasure()
    private val paint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        style = Paint.Style.STROKE
        strokeCap = Paint.Cap.ROUND
        strokeJoin = Paint.Join.ROUND
    }
    private val tmpPath = Path()

    private val radius = 20f                 // 跑道圆角（贴合按钮 14dp 圆角，外扩更圆润）
    private val strokeW = 6f                 // 跑道主体线宽
    private val trackColor = 0xFFD7E9FF.toInt()   // 固定浅蓝轨道背景

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
            duration = 1400
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
        val half = strokeW / 2 + 1
        val rect = RectF(half, half, w - half, h - half)
        path.reset()
        path.addRoundRect(rect, radius, radius, Path.Direction.CW)
        pm.setPath(path, false)
        val len = pm.length
        if (len <= 0) return

        // 固定浅蓝轨道背景：整圈矩形圆角，让"跑道"清晰可见（围绕按钮外围）
        paint.color = trackColor
        paint.strokeWidth = 3f
        paint.alpha = 255
        canvas.drawPath(path, paint)
        paint.alpha = 255

        if (indeterminate) {
            // 跑马灯：一个亮段沿跑道循环，呼吸漫反射
            val segLen = len * 0.36f
            val start = (breath * len) % len
            drawSegment(canvas, start, segLen, colorFor(breath), breath)
        } else {
            if (progress > 0) {
                val frac = progress.toFloat() / max
                drawSegment(canvas, 0f, len * frac, colorFor(frac), breath)
            }
        }
    }

    private fun drawSegment(canvas: Canvas, start: Float, length: Float, color: Int, ph: Float) {
        if (length <= 0f) return
        val len = pm.length
        val segStart = (start % len + len) % len
        val end = segStart + length
        tmpPath.reset()
        if (end <= len) {
            pm.getSegment(segStart, end, tmpPath, true)
        } else {
            pm.getSegment(segStart, len, tmpPath, true)
            val wrap = Path()
            pm.getSegment(0f, end - len, wrap, true)
            tmpPath.addPath(wrap)
        }
        // 呼吸宽度波动
        val breatheW = strokeW * (0.75f + 0.35f * (0.5f + 0.5f * sin(ph * 2 * PI.toFloat())))

        // 光晕（漫反射）：宽描边 + 低透明度
        paint.color = color
        paint.strokeWidth = breatheW * 2.6f
        paint.alpha = (28 + 46 * (0.5f + 0.5f * sin(ph * 2 * PI.toFloat()))).toInt()
        canvas.drawPath(tmpPath, paint)

        // 主体
        paint.strokeWidth = breatheW
        paint.alpha = 255
        canvas.drawPath(tmpPath, paint)
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

package com.jichi.ob

import android.animation.Animator
import android.animation.AnimatorListenerAdapter
import android.animation.ObjectAnimator
import android.animation.ValueAnimator
import android.content.Intent
import android.graphics.drawable.GradientDrawable
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import android.view.animation.DecelerateInterpolator
import android.view.animation.LinearInterpolator
import android.widget.TextView
import androidx.activity.ComponentActivity
import androidx.core.animation.doOnEnd

/**
 * 1秒开屏动画（微信风格，浅蓝渐变，无Logo，两行文字缩放呼吸）
 */
class SplashActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_splash)

        // 渐变背景：淡蓝 → 天蓝
        val bg = findViewById<View>(R.id.splashBg)
        val gradient = GradientDrawable(
            GradientDrawable.Orientation.TL_BR,
            intArrayOf(
                0xFFC9E5FF.toInt(),
                0xFF4DAAFF.toInt()
            )
        )
        bg.background = gradient

        // 文字初始状态：透明、略小
        val text = findViewById<View>(R.id.splashText)
        text.alpha = 0f
        text.scaleX = 0.88f
        text.scaleY = 0.88f

        val title = findViewById<TextView>(R.id.tvSplashTitle)
        val slogan = findViewById<TextView>(R.id.tvSplashSlogan)
        slogan.alpha = 0f

        // 文字整体缩放呼吸动画（0.3s 淡入放大 + 呼吸）
        ObjectAnimator.ofPropertyValuesHolder(
            text,
            android.animation.PropertyValuesHolder.ofFloat("alpha", 0f, 1f),
            android.animation.PropertyValuesHolder.ofFloat("scaleX", 0.88f, 1.0f),
            android.animation.PropertyValuesHolder.ofFloat("scaleY", 0.88f, 1.0f)
        ).apply {
            duration = 350
            interpolator = DecelerateInterpolator()
            start()
        }

        // 副标题延迟淡入
        ObjectAnimator.ofFloat(slogan, "alpha", 0f, 1f).apply {
            duration = 300
            startDelay = 200
            start()
        }

        // 轻微呼吸效果（缩放 1.0 → 1.03 → 1.0）
        ObjectAnimator.ofFloat(text, "scaleX", 1.0f, 1.03f, 1.0f).apply {
            duration = 1000
            interpolator = LinearInterpolator()
            start()
        }
        ObjectAnimator.ofFloat(text, "scaleY", 1.0f, 1.03f, 1.0f).apply {
            duration = 1000
            interpolator = LinearInterpolator()
            start()
        }

        // 1秒后淡出进入主界面
        Handler(Looper.getMainLooper()).postDelayed({
            ObjectAnimator.ofFloat(text, "alpha", 1f, 0f).apply {
                duration = 200
                startDelay = 150
                doOnEnd {
                    startActivity(Intent(this@SplashActivity, MainActivity::class.java))
                    overridePendingTransition(android.R.anim.fade_in, android.R.anim.fade_out)
                    finish()
                }
                start()
            }
        }, 1000)
    }
}

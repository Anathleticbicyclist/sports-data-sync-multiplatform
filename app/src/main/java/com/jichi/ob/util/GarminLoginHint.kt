package com.jichi.ob.util

import android.content.Context
import android.content.DialogInterface
import androidx.appcompat.app.AlertDialog

/**
 * v7.9.0: 佳明登录成功后的风控引导提示
 *
 * 佳明国际/中国区对频繁 SSO 登录有限流（429，冷却期数小时~一天）。登录成功后
 * 已通过 refresh_token 生成长期刷新凭证，后续 App 会自动静默续期，无需重复登录。
 * 本提示引导用户"一次登录、长期使用"，避免反复重新登录触发风控封禁。
 */
object GarminLoginHint {

    /** 展示一次登录成功后的引导弹窗（每次成功登录展示一次即可） */
    fun show(context: Context, region: String) {
        try {
            val tip = "✅ ${region}登录成功\n\n" +
                "本次登录已生成【长期刷新凭证】，后续打开 App 会自动续期，无需重复登录。\n\n" +
                "⚠️ 请勿频繁重新登录/切换账号，以免触发佳明风控（限流封禁数小时~一天）。\n\n" +
                "建议：账号密码一次输对，不要同时登录开发体验版与正式版。"
            AlertDialog.Builder(context)
                .setTitle("登录成功 · 温馨提示")
                .setMessage(tip)
                .setPositiveButton("知道了", null)
                .setCancelable(true)
                .show()
        } catch (_: Exception) {
            // 弹窗失败静默忽略（不阻塞登录流程）
        }
    }

    /** 供测试/非UI场景调用的无界面版本（可选） */
    fun text(region: String): String =
        "✅ ${region}登录成功：已生成长期刷新凭证，后续自动续期无需重复登录；请勿频繁重新登录以免触发佳明风控。"
}

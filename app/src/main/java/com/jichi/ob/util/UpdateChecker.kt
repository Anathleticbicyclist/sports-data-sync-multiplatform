package com.jichi.ob.util

import android.annotation.SuppressLint
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Handler
import android.os.Looper
import androidx.appcompat.app.AlertDialog
import com.jichi.ob.BuildConfig
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.util.concurrent.TimeUnit

/**
 * v7.7.6: 检查更新——从 GitHub Releases 获取最新版本，发现新版弹窗提示
 * - 数据源：GitHub Release API（无需自建服务器）
 * - 手动检查（force=true）：无新版也提示"已是最新"；失败提示网络原因
 * - 静默检查（force=false）：仅发现新版才提示，且 24h 内同版本不重复打扰
 */
@SuppressLint("StaticFieldLeak")
object UpdateChecker {

    private const val RELEASES_LATEST_URL =
        "https://api.github.com/repos/Anathleticbicyclist/sports-data-sync-multiplatform/releases/latest"
    private const val RELEASES_PAGE_URL =
        "https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform/releases"
    private const val PREFS = "update_check"
    private const val KEY_LAST_NOTIFY = "last_notify"
    private const val NOTIFY_INTERVAL_MS = 24L * 3600_000L // 24h 内不重复打扰

    private val client = OkHttpClient.Builder()
        .connectTimeout(8, TimeUnit.SECONDS)
        .readTimeout(8, TimeUnit.SECONDS)
        .build()

    /** 版本号比较：支持 "7.7.10" > "7.7.9"；返回 1/0/-1 */
    fun compareVersions(v1: String, v2: String): Int {
        fun strip(s: String): String { val t = s.trim(); return if (t.startsWith("v")) t.substring(1) else t }
        val p1 = strip(v1).split(".").mapNotNull { it.toIntOrNull() }
        val p2 = strip(v2).split(".").mapNotNull { it.toIntOrNull() }
        for (i in 0 until maxOf(p1.size, p2.size)) {
            val a = p1.getOrElse(i) { 0 }
            val b = p2.getOrElse(i) { 0 }
            if (a != b) return if (a > b) 1 else -1
        }
        return 0
    }

    /**
     * 检查更新（后台线程执行，不阻塞 UI）
     * @param force true=手动：无论结果都给出明确提示；false=静默：仅发现新版才提示
     */
    fun check(context: Context, force: Boolean) {
        if (force) toastOnMain(context.applicationContext, "正在检查更新...")
        Thread {
            var found = false
            var latestVer = ""
            var latestBody = ""
            var downloadUrl = ""
            var err = false
            try {
                val req = Request.Builder()
                    .url(RELEASES_LATEST_URL)
                    .header("Accept", "application/vnd.github+json")
                    .header("User-Agent", "jichi-ob")
                    .build()
                client.newCall(req).execute().use { resp ->
                    if (resp.isSuccessful) {
                        val json = JSONObject(resp.body?.string() ?: "")
                        latestVer = json.optString("tag_name").trim()
                        latestBody = json.optString("body")
                        val assets = json.optJSONArray("assets")
                        if (assets != null && assets.length() > 0) {
                            downloadUrl = assets.getJSONObject(0).optString("browser_download_url")
                        }
                        val cur = BuildConfig.VERSION_NAME
                        found = latestVer.isNotEmpty() && compareVersions(latestVer, cur) > 0
                    }
                }
            } catch (_: Exception) {
                err = true
            }

            val appCtx = context.applicationContext
            // 静默模式：未发现新版 或 24h 内已提示过同版本 → 不打扰
            if (force && !found && err) {
                toastOnMain(appCtx, "检查更新失败：无法连接更新服务器，请检查网络")
                return@Thread
            }
            if (!force && (!found || !shouldSilentNotify(appCtx, latestVer))) return@Thread

            Handler(Looper.getMainLooper()).post {
                // AlertDialog 必须用 Activity 上下文才能正常显示（applicationContext 会无反应）
                val act = context as? android.app.Activity
                if (act != null && act.isFinishing) return@post
                if (found) showUpdateDialog(context, latestVer, latestBody, downloadUrl)
                else if (force) showUpToDate(context, latestVer)
            }
        }.start()
    }

    private fun shouldSilentNotify(ctx: Context, ver: String): Boolean {
        val sp = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        val raw = sp.getString(KEY_LAST_NOTIFY, "") ?: ""
        val parts = raw.split("@")
        val lastVer = parts.getOrNull(0)
        val lastTime = parts.getOrNull(1)?.toLongOrNull()
        val now = System.currentTimeMillis()
        if (lastVer == ver && lastTime != null && now - lastTime < NOTIFY_INTERVAL_MS) return false
        sp.edit().putString(KEY_LAST_NOTIFY, "$ver@$now").apply()
        return true
    }

    private fun toastOnMain(ctx: Context, msg: String) {
        Handler(Looper.getMainLooper()).post {
            android.widget.Toast.makeText(ctx, msg, android.widget.Toast.LENGTH_SHORT).show()
        }
    }

    private fun showUpdateDialog(ctx: Context, ver: String, body: String, downloadUrl: String) {
        val text = buildString {
            append("经检查更新，开源项目「鸡翅幸哲迈进OB(开发体验版)」最新版本为 $ver\n")
            append("你的当前版本为 v${BuildConfig.VERSION_NAME}\n\n")
            append("检测到新版本，建议更新")
            if (body.isNotBlank()) append("：\n\n更新内容：\n${body.trim().take(400)}")
            else append("。")
        }
        AlertDialog.Builder(ctx)
            .setTitle("🔄 发现新版本 $ver")
            .setMessage(text.trim())
            .setPositiveButton("去更新") { _, _ ->
                val url = if (downloadUrl.isNotBlank()) downloadUrl else RELEASES_PAGE_URL
                val intent = Intent(Intent.ACTION_VIEW, Uri.parse(url))
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                ctx.startActivity(intent)
            }
            .setNegativeButton("稍后", null)
            .show()
    }

    private fun showUpToDate(ctx: Context, latestVer: String) {
        AlertDialog.Builder(ctx)
            .setTitle("✅ 检查更新")
            .setMessage(buildString {
                append("经检查更新，开源项目「鸡翅幸哲迈进OB(开发体验版)」最新版本为 ${latestVer.ifBlank { "未知" }}\n")
                append("你的当前版本为 v${BuildConfig.VERSION_NAME}\n\n")
                append("当前已是最新版本，无需更新。")
            })
            .setPositiveButton("好的", null)
            .show()
    }
}

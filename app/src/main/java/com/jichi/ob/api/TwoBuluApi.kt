package com.jichi.ob.api

import android.content.Context
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.util.PrefsManager
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import java.io.File
import java.util.concurrent.TimeUnit

/**
 * 两步路 (2bulu) API —— v8.2.9 实验级接入
 *
 * 攻坚结论（见 .tmp_2bulu/两步路攻坚报告.md）：
 * - App 全版本加壳（娜迦+百度/梆梆），业务接口路径在壳内，静态无法提取
 * - 网页版核心路径被雷池 WAF（challenge.js）拦截，服务器环境 468
 * - 唯一可行：WebView 登录（真机过 WAF 挑战 + 手动登录），cookie 驱动网页版接口
 * - 网页版接口模式：POST /模块/动作.htm（未登录返回 nologin）；白名单含 api 前缀、app htm、js、community、event 等路径
 * - 轨迹下载：www.2bulu.com/track/t-<加密ID>.htm 页面内 KML 下载（daimou03 项目证实可行，UI 点击触发）
 *
 * 本类实现：登录态检测（cookie 验证）+ 上传/下载候选接口。
 * 上传/下载具体路径需真机登录后实测校准（标记 [待真机验证]）。
 */
class TwoBuluApi(private val ctx: Context) {

    private val prefs = PrefsManager(ctx)
    private val client = OkHttpClient.Builder()
        .connectTimeout(20, TimeUnit.SECONDS)
        .readTimeout(40, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    companion object {
        private const val HOME = "https://www.2bulu.com"
        private const val MOBILE_UA = "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36"

        /**
         * v8.3.0: 两步路"浏览即捕获"KML 保存——从 DownloadListener 拿到 KML URL 后带 cookie 下载到本地 + 写入缓存库。
         */
        fun saveKmlDownload(ctx: Context, kmlUrl: String, cookie: String, trackId: String) {
            try {
                val req = Request.Builder()
                    .url(kmlUrl)
                    .addHeader("Cookie", cookie)
                    .addHeader("User-Agent", MOBILE_UA)
                    .addHeader("Referer", "$HOME/track/t-$trackId.htm")
                    .get().build()
                val resp = OkHttpClient().newCall(req).execute()
                val bytes = resp.body?.bytes()
                if (bytes == null || bytes.isEmpty() || bytes.size < 100) {
                    android.util.Log.w("TwoBulu", "KML下载失败或内容异常: $kmlUrl size=${bytes?.size}")
                    return
                }
                val dir = File(android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS), "鸡翅幸哲迈进OB/两步路")
                if (!dir.exists()) dir.mkdirs()
                val safe = trackId.replace(Regex("[^A-Za-z0-9._-]"), "_")
                val file = File(dir, "2bulu_${safe}.kml")
                file.writeBytes(bytes)
                android.util.Log.i("TwoBulu", "✅ KML已保存: ${file.absolutePath} (${bytes.size}字节)")
                try {
                    val cache = com.jichi.ob.util.ActivityCache.get(ctx)
                    cache.upsert(com.jichi.ob.model.DataSource.TWO_BULU.shortName, com.jichi.ob.util.ActivityCache.Entry(
                        id = "2bulu_$safe",
                        platform = com.jichi.ob.model.DataSource.TWO_BULU.shortName,
                        startTime = System.currentTimeMillis(),
                        type = "kml",
                        title = "两步路轨迹 $safe",
                        distanceKm = 0.0,
                        durationSec = 0,
                        filename = file.name,
                        extra = kmlUrl
                    ))
                    cache.addPlatformLog(com.jichi.ob.model.DataSource.TWO_BULU.shortName, "✅", "KML下载成功: ${file.name} (${bytes.size}字节)")
                } catch (e: Exception) {
                    android.util.Log.w("TwoBulu", "缓存入库失败: ${e.message}")
                }
            } catch (e: Exception) {
                android.util.Log.w("TwoBulu", "KML下载异常: ${e.message}")
            }
        }
    }

    fun cookie(): String? = prefs.getTwoBuluCookie()

    fun isLoggedIn(): Boolean = prefs.isTwoBuluLoggedIn()

    /** v8.2.9: 登录态校验 —— 用 cookie 请求白名单接口，未登录返回 nologin */
    suspend fun verifyLogin(): Boolean = withContext(Dispatchers.IO) {
        val ck = cookie() ?: return@withContext false
        try {
            val req = Request.Builder()
                .url("$HOME/community/queryList.htm")
                .addHeader("Cookie", ck)
                .addHeader("User-Agent", MOBILE_UA)
                .get().build()
            val body = client.newCall(req).execute().use { it.body?.string() ?: "" }
            !body.contains("nologin") && body.length > 50
        } catch (e: Exception) { false }
    }

    /** v8.2.9: 拉取活动列表。真实接口路径未知（壳内/WAF后），返回空列表，由同步引擎提示待真机验证 */
    /** v8.3.1: 两步路拉取——从缓存库读取"浏览即捕获"已下载的 KML 记录（网页版列表 API 受 WAF 限制，真机捕获为当前唯一可靠数据源） */
    suspend fun fetchActivities(skip: Int = 0, limit: Int = 50): List<ActivityRecord> = withContext(Dispatchers.IO) {
        try {
            val cache = com.jichi.ob.util.ActivityCache.get(ctx)
            val rows = cache.queryByPlatform(com.jichi.ob.model.DataSource.TWO_BULU.shortName)
            rows.drop(skip).take(if (limit <= 0) 50 else limit).map { r ->
                ActivityRecord(r.id, r.title, java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", java.util.Locale.US).apply {
                    timeZone = java.util.TimeZone.getTimeZone("Asia/Shanghai")
                }.format(java.util.Date(r.startTime)), r.distanceKm, r.durationSec, com.jichi.ob.model.DataSource.TWO_BULU,
                    startTimeMs = r.startTime)
            }
        } catch (e: Exception) {
            android.util.Log.w("TwoBulu", "fetchActivities缓存读取失败: ${e.message}")
            emptyList()
        }
    }

    /** v8.2.9: 上传活动文件。真实上传 endpoint 未确认，暂不实际发送（标记待真机验证） */
    suspend fun uploadFile(file: File, title: String? = null): Boolean = withContext(Dispatchers.IO) {
        val ck = cookie() ?: return@withContext false
        try {
            android.util.Log.i("TwoBulu", "两步路上传接口待真机验证（文件 ${file.name}，${file.length()}B）")
            false
        } catch (e: Exception) {
            false
        }
    }

    fun logout() {
        prefs.saveTwoBuluCookie("")
    }
}

package com.jichi.ob.api

import android.util.Log
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.FormBody
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.util.concurrent.TimeUnit

/**
 * Wahoo API（v6.5.0 新增）—— 仅下载（Wahoo无公开上传API）
 *
 * 依据开源项目 tgmerritt/wahoo-skill + mrebbert/hawahooligan（已逐行核对源码）：
 * - 认证：OAuth2（需注册 Wahoo 开发者应用拿 client_id/client_secret）
 * - 列表：GET api.wahooligan.com/v1/workouts?page=&per_page=
 * - 详情：GET /v1/workouts/{id}（含 workout_summary.file.url）
 * - 下载：GET file.url（CDN 直链，免认证）
 * - 限流：沙箱 25 req/5min、100/hr、250/day（需节流）
 */
class WahooApi {

    companion object {
        private const val TAG = "WahooApi"
        const val API_BASE = "https://api.wahooligan.com"
        const val AUTHORIZE_URL = "https://api.wahooligan.com/oauth/authorize"
        const val TOKEN_URL = "https://api.wahooligan.com/oauth/token"
        const val REDIRECT_URI = "https://localhost:8080/"
        const val SCOPES = "workouts_read offline_data user_read"
        private const val UA = "jichi-ob/6.5.1 (Android)"

        // v6.5.1: 内置开发者凭证（App维护者在 developers.wahooligan.com 免费注册一次后填写）
        // 用户无需注册，直接用Wahoo账号登录授权即可。redirect_uri填 https://localhost:8080/
        const val BUILTIN_CLIENT_ID = "lGMZOR4YVIhQZt6Zao6Z5RzmGXRTFZVgmaqV91JmoeU"
        const val BUILTIN_CLIENT_SECRET = "w8aErisKTv8WV3ISYSPy70X4LWx0wGnxpwCCNCzXfpA"
        fun isBuiltinConfigured(): Boolean = BUILTIN_CLIENT_ID.isNotEmpty() && BUILTIN_CLIENT_SECRET.isNotEmpty()
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(120, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    /** 构造授权 URL（打开WebView让用户登录） */
    fun authorizeUrl(clientId: String = BUILTIN_CLIENT_ID): String =
        "$AUTHORIZE_URL?client_id=$clientId&redirect_uri=${java.net.URLEncoder.encode(REDIRECT_URI, "UTF-8")}&scope=${SCOPES.replace(" ", "%20")}&response_type=code"

    /** 用授权码换 token */
    suspend fun exchangeToken(code: String, clientId: String, clientSecret: String): Pair<String, String>? =
        withContext(Dispatchers.IO) {
            try {
                val form = FormBody.Builder()
                    .add("grant_type", "authorization_code")
                    .add("code", code)
                    .add("client_id", clientId)
                    .add("client_secret", clientSecret)
                    .add("redirect_uri", REDIRECT_URI)
                    .build()
                val req = Request.Builder().url(TOKEN_URL).post(form).build()
                client.newCall(req).execute().use { resp ->
                    if (resp.code != 200) return@withContext null
                    val json = JSONObject(resp.body?.string() ?: "{}")
                    val access = json.optString("access_token", "")
                    val refresh = json.optString("refresh_token", "")
                    if (access.isNotEmpty()) access to refresh else null
                }
            } catch (e: Exception) {
                Log.e(TAG, "exchangeToken error", e); null
            }
        }

    /** 刷新 token */
    suspend fun refreshToken(refresh: String, clientId: String, clientSecret: String): Pair<String, String>? =
        withContext(Dispatchers.IO) {
            try {
                val form = FormBody.Builder()
                    .add("grant_type", "refresh_token")
                    .add("refresh_token", refresh)
                    .add("client_id", clientId)
                    .add("client_secret", clientSecret)
                    .build()
                val req = Request.Builder().url(TOKEN_URL).post(form).build()
                client.newCall(req).execute().use { resp ->
                    if (resp.code != 200) return@withContext null
                    val json = JSONObject(resp.body?.string() ?: "{}")
                    val access = json.optString("access_token", "")
                    val newRefresh = json.optString("refresh_token", refresh)
                    if (access.isNotEmpty()) access to newRefresh else null
                }
            } catch (e: Exception) { Log.e(TAG, "refreshToken error", e); null }
        }

    private fun authHeaders(token: String) = mapOf(
        "Authorization" to "Bearer $token",
        "Accept" to "application/json",
        "User-Agent" to UA
    )

    /** 获取用户名 */
    suspend fun getUsername(token: String): String? = withContext(Dispatchers.IO) {
        try {
            val req = Request.Builder().url("$API_BASE/v1/user").apply {
                authHeaders(token).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) return@withContext null
                val json = JSONObject(resp.body?.string() ?: "{}")
                (json.optString("first_name") + " " + json.optString("last_name")).trim().ifBlank { null }
            }
        } catch (e: Exception) { null }
    }

    /** 获取活动列表 */
    suspend fun getActivities(token: String, offset: Int, limit: Int): List<ActivityRecord> = withContext(Dispatchers.IO) {
        try {
            val perPage = 30
            val page = (offset / perPage) + 1
            val url = "$API_BASE/v1/workouts?page=$page&per_page=$perPage"
            val req = Request.Builder().url(url).apply {
                authHeaders(token).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) {
                    Log.w(TAG, "getActivities HTTP ${resp.code}")
                    return@withContext emptyList()
                }
                val json = JSONObject(resp.body?.string() ?: "{}")
                val arr = json.optJSONArray("workouts") ?: return@withContext emptyList()
                val out = mutableListOf<ActivityRecord>()
                var skip = offset - (page - 1) * perPage
                for (i in 0 until arr.length()) {
                    val item = arr.getJSONObject(i)
                    if (skip > 0) { skip--; continue }
                    if (out.size >= limit) break
                    val id = item.optLong("id", 0L).toString()
                    if (id == "0") continue
                    val title = item.optString("name").ifBlank { "Wahoo骑行" }
                    val startTime = item.optString("starts").ifBlank { "" }
                    val distance = item.optDouble("distance", 0.0)
                    val duration = item.optInt("duration", 0)
                    out.add(ActivityRecord(id, title, startTime, distance, duration, DataSource.WAHOO))
                }
                out
            }
        } catch (e: Exception) {
            Log.e(TAG, "getActivities error", e); emptyList()
        }
    }

    /** 下载 FIT：先取详情拿 file.url，再 GET CDN */
    suspend fun downloadFit(token: String, workoutId: String): ByteArray? = withContext(Dispatchers.IO) {
        try {
            // 1) 详情拿 file.url
            val detailReq = Request.Builder().url("$API_BASE/v1/workouts/$workoutId").apply {
                authHeaders(token).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            val fileUrl = client.newCall(detailReq).execute().use { resp ->
                if (resp.code != 200) return@withContext null
                val json = JSONObject(resp.body?.string() ?: "{}")
                json.optJSONObject("workout_summary")?.optJSONObject("file")?.optString("url") ?: ""
            }
            if (fileUrl.isEmpty()) return@withContext null
            // 2) CDN 下载（免认证）
            val dlReq = Request.Builder().url(fileUrl).addHeader("User-Agent", UA).get().build()
            client.newCall(dlReq).execute().use { dl ->
                if (dl.code != 200) return@withContext null
                dl.body?.bytes()
            }
        } catch (e: Exception) {
            Log.e(TAG, "downloadFit error", e); null
        }
    }
}

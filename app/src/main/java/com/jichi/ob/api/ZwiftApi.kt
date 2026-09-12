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
 * Zwift API（v7.8.4 新增，纯HTTP 仅下载源）
 *
 * 认证: OAuth2 password grant（官方服务端，2026 仍可用）
 *   POST https://secure.zwift.com/auth/realms/zwift/tokens/access/codes
 *   form {grant_type:password, username, password, client_id:"Zwift_Mobile_Link"}
 *   → {access_token, refresh_token, expires_in, refresh_expires_in}
 * 刷新: grant_type=refresh_token（提前30s刷新，轮换令牌）
 * 列表: GET {BASE}/api/profiles/{playerId}/activities?start=0&limit=10（Bearer）
 *       playerId 先 GET /api/profiles/me 解析（缓存）
 *       记录含 fitFileBucket + fitFileKey
 * 下载: GET https://{fitFileBucket}.s3.amazonaws.com/{fitFileKey}（公开S3，无需token）
 *
 * 风险点：API host 为地区性动态域名，做多 host 候选 + 失败轮换。
 */
class ZwiftApi {

    companion object {
        private const val TAG = "ZwiftApi"
        private const val AUTH_URL = "https://secure.zwift.com/auth/realms/zwift/tokens/access/codes"
        private const val CLIENT_ID = "Zwift_Mobile_Link"
        private const val TOKEN_EXPIRY_BUFFER_SEC = 30L
        private val BASE_HOSTS = listOf(
            "https://us-or-rly101.zwift.com",
            "https://us.zwift.com",
            "https://secure.zwift.com"
        )
        private const val UA = "Zwift/115 CFNetwork/758.0.2 Darwin/15.0.0"
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(60, TimeUnit.SECONDS)
        .writeTimeout(60, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    data class LoginResult(val token: String, val refreshToken: String, val playerId: String?)

    /** 账号密码登录，返回 token+refresh_token+playerId(可能为null需再解析) */
    suspend fun login(username: String, password: String): LoginResult? = withContext(Dispatchers.IO) {
        try {
            val body = FormBody.Builder()
                .add("grant_type", "password")
                .add("username", username)
                .add("password", password)
                .add("client_id", CLIENT_ID)
                .build()
            val req = Request.Builder()
                .url(AUTH_URL)
                .addHeader("User-Agent", UA)
                .post(body)
                .build()
            client.newCall(req).execute().use { resp ->
                val text = resp.body?.string() ?: return@withContext null
                if (resp.code != 200) {
                    Log.w(TAG, "Zwift login HTTP ${resp.code}: ${text.take(200)}")
                    return@withContext null
                }
                val json = try { JSONObject(text) } catch (_: Exception) { null } ?: return@withContext null
                val token = json.optString("access_token").takeIf { it.isNotBlank() } ?: return@withContext null
                LoginResult(token, json.optString("refresh_token"), null)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Zwift login error", e)
            null
        }
    }

    /** refresh_token 刷新（轮换令牌），成功返回新 (access_token, refresh_token) */
    suspend fun refreshToken(refreshToken: String): Pair<String, String>? = withContext(Dispatchers.IO) {
        try {
            val body = FormBody.Builder()
                .add("grant_type", "refresh_token")
                .add("refresh_token", refreshToken)
                .add("client_id", CLIENT_ID)
                .build()
            val req = Request.Builder().url(AUTH_URL).addHeader("User-Agent", UA).post(body).build()
            client.newCall(req).execute().use { resp ->
                val text = resp.body?.string() ?: return@withContext null
                if (resp.code != 200) return@withContext null
                val json = try { JSONObject(text) } catch (_: Exception) { null } ?: return@withContext null
                val at = json.optString("access_token").takeIf { it.isNotBlank() } ?: return@withContext null
                val rt = json.optString("refresh_token").takeIf { it.isNotBlank() } ?: refreshToken
                at to rt
            }
        } catch (e: Exception) {
            Log.e(TAG, "Zwift refresh error", e)
            null
        }
    }

    /** 解析 playerId（GET /api/profiles/me），失败返回 null */
    suspend fun getProfileId(token: String): String? = withContext(Dispatchers.IO) {
        if (token.isBlank()) return@withContext null
        try {
            for (base in BASE_HOSTS) {
                val req = Request.Builder()
                    .url("$base/api/profiles/me")
                    .addHeader("Accept", "application/json")
                    .addHeader("Authorization", "Bearer $token")
                    .addHeader("User-Agent", UA)
                    .build()
                val json = runCatching {
                    client.newCall(req).execute().use { resp ->
                        if (resp.code != 200) null else JSONObject(resp.body?.string() ?: "")
                    }
                }.getOrNull() ?: continue
                val id = json.opt("id")?.toString()
                if (!id.isNullOrBlank()) return@withContext id
            }
            null
        } catch (e: Exception) {
            Log.e(TAG, "Zwift getProfileId error", e)
            null
        }
    }

    /** 校验 token：解析 playerId，成功返回 true */
    suspend fun validateToken(token: String): Boolean = !getProfileId(token).isNullOrBlank()

    /** 启动登录检测 */
    suspend fun getUsername(token: String): String? = withContext(Dispatchers.IO) {
        if (getProfileId(token).isNullOrBlank()) null else "Zwift用户"
    }

    /** 获取活动列表。extra 存 "bucket|key" 供下载。playerId 为空时自动解析 */
    suspend fun getActivities(token: String, playerId: String?, skip: Int, limit: Int): List<ActivityRecord> =
        withContext(Dispatchers.IO) {
            try {
                val pid = playerId?.takeIf { it.isNotBlank() } ?: getProfileId(token)
                    ?: throw IllegalStateException("Zwift 无法解析玩家ID")
                var lastErr: Exception? = null
                for (base in BASE_HOSTS) {
                    try {
                        val url = "$base/api/profiles/$pid/activities?start=$skip&limit=$limit"
                        val req = Request.Builder()
                            .url(url)
                            .addHeader("Accept", "application/json")
                            .addHeader("Authorization", "Bearer $token")
                            .addHeader("User-Agent", UA)
                            .build()
                        client.newCall(req).execute().use { resp ->
                            if (resp.code == 401) throw IllegalStateException("Zwift token 过期(401)")
                            val body = resp.body?.string() ?: return@withContext emptyList()
                            if (resp.code != 200) throw IllegalStateException("Zwift HTTP ${resp.code}: ${body.take(100)}")
                            return@withContext parseActivities(body, skip, limit)
                        }
                    } catch (e: Exception) {
                        if (e is IllegalStateException && e.message?.contains("401") == true) throw e
                        lastErr = e
                    }
                }
                throw lastErr ?: IllegalStateException("Zwift 所有host请求失败")
            } catch (e: Exception) {
                Log.e(TAG, "Zwift getActivities error", e)
                throw e
            }
        }

    private fun parseActivities(body: String, skip: Int, limit: Int): List<ActivityRecord> {
        val json = try { JSONObject(body) } catch (_: Exception) { null }
        var arr: org.json.JSONArray? = json?.optJSONArray("activities")
        if (arr == null) {
            try {
                val direct = org.json.JSONArray(body)
                if (direct.length() > 0) arr = direct
            } catch (_: Exception) {}
        }
        if (arr == null) return emptyList()
        val out = mutableListOf<ActivityRecord>()
        val total = arr.length()
        var idx = skip
        var count = 0
        while (idx < total && count < limit) {
            val item = arr.optJSONObject(idx) ?: run { idx++; continue }
            val id = (item.opt("id") ?: item.opt("activityId"))?.toString() ?: run { idx++; continue }
            val bucket = item.optString("fitFileBucket").takeIf { it.isNotBlank() }
            val key = item.optString("fitFileKey").takeIf { it.isNotBlank() }
            if (bucket == null || key == null) { idx++; continue }
            val title = item.optString("name").takeIf { it.isNotBlank() }
                ?: item.optString("title").takeIf { it.isNotBlank() }
                ?: "Zwift骑行"
            val start = item.optString("start_date_local").takeIf { it.isNotBlank() }
                ?: item.optString("startDate").takeIf { it.isNotBlank() }
                ?: item.optString("createdAt").takeIf { it.isNotBlank() }
                ?: ""
            // Zwift 距离单位米 → km
            val distM = item.optDouble("distance", -1.0).takeIf { it >= 0 }
                ?: item.optDouble("distanceInMeters", -1.0).takeIf { it >= 0 }
                ?: 0.0
            val dur = item.optInt("duration", item.optInt("durationInSeconds", 0))
            out.add(ActivityRecord(id, title, start, distM / 1000.0, dur, DataSource.ZWIFT, "$bucket|$key"))
            idx++; count++
        }
        return out
    }

    /** 下载 FIT：S3 公开 URL 直下，extra 为 "bucket|key" */
    suspend fun downloadFit(extra: String): ByteArray = withContext(Dispatchers.IO) {
        try {
            val parts = extra.split("|")
            if (parts.size < 2) throw IllegalStateException("Zwift 下载信息缺失")
            val url = "https://${parts[0]}.s3.amazonaws.com/${parts[1]}"
            val req = Request.Builder().url(url).build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) throw IllegalStateException("Zwift 文件下载失败 HTTP ${resp.code}")
                resp.body?.bytes() ?: throw IllegalStateException("Zwift 文件为空")
            }
        } catch (e: Exception) {
            Log.e(TAG, "Zwift downloadFit error", e)
            throw e
        }
    }
}

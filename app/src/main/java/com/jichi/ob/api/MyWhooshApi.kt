package com.jichi.ob.api

import android.util.Log
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONObject
import java.util.UUID
import java.util.concurrent.TimeUnit

/**
 * MyWhoosh API（v7.8.4 新增，纯HTTP 仅下载源）
 *
 * 认证: 账号密码 login（纯API 无需浏览器）
 * 登录: POST https://services.mywhoosh.com/http-service/api/login
 *       JSON {Username, Password, Platform:"Android", Action:1001,
 *             CorrelationId(uuid), DeviceId(uuid), Authorization:""}
 *       → {Success, AccessToken, WhooshId, RefreshToken, Message?}
 * 列表: POST https://service14.mywhoosh.com/v2/rider/profile/activities
 *       (Bearer, JSON {page, limit, sortDate:"DESC"/"ASC"})
 *       → 兼容 list / data.results / data[] / activities / results / rides / rideHistory
 * 下载: POST .../download-activity-file  JSON {key:WhooshId, fileId:activityFileId}
 *       → data 为 S3 预签名 URL → GET 直下（校验 .FIT magic bytes）
 *
 * 注：无官方下载接口的 refresh_token 端点，401 时用保存的账号密码重新登录兜底。
 */
class MyWhooshApi {

    companion object {
        private const val TAG = "MyWhooshApi"
        private const val LOGIN_URL = "https://services.mywhoosh.com/http-service/api/login"
        private const val API_BASE = "https://service14.mywhoosh.com/v2/rider/profile"
        private const val JSON_MEDIA = "application/json; charset=utf-8"
        private const val UA = "MyWhoosh-Python-Client/1.0"
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(60, TimeUnit.SECONDS)
        .writeTimeout(60, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private var lastUsername: String? = null
    private var lastPassword: String? = null

    data class LoginResult(val token: String, val whooshId: String, val refreshToken: String)

    private fun jsonBody(o: JSONObject) =
        o.toString().toRequestBody(JSON_MEDIA.toMediaType())

    /** 账号密码登录，成功返回 token+WhooshId+refreshToken，失败返回 null */
    suspend fun login(username: String, password: String): LoginResult? = withContext(Dispatchers.IO) {
        try {
            lastUsername = username
            lastPassword = password
            val payload = JSONObject().apply {
                put("Username", username)
                put("Password", password)
                put("Platform", "Android")
                put("Action", 1001)
                put("CorrelationId", UUID.randomUUID().toString())
                put("DeviceId", UUID.randomUUID().toString())
                put("Authorization", "")
            }
            val req = Request.Builder()
                .url(LOGIN_URL)
                .addHeader("Content-Type", JSON_MEDIA)
                .addHeader("Accept", "application/json")
                .addHeader("User-Agent", UA)
                .post(jsonBody(payload))
                .build()
            client.newCall(req).execute().use { resp ->
                val body = resp.body?.string() ?: return@withContext null
                if (resp.code != 200) {
                    Log.w(TAG, "MyWhoosh login HTTP ${resp.code}: ${body.take(200)}")
                    return@withContext null
                }
                val json = try { JSONObject(body) } catch (_: Exception) { null } ?: return@withContext null
                if (!json.optBoolean("Success", false)) {
                    Log.w(TAG, "MyWhoosh login failed: ${json.optString("Message")}")
                    return@withContext null
                }
                val token = json.optString("AccessToken").takeIf { it.isNotBlank() } ?: return@withContext null
                LoginResult(token, json.optString("WhooshId"), json.optString("RefreshToken"))
            }
        } catch (e: Exception) {
            Log.e(TAG, "MyWhoosh login error", e)
            null
        }
    }

    /** 校验 token：调一次活动列表（limit=1），有效返回 true */
    suspend fun validateToken(token: String): Boolean = withContext(Dispatchers.IO) {
        if (token.isBlank()) return@withContext false
        try {
            val payload = JSONObject().apply { put("page", 1); put("limit", 1); put("sortDate", "DESC") }
            val req = Request.Builder()
                .url("$API_BASE/activities")
                .addHeader("Authorization", "Bearer $token")
                .addHeader("Content-Type", JSON_MEDIA)
                .addHeader("User-Agent", UA)
                .post(jsonBody(payload))
                .build()
            client.newCall(req).execute().use { resp ->
                resp.code == 200
            }
        } catch (e: Exception) {
            Log.e(TAG, "MyWhoosh validateToken error", e)
            false
        }
    }

    /** 启动登录检测：token 有效返回 "MyWhoosh用户"，无效返回 null */
    suspend fun getUsername(token: String): String? = withContext(Dispatchers.IO) {
        if (validateToken(token)) "MyWhoosh用户" else null
    }

    /** 401 时用最近一次登录的账号密码重新登录（内存兜底） */
    suspend fun reLoginIfNeeded(): LoginResult? = withContext(Dispatchers.IO) {
        val u = lastUsername ?: return@withContext null
        val p = lastPassword ?: return@withContext null
        login(u, p)
    }

    /** 获取活动列表。whooshId 用于部分结构；返回记录 extra 存 activityFileId */
    suspend fun getActivities(token: String, whooshId: String, skip: Int, limit: Int): List<ActivityRecord> =
        withContext(Dispatchers.IO) {
            try {
                val payload = JSONObject().apply {
                    put("page", 1)
                    put("limit", limit)
                    put("sortDate", "DESC")
                }
                val req = Request.Builder()
                    .url("$API_BASE/activities")
                    .addHeader("Authorization", "Bearer $token")
                    .addHeader("Content-Type", JSON_MEDIA)
                    .addHeader("User-Agent", UA)
                    .post(jsonBody(payload))
                    .build()
                client.newCall(req).execute().use { resp ->
                    if (resp.code == 401) throw IllegalStateException("MyWhoosh token 过期(401)")
                    val body = resp.body?.string() ?: return@withContext emptyList()
                    if (resp.code != 200) {
                        Log.w(TAG, "MyWhoosh activities HTTP ${resp.code}: ${body.take(150)}")
                        return@withContext emptyList()
                    }
                    parseActivities(body, skip, limit)
                }
            } catch (e: Exception) {
                Log.e(TAG, "MyWhoosh getActivities error", e)
                throw e
            }
        }

    private fun parseActivities(body: String, skip: Int, limit: Int): List<ActivityRecord> {
        val json = try { JSONObject(body) } catch (_: Exception) { null } ?: return emptyList()
        // 兼容 data.results / data[] / activities / results / rides / rideHistory
        var arr: org.json.JSONArray? = null
        val data = json.opt("data")
        when {
            data is JSONObject -> arr = data.optJSONArray("results")
            data is org.json.JSONArray -> arr = data
        }
        if (arr == null) {
            for (k in listOf("activities", "results", "rides", "rideHistory")) {
                val a = json.optJSONArray(k)
                if (a != null) { arr = a; break }
            }
        }
        if (arr == null && json.length() > 0 && json.opt("results") == null && data == null) {
            // 顶层直接是数组的情况（JSONArray 包成 {"_": [...]} 兜底）
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
            val id = (item.opt("id") ?: item.opt("_id"))?.toString() ?: run { idx++; continue }
            val fileId = item.optString("activityFileId").takeIf { it.isNotBlank() }
            if (fileId == null) { idx++; continue }   // 无文件ID无法下载，跳过
            val title = item.optString("name").takeIf { it.isNotBlank() }
                ?: item.optString("title").takeIf { it.isNotBlank() }
                ?: "MyWhoosh骑行"
            val start = item.optString("date").takeIf { it.isNotBlank() }
                ?: item.optString("startTime").takeIf { it.isNotBlank() }
                ?: item.optString("createdAt").takeIf { it.isNotBlank() }
                ?: ""
            val dist = parseDouble(item, arrayOf("distanceKm", "distance", "totalDistance"))
            val dur = (parseDouble(item, arrayOf("duration", "durationSeconds", "totalTime")) ?: 0.0).toInt()
            out.add(ActivityRecord(id, title, start, dist ?: 0.0, dur, DataSource.MYWHOOSH, fileId))
            idx++; count++
        }
        return out
    }

    private fun parseDouble(obj: JSONObject, keys: Array<String>): Double? {
        for (k in keys) {
            val v = obj.opt(k) ?: continue
            val s = v.toString()
            val d = s.toDoubleOrNull() ?: continue
            return d
        }
        return null
    }

    /** 下载 FIT：先拿 S3 预签名 URL，再 GET 下载，校验 .FIT magic bytes */
    suspend fun downloadFit(token: String, whooshId: String, activityFileId: String): ByteArray =
        withContext(Dispatchers.IO) {
            try {
                val payload = JSONObject().apply {
                    put("key", whooshId)
                    put("fileId", activityFileId)
                }
                val req = Request.Builder()
                    .url("$API_BASE/download-activity-file")
                    .addHeader("Authorization", "Bearer $token")
                    .addHeader("Content-Type", JSON_MEDIA)
                    .addHeader("User-Agent", UA)
                    .post(jsonBody(payload))
                    .build()
                val url = client.newCall(req).execute().use { resp ->
                    if (resp.code == 401) throw IllegalStateException("MyWhoosh token 过期(401)")
                    val body = resp.body?.string() ?: throw IllegalStateException("MyWhoosh 下载URL响应为空")
                    if (resp.code != 200) throw IllegalStateException("MyWhoosh 获取下载URL失败 HTTP ${resp.code}")
                    val json = try { JSONObject(body) } catch (_: Exception) { null }
                        ?: throw IllegalStateException("MyWhoosh 下载URL响应解析失败")
                    if (json.opt("error") != null && json.optBoolean("error", false))
                        throw IllegalStateException("MyWhoosh 下载URL错误: ${json.optString("message")}")
                    val d = json.optString("data")
                    if (!d.startsWith("http")) throw IllegalStateException("MyWhoosh 下载URL无效: ${d.take(80)}")
                    d
                }
                val dlReq = Request.Builder().url(url).build()
                client.newCall(dlReq).execute().use { resp ->
                    if (resp.code != 200) throw IllegalStateException("MyWhoosh 文件下载失败 HTTP ${resp.code}")
                    resp.body?.bytes() ?: throw IllegalStateException("MyWhoosh 文件为空")
                }
            } catch (e: Exception) {
                Log.e(TAG, "MyWhoosh downloadFit error", e)
                throw e
            }
        }
}

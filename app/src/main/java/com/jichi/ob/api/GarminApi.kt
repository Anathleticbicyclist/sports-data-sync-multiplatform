package com.jichi.ob.api

import android.util.Log
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONArray
import org.json.JSONObject
import java.io.ByteArrayInputStream
import java.util.concurrent.TimeUnit
import java.util.zip.ZipInputStream

/**
 * 佳明(Garmin) API（v6.5.3 重写认证）—— CN/COM 双域名
 *
 * v6.5.3 重要变更：佳明2026年改认证流，旧cookie-only方式失效。
 * 新流程：WebView SSO登录 → 捕获ticket(ST-...) → OAuth1 preauthorized → OAuth2 exchange → Bearer token调API
 * 参考：garth(已废弃) + python-garminconnect(新移动SSO流) + gist meddlesome/garmin-browser-auth.py
 *
 * - 列表：GET {connectapi}/activitylist-service/activities/search/activities
 * - FIT下载：GET {connectapi}/download-service/files/activity/{id}（返回zip）
 * - 上传：POST {connectapi}/upload-service/upload（multipart，202成功/409重复）
 * - token刷新：refresh_token → /oauth-service/oauth/token (grant_type=refresh_token)
 */
class GarminApi {
    companion object {
        private const val TAG = "GarminApi"
        const val LOGIN_URL_COM = "https://sso.garmin.com/sso/signin?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.com%2Fmodern%2F"
        const val LOGIN_URL_CN = "https://sso.garmin.cn/sso/signin?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.cn%2Fapp"
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private fun apiHost(ds: DataSource): String =
        if (ds == DataSource.GARMIN_CN) "connectapi.garmin.cn" else "connectapi.garmin.com"

    /** v6.5.3: 凭证格式为 OAuth2 token JSON（LoginWebActivity返回RESULT_TOKEN）
     *  兼容旧格式 "token;cookie" */
    private fun parseCredential(cred: String): GarminOAuthHelper.OAuth2Token? {
        if (cred.isEmpty()) return null
        if (cred.trimStart().startsWith("{")) {
            return GarminOAuthHelper.OAuth2Token.fromJson(cred)
        }
        val token = cred.split(";").firstOrNull()?.trim() ?: ""
        if (token.isEmpty()) return null
        return GarminOAuthHelper.OAuth2Token(
            accessToken = token, refreshToken = "",
            expiresIn = 3600, refreshExpiresIn = 71400
        )
    }

    /** 确保token有效，过期则刷新，返回最新token JSON（调用方需保存更新） */
    fun ensureValidToken(ds: DataSource, cred: String): String {
        val token = parseCredential(cred) ?: return cred
        if (!token.isExpired()) return cred
        if (token.refreshToken.isEmpty() || token.isRefreshExpired()) {
            Log.w(TAG, "token过期且无有效refresh_token，需重新登录")
            return cred
        }
        return try {
            val cn = ds == DataSource.GARMIN_CN
            val newToken = refreshOAuth2Token(token.refreshToken, cn)
            Log.i(TAG, "✅ 佳明token刷新成功")
            newToken.toJson()
        } catch (e: Exception) {
            Log.e(TAG, "佳明token刷新失败: ${e.message}")
            cred
        }
    }

    private fun refreshOAuth2Token(refreshToken: String, cn: Boolean): GarminOAuthHelper.OAuth2Token {
        val base = if (cn) "https://connectapi.garmin.cn" else "https://connectapi.garmin.com"
        val url = "$base/oauth-service/oauth/token"
        val conn = java.net.URL(url).openConnection() as java.net.HttpURLConnection
        conn.requestMethod = "POST"
        conn.setRequestProperty("User-Agent", "com.garmin.android.apps.connectmobile")
        conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded")
        conn.doOutput = true
        conn.connectTimeout = 15000
        conn.readTimeout = 15000
        val body = "grant_type=refresh_token&refresh_token=${java.net.URLEncoder.encode(refreshToken, "UTF-8")}"
        conn.outputStream.write(body.toByteArray())
        val code = conn.responseCode
        val respBody = if (code == 200) conn.inputStream.bufferedReader().readText()
                       else conn.errorStream?.bufferedReader()?.readText() ?: ""
        if (code != 200) throw Exception("refresh failed: HTTP $code, $respBody")
        val json = JSONObject(respBody)
        return GarminOAuthHelper.OAuth2Token(
            accessToken = json.getString("access_token"),
            refreshToken = json.optString("refresh_token", refreshToken),
            expiresIn = json.optLong("expires_in", 3600),
            refreshExpiresIn = json.optLong("refresh_token_expires_in", 71400)
        )
    }

    private fun authHeaders(ds: DataSource, cred: String): Map<String, String> {
        val token = parseCredential(cred)
        val h = mutableMapOf(
            "User-Agent" to "GCM-iOS-5.7.2.1",
            "nk" to "NT",
            "Accept" to "application/json"
        )
        token?.let { if (it.accessToken.isNotEmpty()) h["Authorization"] = "Bearer ${it.accessToken}" }
        return h
    }

    /** 获取用户名 */
    suspend fun getUsername(ds: DataSource, cred: String): String? = withContext(Dispatchers.IO) {
        try {
            val url = "https://${apiHost(ds)}/userprofile-service/socialProfile"
            val req = Request.Builder().url(url).apply {
                authHeaders(ds, cred).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) return@withContext null
                val body = resp.body?.string() ?: return@withContext null
                val json = JSONObject(body)
                json.optString("displayName").ifBlank { null }
            }
        } catch (e: Exception) { null }
    }

    /** 获取活动列表 */
    suspend fun getActivities(ds: DataSource, cred: String, offset: Int, limit: Int): List<ActivityRecord> = withContext(Dispatchers.IO) {
        val url = "https://${apiHost(ds)}/activitylist-service/activities/search/activities?start=$offset&limit=$limit"
        try {
            val req = Request.Builder().url(url).apply {
                authHeaders(ds, cred).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) {
                    Log.w(TAG, "getActivities HTTP ${resp.code}: ${resp.body?.string()?.take(150)}")
                    return@withContext emptyList()
                }
                val arr = JSONArray(resp.body?.string() ?: "[]")
                val out = mutableListOf<ActivityRecord>()
                for (i in 0 until arr.length()) {
                    val item = arr.getJSONObject(i)
                    val id = item.optString("activityId")
                    if (id.isEmpty()) continue
                    val title = item.optString("activityName").ifBlank { "佳明活动" }
                    val startTime = item.optString("startTimeLocal").ifBlank { item.optString("startTimeGMT") }
                    val distance = item.optDouble("distance", 0.0) / 1000.0
                    val duration = item.optInt("duration", 0)
                    out.add(ActivityRecord(id, title, startTime, distance, duration, ds))
                }
                out
            }
        } catch (e: Exception) {
            Log.e(TAG, "getActivities error", e); emptyList()
        }
    }

    /** 下载 FIT（返回zip，解压出 .fit） */
    suspend fun downloadFit(ds: DataSource, cred: String, activityId: String): ByteArray? = withContext(Dispatchers.IO) {
        try {
            val url = "https://${apiHost(ds)}/download-service/files/activity/$activityId"
            val req = Request.Builder().url(url).apply {
                authHeaders(ds, cred).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) {
                    Log.w(TAG, "downloadFit HTTP ${resp.code}")
                    return@withContext null
                }
                val zipBytes = resp.body?.bytes() ?: return@withContext null
                unzipFit(zipBytes)
            }
        } catch (e: Exception) {
            Log.e(TAG, "downloadFit error", e); null
        }
    }

    private fun unzipFit(zipBytes: ByteArray): ByteArray? {
        return try {
            ZipInputStream(ByteArrayInputStream(zipBytes)).use { zis ->
                var entry = zis.nextEntry
                while (entry != null) {
                    if (entry.name.endsWith(".fit", ignoreCase = true)) {
                        val out = java.io.ByteArrayOutputStream()
                        val buf = ByteArray(65536)
                        var n: Int
                        while (zis.read(buf).also { n = it } != -1) out.write(buf, 0, n)
                        return out.toByteArray()
                    }
                    zis.closeEntry()
                    entry = zis.nextEntry
                }
                null
            }
        } catch (e: Exception) {
            Log.e(TAG, "unzipFit error", e)
            if (zipBytes.size >= 14 && zipBytes[8] == '.'.code.toByte() && zipBytes[9] == 'F'.code.toByte()) zipBytes else null
        }
    }

    /** 上传 FIT/GPX/TCX 到佳明（202成功/409重复） */
    suspend fun uploadActivity(ds: DataSource, cred: String, data: ByteArray, fileName: String): String? = withContext(Dispatchers.IO) {
        try {
            val url = "https://${apiHost(ds)}/upload-service/upload/"
            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("file", fileName, data.toRequestBody("application/octet-stream".toMediaType()))
                .build()
            val reqBuilder = Request.Builder().url(url).apply {
                authHeaders(ds, cred).forEach { (k, v) -> addHeader(k, v) }
                addHeader("Accept", "application/json")
            }
            val req = reqBuilder.post(body).build()
            client.newCall(req).execute().use { resp ->
                val result = resp.body?.string() ?: ""
                Log.d(TAG, "Garmin upload HTTP ${resp.code}: ${result.take(200)}")
                when (resp.code) {
                    202 -> null
                    409 -> if (result.contains("Duplicate Activity")) "重复活动(已在佳明存在)"
                           else "佳明上传冲突 HTTP 409: ${result.take(100)}"
                    400, 415 -> "佳明拒绝该文件(HTTP ${resp.code}): ${result.take(150)}"
                    else -> "佳明上传失败 HTTP ${resp.code}: ${result.take(100)}"
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Garmin upload error", e)
            "佳明上传异常: ${e.message}"
        }
    }
}

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
 * 佳明(Garmin) API（v6.5.8 重写认证——gc-api代理 + JWT_WEB cookie + connect-csrf-token）
 *
 * v6.5.8 重要变更：旧OAuth2 Bearer token方式在新版佳明认证流下不可靠。
 * 新流程（已Python实测全流程通过）：
 *   1. WebView SSO登录 → 登录成功后cookie中有JWT_WEB
 *   2. 从页面HTML提取<meta name="csrf-token" content="...">
 *   3. API调用：https://connect.garmin.cn/gc-api/{path}，header带 connect-csrf-token + Cookie: JWT_WEB=...
 *
 * - 列表：GET /gc-api/activitylist-service/activities/search/activities
 * - FIT下载：GET /gc-api/download-service/files/activity/{id}（返回zip，解压出.fit）
 * - 上传：POST /gc-api/upload-service/upload/（multipart，202成功/409重复）
 *
 * 凭证格式：JSON {"jwt_web":"...","csrf":"..."}（LoginWebActivity返回RESULT_TOKEN）
 */
class GarminApi {
    companion object {
        private const val TAG = "GarminApi"
        // v6.5.5: 佳明Connect官方登录URL格式
        const val LOGIN_URL_COM = "https://sso.garmin.com/portal/sso/en-US/sign-in?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.com%2Fmodern%2F"
        const val LOGIN_URL_CN = "https://sso.garmin.cn/portal/sso/zh-CN/sign-in?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.cn%2Fapp"
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    /** v6.7.0: 凭证格式为 JSON {"jwt_web":"...","session":"...","csrf":"..."}
     *  关键：gc-api必须同时传递JWT_WEB和session两个cookie，缺一返回401
     *  兼容旧格式 {"cookies":"...","csrf":"..."} 和 {"jwt_web":"...","csrf":"..."} */
    private data class GarminSession(val cookies: String, val csrf: String) {
        fun toJson(): String = JSONObject().put("cookies", cookies).put("csrf", csrf).toString()
        companion object {
            fun fromJson(json: String): GarminSession? {
                return try {
                    val obj = JSONObject(json)
                    val csrf = obj.optString("csrf", "")
                    // 新格式：jwt_web + session（两个都必须有）
                    val jwtWeb = obj.optString("jwt_web", "")
                    val sessionCookie = obj.optString("session", "")
                    val cookies = if (jwtWeb.isNotEmpty() && sessionCookie.isNotEmpty()) {
                        "JWT_WEB=$jwtWeb; session=$sessionCookie"
                    } else {
                        // 兼容旧格式：直接用cookies字段
                        obj.optString("cookies", "")
                    }
                    if (cookies.isNotEmpty()) GarminSession(cookies, csrf) else null
                } catch (_: Exception) { null }
            }
        }
    }

    private fun parseCredential(cred: String): GarminSession? {
        if (cred.isEmpty()) return null
        // 新格式：JSON with jwt_web
        GarminSession.fromJson(cred)?.let { return it }
        // 旧格式兼容：尝试从OAuth2 token JSON中提取（但不可用，返回null触发重新登录）
        return null
    }

    /** v6.5.8: JWT_WEB方式无refresh机制，cookie过期需重新登录。此方法保留兼容，直接返回原凭证 */
    fun ensureValidToken(ds: DataSource, cred: String): String {
        return cred
    }

    /** v6.5.8: gc-api代理域名 */
    private fun gcApiHost(ds: DataSource): String =
        if (ds == DataSource.GARMIN_CN) "https://connect.garmin.cn/gc-api" else "https://connect.garmin.com/gc-api"

    /** v6.7.0: 构建API请求header —— 全部cookie + connect-csrf-token */
    private fun apiHeaders(ds: DataSource, cred: String): Map<String, String> {
        val sess = parseCredential(cred)
        val h = mutableMapOf(
            "User-Agent" to "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
            "Accept" to "application/json",
            "Referer" to if (ds == DataSource.GARMIN_CN) "https://connect.garmin.cn/app/home" else "https://connect.garmin.com/modern/",
            "Origin" to if (ds == DataSource.GARMIN_CN) "https://connect.garmin.cn" else "https://connect.garmin.com",
        )
        sess?.let {
            if (it.cookies.isNotEmpty()) h["Cookie"] = it.cookies
            if (it.csrf.isNotEmpty()) h["connect-csrf-token"] = it.csrf
        }
        return h
    }

    /** 获取用户名 */
    suspend fun getUsername(ds: DataSource, cred: String): String? = withContext(Dispatchers.IO) {
        try {
            val url = "${gcApiHost(ds)}/userprofile-service/socialProfile"
            val req = Request.Builder().url(url).apply {
                apiHeaders(ds, cred).forEach { (k, v) -> addHeader(k, v) }
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
        val url = "${gcApiHost(ds)}/activitylist-service/activities/search/activities?start=$offset&limit=$limit"
        try {
            val req = Request.Builder().url(url).apply {
                apiHeaders(ds, cred).forEach { (k, v) -> addHeader(k, v) }
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

    /** 下载 FIT（返回zip，解压出 .fit）—— v6.5.8用gc-api，Accept用通配符避免406 */
    suspend fun downloadFit(ds: DataSource, cred: String, activityId: String): ByteArray? = withContext(Dispatchers.IO) {
        try {
            val url = "${gcApiHost(ds)}/download-service/files/activity/$activityId"
            val headers = apiHeaders(ds, cred).toMutableMap()
            headers["Accept"] = "*/*"  // 下载接口需要通配符Accept，用application/json会返回406
            val req = Request.Builder().url(url).apply {
                headers.forEach { (k, v) -> addHeader(k, v) }
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
            // 兜底：如果本身就是FIT文件（以.FIT头标识）
            if (zipBytes.size >= 14 && zipBytes[8] == '.'.code.toByte() && zipBytes[9] == 'F'.code.toByte()) zipBytes else null
        }
    }

    /** 上传 FIT/GPX/TCX 到佳明（202成功/409重复）—— v6.5.8用gc-api */
    suspend fun uploadActivity(ds: DataSource, cred: String, data: ByteArray, fileName: String): String? = withContext(Dispatchers.IO) {
        try {
            val url = "${gcApiHost(ds)}/upload-service/upload/"
            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("file", fileName, data.toRequestBody("application/octet-stream".toMediaType()))
                .build()
            val headers = apiHeaders(ds, cred).toMutableMap()
            headers["Accept"] = "application/json"
            val reqBuilder = Request.Builder().url(url).apply {
                headers.forEach { (k, v) -> addHeader(k, v) }
            }
            val req = reqBuilder.post(body).build()
            client.newCall(req).execute().use { resp ->
                val result = resp.body?.string() ?: ""
                Log.d(TAG, "Garmin upload HTTP ${resp.code}: ${result.take(200)}")
                when (resp.code) {
                    200, 201, 202 -> null  // 成功
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

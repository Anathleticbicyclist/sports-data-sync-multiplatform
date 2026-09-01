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
 * 佳明(Garmin) API（v6.5.0 新增）—— CN/COM 双域名
 *
 * 依据开源项目 running_page/garmin_sync.py + XiaoSiHwang/garmin-sync-coros 接口（已逐行核对）：
 * - 认证：OAuth2 Bearer token（WebView 登录 sso.garmin.com / sso.garmin.cn 后捕获）
 * - 列表：GET {connectapi}/activitylist-service/activities/search/activities
 * - FIT下载：GET {connectapi}/download-service/files/activity/{id}（返回zip内含 {id}_ACTIVITY.fit）
 * - 上传：POST {connectapi}/upload-service/upload（multipart file）
 * - 请求头：Authorization: Bearer <token> + nk: NT
 * - 注意：非Garmin设备FIT可能被拒收，需先经 FitDeviceFaker 伪装（见 UploadEngine）
 */
class GarminApi {

    companion object {
        private const val TAG = "GarminApi"
        const val LOGIN_URL_COM = "https://sso.garmin.com/sso/signin?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.com%2Fmodern%2F"
        const val LOGIN_URL_CN = "https://sso.garmin.cn/sso/signin?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.cn%2Fmodern%2F"

        private const val UA = "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36"
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private fun apiHost(ds: DataSource): String =
        if (ds == DataSource.GARMIN_CN) "connectapi.garmin.cn" else "connectapi.garmin.com"

    /** 凭证格式: "token" 或 "token;cookie" */
    private fun parseCredential(cred: String): Pair<String, String> {
        val parts = cred.split(";")
        val token = parts.getOrNull(0)?.trim() ?: ""
        val cookie = parts.drop(1).joinToString(";").trim()
        return token to cookie
    }

    private fun authHeaders(ds: DataSource, cred: String): Map<String, String> {
        val (token, cookie) = parseCredential(cred)
        val h = mutableMapOf(
            "User-Agent" to UA,
            "nk" to "NT",
            "Accept" to "application/json",
            "Origin" to (if (ds == DataSource.GARMIN_CN) "https://connect.garmin.cn" else "https://connect.garmin.com")
        )
        if (token.isNotEmpty()) h["Authorization"] = "Bearer $token"
        if (cookie.isNotEmpty()) h["Cookie"] = cookie
        return h
    }

    /** 获取用户名 */
    suspend fun getUsername(ds: DataSource, cred: String): String? = withContext(Dispatchers.IO) {
        try {
            val url = "https://${apiHost(ds)}/userprofile-service/socialProfile/displayName"
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
                // 解压 zip 拿 .fit
                unzipFit(zipBytes)
            }
        } catch (e: Exception) {
            Log.e(TAG, "downloadFit error", e); null
        }
    }

    /** 从 zip 中提取第一个 .fit 文件 */
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
            // 非zip直接返回原数据（某些情况下直接返回fit）
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
                    202 -> {
                        // 成功
                        val json = try { JSONObject(result) } catch (_: Exception) { null }
                        val uploadId = json?.optJSONObject("detailedImportResult")?.optString("uploadId") ?: ""
                        null
                    }
                    409 -> {
                        if (result.contains("Duplicate Activity")) "重复活动(已在佳明存在)"
                        else "佳明上传冲突 HTTP 409: ${result.take(100)}"
                    }
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

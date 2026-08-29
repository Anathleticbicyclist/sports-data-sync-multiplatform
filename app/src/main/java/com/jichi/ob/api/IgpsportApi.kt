package com.jichi.ob.api
 
import android.util.Log
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.util.concurrent.TimeUnit
 
/**
 * iGPSPORT API（成熟方案，沿用 v3.0 验证版本）
 * 认证: Authorization: Bearer {token}（WebView localStorage persist:app-store → global.token）
 */
class IgpsportApi {
 
    /** v6.3.6: 探测iGPSPORT活动时间字段，支持多种字段名 */
    private fun probeTimeField(item: org.json.JSONObject): String {
        val keys = listOf("StartTime","startTime","start_time","RideDate","rideDate","ride_date",
            "SportTime","sportTime","BeginTime","beginTime","RideTime","rideTime",
            "createTime","CreateTime","start_date","startDate","Date","date","Time","time",
            "StartTimeStr","startTimeStr","StartDate")
        for (k in keys) {
            val v = item.optString(k, "")
            if (v.isNotEmpty()) return v
        }
        return ""
    }

    companion object {
        private const val TAG = "IgpsportApi"
        const val LOGIN_URL = "https://login.passport.igpsport.cn/login?lang=zh-Hans"
        private const val BASE = "https://prod.zh.igpsport.com/service"
        private const val ACTIVITY_URL = "$BASE/web-gateway/web-analyze/activity/queryMyActivity"
        private const val DOWNLOAD_URL = "$BASE/web-gateway/web-analyze/activity/getDownloadUrl"
        private const val PER_PAGE = 20  // iGPSPORT每页最多20
    }
 
    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()
 
    private fun authHeaders(token: String) = mapOf(
        "Authorization" to "Bearer $token",
        "User-Agent" to "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0",
        "Accept" to "application/json, text/plain, */*",
        "Accept-Language" to "zh-CN,zh;q=0.9",
        "Origin" to "https://app.igpsport.cn",
        "Referer" to "https://app.igpsport.cn/"
    )
 
    suspend fun getUsername(token: String): String? = withContext(Dispatchers.IO) {
        // 优先解析JWT payload（iGPSPORT token也是JWT）
        try {
            val parts = token.split(".")
            if (parts.size >= 2) {
                val payloadB64 = parts[1].replace('-', '+').replace('_', '/')
                val padded = payloadB64 + "=".repeat((4 - payloadB64.length % 4) % 4)
                val decoded = String(android.util.Base64.decode(padded, android.util.Base64.DEFAULT), Charsets.UTF_8)
                val payload = JSONObject(decoded)
                payload.optString("nickname")?.takeIf { it.isNotEmpty() }
                    ?: payload.optString("userName")?.takeIf { it.isNotEmpty() }
                    ?: payload.optString("name")?.takeIf { it.isNotEmpty() }
                    ?: payload.optString("username")?.takeIf { it.isNotEmpty() }
                    ?: payload.optString("account")?.takeIf { it.isNotEmpty() }
                    ?: "用户${payload.optString("userId").take(6)}"
            } else null
        } catch (e: Exception) {
            // JWT解析失败，回退到API
            try {
                val req = Request.Builder().url("$BASE/web-gateway/web-user/user/info")
                    .apply { authHeaders(token).forEach { (k, v) -> addHeader(k, v) } }
                    .get().build()
                val resp = client.newCall(req).execute()
                val body = resp.body?.string() ?: ""
                val json = JSONObject(body)
                if (json.optInt("code", -1) == 200 || json.optString("status") == "success") {
                    val data = json.optJSONObject("data") ?: json
                    data.optString("nickname")?.takeIf { it.isNotEmpty() }
                        ?: data.optString("userName")?.takeIf { it.isNotEmpty() }
                        ?: data.optString("username")?.takeIf { it.isNotEmpty() }
                } else null
            } catch (e2: Exception) { Log.e(TAG, "getUsername fallback error", e2); null }
        }
    }

    suspend fun getActivities(token: String, offset: Int, limit: Int): List<ActivityRecord> =
        withContext(Dispatchers.IO) {
            val result = mutableListOf<ActivityRecord>()
            // 服务端不支持offset参数，拉取 offset+limit 条后丢弃前offset条
            val need = offset + limit
            var currentPage = 1
            var fetched = 0
            while (fetched < need) {
                val url = "$ACTIVITY_URL?pageNo=$currentPage&pageSize=$PER_PAGE&reqType=0&sort=1"
                val req = Request.Builder().url(url)
                    .apply { authHeaders(token).forEach { (k, v) -> addHeader(k, v) } }
                    .get().build()
                val resp = client.newCall(req).execute()
                val code = resp.code
                val body = resp.body?.string() ?: throw Exception("空响应 (HTTP $code)")
                if (code == 401) throw Exception("iGPSPORT登录已过期，请重新登录")
                if (code != 200) throw Exception("iGPSPORT HTTP $code: ${body.take(200)}")
                val json = JSONObject(body)
                val apiCode = json.optInt("code", -1)
                if (apiCode != 0) {
                    val msg = json.optString("message", json.optString("data", "Unknown"))
                    if (msg.contains("token", true) || msg.contains("登录")) throw Exception("iGPSPORT登录已过期，请重新登录")
                    throw Exception("iGPSPORT API error: $msg (code=$apiCode)")
                }
                val data = json.optJSONObject("data") ?: json
                val rows = data.optJSONArray("rows") ?: data.optJSONArray("list") ?: break
                if (rows.length() == 0) break
 
                for (i in 0 until rows.length()) {
                    fetched++
                    if (fetched <= offset) continue
                    val item = rows.getJSONObject(i)
                    // v6.3.6 调试：用Log.w输出第一个活动的所有字段和时间值，排查文件名时间unknown
                    if (fetched == offset + 1) {
                        val allKeys = item.names()?.let { arr -> (0 until arr.length()).map { arr.optString(it) }.joinToString(",") } ?: "(无)"
                        // 探测所有可能的时间字段
                        val timeKeys = listOf("StartTime","startTime","start_time","RideDate","rideDate","ride_date",
                            "SportTime","sportTime","BeginTime","beginTime","RideTime","rideTime",
                            "createTime","CreateTime","start_date","startDate","Date","date","Time","time",
                            "StartTimeStr","startTimeStr","startTimeText","StartDate","startDate")
                        val timeVals = timeKeys.mapNotNull { k -> 
                            val v = item.optString(k, "")
                            if (v.isNotEmpty()) "$k=$v" else null 
                        }
                        Log.w(TAG, "===== iGPSPORT首活动调试 ===== keys=$allKeys")
                        Log.w(TAG, "===== 时间字段: ${timeVals.joinToString(", ") ?: "(全部为空)"} =====")
                    }
                    val rideId = item.optString("RideId", item.optString("rideId", item.optString("id", "")))
                    // v6.3.6 调试：用Log.w输出第一个活动的所有字段和时间值，排查文件名时间unknown
                    if (fetched == offset + 1) {
                        val allKeys = item.names()?.let { arr -> (0 until arr.length()).map { arr.optString(it) }.joinToString(",") } ?: "(无)"
                        val timeKeys = listOf("StartTime","startTime","start_time","RideDate","rideDate","ride_date",
                            "SportTime","sportTime","BeginTime","beginTime","RideTime","rideTime",
                            "createTime","CreateTime","start_date","startDate","Date","date","Time","time",
                            "StartTimeStr","startTimeStr","StartDate","startDate")
                        val timeVals = timeKeys.mapNotNull { k ->
                            val v = item.optString(k, "")
                            if (v.isNotEmpty()) "$k=$v" else null
                        }
                        Log.w(TAG, "===== iGPSPORT首活动调试 ===== keys=$allKeys")
                        Log.w(TAG, "===== 时间字段: ${timeVals.joinToString(", ") ?: "(全部为空)"} =====")
                    }
                    if (rideId.isEmpty()) continue
                    val downloadUrl = item.optString("DownloadUrl",
                        item.optString("downloadUrl",
                            item.optString("FileUrl", item.optString("fileUrl", ""))))
                    // 距离字段探测：>=1000视为米，否则视为公里
                    var dist = item.optDouble("Distance", -1.0)
                    if (dist < 0) dist = item.optDouble("distance", -1.0)
                    if (dist < 0) dist = item.optDouble("sportDistance", 0.0)
                    val distKm = if (dist >= 1000) dist / 1000.0 else dist
                    // v6.3.6: 用辅助函数探测时间字段，避免嵌套括号
                    val startTime = probeTimeField(item)
                    result.add(
                        ActivityRecord(
                            id = rideId,
                            title = item.optString("Title", item.optString("title", item.optString("name", "骑行"))),
                            startTime = startTime,
                            distance = distKm,
                            duration = item.optInt("Duration", item.optInt("duration", item.optInt("movingTime", 0))),
                            source = DataSource.IGPSPORT,
                            extra = downloadUrl.ifEmpty { null }
                        )
                    )

                }
                if (result.size >= limit || rows.length() < PER_PAGE) break
                currentPage++
                kotlinx.coroutines.delay(200)
            }
            Log.d(TAG, "getActivities total: ${result.size}")
            result
        }
 
    suspend fun downloadFitFile(token: String, rideId: String, activityDownloadUrl: String? = null): ByteArray =
        withContext(Dispatchers.IO) {
            val downloadUrl: String
            if (!activityDownloadUrl.isNullOrEmpty()) {
                downloadUrl = activityDownloadUrl
            } else {
                val req = Request.Builder().url("$DOWNLOAD_URL/$rideId")
                    .apply { authHeaders(token).forEach { (k, v) -> addHeader(k, v) } }
                    .get().build()
                val resp = client.newCall(req).execute()
                val body = resp.body?.string() ?: throw Exception("下载URL空响应")
                val json = JSONObject(body)
                downloadUrl = when (val data = json.opt("data")) {
                    is String -> data
                    is JSONObject -> data.optString("url", data.optString("downloadUrl", ""))
                    else -> json.optString("url", json.optString("downloadUrl", ""))
                }
                if (downloadUrl.isEmpty()) throw Exception("无下载URL (rideId=$rideId)")
            }
 
            val dlReq = Request.Builder().url(downloadUrl)
                .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0")
                .addHeader("Accept", "*/*")
                .addHeader("Referer", "https://app.igpsport.cn/")
                .get().build()
            val dlResp = client.newCall(dlReq).execute()
            val bytes = dlResp.body?.bytes() ?: throw Exception("FIT下载空响应")
            if (dlResp.code != 200) throw Exception("iGPSPORT FIT下载失败 HTTP ${dlResp.code}")
            if (bytes.size < 14 || bytes[8] != '.'.code.toByte() || bytes[9] != 'F'.code.toByte()) {
                Log.w(TAG, "FIT文件头可能无效 (size=${bytes.size})")
            }
            Log.d(TAG, "FIT downloaded: ${bytes.size} bytes (rideId=$rideId)")
            bytes
        }
}
 


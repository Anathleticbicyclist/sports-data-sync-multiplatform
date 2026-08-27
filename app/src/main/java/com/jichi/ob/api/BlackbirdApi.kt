package com.jichi.ob.api

import android.util.Log
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONObject
import java.util.concurrent.TimeUnit

/**
 * 黑鸟单车 API（v6.1.1 新增）
 * 认证: Cookie: 完整cookie
 * 列表: GET /api/records?lastRecordId=0&pageSize=100
 * 数据: GET /api/records/{recordId}/data
 */
class BlackbirdApi {

    companion object {
        private const val TAG = "BlackbirdApi"
        const val LOGIN_URL = "https://www.blackbirdsport.com/login"
        private const val BASE = "https://www.blackbirdsport.com/api"
        private const val PER_PAGE = 100
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private fun authHeaders(cookie: String) = mapOf(
        "Cookie" to cookie,
        "User-Agent" to "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36",
        "Referer" to "https://www.blackbirdsport.com/",
        "Accept" to "application/json, text/plain, */*"
    )

    /** 黑鸟startTime为毫秒时间戳，格式化为可读时间 */
    private fun formatStartTime(ts: Long): String {
        if (ts <= 0) return ""
        return try {
            val fmt = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm", java.util.Locale.getDefault())
            fmt.format(java.util.Date(ts))
        } catch (_: Exception) { ts.toString() }
    }

    suspend fun getUsername(cookie: String): String? = withContext(Dispatchers.IO) {
        try {
            // 黑鸟用户接口: GET /api/user → content.nickname (已验证)
            val req = Request.Builder().url("$BASE/user")
                .addHeader("Cookie", cookie)
                .addHeader("User-Agent", "Mozilla/5.0")
                .get().build()
            val resp = client.newCall(req).execute()
            val body = resp.body?.string() ?: ""
            Log.d(TAG, "Blackbird user info: HTTP ${resp.code} ${body.take(120)}")
            val json = JSONObject(body)
            if (json.optString("status") == "ok") {
                val data = json.optJSONObject("content") ?: json.optJSONObject("data") ?: json
                data.optString("nickname")?.takeIf { it.isNotEmpty() }
                    ?: data.optString("userName")?.takeIf { it.isNotEmpty() }
                    ?: data.optString("name")?.takeIf { it.isNotEmpty() }
            } else null
        } catch (e: Exception) { Log.w(TAG, "getUsername: ${e.message}"); null }
    }

    suspend fun getActivities(cookie: String, offset: Int, limit: Int): List<ActivityRecord> =
        withContext(Dispatchers.IO) {
            val result = mutableListOf<ActivityRecord>()
            var lastRecordId = 0L
            var fetched = 0

            while (result.size < limit) {
                val url = "$BASE/records?lastRecordId=$lastRecordId&pageSize=$PER_PAGE"
                val req = Request.Builder().url(url)
                    .apply { authHeaders(cookie).forEach { (k, v) -> addHeader(k, v) } }
                    .get().build()
                val resp = client.newCall(req).execute()
                val code = resp.code
                val body = resp.body?.string() ?: throw Exception("空响应 (HTTP $code)")
                if (code in 401..403) throw Exception("黑鸟登录已过期，请重新登录")
                if (code != 200) throw Exception("黑鸟 HTTP $code: ${body.take(200)}")

                val json = JSONObject(body)
                // 黑鸟返回结构: {"status":"ok","content":[{recordId,title,startTime,distance,duration}]}
                val rows = json.optJSONArray("content") ?: json.optJSONArray("data") ?: json.optJSONArray("records") ?: break
                if (rows.length() == 0) break

                for (i in 0 until rows.length()) {
                    fetched++
                    if (fetched <= offset) continue
                    val item = rows.getJSONObject(i)
                    val id = item.optLong("recordId", item.optLong("id", 0))
                    if (id <= 0) continue
                    lastRecordId = id
                    result.add(
                        ActivityRecord(
                            id = id.toString(),
                            title = item.optString("title", "骑行"),
                            startTime = formatStartTime(item.optLong("startTime", 0)),
                            distance = item.optDouble("distance", 0.0) / 1000.0,
                            duration = item.optInt("duration", 0),
                            source = DataSource.BLACKBIRD
                        )
                    )
                    if (result.size >= limit) break
                }
                if (rows.length() < PER_PAGE) break
                kotlinx.coroutines.delay(200)
            }
            Log.d(TAG, "getActivities: ${result.size} records")
            result
        }

    /**
     * 下载活动数据（FIT优先，回退GPX构建）
     */
    suspend fun downloadActivity(cookie: String, recordId: String): ByteArray =
        withContext(Dispatchers.IO) {
            val req = Request.Builder().url("$BASE/records/$recordId/data")
                .apply { authHeaders(cookie).forEach { (k, v) -> addHeader(k, v) } }
                .get().build()
            val resp = client.newCall(req).execute()
            val body = resp.body?.string() ?: throw Exception("数据空响应")
            if (resp.code != 200) throw Exception("黑鸟数据 HTTP ${resp.code}")

            val json = JSONObject(body)
            val data = json.optJSONObject("data") ?: json

            // 尝试直接下载FIT
            val fitUrl = data.optString("fitUrl", data.optString("fit_url", ""))
            if (fitUrl.isNotEmpty()) {
                try {
                    val dlReq = Request.Builder().url(fitUrl)
                        .addHeader("User-Agent", "Mozilla/5.0").get().build()
                    val dlResp = client.newCall(dlReq).execute()
                    val bytes = dlResp.body?.bytes()
                    if (bytes != null && bytes.size > 100) {
                        Log.d(TAG, "FIT downloaded: ${bytes.size} bytes")
                        return@withContext bytes
                    }
                } catch (e: Exception) {
                    Log.w(TAG, "FIT download failed: ${e.message}")
                }
            }

            // 从轨迹点构建GPX
            val track = data.optJSONArray("track") ?: data.optJSONArray("points")
            if (track != null && track.length() > 0) {
                val gpx = buildGpx(track, recordId)
                Log.d(TAG, "GPX built: ${gpx.size} bytes from ${track.length()} points")
                return@withContext gpx
            }

            throw Exception("无法获取活动数据 (recordId=$recordId)")
        }

    private fun buildGpx(track: org.json.JSONArray, recordId: String): ByteArray {
        val sb = StringBuilder()
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
        sb.append("<gpx version=\"1.1\" creator=\"JichiOB-v6.1.1\">\n")
        sb.append("  <trk>\n    <name>黑鸟骑行 $recordId</name>\n    <trkseg>\n")
        for (i in 0 until track.length()) {
            val pt = track.optJSONObject(i) ?: continue
            val lat = pt.optDouble("lat", pt.optDouble("latitude", 0.0))
            val lon = pt.optDouble("lng", pt.optDouble("longitude", 0.0))
            val ele = pt.optDouble("ele", pt.optDouble("altitude", 0.0))
            sb.append("      <trkpt lat=\"$lat\" lon=\"$lon\">\n")
            if (ele != 0.0) sb.append("        <ele>$ele</ele>\n")
            sb.append("      </trkpt>\n")
        }
        sb.append("    </trkseg>\n  </trk>\n</gpx>")
        return sb.toString().toByteArray()
    }


    /**
     * 上传FIT/GPX文件到黑鸟单车
     */
    /** 黑鸟上传：返回 null=成功；非null=失败原因 */
    suspend fun uploadActivity(cookie: String, fitData: ByteArray, fileName: String): String? = withContext(Dispatchers.IO) {
        try {
            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("file", fileName, fitData.toRequestBody("application/octet-stream".toMediaType()))
                .build()
            val req = Request.Builder()
                .url("$BASE/records/upload")
                .addHeader("Cookie", cookie)
                .addHeader("User-Agent", "Mozilla/5.0")
                .post(body)
                .build()
            val resp = client.newCall(req).execute()
            val bodyStr = resp.body?.string() ?: ""
            Log.d(TAG, "Blackbird upload: HTTP ${resp.code} resp=${bodyStr.take(300)}")
            if (resp.code in 301..308) {
                Log.w(TAG, "黑鸟上传被重定向(可能未登录): ${resp.header("Location")}")
                return@withContext "黑鸟上传失败: 登录已失效(被重定向)，请重新登录黑鸟"
            }
            if (resp.code in 401..403) {
                Log.w(TAG, "黑鸟上传认证失败: HTTP ${resp.code}")
                return@withContext "黑鸟上传失败: 登录已过期(HTTP ${resp.code})，请重新登录黑鸟"
            }
            if (bodyStr.contains("FIT_FILE_ERROR") || bodyStr.contains("FIT file integrity")) {
                Log.w(TAG, "黑鸟接口已连通但FIT校验被拒：黑鸟解析器较旧")
                return@withContext "黑鸟拒绝该FIT(FIT_FILE_ERROR)：黑鸟解析器较旧，无法解析迈金等含大量开发者字段的FIT；室内无GPS的FIT必被拒。建议用iGPSPORT/行者记录或户外含GPS数据"
            }
            val ok = resp.code == 200 && (bodyStr.contains("\"status\":\"ok\"") || bodyStr.contains("\"code\":0") ||
                    bodyStr.contains("\"code\":200") || bodyStr.contains("success"))
            if (ok) return@withContext null
            // 错误码翻译，方便用户理解
            return@withContext translateBlackbirdError(bodyStr, resp.code)
        } catch (e: Exception) {
            Log.e(TAG, "Blackbird upload error", e)
            "黑鸟上传失败: ${e.message}"
        }
    }

    /** 黑鸟上传错误响应翻译（2026-08-27 实测验证） */
    private fun translateBlackbirdError(bodyStr: String, httpCode: Int): String {
        val raw = "黑鸟上传失败(HTTP $httpCode): ${bodyStr.take(160)}"
        return when {
            bodyStr.contains("DUPLICATE") ->
                "黑鸟提示该记录已存在(重复上传)：此活动之前已同步过黑鸟，跳过即可"
            bodyStr.contains("010001") ->
                "黑鸟无法入库该活动(010001)：多为该FIT无有效GPS轨迹（如0km空活动/室内骑行）或格式黑鸟不认。真实户外骑行记录可正常上传"
            bodyStr.contains("errorCode") || bodyStr.contains("\"status\":\"error\"") ->
                "黑鸟上传被拒：${extractBlackbirdMsg(bodyStr)}"
            else -> raw
        }
    }

    /** 提取黑鸟错误响应中的可读信息 */
    private fun extractBlackbirdMsg(bodyStr: String): String {
        // 尝试从JSON取 errorCode/msg
        return try {
            val j = org.json.JSONObject(bodyStr)
            val code = j.optString("errorCode", "")
            val msg = j.optString("msg", "")
            when {
                code.isNotEmpty() && msg.isNotEmpty() -> "$code($msg)"
                code.isNotEmpty() -> code
                else -> msg.ifEmpty { bodyStr.take(80) }
            }
        } catch (e: Exception) {
            bodyStr.take(80)
        }
    }
}

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

    suspend fun getUsername(cookie: String): String? = withContext(Dispatchers.IO) {
        try {
            val req = Request.Builder().url("$BASE/user/info")
                .addHeader("Cookie", cookie)
                .addHeader("User-Agent", "Mozilla/5.0")
                .get().build()
            val resp = client.newCall(req).execute()
            val body = resp.body?.string() ?: ""
            val json = JSONObject(body)
            if (json.optInt("code", -1) == 200 || json.optString("status") == "ok") {
                val data = json.optJSONObject("data") ?: json
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
                val rows = json.optJSONArray("data") ?: json.optJSONArray("records") ?: break
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
                            startTime = item.optString("startTime", item.optString("start_time", "")),
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
    suspend fun uploadActivity(cookie: String, fitData: ByteArray, fileName: String): Boolean = withContext(Dispatchers.IO) {
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
            Log.d(TAG, "Blackbird upload response: ${resp.code} ${bodyStr.take(200)}")
            resp.code == 200 && (bodyStr.contains("\"code\":0") || bodyStr.contains("\"code\":200") || bodyStr.contains("success"))
        } catch (e: Exception) {
            Log.e(TAG, "Blackbird upload error", e)
            false
        }
    }
}

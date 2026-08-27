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
 * 百锐腾 Bryton API（v6.1.1 新增）
 * 认证: Cookie: 完整cookie
 * 列表: GET /api/activity/list?page=N&limit=20
 * FIT: GET /api/activity/{id}/fit
 */
class BrytonApi {

    companion object {
        private const val TAG = "BrytonApi"
        const val LOGIN_URL = "https://active.brytonsport.com"
        private const val BASE = "https://active.brytonsport.com/api"
        private const val PER_PAGE = 20
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private fun authHeaders(cookie: String) = mapOf(
        "Cookie" to cookie,
        "User-Agent" to "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36",
        "Referer" to "https://active.brytonsport.com/",
        "Accept" to "application/json, text/plain, */*"
    )

    suspend fun getActivities(cookie: String, offset: Int, limit: Int): List<ActivityRecord> =
        withContext(Dispatchers.IO) {
            val result = mutableListOf<ActivityRecord>()
            var page = offset / PER_PAGE + 1
            var skipLeft = offset % PER_PAGE

            while (result.size < limit) {
                val url = "$BASE/activity/list?page=$page&limit=$PER_PAGE"
                val req = Request.Builder().url(url)
                    .apply { authHeaders(cookie).forEach { (k, v) -> addHeader(k, v) } }
                    .get().build()
                val resp = client.newCall(req).execute()
                val code = resp.code
                val body = resp.body?.string() ?: throw Exception("空响应 (HTTP $code)")
                if (code in 401..403) throw Exception("百锐腾登录已过期，请重新登录")
                if (code != 200) throw Exception("百锐腾 HTTP $code: ${body.take(200)}")

                val json = JSONObject(body)
                val rows = json.optJSONArray("data") ?: json.optJSONArray("activities")
                    ?: json.optJSONObject("data")?.optJSONArray("list") ?: break
                if (rows.length() == 0) break

                for (i in 0 until rows.length()) {
                    if (skipLeft > 0) { skipLeft--; continue }
                    val item = rows.getJSONObject(i)
                    val id = item.optLong("id", item.optLong("activityId", 0))
                    if (id <= 0) continue
                    result.add(
                        ActivityRecord(
                            id = id.toString(),
                            title = item.optString("name", item.optString("title", "骑行")),
                            startTime = item.optString("startTime", item.optString("start_time", "")),
                            distance = item.optDouble("distance", 0.0) / 1000.0,
                            duration = item.optInt("duration", item.optInt("elapsedTime", 0)),
                            source = DataSource.BRYTON
                        )
                    )
                    if (result.size >= limit) break
                }
                if (rows.length() < PER_PAGE) break
                page++
                kotlinx.coroutines.delay(200)
            }
            Log.d(TAG, "getActivities: ${result.size} records")
            result
        }

    /**
     * 下载FIT文件
     */
    suspend fun downloadFit(cookie: String, activityId: String): ByteArray =
        withContext(Dispatchers.IO) {
            val req = Request.Builder().url("$BASE/activity/$activityId/fit")
                .apply { authHeaders(cookie).forEach { (k, v) -> addHeader(k, v) } }
                .get().build()
            val resp = client.newCall(req).execute()
            val bytes = resp.body?.bytes() ?: throw Exception("FIT空响应")
            if (resp.code != 200) throw Exception("百锐腾FIT下载失败 HTTP ${resp.code}")
            if (bytes.size < 14) throw Exception("FIT文件过小 (${bytes.size} bytes)")
            Log.d(TAG, "FIT downloaded: ${bytes.size} bytes (id=$activityId)")
            bytes
        }

    /**
     * 回退：下载GPX
     */
    suspend fun downloadGpx(cookie: String, activityId: String): ByteArray? =
        withContext(Dispatchers.IO) {
            try {
                val req = Request.Builder().url("$BASE/activity/$activityId/gpx")
                    .apply { authHeaders(cookie).forEach { (k, v) -> addHeader(k, v) } }
                    .get().build()
                val resp = client.newCall(req).execute()
                if (resp.code == 200) {
                    val bytes = resp.body?.bytes()
                    if (bytes != null && bytes.size > 100) {
                        Log.d(TAG, "GPX downloaded: ${bytes.size} bytes")
                        return@withContext bytes
                    }
                }
            } catch (e: Exception) {
                Log.w(TAG, "GPX download failed: ${e.message}")
            }
            null
        }
}

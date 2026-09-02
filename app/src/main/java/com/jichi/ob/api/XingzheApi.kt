package com.jichi.ob.api

import android.util.Log
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import com.jichi.ob.model.FileKind
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.concurrent.TimeUnit

/**
 * 行者 API（2026-08 实测）
 * 认证: Cookie: sessionid=xxx（Bearer无效）
 * 列表: GET /api/v1/pgworkout/?offset=N&limit=M（limit=500可用）
 * GPX: GET /api/v1/pgworkout/{id}/gpx （稳定）
 * FIT: GET /api/v1/workout/{id}/fit/ （多数记录400/404）
 * 策略: GPX优先，回退FIT（遵用户指定）
 */
class XingzheApi {

    companion object {
        private const val TAG = "XingzheApi"
        const val LOGIN_URL = "https://www.imxingzhe.com/login"
        private const val BASE_URL = "https://www.imxingzhe.com/api/v1"
        private const val PER_PAGE = 100
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private fun authHeaders(sessionId: String) = mapOf(
        "Cookie" to "sessionid=$sessionId",
        "User-Agent" to "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36",
        "Referer" to "https://www.imxingzhe.com/xingzhe/workouts/list",
        "Accept" to "application/json, text/plain, */*"
    )

    suspend fun verifySession(sessionId: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val req = Request.Builder().url("$BASE_URL/user/user_info/")
                .apply { authHeaders(sessionId).forEach { (k, v) -> addHeader(k, v) } }
                .get().build()
            val resp = client.newCall(req).execute()
            val body = resp.body?.string() ?: ""
            resp.code == 200 && JSONObject(body).optInt("code", -1) == 0
        } catch (e: Exception) {
            Log.e(TAG, "verifySession error", e); false
        }
    }

    suspend fun getUsername(sessionId: String): String? = withContext(Dispatchers.IO) {
        try {
            val req = Request.Builder().url("$BASE_URL/user/user_info/")
                .apply { authHeaders(sessionId).forEach { (k, v) -> addHeader(k, v) } }
                .get().build()
            val resp = client.newCall(req).execute()
            val body = resp.body?.string() ?: ""
            val json = JSONObject(body)
            if (json.optInt("code", -1) == 0) {
                val data = json.optJSONObject("data")
                data?.optString("nickname")?.takeIf { it.isNotEmpty() }
                    ?: data?.optString("username")?.takeIf { it.isNotEmpty() }
            } else null
        } catch (e: Exception) { Log.e(TAG, "getUsername error", e); null }
    }
    suspend fun getActivities(sessionId: String, offset: Int, limit: Int): List<ActivityRecord> =
        withContext(Dispatchers.IO) {
            val result = mutableListOf<ActivityRecord>()
            var currentOffset = offset
            while (result.size < limit) {
                val take = minOf(PER_PAGE, limit - result.size)
                val url = "$BASE_URL/pgworkout/?offset=$currentOffset&limit=$take"
                val req = Request.Builder().url(url)
                    .apply { authHeaders(sessionId).forEach { (k, v) -> addHeader(k, v) } }
                    .get().build()
                val resp = client.newCall(req).execute()
                val code = resp.code
                val body = resp.body?.string() ?: throw Exception("空响应 (HTTP $code)")
                if (code == 401 || code == 403) throw Exception("行者登录已过期，请重新登录")
                if (code != 200) throw Exception("行者 HTTP $code: ${body.take(200)}")
                val json = JSONObject(body)
                if (json.optInt("code", -1) != 0) throw Exception("行者 API error: ${json.optString("msg")}")
                val rows = json.optJSONObject("data")?.optJSONArray("data")
                if (rows == null || rows.length() == 0) break

                val fmt = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault())
                for (i in 0 until rows.length()) {
                    val item = rows.getJSONObject(i)
                    val id = item.optLong("id", 0)
                    if (id <= 0) continue
                    val startTs = item.optLong("start_time", 0)
                    result.add(
                        ActivityRecord(
                            id = id.toString(),
                            title = item.optString("title", "运动 $id"),
                            startTime = if (startTs > 0) fmt.format(Date(startTs)) else "",
                            distance = item.optDouble("distance", 0.0) / 1000.0,
                            duration = item.optInt("duration", 0),
                            source = DataSource.XINGZHE
                        )
                    )
                }
                if (rows.length() < take) break
                currentOffset += rows.length()
                kotlinx.coroutines.delay(150)
            }
            Log.d(TAG, "getActivities total: ${result.size}")
            result
        }

    /**
     * 下载: v6.3.6 FIT优先（保留功率/心率/踏频），FIT失败回退GPX转换
     * v7.5.2: 增加preferGpx参数，为true时GPX优先（用于行者→iGPSPORT，可能解决8小时时差）
     */
    suspend fun downloadGpxOrFit(sessionId: String, workoutId: String, preferGpx: Boolean = false): Pair<ByteArray, FileKind> =
        withContext(Dispatchers.IO) {
            val headers = authHeaders(sessionId)

            if (preferGpx) {
                // GPX优先：先尝试GPX，失败回退FIT
                try {
                    val req = Request.Builder().url("$BASE_URL/pgworkout/$workoutId/gpx/")
                        .apply { headers.forEach { (k, v) -> addHeader(k, v) } }
                        .get().build()
                    val resp = client.newCall(req).execute()
                    if (resp.code == 200) {
                        val bytes = resp.body?.bytes()
                        if (bytes != null && bytes.size > 100) {
                            val head = String(bytes, 0, minOf(60, bytes.size))
                            if (head.contains("<?xml") || head.contains("<gpx")) {
                                Log.d(TAG, "✅ GPX优先: ${bytes.size} bytes (id=$workoutId)")
                                return@withContext Pair(bytes, FileKind.GPX)
                            }
                        }
                    }
                    Log.d(TAG, "GPX不可用 (HTTP ${resp.code})，回退FIT...")
                } catch (e: Exception) {
                    Log.w(TAG, "GPX异常: ${e.message}，回退FIT...")
                }
            }

            // 方式1: FIT（优先）——FIT原生支持功率/心率/踏频等扩展数据
            val req = Request.Builder().url("$BASE_URL/workout/$workoutId/fit/")
                .apply { headers.forEach { (k, v) -> addHeader(k, v) } }
                .get().build()
            val resp = client.newCall(req).execute()
            if (resp.code == 200) {
                val ct = resp.header("Content-Type", "") ?: ""
                if (!ct.contains("json") && !ct.contains("html") && !ct.contains("xml")) {
                    val bytes = resp.body?.bytes()
                    if (bytes != null && bytes.size > 100 && bytes.size >= 14 &&
                        bytes[8] == '.'.code.toByte() && bytes[9] == 'F'.code.toByte()
                    ) {
                        Log.d(TAG, "✅ FIT优先: ${bytes.size} bytes (id=$workoutId)")
                        return@withContext Pair(bytes, FileKind.FIT)
                    }
                }
            }
            // 方式2: GPX（回退）——注意必须带尾斜杠，否则Django返回401。GPX可能丢失功率等扩展数据
            try {
                val req = Request.Builder().url("$BASE_URL/pgworkout/$workoutId/gpx/")
                    .apply { headers.forEach { (k, v) -> addHeader(k, v) } }
                    .get().build()
                val resp = client.newCall(req).execute()
                if (resp.code == 200) {
                    val bytes = resp.body?.bytes()
                    if (bytes != null && bytes.size > 100) {
                        val head = String(bytes, 0, minOf(60, bytes.size))
                        if (head.contains("<?xml") || head.contains("<gpx")) {
                            Log.d(TAG, "✅ GPX回退: ${bytes.size} bytes (id=$workoutId)")
                            return@withContext Pair(bytes, FileKind.GPX)
                        }
                    }
                }
                Log.d(TAG, "GPX不可用 (HTTP ${resp.code})，尝试GPX...")
            } catch (e: Exception) {
                Log.w(TAG, "GPX异常: ${e.message}，尝试GPX...")
            }

            throw Exception("GPX/FIT 均下载失败 (id=$workoutId)")
        }
}

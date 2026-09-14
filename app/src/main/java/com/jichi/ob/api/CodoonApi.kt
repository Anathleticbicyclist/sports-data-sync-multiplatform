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
import java.util.concurrent.TimeUnit
import javax.crypto.Mac
import javax.crypto.spec.SecretKeySpec

/**
 * 咕咚 Codoon API（v7.9.5 新增，纯HTTP 仅下载源，仿 Keep/MyWhoosh 模式）
 *
 * 实现参考 running_page（yihong0618）的 codoon_sync.py——官方 OpenAPI(open.codoon.com)
 * 已于 2018-06-01 关闭且需商务申请，个人无法拿到 key，故采用该逆向实现（社区长期验证可用）。
 *
 * 认证: 手机号+密码 login（GET /token，HMAC-SHA1 签名）
 * 登录: GET https://api.codoon.com/token
 *       params: client_id + email(手机号) + grant_type=password + password + scope=user
 *       headers: Basic auth + timestamp=0 + signature（HMAC-SHA1）
 *       → data: access_token / refresh_token / user_id
 * 列表: POST https://api.codoon.com/api/get_old_route_log
 *       body(JSON): {"limit":500,"page":1,"user_id":...} → data.log_list[] + data.has_more
 *       列表项: log_id / route_id / sports_type(0=Hike 1=Run 2=Ride)
 * 详情: POST https://api.codoon.com/api/get_single_log
 *       body(JSON): {"route_id":...} → data.points[]（latitude/longitude/elevation/time_stamp）
 *       另含 start_time / end_time / total_length(米) / total_time(秒) / sports_type
 *
 * 签名算法（来自 libencrypt.so Java_com_codoon_jni_JNIUtils_encryptHttpSignature）：
 *   pre_string = "Authorization={auth}&Davinci=0&Did={did}&Timestamp={ts}|path={path}|body={body}|{query}"
 *   signature = base64(HMAC-SHA1(key="ecc140ad6e1e12f7d972af04add2c7ee", pre_string))
 *   - GET: timestamp=0，authorization="Basic {basic_auth}"，body 为空，query 需 URL-decode
 *   - POST: timestamp=当前秒，authorization="Bearer {token}"，body=json.dumps(payload)
 * 注：签名 body 必须与 Python json.dumps 逐字一致（键序+冒号后空格+逗号后空格），否则服务端校验失败。
 *
 * 坐标：咕咚云端存原始 WGS-84（running_page 同步 Strava 坐标正常），默认不转换；
 *      若实测发现偏移（如被判定为 GCJ-02），可开启 prefs 的 gcj02 转换开关。
 */
class CodoonApi {

    companion object {
        private const val TAG = "CodoonApi"
        private const val BASE_URL = "https://api.codoon.com"
        private const val CLIENT_ID = "099cce28c05f6c39ad5e04e51ed60704"
        private const val BASIC_AUTH = "MDk5Y2NlMjhjMDVmNmMzOWFkNWUwNGU1MWVkNjA3MDQ6YzM5ZDNmYmVhMWU4NWJlY2VlNDFjMTk5N2FjZjBlMzY="
        private const val SIGN_KEY = "ecc140ad6e1e12f7d972af04add2c7ee"
        private const val DAVINCI = "0"
        // 注意：did 参与 HMAC 签名且服务端校验设备合法性，必须使用社区验证可用的合法 did
        // （running_page codoon_sync.py 同款），否则登录返回 HTTP 400
        private const val DID = "24-ffffffff-faac-3052-0033-c5870033c587"
        private const val UA = "CodoonSport(8.9.0 1170;Android 7;Sony XZ1)"
        private const val JSON_MEDIA = "application/json; charset=utf-8"

        // 运动类型（咕咚 sports_type）
        private val TYPE_NAME = mapOf(0 to "Hike", 1 to "Run", 2 to "Ride")

        /** v7.9.5: 咕咚轨迹坐标转换开关（默认关=WGS-84；若实测偏移由外部同步 prefs 开启 GCJ-02→WGS-84） */
        @Volatile
        var gcjConvertEnabled: Boolean = false
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(60, TimeUnit.SECONDS)
        .writeTimeout(60, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private var lastMobile: String? = null
    private var lastPassword: String? = null

    data class LoginResult(val token: String, val refreshToken: String, val userId: String)

    // ===== 签名工具 =====

    private fun makeSignature(message: String): String {
        val mac = Mac.getInstance("HmacSHA1")
        mac.init(SecretKeySpec(SIGN_KEY.toByteArray(Charsets.UTF_8), "HmacSHA1"))
        val sig = mac.doFinal(message.toByteArray(Charsets.UTF_8))
        return android.util.Base64.encodeToString(sig, android.util.Base64.NO_WRAP)
    }

    /** 构造签名 pre_string 并返回 signature。
     *  pathWithQuery: 完整 path+query（如 /token?client_id=..&email=..），query 需 URL-decode 后参与签名 */
    private fun signPreString(authorization: String, pathWithQuery: String, body: String, timestamp: Long): String {
        var path = pathWithQuery
        var query = ""
        val qIdx = pathWithQuery.indexOf('?')
        if (qIdx >= 0) {
            query = pathWithQuery.substring(qIdx + 1)
            path = pathWithQuery.substring(0, qIdx)
        }
        // Python urllib.parse.unquote：还原 %XX → 原文
        query = try { android.net.Uri.decode(query) } catch (_: Exception) { query }
        val pre = "Authorization=$authorization&Davinci=$DAVINCI&Did=$DID&Timestamp=$timestamp|path=$path|body=$body|$query"
        return makeSignature(pre)
    }

    /** Python json.dumps 兼容格式（键序保持 + 冒号后空格 + 逗号后空格），保证签名一致 */
    private fun jsonDumps(body: Map<String, Any>): String {
        val sb = StringBuilder("{")
        var first = true
        for ((k, v) in body) {
            if (!first) sb.append(", ")
            first = false
            sb.append("\"").append(k).append("\": ")
            sb.append(
                when (v) {
                    is String -> "\"" + v + "\""
                    else -> v.toString()
                }
            )
        }
        sb.append("}")
        return sb.toString()
    }

    private fun deviceHeaders(authorization: String, timestamp: Long, body: String, pathWithQuery: String, contentType: String?): Map<String, String> {
        val sign = signPreString(authorization, pathWithQuery, body, timestamp)
        val headers = LinkedHashMap<String, String>()
        headers["User-Agent"] = UA
        headers["did"] = DID
        headers["davinci"] = DAVINCI
        headers["authorization"] = authorization
        headers["timestamp"] = timestamp.toString()
        headers["signature"] = sign
        headers["accept-encoding"] = "gzip"
        if (contentType != null) headers["Content-Type"] = contentType
        return headers
    }

    // ===== 登录 =====

    /** 手机号密码登录（GET /token，Basic + timestamp=0 + signature） */
    suspend fun login(mobile: String, password: String): LoginResult? = withContext(Dispatchers.IO) {
        try {
            lastMobile = mobile
            lastPassword = password
            val q = buildQuery(
                mapOf(
                    "client_id" to CLIENT_ID,
                    "email" to mobile,
                    "grant_type" to "password",
                    "password" to password,
                    "scope" to "user"
                )
            )
            val pathWithQuery = "/token?$q"
            val headers = deviceHeaders("Basic $BASIC_AUTH", 0, "", pathWithQuery, null)
            val req = Request.Builder().url("$BASE_URL$pathWithQuery").apply {
                headers.forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            val (code, body) = client.newCall(req).execute().use { resp ->
                Pair(resp.code, resp.body?.string() ?: "")
            }
            if (code != 200) {
                Log.w(TAG, "Codoon login HTTP $code: ${body.take(150)}")
                return@withContext null
            }
            val json = try { JSONObject(body) } catch (_: Exception) { null } ?: return@withContext null
            val access = json.optString("access_token").takeIf { it.isNotBlank() } ?: return@withContext null
            val refresh = json.optString("refresh_token")
            val uid = json.optString("user_id")
            LoginResult(access, refresh, uid)
        } catch (e: Exception) {
            Log.e(TAG, "Codoon login error", e)
            null
        }
    }

    private fun buildQuery(params: Map<String, String>): String =
        params.entries.joinToString("&") { (k, v) ->
            k + "=" + android.net.Uri.encode(v)
        }

    /** 校验 token：拉一次列表（limit=1），成功返回 true */
    suspend fun validateToken(token: String): Boolean = withContext(Dispatchers.IO) {
        if (token.isBlank()) return@withContext false
        try {
            val (code, _) = postJson(token, "/api/get_old_route_log", mapOf("limit" to 1, "page" to 1, "user_id" to "0"))
            code == 200
        } catch (e: Exception) {
            Log.e(TAG, "Codoon validateToken error", e)
            false
        }
    }

    /** 启动登录检测：token 有效返回 "咕咚用户"，无效返回 null */
    suspend fun getUsername(token: String): String? = withContext(Dispatchers.IO) {
        if (validateToken(token)) "咕咚用户" else null
    }

    /** 401 时用最近一次登录的账号密码重新登录（内存兜底） */
    suspend fun reLoginIfNeeded(): LoginResult? = withContext(Dispatchers.IO) {
        val m = lastMobile ?: return@withContext null
        val p = lastPassword ?: return@withContext null
        login(m, p)
    }

    // ===== 通用 POST（带 Bearer 签名）=====

    private data class PostResp(val code: Int, val body: String)

    private suspend fun postJson(token: String, path: String, body: Map<String, Any>): PostResp =
        withContext(Dispatchers.IO) {
            val bodyStr = jsonDumps(body)
            val ts = System.currentTimeMillis() / 1000
            val headers = deviceHeaders("Bearer $token", ts, bodyStr, path, JSON_MEDIA)
            val reqBody = bodyStr.toRequestBody(JSON_MEDIA.toMediaType())
            val req = Request.Builder().url(BASE_URL + path).apply {
                headers.forEach { (k, v) -> addHeader(k, v) }
            }.post(reqBody).build()
            client.newCall(req).execute().use { resp ->
                PostResp(resp.code, resp.body?.string() ?: "")
            }
        }

    // ===== 活动列表 =====

    /**
     * 获取活动列表（分页，每页500）。返回记录 extra 存 route_id（详情查询用）。
     * 覆盖全部运动类型（Hike/Run/Ride），过滤无 route_id 的无效记录。
     */
    suspend fun getActivities(token: String, userId: String, skip: Int, limit: Int): List<ActivityRecord> =
        withContext(Dispatchers.IO) {
            try {
                val out = mutableListOf<ActivityRecord>()
                var page = 1
                while (true) {
                    val (code, body) = postJson(token, "/api/get_old_route_log", mapOf("limit" to 500, "page" to page, "user_id" to userId))
                    if (code == 401) throw IllegalStateException("Codoon token 过期(401)")
                    if (code != 200) {
                        Log.w(TAG, "Codoon list HTTP $code: ${body.take(120)}")
                        break
                    }
                    val json = try { JSONObject(body) } catch (_: Exception) { null } ?: break
                    val data = json.optJSONObject("data") ?: break
                    val logList = data.optJSONArray("log_list") ?: break
                    for (i in 0 until logList.length()) {
                        val item = logList.optJSONObject(i) ?: continue
                        val logId = item.optString("log_id").takeIf { it.isNotBlank() } ?: continue
                        val routeId = item.optString("route_id").takeIf { it.isNotBlank() } ?: continue
                        val sportType = item.optInt("sports_type", 1)
                        val title = TYPE_NAME[sportType] ?: "运动"
                        // start_time 可能是 "2022-08-14T22:22:16" 或空
                        val start = item.optString("start_time", "").replace("T", " ").take(19)
                        val dist = item.optDouble("total_length", 0.0) / 1000.0
                        val dur = item.optLong("total_time", 0).toInt()
                        out.add(ActivityRecord(logId, title, start, dist, dur, DataSource.CODOON, routeId))
                    }
                    val hasMore = data.optBoolean("has_more", false)
                    if (!hasMore) break
                    page++
                    if (out.size >= (skip + limit) * 3) break // 足够返回即停（避免翻太多页）
                }
                out.distinctBy { it.id }.take((skip + limit).coerceAtLeast(1)).drop(skip)
            } catch (e: Exception) {
                Log.e(TAG, "Codoon getActivities error", e)
                throw e
            }
        }

    // ===== 下载 GPX =====

    /**
     * 下载活动轨迹为 GPX 字节。
     * 按 route_id 查详情 → points 构建 GPX，运动类型写入 <name>/<type> 供上传端识别。
     * 无轨迹点也生成合法 GPX（收不收由平台决定）。
     */
    suspend fun downloadGpx(token: String, routeId: String): ByteArray = withContext(Dispatchers.IO) {
        try {
            val (code, body) = postJson(token, "/api/get_single_log", mapOf("route_id" to routeId))
            if (code == 401) throw IllegalStateException("Codoon token 过期(401)")
            if (code != 200) throw IllegalStateException("Codoon 详情HTTP $code")
            val json = try { JSONObject(body) } catch (_: Exception) { null }
                ?: throw IllegalStateException("Codoon 详情解析失败")
            val data = json.optJSONObject("data")
                ?: throw IllegalStateException("Codoon 详情无data")

            val sportType = TYPE_NAME[data.optInt("sports_type", 1)] ?: "Run"
            val startTimeStr = data.optString("start_time", "")
            val startMs = parseStartTimeMs(startTimeStr)

            val points = mutableListOf<DoubleArray>() // [lat, lon, ts(ms), alt]
            val ptsArr = data.optJSONArray("points")
            if (ptsArr != null) {
                for (i in 0 until ptsArr.length()) {
                    val p = ptsArr.optJSONObject(i) ?: continue
                    val lat = p.optDouble("latitude", Double.NaN)
                    val lon = p.optDouble("longitude", Double.NaN)
                    if (lat.isNaN() || lon.isNaN() || (lat == 0.0 && lon == 0.0)) continue
                    val ts = parsePointTimeMs(p.optString("time_stamp"), startMs, i)
                    val alt = if (p.has("elevation")) p.optDouble("elevation", Double.NaN) else Double.NaN
                    points.add(doubleArrayOf(lat, lon, ts.toDouble(), alt))
                }
            }

            // v7.9.5: 可选 GCJ-02 → WGS-84 转换（默认关闭；咕咚云端存 WGS-84，若实测偏移可开启）
            if (points.isNotEmpty() && gcjConvertEnabled) {
                val converted = points.map { p ->
                    val (lat, lon) = com.jichi.ob.util.FitGcj02Fixer.gcj02ToWgs84(p[0], p[1])
                    doubleArrayOf(lat, lon, p[2], p[3])
                }
                Log.i(TAG, "Codoon GCJ-02→WGS-84 坐标转换: ${converted.size}点")
                points.clear(); points.addAll(converted)
            }

            buildGpx(points, startMs, sportType)
        } catch (e: Exception) {
            Log.e(TAG, "Codoon downloadGpx error", e)
            throw e
        }
    }

    private fun parseStartTimeMs(s: String): Long {
        if (s.isBlank()) return 0
        return try {
            val f = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.US)
            f.timeZone = java.util.TimeZone.getTimeZone("Asia/Shanghai")
            f.parse(s.replace("T", " ").take(19))?.time ?: 0
        } catch (_: Exception) { 0 }
    }

    /** 时间戳解析：time_stamp 可能为完整字符串、epoch 秒或空。缺省时用 startMs 推算 */
    private fun parsePointTimeMs(tsStr: String, startMs: Long, idx: Int): Long {
        if (tsStr.isNotBlank()) {
            try {
                val v = tsStr.toLongOrNull()
                if (v != null) {
                    return if (v < 100_000_000_000L) v * 1000 else v // 秒 → 毫秒
                }
                // 完整时间字符串
                val f = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.US)
                f.timeZone = java.util.TimeZone.getTimeZone("Asia/Shanghai")
                val parsed = f.parse(tsStr.replace("T", " ").take(19))?.time
                if (parsed != null) return parsed
            } catch (_: Exception) { }
        }
        // 无时间戳：按 index 间隔 1s 递增（从 startMs 起）
        return if (startMs > 0) startMs + idx * 1000L else 0
    }

    /** 构建标准 GPX（带时间戳与海拔），sportType: Hike/Run/Ride，写入 <type> 与 <name> 标记 */
    private fun buildGpx(points: List<DoubleArray>, startTimeMs: Long, sportType: String): ByteArray {
        val sportLower = sportType.lowercase()
        val sb = StringBuilder()
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
        sb.append("<gpx creator=\"jichiOB\" version=\"1.1\" xmlns=\"http://www.topografix.com/GPX/1/1\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\">\n")
        sb.append("  <trk><name>from codoon - ").append(sportLower).append("</name><type>").append(sportLower).append("</type><trkseg>\n")
        for (p in points) {
            val lat = p[0]; val lon = p[1]; val ts = p[2].toLong(); val alt = p[3]
            val time = if (ts > 0) formatGpxTime(ts) else ""
            sb.append("    <trkpt lat=\"").append(String.format(java.util.Locale.US, "%.6f", lat))
                .append("\" lon=\"").append(String.format(java.util.Locale.US, "%.6f", lon)).append("\">")
            if (time.isNotEmpty()) sb.append("<time>").append(time).append("</time>")
            if (!alt.isNaN()) sb.append("<ele>").append(String.format(java.util.Locale.US, "%.2f", alt)).append("</ele>")
            sb.append("</trkpt>\n")
        }
        sb.append("  </trkseg></trk>\n")
        sb.append("</gpx>\n")
        return sb.toString().toByteArray(Charsets.UTF_8)
    }

    private fun formatGpxTime(ms: Long): String {
        return try {
            val f = java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", java.util.Locale.US)
            f.timeZone = java.util.TimeZone.getTimeZone("UTC")
            f.format(java.util.Date(ms))
        } catch (_: Exception) { "" }
    }
}

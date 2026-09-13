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
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.util.concurrent.TimeUnit
import java.util.zip.GZIPInputStream

/**
 * Keep API（v7.9.2 新增，纯HTTP 仅下载源，仿 MyWhoosh/Zwift 模式）
 *
 * 认证: 账号密码 login（纯API 明文手机号+密码，无需浏览器）
 * 登录: POST https://api.gotokeep.com/v1.1/users/login
 *       form: mobile + password  → data.token（Bearer）
 * 列表: GET https://api.gotokeep.com/pd/v3/stats/detail?dateUnit=all&type=running|cycling&lastDate={last_date}
 *       (Bearer) → data.records[].logs[0].stats.id（活动ID），分页靠 data.lastTimestamp
 * 详情: GET https://api.gotokeep.com/pd/v3/runninglog/{run_id}
 *       (Bearer) → data.rawDataURL 返回 zlib+base64 压缩的轨迹 JSON（H4sI...）
 *       轨迹解码 → 构建 GPX 字节（供上传引擎 GpxToFitConverter 转 FIT）
 *
 * 注：Keep 无官方上传 API（官方 MCP 网关仅开放健康记录），上传走"半自动引导"：
 *  App 生成 fit 后提示用户在 Keep App 内手动导入（运动→数据同步→运动数据文件去导入）。
 */
class KeepApi {

    companion object {
        private const val TAG = "KeepApi"
        private const val LOGIN_URL = "https://api.gotokeep.com/v1.1/users/login"
        private const val LIST_API = "https://api.gotokeep.com/pd/v3/stats/detail"
        private const val LOG_API = "https://api.gotokeep.com/pd/v3/runninglog"
        private const val FORM_MEDIA = "application/x-www-form-urlencoded;charset=utf-8"
        private const val UA = "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(60, TimeUnit.SECONDS)
        .writeTimeout(60, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private var lastMobile: String? = null
    private var lastPassword: String? = null

    data class LoginResult(val token: String)

    /** 账号密码登录，成功返回 token，失败返回 null */
    suspend fun login(mobile: String, password: String): LoginResult? = withContext(Dispatchers.IO) {
        try {
            lastMobile = mobile
            lastPassword = password
            val body = "mobile=${android.net.Uri.encode(mobile)}&password=${android.net.Uri.encode(password)}"
            val req = Request.Builder()
                .url(LOGIN_URL)
                .addHeader("Content-Type", FORM_MEDIA)
                .addHeader("User-Agent", UA)
                .post(body.toRequestBody(FORM_MEDIA.toMediaType()))
                .build()
            client.newCall(req).execute().use { resp ->
                val respBody = resp.body?.string() ?: return@withContext null
                if (resp.code != 200) {
                    Log.w(TAG, "Keep login HTTP ${resp.code}: ${respBody.take(150)}")
                    return@withContext null
                }
                val json = try { JSONObject(respBody) } catch (_: Exception) { null } ?: return@withContext null
                if (!json.optBoolean("ok", false)) {
                    Log.w(TAG, "Keep login failed: ${json.optString("text")}")
                    return@withContext null
                }
                val data = json.optJSONObject("data") ?: return@withContext null
                val token = data.optString("token").takeIf { it.isNotBlank() } ?: return@withContext null
                LoginResult(token)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Keep login error", e)
            null
        }
    }

    /** 校验 token：调一次列表（limit=1），成功返回 true */
    suspend fun validateToken(token: String): Boolean = withContext(Dispatchers.IO) {
        if (token.isBlank()) return@withContext false
        try {
            val req = Request.Builder()
                .url("$LIST_API?dateUnit=all&type=cycling&lastDate=0")
                .addHeader("Authorization", "Bearer $token")
                .addHeader("User-Agent", UA)
                .get()
                .build()
            client.newCall(req).execute().use { resp ->
                resp.code == 200
            }
        } catch (e: Exception) {
            Log.e(TAG, "Keep validateToken error", e)
            false
        }
    }

    /** 启动登录检测：token 有效返回 "Keep用户"，无效返回 null */
    suspend fun getUsername(token: String): String? = withContext(Dispatchers.IO) {
        if (validateToken(token)) "Keep用户" else null
    }

    /** 401 时用最近一次登录的账号密码重新登录（内存兜底） */
    suspend fun reLoginIfNeeded(): LoginResult? = withContext(Dispatchers.IO) {
        val m = lastMobile ?: return@withContext null
        val p = lastPassword ?: return@withContext null
        login(m, p)
    }

    /**
     * 获取活动列表（分页）。返回记录 extra 存 run_id。
     * 同时抓取 running / cycling / hiking 三类运动（Keep stats/detail 仅这三类有效，
     * 其他 type 值服务端会兜底返回 cycling，无法用于区分）。
     */
    suspend fun getActivities(token: String, skip: Int, limit: Int): List<ActivityRecord> =
        withContext(Dispatchers.IO) {
            try {
                val out = mutableListOf<ActivityRecord>()
                for (type in listOf("running", "cycling", "hiking")) {
                    var lastDate = 0L
                    var fetched = 0
                    while (true) {
                        val req = Request.Builder()
                            .url("$LIST_API?dateUnit=all&type=$type&lastDate=$lastDate")
                            .addHeader("Authorization", "Bearer $token")
                            .addHeader("User-Agent", UA)
                            .get()
                            .build()
                        val (code, body) = client.newCall(req).execute().use { resp ->
                            Pair(resp.code, resp.body?.string() ?: "")
                        }
                        if (code == 401) throw IllegalStateException("Keep token 过期(401)")
                        if (code != 200) {
                            Log.w(TAG, "Keep list HTTP $code: ${body.take(120)}")
                            break
                        }
                        val json = try { JSONObject(body) } catch (_: Exception) { null } ?: break
                        val data = json.optJSONObject("data") ?: break
                        val records = data.optJSONArray("records") ?: break
                        for (i in 0 until records.length()) {
                            val rec = records.optJSONObject(i) ?: continue
                            val logs = rec.optJSONArray("logs") ?: continue
                            if (logs.length() == 0) continue
                            val stats = logs.optJSONObject(0)?.optJSONObject("stats") ?: continue
                            val id = stats.optString("id").takeIf { it.isNotBlank() } ?: continue
                            val title = stats.optString("type").takeIf { it.isNotBlank() }
                                ?: if (type == "running") "跑步" else "骑行"
                            val start = formatTime(stats.optLong("startTime", 0))
                            val dist = stats.optDouble("distance", 0.0) / 1000.0  // 米→公里
                            val dur = stats.optLong("duration", 0).toInt()
                            out.add(ActivityRecord(id, title, start, dist, dur, DataSource.KEEP, id))
                            fetched++
                        }
                        // 分页：lastTimestamp 为 0 或无 → 结束
                        val next = data.optLong("lastTimestamp", 0)
                        if (next <= 0 || next == lastDate) break
                        lastDate = next
                        if (fetched >= limit * 2) break  // 足够返回即停
                    }
                }
                // skip/limit 语义：按来源时间排序后截取
                out.distinctBy { it.id }.take((skip + limit).coerceAtLeast(1)).drop(skip)
            } catch (e: Exception) {
                Log.e(TAG, "Keep getActivities error", e)
                throw e
            }
        }

    private fun formatTime(ms: Long): String {
        if (ms <= 0) return ""
        return try {
            val f = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.US)
            f.timeZone = java.util.TimeZone.getTimeZone("UTC")
            f.format(java.util.Date(ms))
        } catch (_: Exception) { "" }
    }

    /**
     * 下载活动轨迹为 GPX 字节。
     * 按 run_id 后缀（_rn/_cy/_hk）识别运动类型，选对应详情接口（runninglog/cyclinglog/hikinglog），
     * 详情返回 rawDataURL → gzip+base64 压缩轨迹 → 解码构建 GPX，并把运动类型写入 GPX name 供上传端识别。
     */
    suspend fun downloadGpx(token: String, runId: String): ByteArray = withContext(Dispatchers.IO) {
        try {
            // 1. 从 run_id 后缀识别运动类型（Keep 规范：_rn=running _cy=cycling _hk=hiking）
            val sportType = when {
                runId.endsWith("_cy") -> "cycling"
                runId.endsWith("_hk") -> "hiking"
                else -> "running"
            }
            // 详情接口按类型选择（runninglog/cyclinglog/hikinglog）
            val logApi = when (sportType) {
                "cycling" -> "https://api.gotokeep.com/pd/v3/cyclinglog"
                "hiking" -> "https://api.gotokeep.com/pd/v3/hikinglog"
                else -> LOG_API
            }
            // 2. 取详情拿 rawDataURL
            val req = Request.Builder()
                .url("$logApi/$runId")
                .addHeader("Authorization", "Bearer $token")
                .addHeader("User-Agent", UA)
                .get()
                .build()
            val (code, body) = client.newCall(req).execute().use { resp ->
                Pair(resp.code, resp.body?.string() ?: "")
            }
            if (code == 401) throw IllegalStateException("Keep token 过期(401)")
            if (code != 200) throw IllegalStateException("Keep 详情HTTP $code")
            val json = try { JSONObject(body) } catch (_: Exception) { null }
                ?: throw IllegalStateException("Keep 详情解析失败")
            val data = json.optJSONObject("data")
                ?: throw IllegalStateException("Keep 详情无data")
            val startTime = data.optLong("startTime", 0)

            // v7.9.2: 无轨迹也要上传（收不收由平台决定）。
            // 1) 先尝试 rawDataURL 轨迹；2) 无轨迹时用 region 中心坐标构造单点 GPX 兜底上传
            var points: List<DoubleArray> = emptyList()
            var usedFallback = false
            val rawUrl = data.optString("rawDataURL").takeIf { it.isNotBlank() }
            if (rawUrl != null) {
                try {
                    // 3. 取 rawDataURL（base64 编码的 GZIP 压缩 JSON）
                    val rawReq = Request.Builder().url(rawUrl).addHeader("User-Agent", UA).get().build()
                    val rawText = client.newCall(rawReq).execute().use { resp ->
                        resp.body?.string() ?: throw IllegalStateException("Keep 轨迹获取失败")
                    }
                    points = decodeRunmap(rawText)
                } catch (e: Exception) {
                    Log.w(TAG, "Keep 轨迹获取失败，走 region 兜底: ${e.message}")
                }
            } else {
                usedFallback = true
            }
            // 轨迹为空（室内/无GPS）→ region 中心坐标构造单点 GPX
            if (points.isEmpty()) {
                usedFallback = true
                val region = data.optJSONObject("region")
                val cLat = region?.optDouble("latitude", 0.0) ?: 0.0
                val cLon = region?.optDouble("longitude", 0.0) ?: 0.0
                if (cLat != 0.0 || cLon != 0.0) {
                    points = listOf(doubleArrayOf(cLat, cLon, startTime.toDouble(), Double.NaN))
                }
            }

            // v7.9.3: Keep 轨迹为 GCJ-02（火星坐标），上传前统一转 WGS-84（否则目标平台偏移约500米）。
            // 复用迈金坐标转换引擎算法（FitGcj02Fixer.gcj02ToWgs84），含轨迹点与 region 兜底坐标。
            if (points.isNotEmpty()) {
                val converted = points.map { p ->
                    val (lat, lon) = com.jichi.ob.util.FitGcj02Fixer.gcj02ToWgs84(p[0], p[1])
                    doubleArrayOf(lat, lon, p[2], p[3])
                }
                val sample = converted.firstOrNull()
                if (sample != null) {
                    Log.i(TAG, "Keep GCJ-02→WGS-84 坐标转换: ${converted.size}点, 首点(${sample[0]},${sample[1]})")
                }
                points = converted
            }

            // 4. 构建 GPX（无点且无坐标时也生成合法空 GPX，交由目标平台决定是否接收）
            val gpx = buildGpx(points, startTime, sportType)
            // 记录兜底标记（供日志提示，不影响上传）
            if (usedFallback) {
                Log.i(TAG, "Keep 无轨迹，使用 region 坐标兜底上传(${points.size}点)")
            }
            gpx
        } catch (e: Exception) {
            Log.e(TAG, "Keep downloadGpx error", e)
            throw e
        }
    }

    /** 解码压缩的轨迹 JSON：rawDataURL 为 base64 编码的 GZIP 压缩 JSON（H4sI 开头 = gzip 魔数），返回 [lat, lon, timestamp] 点列表 */
    private fun decodeRunmap(text: String): List<DoubleArray> {
        val b64 = text.trim().split("\n").joinToString("")
        val raw = base64Decode(b64)
        // v7.9.2 fix: rawDataURL 是 base64(gzip)，非 zlib raw——用 GZIPInputStream 解压
        val out = ByteArrayOutputStream()
        try {
            GZIPInputStream(ByteArrayInputStream(raw)).use { gzip ->
                val buf = ByteArray(8192)
                while (true) {
                    val n = gzip.read(buf)
                    if (n <= 0) break
                    out.write(buf, 0, n)
                }
            }
        } catch (_: Exception) {
            // 兜底：个别文件可能为 zlib raw（老数据），尝试 Inflater raw 解压
            return decodeRunmapZlib(raw, b64)
        }
        val jsonStr = out.toString("UTF-8")
        return parsePoints(jsonStr)
    }

    /** zlib raw 兜底解压（老数据兼容） */
    private fun decodeRunmapZlib(raw: ByteArray, b64: String): List<DoubleArray> {
        return try {
            val inflater = java.util.zip.Inflater(true)
            inflater.setInput(raw)
            val out = ByteArrayOutputStream()
            val buf = ByteArray(8192)
            while (!inflater.finished()) {
                val n = inflater.inflate(buf)
                if (n <= 0) break
                out.write(buf, 0, n)
            }
            inflater.end()
            parsePoints(out.toString("UTF-8"))
        } catch (_: Exception) {
            emptyList()
        }
    }

    private fun parsePoints(jsonStr: String): List<DoubleArray> {
        val arr = try { org.json.JSONArray(jsonStr) } catch (_: Exception) { null } ?: return emptyList()
        val points = mutableListOf<DoubleArray>()
        for (i in 0 until arr.length()) {
            val p = arr.optJSONObject(i) ?: continue
            val lat = p.optDouble("latitude", Double.NaN)
            val lon = p.optDouble("longitude", Double.NaN)
            if (lat.isNaN() || lon.isNaN()) continue
            // unixTimestamp 为绝对毫秒（最准）；缺失时用相对 timestamp + startTime 推算（兼容旧数据）
            val ts = if (p.has("unixTimestamp") && !p.isNull("unixTimestamp")) {
                p.optLong("unixTimestamp", 0).toDouble()
            } else {
                p.optDouble("timestamp", 0.0)
            }
            val alt = if (p.has("altitude") && !p.isNull("altitude")) p.optDouble("altitude", Double.NaN) else Double.NaN
            points.add(doubleArrayOf(lat, lon, ts, alt))
        }
        return points
    }

    private fun base64Decode(s: String): ByteArray = android.util.Base64.decode(s, android.util.Base64.DEFAULT)

    /** 构建标准 GPX（带时间戳与海拔）。points 每项 = [lat, lon, ts, alt]，ts 为绝对毫秒或相对秒。
     *  sportType: running/cycling/hiking，写入 GPX name 供上传端 GpxToFitConverter 识别运动类型 */
    private fun buildGpx(points: List<DoubleArray>, startTimeMs: Long, sportType: String = "running"): ByteArray {
        val sb = StringBuilder()
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
        sb.append("<gpx creator=\"jichiOB\" version=\"1.1\" xmlns=\"http://www.topografix.com/GPX/1/1\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\">\n")
        sb.append("  <trk><name>from keep - ").append(sportType).append("</name><trkseg>\n")
        for (p in points) {
            val lat = p[0]; val lon = p[1]; val ts = p[2].toLong(); val alt = p[3]
            // 相对秒（<100000000000）→ 用 startTime 推算；绝对毫秒（>=100000000000）直接用
            val time = if (ts > 0) {
                val abs = if (ts < 100_000_000_000L) startTimeMs + ts * 100 else ts
                formatGpxTime(abs)
            } else ""
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

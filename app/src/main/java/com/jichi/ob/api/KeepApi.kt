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
        // v8.1.4d: Keep 详情接口按运动类型区分；列表接口仅这三类有效
        private val KEEP_TYPES = setOf("running", "cycling", "hiking")
        // v8.1.4: Keep geoPoints AES-128-CBC 密钥/IV（来自公开开源项目 running_page，
        // base64("NTZmZTU5OzgyZzpkODczYw==")="56fe59;82g:d873c"，base64("MjM0Njg5MjQzMjkyMDMwMA==")="2346892432920300"）
        private val KEEP_GEO_KEY = "56fe59;82g:d873c".toByteArray(Charsets.UTF_8)
        private val KEEP_GEO_IV = "2346892432920300".toByteArray(Charsets.UTF_8)
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
                            // v8.2.5: 标题用中文运动类型（此前是接口英文 "cycling"，列表/详情显示难看）
                            val title = if (type == "running") "跑步" else if (type == "cycling") "骑行" else if (type == "hiking") "徒步" else if (type == "swimming") "游泳" else if (type == "other") "运动" else type.ifBlank { "运动" }
                            val start = formatTime(stats.optLong("startTime", 0))
                            val dist = stats.optDouble("distance", 0.0) / 1000.0  // 米→公里
                            val dur = stats.optLong("duration", 0).toInt()
                            // v8.1.4d: extra 存 "id|type"（type 来自列表接口按类型抓取，是权威运动类型；
                            // 仅存 id 时旧版/客户数据可能无 _cy 后缀导致下载走错接口无轨迹）
                            out.add(ActivityRecord(id, title, start, dist, dur, DataSource.KEEP, "$id|$type", startTimeMs = stats.optLong("startTime", 0)))
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
            // v8.1.4d: runId 可能为 "id|type"（列表接口权威运动类型），也可能只有 id（旧/客户数据无后缀）。
            // 运动类型判定不可只靠后缀——客户记录 kp56dab847ae78 不带 _cy，误判 running 会走错接口导致无轨迹。
            var id = runId
            var typeHint = ""
            if (runId.contains("|")) {
                val parts = runId.split("|")
                id = parts[0]
                typeHint = parts.getOrElse(1) { "" }
            }
            val suffix = when {
                id.endsWith("_cy") -> "cycling"
                id.endsWith("_hk") -> "hiking"
                id.endsWith("_rn") -> "running"
                else -> null
            }
            // 候选详情接口（去重，按优先级）：typeHint(列表权威) > 后缀判定 > 三接口全试
            val candidates = LinkedHashSet<String>()
            if (typeHint in KEEP_TYPES) candidates.add(typeHint)
            if (suffix != null) candidates.add(suffix)
            for (t in listOf("cycling", "running", "hiking")) candidates.add(t)

            var chosenSport: String = suffix ?: typeHint.ifEmpty { "running" }
            var data: JSONObject? = null
            for (apiType in candidates) {
                val logApi = when (apiType) {
                    "cycling" -> "https://api.gotokeep.com/pd/v3/cyclinglog"
                    "hiking" -> "https://api.gotokeep.com/pd/v3/hikinglog"
                    else -> LOG_API
                }
                val req = Request.Builder()
                    .url("$logApi/$id")
                    .addHeader("Authorization", "Bearer $token")
                    .addHeader("User-Agent", UA)
                    .get()
                    .build()
                val (code, body) = client.newCall(req).execute().use { resp ->
                    Pair(resp.code, resp.body?.string() ?: "")
                }
                if (code == 401) throw IllegalStateException("Keep token 过期(401)")
                if (code != 200) {
                    Log.w(TAG, "Keep 详情接口 $logApi/$id → HTTP $code，尝试下一接口")
                    continue
                }
                val json = try { JSONObject(body) } catch (_: Exception) { null }
                val d = json?.optJSONObject("data")
                // 有 data 即认定该接口正确（cyclinglog 返回 geoPoints，running/hiking 返回 rawDataURL）
                if (d != null) {
                    chosenSport = apiType
                    data = d
                    Log.i(TAG, "Keep 详情命中接口 $apiType（id=${id.take(20)}…）")
                    break
                }
            }
            val detail = data ?: throw IllegalStateException("Keep 详情解析失败(所有接口均无data)")
            val startTime = detail.optLong("startTime", 0)
            // v8.1.4: 读取详情元数据（实测 cyclinglog 无 rawDataURL 但必有 distance/duration，
            // 单点兜底时透传到 GPX/FIT，保证目标平台里程/时长正确）
            val metaDistance = detail.optDouble("distance", 0.0)  // 米
            val metaDuration = detail.optLong("duration", 0)      // 秒
            val metaCalorie = detail.optDouble("calorie", 0.0)    // 千卡
            val metaHr = detail.optJSONObject("heartRate")
            val metaAvgHr = metaHr?.optInt("averageHeartRate", 0) ?: 0
            val metaMaxHr = metaHr?.optInt("maxHeartRate", 0) ?: 0

            // v7.9.2: 无轨迹也要上传（收不收由平台决定）。
            // v8.1.6: 轨迹获取顺序修正——**geoPoints 优先**（cycling/hiking 详情实测必返回且可本地解码），
            // rawDataURL 次之（keepcdn 私有链接常返回 403 permission denied，实测带不带 token 均失效）。
            // 旧逻辑先试 rawDataURL、失败后不回退 geoPoints → 客户骑行轨迹一直单点兜底（空轨迹）。
            // 都无轨迹时用 region 中心坐标构造单点 GPX + 元数据兜底上传
            var points: List<DoubleArray> = emptyList()
            var usedFallback = false
            val rawUrl = detail.optString("rawDataURL").takeIf { it.isNotBlank() }
            val geo = detail.optString("geoPoints").takeIf { it.isNotBlank() }

            // 1) geoPoints（首选）：AES-128-CBC+zlib 加密轨迹，本地可解，不依赖外部链接
            if (geo != null) {
                points = decodeGeoPoints(geo)
                if (points.isNotEmpty()) {
                    Log.i(TAG, "Keep geoPoints 解码成功: ${points.size}点（$chosenSport 完整轨迹）")
                } else {
                    Log.w(TAG, "Keep geoPoints 解码失败，尝试 rawDataURL 兜底")
                }
            }
            // 2) rawDataURL（次选）：running/hiking 部分记录可能只有 rawDataURL；失败不再直接兜底
            if (points.isEmpty() && rawUrl != null) {
                try {
                    val rawReq = Request.Builder().url(rawUrl).addHeader("User-Agent", UA).get().build()
                    val rawText = client.newCall(rawReq).execute().use { resp ->
                        if (!resp.isSuccessful) throw IllegalStateException("HTTP ${resp.code} ${resp.message}")
                        resp.body?.string() ?: throw IllegalStateException("Keep 轨迹获取失败")
                    }
                    points = decodeRunmap(rawText)
                    if (points.isNotEmpty()) {
                        Log.i(TAG, "Keep rawDataURL 轨迹解码成功: ${points.size}点（$chosenSport）")
                    } else {
                        Log.w(TAG, "Keep rawDataURL 解码为空，走 region 兜底")
                    }
                } catch (e: Exception) {
                    Log.w(TAG, "Keep rawDataURL 轨迹获取失败，走 region 兜底: ${e.message}")
                }
            }
            if (points.isEmpty() && geo == null && rawUrl == null) {
                Log.w(TAG, "Keep 无 rawDataURL 且无 geoPoints，走元数据+region 兜底: distance=${metaDistance}m duration=${metaDuration}s")
                usedFallback = true
            }
            if (points.isEmpty()) usedFallback = true
            // 轨迹为空（室内/无GPS）→ region 中心坐标构造单点 GPX
            if (points.isEmpty()) {
                usedFallback = true
                val region = detail.optJSONObject("region")
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
            // v8.1.4: 单点兜底时透传 distance/duration/calorie/hr 到 GPX extensions，供 FIT 转换写入汇总
            // v8.1.6: 透传 detail.dataType（outdoorCycling/indoorCycling/mountaineering 等精确类型）
            //         写入 GPX <name>，供 FIT 转换完整映射 sport/sub_sport；<type> 保持列表大类。
            val detailDataType = detail.optString("dataType", "").ifBlank { chosenSport }
            val gpx = buildGpx(points, startTime, chosenSport,
                metaDistance, metaDuration, metaCalorie, metaAvgHr, metaMaxHr, detailDataType)
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

    /**
     * v8.1.4: 解码 Keep geoPoints（cycling/hiking 轨迹，AES-128-CBC + gzip 压缩 JSON）。
     * 密钥与算法来自公开开源项目 running_page（github.com/yihong0618/running_page）——
     * key=base64("NTZmZTU5OzgyZzpkODczYw==")="56fe59;82g:d873c"，
     * iv =base64("MjM0Njg5MjQzMjkyMDMwMA==")="2346892432920300"。
     * 解码链：base64 → AES-CBC 解密 → gzip 解压 → JSONArray（元素含 latitude/longitude/unixTimestamp/altitude）。
     * 返回 [lat, lon, ts, alt] 点列表；失败返回空列表（由调用方走元数据兜底）。
     */
    private fun decodeGeoPoints(text: String): List<DoubleArray> {
        return try {
            val raw = base64Decode(text.trim())
            val cipher = javax.crypto.Cipher.getInstance("AES/CBC/PKCS5Padding")
            cipher.init(
                javax.crypto.Cipher.DECRYPT_MODE,
                javax.crypto.spec.SecretKeySpec(KEEP_GEO_KEY, "AES"),
                javax.crypto.spec.IvParameterSpec(KEEP_GEO_IV)
            )
            val pt = cipher.doFinal(raw)
            // v8.1.4d: 先按 gzip 解压（实测 40/40 为 gzip 魔数 1f8b）；失败回退 zlib raw
            // （running_page 用 zlib.decompress(bytes, 16+MAX_WBITS) 自动探测，兼容两种格式）
            val out = ByteArrayOutputStream()
            try {
                java.util.zip.GZIPInputStream(ByteArrayInputStream(pt)).use { gzip ->
                    val buf = ByteArray(8192)
                    while (true) { val n = gzip.read(buf); if (n <= 0) break; out.write(buf, 0, n) }
                }
            } catch (_: Exception) {
                out.reset()
                val inflater = java.util.zip.Inflater(true)
                inflater.setInput(pt)
                val buf = ByteArray(8192)
                while (!inflater.finished()) {
                    val n = inflater.inflate(buf)
                    if (n <= 0) break
                    out.write(buf, 0, n)
                }
                inflater.end()
            }
            parsePoints(out.toString("UTF-8"))
        } catch (e: Exception) {
            Log.w(TAG, "Keep geoPoints AES 解码失败: ${e.message}")
            emptyList()
        }
    }

    /** 解码压缩的轨迹 JSON：rawDataURL 为 base64 编码的 GZIP 压缩 JSON（H4sI 开头 = gzip 魔数），返回 [lat, lon, timestamp] 点列表 */
    private fun decodeRunmap(text: String): List<DoubleArray> {
        val b64 = text.trim().split("\n").joinToString("")
        // v8.1.3: 兼容 rawDataURL 返回 JSON 包裹（{"data":"H4sI..."}）的情况——先尝试直接解压，失败再逐层兜底
        val raw = base64Decode(b64)
        // 1) GZIP 解压
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
            val pts = parsePoints(out.toString("UTF-8"))
            if (pts.isNotEmpty()) return pts
        } catch (_: Exception) {
            // 2) zlib raw 兜底（老数据）
        }
        val zlibPts = decodeRunmapZlib(raw, b64)
        if (zlibPts.isNotEmpty()) return zlibPts
        // 3) 若 rawDataURL 是 JSON 包裹（如 {"data":"H4sI..."} 或 {"points":[...]}），提取内层再解
        try {
            val obj = org.json.JSONObject(b64)
            val inner = obj.optString("data").takeIf { it.isNotBlank() }
            if (inner != null) {
                val innerRaw = base64Decode(inner.trim())
                val innerOut = ByteArrayOutputStream()
                GZIPInputStream(ByteArrayInputStream(innerRaw)).use { gz ->
                    val buf = ByteArray(8192)
                    while (true) { val n = gz.read(buf); if (n <= 0) break; innerOut.write(buf, 0, n) }
                }
                val pts = parsePoints(innerOut.toString("UTF-8"))
                if (pts.isNotEmpty()) return pts
            }
            // JSON 未压缩数组直读
            val direct = parsePoints(b64)
            if (direct.isNotEmpty()) return direct
        } catch (_: Exception) {
        }
        return emptyList()
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
        // v8.1.3: 兼容 Keep 两种轨迹 JSON 结构：
        //   1) 顶层 JSONArray（社区实现：元素含 lat/lon/timestamp/altitude/speed）
        //   2) 顶层 JSONObject 内含 points/data/runmap/tracks 数组
        //   元素坐标字段兼容 lat/lon 与 latitude/longitude
        val root = try { org.json.JSONObject(jsonStr) } catch (_: Exception) { null }
        val arr = when {
            root != null -> {
                root.optJSONArray("points")
                    ?: root.optJSONArray("data")
                    ?: root.optJSONArray("runmap")
                    ?: root.optJSONArray("tracks")
            }
            else -> try { org.json.JSONArray(jsonStr) } catch (_: Exception) { null }
        } ?: return emptyList()
        val points = mutableListOf<DoubleArray>()
        for (i in 0 until arr.length()) {
            val p = arr.optJSONObject(i) ?: continue
            val lat = if (p.has("lat") && !p.isNull("lat")) p.optDouble("lat", Double.NaN)
                     else p.optDouble("latitude", Double.NaN)
            val lon = if (p.has("lon") && !p.isNull("lon")) p.optDouble("lon", Double.NaN)
                     else p.optDouble("longitude", Double.NaN)
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

    // minSdk 26：直接用 java.util.Base64（JVM 单测可跑，兼容 android.util.Base64 的全部使用场景）
    private fun base64Decode(s: String): ByteArray = try {
        java.util.Base64.getDecoder().decode(s.trim())
    } catch (_: Exception) {
        ByteArray(0)
    }

    /** 构建标准 GPX（带时间戳与海拔）。points 每项 = [lat, lon, ts, alt]，ts 为绝对毫秒或相对秒。
     *  sportType: running/cycling/hiking（列表大类）。同时写入 GPX 标准 <type> 元素（供 iGPSPORT 等直传 GPX 平台识别）
     *  和 <name> 标记（供 GpxToFitConverter 识别运动类型）。
     *  dataType: v8.1.6 新增——Keep 详情精确类型（outdoorCycling/indoorCycling/mountaineering 等），
     *  写入 <name>（"from keep - {dataType}"）供 FIT 转换完整映射 (sport, sub_sport)。
     *  v8.1.6 修复：根元素声明 xmlns:jichi——此前 <extensions><jichi:*> 用了未声明命名空间前缀，
     *  严格 XML 解析器（iGPSPORT 等）会整体拒绝解析 → 上传成功但不落库。
     *  metaDistance(米)/metaDuration(秒)/metaCalorie(千卡)/metaAvgHr/metaMaxHr：v8.1.4 起
     *  Keep cycling 单点兜底时透传详情元数据，写入 <extensions>，
     *  GpxToFitConverter 解析后写入 FIT session 汇总（total_distance/时长/热量/心率）。 */
    private fun buildGpx(
        points: List<DoubleArray>, startTimeMs: Long, sportType: String = "running",
        metaDistance: Double = 0.0, metaDuration: Long = 0,
        metaCalorie: Double = 0.0, metaAvgHr: Int = 0, metaMaxHr: Int = 0,
        dataType: String = ""
    ): ByteArray {
        val sb = StringBuilder()
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
        sb.append("<gpx creator=\"jichiOB\" version=\"1.1\" xmlns=\"http://www.topografix.com/GPX/1/1\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\" xmlns:jichi=\"http://jichi.ob\">\n")
        val precise = dataType.ifBlank { sportType }
        sb.append("  <trk><name>from keep - ").append(precise).append("</name><type>").append(sportType).append("</type><trkseg>\n")
        for (p in points) {
            val lat = p[0]; val lon = p[1]; val ts = p[2].toLong(); val alt = p[3]
            // v8.1.3: 时间换算修正——此前相对值一律 ×100 会把轨迹时长压缩 10 倍（秒→毫秒应为 ×1000）。
            //   <100000000000 = 相对值（非绝对毫秒）：
            //     ≥100000000（相对毫秒，如 2.7 小时≈10^8ms）→ 直接用 startTime 推算；
            //     <100000000（相对秒，如 5400s）→ ×1000 转毫秒；
            //   绝对毫秒（>=100000000000，如 unixTimestamp）直接用。
            val time = if (ts > 0) {
                val abs = when {
                    ts >= 100_000_000_000L -> ts
                    ts >= 100_000_000L -> startTimeMs + ts
                    else -> startTimeMs + ts * 1000
                }
                formatGpxTime(abs)
            } else ""
            sb.append("    <trkpt lat=\"").append(String.format(java.util.Locale.US, "%.6f", lat))
                .append("\" lon=\"").append(String.format(java.util.Locale.US, "%.6f", lon)).append("\">")
            if (time.isNotEmpty()) sb.append("<time>").append(time).append("</time>")
            if (!alt.isNaN()) sb.append("<ele>").append(String.format(java.util.Locale.US, "%.2f", alt)).append("</ele>")
            sb.append("</trkpt>\n")
        }
        sb.append("  </trkseg>\n")
        if (metaDistance > 0.0 || metaDuration > 0L) {
            sb.append("  <extensions>")
                .append("<jichi:distance>").append(String.format(java.util.Locale.US, "%.1f", metaDistance)).append("</jichi:distance>")
                .append("<jichi:duration>").append(metaDuration).append("</jichi:duration>")
            if (metaCalorie > 0.0) sb.append("<jichi:calorie>").append(metaCalorie.toInt()).append("</jichi:calorie>")
            if (metaAvgHr > 0) sb.append("<jichi:avgHr>").append(metaAvgHr).append("</jichi:avgHr>")
            if (metaMaxHr > 0) sb.append("<jichi:maxHr>").append(metaMaxHr).append("</jichi:maxHr>")
            sb.append("</extensions>\n")
        }
        sb.append("  </trk>\n")
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

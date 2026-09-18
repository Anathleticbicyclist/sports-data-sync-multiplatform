package com.jichi.ob.api

import android.util.Log
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.FormBody
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.util.UUID
import java.util.concurrent.TimeUnit

/**
 * Zepp（华米/小米运动）API（v7.9.5 新增，纯HTTP 仅下载源）
 *
 * 华米官方无公开云数据 API，本实现参考社区逆向方案
 * （rolandsz/Mi-Fit-and-Zepp-workout-exporter + CSDN 逆向文章）：
 *
 * ① 登录 ①: POST https://api-user.huami.com/registrations/{EMAIL}/tokens
 *     form: client_id=HuaMi / password(明文) / redirect_uri=successsignin.html /
 *           token=access / state=REDIRECTION
 *     allow_redirects=false → 从 302 Location 正则提取 access=xxx（access code）
 * ② 登录 ②: POST https://account.huami.com/v2/client/login
 *     form: app_name=com.xiaomi.hm.health / dn=... / code={access code} / grant_type=access_token /
 *           third_name=email(邮箱)/huami_phone(手机号) / device_id / device_model=phone /
 *           country_code=CN / app_version=6.5.5 / lang=zh_CN
 *     → token_info.login_token + user_id
 * ③ 换 app_token: GET https://account-cn.huami.com/v1/client/app_tokens
 *     query: app_name / dn / login_token / os_version=4.1.0 → token_info.app_token
 * ④ 历史: GET https://api-mifit-de2.huami.com/v1/sport/run/history.json?source=run.mifit.huami.com
 *     header: apptoken / appPlatform=web / appname=com.xiaomi.hm.health
 *     → data.summary[]（trackid=epoch秒 / dis(km) / run_time(秒) / type / sport_mode / end_time...）
 *     data.next 分页（-1 结束）
 * ⑤ 详情: GET https://api-mifit-de2.huami.com/v1/sport/run/detail.json?trackid={id}&source={src}
 *     header: apptoken
 *     → data.longitude_latitude("lat,lon;..."，相对插值、lat在前、÷1e8)、
 *       data.altitude(绝对厘米,缺省-2000000)、data.time(相对秒,需累加)、
 *       data.heart_rate("time,hr;...")
 *     绝对坐标 = 累加(相对值)；点时间 = trackid(epoch秒) + 累加(time)
 *
 * 运动类型 WORKOUT_TYPE_MAP: 1=running 6=walking 8=treadmill_running 9=cycling
 *                            10=indoor_cycling 16=other 23=indoor_rowing 92=badminton
 *
 * 坐标：华米/Zepp 设备 GPS 原始坐标 = WGS-84（官方导出国际平台坐标正常），默认不转换；
 *      若实测偏移可开启 prefs 的 zepp gcj 转换开关。
 */
class ZeppApi {

    companion object {
        private const val TAG = "ZeppApi"
        private const val APP_NAME = "com.xiaomi.hm.health"
        private const val APP_PLATFORM = "web"
        private const val DN = "api-user.huami.com%2Capi-mifit.huami.com%2Capp-analytics.huami.com"
        private const val API_HOST = "https://api-mifit-de2.huami.com"
        private const val UA = "Dalvik/2.1.0 (Linux; U; Android 9; MI 6 MIUI/20.6.18)"

        // 运动类型映射（→ GPX type / 标题）
        private val WORKOUT_TYPE_MAP = mapOf(
            1 to "running", 6 to "walking", 8 to "treadmill_running",
            9 to "cycling", 10 to "indoor_cycling", 16 to "other",
            23 to "indoor_rowing", 92 to "badminton"
        )
        private val WORKOUT_TYPE_NAME = mapOf(
            1 to "跑步", 6 to "健走", 8 to "跑步机", 9 to "骑行",
            10 to "室内骑行", 16 to "其他", 23 to "划船机", 92 to "羽毛球"
        )
        private const val NO_VALUE = -2000000L

        /** v7.9.5: Zepp 轨迹坐标转换开关（默认关=WGS-84；若实测偏移由外部同步 prefs 开启 GCJ-02→WGS-84） */
        @Volatile
        var gcjConvertEnabled: Boolean = false
    }

    // 默认 client：自动跟随重定向（详情/历史请求）
    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(60, TimeUnit.SECONDS)
        .writeTimeout(60, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    // 登录专用 client：不跟随 302（需从 Location 取 access code）
    private val loginClient = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(60, TimeUnit.SECONDS)
        .writeTimeout(60, TimeUnit.SECONDS)
        .followRedirects(false)
        .followSslRedirects(false)
        .build()

    data class LoginResult(val appToken: String, val userId: String, val error: String? = null)

    private var lastAccount: String? = null
    private var lastPassword: String? = null

    // ===== 登录 =====

    /** 手机号/邮箱 + 密码登录 → app_token（三步流程） */
    suspend fun login(account: String, password: String): LoginResult? = withContext(Dispatchers.IO) {
        try {
            lastAccount = account
            lastPassword = password
            // 手机号登录必须带 +86 国家码（华米服务端校验，否则 401）
            val raw = account.trim()
            val isEmail = raw.contains("@")
            val userName = if (isEmail) raw else "+86$raw"

            // ① 获取 access code（POST registrations/tokens，json_response=true 直接返回 JSON）
            val (accessCode, step1Err) = fetchAccessCode(userName, password)
            if (accessCode == null) {
                Log.w(TAG, "Zepp step1 access code 获取失败: $step1Err")
                return@withContext LoginResult("", "", step1Err ?: "登录失败，请稍后再试")
            }

            // ② 换取 login_token（参数对齐社区最新实现：app_version 6.12.0 / android_phone / allow_registration=false / source）
            val loginForm = FormBody.Builder()
                .add("app_name", APP_NAME)
                .add("country_code", "CN")
                .add("code", accessCode)
                .add("device_id", deviceId())
                .add("device_model", "android_phone")
                .add("app_version", "6.12.0")
                .add("grant_type", "access_token")
                .add("allow_registration", "false")
                .add("source", APP_NAME)
                .add("third_name", if (isEmail) "huami" else "huami_phone")
                .build()
            val req2 = Request.Builder()
                .url("https://account.huami.com/v2/client/login")
                .header("User-Agent", UA)
                .post(loginForm)
                .build()
            val (code2, body2) = client.newCall(req2).execute().use { r ->
                Pair(r.code, r.body?.string() ?: "")
            }
            if (code2 != 200) {
                Log.w(TAG, "Zepp step2 login HTTP $code2: ${body2.take(150)}")
                val err2 = when {
                    code2 == 429 || body2.contains("too many") -> "请求过于频繁，已被华米风控，请稍等几分钟再试"
                    code2 == 401 || code2 == 403 -> "账号或密码错误，请重新输入"
                    else -> "登录失败(HTTP $code2)，请稍后再试"
                }
                return@withContext LoginResult("", "", err2)
            }
            val j2 = try { JSONObject(body2) } catch (_: Exception) { null } ?: run {
                Log.w(TAG, "Zepp step2 响应非JSON: ${body2.take(120)}")
                return@withContext LoginResult("", "", "登录响应异常，请稍后再试")
            }
            val tokenInfo = j2.optJSONObject("token_info") ?: run {
                Log.w(TAG, "Zepp step2 无token_info: ${body2.take(150)}")
                return@withContext LoginResult("", "", "登录响应异常，请稍后再试")
            }
            val loginToken = tokenInfo.optString("login_token").takeIf { it.isNotBlank() } ?: run {
                Log.w(TAG, "Zepp step2 无login_token: ${body2.take(150)}")
                return@withContext LoginResult("", "", "登录响应异常，请稍后再试")
            }
            val userId = tokenInfo.optString("user_id")

            // ③ 换取 app_token（简版：仅 login_token 参数，社区最新实现验证可用）
            val q = "login_token=${android.net.Uri.encode(loginToken)}"
            val req3 = Request.Builder()
                .url("https://account-cn.huami.com/v1/client/app_tokens?$q")
                .header("User-Agent", UA)
                .get()
                .build()
            val (code3, body3) = client.newCall(req3).execute().use { r ->
                Pair(r.code, r.body?.string() ?: "")
            }
            if (code3 != 200) {
                Log.w(TAG, "Zepp step3 app_token HTTP $code3: ${body3.take(150)}")
                val err3 = when {
                    code3 == 429 || body3.contains("too many") -> "请求过于频繁，已被华米风控，请稍等几分钟再试"
                    code3 == 401 || code3 == 403 -> "登录凭证已失效或被风控，请重新登录"
                    else -> "登录失败(HTTP $code3)，请稍后再试"
                }
                return@withContext LoginResult("", "", err3)
            }
            val j3 = try { JSONObject(body3) } catch (_: Exception) { null } ?: run {
                Log.w(TAG, "Zepp step3 响应非JSON: ${body3.take(120)}")
                return@withContext LoginResult("", "", "登录响应异常，请稍后再试")
            }
            val t3 = j3.optJSONObject("token_info") ?: j3
            val appToken = t3.optString("app_token").takeIf { it.isNotBlank() } ?: run {
                Log.w(TAG, "Zepp step3 无app_token: ${body3.take(150)}")
                return@withContext LoginResult("", "", "登录响应缺少令牌，请稍后再试")
            }
            LoginResult(appToken, userId)
        } catch (e: Exception) {
            Log.e(TAG, "Zepp login error", e)
            null
        }
    }

    /** ① 注册端点拿 access code：POST json_response=true → JSON body 含 access 字段
     *  （旧实现依赖 302 Location 提取 access=，华米已改为 JSON 响应，登录 401 即此原因）
     *  @param userName 邮箱原样；手机号需带 +86 前缀
     *  @return (accessCode, errorMsg)：access 为空时 errorMsg 说明原因（429 风控 / 账号密码错误等） */
    private fun fetchAccessCode(userName: String, password: String): Pair<String?, String?> {
        val form = FormBody.Builder()
            .add("client_id", "HuaMi")
            .add("country_code", "CN")
            .add("json_response", "true")
            .add("name", userName)
            .add("password", password)
            .add("redirect_uri", "https://s3-us-west-2.amazonaws.com/hm-registration/successsignin.html")
            .add("state", "REDIRECTION")
            .add("token", "access")
            .build()
        val req = Request.Builder()
            .url("https://api-user.huami.com/registrations/${android.net.Uri.encode(userName)}/tokens")
            .header("User-Agent", UA)
            .post(form)
            .build()
        loginClient.newCall(req).execute().use { resp ->
            val body = resp.body?.string() ?: ""
            // ① 优先 JSON 响应（json_response=true 时服务端直接返回 {"access": "..."}）
            try {
                val j = JSONObject(body)
                val access = j.optString("access").takeIf { it.isNotBlank() }
                if (access != null) return Pair(access, null)
            } catch (_: Exception) {}
            // ② 兜底：302 Location 里提取 access=（兼容服务端仍走重定向）
            val location = resp.header("Location") ?: resp.header("location")
            if (location != null) {
                val m2 = Regex("[?&]access=([^&]*)").find(location)
                if (m2 != null) return Pair(m2.groupValues[1], null)
            }
            // ③ 兜底：响应体里直接有 access_token（部分实现）
            val m3 = Regex("""access_token[=:]\s*"?([A-Za-z0-9._-]+)""").find(body)
            if (m3 != null) return Pair(m3.groupValues[1], null)
            Log.w(TAG, "Zepp step1 无 access: code=${resp.code} body=${body.take(160)}")
            // v8.0.1: 错误分类——429=风控（提示稍后再试），其余=账号或密码错误
            val err = when {
                resp.code == 429 -> "请求过于频繁(429)，已被华米风控，请稍等 5~10 分钟再试"
                resp.code == 401 -> "账号或密码错误，请重新输入"
                body.contains("\"code\":12") || body.contains("too many") -> "请求过于频繁，已被华米风控，请稍等几分钟再试"
                resp.code == 403 -> "账号或密码错误，请重新输入"
                else -> "登录失败(HTTP ${resp.code})，请稍后再试"
            }
            return Pair(null, err)
        }
    }

    private var cachedDeviceId: String? = null
    private fun deviceId(): String {
        cachedDeviceId?.let { return it }
        // v8.1.1: 与社区验证实现一致用固定 device_id（随机 UUID 曾触发华米风控/参数校验）
        cachedDeviceId = "02:00:00:00:00:00"
        return cachedDeviceId!!
    }

    // ===== 通用 GET（带 apptoken）=====

    private data class GetResp(val code: Int, val body: String)

    private fun apiGet(pathQuery: String): GetResp {
        val req = Request.Builder()
            .url(API_HOST + pathQuery)
            .header("User-Agent", UA)
            .header("apptoken", currentToken.orEmpty())
            .header("appPlatform", APP_PLATFORM)
            .header("appname", APP_NAME)
            .get()
            .build()
        client.newCall(req).execute().use { resp ->
            return GetResp(resp.code, resp.body?.string() ?: "")
        }
    }

    private var currentToken: String? = null
    private var currentUserId: String = ""

    // ===== 校验 / 用户名 =====

    suspend fun validateToken(token: String): Boolean = withContext(Dispatchers.IO) {
        if (token.isBlank()) return@withContext false
        currentToken = token
        try {
            val (code, _) = apiGet("/v1/sport/run/history.json?source=run.mifit.huami.com")
            code == 200
        } catch (e: Exception) {
            Log.e(TAG, "Zepp validateToken error", e)
            false
        }
    }

    /** 启动登录检测：token 有效返回 "Zepp用户" */
    suspend fun getUsername(token: String): String? = withContext(Dispatchers.IO) {
        if (validateToken(token)) "Zepp用户" else null
    }

    /** 401 时用最近一次账号密码重新登录（内存兜底） */
    suspend fun reLoginIfNeeded(): LoginResult? = withContext(Dispatchers.IO) {
        val a = lastAccount ?: return@withContext null
        val p = lastPassword ?: return@withContext null
        login(a, p)
    }

    // ===== 活动列表 =====

    /**
     * 获取活动列表（自动翻页）。record.id = trackid(epoch秒)，extra = source（详情用）。
     */
    suspend fun getActivities(token: String, userId: String, skip: Int, limit: Int): List<ActivityRecord> =
        withContext(Dispatchers.IO) {
            currentToken = token
            currentUserId = userId
            try {
                val out = mutableListOf<ActivityRecord>()
                var nextId: String? = null
                while (true) {
                    val q = if (nextId == null) "source=run.mifit.huami.com"
                    else "source=run.mifit.huami.com&trackid=$nextId"
                    val (code, body) = apiGet("/v1/sport/run/history.json?$q")
                    if (code == 401) throw IllegalStateException("Zepp token 过期(401)")
                    if (code != 200) {
                        Log.w(TAG, "Zepp history HTTP $code: ${body.take(120)}")
                        break
                    }
                    val json = try { JSONObject(body) } catch (_: Exception) { null } ?: break
                    val data = json.optJSONObject("data") ?: break
                    val summary = data.optJSONArray("summary")
                    if (summary != null) {
                        for (i in 0 until summary.length()) {
                            val item = summary.optJSONObject(i) ?: continue
                            val trackId = item.optString("trackid").takeIf { it.isNotBlank() } ?: continue
                            val type = item.optInt("type", 16)
                            val name = WORKOUT_TYPE_NAME[type] ?: "运动"
                            val dist = item.optString("dis", "0").toDoubleOrNull() ?: 0.0
                            val dur = item.optString("run_time", "0").toIntOrNull() ?: 0
                            val start = formatEpochSeconds(trackId.toLongOrNull() ?: 0L)
                            val source = item.optString("source", "run.mifit.huami.com")
                            // v8.2.4: trackid 即 epoch 秒 → startTimeMs 直传（时间=0会沉底/日期检索失效）
                            out.add(ActivityRecord(trackId, name, start, dist, dur, DataSource.ZEPP, source,
                                startTimeMs = (trackId.toLongOrNull() ?: 0L) * 1000L))
                        }
                    }
                    val nxt = data.optString("next", "-1")
                    if (nxt == "-1" || nxt.isBlank()) break
                    nextId = nxt
                    if (out.size >= (skip + limit) * 3) break
                }
                out.distinctBy { it.id }.take((skip + limit).coerceAtLeast(1)).drop(skip)
            } catch (e: Exception) {
                Log.e(TAG, "Zepp getActivities error", e)
                throw e
            }
        }

    // ===== 下载 GPX =====

    /**
     * 下载活动轨迹为 GPX。按 trackid + source 查详情，累加相对插值坐标后构建 GPX。
     * 无轨迹点也生成合法 GPX（收不收由平台决定）。
     */
    suspend fun downloadGpx(token: String, trackId: String, source: String): ByteArray =
        withContext(Dispatchers.IO) {
            currentToken = token
            try {
                val src = source.ifBlank { "run.mifit.huami.com" }
                val q = "trackid=$trackId&source=${android.net.Uri.encode(src)}"
                val (code, body) = apiGet("/v1/sport/run/detail.json?$q")
                if (code == 401) throw IllegalStateException("Zepp token 过期(401)")
                if (code != 200) throw IllegalStateException("Zepp 详情HTTP $code")
                val json = try { JSONObject(body) } catch (_: Exception) { null }
                    ?: throw IllegalStateException("Zepp 详情解析失败")
                val data = json.optJSONObject("data")
                    ?: throw IllegalStateException("Zepp 详情无data")

                val startEpochSec = trackId.toLongOrNull() ?: 0L

                // 解析各列（相对插值）
                val relTimes = parseLongList(data.optString("time", ""))
                val latRaw = data.optString("longitude_latitude", "").split(";").filter { it.isNotBlank() }
                    .mapNotNull { seg -> seg.split(",").getOrNull(0)?.trim()?.toLongOrNull() }
                val lonRaw = data.optString("longitude_latitude", "").split(";").filter { it.isNotBlank() }
                    .mapNotNull { seg -> seg.split(",").getOrNull(1)?.trim()?.toLongOrNull() }
                val altRaw = parseLongList(data.optString("altitude", ""))

                // 累加得到绝对相对增量
                val times = accumulate(relTimes)
                val lats = accumulate(latRaw)
                val lons = accumulate(lonRaw)

                val n = minOf(times.size, lats.size, lons.size)
                val points = mutableListOf<DoubleArray>() // [lat, lon, epochMs, alt]
                for (i in 0 until n) {
                    val lat = lats[i] / 1e8
                    val lon = lons[i] / 1e8
                    if (lat == 0.0 && lon == 0.0) continue
                    val epochMs = (startEpochSec + times[i]) * 1000L
                    val alt = if (i < altRaw.size) {
                        val v = altRaw[i]
                        if (v != NO_VALUE) v / 100.0 else Double.NaN
                    } else Double.NaN
                    points.add(doubleArrayOf(lat, lon, epochMs.toDouble(), alt))
                }

                // 可选 GCJ-02 → WGS-84（默认关；Zepp 原始坐标即 WGS-84，若实测偏移可开启）
                if (points.isNotEmpty() && gcjConvertEnabled) {
                    val converted = points.map { p ->
                        val (lat, lon) = com.jichi.ob.util.FitGcj02Fixer.gcj02ToWgs84(p[0], p[1])
                        doubleArrayOf(lat, lon, p[2], p[3])
                    }
                    Log.i(TAG, "Zepp GCJ-02→WGS-84 坐标转换: ${converted.size}点")
                    points.clear(); points.addAll(converted)
                }

                // 运动类型（从详情无法直接取 type，用 history 的映射；兜底 running）
                val sport = data.optString("sport_type", "").ifBlank { "running" }
                buildGpx(points, startEpochSec * 1000L, sport)
            } catch (e: Exception) {
                Log.e(TAG, "Zepp downloadGpx error", e)
                throw e
            }
        }

    // ===== 解析工具 =====

    private fun parseLongList(raw: String): List<Long> {
        if (raw.isBlank()) return emptyList()
        return raw.split(";").filter { it.isNotBlank() }.mapNotNull { seg ->
            seg.trim().toLongOrNull()
        }
    }

    private fun accumulate(list: List<Long>): List<Long> {
        val out = mutableListOf<Long>()
        var sum = 0L
        for (v in list) {
            sum += v
            out.add(sum)
        }
        return out
    }

    private fun formatEpochSeconds(sec: Long): String {
        if (sec <= 0) return ""
        return try {
            val f = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.US)
            f.timeZone = java.util.TimeZone.getTimeZone("Asia/Shanghai")
            f.format(java.util.Date(sec * 1000L))
        } catch (_: Exception) { "" }
    }

    /** 构建标准 GPX（带时间戳与海拔），sport 写入 <type> 与 <name> 标记 */
    private fun buildGpx(points: List<DoubleArray>, startTimeMs: Long, sport: String): ByteArray {
        val sportLower = sport.lowercase()
        val sb = StringBuilder()
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
        sb.append("<gpx creator=\"jichiOB\" version=\"1.1\" xmlns=\"http://www.topografix.com/GPX/1/1\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\">\n")
        sb.append("  <trk><name>from zepp - ").append(sportLower).append("</name><type>").append(sportLower).append("</type><trkseg>\n")
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

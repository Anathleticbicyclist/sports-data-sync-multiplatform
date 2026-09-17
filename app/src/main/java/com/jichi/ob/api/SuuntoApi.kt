package com.jichi.ob.api

import android.util.Base64
import android.util.Log
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.FormBody
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONArray
import java.security.MessageDigest
import java.security.SecureRandom
import org.json.JSONObject
import java.util.concurrent.TimeUnit

/**
 * Suunto（松拓）Cloud API（v7.9.6 新增，双向：下载源 + 上传目标）
 *
 * 依据 googlarz/suunto-mcp（https://github.com/googlarz/suunto-mcp）逐行核对官方 Cloud API：
 * - 认证：OAuth2 Authorization Code（需 apizone.suunto.com 免费注册开发者应用，取
 *   client_id / client_secret / subscription_key 三凭证，个人申请约3-4周审批）
 * - 授权页: https://cloudapi-oauth.suunto.com/oauth/authorize?response_type=code&client_id=..&redirect_uri=..
 * - 换token: POST /oauth/token（Basic clientId:clientSecret，grant_type=authorization_code / refresh_token）
 *   → access_token + refresh_token（expires_in=86400，24h）
 * - 业务请求需两个header: Authorization: Bearer {token} + Ocp-Apim-Subscription-Key: {key}
 * - 列表: GET https://cloudapi.suunto.com/v3/workouts/?filter-by-modification-time=false&limit=&offset=
 *         → payload[]（含 workoutKey/startTime/sport/totalTime/totalDistance）
 * - 下载FIT: GET /v3/workouts/{workoutKey}/fit
 * - 下载GPX: GET /v2/workout/exportGpx/{workoutKey}
 * - 上传三步: POST /v2/upload → {uploadId, uploadUrl} → PUT uploadUrl(body=文件字节)
 *            → GET /v2/upload/{uploadId}（PROCESSED 后返回 workoutKey）
 * - 限流: 429/5xx 需退避重试（retry-after）
 *
 * 坐标: Suunto 为国际平台，轨迹 WGS-84，无需坐标转换。
 * sport 类型（v3 workouts sport 字段）: running=跑步 cycling=骑行 hiking=徒步 swimming=游泳
 *   mountaineering=登山 multisport=铁三 fitness=健身 indoor_cycling=室内骑行
 */
class SuuntoApi {

    companion object {
        private const val TAG = "SuuntoApi"
        const val API_BASE = "https://cloudapi.suunto.com"
        const val AUTH_BASE = "https://cloudapi-oauth.suunto.com/oauth"
        const val REDIRECT_URI = "https://localhost:8080/suunto-callback"
        private const val UA = "jichi-ob/7.9.6 (Android)"

        // v7.9.6: 内置开发者凭证（App维护者在 apizone.suunto.com 免费注册一次后填写）
        // 目前为空占位——用户需自行到 apizone.suunto.com 申请，或后续由维护者填入正式凭证
        var BUILTIN_CLIENT_ID: String = ""
        var BUILTIN_CLIENT_SECRET: String = ""
        var BUILTIN_SUBSCRIPTION_KEY: String = ""
        fun isBuiltinConfigured(): Boolean =
            BUILTIN_CLIENT_ID.isNotEmpty() && BUILTIN_CLIENT_SECRET.isNotEmpty() && BUILTIN_SUBSCRIPTION_KEY.isNotEmpty()

        // v8.1.9: PKCE（授权码+code_verifier）——Suunto OAuth2 支持 PKCE，注册凭证后
        // 即使不填 clientSecret 也能换 token。verifier 在授权前生成、换 token 时消费。
        @Volatile var lastCodeVerifier: String? = null

        /** 生成 PKCE verifier（43-128 位 url-safe）与 S256 challenge */
        fun newPkce(): Pair<String, String> {
            val bytes = ByteArray(64)
            SecureRandom().nextBytes(bytes)
            val verifier = Base64.encodeToString(bytes, Base64.URL_SAFE or Base64.NO_WRAP or Base64.NO_PADDING)
            val digest = MessageDigest.getInstance("SHA-256").digest(verifier.toByteArray(Charsets.US_ASCII))
            val challenge = Base64.encodeToString(digest, Base64.URL_SAFE or Base64.NO_WRAP or Base64.NO_PADDING)
            return verifier to challenge
        }
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    // 内存缓存（避免每次请求都读prefs）
    private var lastAccessToken: String? = null
    private var lastRefreshToken: String? = null
    private var lastSubscriptionKey: String? = null
    private var lastExpiresAt: Long = 0L
    private var lastClientId: String? = null
    private var lastClientSecret: String? = null

    data class LoginResult(val accessToken: String, val refreshToken: String, val expiresAt: Long)

    /** 构造授权 URL（打开WebView让用户登录，redirect 捕获 code 后换 token）
     *  v8.1.9: 支持 PKCE——未填 clientSecret 时自动启用（Suunto OAuth2 官方支持），
     *  verifier 暂存于 lastCodeVerifier，exchangeCode 时消费。 */
    fun authorizeUrl(clientId: String): String {
        val sb = StringBuilder()
            .append("$AUTH_BASE/authorize?response_type=code&client_id=${java.net.URLEncoder.encode(clientId, "UTF-8")}")
            .append("&redirect_uri=${java.net.URLEncoder.encode(REDIRECT_URI, "UTF-8")}")
            .append("&state=jichiOB")
        if (BUILTIN_CLIENT_SECRET.isEmpty()) {
            val (v, c) = newPkce()
            lastCodeVerifier = v
            sb.append("&code_challenge=").append(c)
            sb.append("&code_challenge_method=S256")
        } else {
            lastCodeVerifier = null
        }
        return sb.toString()
    }

    /** 用授权码换 token（v8.1.9: 有 verifier 走 PKCE 免 secret，否则 Basic clientId:clientSecret） */
    suspend fun exchangeCode(
        code: String, clientId: String, clientSecret: String, subscriptionKey: String
    ): LoginResult? = withContext(Dispatchers.IO) {
        try {
            cacheCreds(clientId, clientSecret, subscriptionKey)
            val formB = FormBody.Builder()
                .add("grant_type", "authorization_code")
                .add("code", code)
                .add("redirect_uri", REDIRECT_URI)
            val verifier = lastCodeVerifier
            val reqB = if (verifier != null && clientSecret.isEmpty()) {
                // PKCE：code_verifier 换 token，无需 Authorization 头
                formB.add("client_id", clientId)
                formB.add("code_verifier", verifier)
                lastCodeVerifier = null
                Request.Builder()
                    .url("$AUTH_BASE/token")
                    .addHeader("Content-Type", "application/x-www-form-urlencoded")
                    .post(formB.build())
                    .build()
            } else {
                lastCodeVerifier = null
                val basic = "Basic " + Base64.encodeToString("$clientId:$clientSecret".toByteArray(), Base64.NO_WRAP)
                Request.Builder()
                    .url("$AUTH_BASE/token")
                    .addHeader("Content-Type", "application/x-www-form-urlencoded")
                    .addHeader("Authorization", basic)
                    .post(formB.build())
                    .build()
            }
            client.newCall(reqB).execute().use { resp ->
                val body = resp.body?.string() ?: ""
                if (resp.code != 200) {
                    Log.w(TAG, "Suunto exchangeCode HTTP ${resp.code}: ${body.take(200)}")
                    return@withContext null
                }
                val json = try { JSONObject(body) } catch (_: Exception) { null } ?: return@withContext null
                val at = json.optString("access_token").takeIf { it.isNotBlank() } ?: return@withContext null
                val rt = json.optString("refresh_token").takeIf { it.isNotBlank() } ?: ""
                val expiresIn = json.optLong("expires_in", 86400)
                lastAccessToken = at
                lastRefreshToken = rt
                lastExpiresAt = System.currentTimeMillis() + expiresIn * 1000
                LoginResult(at, rt, lastExpiresAt)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Suunto exchangeCode error", e)
            null
        }
    }

    /** 用 refresh_token 换新 token（v8.1.9: secret 为空时用 client_id 参数代替 Basic） */
    suspend fun refreshToken(
        refreshToken: String, clientId: String, clientSecret: String, subscriptionKey: String
    ): LoginResult? = withContext(Dispatchers.IO) {
        try {
            cacheCreds(clientId, clientSecret, subscriptionKey)
            val formB = FormBody.Builder()
                .add("grant_type", "refresh_token")
                .add("refresh_token", refreshToken)
            if (clientSecret.isEmpty()) formB.add("client_id", clientId)
            val reqB = if (clientSecret.isNotEmpty()) {
                val basic = "Basic " + Base64.encodeToString("$clientId:$clientSecret".toByteArray(), Base64.NO_WRAP)
                Request.Builder()
                    .url("$AUTH_BASE/token")
                    .addHeader("Content-Type", "application/x-www-form-urlencoded")
                    .addHeader("Authorization", basic)
                    .post(formB.build())
                    .build()
            } else {
                Request.Builder()
                    .url("$AUTH_BASE/token")
                    .addHeader("Content-Type", "application/x-www-form-urlencoded")
                    .post(formB.build())
                    .build()
            }
            client.newCall(reqB).execute().use { resp ->
                val body = resp.body?.string() ?: ""
                if (resp.code != 200) {
                    Log.w(TAG, "Suunto refreshToken HTTP ${resp.code}: ${body.take(200)}")
                    return@withContext null
                }
                val json = try { JSONObject(body) } catch (_: Exception) { null } ?: return@withContext null
                val at = json.optString("access_token").takeIf { it.isNotBlank() } ?: return@withContext null
                val rt = json.optString("refresh_token").takeIf { it.isNotBlank() } ?: refreshToken
                val expiresIn = json.optLong("expires_in", 86400)
                lastAccessToken = at
                lastRefreshToken = rt
                lastExpiresAt = System.currentTimeMillis() + expiresIn * 1000
                LoginResult(at, rt, lastExpiresAt)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Suunto refreshToken error", e)
            null
        }
    }

    private fun cacheCreds(clientId: String, clientSecret: String, subscriptionKey: String) {
        lastClientId = clientId
        lastClientSecret = clientSecret
        lastSubscriptionKey = subscriptionKey
    }

    /**
     * 校验 access_token 是否可用（未过期或刷新后有效）。
     * 内部判断：未过期直接用；过期且可刷新则自动刷新。返回有效 token 或 null。
     */
    suspend fun getUsableTokenOrNull(
        accessToken: String, refreshToken: String?,
        clientId: String, clientSecret: String, subscriptionKey: String
    ): String? = withContext(Dispatchers.IO) {
        cacheCreds(clientId, clientSecret, subscriptionKey)
        // 未过期 → 直接用
        if (accessToken.isNotBlank() && System.currentTimeMillis() < lastExpiresAt) return@withContext accessToken
        // 尝试刷新
        if (!refreshToken.isNullOrEmpty()) {
            val fresh = refreshToken(refreshToken, clientId, clientSecret, subscriptionKey)
            if (fresh != null) return@withContext fresh.accessToken
        }
        null
    }

    /** 登录态检测：token 有效返回 "松拓用户"，无效返回 null */
    suspend fun getUsername(token: String, subscriptionKey: String): String? = withContext(Dispatchers.IO) {
        if (validateToken(token, subscriptionKey)) "松拓用户" else null
    }

    /** 校验 token：拉一次列表（limit=1），200 即有效 */
    suspend fun validateToken(token: String, subscriptionKey: String): Boolean = withContext(Dispatchers.IO) {
        if (token.isBlank()) return@withContext false
        try {
            val req = buildRequest(token, subscriptionKey, "$API_BASE/v3/workouts/?filter-by-modification-time=false&limit=1&offset=0")
            client.newCall(req).execute().use { resp -> resp.code == 200 }
        } catch (e: Exception) {
            Log.e(TAG, "Suunto validateToken error", e)
            false
        }
    }

    private fun buildRequest(token: String, subscriptionKey: String, url: String): Request =
        Request.Builder()
            .url(url)
            .addHeader("Authorization", "Bearer $token")
            .addHeader("Ocp-Apim-Subscription-Key", subscriptionKey)
            .addHeader("Accept", "application/json")
            .addHeader("User-Agent", UA)
            .build()

    /** 获取活动列表（分页）。返回记录 extra 存 workoutKey。 */
    suspend fun getActivities(token: String, subscriptionKey: String, skip: Int, limit: Int): List<ActivityRecord> =
        withContext(Dispatchers.IO) {
            try {
                val out = mutableListOf<ActivityRecord>()
                var offset = 0
                while (out.size < skip + limit) {
                    val req = buildRequest(token, subscriptionKey,
                        "$API_BASE/v3/workouts/?filter-by-modification-time=false&limit=50&offset=$offset")
                    val (code, body) = client.newCall(req).execute().use { resp ->
                        Pair(resp.code, resp.body?.string() ?: "")
                    }
                    if (code == 401) throw IllegalStateException("Suunto 登录失效(401)")
                    if (code == 429) throw IllegalStateException("Suunto 请求被限流(429)，请稍后再试")
                    if (code != 200) {
                        Log.w(TAG, "Suunto list HTTP $code: ${body.take(120)}")
                        break
                    }
                    val json = try { JSONObject(body) } catch (_: Exception) { null } ?: break
                    val payload = json.optJSONArray("payload") ?: break
                    if (payload.length() == 0) break
                    for (i in 0 until payload.length()) {
                        val w = payload.optJSONObject(i) ?: continue
                        val key = w.optString("workoutKey").takeIf { it.isNotBlank() } ?: continue
                        val startTime = w.optLong("startTime", 0)
                        val start = formatTime(startTime)
                        val dist = w.optDouble("totalDistance", 0.0) / 1000.0  // 米→公里
                        val dur = w.optLong("totalTime", 0).toInt()
                        val sport = w.optString("sport")
                        val title = sportToChinese(sport)
                        out.add(ActivityRecord(key, title, start, dist, dur, DataSource.SUUNTO, key, startTimeMs = startTime))
                    }
                    offset += payload.length()
                    if (payload.length() < 50) break
                }
                out.distinctBy { it.id }.take((skip + limit).coerceAtLeast(1)).drop(skip)
            } catch (e: Exception) {
                Log.e(TAG, "Suunto getActivities error", e)
                throw e
            }
        }

    /** Suunto sport 枚举 → 中文名 */
    private fun sportToChinese(sport: String): String = when (sport) {
        "running" -> "跑步"
        "cycling", "road_biking", "mtb", "gravel" -> "骑行"
        "indoor_cycling", "spinning" -> "室内骑行"
        "hiking" -> "徒步"
        "swimming", "pool_swimming", "open_water_swimming" -> "游泳"
        "mountaineering" -> "登山"
        "multisport", "triathlon" -> "铁人三项"
        "fitness", "strength", "gym" -> "健身"
        "skiing", "nordic_skiing" -> "滑雪"
        "snowboarding" -> "单板滑雪"
        "other" -> "其他"
        else -> "运动"
    }

    /** 上传到 Suunto 时，把中文运动类型映射为 sport 枚举 */
    fun mapToSuuntoSport(record: ActivityRecord): String = when {
        record.title.contains("骑") -> "cycling"
        record.title.contains("跑") -> "running"
        record.title.contains("徒") || record.title.contains("登") -> "hiking"
        record.title.contains("游") -> "swimming"
        record.title.contains("铁") -> "multisport"
        else -> "other"
    }

    /**
     * 下载活动轨迹。
     * @param gpx true=GPX（/v2/workout/exportGpx），false=FIT（/v3/workouts/{key}/fit）
     */
    suspend fun download(token: String, subscriptionKey: String, workoutKey: String, gpx: Boolean = false): ByteArray =
        withContext(Dispatchers.IO) {
            try {
                val path = if (gpx) "$API_BASE/v2/workout/exportGpx/${android.net.Uri.encode(workoutKey)}"
                else "$API_BASE/v3/workouts/${android.net.Uri.encode(workoutKey)}/fit"
                val req = buildRequest(token, subscriptionKey, path)
                client.newCall(req).execute().use { resp ->
                    if (resp.code == 401) throw IllegalStateException("Suunto 登录失效(401)")
                    if (resp.code == 429) throw IllegalStateException("Suunto 请求被限流(429)")
                    if (resp.code != 200) throw IllegalStateException("Suunto 下载HTTP ${resp.code}")
                    val bytes = resp.body?.bytes() ?: throw IllegalStateException("Suunto 下载为空")
                    if (bytes.isEmpty()) throw IllegalStateException("Suunto 轨迹为空")
                    bytes
                }
            } catch (e: Exception) {
                Log.e(TAG, "Suunto download error", e)
                throw e
            }
        }

    /**
     * 上传活动到 Suunto（三步）。
     * ① POST /v2/upload → {uploadId, uploadUrl}
     * ② PUT uploadUrl（body=文件字节）
     * ③ GET /v2/upload/{uploadId} → 轮询至 PROCESSED
     * 注：Suunto 仅接受 FIT 文件（官方文档明确 FIT 上传），GPX 由上层 GpxToFitConverter 预转。
     */
    suspend fun upload(
        token: String, subscriptionKey: String, fitData: ByteArray, record: ActivityRecord
    ): Pair<Boolean, String> = withContext(Dispatchers.IO) {
        try {
            val sport = mapToSuuntoSport(record)
            val json = JSONObject()
                .put("description", record.title)
                .put("comment", "jichiOB sync")
                .put("notifyUser", false)
                .put("privacy", "DEFAULT")
            val req1 = Request.Builder()
                .url("$API_BASE/v2/upload")
                .addHeader("Authorization", "Bearer $token")
                .addHeader("Ocp-Apim-Subscription-Key", subscriptionKey)
                .addHeader("Content-Type", "application/json")
                .addHeader("Accept", "application/json")
                .addHeader("User-Agent", UA)
                .post(json.toString().toRequestBody("application/json; charset=utf-8".toMediaType()))
                .build()
            val (code1, body1) = client.newCall(req1).execute().use { resp ->
                Pair(resp.code, resp.body?.string() ?: "")
            }
            if (code1 == 401) throw IllegalStateException("Suunto 登录失效(401)")
            if (code1 != 201 && code1 != 200) {
                Log.w(TAG, "Suunto upload init HTTP $code1: ${body1.take(200)}")
                return@withContext Pair(false, "Suunto上传失败: 初始化HTTP $code1")
            }
            val initJson = try { JSONObject(body1) } catch (_: Exception) { null } ?: return@withContext Pair(false, "Suunto上传失败: 响应解析失败")
            val uploadUrl = initJson.optString("uploadUrl").takeIf { it.isNotBlank() } ?: return@withContext Pair(false, "Suunto上传失败: 无uploadUrl")
            val uploadId = initJson.optString("uploadId").takeIf { it.isNotBlank() } ?: ""

            // ② PUT 文件
            val req2 = Request.Builder()
                .url(uploadUrl)
                .addHeader("Content-Type", "application/vnd.garmin.fit")
                .addHeader("User-Agent", UA)
                .put(fitData.toRequestBody("application/vnd.garmin.fit".toMediaType()))
                .build()
            val code2 = client.newCall(req2).execute().use { resp ->
                resp.code
            }
            if (code2 != 201 && code2 != 200) {
                return@withContext Pair(false, "Suunto上传失败: 文件上传HTTP $code2")
            }

            // ③ 轮询状态（最长 30s）
            var attempts = 0
            while (attempts < 15) {
                val req3 = buildRequest(token, subscriptionKey, "$API_BASE/v2/upload/${android.net.Uri.encode(uploadId)}")
                val (code3, body3) = client.newCall(req3).execute().use { resp ->
                    Pair(resp.code, resp.body?.string() ?: "")
                }
                if (code3 != 200) {
                    kotlinx.coroutines.delay(2000)
                    attempts++
                    continue
                }
                val statusJson = try { JSONObject(body3) } catch (_: Exception) { null } ?: continue
                val status = statusJson.optString("status").uppercase()
                if (status == "PROCESSED" || status == "COMPLETED") {
                    return@withContext Pair(true, "松拓上传成功(sport=$sport)")
                }
                if (status == "FAILED" || status == "REJECTED") {
                    return@withContext Pair(false, "松拓上传失败: 平台拒绝($status)")
                }
                kotlinx.coroutines.delay(2000)
                attempts++
            }
            Pair(false, "松拓上传超时(30s)，请在松拓App确认")
        } catch (e: Exception) {
            Log.e(TAG, "Suunto upload error", e)
            Pair(false, "松拓上传失败: ${e.message}")
        }
    }

    private fun formatTime(ms: Long): String {
        if (ms <= 0) return ""
        return try {
            val f = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.US)
            f.timeZone = java.util.TimeZone.getDefault()
            f.format(java.util.Date(ms))
        } catch (_: Exception) { "" }
    }
}

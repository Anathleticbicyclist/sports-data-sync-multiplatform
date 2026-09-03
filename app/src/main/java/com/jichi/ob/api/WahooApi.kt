package com.jichi.ob.api

import android.util.Log
import com.jichi.ob.BuildConfig
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.FormBody
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.util.concurrent.TimeUnit

/**
 * Wahoo API（v6.5.0 新增）—— 仅下载（Wahoo无公开上传API）
 *
 * 依据开源项目 tgmerritt/wahoo-skill + mrebbert/hawahooligan（已逐行核对源码）：
 * - 认证：OAuth2（需注册 Wahoo 开发者应用拿 client_id/client_secret）
 * - 列表：GET api.wahooligan.com/v1/workouts?page=&per_page=
 * - 详情：GET /v1/workouts/{id}（含 workout_summary.file.url）
 * - 下载：GET file.url（CDN 直链，免认证）
 * - 限流：沙箱 25 req/5min、100/hr、250/day（需节流）
 */
class WahooApi {

    companion object {
        private const val TAG = "WahooApi"
        const val API_BASE = "https://api.wahooligan.com"
        const val AUTHORIZE_URL = "https://api.wahooligan.com/oauth/authorize"
        const val TOKEN_URL = "https://api.wahooligan.com/oauth/token"
        const val REDIRECT_URI = "https://localhost:8080/"
        const val SCOPES = "workouts_read workouts_write offline_data user_read"  // v7.4.0: 添加workouts_write支持上传
        private const val UA = "jichi-ob/6.5.1 (Android)"

        // v6.5.1: 内置开发者凭证（App维护者在 developers.wahooligan.com 免费注册一次后填写）
        // 用户无需注册，直接用Wahoo账号登录授权即可。redirect_uri填 https://localhost:8080/
        // Wahoo凭证从BuildConfig读取（来自local.properties，不硬编码到源码）
        val BUILTIN_CLIENT_ID = BuildConfig.WAHOO_CLIENT_ID
        val BUILTIN_CLIENT_SECRET = BuildConfig.WAHOO_CLIENT_SECRET
        fun isBuiltinConfigured(): Boolean = BUILTIN_CLIENT_ID.isNotEmpty() && BUILTIN_CLIENT_SECRET.isNotEmpty()
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(120, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    // v7.5.4: 界面日志回调（登录失败时把真实错误响应体显示到界面，便于定位）
    var debugLogCallback: ((String) -> Unit)? = null
    // v7.5.4: 最近一次exchangeToken的错误响应体（用于定位"token数量超限"等问题）
    var lastExchangeError: String? = null
    private fun log(msg: String) {
        Log.i(TAG, msg)
        debugLogCallback?.invoke(msg)
    }
    /** 构造授权 URL（打开WebView让用户登录） */
    fun authorizeUrl(clientId: String = BUILTIN_CLIENT_ID): String =
        "$AUTHORIZE_URL?client_id=$clientId&redirect_uri=${java.net.URLEncoder.encode(REDIRECT_URI, "UTF-8")}&scope=${SCOPES.replace(" ", "%20")}&response_type=code"

    /** 用授权码换 token（v7.5.3: 添加PKCE code_verifier参数，失败时打印响应体） */
    suspend fun exchangeToken(code: String, clientId: String, clientSecret: String, codeVerifier: String): Pair<String, String>? =
        withContext(Dispatchers.IO) {
            try {
                val form = FormBody.Builder()
                    .add("grant_type", "authorization_code")
                    .add("code", code)
                    .add("client_id", clientId)
                    .add("client_secret", clientSecret)
                    .add("redirect_uri", REDIRECT_URI)
                    .add("code_verifier", codeVerifier)
                    .build()
                val req = Request.Builder().url(TOKEN_URL).post(form).build()
                client.newCall(req).execute().use { resp ->
                    val body = resp.body?.string() ?: ""
                    if (resp.code != 200) {
                        // v7.5.4: 记录并透传真实错误响应体（如"Too many unrevoked access tokens"）
                        lastExchangeError = body
                        log("exchangeToken失败 HTTP ${resp.code}: $body")
                        return@withContext null
                    }
                    val json = JSONObject(body)
                    val access = json.optString("access_token", "")
                    val refresh = json.optString("refresh_token", "")
                    if (access.isNotEmpty()) access to refresh else null
                }
            } catch (e: Exception) {
                Log.e(TAG, "exchangeToken error", e); null
            }
        }

    /** v7.5.3: 旧WebView登录方式的重载（不带PKCE，可能被Wahoo拒绝，仅保留兼容） */
    suspend fun exchangeToken(code: String, clientId: String, clientSecret: String): Pair<String, String>? =
        exchangeToken(code, clientId, clientSecret, "")

    /**
     * v7.5.3: 确保Wahoo token有效，过期则用refresh_token刷新
     * 类似佳明的ensureValidToken，用于上传前自动刷新
     * @return 有效的access_token
     */
    /**
     * v7.6.0: 用token调 /v1/user 验证有效性（返回是否200）
     * Wahoo规则：刷新后用新token成功调用API，旧token才被撤销。
     * 因此任何刷新后的新token都必须先过本验证，避免未撤销token累积超10枚上限。
     */
    suspend fun verifyToken(token: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val req = Request.Builder().url("$API_BASE/v1/user").apply {
                authHeaders(token).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                Log.i(TAG, "verifyToken: HTTP ${resp.code}")
                resp.code == 200
            }
        } catch (e: Exception) {
            Log.w(TAG, "verifyToken异常", e); false
        }
    }

    suspend fun ensureValidToken(currentToken: String, refreshToken: String?, clientId: String, clientSecret: String): String {
        if (refreshToken.isNullOrEmpty() || clientId.isEmpty() || clientSecret.isEmpty()) {
            return currentToken
        }
        // 先测试当前token是否有效（调用user接口）
        return try {
            val testReq = Request.Builder().url("$API_BASE/v1/user").apply {
                authHeaders(currentToken).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(testReq).execute().use { resp ->
                if (resp.code == 200) {
                    Log.i(TAG, "Wahoo token有效，无需刷新")
                    currentToken
                } else {
                    Log.i(TAG, "Wahoo token过期(HTTP ${resp.code})，尝试刷新...")
                    val fresh = refreshToken(refreshToken, clientId, clientSecret)
                    if (fresh != null) {
                        // v7.6.0: 刷新后用新token调API验证（撤销旧token），验证失败则视同刷新失败
                        if (verifyToken(fresh.first)) {
                            Log.i(TAG, "Wahoo token刷新成功")
                            fresh.first
                        } else {
                            Log.w(TAG, "Wahoo刷新后新token验证失败，返回原token")
                            currentToken
                        }
                    } else {
                        Log.w(TAG, "Wahoo token刷新失败，返回原token")
                        currentToken
                    }
                }
            }
        } catch (e: Exception) {
            Log.w(TAG, "Wahoo ensureValidToken异常，返回原token", e)
            currentToken
        }
    }

    /** 刷新 token */
    suspend fun refreshToken(refresh: String, clientId: String, clientSecret: String): Pair<String, String>? =
        withContext(Dispatchers.IO) {
            try {
                val form = FormBody.Builder()
                    .add("grant_type", "refresh_token")
                    .add("refresh_token", refresh)
                    .add("client_id", clientId)
                    .add("client_secret", clientSecret)
                    .build()
                val req = Request.Builder().url(TOKEN_URL).post(form).build()
                client.newCall(req).execute().use { resp ->
                    if (resp.code != 200) return@withContext null
                    val json = JSONObject(resp.body?.string() ?: "{}")
                    val access = json.optString("access_token", "")
                    val newRefresh = json.optString("refresh_token", refresh)
                    if (access.isNotEmpty()) access to newRefresh else null
                }
            } catch (e: Exception) { Log.e(TAG, "refreshToken error", e); null }
        }
    /**
     * v7.5.4: 复用已有token：有效则直接用；无效则用refresh_token刷新；都失败返回null。
     * 用于登录前避免每次重新授权产生新token（防止"Too many unrevoked access tokens"上限）。
     * @return Pair(access_token, refresh_token)，refresh_token可能已轮换
     */
    suspend fun getUsableTokenOrNull(currentToken: String?, refreshToken: String?, clientId: String, clientSecret: String): Pair<String, String>? =
        withContext(Dispatchers.IO) {
            // v7.6.0: refresh后必须用新token调API验证（撤销旧token），否则旧token未撤销会累积超10枚上限
            suspend fun refreshAndVerify(): Pair<String, String>? {
                val fresh = refreshToken(refreshToken ?: "", clientId, clientSecret) ?: return null
                return if (verifyToken(fresh.first)) fresh else null
            }
            if (currentToken.isNullOrEmpty()) {
                if (refreshToken.isNullOrEmpty()) return@withContext null
                return@withContext refreshAndVerify()
            }
            try {
                val testReq = Request.Builder().url("$API_BASE/v1/user").apply {
                    authHeaders(currentToken).forEach { (k, v) -> addHeader(k, v) }
                }.get().build()
                client.newCall(testReq).execute().use { resp ->
                    if (resp.code == 200) {
                        Log.i(TAG, "Wahoo已存token仍有效，直接复用")
                        currentToken to (refreshToken ?: "")
                    } else if (!refreshToken.isNullOrEmpty()) {
                        Log.i(TAG, "Wahoo已存token过期(HTTP ${resp.code})，尝试refresh刷新...")
                        refreshAndVerify()
                    } else null
                }
            } catch (e: Exception) {
                Log.w(TAG, "getUsableTokenOrNull异常", e)
                if (!refreshToken.isNullOrEmpty()) refreshAndVerify() else null
            }
        }
    /**
     * v7.5.4: 撤销当前应用的全部授权（DELETE /v1/permissions），释放token名额。
     * 重新授权前调用，可清理该账号下本应用的旧token。
     * @return 是否撤销成功（token有效时返回204/200）
     */
    suspend fun deauthorize(token: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val req = Request.Builder().url("$API_BASE/v1/permissions").apply {
                authHeaders(token).forEach { (k, v) -> addHeader(k, v) }
            }.delete().build()
            client.newCall(req).execute().use { resp ->
                val body = resp.body?.string() ?: ""
                Log.i(TAG, "deauthorize: HTTP ${resp.code}, $body")
                resp.code == 204 || resp.code == 200
            }
        } catch (e: Exception) {
            Log.e(TAG, "deauthorize error", e); false
        }
    }

    private fun authHeaders(token: String) = mapOf(
        "Authorization" to "Bearer $token",
        "Accept" to "application/json",
        "User-Agent" to UA
    )

    /** 获取用户名 */
    suspend fun getUsername(token: String): String? = withContext(Dispatchers.IO) {
        try {
            val req = Request.Builder().url("$API_BASE/v1/user").apply {
                authHeaders(token).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) return@withContext null
                val json = JSONObject(resp.body?.string() ?: "{}")
                val name = (json.optString("first_name") + " " + json.optString("last_name")).trim()
                // v7.6.0: token有效但账号未设置姓名的，用email/id兜底，避免启动检测误判"登录失效"
                if (name.isNotEmpty()) name
                else json.optString("email").ifBlank { json.optString("id").ifBlank { "Wahoo用户" } }
            }
        } catch (e: Exception) { null }
    }

    /** 获取活动列表 */
    suspend fun getActivities(token: String, offset: Int, limit: Int): List<ActivityRecord> = withContext(Dispatchers.IO) {
        try {
            val perPage = 30
            val page = (offset / perPage) + 1
            val url = "$API_BASE/v1/workouts?page=$page&per_page=$perPage"
            val req = Request.Builder().url(url).apply {
                authHeaders(token).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) {
                    Log.w(TAG, "getActivities HTTP ${resp.code}")
                    return@withContext emptyList()
                }
                val json = JSONObject(resp.body?.string() ?: "{}")
                val arr = json.optJSONArray("workouts") ?: return@withContext emptyList()
                val out = mutableListOf<ActivityRecord>()
                var skip = offset - (page - 1) * perPage
                for (i in 0 until arr.length()) {
                    val item = arr.getJSONObject(i)
                    if (skip > 0) { skip--; continue }
                    if (out.size >= limit) break
                    val id = item.optLong("id", 0L).toString()
                    if (id == "0") continue
                    val title = item.optString("name").ifBlank { "Wahoo骑行" }
                    val startTime = item.optString("starts").ifBlank { "" }
                    val distance = item.optDouble("distance", 0.0)
                    val duration = item.optInt("duration", 0)
                    out.add(ActivityRecord(id, title, startTime, distance, duration, DataSource.WAHOO))
                }
                out
            }
        } catch (e: Exception) {
            Log.e(TAG, "getActivities error", e); emptyList()
        }
    }

    /** 下载 FIT：先取详情拿 file.url，再 GET CDN */
    /**
     * v7.4.0: 上传FIT文件到Wahoo
     * 流程：POST /v1/workout_file_uploads 上传base64 FIT → 返回token → GET /v1/workout_file_uploads/:token 轮询状态
     * @return Pair(成功?, 消息)
     */
    suspend fun uploadFit(token: String, fitData: ByteArray, fileName: String): Pair<Boolean, String> = withContext(Dispatchers.IO) {
        try {
            // Step 1: base64编码FIT文件
            val base64Fit = android.util.Base64.encodeToString(fitData, android.util.Base64.NO_WRAP)
            Log.i(TAG, "上传FIT: $fileName, ${fitData.size}字节, base64长度: ${base64Fit.length}")

            // Step 2: POST上传
            val formBody = FormBody.Builder()
                .add("workout_file_upload[file]", "data:application/vnd.fit;base64,$base64Fit")
                .add("workout_file_upload[filename]", fileName)
                .build()

            val requestBuilder = Request.Builder()
                .url("$API_BASE/v1/workout_file_uploads")
                .post(formBody)
            authHeaders(token).forEach { (key, value) -> requestBuilder.header(key, value) }
            val request = requestBuilder.build()

            client.newCall(request).execute().use { response ->
                val body = response.body?.string() ?: ""
                Log.i(TAG, "上传响应: ${response.code}, $body")

                if (response.code != 200 && response.code != 201) {
                    return@withContext Pair(false, "上传失败 HTTP ${response.code}: $body")
                }

                // Step 3: 解析返回的token
                val uploadToken = try {
                    val json = org.json.JSONObject(body)
                    json.getString("token")
                } catch (e: Exception) {
                    // 可能直接返回了workout_summary
                    Log.w(TAG, "解析token失败，可能直接完成: ${e.message}")
                    return@withContext Pair(true, "上传成功")
                }

                if (uploadToken.isEmpty()) {
                    return@withContext Pair(true, "上传成功")
                }

                Log.i(TAG, "上传token: $uploadToken, 开始轮询状态...")

                // Step 4: 轮询状态（最多30秒）
                for (i in 1..15) {
                    kotlinx.coroutines.delay(2000)
                    val statusRequestBuilder = Request.Builder()
                        .url("$API_BASE/v1/workout_file_uploads/$uploadToken")
                        .get()
                    authHeaders(token).forEach { (key, value) -> statusRequestBuilder.header(key, value) }
                    val statusRequest = statusRequestBuilder.build()

                    client.newCall(statusRequest).execute().use { statusResponse ->
                        val statusBody = statusResponse.body?.string() ?: ""
                        Log.i(TAG, "轮询${i}: ${statusResponse.code}, $statusBody")

                        val status = try {
                            val json = org.json.JSONObject(statusBody)
                            json.getString("status")
                        } catch (e: Exception) {
                            "unknown"
                        }

                        when (status) {
                            "complete" -> return@withContext Pair(true, "上传成功")
                            "error" -> {
                                val errorMsg = try {
                                    org.json.JSONObject(statusBody).getString("error")
                                } catch (_: Exception) { "未知错误" }
                                return@withContext Pair(false, "上传失败: $errorMsg")
                            }
                            else -> Log.i(TAG, "状态: $status, 继续等待...")
                        }
                    }
                }

                Pair(false, "上传超时（30秒未完成）")
            }
        } catch (e: Exception) {
            Log.e(TAG, "上传异常", e)
            Pair(false, "上传异常: ${e.message}")
        }
    }

    suspend fun downloadFit(token: String, workoutId: String): ByteArray? = withContext(Dispatchers.IO) {
        try {
            // 1) 详情拿 file.url
            val detailReq = Request.Builder().url("$API_BASE/v1/workouts/$workoutId").apply {
                authHeaders(token).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            val fileUrl = client.newCall(detailReq).execute().use { resp ->
                if (resp.code != 200) return@withContext null
                val json = JSONObject(resp.body?.string() ?: "{}")
                json.optJSONObject("workout_summary")?.optJSONObject("file")?.optString("url") ?: ""
            }
            if (fileUrl.isEmpty()) return@withContext null
            // 2) CDN 下载（免认证）
            val dlReq = Request.Builder().url(fileUrl).addHeader("User-Agent", UA).get().build()
            client.newCall(dlReq).execute().use { dl ->
                if (dl.code != 200) return@withContext null
                dl.body?.bytes()
            }
        } catch (e: Exception) {
            Log.e(TAG, "downloadFit error", e); null
        }
    }
}

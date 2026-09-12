package com.jichi.ob.api

import android.annotation.SuppressLint
import android.content.Context
import android.os.Handler
import android.os.Looper
import android.util.Base64
import android.util.Log
import android.webkit.CookieManager
import android.webkit.WebView
import android.webkit.WebViewClient
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeoutOrNull
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONArray
import org.json.JSONObject
import java.io.ByteArrayInputStream
import java.util.concurrent.TimeUnit
import java.util.zip.ZipInputStream
import kotlin.coroutines.resume

/**
 * 佳明(Garmin) API（v6.7.8 国际版改用mobile SSO + DI OAuth Bearer tokens）
 *
 * v6.7.8: 国际版参考garminconnect 0.3.x方案，用mobile SSO登录获取DI Bearer token，
 *         通过connectapi.garmin.com访问API（不经过Cloudflare）。
 *         中国版代码完全不变，继续用JWT_WEB+session cookie。
 */
class GarminApi {
    companion object {
        private const val TAG = "GarminApi"
        const val LOGIN_URL_COM = "https://sso.garmin.com/portal/sso/en-US/sign-in?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.com%2Fapp%2F"
        const val LOGIN_URL_CN = "https://sso.garmin.cn/portal/sso/zh-CN/sign-in?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.cn%2Fapp"

        // ===== 国际版/中国版 mobile SSO + DI OAuth 常量（参考garminconnect 0.3.x）=====
        private const val IOS_SSO_CLIENT_ID = "GCM_IOS_DARK"
        private const val IOS_SERVICE_URL_COM = "https://mobile.integration.garmin.com/gcm/ios"
        private const val IOS_SERVICE_URL_CN = "https://mobile.integration.garmin.cn/gcm/ios"
        private const val IOS_LOGIN_UA = "Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148"
        private const val DI_TOKEN_URL_COM = "https://diauth.garmin.com/di-oauth2-service/oauth/token"
        private const val DI_TOKEN_URL_CN = "https://diauth.garmin.cn/di-oauth2-service/oauth/token"
        private const val DI_GRANT_TYPE_COM = "https://connectapi.garmin.com/di-oauth2-service/oauth/grant/service_ticket"
        private const val DI_GRANT_TYPE_CN = "https://connectapi.garmin.cn/di-oauth2-service/oauth/grant/service_ticket"
        private const val CONNECT_API_HOST_COM = "https://connectapi.garmin.com"
        private const val CONNECT_API_HOST_CN = "https://connectapi.garmin.cn"
        private const val SSO_LOGIN_URL_COM = "https://sso.garmin.com/mobile/api/login"
        private const val SSO_LOGIN_URL_CN = "https://sso.garmin.cn/mobile/api/login"
        private val DI_CLIENT_IDS = arrayOf(
            "GARMIN_CONNECT_MOBILE_ANDROID_DI_2025Q2",
            "GARMIN_CONNECT_MOBILE_ANDROID_DI_2024Q4",
            "GARMIN_CONNECT_MOBILE_ANDROID_DI",
            "GARMIN_CONNECT_MOBILE_IOS_DI"
        )
        private const val NATIVE_API_UA = "GCM-Android-5.23"
        private const val NATIVE_X_GARMIN_UA = "com.garmin.android.apps.connectmobile/5.23; ; Google/sdk_gphone64_arm64/google; Android/33; Dalvik/2.1.0"

        @Volatile private var sharedWebView: WebView? = null
        @Volatile private var sharedWebViewReady = false
        @Volatile private var webViewLoading = false
        private val mainHandler = Handler(Looper.getMainLooper())

        // ===== v7.9.0: 佳明 429 风控冷却（24小时）=====
        // v7.9.1: 冷却按【clientId × email】组合维度——
        //   ① 换 clientId 登录不被拦（佳明限流实为 clientId×email 组合，换通道即可绕开"每天只能登一次"）
        //   ② 同一 clientId 下切换账号也不被拦（不同 email 互不影响）
        private const val COOLDOWN_MS = 24 * 60 * 60 * 1000L
        private const val PREFS_COOLDOWN = "garmin_cooldown"
        @Volatile private var appContext: Context? = null
        fun setAppContext(ctx: Context) { appContext = ctx.applicationContext }

        // 佳明 SSO 登录通道（clientId × serviceUrl）——实测多通道可绕开单通道429限流
        // 国际版：GCM_IOS_DARK(默认) / GCM_ANDROID_DARK / GCM_ANDROID_LIGHT / GarminConnect 均可登录
        private data class SsoChannel(val clientId: String, val serviceUrl: String)
        private val SSO_CHANNELS_COM = arrayOf(
            SsoChannel("GCM_IOS_DARK", "https://mobile.integration.garmin.com/gcm/ios"),
            SsoChannel("GCM_ANDROID_DARK", "https://mobile.integration.garmin.com/gcm/android"),
            SsoChannel("GCM_ANDROID_LIGHT", "https://mobile.integration.garmin.com/gcm/android"),
            SsoChannel("GarminConnect", "https://connect.garmin.com/modern/")
        )
        private val SSO_CHANNELS_CN = arrayOf(
            SsoChannel("GCM_ANDROID_DARK", "https://mobile.integration.garmin.cn/gcm/android"),
            SsoChannel("GCM_IOS_DARK", "https://mobile.integration.garmin.cn/gcm/ios")
        )

        // 冷却key：clientId为空→区域维度；email为空→clientId维度；都有→clientId×email维度
        private fun cooldownKey(ds: DataSource, email: String?, clientId: String?) =
            if (!email.isNullOrBlank() && !clientId.isNullOrBlank()) {
                val tag = if (ds == DataSource.GARMIN_CN) "cn" else "com"
                "garmin_${tag}_cooldown_${clientId.hashCode()}_${email.hashCode()}"
            } else if (!clientId.isNullOrBlank()) {
                val tag = if (ds == DataSource.GARMIN_CN) "cn" else "com"
                "garmin_${tag}_cooldown_${clientId.hashCode()}"
            } else {
                if (ds == DataSource.GARMIN_CN) "garmin_cn_cooldown_until" else "garmin_com_cooldown_until"
            }
        private fun readCooldown(ds: DataSource, email: String?, clientId: String?): Long {
            val ctx = appContext ?: return 0
            return ctx.getSharedPreferences(PREFS_COOLDOWN, Context.MODE_PRIVATE).getLong(cooldownKey(ds, email, clientId), 0)
        }
        private fun writeCooldown(ds: DataSource, email: String?, clientId: String?) {
            val ctx = appContext ?: return
            ctx.getSharedPreferences(PREFS_COOLDOWN, Context.MODE_PRIVATE)
                .edit().putLong(cooldownKey(ds, email, clientId), System.currentTimeMillis() + COOLDOWN_MS).apply()
        }
        /** 供外部写冷却（MainActivity中国区429路径用），按clientId×email记录 */
        fun writeCooldownFor(ds: DataSource, email: String, clientId: String? = null) {
            writeCooldown(ds, email, clientId)
        }
        /** 是否处于佳明429风控冷却期；email为空时回退区域维度，clientId为空时回退email维度 */
        fun isCooldown(ds: DataSource, email: String? = null, clientId: String? = null): Boolean =
            System.currentTimeMillis() < readCooldown(ds, email, clientId)
        /** 该账号在该区域【所有通道】是否都处于冷却（供UI提示：全冷却才提示，任一可用即放行） */
        fun isAllChannelsCooldown(ds: DataSource, email: String?): Boolean {
            val channels = if (ds == DataSource.GARMIN_CN) SSO_CHANNELS_CN else SSO_CHANNELS_COM
            return channels.all { isCooldown(ds, email, it.clientId) }
        }
        /** 冷却剩余时间（分钟），供UI提示 */
        fun cooldownRemainMinutes(ds: DataSource, email: String? = null, clientId: String? = null): Long {
            val remain = readCooldown(ds, email, clientId) - System.currentTimeMillis()
            return if (remain > 0) remain / 60000 else 0
        }
        /** 该账号在该区域任一通道的剩余冷却（用于提示最长冷却） */
        fun cooldownRemainAnyMinutes(ds: DataSource, email: String?): Long {
            val channels = if (ds == DataSource.GARMIN_CN) SSO_CHANNELS_CN else SSO_CHANNELS_COM
            return channels.maxOfOrNull { cooldownRemainMinutes(ds, email, it.clientId) } ?: 0
        }

        var enableDebugLogs = false
        val debugLogs = mutableListOf<String>()
        fun addDebugLog(msg: String) {
            if (!enableDebugLogs) return
            val time = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())
            val line = "[$time][GarminApi] $msg"
            synchronized(debugLogs) {
                debugLogs.add(line)
                if (debugLogs.size > 200) debugLogs.removeAt(0)
            }
            Log.d(TAG, msg)
        }

        @SuppressLint("SetJavaScriptEnabled")
        fun initSharedWebView(context: Context) {
            if (sharedWebView != null) return
            if (Looper.myLooper() != Looper.getMainLooper()) {
                mainHandler.post { initSharedWebView(context) }
                return
            }
            try {
                val appContext = context.applicationContext
                addDebugLog("initSharedWebView: 创建WebView，加载about:blank")
                sharedWebView = WebView(appContext).apply {
                    settings.javaScriptEnabled = true
                    settings.domStorageEnabled = true
                    settings.databaseEnabled = true
                    settings.userAgentString = "Mozilla/5.0 (Linux; Android 14; Pixel 8 Build/UQ1A.240205.004; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/120.0.6099.230 Mobile Safari/537.36"
                    webViewClient = object : WebViewClient() {
                        override fun onPageFinished(view: WebView?, url: String?) {
                            super.onPageFinished(view, url)
                            webViewLoading = false
                            val isGarmin = url?.contains("connect.garmin.com") == true ||
                                           url?.contains("connect.garmin.cn") == true
                            val notLogout = url?.contains("logout") != true
                            val notSignIn = url?.contains("sign-in") != true
                            if (isGarmin && notLogout && notSignIn) {
                                sharedWebViewReady = true
                            }
                        }
                    }
                }
                CookieManager.getInstance().apply {
                    setAcceptCookie(true)
                    setAcceptThirdPartyCookies(sharedWebView, true)
                }
                sharedWebView?.loadUrl("about:blank")
            } catch (e: Exception) {
                addDebugLog("WebView创建异常: ${e.message}")
            }
        }
    }

    // v7.6.0: 强制HTTP/1.1，修复佳明中国偶发"Required SETTINGS preface not received"
    // 根因：OkHttp默认HTTPS协商HTTP/2，佳明中国服务器HTTP/2握手不稳定，偶发连接层IOException
    // HTTP/1.1对multipart上传无任何影响（佳明一次一条串行上传）
    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .protocols(listOf(okhttp3.Protocol.HTTP_1_1))
        .build()

    fun initWebView(context: Context) = initSharedWebView(context)

    // ===== 国际版 mobile SSO 登录（参考garminconnect 0.3.x）=====
    data class DiTokenResult(val accessToken: String, val refreshToken: String?, val clientId: String)

    /**
     * mobile SSO登录 + DI token交换（不经过Cloudflare），支持国际版和中国版
     * v7.9.1: 多通道轮换——依次尝试该区域所有SSO clientId，某通道429只冷却该通道并继续下一个，
     *         绕开"单一clientId被限流导致每天只能登一次"的问题；全部通道冷却才拒绝
     * @return JSON凭证字符串 {"di_token":"...","di_refresh_token":"...","di_client_id":"...","email":"..."}
     */
    suspend fun loginMobile(email: String, password: String, isCN: Boolean = false): String? = withContext(Dispatchers.IO) {
        try {
            val ds = if (isCN) DataSource.GARMIN_CN else DataSource.GARMIN_COM
            val channels = if (isCN) SSO_CHANNELS_CN else SSO_CHANNELS_COM
            val ssoOrigin = if (isCN) "https://sso.garmin.cn" else "https://sso.garmin.com"
            val locale = if (isCN) "zh-CN" else "en-US"
            val loginUrl = if (isCN) SSO_LOGIN_URL_CN else SSO_LOGIN_URL_COM
            // v7.9.1: 过滤出未被冷却的通道（该账号该通道均未冷却才尝试）
            val available = channels.filter { !isCooldown(ds, email, it.clientId) }
            if (available.isEmpty()) {
                val remain = cooldownRemainAnyMinutes(ds, email)
                addDebugLog("loginMobile: 账号[$email]所有SSO通道均处于风控冷却期(${remain}分钟)，跳过登录")
                return@withContext null
            }
            addDebugLog("loginMobile: 可用通道 ${available.size}/${channels.size} (账号=$email)")

            // Step 1: 依次尝试各通道 mobile login获取serviceTicketId
            var lastCode = -1
            for (ch in available) {
                addDebugLog("loginMobile: 尝试通道 clientId=${ch.clientId}")
                val loginJson = JSONObject().apply {
                    put("username", email)
                    put("password", password)
                    put("rememberMe", true)
                    put("captchaToken", "")
                }
                val loginReq = Request.Builder()
                    .url("$loginUrl?clientId=${ch.clientId}&locale=$locale&service=${java.net.URLEncoder.encode(ch.serviceUrl, "UTF-8")}")
                    .addHeader("User-Agent", IOS_LOGIN_UA)
                    .addHeader("Accept", "application/json, text/plain, */*")
                    .addHeader("Content-Type", "application/json")
                    .addHeader("Origin", ssoOrigin)
                    .post(loginJson.toString().toRequestBody("application/json".toMediaType()))
                    .build()
                val loginResp = client.newCall(loginReq).execute()
                val loginBody = loginResp.body?.string() ?: ""
                lastCode = loginResp.code
                addDebugLog("loginMobile[${ch.clientId}]: HTTP ${loginResp.code}, body=${loginBody.take(150)}")
                if (loginResp.code == 429) {
                    // v7.9.1: 429只冷却该clientId×email通道，继续尝试下一通道（换通道可绕开单通道限流）
                    writeCooldown(ds, email, ch.clientId)
                    addDebugLog("loginMobile: 通道[${ch.clientId}] 429限流，已写冷却，尝试下一通道")
                    continue
                }
                if (loginResp.code != 200) continue
                val res = JSONObject(loginBody)
                val respType = res.optJSONObject("responseStatus")?.optString("type") ?: ""
                if (respType == "MFA_REQUIRED") {
                    addDebugLog("loginMobile[${ch.clientId}]: 需要MFA验证，暂不支持")
                    continue
                }
                if (respType != "SUCCESSFUL") {
                    addDebugLog("loginMobile[${ch.clientId}]: 登录失败 type=$respType")
                    continue
                }
                val ticket = res.getString("serviceTicketId")
                addDebugLog("loginMobile[${ch.clientId}]: 获取serviceTicket成功")
                // Step 2: 交换DI token（带该通道的serviceUrl与账号email）
                val cred = exchangeDiToken(ticket, isCN, email, ch.serviceUrl)
                if (cred != null) return@withContext cred
            }
            addDebugLog("loginMobile: 所有可用通道尝试完毕，登录失败 (lastCode=$lastCode)")
            null
        } catch (e: Exception) {
            addDebugLog("loginMobile异常: ${e.message}")
            Log.e(TAG, "loginMobile error", e)
            null
        }
    }

    private suspend fun exchangeDiToken(ticket: String, isCN: Boolean = false, email: String = "", channelServiceUrl: String = ""): String? = withContext(Dispatchers.IO) {
        val diTokenUrl = if (isCN) DI_TOKEN_URL_CN else DI_TOKEN_URL_COM
        val grantType = if (isCN) DI_GRANT_TYPE_CN else DI_GRANT_TYPE_COM
        val serviceUrl = if (channelServiceUrl.isNotEmpty()) channelServiceUrl
                         else if (isCN) IOS_SERVICE_URL_CN else IOS_SERVICE_URL_COM
        for (clientId in DI_CLIENT_IDS) {
            try {
                addDebugLog("exchangeDiToken: 尝试clientId=$clientId (isCN=$isCN)")
                val basicAuth = "Basic " + Base64.encodeToString("$clientId:".toByteArray(), Base64.NO_WRAP)
                val formBody = "client_id=$clientId&service_ticket=$ticket&grant_type=${java.net.URLEncoder.encode(grantType, "UTF-8")}&service_url=${java.net.URLEncoder.encode(serviceUrl, "UTF-8")}"
                val req = Request.Builder()
                    .url(diTokenUrl)
                    .addHeader("Authorization", basicAuth)
                    .addHeader("User-Agent", NATIVE_API_UA)
                    .addHeader("X-Garmin-User-Agent", NATIVE_X_GARMIN_UA)
                    .addHeader("X-Garmin-Paired-App-Version", "10861")
                    .addHeader("X-Garmin-Client-Platform", "Android")
                    .addHeader("X-App-Ver", "10861")
                    .addHeader("X-Lang", if (isCN) "zh-CN" else "en")
                    .addHeader("X-GCExperience", "GC5")
                    .addHeader("Accept", "application/json,text/html;q=0.9,*/*;q=0.8")
                    .addHeader("Content-Type", "application/x-www-form-urlencoded")
                    .addHeader("Cache-Control", "no-cache")
                    .post(formBody.toRequestBody("application/x-www-form-urlencoded".toMediaType()))
                    .build()
                val resp = client.newCall(req).execute()
                val body = resp.body?.string() ?: ""
                addDebugLog("exchangeDiToken: HTTP ${resp.code}, body=${body.take(200)}")
                if (!resp.isSuccessful) continue
                val data = JSONObject(body)
                val accessToken = data.optString("access_token", "")
                val refreshToken = data.optString("refresh_token", null)
                if (accessToken.isEmpty()) continue
                // v7.9.0: 记录DI token过期时间（expires_in默认1小时，取响应值更准确）
                val expiresIn = data.optLong("expires_in", 3600)
                val expiresAt = System.currentTimeMillis() / 1000 + expiresIn
                addDebugLog("exchangeDiToken: 成功! clientId=$clientId, expires_in=${expiresIn}s")
                return@withContext JSONObject().apply {
                    put("di_token", accessToken)
                    put("di_refresh_token", refreshToken ?: "")
                    put("di_client_id", clientId)
                    put("di_expires_at", expiresAt)
                    if (email.isNotEmpty()) put("email", email)
                }.toString()
            } catch (e: Exception) {
                addDebugLog("exchangeDiToken异常($clientId): ${e.message}")
                continue
            }
        }
        addDebugLog("exchangeDiToken: 所有clientId均失败")
        null
    }

    private data class GarminSession(
        val cookies: String,
        val csrf: String,
        val diToken: String = "",
        val diRefreshToken: String = "",
        val diClientId: String = "",
        val diExpiresAt: Long = 0,
        val email: String = ""
    ) {
        fun toJson(): String = JSONObject().apply {
            put("cookies", cookies)
            put("csrf", csrf)
            if (diToken.isNotEmpty()) put("di_token", diToken)
            if (diRefreshToken.isNotEmpty()) put("di_refresh_token", diRefreshToken)
            if (diClientId.isNotEmpty()) put("di_client_id", diClientId)
            if (diExpiresAt > 0) put("di_expires_at", diExpiresAt)
            if (email.isNotEmpty()) put("email", email)
        }.toString()
        companion object {
            fun fromJson(json: String): GarminSession? {
                return try {
                    val obj = JSONObject(json)
                    val csrf = obj.optString("csrf", "")
                    val jwtWeb = obj.optString("jwt_web", "")
                    val sessionCookie = obj.optString("session", "")
                    // v7.4.8: 优先使用保存的所有cookie（包括cf_clearance等），避免只重建JWT_WEB+session导致Cloudflare验证丢失
                    val savedCookies = obj.optString("cookies", "")
                    val cookies = if (savedCookies.isNotEmpty()) {
                        savedCookies
                    } else if (jwtWeb.isNotEmpty() && sessionCookie.isNotEmpty()) {
                        "JWT_WEB=$jwtWeb; session=$sessionCookie"
                    } else {
                        ""
                    }
                    val diToken = obj.optString("di_token", "")
                    val diRefreshToken = obj.optString("di_refresh_token", "")
                    val diClientId = obj.optString("di_client_id", "")
                    val diExpiresAt = obj.optLong("di_expires_at", 0)
                    val email = obj.optString("email", "")
                    if (cookies.isNotEmpty() || diToken.isNotEmpty()) {
                        GarminSession(cookies, csrf, diToken, diRefreshToken, diClientId, diExpiresAt, email)
                    } else null
                } catch (_: Exception) { null }
            }
        }
    }

    private fun parseCredential(cred: String): GarminSession? {
        if (cred.isEmpty()) return null
        return GarminSession.fromJson(cred)
    }

    /**
     * v7.9.0: 用 refresh_token 静默刷新 DI token（不重新SSO登录，避免撞429风控）
     * 参考 python-garminconnect 的 refresh 流程：POST diauth.{domain}/di-oauth2-service/oauth/token
     * 返回刷新后的完整凭证JSON；失败返回 null
     */
    suspend fun refreshDiToken(ds: DataSource, cred: String): String? = withContext(Dispatchers.IO) {
        try {
            val sess = parseCredential(cred) ?: return@withContext null
            if (sess.diRefreshToken.isEmpty() || sess.diClientId.isEmpty()) {
                addDebugLog("refreshDiToken: 无refresh_token或client_id，无法刷新")
                return@withContext null
            }
            // v7.9.1: 从凭证解析账号email，按 clientId×email 维度冷却（换通道不受影响，切账号不受影响）
            val accountEmail = sess.email
            val refreshClientId = sess.diClientId
            // 冷却期内不刷新（避免重置风控计时）
            if (isCooldown(ds, accountEmail, refreshClientId)) {
                addDebugLog("refreshDiToken: 账号[$accountEmail]通道[$refreshClientId]处于风控冷却期，跳过刷新")
                return@withContext null
            }
            val diTokenUrl = if (ds == DataSource.GARMIN_CN) DI_TOKEN_URL_CN else DI_TOKEN_URL_COM
            val basicAuth = "Basic " + Base64.encodeToString("${sess.diClientId}:".toByteArray(), Base64.NO_WRAP)
            val formBody = "grant_type=refresh_token&refresh_token=${java.net.URLEncoder.encode(sess.diRefreshToken, "UTF-8")}&client_id=${sess.diClientId}"
            addDebugLog("refreshDiToken: 刷新DI token (clientId=${sess.diClientId.take(20)}...)")
            val req = Request.Builder()
                .url(diTokenUrl)
                .addHeader("Authorization", basicAuth)
                .addHeader("User-Agent", NATIVE_API_UA)
                .addHeader("X-Garmin-User-Agent", NATIVE_X_GARMIN_UA)
                .addHeader("X-Garmin-Paired-App-Version", "10861")
                .addHeader("X-Garmin-Client-Platform", "Android")
                .addHeader("X-App-Ver", "10861")
                .addHeader("X-Lang", if (ds == DataSource.GARMIN_CN) "zh-CN" else "en")
                .addHeader("X-GCExperience", "GC5")
                .addHeader("Accept", "application/json,text/html;q=0.9,*/*;q=0.8")
                .addHeader("Content-Type", "application/x-www-form-urlencoded")
                .post(formBody.toRequestBody("application/x-www-form-urlencoded".toMediaType()))
                .build()
            val resp = client.newCall(req).execute()
            val body = resp.body?.string() ?: ""
            addDebugLog("refreshDiToken: HTTP ${resp.code}, body=${body.take(200)}")
            if (resp.code == 429) {
                writeCooldown(ds, accountEmail, refreshClientId)
                addDebugLog("refreshDiToken: 429限流，写入24小时冷却标记(账号=$accountEmail, clientId=$refreshClientId)")
                return@withContext null
            }
            if (!resp.isSuccessful) {
                addDebugLog("refreshDiToken: 刷新失败 HTTP ${resp.code}")
                return@withContext null
            }
            val data = JSONObject(body)
            val accessToken = data.optString("access_token", "")
            if (accessToken.isEmpty()) {
                addDebugLog("refreshDiToken: 响应无access_token")
                return@withContext null
            }
            val refreshToken = data.optString("refresh_token", sess.diRefreshToken)
            val expiresIn = data.optLong("expires_in", 3600)
            val expiresAt = System.currentTimeMillis() / 1000 + expiresIn
            addDebugLog("refreshDiToken: ✅ 刷新成功 (expires_in=${expiresIn}s)")
            GarminSession(sess.cookies, sess.csrf, accessToken, refreshToken, sess.diClientId, expiresAt, sess.email).toJson()
        } catch (e: Exception) {
            addDebugLog("refreshDiToken异常: ${e.message}")
            null
        }
    }

    /**
     * v7.9.0: 同步前校验/静默刷新佳明凭证
     * - 有DI token且未过期 → 原样返回
     * - 有refresh_token且DI token过期 → 静默刷新，返回新凭证
     * - 无刷新能力 → 原样返回（保持兼容）
     */
    suspend fun ensureValidToken(ds: DataSource, cred: String): String = withContext(Dispatchers.IO) {
        val sess = parseCredential(cred) ?: return@withContext cred
        if (sess.diToken.isEmpty()) return@withContext cred  // 无DI token（旧WebView凭证），不刷新
        val now = System.currentTimeMillis() / 1000
        val expired = sess.diExpiresAt <= 0 || now >= sess.diExpiresAt - 60
        if (!expired) return@withContext cred  // 未过期
        addDebugLog("ensureValidToken: DI token已过期，尝试静默刷新...")
        refreshDiToken(ds, cred) ?: cred
    }

    private fun gcApiHost(ds: DataSource): String =
        if (ds == DataSource.GARMIN_CN) "https://connect.garmin.cn/gc-api" else "https://connect.garmin.com/gc-api"

    // 国际版/中国版DI token用connectapi（不经过Cloudflare）
    private fun connectApiHost(ds: DataSource): String =
        if (ds == DataSource.GARMIN_CN) CONNECT_API_HOST_CN else CONNECT_API_HOST_COM

    private fun apiHeaders(ds: DataSource, cred: String): Map<String, String> {
        val sess = parseCredential(cred)
        val h = mutableMapOf(
            "User-Agent" to "Mozilla/5.0 (Linux; Android 14; Pixel 8 Build/UQ1A.240205.004; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/120.0.6099.230 Mobile Safari/537.36",
            "Accept" to "application/json",
            "Referer" to if (ds == DataSource.GARMIN_CN) "https://connect.garmin.cn/app/home" else "https://connect.garmin.com/app/home",
            "Origin" to if (ds == DataSource.GARMIN_CN) "https://connect.garmin.cn" else "https://connect.garmin.com",
        )
        sess?.let {
            if (it.cookies.isNotEmpty()) h["Cookie"] = it.cookies
            if (it.csrf.isNotEmpty()) h["connect-csrf-token"] = it.csrf
        }
        return h
    }

    // DI token的header（用connectapi，不经过Cloudflare）
    private fun diHeaders(sess: GarminSession, ds: DataSource = DataSource.GARMIN_COM): Map<String, String> = mapOf(
        "Authorization" to "Bearer ${sess.diToken}",
        "User-Agent" to NATIVE_API_UA,
        "X-Garmin-User-Agent" to NATIVE_X_GARMIN_UA,
        "X-Garmin-Paired-App-Version" to "10861",
        "X-Garmin-Client-Platform" to "Android",
        "X-App-Ver" to "10861",
        "X-Lang" to if (ds == DataSource.GARMIN_CN) "zh-CN" else "en",
        "X-GCExperience" to "GC5",
        "DI-Backend" to if (ds == DataSource.GARMIN_CN) "connectapi.garmin.cn" else "connectapi.garmin.com",
        "Accept-Language" to if (ds == DataSource.GARMIN_CN) "zh-CN,zh;q=0.9" else "en-US,en;q=0.9"
    )

    // v7.0.5: 中国版用cookie调用connectapi（不经过Cloudflare，因为中国版DI token交换失败）
    private fun connectApiCookieHeaders(sess: GarminSession, ds: DataSource): Map<String, String> {
        // v7.4.3: 用cookie访问connectapi必须用纯浏览器风格header，不能混合App风格header
        val h = mutableMapOf(
            "User-Agent" to "Mozilla/5.0 (Linux; Android 14; Pixel 8 Build/UQ1A.240205.004; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/120.0.6099.230 Mobile Safari/537.36",
            "Accept" to "application/json",
            "Accept-Language" to "zh-CN,zh;q=0.9",
            "Referer" to "https://connect.garmin.cn/app/home",
            "Origin" to "https://connect.garmin.cn"
        )
        if (sess.cookies.isNotEmpty()) h["Cookie"] = sess.cookies
        if (sess.csrf.isNotEmpty()) h["connect-csrf-token"] = sess.csrf
        return h
    }

    // ===== WebView fetch（国际版DI token失败时的回退，保留但不优先使用）=====
    private suspend fun prepareWebView(cred: String, ds: DataSource = DataSource.GARMIN_COM): Boolean {
        val wv = sharedWebView ?: return false
        val host = if (ds == DataSource.GARMIN_CN) "connect.garmin.cn" else "connect.garmin.com"
        injectCookies(cred, host)
        // v7.5.0: 佳明中国——加载简单页面(favicon.ico)获取正确origin，避免modern页面重定向到sign-in导致永远ready不了
        // cookie直接用CookieManager中LoginWebActivity登录后已有的，不手动注入
        if (ds == DataSource.GARMIN_CN) {
            val cnUrl = "https://connect.garmin.cn/favicon.ico"
            val current = withContext(Dispatchers.Main) { wv.url }
            val existingCookies = CookieManager.getInstance().getCookie("https://connect.garmin.cn") ?: ""
            android.util.Log.i("GarminApi", "prepareWebView CN: cookie len=${existingCookies.length}, current=$current")
            if (current?.contains("connect.garmin.cn") == true && sharedWebViewReady) {
                return true
            }
            sharedWebViewReady = false
            webViewLoading = true
            withContext(Dispatchers.Main) {
                wv.webViewClient = object : WebViewClient() {
                    override fun onPageFinished(view: WebView?, url: String?) {
                        android.util.Log.i("GarminApi", "prepareWebView CN: onPageFinished url=$url")
                        // favicon.ico可能返回404，但只要页面加载完成且origin是connect.garmin.cn就可以
                        if (url?.contains("connect.garmin.cn") == true) {
                            sharedWebViewReady = true
                            webViewLoading = false
                        }
                    }
                    override fun onReceivedError(view: WebView?, request: android.webkit.WebResourceRequest?, error: android.webkit.WebResourceError?) {
                        android.util.Log.i("GarminApi", "prepareWebView CN: onReceivedError ${error?.description}, url=${request?.url}")
                        // 即使favicon.ico返回404错误，也认为页面加载完成（origin已经是connect.garmin.cn）
                        if (request?.url?.toString()?.contains("connect.garmin.cn") == true) {
                            sharedWebViewReady = true
                            webViewLoading = false
                        }
                    }
                }
                wv.loadUrl(cnUrl)
            }
            var attempts = 0
            while ((!sharedWebViewReady || webViewLoading) && attempts < 10) {
                delay(500); attempts++
            }
            android.util.Log.i("GarminApi", "prepareWebView CN: 等待${attempts * 0.5}秒, ready=$sharedWebViewReady")
            return sharedWebViewReady
        }
        val currentUrl = withContext(Dispatchers.Main) { wv.url }
        val onGarmin = currentUrl?.contains(host) == true &&
                        !currentUrl.contains("logout") && !currentUrl.contains("sign-in")
        if (onGarmin && sharedWebViewReady) return true
        sharedWebViewReady = false
        webViewLoading = true
        withContext(Dispatchers.Main) { wv.loadUrl("https://$host/app/home") }
        var attempts = 0
        while ((!sharedWebViewReady || webViewLoading) && attempts < 30) {
            delay(500); attempts++
        }
        return sharedWebViewReady
    }

    private fun injectCookies(cred: String, host: String = "connect.garmin.com") {
        val sess = parseCredential(cred) ?: return
        val cm = CookieManager.getInstance()
        cm.setAcceptCookie(true)
        // v7.4.8: 修复cookie注入，添加path=/和domain属性，确保cookie在所有子域名有效
        val mainDomain = if (host.endsWith(".cn")) "garmin.cn" else "garmin.com"
        sess.cookies.split("; ").forEach { cookie ->
            if (cookie.isNotEmpty()) {
                cm.setCookie(host, "$cookie; path=/")
                cm.setCookie(".$host", "$cookie; domain=.$host; path=/")
                cm.setCookie(".$mainDomain", "$cookie; domain=.$mainDomain; path=/")
            }
        }
        cm.flush()
    }

    // v7.4.7: 佳明中国专用——用WebView直接加载URL获取JSON响应（不使用fetch，避免about:blank的CORS/origin问题）
    private suspend fun loadJsonViaWebView(url: String, timeoutMs: Long = 30000): String? {
        val wv = sharedWebView ?: return null
        return withTimeoutOrNull(timeoutMs) {
            withContext(Dispatchers.Main) {
                suspendCancellableCoroutine { cont ->
                    var done = false
                    wv.webViewClient = object : WebViewClient() {
                        override fun onPageFinished(view: WebView?, pageUrl: String?) {
                            if (done) return
                            wv.evaluateJavascript("(function(){ try { return document.body ? document.body.innerText : ''; } catch(e) { return ''; } })()") { result ->
                                if (done) return@evaluateJavascript
                                val text = result?.trim()?.trim('"') ?: ""
                                if (text.isNotEmpty()) {
                                    done = true
                                    cont.resume(if (text.startsWith("{") || text.startsWith("[")) text else null)
                                }
                            }
                        }
                        override fun onReceivedError(view: WebView?, request: android.webkit.WebResourceRequest?, error: android.webkit.WebResourceError?) {
                            if (done) return
                            done = true
                            cont.resume(null)
                        }
                    }
                    wv.loadUrl(url)
                    wv.postDelayed({
                        if (!done) { done = true; cont.resume(null) }
                    }, timeoutMs - 1000)
                }
            }
        }
    }

    private suspend fun fetchViaWebView(url: String, method: String = "GET", headers: Map<String, String> = emptyMap(), body: String? = null): String? {
        val wv = sharedWebView ?: return null
        return withTimeoutOrNull(30000) {
            withContext(Dispatchers.Main) {
                suspendCancellableCoroutine { cont ->
                    val headersJson = JSONObject(headers as Map<String, String>).toString()
                    val fetchJs = """
                        (function() {
                            try {
                                window.__g_done = false;
                                window.__g_result = undefined;
                                window.__g_error = undefined;
                                window.__g_status = 0;
                                var opts = { method: '$method', credentials: 'include', headers: $headersJson };
                                ${if (body != null) "opts.body = '$body';" else ""}
                                fetch('$url', opts).then(function(r) {
                                    window.__g_status = r.status;
                                    return r.text();
                                }).then(function(t) {
                                    window.__g_result = t;
                                    window.__g_done = true;
                                }).catch(function(e) {
                                    window.__g_error = e.toString();
                                    window.__g_done = true;
                                });
                            } catch(e) {
                                window.__g_error = e.toString();
                                window.__g_done = true;
                            }
                        })();
                    """.trimIndent()
                    var attempts = 0
                    val checkResult = object : Runnable {
                        override fun run() {
                            attempts++
                            wv.evaluateJavascript("(function(){ if(window.__g_done){ var s=window.__g_status||0; var r=window.__g_result!==undefined?window.__g_result:''; var e=window.__g_error||''; return JSON.stringify({s:s,r:r,e:e}); } return '__ND__'; })()") { value ->
                                val v = value?.trim()?.trim('"') ?: ""
                                if (v != "__ND__" && v.isNotEmpty()) {
                                    try {
                                        val json = JSONObject(v.replace("\\n", "\n").replace("\\\"", "\""))
                                        val status = json.optInt("s", 0)
                                        val result = json.optString("r", "")
                                        cont.resume(if (status in 200..299 && result.isNotEmpty()) result else null)
                                    } catch (e: Exception) { cont.resume(null) }
                                } else if (attempts < 60) {
                                    wv.postDelayed(this, 500)
                                } else cont.resume(null)
                            }
                        }
                    }
                    wv.evaluateJavascript(fetchJs) { checkResult.run() }
                }
            }
        }
    }

    private suspend fun uploadViaWebView(url: String, fileName: String, fileData: ByteArray, headers: Map<String, String>): String? {
        val wv = sharedWebView ?: return null
        val base64 = Base64.encodeToString(fileData, Base64.NO_WRAP)
        val headersJson = JSONObject(headers as Map<String, String>).toString()
        return withTimeoutOrNull(60000) {
            withContext(Dispatchers.Main) {
                suspendCancellableCoroutine { cont ->
                    val fetchJs = """
                        (function() {
                            try {
                                window.__g_done = false;
                                window.__g_result = undefined;
                                window.__g_error = undefined;
                                window.__g_status = 0;
                                var binary = atob('$base64');
                                var bytes = new Uint8Array(binary.length);
                                for(var i=0;i<binary.length;i++) bytes[i]=binary.charCodeAt(i);
                                var blob = new Blob([bytes], {type:'application/octet-stream'});
                                var form = new FormData();
                                form.append('file', blob, '$fileName');
                                fetch('$url', { method:'POST', credentials:'include', headers:$headersJson, body:form }).then(function(r) {
                                    window.__g_status = r.status;
                                    return r.text();
                                }).then(function(t) {
                                    window.__g_result = t;
                                    window.__g_done = true;
                                }).catch(function(e) {
                                    window.__g_error = e.toString();
                                    window.__g_done = true;
                                });
                            } catch(e) {
                                window.__g_error = e.toString();
                                window.__g_done = true;
                            }
                        })();
                    """.trimIndent()
                    var attempts = 0
                    val checkResult = object : Runnable {
                        override fun run() {
                            attempts++
                            wv.evaluateJavascript("(function(){ if(window.__g_done){ var s=window.__g_status||0; var r=window.__g_result!==undefined?window.__g_result:''; var e=window.__g_error||''; return JSON.stringify({s:s,r:r,e:e}); } return '__ND__'; })()") { value ->
                                val v = value?.trim()?.trim('"') ?: ""
                                if (v != "__ND__" && v.isNotEmpty()) {
                                    try {
                                        val json = JSONObject(v.replace("\\n", "\n").replace("\\\"", "\""))
                                        val status = json.optInt("s", 0)
                                        val result = json.optString("r", "")
                                        cont.resume(if (status in 200..299) result else null)
                                    } catch (e: Exception) { cont.resume(null) }
                                } else if (attempts < 120) {
                                    wv.postDelayed(this, 500)
                                } else cont.resume(null)
                            }
                        }
                    }
                    wv.evaluateJavascript(fetchJs) { checkResult.run() }
                }
            }
        }
    }

    // v7.0.6: 中国版用WebView下载二进制文件（绕过Cloudflare）
    private suspend fun downloadViaWebView(url: String, headers: Map<String, String> = emptyMap()): ByteArray? {
        val wv = sharedWebView ?: return null
        val headersJson = JSONObject(headers as Map<String, String>).toString()
        return withTimeoutOrNull(60000) {
            withContext(Dispatchers.Main) {
                suspendCancellableCoroutine { cont ->
                    val fetchJs = """
                        (function() {
                            try {
                                window.__g_done = false;
                                window.__g_result = undefined;
                                window.__g_error = undefined;
                                window.__g_status = 0;
                                fetch('$url', { method:'GET', credentials:'include', headers:$headersJson }).then(function(r) {
                                    window.__g_status = r.status;
                                    return r.blob();
                                }).then(function(b) {
                                    var reader = new FileReader();
                                    reader.onload = function(e) {
                                        window.__g_result = e.target.result.split(',')[1];
                                        window.__g_done = true;
                                    };
                                    reader.readAsDataURL(b);
                                }).catch(function(e) {
                                    window.__g_error = e.toString();
                                    window.__g_done = true;
                                });
                            } catch(e) {
                                window.__g_error = e.toString();
                                window.__g_done = true;
                            }
                        })();
                    """.trimIndent()
                    var attempts = 0
                    val checkResult = object : Runnable {
                        override fun run() {
                            attempts++
                            wv.evaluateJavascript("(function(){ if(window.__g_done){ var s=window.__g_status||0; var r=window.__g_result!==undefined?window.__g_result:''; var e=window.__g_error||''; return JSON.stringify({s:s,r:r,e:e}); } return '__ND__'; })()") { value ->
                                val v = value?.trim()?.trim('"') ?: ""
                                if (v != "__ND__" && v.isNotEmpty()) {
                                    try {
                                        val json = JSONObject(v.replace("\\n", "\n").replace("\\\"", "\""))
                                        val status = json.optInt("s", 0)
                                        val result = json.optString("r", "")
                                        if (status in 200..299 && result.isNotEmpty()) {
                                            cont.resume(android.util.Base64.decode(result, android.util.Base64.NO_WRAP))
                                        } else cont.resume(null)
                                    } catch (e: Exception) { cont.resume(null) }
                                } else if (attempts < 120) {
                                    wv.postDelayed(this, 500)
                                } else cont.resume(null)
                            }
                        }
                    }
                    wv.evaluateJavascript(fetchJs) { checkResult.run() }
                }
            }
        }
    }

    // v7.0.6: 中国版用WebView直接POST二进制数据（绕过Cloudflare，佳明上传接口需要原始二进制不是FormData）
    private suspend fun uploadBinaryViaWebView(url: String, fileData: ByteArray, headers: Map<String, String> = emptyMap()): String? {
        val wv = sharedWebView ?: return null
        val base64 = Base64.encodeToString(fileData, Base64.NO_WRAP)
        val headersJson = JSONObject(headers as Map<String, String>).toString()
        return withTimeoutOrNull(60000) {
            withContext(Dispatchers.Main) {
                suspendCancellableCoroutine { cont ->
                    val fetchJs = """
                        (function() {
                            try {
                                window.__g_done = false;
                                window.__g_result = undefined;
                                window.__g_error = undefined;
                                window.__g_status = 0;
                                var binary = atob('$base64');
                                var bytes = new Uint8Array(binary.length);
                                for(var i=0;i<binary.length;i++) bytes[i]=binary.charCodeAt(i);
                                fetch('$url', { method:'POST', credentials:'include', headers:$headersJson, body:bytes }).then(function(r) {
                                    window.__g_status = r.status;
                                    return r.text();
                                }).then(function(t) {
                                    window.__g_result = t;
                                    window.__g_done = true;
                                }).catch(function(e) {
                                    window.__g_error = e.toString();
                                    window.__g_done = true;
                                });
                            } catch(e) {
                                window.__g_error = e.toString();
                                window.__g_done = true;
                            }
                        })();
                    """.trimIndent()
                    var attempts = 0
                    val checkResult = object : Runnable {
                        override fun run() {
                            attempts++
                            wv.evaluateJavascript("(function(){ if(window.__g_done){ var s=window.__g_status||0; var r=window.__g_result!==undefined?window.__g_result:''; var e=window.__g_error||''; return JSON.stringify({s:s,r:r,e:e}); } return '__ND__'; })()") { value ->
                                val v = value?.trim()?.trim('"') ?: ""
                                if (v != "__ND__" && v.isNotEmpty()) {
                                    try {
                                        val json = JSONObject(v.replace("\\n", "\n").replace("\\\"", "\""))
                                        val status = json.optInt("s", 0)
                                        val result = json.optString("r", "")
                                        cont.resume(if (status in 200..299) result else null)
                                    } catch (e: Exception) { cont.resume(null) }
                                } else if (attempts < 120) {
                                    wv.postDelayed(this, 500)
                                } else cont.resume(null)
                            }
                        }
                    }
                    wv.evaluateJavascript(fetchJs) { checkResult.run() }
                }
            }
        }
    }

    suspend fun getUsername(ds: DataSource, cred: String): String? = withContext(Dispatchers.IO) {
        try {
            val sess = parseCredential(cred)
            // 国际版优先用DI token（connectapi，不经过Cloudflare）
            if ((ds == DataSource.GARMIN_COM || ds == DataSource.GARMIN_CN) && sess?.diToken?.isNotEmpty() == true) {
                val url = "${connectApiHost(ds)}/userprofile-service/socialProfile"
                val req = Request.Builder().url(url).apply {
                    diHeaders(sess, ds).forEach { (k, v) -> addHeader(k, v) }
                }.get().build()
                client.newCall(req).execute().use { resp ->
                    if (resp.code != 200) return@withContext null
                    val json = JSONObject(resp.body?.string() ?: return@withContext null)
                    return@withContext json.optString("displayName").ifBlank { null }
                }
            }
            val url = "${gcApiHost(ds)}/userprofile-service/socialProfile"
            if (ds == DataSource.GARMIN_COM && sharedWebView != null) {
                if (prepareWebView(cred, ds)) {
                    val result = fetchViaWebView(url, "GET", apiHeaders(ds, cred))
                    if (result != null) return@withContext JSONObject(result).optString("displayName").ifBlank { null }
                }
            }
            val req = Request.Builder().url(url).apply {
                apiHeaders(ds, cred).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) return@withContext null
                JSONObject(resp.body?.string() ?: return@withContext null).optString("displayName").ifBlank { null }
            }
        } catch (e: Exception) { null }
    }

    suspend fun getActivities(ds: DataSource, cred: String, offset: Int, limit: Int): List<ActivityRecord> = withContext(Dispatchers.IO) {
        try {
            val sess = parseCredential(cred)
            addDebugLog("getActivities: ds=$ds, diToken=${sess?.diToken?.isNotEmpty() == true}")
            // v7.9.0: 国际版+中国版统一优先用DI token直连connectapi（不经过Cloudflare，速度快）
            // 原v7.4.8中国版优先WebView导致每请求JS fetch+base64+500ms轮询，传输慢；DI直连是纯HTTP，速度提升5-10倍
            if ((ds == DataSource.GARMIN_COM || ds == DataSource.GARMIN_CN) && sess?.diToken?.isNotEmpty() == true) {
                val url = "${connectApiHost(ds)}/activitylist-service/activities/search/activities?start=$offset&limit=$limit"
                val req = Request.Builder().url(url).apply {
                    diHeaders(sess, ds).forEach { (k, v) -> addHeader(k, v) }
                }.get().build()
                client.newCall(req).execute().use { resp ->
                    addDebugLog("getActivities DI: HTTP ${resp.code}")
                    if (resp.code != 200) {
                        addDebugLog("getActivities DI失败: ${resp.body?.string()?.take(150)}")
                        return@withContext emptyList()
                    }
                    val arr = JSONArray(resp.body?.string() ?: "[]")
                    val out = mutableListOf<ActivityRecord>()
                    for (i in 0 until arr.length()) {
                        val item = arr.getJSONObject(i)
                        val id = item.optString("activityId")
                        if (id.isEmpty()) continue
                        out.add(ActivityRecord(
                            id,
                            item.optString("activityName").ifBlank { "佳明活动" },
                            item.optString("startTimeLocal").ifBlank { item.optString("startTimeGMT") },
                            item.optDouble("distance", 0.0) / 1000.0,
                            item.optInt("duration", 0),
                            ds
                        ))
                    }
                    addDebugLog("getActivities DI成功: ${out.size}条")
                    return@withContext out
                }
            }
            // 中国版 + 国际版无DI token时走原路径
            val url = "${gcApiHost(ds)}/activitylist-service/activities/search/activities?start=$offset&limit=$limit"
            if (sharedWebView != null) {
                if (prepareWebView(cred, ds)) {
                    val result = fetchViaWebView(url, "GET", apiHeaders(ds, cred))
                    if (result != null) {
                        val arr = JSONArray(result)
                        val out = mutableListOf<ActivityRecord>()
                        for (i in 0 until arr.length()) {
                            val item = arr.getJSONObject(i)
                            val id = item.optString("activityId")
                            if (id.isEmpty()) continue
                            out.add(ActivityRecord(id, item.optString("activityName").ifBlank { "佳明活动" },
                                item.optString("startTimeLocal").ifBlank { item.optString("startTimeGMT") },
                                item.optDouble("distance", 0.0) / 1000.0, item.optInt("duration", 0), ds))
                        }
                        return@withContext out
                    }
                }
            }
            addDebugLog("getActivities: 走OkHttp分支")
            val req = Request.Builder().url(url).apply {
                apiHeaders(ds, cred).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) {
                    addDebugLog("getActivities OkHttp HTTP ${resp.code}")
                    return@withContext emptyList()
                }
                val arr = JSONArray(resp.body?.string() ?: "[]")
                val out = mutableListOf<ActivityRecord>()
                for (i in 0 until arr.length()) {
                    val item = arr.getJSONObject(i)
                    val id = item.optString("activityId")
                    if (id.isEmpty()) continue
                    out.add(ActivityRecord(id, item.optString("activityName").ifBlank { "佳明活动" },
                        item.optString("startTimeLocal").ifBlank { item.optString("startTimeGMT") },
                        item.optDouble("distance", 0.0) / 1000.0, item.optInt("duration", 0), ds))
                }
                out
            }
        } catch (e: Exception) {
            addDebugLog("getActivities异常: ${e.message}")
            emptyList()
        }
    }

    /**
     * v7.6.0: 佳明下载（含连接层错误自动重试，与上传uploadActivity一致）
     * 原逻辑抽到downloadFitOnce；此处仅处理"连接层IOException"重试（最多3次，间隔1秒），
     * 业务失败（HTTP非200/解压失败等）不重试
     */
    suspend fun downloadFit(ds: DataSource, cred: String, activityId: String): ByteArray? = withContext(Dispatchers.IO) {
        repeat(3) { attempt ->
            try {
                val r = downloadFitOnce(ds, cred, activityId)
                if (r != null) return@withContext r
                return@withContext null  // 业务失败，不重试
            } catch (e: java.io.IOException) {
                addDebugLog("downloadFit第${attempt + 1}次连接错误，1秒后重试: ${e.message}")
                if (attempt < 2) kotlinx.coroutines.delay(1000L)
            }
        }
        null
    }

    private suspend fun downloadFitOnce(ds: DataSource, cred: String, activityId: String): ByteArray? = withContext(Dispatchers.IO) {
        try {
            val sess = parseCredential(cred)
            // v7.9.0: 国际版+中国版统一优先用DI token直连connectapi（纯HTTP，不经Cloudflare，速度5-10倍于WebView）
            if ((ds == DataSource.GARMIN_COM || ds == DataSource.GARMIN_CN) && sess?.diToken?.isNotEmpty() == true) {
                val url = "${connectApiHost(ds)}/download-service/files/activity/$activityId"
                val req = Request.Builder().url(url).apply {
                    diHeaders(sess, ds).forEach { (k, v) -> addHeader(k, v) }
                    addHeader("Accept", "*/*")
                }.get().build()
                client.newCall(req).execute().use { resp ->
                    addDebugLog("downloadFit DI: HTTP ${resp.code}")
                    if (resp.code != 200) return@withContext null
                    val zipBytes = resp.body?.bytes() ?: return@withContext null
                    return@withContext unzipFit(zipBytes)
                }
            }
            // DI不可用（无DI token）时走WebView+gc-api兜底（国际版+中国版统一）
            val url = "${gcApiHost(ds)}/download-service/files/activity/$activityId"
            if (sharedWebView != null) {
                if (prepareWebView(cred, ds)) {
                    val wv = sharedWebView!!
                    val headers = apiHeaders(ds, cred).toMutableMap()
                    headers["Accept"] = "*/*"
                    val fetchJs = """
                        (function(){ fetch('$url',{method:'GET',credentials:'include',headers:${JSONObject(headers as Map<String,String>).toString()}}).then(r=>{window.__g_status=r.status;return r.blob();}).then(b=>{var r=new FileReader();r.onload=e=>{window.__g_result=e.target.result.split(',')[1];window.__g_done=true;};r.readAsDataURL(b);}).catch(e=>{window.__g_error=e.toString();window.__g_done=true;}); })();
                    """.trimIndent()
                    val result = withTimeoutOrNull(60000) {
                        withContext(Dispatchers.Main) {
                            suspendCancellableCoroutine<String?> { cont ->
                                var attempts = 0
                                val check = object : Runnable {
                                    override fun run() {
                                        attempts++
                                        wv.evaluateJavascript("(function(){ if(window.__g_done){ var s=window.__g_status||0; var r=window.__g_result!==undefined?window.__g_result:''; var e=window.__g_error||''; return JSON.stringify({s:s,r:r,e:e}); } return '__ND__'; })()") { v ->
                                            val valStr = v?.trim()?.trim('"') ?: ""
                                            if (valStr != "__ND__" && valStr.isNotEmpty()) {
                                                try {
                                                    val json = JSONObject(valStr.replace("\\n","\n").replace("\\\"","\""))
                                                    cont.resume(if (json.optInt("s",0) in 200..299 && json.optString("r","").isNotEmpty()) json.optString("r") else null)
                                                } catch (e: Exception) { cont.resume(null) }
                                            } else if (attempts < 120) wv.postDelayed(this, 500)
                                            else cont.resume(null)
                                        }
                                    }
                                }
                                wv.evaluateJavascript("window.__g_done=false;window.__g_result=undefined;window.__g_error=undefined;") {
                                    wv.evaluateJavascript(fetchJs) { check.run() }
                                }
                            }
                        }
                    }
                    if (result != null) {
                        val zipBytes = Base64.decode(result, Base64.DEFAULT)
                        return@withContext unzipFit(zipBytes)
                    }
                    return@withContext null
                }
            }
            val headers = apiHeaders(ds, cred).toMutableMap()
            headers["Accept"] = "*/*"
            val req = Request.Builder().url(url).apply {
                headers.forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) return@withContext null
                unzipFit(resp.body?.bytes() ?: return@withContext null)
            }
        } catch (e: java.io.IOException) {
            // v7.6.0: 连接层错误（含Required SETTINGS preface not received）→ 抛给外层重试
            addDebugLog("downloadFit连接错误: ${e.message}")
            throw e
        } catch (e: Exception) {
            addDebugLog("downloadFit异常: ${e.message}")
            null
        }
    }

    private fun unzipFit(zipBytes: ByteArray): ByteArray? {
        return try {
            ZipInputStream(ByteArrayInputStream(zipBytes)).use { zis ->
                var entry = zis.nextEntry
                while (entry != null) {
                    if (entry.name.endsWith(".fit", ignoreCase = true)) {
                        val out = java.io.ByteArrayOutputStream()
                        val buf = ByteArray(65536)
                        var n: Int
                        while (zis.read(buf).also { n = it } != -1) out.write(buf, 0, n)
                        return out.toByteArray()
                    }
                    zis.closeEntry()
                    entry = zis.nextEntry
                }
                null
            }
        } catch (e: Exception) {
            if (zipBytes.size >= 14 && zipBytes[8] == '.'.code.toByte() && zipBytes[9] == 'F'.code.toByte()) zipBytes else null
        }
    }

    /**
     * v7.6.0: 佳明上传（含连接层错误自动重试）
     * 原逻辑抽到uploadActivityOnce；此处仅处理"连接层IOException"重试（最多3次，间隔1秒），
     * 业务错误（重复活动/文件拒绝等）不重试
     */
    suspend fun uploadActivity(ds: DataSource, cred: String, data: ByteArray, fileName: String): String? = withContext(Dispatchers.IO) {
        var lastErr: String? = null
        repeat(3) { attempt ->
            val r = uploadActivityOnce(ds, cred, data, fileName)
            if (r == null) return@withContext null  // 上传成功
            if (r.startsWith("佳明上传异常(连接错误)")) {
                lastErr = r
                if (attempt < 2) {
                    addDebugLog("uploadActivity第${attempt + 1}次连接错误，1秒后重试: ${r.take(120)}")
                    kotlinx.coroutines.delay(1000L)
                }
            } else {
                return@withContext r  // 业务失败（重复/拒绝/其他），不重试直接返回
            }
        }
        lastErr
    }

    private suspend fun uploadActivityOnce(ds: DataSource, cred: String, data: ByteArray, fileName: String): String? = withContext(Dispatchers.IO) {
        try {
            val sess = parseCredential(cred)
            addDebugLog("uploadActivity: ds=$ds, diToken=${sess?.diToken?.isNotEmpty() == true}, size=${data.size}")
            // v7.9.0: 国际版+中国版统一优先用DI token直连connectapi（纯HTTP，不经Cloudflare，速度5-10倍于WebView）
            if ((ds == DataSource.GARMIN_COM || ds == DataSource.GARMIN_CN) && sess?.diToken?.isNotEmpty() == true) {
                val url = "${connectApiHost(ds)}/upload-service/upload"
                val body = MultipartBody.Builder()
                    .setType(MultipartBody.FORM)
                    .addFormDataPart("file", fileName, data.toRequestBody("application/octet-stream".toMediaType()))
                    .build()
                val req = Request.Builder().url(url).apply {
                    diHeaders(sess, ds).forEach { (k, v) -> addHeader(k, v) }
                    addHeader("Accept", "application/json")
                }.post(body).build()
                client.newCall(req).execute().use { resp ->
                    val result = resp.body?.string() ?: ""
                    addDebugLog("upload DI: HTTP ${resp.code}, result=${result.take(200)}")
                    return@withContext when (resp.code) {
                        200, 201, 202 -> null
                        409 -> if (result.contains("Duplicate Activity", true)) "重复活动(已在佳明存在)"
                               else "佳明上传冲突 HTTP 409: ${result.take(100)}"
                        400, 415 -> "佳明拒绝该文件(HTTP ${resp.code}): ${result.take(150)}"
                        else -> "佳明上传失败 HTTP ${resp.code}: ${result.take(100)}"
                    }
                }
            }
            // DI不可用（无DI token）时回退到WebView/OkHttp（国际版+中国版统一）
            val url = "${gcApiHost(ds)}/upload-service/upload/"
            if (sharedWebView != null) {
                if (prepareWebView(cred, ds)) {
                    val headers = apiHeaders(ds, cred).toMutableMap()
                    headers["Accept"] = "application/json"
                    val result = uploadViaWebView(url, fileName, data, headers)
                    if (result != null) {
                        return@withContext when {
                            result.contains("Duplicate Activity", true) -> "重复活动(已在佳明存在)"
                            result.contains("\"id\"") || result.contains("\"activityId\"") || result.contains("\"uploadId\"") -> null
                            else -> "佳明上传返回: ${result.take(100)}"
                        }
                    }
                }
            }
            addDebugLog("uploadActivity: 走OkHttp分支")
            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("file", fileName, data.toRequestBody("application/octet-stream".toMediaType()))
                .build()
            val headers = apiHeaders(ds, cred).toMutableMap()
            headers["Accept"] = "application/json"
            val req = Request.Builder().url(url).apply {
                headers.forEach { (k, v) -> addHeader(k, v) }
            }.post(body).build()
            client.newCall(req).execute().use { resp ->
                val result = resp.body?.string() ?: ""
                addDebugLog("upload OkHttp HTTP ${resp.code}: ${result.take(200)}")
                when (resp.code) {
                    200, 201, 202 -> null
                    409 -> if (result.contains("Duplicate Activity")) "重复活动(已在佳明存在)"
                           else "佳明上传冲突 HTTP 409: ${result.take(100)}"
                    400, 415 -> "佳明拒绝该文件(HTTP ${resp.code}): ${result.take(150)}"
                    else -> "佳明上传失败 HTTP ${resp.code}: ${result.take(100)}"
                }
            }
        } catch (e: java.io.IOException) {
            // v7.6.0: 连接层错误（含Required SETTINGS preface not received）→ 标记可重试
            addDebugLog("uploadActivity连接错误: ${e.message}")
            "佳明上传异常(连接错误): ${e.message}"
        } catch (e: Exception) {
            addDebugLog("uploadActivity异常: ${e.message}")
            "佳明上传异常: ${e.message}"
        }
    }
}

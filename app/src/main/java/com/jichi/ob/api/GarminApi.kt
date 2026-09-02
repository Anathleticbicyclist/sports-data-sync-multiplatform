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

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    fun initWebView(context: Context) = initSharedWebView(context)

    // ===== 国际版 mobile SSO 登录（参考garminconnect 0.3.x）=====
    data class DiTokenResult(val accessToken: String, val refreshToken: String?, val clientId: String)

    /**
     * mobile SSO登录 + DI token交换（不经过Cloudflare），支持国际版和中国版
     * @return JSON凭证字符串 {"di_token":"...","di_refresh_token":"...","di_client_id":"..."}
     */
    suspend fun loginMobile(email: String, password: String, isCN: Boolean = false): String? = withContext(Dispatchers.IO) {
        try {
            addDebugLog("loginMobile: 开始mobile SSO登录(isCN=$isCN)...")
            // Step 1: mobile login获取serviceTicketId
            val loginUrl = if (isCN) SSO_LOGIN_URL_CN else SSO_LOGIN_URL_COM
            val serviceUrl = if (isCN) IOS_SERVICE_URL_CN else IOS_SERVICE_URL_COM
            val ssoOrigin = if (isCN) "https://sso.garmin.cn" else "https://sso.garmin.com"
            val locale = if (isCN) "zh-CN" else "en-US"
            val loginJson = JSONObject().apply {
                put("username", email)
                put("password", password)
                put("rememberMe", true)
                put("captchaToken", "")
            }
            val loginReq = Request.Builder()
                .url("$loginUrl?clientId=$IOS_SSO_CLIENT_ID&locale=$locale&service=${java.net.URLEncoder.encode(serviceUrl, "UTF-8")}")
                .addHeader("User-Agent", IOS_LOGIN_UA)
                .addHeader("Accept", "application/json, text/plain, */*")
                .addHeader("Content-Type", "application/json")
                .addHeader("Origin", ssoOrigin)
                .post(loginJson.toString().toRequestBody("application/json".toMediaType()))
                .build()
            val loginResp = client.newCall(loginReq).execute()
            val loginBody = loginResp.body?.string() ?: ""
            addDebugLog("loginMobile: HTTP ${loginResp.code}, body=${loginBody.take(200)}")
            if (loginResp.code == 429) {
                addDebugLog("loginMobile: 429限流，等待10秒重试...")
                delay(10000)
                val loginResp2 = client.newCall(loginReq).execute()
                val loginBody2 = loginResp2.body?.string() ?: ""
                addDebugLog("loginMobile重试: HTTP ${loginResp2.code}")
                if (loginResp2.code != 200) return@withContext null
                val res2 = JSONObject(loginBody2)
                val respType2 = res2.optJSONObject("responseStatus")?.optString("type") ?: ""
                if (respType2 != "SUCCESSFUL") return@withContext null
                val ticket2 = res2.getString("serviceTicketId")
                return@withContext exchangeDiToken(ticket2, isCN)
            }
            if (loginResp.code != 200) return@withContext null
            val res = JSONObject(loginBody)
            val respType = res.optJSONObject("responseStatus")?.optString("type") ?: ""
            if (respType == "MFA_REQUIRED") {
                addDebugLog("loginMobile: 需要MFA验证，暂不支持")
                return@withContext null
            }
            if (respType != "SUCCESSFUL") {
                addDebugLog("loginMobile: 登录失败 type=$respType")
                return@withContext null
            }
            val ticket = res.getString("serviceTicketId")
            addDebugLog("loginMobile: 获取serviceTicket成功")
            // Step 2: 交换DI token
            exchangeDiToken(ticket, isCN)
        } catch (e: Exception) {
            addDebugLog("loginMobile异常: ${e.message}")
            Log.e(TAG, "loginMobile error", e)
            null
        }
    }

    private suspend fun exchangeDiToken(ticket: String, isCN: Boolean = false): String? = withContext(Dispatchers.IO) {
        val diTokenUrl = if (isCN) DI_TOKEN_URL_CN else DI_TOKEN_URL_COM
        val grantType = if (isCN) DI_GRANT_TYPE_CN else DI_GRANT_TYPE_COM
        val serviceUrl = if (isCN) IOS_SERVICE_URL_CN else IOS_SERVICE_URL_COM
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
                addDebugLog("exchangeDiToken: 成功! clientId=$clientId")
                return@withContext JSONObject().apply {
                    put("di_token", accessToken)
                    put("di_refresh_token", refreshToken ?: "")
                    put("di_client_id", clientId)
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
        val diClientId: String = ""
    ) {
        fun toJson(): String = JSONObject().apply {
            put("cookies", cookies)
            put("csrf", csrf)
            if (diToken.isNotEmpty()) put("di_token", diToken)
            if (diRefreshToken.isNotEmpty()) put("di_refresh_token", diRefreshToken)
            if (diClientId.isNotEmpty()) put("di_client_id", diClientId)
        }.toString()
        companion object {
            fun fromJson(json: String): GarminSession? {
                return try {
                    val obj = JSONObject(json)
                    val csrf = obj.optString("csrf", "")
                    val jwtWeb = obj.optString("jwt_web", "")
                    val sessionCookie = obj.optString("session", "")
                    val cookies = if (jwtWeb.isNotEmpty() && sessionCookie.isNotEmpty()) {
                        "JWT_WEB=$jwtWeb; session=$sessionCookie"
                    } else {
                        obj.optString("cookies", "")
                    }
                    val diToken = obj.optString("di_token", "")
                    val diRefreshToken = obj.optString("di_refresh_token", "")
                    val diClientId = obj.optString("di_client_id", "")
                    if (cookies.isNotEmpty() || diToken.isNotEmpty()) {
                        GarminSession(cookies, csrf, diToken, diRefreshToken, diClientId)
                    } else null
                } catch (_: Exception) { null }
            }
        }
    }

    private fun parseCredential(cred: String): GarminSession? {
        if (cred.isEmpty()) return null
        return GarminSession.fromJson(cred)
    }

    fun ensureValidToken(ds: DataSource, cred: String): String = cred

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
        val h = mutableMapOf(
            "User-Agent" to NATIVE_API_UA,
            "X-Garmin-User-Agent" to NATIVE_X_GARMIN_UA,
            "X-Garmin-Paired-App-Version" to "10861",
            "X-Garmin-Client-Platform" to "Android",
            "X-App-Ver" to "10861",
            "X-Lang" to "zh-CN",
            "X-GCExperience" to "GC5",
            "DI-Backend" to "connectapi.garmin.cn",
            "Accept-Language" to "zh-CN,zh;q=0.9",
            "Accept" to "application/json",
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
        sess.cookies.split("; ").forEach { cookie ->
            if (cookie.isNotEmpty()) {
                cm.setCookie(host, cookie)
                cm.setCookie(".$host", cookie)
            }
        }
        cm.flush()
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
            // v7.4.1: 中国版优先用OkHttp+cookie调用connectapi（gc-api被Cloudflare拦截，connectapi不拦截）
            if (ds == DataSource.GARMIN_CN && sess?.cookies?.isNotEmpty() == true) {
                val url = "${connectApiHost(ds)}/activitylist-service/activities/search/activities?start=$offset&limit=$limit"
                val req = Request.Builder().url(url).apply {
                    connectApiCookieHeaders(sess, ds).forEach { (k, v) -> addHeader(k, v) }
                }.get().build()
                client.newCall(req).execute().use { resp ->
                    addDebugLog("getActivities CN(cookie): HTTP ${resp.code}")
                    if (resp.code == 200) {
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
                        addDebugLog("getActivities CN(cookie)成功: ${out.size}条")
                        return@withContext out
                    }
                    addDebugLog("getActivities CN(cookie)失败: ${resp.body?.string()?.take(150)}")
                }
            }
            // 国际版优先用DI token（connectapi，不经过Cloudflare）
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
            if (ds == DataSource.GARMIN_COM && sharedWebView != null) {
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

    suspend fun downloadFit(ds: DataSource, cred: String, activityId: String): ByteArray? = withContext(Dispatchers.IO) {
        try {
            val sess = parseCredential(cred)
            // v7.4.1: 中国版优先用OkHttp+cookie调用connectapi下载（gc-api被Cloudflare拦截）
            if (ds == DataSource.GARMIN_CN && sess?.cookies?.isNotEmpty() == true) {
                val url = "${connectApiHost(ds)}/download-service/files/activity/$activityId"
                val req = Request.Builder().url(url).apply {
                    connectApiCookieHeaders(sess, ds).forEach { (k, v) -> addHeader(k, v) }
                    addHeader("Accept", "*/*")
                }.get().build()
                client.newCall(req).execute().use { resp ->
                    addDebugLog("downloadFit CN(cookie): HTTP ${resp.code}")
                    if (resp.code == 200) {
                        val zipBytes = resp.body?.bytes()
                        if (zipBytes != null) {
                            val fit = unzipFit(zipBytes)
                            if (fit != null) {
                                addDebugLog("downloadFit CN(cookie)成功")
                                return@withContext fit
                            }
                        }
                    }
                    addDebugLog("downloadFit CN(cookie)失败，回退")
                }
            }
            // 国际版优先用DI token（connectapi，不经过Cloudflare）
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
            val url = "${gcApiHost(ds)}/download-service/files/activity/$activityId"
            if (ds == DataSource.GARMIN_COM && sharedWebView != null) {
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

    suspend fun uploadActivity(ds: DataSource, cred: String, data: ByteArray, fileName: String): String? = withContext(Dispatchers.IO) {
        try {
            val sess = parseCredential(cred)
            addDebugLog("uploadActivity: ds=$ds, diToken=${sess?.diToken?.isNotEmpty() == true}, size=${data.size}")
            // v7.4.1: 中国版优先用OkHttp+cookie调用connectapi上传（gc-api被Cloudflare拦截）
            if (ds == DataSource.GARMIN_CN && sess?.cookies?.isNotEmpty() == true) {
                val url = "${connectApiHost(ds)}/upload-service/upload"
                val body = MultipartBody.Builder()
                    .setType(MultipartBody.FORM)
                    .addFormDataPart("file", fileName, data.toRequestBody("application/octet-stream".toMediaType()))
                    .build()
                val req = Request.Builder().url(url).apply {
                    connectApiCookieHeaders(sess, ds).forEach { (k, v) -> addHeader(k, v) }
                    addHeader("Accept", "application/json")
                }.post(body).build()
                client.newCall(req).execute().use { resp ->
                    val result = resp.body?.string() ?: ""
                    addDebugLog("upload CN(cookie): HTTP ${resp.code}, result=${result.take(200)}")
                    return@withContext when (resp.code) {
                        200, 201, 202 -> null
                        409 -> if (result.contains("Duplicate Activity", true)) "重复活动(已在佳明存在)"
                               else "佳明上传冲突 HTTP 409: ${result.take(100)}"
                        400, 415 -> "佳明拒绝该文件(HTTP ${resp.code}): ${result.take(150)}"
                        else -> "佳明上传失败 HTTP ${resp.code}: ${result.take(100)}"
                    }
                }
            }
            // 国际版优先用DI token（connectapi，不经过Cloudflare）
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
            // 国际版无DI token时回退到WebView/OkHttp
            val url = "${gcApiHost(ds)}/upload-service/upload/"
            if (ds == DataSource.GARMIN_COM && sharedWebView != null) {
                if (prepareWebView(cred, ds)) {
                    val headers = apiHeaders(ds, cred).toMutableMap()
                    headers["Accept"] = "application/json"
                    val result = uploadViaWebView(url, fileName, data, headers)
                    if (result != null) {
                        return@withContext when {
                            result.contains("Duplicate Activity", true) -> "重复活动(已在佳明存在)"
                            result.contains("\"id\"") || result.contains("\"activityId\"") || result.contains("\"uploadId\"") -> null
                            else -> "佳明国际上传返回: ${result.take(100)}"
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
        } catch (e: Exception) {
            addDebugLog("uploadActivity异常: ${e.message}")
            "佳明上传异常: ${e.message}"
        }
    }
}

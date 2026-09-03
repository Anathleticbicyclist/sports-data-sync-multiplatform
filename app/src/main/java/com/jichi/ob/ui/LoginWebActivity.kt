package com.jichi.ob.ui
 
import android.annotation.SuppressLint
import android.app.Activity
import android.content.Intent
import android.graphics.Bitmap
import android.os.Bundle
import android.util.Log
import android.webkit.CookieManager
import android.webkit.WebChromeClient
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.ProgressBar
import androidx.appcompat.app.AppCompatActivity
import com.google.android.material.appbar.MaterialToolbar
import com.jichi.ob.R
import com.jichi.ob.api.MageneApi
import com.jichi.ob.api.XingzheApi
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.DelicateCoroutinesApi
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import java.util.concurrent.atomic.AtomicBoolean
 
/**
 * WebView 登录（四个平台）
 * - iGPSPORT: localStorage['persist:app-store'] → global.token
 * - 行者: sessionid cookie + user_info验证
 * - 迈金: otm.onelap.cn localStorage['token'] (+refresh_token)
 * - Outbase: sessionId cookie + 捕获 melon-gateway.immomo.com 域cookie
 */
class LoginWebActivity : AppCompatActivity() {
 
    companion object {
        private const val TAG = "LoginWeb"
        const val EXTRA_LOGIN_TYPE = "login_type"
        const val EXTRA_URL = "url"
        const val TYPE_IGPSPORT = "igpsport"
        const val TYPE_XINGZHE = "xingzhe"
        const val TYPE_MAGENE = "magene"
        const val TYPE_OUTBASE = "outbase"
        const val TYPE_BLACKBIRD = "blackbird"
        const val TYPE_BRYTON = "bryton"
        const val TYPE_GARMIN_COM = "garmin_com"
        const val TYPE_GARMIN_CN = "garmin_cn"
        const val TYPE_COROS_CN = "coros_cn"
        const val TYPE_COROS_INT = "coros_int"
        const val TYPE_WAHOO = "wahoo"
        const val RESULT_TOKEN = "***"
        const val RESULT_SESSION_ID = "session_id"
        const val RESULT_LOGIN_TYPE = "login_type"
        const val RESULT_EXTRA = "extra"  // 迈金refresh_token / Outbase网关cookie
 
        private const val MOBILE_UA = "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36"
        private const val DESKTOP_UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
    }
 
    private lateinit var webView: WebView
    private lateinit var progressBar: ProgressBar
    private var loginType = TYPE_XINGZHE
    private var detected = false
    private var igpReloadCount = 0  // v7.6.0: iGPSPORT token校验失败重载计数(限2次)
    private val urlHistory = mutableListOf<String>()  // v7.1.7: URL历史记录，用于调试Wahoo授权码捕获
    private val verifying = AtomicBoolean(false)
    private var checkCount = 0
 
    private val checkRunnable = object : Runnable {
        override fun run() {
            if (!detected && !isFinishing) {
                detectLogin()
                webView.postDelayed(this, 1000)
            }
        }
    }
 
    @SuppressLint("SetJavaScriptEnabled")

    /** 只清除特定域名的cookie，保留其他平台登录态 */
    private fun clearDomainCookies(vararg domains: String) {
        val cm = CookieManager.getInstance()
        domains.forEach { domain ->
            try {
                // 获取该域名的所有cookie，逐个设置过期
                val cookies = cm.getCookie("https://$domain") ?: ""
                cookies.split(";").forEach { cookie ->
                    val name = cookie.substringBefore("=").trim()
                    if (name.isNotEmpty()) {
                        cm.setCookie("https://$domain", "$name=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/")
                        cm.setCookie("https://$domain", "$name=; expires=Thu, 01 Jan 1970 00:00:00 GMT; domain=.$domain; path=/")
                    }
                }
            } catch (_: Exception) {}
        }
        cm.flush()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        try {
            setContentView(R.layout.activity_login_web)
            loginType = intent?.getStringExtra(EXTRA_LOGIN_TYPE) ?: TYPE_XINGZHE
            val url = intent?.getStringExtra(EXTRA_URL) ?: ""
 
            val toolbar = findViewById<MaterialToolbar>(R.id.toolbar)
            toolbar.title = when (loginType) {
                TYPE_IGPSPORT -> "登录 iGPSPORT"
                TYPE_XINGZHE -> "登录行者"
                TYPE_MAGENE -> "登录迈金/顽鹿"
                TYPE_OUTBASE -> "登录 Outbase"
                TYPE_BLACKBIRD -> "登录黑鸟单车"
                TYPE_BRYTON -> "登录百锐腾"
                TYPE_GARMIN_COM -> "登录佳明国际"
                TYPE_GARMIN_CN -> "登录佳明中国"
                TYPE_COROS_CN -> "登录高驰中国"
                TYPE_COROS_INT -> "登录高驰国际"
                TYPE_WAHOO -> "登录 Wahoo"
                else -> "登录"
            }
            toolbar.setNavigationOnClickListener { detected = true; finish() }

            // v7.0.5: 只有国际版用mobile SSO登录（中国版DI token交换失败，回退WebView登录）
            if (loginType == TYPE_GARMIN_COM) {
                val isCN = false
                findViewById<android.widget.LinearLayout>(R.id.mobileLoginLayout).visibility = android.view.View.VISIBLE
                webView = findViewById(R.id.webView)
                webView.visibility = android.view.View.GONE
                findViewById<android.view.View>(R.id.btnConfirmLogin)?.visibility = android.view.View.GONE
                val etEmail = findViewById<com.google.android.material.textfield.TextInputEditText>(R.id.etEmail)
                val etPassword = findViewById<com.google.android.material.textfield.TextInputEditText>(R.id.etPassword)
                val btnLogin = findViewById<com.google.android.material.button.MaterialButton>(R.id.btnMobileLogin)
                val tvStatus = findViewById<android.widget.TextView>(R.id.tvMobileLoginStatus)
                val tvTitle = findViewById<android.widget.TextView>(R.id.tvMobileLoginTitle)
                val tvMfaGuide = findViewById<android.widget.TextView>(R.id.tvMfaGuide)
                // v7.0.2: 根据国际版/中国版设置标题和MFA教程链接
                tvTitle.text = if (isCN) "佳明中国版登录" else "佳明国际版登录"
                val mfaUrl = if (isCN) "https://connect.garmin.cn/settings/security" else "https://connect.garmin.com/settings/security"
                tvMfaGuide.setOnClickListener {
                    try {
                        val intent = android.content.Intent(android.content.Intent.ACTION_VIEW, android.net.Uri.parse(mfaUrl))
                        startActivity(intent)
                    } catch (e: Exception) {
                        android.widget.Toast.makeText(this, "请手动访问: $mfaUrl", android.widget.Toast.LENGTH_LONG).show()
                    }
                }
                // v7.0.2: 遇到人机验证时回退到软件内WebView登录（不跳外部浏览器，确保能提取cookie）
                val tvFallback = findViewById<android.widget.TextView>(R.id.tvFallbackLogin)
                tvFallback.setOnClickListener {
                    android.widget.Toast.makeText(this, "切换到软件内浏览器登录，请手动完成验证", android.widget.Toast.LENGTH_SHORT).show()
                    findViewById<android.widget.LinearLayout>(R.id.mobileLoginLayout).visibility = android.view.View.GONE
                    webView.visibility = android.view.View.VISIBLE
                    findViewById<android.view.View>(R.id.btnConfirmLogin)?.visibility = android.view.View.VISIBLE
                    val loginUrl = if (isCN) com.jichi.ob.api.GarminApi.LOGIN_URL_CN else com.jichi.ob.api.GarminApi.LOGIN_URL_COM
                    webView.loadUrl(loginUrl)
                }
                btnLogin.setOnClickListener {
                    val email = etEmail.text?.toString()?.trim() ?: ""
                    val password = etPassword.text?.toString() ?: ""
                    if (email.isEmpty() || password.isEmpty()) {
                        tvStatus.text = "请输入邮箱和密码"
                        return@setOnClickListener
                    }
                    btnLogin.isEnabled = false
                    btnLogin.text = "登录中..."
                    tvStatus.text = "正在通过mobile SSO登录..."
                    GlobalScope.launch(kotlinx.coroutines.Dispatchers.IO) {
                        try {
                            val garminApi = com.jichi.ob.api.GarminApi()
                            val cred = garminApi.loginMobile(email, password, isCN)
                            runOnUiThread {
                                if (cred != null) {
                                    tvStatus.text = "✅ 登录成功！"
                                    detected = true
                                    setResult(Activity.RESULT_OK, Intent()
                                        .putExtra(RESULT_TOKEN, cred)
                                        .putExtra(RESULT_LOGIN_TYPE, loginType))
                                    finish()
                                } else {
                                    btnLogin.isEnabled = true
                                    btnLogin.text = "登录"
                                    tvStatus.text = "❌ 登录失败，请检查邮箱密码\n（如开启了两步验证请先关闭）"
                                }
                            }
                        } catch (e: Exception) {
                            runOnUiThread {
                                btnLogin.isEnabled = true
                                btnLogin.text = "登录"
                                tvStatus.text = "❌ 登录异常: ${e.message}"
                            }
                        }
                    }
                }
                // v7.0.3修复: 佳明版本也必须初始化WebView，否则回退登录时loadUrl会跳系统浏览器
                progressBar = findViewById(R.id.progressBar)
                webView.settings.apply {
                    javaScriptEnabled = true
                    domStorageEnabled = true
                    @Suppress("DEPRECATION")
                    databaseEnabled = true
                    allowContentAccess = true
                    mixedContentMode = android.webkit.WebSettings.MIXED_CONTENT_ALWAYS_ALLOW
                    userAgentString = DESKTOP_UA
                }
                // v7.4.9: 只清除佳明相关域名cookie，保留其他平台登录态
                clearDomainCookies("connect.garmin.cn", "connect.garmin.com", "sso.garmin.com", "sso.garmin.cn")
                webView.addJavascriptInterface(GarminJsBridge(), "GarminBridge")
                webView.webViewClient = object : WebViewClient() {
                    override fun onPageStarted(view: WebView?, url: String?, favicon: Bitmap?) {
                        progressBar.visibility = android.view.View.VISIBLE
                    }
                    override fun onPageFinished(view: WebView?, url: String?) {
                        progressBar.visibility = android.view.View.GONE
                        checkCount++
                        if (checkCount == 1) webView.post(checkRunnable)
                        if (!detected) view?.evaluateJavascript(injectGarminListener(), null)
                    }
                    override fun shouldOverrideUrlLoading(view: WebView?, request: WebResourceRequest?): Boolean {
                    val url = request?.url?.toString()
                    Log.d(TAG, "[$loginType] shouldOverrideUrlLoading: $url")
                    if (url != null) urlHistory.add("shouldOverride: $url")
                    // v7.4.4: Wahoo回调URL在这里拦截，避免SSL错误导致捕获失败
                    if (loginType == TYPE_WAHOO && url != null && (url.contains("localhost:8080") || url.contains("wahoo/callback")) && !detected) {
                        val code = extractWahooCode(url)
                        if (!code.isNullOrEmpty()) {
                            detected = true
                            Log.i(TAG, "✅ Wahoo 授权码捕获(shouldOverrideUrlLoading) len=${code.length}")
                            setResult(Activity.RESULT_OK, Intent()
                                .putExtra(RESULT_TOKEN, code)
                                .putExtra(RESULT_LOGIN_TYPE, TYPE_WAHOO))
                            finish()
                            return true
                        }
                        // 如果URL包含error参数，记录错误
                        if (url.contains("error=")) {
                            Log.e(TAG, "❌ Wahoo授权错误: $url")
                        }
                    }
                    return false
                }
                }
                webView.webChromeClient = object : WebChromeClient() {
                    override fun onProgressChanged(view: WebView?, newProgress: Int) {
                        progressBar.progress = newProgress
                    }
                }
                return@onCreate
            }

            findViewById<com.google.android.material.button.MaterialButton>(R.id.btnConfirmLogin)?.setOnClickListener {
                confirmManualLogin()
            }
 
            progressBar = findViewById(R.id.progressBar)
            webView = findViewById(R.id.webView)
            webView.settings.apply {
                javaScriptEnabled = true
                domStorageEnabled = true
                @Suppress("DEPRECATION")
                databaseEnabled = true
                allowContentAccess = true
                mixedContentMode = WebSettings.MIXED_CONTENT_ALWAYS_ALLOW
                userAgentString = if (loginType == TYPE_WAHOO) MOBILE_UA else DESKTOP_UA  // v7.1.5: Wahoo用移动UA(桌面UA下授权页异常), 佳明用桌面UA
                if (loginType == TYPE_OUTBASE) {
                    useWideViewPort = true
                    loadWithOverviewMode = true
                }
            }
 
            // v7.4.9: 只清除佳明相关域名cookie，保留其他平台登录态
            clearDomainCookies("connect.garmin.cn", "connect.garmin.com", "sso.garmin.com", "sso.garmin.cn")

            // v6.5.6: 佳明专用JS桥——注入页面监听ticket（URL/fragment/postMessage/AJAX全拦截）
            if (loginType == TYPE_GARMIN_COM || loginType == TYPE_GARMIN_CN) {
                webView.addJavascriptInterface(GarminJsBridge(), "GarminBridge")
            }

            webView.webViewClient = object : WebViewClient() {
                override fun onPageStarted(view: WebView?, url: String?, favicon: Bitmap?) {
                    progressBar.visibility = android.view.View.VISIBLE
                    Log.d(TAG, "[$loginType] PageStarted: $url")
                    if (url != null) urlHistory.add("pageStarted: $url")
                    // v6.5.0: Wahoo OAuth2 回调 localhost:8080?code=xxx
                    if (loginType == TYPE_WAHOO && url != null && (url.contains("localhost:8080") || url.contains("wahoo/callback")) && url.contains("code=") && !detected) {
                        val code = extractWahooCode(url)
                        if (!code.isNullOrEmpty()) {
                            detected = true
                            Log.i(TAG, "✅ Wahoo 授权码捕获(onPageStarted) len=${code.length}")
                            setResult(Activity.RESULT_OK, Intent()
                                .putExtra(RESULT_TOKEN, code)
                                .putExtra(RESULT_LOGIN_TYPE, TYPE_WAHOO))
                            finish()
                        }
                    }
                    // v6.5.8: 佳明不再用ticket换OAuth2，改为检测JWT_WEB cookie（detectGarmin定时检测）
                    // 旧的ticket捕获逻辑已禁用，避免抢先返回旧格式凭证导致401
                }
                override fun onPageFinished(view: WebView?, url: String?) {
                    progressBar.visibility = android.view.View.GONE
                    checkCount++
                    Log.d(TAG, "[$loginType] PageFinished #$checkCount: $url")
                    if (checkCount == 1) webView.post(checkRunnable)
                    // v6.5.6: 佳明页面注入JS监听器（拦截ticket）
                    if ((loginType == TYPE_GARMIN_COM || loginType == TYPE_GARMIN_CN) && !detected) {
                        view?.evaluateJavascript(injectGarminListener(), null)
                    }
                }
                // v7.1.4: Wahoo localhost加载失败时也尝试从failingUrl捕获授权码
                override fun onReceivedError(view: WebView?, request: WebResourceRequest?, error: WebResourceError?) {
                    val failingUrl = request?.url?.toString()
                    Log.e(TAG, "[$loginType] Error: ${error?.description} for $failingUrl")
                    if (failingUrl != null) urlHistory.add("onError: $failingUrl")
                    if (loginType == TYPE_WAHOO && failingUrl != null && (failingUrl.contains("localhost:8080") || failingUrl.contains("wahoo/callback")) && failingUrl.contains("code=") && !detected) {
                        val code = extractWahooCode(failingUrl)
                        if (!code.isNullOrEmpty()) {
                            detected = true
                            Log.i(TAG, "✅ Wahoo 授权码捕获(onReceivedError) len=${code.length}")
                            setResult(Activity.RESULT_OK, Intent()
                                .putExtra(RESULT_TOKEN, code)
                                .putExtra(RESULT_LOGIN_TYPE, TYPE_WAHOO))
                            finish()
                        }
                    }
                }
                // v7.1.9: 忽略SSL证书错误，同时尝试从URL中提取授权码（https://localhost没有有效证书）
                override fun onReceivedSslError(view: WebView?, handler: android.webkit.SslErrorHandler?, error: android.net.http.SslError?) {
                    val sslUrl = error?.url
                    val webViewUrl = view?.url
                    Log.w(TAG, "[$loginType] onReceivedSslError: sslUrl=$sslUrl, webViewUrl=$webViewUrl")
                    if (sslUrl != null) urlHistory.add("sslError: $sslUrl")
                    if (webViewUrl != null) urlHistory.add("webViewUrl: $webViewUrl")
                    // v7.1.9: HTTPS localhost证书错误时，从sslUrl和webViewUrl中提取授权码
                    val candidateUrl = when {
                        sslUrl != null && sslUrl.contains("localhost:8080") && sslUrl.contains("code=") -> sslUrl
                        webViewUrl != null && webViewUrl.contains("localhost:8080") && webViewUrl.contains("code=") -> webViewUrl
                        else -> null
                    }
                    if (loginType == TYPE_WAHOO && candidateUrl != null && !detected) {
                        val code = extractWahooCode(candidateUrl)
                        if (!code.isNullOrEmpty()) {
                            detected = true
                            Log.i(TAG, "✅ Wahoo 授权码捕获(onReceivedSslError) len=${code.length}")
                            setResult(Activity.RESULT_OK, Intent()
                                .putExtra(RESULT_TOKEN, code)
                                .putExtra(RESULT_LOGIN_TYPE, TYPE_WAHOO))
                            finish()
                            handler?.cancel()
                            return
                        }
                    }
                    handler?.proceed()  // 忽略证书错误，继续加载
                }

                override fun onRenderProcessGone(view: WebView?, detail: android.webkit.RenderProcessGoneDetail?): Boolean {
                    Log.e(TAG, "[$loginType] WebView渲染进程崩溃: reason=${detail?.didCrash()}, didCrash=${detail?.didCrash()}")
                    runOnUiThread {
                        android.widget.Toast.makeText(this@LoginWebActivity, "页面渲染异常，正在重试...", android.widget.Toast.LENGTH_SHORT).show()
                        view?.let { wv ->
                            try { wv.stopLoading(); wv.clearHistory(); wv.reload() } catch (_: Exception) {}
                        }
                    }
                    return true  // 返回true表示App已处理，不杀死App
                }
                // v7.1.4: Wahoo授权码在URL加载前拦截，避免localhost加载失败导致onPageStarted不触发
                override fun shouldOverrideUrlLoading(view: WebView?, request: WebResourceRequest?): Boolean {
                    val url = request?.url?.toString()
                    Log.d(TAG, "[$loginType] shouldOverrideUrlLoading: $url")
                    if (url != null) urlHistory.add("shouldOverride: $url")
                    if (loginType == TYPE_WAHOO && url != null && (url.contains("localhost:8080") || url.contains("wahoo/callback")) && url.contains("code=") && !detected) {
                        val code = extractWahooCode(url)
                        if (!code.isNullOrEmpty()) {
                            detected = true
                            Log.i(TAG, "✅ Wahoo 授权码捕获(shouldOverride) len=${code.length}")
                            setResult(Activity.RESULT_OK, Intent()
                                .putExtra(RESULT_TOKEN, code)
                                .putExtra(RESULT_LOGIN_TYPE, TYPE_WAHOO))
                            finish()
                            return true
                        }
                    }
                    return false
                }

                // v7.1.5: 第四道防线——doUpdateVisitedHistory在URL变化(包括302重定向)时触发，最可靠
                override fun doUpdateVisitedHistory(view: WebView?, url: String?, isReload: Boolean) {
                    Log.d(TAG, "[$loginType] doUpdateVisitedHistory: $url")
                    if (url != null) urlHistory.add("doUpdate: $url")
                    if (loginType == TYPE_WAHOO && url != null && (url.contains("localhost:8080") || url.contains("wahoo/callback")) && url.contains("code=") && !detected) {
                        val code = extractWahooCode(url)
                        if (!code.isNullOrEmpty()) {
                            detected = true
                            Log.i(TAG, "✅ Wahoo 授权码捕获(doUpdateVisitedHistory) len=${code.length}")
                            setResult(Activity.RESULT_OK, Intent()
                                .putExtra(RESULT_TOKEN, code)
                                .putExtra(RESULT_LOGIN_TYPE, TYPE_WAHOO))
                            finish()
                        }
                    }
                    super.doUpdateVisitedHistory(view, url, isReload)
                }
            }
            webView.webChromeClient = object : WebChromeClient() {
                override fun onProgressChanged(view: WebView?, newProgress: Int) {
                    progressBar.progress = newProgress
                }
            }
 
            if (url.isNotBlank()) webView.loadUrl(url) else finish()
        } catch (e: Exception) {
            Log.e(TAG, "onCreate failed", e)
            finish()
        }
    }
 
    private fun detectLogin() {
        if (detected || isFinishing) return
        when (loginType) {
            TYPE_IGPSPORT -> detectIgpsport()
            TYPE_XINGZHE -> detectXingzhe()
            TYPE_MAGENE -> detectMagene()
            TYPE_OUTBASE -> detectOutbase()
            TYPE_BLACKBIRD -> detectBlackbird()
            TYPE_BRYTON -> detectBryton()
            TYPE_GARMIN_COM -> detectGarmin(cn = false)
            TYPE_GARMIN_CN -> detectGarmin(cn = true)
            TYPE_COROS_CN -> detectCoros(cn = true)
            TYPE_COROS_INT -> detectCoros(cn = false)
            TYPE_WAHOO -> detectWahoo()
        }
    }

    /** 黑鸟单车: 检测登录态cookie + 异步调用/api/user验证（JSESSIONID未登录也有，必须验证） */
    private fun detectBlackbird() {
        val cm = CookieManager.getInstance()
        val all = listOf(
            cm.getCookie("https://www.blackbirdsport.com"),
            cm.getCookie("www.blackbirdsport.com"),
            cm.getCookie("blackbirdsport.com")
        ).filterNotNull().joinToString("; ")
        if (all.length < 20) return
        if (!all.contains("JSESSIONID")) return
        if (!verifying.compareAndSet(false, true)) return
        // 异步验证：调用/api/user，返回有效用户信息才算真正登录
        Thread {
            try {
                val req = okhttp3.Request.Builder()
                    .url("https://www.blackbirdsport.com/api/user")
                    .addHeader("Cookie", all)
                    .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36")
                    .get().build()
                val resp = okhttp3.OkHttpClient().newCall(req).execute()
                val body = resp.body?.string() ?: ""
                val json = org.json.JSONObject(body)
                val ok = json.optString("status") == "ok"
                val data = json.optJSONObject("content") ?: json.optJSONObject("data")
                val hasUser = data?.optString("nickname")?.isNotEmpty() == true ||
                        data?.optString("userName")?.isNotEmpty() == true
                if (ok && hasUser) {
                    detected = true
                    Log.i(TAG, "✅ 黑鸟单车登录验证通过, cookie len=${all.length}")
                    runOnUiThread {
                        setResult(Activity.RESULT_OK, Intent()
                            .putExtra(RESULT_SESSION_ID, all)
                            .putExtra(RESULT_LOGIN_TYPE, TYPE_BLACKBIRD))
                        finish()
                    }
                } else {
                    Log.d(TAG, "黑鸟cookie验证未通过(未登录), 继续检测: ${body.take(80)}")
                    verifying.set(false)
                }
            } catch (e: Exception) {
                Log.w(TAG, "黑鸟验证异常: ${e.message}")
                verifying.set(false)
            }
        }.start()
    }

    /** 百锐腾: 检测登录态cookie */
    /** 百锐腾: 检测登录态 —— Meteor应用登录态存 localStorage(Meteor.loginToken/Meteor.userId) */
    private fun detectBryton() {
        val cm = CookieManager.getInstance()
        val cookie = listOf(
            cm.getCookie("https://active.brytonsport.com"),
            cm.getCookie("active.brytonsport.com"),
            cm.getCookie("brytonsport.com"),
            cm.getCookie(".brytonsport.com"),
            cm.getCookie("https://www.brytonsport.com")
        ).filterNotNull().joinToString("; ")
        // Meteor 登录后 token/userId 在 localStorage，必须读取（cookie 可能为空）
        webView.evaluateJavascript(
            "(function(){return JSON.stringify({t:localStorage.getItem('Meteor.loginToken')||'',u:localStorage.getItem('Meteor.userId')||''});})()"
        ) { res ->
            if (detected || isFinishing) return@evaluateJavascript
            try {
                val clean = res?.removePrefix("\"")?.removeSuffix("\"")?.replace("\\\"", "\"").orEmpty()
                val json = org.json.JSONObject(clean)
                val token = json.optString("t", "")
                val userId = json.optString("u", "")
                if (token.length > 10 && userId.isNotEmpty()) {
                    detected = true
                    Log.i(TAG, "✅ 百锐腾登录成功 (Meteor token len=${token.length}, userId=$userId)")
                    setResult(Activity.RESULT_OK, Intent()
                        .putExtra(RESULT_SESSION_ID, "$token;$userId;$cookie")
                        .putExtra(RESULT_LOGIN_TYPE, TYPE_BRYTON))
                    finish()
                } else if (cookie.length >= 20) {
                    detected = true
                    Log.i(TAG, "✅ 百锐腾登录成功 (cookie len=${cookie.length})")
                    setResult(Activity.RESULT_OK, Intent()
                        .putExtra(RESULT_SESSION_ID, ";;$cookie")
                        .putExtra(RESULT_LOGIN_TYPE, TYPE_BRYTON))
                    finish()
                }
            } catch (_: Exception) {}
        }
    }

    /** v6.7.2: 佳明 检测登录 —— 必须同时提取JWT_WEB + session两个cookie（gc-api缺一返回401）
     *  国际版必须用/app/路径登录（/modern/会被重定向到中国区）
     *  凭证格式：JSON {"jwt_web":"...","session":"...","csrf":"..."} */
    private fun detectGarmin(cn: Boolean) {
        if (!verifying.compareAndSet(false, true)) return
        val cm = CookieManager.getInstance()
        val host = if (cn) "connect.garmin.cn" else "connect.garmin.com"
        val cookieStr = cm.getCookie("https://$host") ?: ""
        val jwtWeb = extractCookieValue(cookieStr, "JWT_WEB")
        val sessionCookie = extractCookieValue(cookieStr, "session")
        if (jwtWeb.length < 20 || sessionCookie.length < 20) {
            Log.d(TAG, "佳明${if(cn)"中国"else"国际"} JWT_WEB len=${jwtWeb.length}, session len=${sessionCookie.length}，继续检测...")
            verifying.set(false)
            return
        }
        Log.i(TAG, "佳明${if(cn)"中国"else"国际"} JWT_WEB+session已捕获，正在提取CSRF...")
        // 从页面HTML提取CSRF token
        webView.evaluateJavascript(
            "(function(){try{" +
            "var m=document.querySelector('meta[name=csrf-token]');" +
            "if(m&&m.content)return m.content;" +
            "var html=document.documentElement.outerHTML||'';" +
            "var r=html.match(/name=[\"']csrf-token[\"'][^>]*content=[\"']([^\"']+)/);" +
            "if(r&&r[1])return r[1];" +
            "return '';}catch(e){return '';}})()"
        ) { csrfResult ->
            val csrf = csrfResult?.trim()?.trim('"') ?: ""
            if (!detected && !isFinishing) {
                detected = true
                // v7.4.8: 保存所有cookie（包括cf_clearance等Cloudflare验证cookie），避免后续请求再次触发验证
                val allCookies = CookieManager.getInstance().getCookie("https://$host") ?: ""
                val credential = org.json.JSONObject()
                    .put("jwt_web", jwtWeb)
                    .put("session", sessionCookie)
                    .put("csrf", csrf)
                    .put("cookies", allCookies)
                    .toString()
                Log.i(TAG, "✅ 佳明${if(cn)"中国"else"国际"}登录成功, JWT_WEB len=${jwtWeb.length}, session len=${sessionCookie.length}, 所有cookie len=${allCookies.length}, CSRF=${csrf.take(8)}...")
                runOnUiThread {
                    setResult(Activity.RESULT_OK, Intent()
                        .putExtra(RESULT_TOKEN, credential)
                        .putExtra(RESULT_LOGIN_TYPE, if (cn) TYPE_GARMIN_CN else TYPE_GARMIN_COM))
                    finish()
                }
            }
            verifying.set(false)
        }
    }

    /** v6.5.6: 佳明 ticket→OAuth2 统一处理（onPageStarted和detectGarmin共用） */
    private fun exchangeGarminTicket(ticket: String, cn: Boolean) {
        if (detected || isFinishing) return
        Thread {
            try {
                val serviceUrl = if (cn) "https://connect.garmin.cn/app"
                                 else "https://connect.garmin.com/modern/"
                val oauth2 = com.jichi.ob.api.GarminOAuthHelper.loginWithTicket(ticket, cn, serviceUrl)
                if (!detected && !isFinishing) {
                    detected = true
                    Log.i(TAG, "✅ 佳明${if (cn) "中国" else "国际"}登录成功, accessToken len=${oauth2.accessToken.length}")
                    runOnUiThread {
                        setResult(Activity.RESULT_OK, Intent()
                            .putExtra(RESULT_TOKEN, oauth2.toJson())
                            .putExtra(RESULT_LOGIN_TYPE, if (cn) TYPE_GARMIN_CN else TYPE_GARMIN_COM))
                        finish()
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "佳明ticket换token失败: ${e.message}")
                verifying.set(false)
            }
        }.start()
    }

    /** v6.5.0: 高驰 检测登录 —— 读取 CPL-coros-token / CPL-coros-region cookie */
    private fun detectCoros(cn: Boolean) {
        val host = if (cn) "https://trainingcn.coros.com" else "https://training.coros.com"
        val hostPlain = if (cn) "trainingcn.coros.com" else "training.coros.com"
        val cm = CookieManager.getInstance()
        val all = listOf(
            cm.getCookie(host),
            cm.getCookie(hostPlain)
        ).filterNotNull().joinToString("; ")
        val token = extractCookieValue(all, "CPL-coros-token")
        val region = extractCookieValue(all, "CPL-coros-region")
        if (token.length < 10) return
        detected = true
        val regionId = region.ifEmpty { if (cn) "2" else "1" }
        Log.i(TAG, "✅ 高驰${if (cn) "中国" else "国际"}登录成功, region=$regionId, token len=${token.length}")
        setResult(Activity.RESULT_OK, Intent()
            .putExtra(RESULT_SESSION_ID, "$token;$regionId;$all")
            .putExtra(RESULT_LOGIN_TYPE, if (cn) TYPE_COROS_CN else TYPE_COROS_INT))
        finish()
    }


    /** v7.1.6: 从URL中提取授权码（同时支持query ?code= 和 fragment #code=） */
    private fun extractWahooCode(url: String): String? {
        try {
            // 先尝试query参数
            val code = android.net.Uri.parse(url).getQueryParameter("code")
            if (!code.isNullOrEmpty()) return code
            // 再尝试fragment（#code=xxx）
            if (url.contains("#") && url.contains("code=")) {
                val fragment = url.substringAfter("#")
                val params = fragment.split("&")
                for (p in params) {
                    if (p.startsWith("code=")) return p.substringAfter("code=")
                }
            }
        } catch (_: Exception) {}
        return null
    }

    /** v6.5.0: Wahoo 检测登录 —— OAuth2 回调 localhost:8080?code= 已由 onPageStarted 处理，兜底读 webView.url */
    private fun detectWahoo() {
        val url = webView.url ?: return
        if (!url.contains("localhost:8080") || !url.contains("code=")) return
        val code = extractWahooCode(url)
        if (code.isNullOrEmpty()) return
        detected = true
        Log.i(TAG, "✅ Wahoo 授权码捕获(detectWahoo) len=${code.length}")
        setResult(Activity.RESULT_OK, Intent()
            .putExtra(RESULT_TOKEN, code)
            .putExtra(RESULT_LOGIN_TYPE, TYPE_WAHOO))
        finish()
    }

    /** 手动确认登录: 用户点击按钮后捕获当前凭证 */
    private fun confirmManualLogin() {
        if (detected) return
        detected = true
        val cm = CookieManager.getInstance()
        when (loginType) {
            TYPE_BLACKBIRD -> {
                val all = listOf(cm.getCookie("https://www.blackbirdsport.com"), cm.getCookie("www.blackbirdsport.com"), cm.getCookie("blackbirdsport.com")).filterNotNull().joinToString("; ")
                Log.i(TAG, "✅ 黑鸟单车手动确认登录, cookie len=${all.length}")
                setResult(Activity.RESULT_OK, Intent().putExtra(RESULT_SESSION_ID, all).putExtra(RESULT_LOGIN_TYPE, TYPE_BLACKBIRD))
            }
            TYPE_BRYTON -> {
                val all = listOf(cm.getCookie("https://active.brytonsport.com"), cm.getCookie("active.brytonsport.com"), cm.getCookie("brytonsport.com")).filterNotNull().joinToString("; ")
                // Meteor 登录态在 localStorage，读取后一并返回
                webView.evaluateJavascript(
                    "(function(){return JSON.stringify({t:localStorage.getItem('Meteor.loginToken')||'',u:localStorage.getItem('Meteor.userId')||''});})()"
                ) { res ->
                    try {
                        val clean = res?.removePrefix("\"")?.removeSuffix("\"")?.replace("\\\"", "\"").orEmpty()
                        val json = org.json.JSONObject(clean)
                        val token = json.optString("t", "")
                        val userId = json.optString("u", "")
                        Log.i(TAG, "✅ 百锐腾手动确认登录, cookie len=${all.length}, token=${token.length}, userId=$userId")
                        setResult(Activity.RESULT_OK, Intent()
                            .putExtra(RESULT_SESSION_ID, "$token;$userId;$all")
                            .putExtra(RESULT_LOGIN_TYPE, TYPE_BRYTON))
                    } catch (_: Exception) {
                        setResult(Activity.RESULT_OK, Intent().putExtra(RESULT_SESSION_ID, ";;$all").putExtra(RESULT_LOGIN_TYPE, TYPE_BRYTON))
                    }
                }
            }
            TYPE_IGPSPORT -> {
                webView.evaluateJavascript("(function(){try{return JSON.parse(localStorage.getItem('persist:app-store')).global.token;}catch(e){return '';}})()") { token ->
                    val t = token?.trim()?.trim('"') ?: ""
                    if (t.length > 20) {
                        setResult(Activity.RESULT_OK, Intent().putExtra(RESULT_TOKEN, t).putExtra(RESULT_LOGIN_TYPE, TYPE_IGPSPORT))
                        finish()
                    } else {
                        detected = false
                        runOnUiThread { android.widget.Toast.makeText(this, "未检测到登录态，请先完成登录", android.widget.Toast.LENGTH_SHORT).show() }
                    }
                }
                return
            }
            TYPE_XINGZHE -> {
                val sid = extractCookieValue(cm.getCookie("https://www.imxingzhe.com") ?: "", "sessionid")
                if (sid.length > 5) {
                    setResult(Activity.RESULT_OK, Intent().putExtra(RESULT_SESSION_ID, sid).putExtra(RESULT_LOGIN_TYPE, TYPE_XINGZHE))
                } else { detected = false; runOnUiThread { android.widget.Toast.makeText(this, "未检测到登录态", android.widget.Toast.LENGTH_SHORT).show() }; return }
            }
            TYPE_MAGENE -> {
                webView.evaluateJavascript("(function(){try{return localStorage.getItem('token')||'';}catch(e){return '';}})()") { token ->
                    val t = token?.trim()?.trim('"') ?: ""
                    if (t.length > 20) {
                        setResult(Activity.RESULT_OK, Intent().putExtra(RESULT_TOKEN, t).putExtra(RESULT_LOGIN_TYPE, TYPE_MAGENE))
                        finish()
                    } else {
                        detected = false
                        runOnUiThread { android.widget.Toast.makeText(this, "未检测到登录态", android.widget.Toast.LENGTH_SHORT).show() }
                    }
                }
                return
            }
            TYPE_OUTBASE -> {
                val sid = extractCookieValue(cm.getCookie("https://outbase.cn") ?: "", "sessionId")
                val gw = cm.getCookie("https://melon-gateway.immomo.com") ?: ""
                if (sid.length > 5) {
                    setResult(Activity.RESULT_OK, Intent().putExtra(RESULT_SESSION_ID, sid).putExtra(RESULT_EXTRA, gw).putExtra(RESULT_LOGIN_TYPE, TYPE_OUTBASE))
                } else { detected = false; runOnUiThread { android.widget.Toast.makeText(this, "未检测到登录态", android.widget.Toast.LENGTH_SHORT).show() }; return }
            }
            TYPE_GARMIN_COM -> {
                detectGarmin(cn = false)
                if (!detected) { detected = false; runOnUiThread { android.widget.Toast.makeText(this, "未检测到佳明国际登录态", android.widget.Toast.LENGTH_SHORT).show() }; return }
            }
            TYPE_GARMIN_CN -> {
                detectGarmin(cn = true)
                if (!detected) { detected = false; runOnUiThread { android.widget.Toast.makeText(this, "未检测到佳明中国登录态", android.widget.Toast.LENGTH_SHORT).show() }; return }
            }
            TYPE_COROS_CN -> {
                detectCoros(cn = true)
                if (!detected) { detected = false; runOnUiThread { android.widget.Toast.makeText(this, "未检测到高驰中国登录态", android.widget.Toast.LENGTH_SHORT).show() }; return }
            }
            TYPE_COROS_INT -> {
                detectCoros(cn = false)
                if (!detected) { detected = false; runOnUiThread { android.widget.Toast.makeText(this, "未检测到高驰国际登录态", android.widget.Toast.LENGTH_SHORT).show() }; return }
            }
            TYPE_WAHOO -> {
                detectWahoo()
                if (!detected) {
                    detected = false
                    // v7.1.7: 显示URL历史，帮助调试Wahoo授权码捕获
                    val historyText = if (urlHistory.isEmpty()) "（无URL记录）" else urlHistory.takeLast(20).joinToString("\n")
                    val currentUrl = webView.url ?: "（无）"
                    val debugMsg = "未检测到Wahoo授权码\n\n当前URL: $currentUrl\n\n最近URL历史:\n$historyText\n\n请截图发给开发者"
                    runOnUiThread {
                        android.app.AlertDialog.Builder(this)
                            .setTitle("Wahoo调试信息")
                            .setMessage(debugMsg)
                            .setPositiveButton("复制到剪贴板") { _, _ ->
                                val clipboard = getSystemService(android.content.Context.CLIPBOARD_SERVICE) as android.content.ClipboardManager
                                clipboard.setPrimaryClip(android.content.ClipData.newPlainText("Wahoo调试", debugMsg))
                                android.widget.Toast.makeText(this, "已复制到剪贴板", android.widget.Toast.LENGTH_SHORT).show()
                            }
                            .setNegativeButton("关闭", null)
                            .show()
                    }
                    return
                }
            }
        }
        finish()
    }

    /** iGPSPORT: localStorage['persist:app-store'] → JSON.global.token */
    private fun detectIgpsport() {
        webView.evaluateJavascript(
            """
            (function() {
                try {
                    var raw = localStorage.getItem('persist:app-store');
                    if (!raw) return 'NO_PERSIST';
                    var obj = JSON.parse(raw);
                    var global = JSON.parse(obj.global || '{}');
                    return global.token || 'NO_TOKEN';
                } catch(e) { return 'ERR:' + e.message; }
            })()
            """.trimIndent()
        ) { value ->
            try {
                val raw = value?.removeSurrounding("\"")?.replace("\\u0022", "\"")?.replace("\\/", "/") ?: ""
                if (raw.startsWith("Bearer ") && raw.length > 80) {
                    val token = raw.removePrefix("Bearer ")
                    // v7.6.0: 提取到token后先调API校验有效性，避免提取到旧的过期token（旧通行证）
                    lifecycleScope.launch(Dispatchers.IO) {
                        val username = try { com.jichi.ob.api.IgpsportApi().getUsername(token) } catch (e: Exception) { null }
                        runOnUiThread {
                            if (username != null) {
                                Log.i(TAG, "✅ iGPSPORT token有效 len=${token.length}")
                                detected = true
                                setResult(Activity.RESULT_OK, Intent()
                                    .putExtra(RESULT_TOKEN, token)
                                    .putExtra(RESULT_LOGIN_TYPE, TYPE_IGPSPORT))
                                finish()
                            } else {
                                // token无效 → 清localStorage+cookie强制重新登录（限2次避免死循环）
                                if (igpReloadCount < 2) {
                                    igpReloadCount++
                                    Log.w(TAG, "[igp] token无效(第${igpReloadCount}次)，清缓存重载登录页")
                                    webView.evaluateJavascript("localStorage.clear();") {
                                        // v7.6.0: 等cookie清除完成再reload，避免旧cookie仍在导致反复跳转
                                        CookieManager.getInstance().removeAllCookies {
                                            webView.postDelayed({ webView.reload() }, 300)
                                        }
                                    }
                                } else {
                                    Log.e(TAG, "[igp] token多次校验无效，放弃登录")
                                    detected = true
                                    setResult(Activity.RESULT_CANCELED)
                                    finish()
                                }
                            }
                        }
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "[igp] parse error", e)
            }
        }
    }
 
    /** 行者: sessionid cookie + 验证 */
    private fun detectXingzhe() {
        val cm = CookieManager.getInstance()
        val all = listOf(
            cm.getCookie("https://www.imxingzhe.com"),
            cm.getCookie("http://www.imxingzhe.com"),
            cm.getCookie("imxingzhe.com")
        ).filterNotNull().joinToString("; ")
        val sessionId = extractCookieValue(all, "sessionid")
        if (sessionId.length <= 10) return
        if (!verifying.compareAndSet(false, true)) return
 
        @OptIn(DelicateCoroutinesApi::class)
        GlobalScope.launch {
            val ok = try { XingzheApi().verifySession(sessionId) } catch (e: Exception) { false }
            runOnUiThread {
                verifying.set(false)
                if (ok && !detected && !isFinishing) {
                    detected = true
                    val csrf = extractCookieValue(all, "csrftoken")
                    Log.i(TAG, "✅ 行者登录成功, csrf=${csrf.take(8)}...")
                    setResult(Activity.RESULT_OK, Intent()
                        .putExtra(RESULT_SESSION_ID, sessionId)
                        .putExtra(RESULT_EXTRA, csrf)
                        .putExtra(RESULT_LOGIN_TYPE, TYPE_XINGZHE))
                    finish()
                }
            }
        }
    }
 
    /** 迈金: localStorage['token'] */
    private fun detectMagene() {
        webView.evaluateJavascript(
            """
            (function() {
                try {
                    var t = localStorage.getItem('token') || '';
                    var r = localStorage.getItem('refresh_token') || '';
                    if (!t) return 'NO_TOKEN';
                    return JSON.stringify({t: t, r: r});
                } catch(e) { return 'ERR:' + e.message; }
            })()
            """.trimIndent()
        ) { value ->
            try {
                val raw = value?.removeSurrounding("\"")
                    ?.replace("\\\"", "\"")
                    ?.replace("\\\\", "\\") ?: ""
                if (raw == "NO_TOKEN" || raw.startsWith("ERR:") || raw.length < 30) return@evaluateJavascript
                val json = org.json.JSONObject(raw)
                val token = json.optString("t", "")
                val refresh = json.optString("r", "")
                if (token.length > 30) {
                    detected = true
                    Log.i(TAG, "✅ 迈金token len=${token.length}")
                    setResult(Activity.RESULT_OK, Intent()
                        .putExtra(RESULT_TOKEN, token)
                        .putExtra(RESULT_EXTRA, refresh)
                        .putExtra(RESULT_LOGIN_TYPE, TYPE_MAGENE))
                    finish()
                }
            } catch (e: Exception) {
                Log.e(TAG, "[magene] parse error", e)
            }
        }
    }
 
    /** Outbase: sessionId cookie + 捕获网关cookie */
    private fun detectOutbase() {
        val cm = CookieManager.getInstance()
        val all = listOf(
            cm.getCookie("outbase.cn"),
            cm.getCookie("www.outbase.cn"),
            cm.getCookie("https://outbase.cn")
        ).filterNotNull().joinToString("; ")
        val sessionId = extractCookieValue(all, "sessionId")
            .ifEmpty { extractCookieValue(all, "session_id") }
        if (sessionId.length <= 10) return
 
        // 捕获 melon-gateway.immomo.com 域cookie（CDN鉴权可能用到）
        val gatewayCookies = listOf(
            cm.getCookie("https://melon-gateway.immomo.com"),
            cm.getCookie("melon-gateway.immomo.com"),
            cm.getCookie("https://immomo.com"),
            cm.getCookie(".immomo.com")
        ).filterNotNull().distinct().joinToString("; ")
        Log.d(TAG, "[outbase] sessionId len=${sessionId.length}, gatewayCookies len=${gatewayCookies.length}")
 
        detected = true
        setResult(Activity.RESULT_OK, Intent()
            .putExtra(RESULT_SESSION_ID, sessionId)
            .putExtra(RESULT_EXTRA, gatewayCookies)
            .putExtra(RESULT_LOGIN_TYPE, TYPE_OUTBASE))
        finish()
    }
 
    private fun extractCookieValue(cookie: String, key: String): String {
        cookie.split(";").forEach { part ->
            val kv = part.trim().split("=", limit = 2)
            if (kv.size == 2 && kv[0].trim().equals(key, ignoreCase = true)) return kv[1].trim()
        }
        return ""
    }
 
    override fun onDestroy() {
        detected = true
        try { webView.removeCallbacks(checkRunnable) } catch (_: Exception) {}
        super.onDestroy()
    }
 
    @Suppress("DEPRECATION")
    override fun onBackPressed() {
        if (webView.canGoBack()) webView.goBack()
        else { detected = true; super.onBackPressed() }
    }

    /** v6.5.6: 佳明JS桥——页面检测到ticket时回调Native */
    inner class GarminJsBridge {
        @android.webkit.JavascriptInterface
        fun onTicket(ticket: String) {
            if (detected || isFinishing) return
            if (ticket.length < 10 || !ticket.startsWith("ST-")) return
            detected = true
            Log.i(TAG, "✅ 佳明ticket捕获(JS桥): ${ticket.take(40)}...")
            val cn = loginType == TYPE_GARMIN_CN
            exchangeGarminTicket(ticket, cn)
        }
    }

    /** v6.5.6: 注入佳明ticket监听器JS（拦截URL/fragment/postMessage/AJAX响应中的ticket） */
    private fun injectGarminListener(): String {
        return """
        (function(){
            if (window.__garminTicketInjected) return;
            window.__garminTicketInjected = true;
            function extractTicket(str) {
                if (!str) return null;
                var m = str.match(/ticket=(ST-[A-Za-z0-9\-]+)/);
                return m ? m[1] : null;
            }
            function checkAndReport() {
                try {
                    var t = extractTicket(location.href) || extractTicket(location.search) || extractTicket(location.hash);
                    if (t && window.GarminBridge) { window.GarminBridge.onTicket(t); return true; }
                } catch(e) {}
                return false;
            }
            // 1. 立即检查
            checkAndReport();
            // 2. 轮询URL变化（JS重定向不会触发onPageStarted）
            setInterval(checkAndReport, 500);
            // 3. 监听postMessage
            window.addEventListener('message', function(e) {
                try {
                    var t = extractTicket(typeof e.data === 'string' ? e.data : JSON.stringify(e.data));
                    if (t && window.GarminBridge) window.GarminBridge.onTicket(t);
                } catch(err) {}
            });
            // 4. 拦截XMLHttpRequest响应（ticket可能在AJAX响应中）
            var origOpen = XMLHttpRequest.prototype.open;
            var origSend = XMLHttpRequest.prototype.send;
            XMLHttpRequest.prototype.open = function(method, url) {
                this.__url = url;
                return origOpen.apply(this, arguments);
            };
            XMLHttpRequest.prototype.send = function() {
                this.addEventListener('load', function() {
                    try {
                        var t = extractTicket(this.responseText) || extractTicket(this.__url);
                        if (t && window.GarminBridge) window.GarminBridge.onTicket(t);
                    } catch(e) {}
                });
                return origSend.apply(this, arguments);
            };
            // 5. 拦截fetch响应
            var origFetch = window.fetch;
            if (origFetch) {
                window.fetch = function() {
                    return origFetch.apply(this, arguments).then(function(resp) {
                        try {
                            var clone = resp.clone();
                            clone.text().then(function(text) {
                                var t = extractTicket(text);
                                if (t && window.GarminBridge) window.GarminBridge.onTicket(t);
                            });
                        } catch(e) {}
                        return resp;
                    });
                };
            }
        })();
        """.trimIndent()
    }

}
 


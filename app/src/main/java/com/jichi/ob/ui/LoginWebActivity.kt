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
import kotlinx.coroutines.DelicateCoroutinesApi
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
                userAgentString = DESKTOP_UA  // v6.5.2: 佳明改回桌面UA(Mobile UA下SSO登录页异常无反应)
                if (loginType == TYPE_OUTBASE) {
                    useWideViewPort = true
                    loadWithOverviewMode = true
                }
            }
 
            // 只清相关域cookie，保留其他平台登录态
            CookieManager.getInstance().removeAllCookies(null)

            // v6.5.6: 佳明专用JS桥——注入页面监听ticket（URL/fragment/postMessage/AJAX全拦截）
            if (loginType == TYPE_GARMIN_COM || loginType == TYPE_GARMIN_CN) {
                webView.addJavascriptInterface(GarminJsBridge(), "GarminBridge")
            }

            webView.webViewClient = object : WebViewClient() {
                override fun onPageStarted(view: WebView?, url: String?, favicon: Bitmap?) {
                    progressBar.visibility = android.view.View.VISIBLE
                    Log.d(TAG, "[$loginType] PageStarted: $url")
                    // v6.5.0: Wahoo OAuth2 回调 localhost:8080?code=xxx
                    if (loginType == TYPE_WAHOO && url != null && url.contains("localhost:8080") && url.contains("code=") && !detected) {
                        val code = try { android.net.Uri.parse(url).getQueryParameter("code") } catch (_: Exception) { null }
                        if (!code.isNullOrEmpty()) {
                            detected = true
                            Log.i(TAG, "✅ Wahoo 授权码捕获 len=${code.length}")
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
                override fun onReceivedError(view: WebView?, request: WebResourceRequest?, error: WebResourceError?) {
                    Log.e(TAG, "[$loginType] Error: ${error?.description} for ${request?.url}")
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
                override fun shouldOverrideUrlLoading(view: WebView?, request: WebResourceRequest?) = false
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
                val credential = org.json.JSONObject()
                    .put("jwt_web", jwtWeb)
                    .put("session", sessionCookie)
                    .put("csrf", csrf)
                    .toString()
                Log.i(TAG, "✅ 佳明${if(cn)"中国"else"国际"}登录成功, JWT_WEB len=${jwtWeb.length}, session len=${sessionCookie.length}, CSRF=${csrf.take(8)}...")
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

    /** v6.5.0: Wahoo 检测登录 —— OAuth2 回调 localhost:8080?code= 已由 onPageStarted 处理，兜底读 webView.url */
    private fun detectWahoo() {
        val url = webView.url ?: return
        if (!url.contains("localhost:8080") || !url.contains("code=")) return
        val code = try { android.net.Uri.parse(url).getQueryParameter("code") } catch (_: Exception) { null }
        if (code.isNullOrEmpty()) return
        detected = true
        Log.i(TAG, "✅ Wahoo 授权码捕获 len=${code.length}")
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
                if (!detected) { detected = false; runOnUiThread { android.widget.Toast.makeText(this, "未检测到Wahoo授权码", android.widget.Toast.LENGTH_SHORT).show() }; return }
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
                    detected = true
                    Log.i(TAG, "✅ iGPSPORT token len=${token.length}")
                    setResult(Activity.RESULT_OK, Intent()
                        .putExtra(RESULT_TOKEN, token)
                        .putExtra(RESULT_LOGIN_TYPE, TYPE_IGPSPORT))
                    finish()
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
 


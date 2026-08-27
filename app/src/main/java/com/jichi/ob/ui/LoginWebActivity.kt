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
                webView.postDelayed(this, 2000)
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
                userAgentString = DESKTOP_UA
                if (loginType == TYPE_OUTBASE) {
                    useWideViewPort = true
                    loadWithOverviewMode = true
                }
            }
 
            // 只清相关域cookie，保留其他平台登录态
            CookieManager.getInstance().removeAllCookies(null)
 
            webView.webViewClient = object : WebViewClient() {
                override fun onPageStarted(view: WebView?, url: String?, favicon: Bitmap?) {
                    progressBar.visibility = android.view.View.VISIBLE
                    Log.d(TAG, "[$loginType] PageStarted: $url")
                }
                override fun onPageFinished(view: WebView?, url: String?) {
                    progressBar.visibility = android.view.View.GONE
                    checkCount++
                    Log.d(TAG, "[$loginType] PageFinished #$checkCount: $url")
                    if (checkCount == 1) webView.post(checkRunnable)
                }
                override fun onReceivedError(view: WebView?, request: WebResourceRequest?, error: WebResourceError?) {
                    Log.e(TAG, "[$loginType] Error: ${error?.description} for ${request?.url}")
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
        }
    }

    /** 黑鸟单车: 检测登录态cookie */
    private fun detectBlackbird() {
        val cm = CookieManager.getInstance()
        val all = listOf(
            cm.getCookie("https://www.blackbirdsport.com"),
            cm.getCookie("www.blackbirdsport.com"),
            cm.getCookie("blackbirdsport.com")
        ).filterNotNull().joinToString("; ")
        if (all.length < 20) return
        // 黑鸟登录后会有用户相关cookie，检测是否包含登录标识
        if (all.contains("blackbird_token") || all.contains("bb_user") || all.contains("userInfo") || all.contains("login_token") || all.contains("blackbird_user") || all.contains("session_id")) {
            detected = true
            Log.i(TAG, "✅ 黑鸟单车登录成功, cookie len=${all.length}")
            setResult(Activity.RESULT_OK, Intent()
                .putExtra(RESULT_SESSION_ID, all)
                .putExtra(RESULT_LOGIN_TYPE, TYPE_BLACKBIRD))
            finish()
        }
    }

    /** 百锐腾: 检测登录态cookie */
    private fun detectBryton() {
        val cm = CookieManager.getInstance()
        val all = listOf(
            cm.getCookie("https://active.brytonsport.com"),
            cm.getCookie("active.brytonsport.com"),
            cm.getCookie("brytonsport.com")
        ).filterNotNull().joinToString("; ")
        if (all.length < 20) return
        if (all.contains("bryton_session") || all.contains("user_session") || all.contains("auth_token") || all.contains("bryton_user") || all.contains("loginState") || all.contains("access_token")) {
            detected = true
            Log.i(TAG, "✅ 百锐腾登录成功, cookie len=${all.length}")
            setResult(Activity.RESULT_OK, Intent()
                .putExtra(RESULT_SESSION_ID, all)
                .putExtra(RESULT_LOGIN_TYPE, TYPE_BRYTON))
            finish()
        }
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
                Log.i(TAG, "✅ 百锐腾手动确认登录, cookie len=${all.length}")
                setResult(Activity.RESULT_OK, Intent().putExtra(RESULT_SESSION_ID, all).putExtra(RESULT_LOGIN_TYPE, TYPE_BRYTON))
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
                    Log.i(TAG, "✅ 行者登录成功")
                    setResult(Activity.RESULT_OK, Intent()
                        .putExtra(RESULT_SESSION_ID, sessionId)
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
}
 


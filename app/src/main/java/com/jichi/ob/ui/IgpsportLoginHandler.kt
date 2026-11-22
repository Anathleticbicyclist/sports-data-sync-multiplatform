package com.jichi.ob.ui

import android.annotation.SuppressLint
import android.app.Activity
import android.content.Intent
import android.graphics.Bitmap
import android.util.Log
import android.webkit.CookieManager
import android.webkit.WebChromeClient
import android.webkit.WebResourceRequest
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.lifecycle.lifecycleScope
import com.jichi.ob.R
import com.google.android.material.appbar.MaterialToolbar
import com.jichi.ob.util.PrefsManager
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.RequestBody.Companion.toRequestBody

/**
 * iGPSPORT 原生登录处理器。
 *
 * 从 LoginWebActivity 抽出的六个方法（原行号以抽取时为准，见 LOGIN_WEB_SPLIT.md）：
 * setupIgpNativeLogin / switchToIgpWebLogin / switchBackToIgpSms /
 * setupIgpWebView / sendIgpSmsCode / loginIgpBySms / startIgpCountdown。
 * 方法体 verbatim 搬移，仅把对 Activity 私有成员的引用改为经 activity 前缀访问
 * （共享状态 webView / progressBar / detected / checkCount / igpHttpErrorCount /
 * checkRunnable 在 LoginWebActivity 中已改为 internal；MOBILE_UA 同样改为 internal；
 * confirmManualLogin 改为 internal；TAG 在此复用同一字符串 "LoginWeb"）。
 * 行为不变：短信验证码登录、WebView 兜底双向切换、60s 倒计时、HTTP 错误重载、渲染进程崩溃恢复。
 * 注意：sendIgpSmsCode / loginIgpBySms 调用的仍是原有 iGPSPORT 接口地址与 appId，不含任何密钥。
 */
class IgpsportLoginHandler(private val activity: LoginWebActivity) {

    companion object {
        private const val TAG = "LoginWeb"
    }

    fun setupIgpNativeLogin() {
        val igpLayout = activity.findViewById<android.widget.LinearLayout>(R.id.igpSmsLoginLayout)
        igpLayout.visibility = android.view.View.VISIBLE
        activity.findViewById<android.view.View>(R.id.btnConfirmLogin)?.visibility = android.view.View.GONE
        val toolbar = activity.findViewById<MaterialToolbar>(R.id.toolbar)
        toolbar.title = "登录 iGPSPORT"

        // v8.0.0: 底部"使用网页登录"按钮 → 切换 WebView 登录（兜底，收不到验证码/验证码失败时使用）
        activity.findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpWebFallback)?.setOnClickListener {
            switchToIgpWebLogin()
        }
        // v8.0.0: WebView 登录底部"切换回验证码登录"按钮
        activity.findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpBackToSms)?.setOnClickListener {
            switchBackToIgpSms()
        }

        val etPhone = activity.findViewById<com.google.android.material.textfield.TextInputEditText>(R.id.etIgpPhone)
        val etCode = activity.findViewById<com.google.android.material.textfield.TextInputEditText>(R.id.etIgpCode)
        val btnSend = activity.findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpSendCode)
        val btnLogin = activity.findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpLogin)
        val tvStatus = activity.findViewById<android.widget.TextView>(R.id.tvIgpStatus)

        // 发送验证码
        btnSend.setOnClickListener {
            val phone = etPhone.text?.toString()?.trim() ?: ""
            if (phone.length != 11 || !phone.all { it.isDigit() }) {
                tvStatus.text = "请输入正确的11位手机号"
                return@setOnClickListener
            }
            btnSend.isEnabled = false
            tvStatus.text = "正在发送验证码..."
            activity.lifecycleScope.launch(Dispatchers.IO) {
                val ok = sendIgpSmsCode(phone)
                activity.runOnUiThread {
                    if (ok) {
                        tvStatus.text = "✅ 验证码已发送，请查看手机短信"
                        startIgpCountdown(btnSend)
                    } else {
                        btnSend.isEnabled = true
                        tvStatus.text = "❌ 发送失败，请稍后重试（注意发送频率限制，勿频繁点击）"
                    }
                }
            }
        }

        // 验证码登录
        btnLogin.setOnClickListener {
            val phone = etPhone.text?.toString()?.trim() ?: ""
            val code = etCode.text?.toString()?.trim() ?: ""
            if (phone.length != 11 || !phone.all { it.isDigit() }) { tvStatus.text = "请输入正确的11位手机号"; return@setOnClickListener }
            if (code.length != 6) { tvStatus.text = "请输入6位验证码"; return@setOnClickListener }
            btnLogin.isEnabled = false
            btnLogin.text = "登录中..."
            tvStatus.text = "正在登录..."
            activity.lifecycleScope.launch(Dispatchers.IO) {
                val token = loginIgpBySms(phone, code)
                activity.runOnUiThread {
                    if (token != null) {
                        Log.i(TAG, "✅ iGPSPORT 原生验证码登录成功 len=${token.length}")
                        try { PrefsManager(activity).saveIgpsportToken(token) } catch (_: Exception) {}
                        activity.detected = true
                        activity.setResult(Activity.RESULT_OK, Intent()
                            .putExtra(LoginWebActivity.RESULT_TOKEN, token)
                            .putExtra(LoginWebActivity.RESULT_LOGIN_TYPE, LoginWebActivity.TYPE_IGPSPORT))
                        activity.finish()
                    } else {
                        btnLogin.isEnabled = true
                        btnLogin.text = "登录"
                        tvStatus.text = "❌ 登录失败：验证码错误或已过期，请重新获取后重试"
                    }
                }
            }
        }
    }

    fun switchToIgpWebLogin() {
        if (activity.isFinishing || activity.detected) return
        try {
            activity.findViewById<android.widget.LinearLayout>(R.id.igpSmsLoginLayout)?.visibility = android.view.View.GONE
            activity.findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpBackToSms)?.visibility = android.view.View.VISIBLE
            activity.findViewById<com.google.android.material.button.MaterialButton>(R.id.btnConfirmLogin)?.visibility = android.view.View.VISIBLE
            // 原生分支提前return，此处补注册"确认登录"按钮（网页登录完成后的手动确认）
            activity.findViewById<com.google.android.material.button.MaterialButton>(R.id.btnConfirmLogin)?.setOnClickListener {
                activity.confirmManualLogin()
            }
            activity.findViewById<android.widget.LinearLayout>(R.id.webLoginContainer)?.visibility = android.view.View.VISIBLE
            setupIgpWebView()
            // v8.5.8: 无条件彻底清除IGP登录态（cookie+localStorage+cache），确保不自动登录旧账号
            try {
                LoginWebActivity.clearPlatformWebLogin(LoginWebActivity.TYPE_IGPSPORT, wipeAllCookies = true)
                // 清WebView HTTP缓存
                activity.webView.clearCache(true)
                activity.webView.clearHistory()
            } catch (_: Exception) {}
            activity.checkCount = 0
            activity.detected = false
            // 等cookie清除完成再加载URL，避免旧cookie导致自动登录
            activity.webView.postDelayed({
                try { activity.webView.loadUrl(com.jichi.ob.api.IgpsportApi.LOGIN_URL) } catch (_: Exception) {}
            }, 500)
            activity.webView.post(activity.checkRunnable)
        } catch (e: Exception) {
            Log.e(TAG, "switchToIgpWebLogin 失败", e)
            android.widget.Toast.makeText(activity, "网页登录打开失败：${e.message}", android.widget.Toast.LENGTH_LONG).show()
        }
    }

    fun switchBackToIgpSms() {
        if (activity.isFinishing) return
        try {
            activity.detected = false
            activity.webView.removeCallbacks(activity.checkRunnable)
            activity.findViewById<android.widget.LinearLayout>(R.id.webLoginContainer)?.visibility = android.view.View.GONE
            activity.findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpBackToSms)?.visibility = android.view.View.GONE
            activity.findViewById<com.google.android.material.button.MaterialButton>(R.id.btnConfirmLogin)?.visibility = android.view.View.GONE
            // 重置验证码输入与倒计时状态，方便重新输入
            activity.findViewById<com.google.android.material.textfield.TextInputEditText>(R.id.etIgpPhone)?.text?.clear()
            activity.findViewById<com.google.android.material.textfield.TextInputEditText>(R.id.etIgpCode)?.text?.clear()
            activity.findViewById<com.google.android.material.textfield.TextInputEditText>(R.id.etIgpCode)?.isEnabled = true
            activity.findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpLogin)?.isEnabled = true
            activity.findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpLogin)?.text = "登录"
            activity.findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpSendCode)?.isEnabled = true
            activity.findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpSendCode)?.text = "发送验证码"
            activity.findViewById<android.widget.TextView>(R.id.tvIgpStatus)?.text = ""
            activity.findViewById<android.widget.LinearLayout>(R.id.igpSmsLoginLayout)?.visibility = android.view.View.VISIBLE
        } catch (e: Exception) {
            Log.e(TAG, "switchBackToIgpSms 失败", e)
        }
    }

    fun setupIgpWebView() {
        activity.progressBar = activity.findViewById(R.id.progressBar)
        activity.webView = activity.findViewById(R.id.webView)
        activity.webView.visibility = android.view.View.VISIBLE
        activity.webView.settings.apply {
            javaScriptEnabled = true
            domStorageEnabled = true
            @Suppress("DEPRECATION")
            databaseEnabled = true
            allowContentAccess = true
            mixedContentMode = WebSettings.MIXED_CONTENT_ALWAYS_ALLOW
            userAgentString = LoginWebActivity.MOBILE_UA
        }
        // 允许第三方cookie（登录页跨域写入/读取登录态）
        CookieManager.getInstance().setAcceptCookie(true)
        CookieManager.getInstance().setAcceptThirdPartyCookies(activity.webView, true)
        activity.webView.webViewClient = object : WebViewClient() {
            override fun onPageStarted(view: WebView?, url: String?, favicon: Bitmap?) {
                activity.progressBar.visibility = android.view.View.VISIBLE
                Log.d(TAG, "[igp] PageStarted: $url")
            }
            override fun onPageFinished(view: WebView?, url: String?) {
                activity.progressBar.visibility = android.view.View.GONE
                activity.checkCount++
                Log.d(TAG, "[igp] PageFinished #${activity.checkCount}: $url")
                if (activity.checkCount == 1) activity.webView.post(activity.checkRunnable)
            }
            // v7.7.3: IGP登录页HTTP错误(403/404等)自动重载一次，规避旧内核下偶发加载失败
            override fun onReceivedHttpError(view: WebView?, request: WebResourceRequest?, errorResponse: android.webkit.WebResourceResponse?) {
                val code = errorResponse?.statusCode ?: 0
                if (!activity.detected && activity.igpHttpErrorCount < 1 && code in listOf(403, 404, 500, 502, 503)) {
                    activity.igpHttpErrorCount++
                    Log.w(TAG, "[igp] HTTP $code，自动重载登录页")
                    view?.postDelayed({ activity.runOnUiThread { try { view.reload() } catch (_: Exception) {} } }, 500)
                }
            }
            override fun onRenderProcessGone(view: WebView?, detail: android.webkit.RenderProcessGoneDetail?): Boolean {
                Log.e(TAG, "[igp] WebView渲染进程崩溃: reason=${detail?.didCrash()}")
                activity.runOnUiThread {
                    android.widget.Toast.makeText(activity, "页面渲染异常，正在重试...", android.widget.Toast.LENGTH_SHORT).show()
                    view?.let { wv -> try { wv.stopLoading(); wv.clearHistory(); wv.reload() } catch (_: Exception) {} }
                }
                return true
            }
        }
        activity.webView.webChromeClient = object : WebChromeClient() {
            override fun onProgressChanged(view: WebView?, newProgress: Int) {
                activity.progressBar.progress = newProgress
            }
        }
    }

    fun sendIgpSmsCode(phone: String): Boolean {
        return try {
            val client = okhttp3.OkHttpClient.Builder().connectTimeout(20, java.util.concurrent.TimeUnit.SECONDS).build()
            val body = """{"type":1,"username":"$phone"}""".toRequestBody("application/json; charset=utf-8".toMediaType())
            val req = okhttp3.Request.Builder()
                .url("https://prod.zh.igpsport.com/service/auth/account/SendVerificationCode")
                .post(body)
                .addHeader("Content-Type", "application/json")
                .addHeader("User-Agent", "Mozilla/5.0 (Linux; Android 14) Chrome/131.0.0.0 Mobile")
                .build()
            val resp = client.newCall(req).execute()
            val bodyStr = resp.body?.string() ?: ""
            val json = org.json.JSONObject(bodyStr)
            Log.i(TAG, "sendIgpSmsCode: ${json.optString("message", "ok")} code=${json.optInt("code", -1)}")
            json.optInt("code", -1) == 0
        } catch (e: Exception) { Log.e(TAG, "sendIgpSmsCode 异常", e); false }
    }

    fun loginIgpBySms(phone: String, code: String): String? {
        return try {
            val client = okhttp3.OkHttpClient.Builder().connectTimeout(20, java.util.concurrent.TimeUnit.SECONDS).build()
            val body = """{"phone":"$phone","code":"$code","appId":"igpsport-web"}""".toRequestBody("application/json; charset=utf-8".toMediaType())
            val req = okhttp3.Request.Builder()
                .url("https://prod.zh.igpsport.com/service/auth/account/login/phone")
                .post(body)
                .addHeader("Content-Type", "application/json")
                .addHeader("User-Agent", "Mozilla/5.0 (Linux; Android 14) Chrome/131.0.0.0 Mobile")
                .build()
            val resp = client.newCall(req).execute()
            val bodyStr = resp.body?.string() ?: ""
            val json = org.json.JSONObject(bodyStr)
            if (json.optInt("code", -1) == 0) {
                val token = json.optJSONObject("data")?.optString("access_token", "") ?: ""
                if (token.isNotEmpty()) token else null
            } else {
                Log.w(TAG, "loginIgpBySms 失败: ${json.optString("message", bodyStr.take(100))}")
                null
            }
        } catch (e: Exception) { Log.e(TAG, "loginIgpBySms 异常", e); null }
    }

    fun startIgpCountdown(btn: com.google.android.material.button.MaterialButton) {
        btn.isEnabled = false
        var remain = 60
        val runnable = object : Runnable {
            override fun run() {
                remain--
                if (remain <= 0) {
                    btn.isEnabled = true
                    btn.text = "发送验证码"
                } else {
                    btn.text = "${remain}s"
                    btn.postDelayed(this, 1000)
                }
            }
        }
        btn.post(runnable)
    }
}

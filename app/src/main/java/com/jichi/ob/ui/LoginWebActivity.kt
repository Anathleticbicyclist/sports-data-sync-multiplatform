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
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.google.android.material.appbar.MaterialToolbar
import com.jichi.ob.R
import com.jichi.ob.BuildConfig
import com.jichi.ob.api.MageneApi
import com.jichi.ob.api.XingzheApi
import com.jichi.ob.model.DataSource
import com.jichi.ob.util.PrefsManager
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.DelicateCoroutinesApi
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.RequestBody.Companion.toRequestBody
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
        const val TYPE_SUUNTO = "suunto"
        const val TYPE_TWO_BULU = "2bulu"
        const val TYPE_STRAVA = "strava"
        const val TYPE_POLAR = "polar"
        const val TYPE_FITBIT = "fitbit"
        const val TYPE_WITHINGS = "withings"
        const val TYPE_TRAININGPEAKS = "trainingpeaks"
        const val RESULT_TOKEN = "***"
        const val RESULT_SESSION_ID = "session_id"
        const val RESULT_LOGIN_TYPE = "login_type"
        const val RESULT_EXTRA = "extra"  // 迈金refresh_token / Outbase网关cookie
 
        private const val MOBILE_UA = "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36"
        private const val DESKTOP_UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"

        /**
         * v7.7.3: 注销时清除指定平台的 WebView 登录态（localStorage + cookie），不影响其他平台登录态。
         * 修复"注销后重新登录仍用旧账号自动登录"的问题。
         * 仅按平台域名清除，Wahoo等平台的令牌存于App内（PrefsManager），天然隔离不受影响。
         *
         * v7.7.4: 新增 wipeAllCookies 参数。WebView 登录类平台（高驰等）的登录态是 HttpOnly cookie
         * （如 CPL-coros-token），CookieManager.setCookie(过期) 无法覆盖 HttpOnly cookie，按域清除无效，
         * 导致注销后重登仍沿用旧账号。故对这类平台清空全部 WebView cookie（App 内凭证是日常主凭证，
         * 已登录平台不受影响；仅"需要重新打开 WebView 登录"的平台受影响，而它们本就处于重登流程）。
         */
        fun clearPlatformWebLogin(type: String, wipeAllCookies: Boolean = false) {
            val origins: List<String>
            val domains: List<String>
            when (type) {
                TYPE_IGPSPORT -> {
                    origins = listOf("https://login.passport.igpsport.cn", "https://app.igpsport.cn", "https://prod.zh.igpsport.com")
                    domains = listOf("login.passport.igpsport.cn", "app.igpsport.cn", "igpsport.cn", "prod.zh.igpsport.com")
                }
                TYPE_XINGZHE -> { origins = emptyList(); domains = listOf("www.imxingzhe.com", "imxingzhe.com") }
                TYPE_MAGENE -> { origins = listOf("https://otm.onelap.cn", "https://onelap.cn"); domains = listOf("otm.onelap.cn", "onelap.cn") }
                TYPE_BLACKBIRD -> { origins = emptyList(); domains = listOf("www.blackbirdsport.com", "blackbirdsport.com") }
                TYPE_BRYTON -> { origins = listOf("https://active.brytonsport.com", "https://www.brytonsport.com"); domains = listOf("active.brytonsport.com", "brytonsport.com") }
                TYPE_OUTBASE -> { origins = listOf("https://outbase.cn", "https://www.outbase.cn"); domains = listOf("outbase.cn", "www.outbase.cn", "melon-gateway.immomo.com", "immomo.com") }
                TYPE_GARMIN_COM -> { origins = listOf("https://connect.garmin.com", "https://sso.garmin.com"); domains = listOf("connect.garmin.com", "sso.garmin.com", "garmin.com") }
                TYPE_GARMIN_CN -> { origins = listOf("https://connect.garmin.cn", "https://sso.garmin.cn"); domains = listOf("connect.garmin.cn", "sso.garmin.cn", "garmin.cn") }
                TYPE_COROS_CN -> { origins = listOf("https://trainingcn.coros.com"); domains = listOf("trainingcn.coros.com", "coros.com") }
                TYPE_COROS_INT -> { origins = listOf("https://training.coros.com"); domains = listOf("training.coros.com", "coros.com") }
                TYPE_WAHOO -> { origins = listOf("https://sso.wahoo.com", "https://api.wahooligan.com"); domains = listOf("sso.wahoo.com", "api.wahooligan.com", "wahoo.com") }
                TYPE_SUUNTO -> { origins = listOf("https://cloudapi-oauth.suunto.com", "https://cloudapi.suunto.com"); domains = listOf("cloudapi-oauth.suunto.com", "cloudapi.suunto.com", "suunto.com", "localhost") }
                TYPE_STRAVA -> { origins = emptyList(); domains = listOf("www.strava.com", "strava.com", "localhost") }
                TYPE_POLAR -> { origins = emptyList(); domains = listOf("flow.polar.com", "polar.com", "polaraccesslink.com", "localhost") }
                TYPE_FITBIT -> { origins = emptyList(); domains = listOf("www.fitbit.com", "fitbit.com", "api.fitbit.com", "localhost") }
                TYPE_WITHINGS -> { origins = emptyList(); domains = listOf("account.withings.com", "withings.com", "api.health.nokia.com", "localhost") }
                TYPE_TRAININGPEAKS -> { origins = emptyList(); domains = listOf("oauth.trainingpeaks.com", "trainingpeaks.com", "api.trainingpeaks.com", "localhost") }
                TYPE_TWO_BULU -> { origins = listOf("https://www.2bulu.com", "https://2bulu.com"); domains = listOf("www.2bulu.com", "2bulu.com") }
                else -> return
            }
            // 清除localStorage（按origin）
            try {
                val ws = android.webkit.WebStorage.getInstance()
                origins.forEach { o -> try { ws.deleteOrigin(o) } catch (_: Exception) {} }
                // v8.5.8: iGPSPORT注销后仍自动登录旧账号——deleteOrigin不够彻底，
                // 额外清所有WebStorage数据（cookie按域名已单独清，不影响其他平台）
                if (type == TYPE_IGPSPORT) {
                    try { ws.deleteAllData() } catch (_: Exception) {}
                }
            } catch (_: Exception) {}
            // 清除cookie（按域名）
            val cm = CookieManager.getInstance()
            domains.forEach { domain ->
                try {
                    listOf("https://$domain", "http://$domain").forEach { host ->
                        val cookies = cm.getCookie(host) ?: ""
                        cookies.split(";").forEach { cookie ->
                            val name = cookie.substringBefore("=").trim()
                            if (name.isNotEmpty()) {
                                cm.setCookie(host, "$name=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/")
                                cm.setCookie(host, "$name=; expires=Thu, 01 Jan 1970 00:00:00 GMT; domain=.$domain; path=/")
                            }
                        }
                    }
                } catch (_: Exception) {}
            }
            // v7.7.4: 清空全部WebView cookie，确保 HttpOnly 登录态（如高驰 CPL-coros-token）也被清除，
            // 使注销后重新登录可切换账号（不再沿用旧账号自动登录）
            // v8.5.8: IGP额外强制全量清理（原生API登录+WebView登录双路径，必须清干净）
            if (wipeAllCookies || type == TYPE_IGPSPORT) {
                try {
                    val latch = java.util.concurrent.CountDownLatch(1)
                    cm.removeAllCookies { latch.countDown() }
                    try { latch.await(3, java.util.concurrent.TimeUnit.SECONDS) } catch (_: Exception) {}
                } catch (_: Exception) {}
            }
            // v8.5.8: IGP额外清WebStorage所有数据
            if (type == TYPE_IGPSPORT) {
                try {
                    android.webkit.WebStorage.getInstance().deleteAllData()
                } catch (_: Exception) {}
            }
            cm.flush()
            Log.i(TAG, "clearPlatformWebLogin: 已清除 $type 的WebView登录态(localStorage+cookie${if (wipeAllCookies) "+全量cookie" else ""})")
        }
    }
 
    private lateinit var webView: WebView
    private lateinit var progressBar: ProgressBar
    private var loginType = TYPE_XINGZHE
    private var detected = false
    private var igpReloadCount = 0  // v7.6.0: iGPSPORT token校验失败重载计数(限2次)
    private var igpHttpErrorCount = 0  // v7.7.3: iGPSPORT HTTP错误自动重载计数(限1次)
    private var pendingClean = false       // v7.7.3: 该平台未登录(刚注销)时，首次加载后清理残留登录态再重载
    private var pendingCleanDone = false   // v7.7.3: 清理是否已执行
    private val urlHistory = mutableListOf<String>()  // v7.1.7: URL历史记录，用于调试Wahoo授权码捕获
    private val verifying = AtomicBoolean(false)
    private var checkCount = 0
    private var lastReportedLoginError: String? = null  // v8.3.4: 佳明WebView页面错误去重（同一错误只弹一次）
 
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

    /** v7.7.3: loginType → DataSource（用于判断该平台是否已登录） */
    private fun loginTypeToDataSource(): DataSource = when (loginType) {
        TYPE_IGPSPORT -> DataSource.IGPSPORT
        TYPE_XINGZHE -> DataSource.XINGZHE
        TYPE_MAGENE -> DataSource.MAGENE
        TYPE_BLACKBIRD -> DataSource.BLACKBIRD
        TYPE_BRYTON -> DataSource.BRYTON
        TYPE_OUTBASE -> DataSource.OUTBASE
        TYPE_GARMIN_COM -> DataSource.GARMIN_COM
        TYPE_GARMIN_CN -> DataSource.GARMIN_CN
        TYPE_COROS_CN -> DataSource.COROS_CN
        TYPE_COROS_INT -> DataSource.COROS_INT
        TYPE_WAHOO -> DataSource.WAHOO
        TYPE_SUUNTO -> DataSource.SUUNTO
        TYPE_STRAVA -> DataSource.STRAVA
        TYPE_POLAR -> DataSource.POLAR
        TYPE_FITBIT -> DataSource.FITBIT
        TYPE_WITHINGS -> DataSource.WITHINGS
        TYPE_TRAININGPEAKS -> DataSource.TRAININGPEAKS
        TYPE_TWO_BULU -> DataSource.TWO_BULU
        else -> DataSource.IGPSPORT
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        try {
            setContentView(R.layout.activity_login_web)
            loginType = intent?.getStringExtra(EXTRA_LOGIN_TYPE) ?: TYPE_XINGZHE
            val url = intent?.getStringExtra(EXTRA_URL) ?: ""

            // v7.7.3-hw 鸿蒙特别版: iGPSPORT 走原生验证码登录，绕开旧WebView渲染白屏（华为旧机型打不开登录页）
            if (loginType == TYPE_IGPSPORT && BuildConfig.IGP_NATIVE_LOGIN) {
                setupIgpNativeLogin()
                return
            }
 
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
                TYPE_SUUNTO -> "登录 松拓"
                TYPE_STRAVA -> "登录 Strava"
                TYPE_POLAR -> "登录 Polar"
                TYPE_FITBIT -> "登录 Fitbit"
                TYPE_WITHINGS -> "登录 Withings"
                TYPE_TRAININGPEAKS -> "登录 TrainingPeaks"
                TYPE_TWO_BULU -> "登录 两步路"
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
                    // v8.0.9 修复: 佳明国际 fallback 同样要显示 webLoginContainer（8.0 系列白屏）
                    findViewById<android.widget.LinearLayout>(R.id.webLoginContainer)?.visibility = android.view.View.VISIBLE
                    webView.visibility = android.view.View.VISIBLE
                    findViewById<android.view.View>(R.id.btnConfirmLogin)?.visibility = android.view.View.VISIBLE
                    val loginUrl = if (isCN) com.jichi.ob.api.GarminApi.LOGIN_URL_CN else com.jichi.ob.api.GarminApi.LOGIN_URL_COM
                    webView.loadUrl(loginUrl)
                }
                // v8.2.1: 手动清空风控（带确认提示；不依赖登录态）
                findViewById<android.widget.TextView>(R.id.tvClearCooldown)?.setOnClickListener {
                    androidx.appcompat.app.AlertDialog.Builder(this)
                        .setTitle("清空风控")
                        .setMessage("若清空风控后强行尝试登录，可能增加冷却时间，你确定清空吗？")
                        .setPositiveButton("确定清空") { _, _ ->
                            com.jichi.ob.api.GarminApi.clearAllCooldownFor(com.jichi.ob.model.DataSource.GARMIN_COM)
                            android.widget.Toast.makeText(this, "佳明国际：风控冷却缓存已清空，可重新登录", android.widget.Toast.LENGTH_SHORT).show()
                        }
                        .setNegativeButton("取消", null)
                        .show()
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
                    val garminApi = com.jichi.ob.api.GarminApi()
                    val dsCooldown = if (isCN) DataSource.GARMIN_CN else DataSource.GARMIN_COM
                    // v8.1.9: 冷却缓存不再硬拦截登录（覆盖安装保留的旧缓存会误报"24小时后登录"；分身/新装无缓存可正常登录）。
                    // 仅提示；OAuth1 表单直连直接放行，登录成功后自动清除冷却缓存
                    val remainMin = com.jichi.ob.api.GarminApi.cooldownRemainAnyMinutes(dsCooldown, email)
                    tvStatus.text = if (remainMin > 0) {
                        "检测到本地冷却缓存(${remainMin}分钟)，已跳过直接尝试登录（登录成功将自动清除缓存）..."
                    } else {
                        "正在通过佳明官方老版直连通道登录..."
                    }
                    GlobalScope.launch(kotlinx.coroutines.Dispatchers.IO) {
                        try {
                            // v8.3.4: 开启佳明登录调试日志（写入App日志页，方便排障）
                            com.jichi.ob.api.GarminApi.enableDebugLogs = true
                            // v8.1.9: 国际版优先 OAuth1 账号密码直连（绕开 mobile SSO 每天一次限制与 WebView 按钮风控），
                            // 失败再降级 mobile SSO；中国版保持 mobile SSO 优先，OAuth1 兜底
                            // v8.3.4: 致命错误（密码错误/两步验证）为账号级——一旦出现立即停止全部后续通道，
                            // 弹窗让用户检查对应项后再登录（避免污染所有通道触发风控）；弹窗提供「仍然继续」强制忽略
                            suspend fun doGarminLogin(ignoreFatal: Boolean) {
                                com.jichi.ob.api.GarminApi.lastGarminAuthError = null
                                com.jichi.ob.api.GarminApi.addDebugLog("[${if (isCN) "佳明中国" else "佳明国际"}] 开始登录 email=${email.take(3)}*** ignoreFatal=$ignoreFatal")
                                var cred: String? = null
                                if (!isCN) cred = garminApi.loginOAuth1(email, password, false)
                                var fatalErr = if (ignoreFatal) null else com.jichi.ob.api.GarminApi.lastGarminAuthError
                                if (cred == null && fatalErr == null) cred = garminApi.loginMobile(email, password, isCN)
                                if (cred == null && fatalErr == null) fatalErr = com.jichi.ob.api.GarminApi.lastGarminAuthError
                                if (cred == null && fatalErr == null && isCN) cred = garminApi.loginOAuth1(email, password, true)
                                // v8.1.9: 登录成功自动清除该账号本地冷却缓存（覆盖安装保留的旧缓存不再误拦截后续登录）
                                if (cred != null) com.jichi.ob.api.GarminApi.clearCooldownFor(dsCooldown, email)
                                val finalCred = cred
                                val finalFatal = fatalErr
                                com.jichi.ob.api.GarminApi.addDebugLog("[${if (isCN) "佳明中国" else "佳明国际"}] 登录结果: ${if (finalCred!=null) "成功" else "失败"} fatal=$finalFatal")
                                runOnUiThread {
                                    if (finalCred != null) {
                                        tvStatus.text = "✅ 登录成功！"
                                        detected = true
                                        setResult(Activity.RESULT_OK, Intent()
                                            .putExtra(RESULT_TOKEN, finalCred)
                                            .putExtra(RESULT_LOGIN_TYPE, loginType))
                                        finish()
                                    } else {
                                        btnLogin.isEnabled = true
                                        btnLogin.text = "登录"
                                        // v8.3.4: 登录失败时截取最近日志（运行日志页同源，保证窗口日志与实际日志一致）
                                        flushGarminDebugToPersist()
                                        var garminLogTail = try {
                                            com.jichi.ob.util.PrefsManager(this@LoginWebActivity).getPersistLogs().takeLast(18).joinToString("\n")
                                        } catch (_: Exception) { "" }
                                        if (garminLogTail.isBlank()) {
                                            garminLogTail = synchronized(com.jichi.ob.api.GarminApi.debugLogs) {
                                                com.jichi.ob.api.GarminApi.debugLogs.takeLast(18).joinToString("\n")
                                            }
                                        }
                                        fun buildMsgWithLog(body: String): String =
                                            if (garminLogTail.isNotBlank()) body + "\n\n——— 佳明登录日志 ———\n" + garminLogTail else body
                                        if (finalFatal != null) {
                                            // v8.3.4: 致命错误直接提示对应项，让用户检查后再登录（不再弹通用风控文案、不再尝试后续通道）
                                            val fatalMsg = when (finalFatal) {
                                                "密码错误" -> "账号或密码不匹配，请检查邮箱和密码后重试。\n（佳明对错误密码敏感：输错一次即可能触发风控，继续尝试其他通道会导致 24H 无法登录，请先确认密码正确）"
                                                "两步验证" -> "检测到该账号开启了两步验证（短信/邮箱验证码）。\n请先在佳明官网账号设置中关闭两步验证，再回 App 登录。\n（继续尝试其他通道会触发风控，可能导致 24H 无法登录）"
                                                "风控限流" -> "该账号已触发佳明风控限流（可能是密码有误，也可能是该账号被临时限流）。\n请先检查账号密码是否正确，并等待冷却结束后再登录。\n（继续尝试其他通道会触发更严风控，可能导致 24H 无法登录）"
                                                else -> finalFatal
                                            }
                                            tvStatus.text = "❌ 登录失败：$finalFatal"
                                            val fatalMsgFull = fatalMsg + "\n\n如果不确定可以将报错日志通过抖音发给「多吃两口」排查。"
                                            // v8.3.4: 统一美化弹窗（可滑动日志 + 复制/仍然继续登陆/知道了；仍然继续需二次确认）
                                            showGarminResultDialog(
                                                title = "佳明${if (isCN) "中国" else "国际"}登录失败",
                                                guide = fatalMsgFull,
                                                logTail = garminLogTail,
                                                showContinue = true,
                                                onContinue = {
                                                    btnLogin.isEnabled = false
                                                    btnLogin.text = "登录中(忽略警告)..."
                                                    GlobalScope.launch(kotlinx.coroutines.Dispatchers.IO) { doGarminLogin(true) }
                                                }
                                            )
                                            return@runOnUiThread
                                        }
                                        // v7.7.3: 区分常见失败原因，给出佳明风控提示（佳明对频繁登录有限流，冷却期约数小时到一天）
                                        // v7.9.0: 若已触发429冷却，优先提示冷却时长（避免用户误以为密码错误反复重试）
                                        // v7.9.1: 按该账号任一通道冷却提示（多通道轮换后仍失败，说明全部通道受限或密码错误）
                                        val cooldownMin = com.jichi.ob.api.GarminApi.cooldownRemainAnyMinutes(dsCooldown, email)
                                        val failText = if (cooldownMin > 0) {
                                            "登录失败，该账号所有佳明登录通道均触发风控限流\n请约${cooldownMin}分钟后重试（冷却期内反复尝试会延长封禁）"
                                        } else {
                                            "登录失败，请检查邮箱密码\n（开启了两步验证需先关闭）\n佳明对频繁登录有风控：请保证账号密码一次输对，勿同时登录开发体验版与正式版；多次失败会触发限流，请过几小时或次日再试"
                                        }
                                        tvStatus.text = "❌ $failText"
                                        val failTextFull = failText + "\n\n若已开启两步验证（短信/邮箱验证码），请关闭后再试；否则请确认账号密码正确。\n\n如果不确定可以将报错日志通过抖音发给「多吃两口」排查。"
                                        // v8.2.3.1: 登录失败/两步验证/密码错误必须弹窗提醒，不能只落在状态栏
                                        showGarminResultDialog(
                                            title = "佳明${if (isCN) "中国" else "国际"}登录失败",
                                            guide = failTextFull,
                                            logTail = garminLogTail,
                                            showContinue = false,
                                            onContinue = {}
                                        )
                                    }
                                }
                            }
                            doGarminLogin(false)
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
                        if (loginType == TYPE_TWO_BULU && url != null) twoBuluInjectKmlClick(url)
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
                    if (isOAuth2CallbackType(loginType) && url != null && (url.contains("localhost:8080") || url.contains("wahoo/callback")) && !detected) {
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
            // v8.0.9 修复: 8.0 系列 WebView 白屏——webLoginContainer 初始为 gone，
            // 此前只有 iGPSPORT 切换逻辑会显示它；迈金/Outbase/行者/黑鸟/百锐腾/高驰/佳明等
            // 所有走通用网页登录的平台必须显式显示容器，否则 WebView 一直隐藏（白屏）
            findViewById<android.widget.LinearLayout>(R.id.webLoginContainer)?.visibility = android.view.View.VISIBLE
 
            progressBar = findViewById(R.id.progressBar)
            webView = findViewById(R.id.webView)
            webView.settings.apply {
                javaScriptEnabled = true
                domStorageEnabled = true
                @Suppress("DEPRECATION")
                databaseEnabled = true
                allowContentAccess = true
                mixedContentMode = WebSettings.MIXED_CONTENT_ALWAYS_ALLOW
                // v7.7.3: iGPSPORT也用移动UA（桌面UA在旧WebView内核下登录页渲染异常，手机浏览器可正常打开）
                userAgentString = if (loginType == TYPE_WAHOO || loginType == TYPE_SUUNTO || loginType == TYPE_IGPSPORT) MOBILE_UA else DESKTOP_UA
                if (loginType == TYPE_OUTBASE) {
                    useWideViewPort = true
                    loadWithOverviewMode = true
                }
            }
            // v7.7.3: 允许第三方cookie（登录页跨域写入/读取登录态）
            CookieManager.getInstance().setAcceptCookie(true)
            CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true)
 
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
                    // v8.3.4: 佳明WebView登录运行日志（国内/国际统一）
                    if (loginType == TYPE_GARMIN_COM || loginType == TYPE_GARMIN_CN) {
                        com.jichi.ob.api.GarminApi.enableDebugLogs = true
                        com.jichi.ob.api.GarminApi.addDebugLog("[${if (loginType == TYPE_GARMIN_CN) "佳明中国" else "佳明国际"}][WebView] 开始加载: $url")
                    }
                    // v6.5.0: Wahoo OAuth2 回调 localhost:8080?code=xxx
                    if (isOAuth2CallbackType(loginType) && url != null && (url.contains("localhost:8080") || url.contains("wahoo/callback")) && url.contains("code=") && !detected) {
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
                    // v7.7.3: 未登录平台首次加载完成后，先清残留登录态再重载，确保弹出登录窗口
                    if (pendingClean && !pendingCleanDone) {
                        pendingCleanDone = true
                        Log.i(TAG, "[$loginType] 未登录状态，清理WebView残留登录态后重载")
                        webView.evaluateJavascript("localStorage.clear();") {
                            clearPlatformWebLogin(loginType)
                            try { webView.clearCache(true) } catch (_: Exception) {}
                            webView.postDelayed({
                                runOnUiThread {
                                    try { webView.reload() } catch (_: Exception) {}
                                    // 重载后重新启动检测轮询
                                    if (!detected) webView.post(checkRunnable)
                                }
                            }, 300)
                        }
                        return
                    }
                    if (checkCount == 1) webView.post(checkRunnable)
                    // v6.5.6: 佳明页面注入JS监听器（拦截ticket）
                    if ((loginType == TYPE_GARMIN_COM || loginType == TYPE_GARMIN_CN) && !detected) {
                        // v8.3.4: 佳明WebView登录运行日志
                        com.jichi.ob.api.GarminApi.enableDebugLogs = true
                        com.jichi.ob.api.GarminApi.addDebugLog("[${if (loginType == TYPE_GARMIN_CN) "佳明中国" else "佳明国际"}][WebView] 页面加载完成: $url，等待登录")
                        view?.evaluateJavascript(injectGarminListener(), null)
                    }
                }
                // v7.1.4: Wahoo localhost加载失败时也尝试从failingUrl捕获授权码
                override fun onReceivedError(view: WebView?, request: WebResourceRequest?, error: WebResourceError?) {
                    val failingUrl = request?.url?.toString()
                    Log.e(TAG, "[$loginType] Error: ${error?.description} for $failingUrl")
                    if (failingUrl != null) urlHistory.add("onError: $failingUrl")
                    if (isOAuth2CallbackType(loginType) && failingUrl != null && (failingUrl.contains("localhost:8080") || failingUrl.contains("wahoo/callback")) && failingUrl.contains("code=") && !detected) {
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
                // v7.7.3: iGPSPORT登录页HTTP错误(403/404等)自动重载一次，规避旧内核下偶发加载失败
                override fun onReceivedHttpError(view: WebView?, request: WebResourceRequest?, errorResponse: android.webkit.WebResourceResponse?) {
                    val code = errorResponse?.statusCode ?: 0
                    if (loginType == TYPE_IGPSPORT && !detected && igpHttpErrorCount < 1 && code in listOf(403, 404, 500, 502, 503)) {
                        igpHttpErrorCount++
                        Log.w(TAG, "[igp] HTTP $code，自动重载登录页")
                        view?.postDelayed({ runOnUiThread { try { view.reload() } catch (_: Exception) {} } }, 500)
                    }
                }
                // v7.1.9: 忽略SSL证书错误，同时尝试从URL中提取授权码（https://localhost没有有效证书）
                override fun onReceivedSslError(view: WebView?, handler: android.webkit.SslErrorHandler?, error: android.net.http.SslError?) {                    val sslUrl = error?.url
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
                    if (isOAuth2CallbackType(loginType) && candidateUrl != null && !detected) {
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
                    if (isOAuth2CallbackType(loginType) && url != null && (url.contains("localhost:8080") || url.contains("wahoo/callback")) && url.contains("code=") && !detected) {
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
                    if (isOAuth2CallbackType(loginType) && url != null && (url.contains("localhost:8080") || url.contains("wahoo/callback")) && url.contains("code=") && !detected) {
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

            // v7.7.3: 若该平台未登录（如刚注销），首次加载完成后清理WebView残留登录态再重载，
            // 确保弹出登录窗口、可用新账号登录，而不是沿用旧登录态自动登录
            // v7.7.4: 追加"加载前即清理"，避免轮询检测在onPageFinished清理前就读到旧cookie（尤其HttpOnly cookie）
            try {
                pendingClean = !PrefsManager(this).isLoggedIn(loginTypeToDataSource())
                if (pendingClean) {
                    Log.i(TAG, "[$loginType] 未登录状态，加载前清理WebView残留登录态")
                    val wipeAll = loginType != TYPE_GARMIN_COM && loginType != TYPE_GARMIN_CN && loginType != TYPE_WAHOO
                    clearPlatformWebLogin(loginType, wipeAllCookies = wipeAll)
                }
            } catch (_: Exception) { pendingClean = false }

            if (url.isNotBlank()) webView.loadUrl(url) else finish()
        } catch (e: Exception) {
            Log.e(TAG, "onCreate failed", e)
            finish()
        }
    }
 
    /**
     * v7.7.3-hw 鸿蒙特别版: iGPSPORT 原生验证码登录（绕开旧WebView白屏）
     * 接口: SendVerificationCode(type:1, username) → login/phone(phone, code, appId)
     * 已在生产验证: 发验证码/登录/拉活动列表全链路可用（2026-09）
     */
    private fun setupIgpNativeLogin() {
        val igpLayout = findViewById<android.widget.LinearLayout>(R.id.igpSmsLoginLayout)
        igpLayout.visibility = android.view.View.VISIBLE
        findViewById<android.view.View>(R.id.btnConfirmLogin)?.visibility = android.view.View.GONE
        val toolbar = findViewById<MaterialToolbar>(R.id.toolbar)
        toolbar.title = "登录 iGPSPORT"

        // v8.0.0: 底部"使用网页登录"按钮 → 切换 WebView 登录（兜底，收不到验证码/验证码失败时使用）
        findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpWebFallback)?.setOnClickListener {
            switchToIgpWebLogin()
        }
        // v8.0.0: WebView 登录底部"切换回验证码登录"按钮
        findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpBackToSms)?.setOnClickListener {
            switchBackToIgpSms()
        }

        val etPhone = findViewById<com.google.android.material.textfield.TextInputEditText>(R.id.etIgpPhone)
        val etCode = findViewById<com.google.android.material.textfield.TextInputEditText>(R.id.etIgpCode)
        val btnSend = findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpSendCode)
        val btnLogin = findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpLogin)
        val tvStatus = findViewById<android.widget.TextView>(R.id.tvIgpStatus)

        // 发送验证码
        btnSend.setOnClickListener {
            val phone = etPhone.text?.toString()?.trim() ?: ""
            if (phone.length != 11 || !phone.all { it.isDigit() }) {
                tvStatus.text = "请输入正确的11位手机号"
                return@setOnClickListener
            }
            btnSend.isEnabled = false
            tvStatus.text = "正在发送验证码..."
            lifecycleScope.launch(Dispatchers.IO) {
                val ok = sendIgpSmsCode(phone)
                runOnUiThread {
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
            lifecycleScope.launch(Dispatchers.IO) {
                val token = loginIgpBySms(phone, code)
                runOnUiThread {
                    if (token != null) {
                        Log.i(TAG, "✅ iGPSPORT 原生验证码登录成功 len=${token.length}")
                        try { PrefsManager(this@LoginWebActivity).saveIgpsportToken(token) } catch (_: Exception) {}
                        detected = true
                        setResult(Activity.RESULT_OK, Intent()
                            .putExtra(RESULT_TOKEN, token)
                            .putExtra(RESULT_LOGIN_TYPE, TYPE_IGPSPORT))
                        finish()
                    } else {
                        btnLogin.isEnabled = true
                        btnLogin.text = "登录"
                        tvStatus.text = "❌ 登录失败：验证码错误或已过期，请重新获取后重试"
                    }
                }
            }
        }
    }

    /** v8.0.0: iGPSPORT 从原生验证码登录切换到 WebView 登录（兜底，用户收不到验证码时使用） */
    private fun switchToIgpWebLogin() {
        if (isFinishing || detected) return
        try {
            findViewById<android.widget.LinearLayout>(R.id.igpSmsLoginLayout)?.visibility = android.view.View.GONE
            findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpBackToSms)?.visibility = android.view.View.VISIBLE
            findViewById<com.google.android.material.button.MaterialButton>(R.id.btnConfirmLogin)?.visibility = android.view.View.VISIBLE
            // 原生分支提前return，此处补注册"确认登录"按钮（网页登录完成后的手动确认）
            findViewById<com.google.android.material.button.MaterialButton>(R.id.btnConfirmLogin)?.setOnClickListener {
                confirmManualLogin()
            }
            findViewById<android.widget.LinearLayout>(R.id.webLoginContainer)?.visibility = android.view.View.VISIBLE
            setupIgpWebView()
            // v8.5.8: 无条件彻底清除IGP登录态（cookie+localStorage+cache），确保不自动登录旧账号
            try {
                clearPlatformWebLogin(TYPE_IGPSPORT, wipeAllCookies = true)
                // 清WebView HTTP缓存
                webView.clearCache(true)
                webView.clearHistory()
            } catch (_: Exception) {}
            checkCount = 0
            detected = false
            // 等cookie清除完成再加载URL，避免旧cookie导致自动登录
            webView.postDelayed({
                try { webView.loadUrl(com.jichi.ob.api.IgpsportApi.LOGIN_URL) } catch (_: Exception) {}
            }, 500)
            webView.post(checkRunnable)
        } catch (e: Exception) {
            Log.e(TAG, "switchToIgpWebLogin 失败", e)
            android.widget.Toast.makeText(this, "网页登录打开失败：${e.message}", android.widget.Toast.LENGTH_LONG).show()
        }
    }

    /** v8.0.0: 从 WebView 网页登录切回原生验证码登录（双向切换） */
    private fun switchBackToIgpSms() {
        if (isFinishing) return
        try {
            detected = false
            webView.removeCallbacks(checkRunnable)
            findViewById<android.widget.LinearLayout>(R.id.webLoginContainer)?.visibility = android.view.View.GONE
            findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpBackToSms)?.visibility = android.view.View.GONE
            findViewById<com.google.android.material.button.MaterialButton>(R.id.btnConfirmLogin)?.visibility = android.view.View.GONE
            // 重置验证码输入与倒计时状态，方便重新输入
            findViewById<com.google.android.material.textfield.TextInputEditText>(R.id.etIgpPhone)?.text?.clear()
            findViewById<com.google.android.material.textfield.TextInputEditText>(R.id.etIgpCode)?.text?.clear()
            findViewById<com.google.android.material.textfield.TextInputEditText>(R.id.etIgpCode)?.isEnabled = true
            findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpLogin)?.isEnabled = true
            findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpLogin)?.text = "登录"
            findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpSendCode)?.isEnabled = true
            findViewById<com.google.android.material.button.MaterialButton>(R.id.btnIgpSendCode)?.text = "发送验证码"
            findViewById<android.widget.TextView>(R.id.tvIgpStatus)?.text = ""
            findViewById<android.widget.LinearLayout>(R.id.igpSmsLoginLayout)?.visibility = android.view.View.VISIBLE
        } catch (e: Exception) {
            Log.e(TAG, "switchBackToIgpSms 失败", e)
        }
    }

    /** v8.0.0: iGPSPORT WebView 兜底登录的 WebView 初始化（与主流程同款设置：移动UA/允许Cookie/错误自动重载/崩溃恢复） */
    @SuppressLint("SetJavaScriptEnabled")
    private fun setupIgpWebView() {
        progressBar = findViewById(R.id.progressBar)
        webView = findViewById(R.id.webView)
        webView.visibility = android.view.View.VISIBLE
        webView.settings.apply {
            javaScriptEnabled = true
            domStorageEnabled = true
            @Suppress("DEPRECATION")
            databaseEnabled = true
            allowContentAccess = true
            mixedContentMode = WebSettings.MIXED_CONTENT_ALWAYS_ALLOW
            userAgentString = MOBILE_UA
        }
        // 允许第三方cookie（登录页跨域写入/读取登录态）
        CookieManager.getInstance().setAcceptCookie(true)
        CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true)
        webView.webViewClient = object : WebViewClient() {
            override fun onPageStarted(view: WebView?, url: String?, favicon: Bitmap?) {
                progressBar.visibility = android.view.View.VISIBLE
                Log.d(TAG, "[igp] PageStarted: $url")
            }
            override fun onPageFinished(view: WebView?, url: String?) {
                progressBar.visibility = android.view.View.GONE
                checkCount++
                Log.d(TAG, "[igp] PageFinished #$checkCount: $url")
                if (checkCount == 1) webView.post(checkRunnable)
            }
            // v7.7.3: IGP登录页HTTP错误(403/404等)自动重载一次，规避旧内核下偶发加载失败
            override fun onReceivedHttpError(view: WebView?, request: WebResourceRequest?, errorResponse: android.webkit.WebResourceResponse?) {
                val code = errorResponse?.statusCode ?: 0
                if (!detected && igpHttpErrorCount < 1 && code in listOf(403, 404, 500, 502, 503)) {
                    igpHttpErrorCount++
                    Log.w(TAG, "[igp] HTTP $code，自动重载登录页")
                    view?.postDelayed({ runOnUiThread { try { view.reload() } catch (_: Exception) {} } }, 500)
                }
            }
            override fun onRenderProcessGone(view: WebView?, detail: android.webkit.RenderProcessGoneDetail?): Boolean {
                Log.e(TAG, "[igp] WebView渲染进程崩溃: reason=${detail?.didCrash()}")
                runOnUiThread {
                    android.widget.Toast.makeText(this@LoginWebActivity, "页面渲染异常，正在重试...", android.widget.Toast.LENGTH_SHORT).show()
                    view?.let { wv -> try { wv.stopLoading(); wv.clearHistory(); wv.reload() } catch (_: Exception) {} }
                }
                return true
            }
        }
        webView.webChromeClient = object : WebChromeClient() {
            override fun onProgressChanged(view: WebView?, newProgress: Int) {
                progressBar.progress = newProgress
            }
        }
    }

    /** 发送IGP短信验证码 */
    private fun sendIgpSmsCode(phone: String): Boolean {
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

    /** IGP验证码登录，返回纯JWT（不带Bearer前缀，与WebView提取格式一致） */
    private fun loginIgpBySms(phone: String, code: String): String? {
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

    /** 发送验证码按钮60s倒计时 */
    private fun startIgpCountdown(btn: com.google.android.material.button.MaterialButton) {
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
            TYPE_SUUNTO -> detectWahoo()  // v7.9.6: 松拓同为 OAuth2 回调 localhost:8080?code=，复用 Wahoo 兜底
            TYPE_STRAVA, TYPE_POLAR, TYPE_FITBIT, TYPE_WITHINGS, TYPE_TRAININGPEAKS -> detectWahoo()  // v8.2.9: P0 实验室平台同为 OAuth2 回调，复用
            TYPE_TWO_BULU -> detectTwoBulu()
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
    /** v8.3.4: 把GarminApi调试日志并入持久日志池（保证弹窗日志=运行日志页，窗口日志与实际一致） */
    private fun flushGarminDebugToPersist() {
        try {
            val logs = com.jichi.ob.api.GarminApi.debugLogs
            synchronized(logs) {
                if (logs.isNotEmpty()) {
                    val prefs = com.jichi.ob.util.PrefsManager(this@LoginWebActivity)
                    for (line in logs) { prefs.appendPersistLog(line) }
                    logs.clear()
                }
            }
        } catch (_: Exception) {}
    }

    /** v8.3.4: 复制文本到剪贴板（佳明日志反馈用） */
    private fun copyLogText(text: String) {
        try {
            val cm = getSystemService(android.content.ClipboardManager::class.java)
            cm?.setPrimaryClip(android.content.ClipData.newPlainText("garminLog", text))
            Toast.makeText(this@LoginWebActivity, "日志已复制，可粘贴反馈", Toast.LENGTH_SHORT).show()
        } catch (_: Exception) {}
    }

    /** v8.3.4: 佳明登录结果弹窗（美化版）——引导文案 + 可滑动日志 + 复制/仍然继续登陆/知道了
     *  @param showContinue 是否显示「仍然继续登陆」（致命错误时显示；确认后二次确认再强制忽略）
     *  @param onContinue   用户二次确认后回调（执行忽略警告继续登录） */
    private fun showGarminResultDialog(
        title: String,
        guide: String,
        logTail: String,
        showContinue: Boolean,
        onContinue: () -> Unit
    ) {
        try {
            // v8.3.4: 原生Dialog直接setContentView（show前设窗口参数，避免部分ROM按钮行被挤出/窗口高度异常）
            val dialog = android.app.Dialog(this@LoginWebActivity, android.R.style.Theme_Translucent_NoTitleBar)
            val view = layoutInflater.inflate(R.layout.dialog_garmin_login, null)
            view.findViewById<android.widget.TextView>(R.id.tvGarminDialogTitle).text = title
            view.findViewById<android.widget.TextView>(R.id.tvGarminDialogGuide).text = guide
            view.findViewById<android.widget.TextView>(R.id.tvGarminDialogLog).text =
                if (logTail.isNotBlank()) logTail else "（暂无佳明日志）"
            val btnContinue = view.findViewById<android.widget.TextView>(R.id.btnGarminContinue)
            if (showContinue) btnContinue.visibility = android.view.View.VISIBLE else btnContinue.visibility = android.view.View.GONE
            view.findViewById<android.widget.TextView>(R.id.btnGarminCopyLog).setOnClickListener {
                copyLogText(guide + "\n\n——— 佳明登录日志 ———\n" + (if (logTail.isNotBlank()) logTail else "（暂无佳明日志）"))
            }
            view.findViewById<android.widget.TextView>(R.id.btnGarminOk).setOnClickListener { dialog.dismiss() }
            btnContinue.setOnClickListener {
                dialog.dismiss()
                // v8.3.4: 二次确认——忽略警告继续登陆其他端口（带可滑动日志 + 复制按钮；用户自己决定，风险自担）
                try {
                    val confirmDialog = android.app.Dialog(this@LoginWebActivity, android.R.style.Theme_Translucent_NoTitleBar)
                    val confirmView = layoutInflater.inflate(R.layout.dialog_garmin_confirm, null)
                    confirmView.findViewById<android.widget.TextView>(R.id.tvGarminConfirmGuide).text =
                        "忽略警告继续登陆其他端口？\n\n若账号密码有误或已被风控，继续尝试其他端口会导致所有端口均被触发风控（24H 无法登录）。是否确认继续？"
                    confirmView.findViewById<android.widget.TextView>(R.id.tvGarminConfirmLog).text =
                        if (logTail.isNotBlank()) logTail else "（暂无佳明日志）"
                    confirmView.findViewById<android.widget.TextView>(R.id.btnGarminConfirmCopy).setOnClickListener {
                        copyLogText("忽略警告继续登陆其他端口\n\n——— 佳明登录日志 ———\n" + (if (logTail.isNotBlank()) logTail else "（暂无佳明日志）"))
                    }
                    confirmView.findViewById<android.widget.TextView>(R.id.btnGarminConfirmCancel).setOnClickListener { confirmDialog.dismiss() }
                    confirmView.findViewById<android.widget.TextView>(R.id.btnGarminConfirmOk).setOnClickListener {
                        confirmDialog.dismiss()
                        onContinue()
                    }
                    confirmDialog.setContentView(confirmView)
                    confirmDialog.setCancelable(true)
                    confirmDialog.window?.setBackgroundDrawable(android.graphics.drawable.ColorDrawable(android.graphics.Color.TRANSPARENT))
                    confirmDialog.window?.setLayout(
                        (resources.displayMetrics.widthPixels * 0.9f).toInt(),
                        android.view.ViewGroup.LayoutParams.WRAP_CONTENT
                    )
                    confirmDialog.show()
                } catch (_: Exception) {}
            }
            dialog.setContentView(view)
            dialog.setCancelable(true)
            dialog.window?.setBackgroundDrawable(android.graphics.drawable.ColorDrawable(android.graphics.Color.TRANSPARENT))
            dialog.window?.setLayout(
                (resources.displayMetrics.widthPixels * 0.9f).toInt(),
                android.view.ViewGroup.LayoutParams.WRAP_CONTENT
            )
            dialog.show()
        } catch (_: Exception) {}
    }

    private fun detectGarmin(cn: Boolean) {
        if (!verifying.compareAndSet(false, true)) return
        val cm = CookieManager.getInstance()
        val host = if (cn) "connect.garmin.cn" else "connect.garmin.com"
        val cookieStr = cm.getCookie("https://$host") ?: ""
        val jwtWeb = extractCookieValue(cookieStr, "JWT_WEB")
        val sessionCookie = extractCookieValue(cookieStr, "session")
        if (jwtWeb.length < 20 || sessionCookie.length < 20) {
            Log.d(TAG, "佳明${if(cn)"中国"else"国际"} JWT_WEB len=${jwtWeb.length}, session len=${sessionCookie.length}，继续检测...")
            // v8.3.4: 检测日志（限频：只在无cookie且首次检测时记录，避免刷屏）
            if (checkCount <= 3) {
                com.jichi.ob.api.GarminApi.enableDebugLogs = true
                com.jichi.ob.api.GarminApi.addDebugLog("[${if (cn) "佳明中国" else "佳明国际"}][WebView] 登录检测中：尚未捕获登录态，等待页面登录完成")
            }
            verifying.set(false)
            return
        }
        Log.i(TAG, "佳明${if(cn)"中国"else"国际"} JWT_WEB+session已捕获，正在提取CSRF...")
        com.jichi.ob.api.GarminApi.enableDebugLogs = true
        com.jichi.ob.api.GarminApi.addDebugLog("[${if (cn) "佳明中国" else "佳明国际"}][WebView] 已捕获登录态(JWT_WEB+session)，正在提取CSRF...")
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
                com.jichi.ob.api.GarminApi.enableDebugLogs = true
                com.jichi.ob.api.GarminApi.addDebugLog("[${if (cn) "佳明中国" else "佳明国际"}][WebView] ✅ 登录成功(JWT_WEB+session已捕获)")
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


    /** v8.2.9: 是否 OAuth2 回调型登录（Wahoo/松拓/P0实验室五平台：localhost:8080?code=） */
    private fun isOAuth2CallbackType(t: String): Boolean =
        t == TYPE_WAHOO || t == TYPE_SUUNTO || t == TYPE_STRAVA || t == TYPE_POLAR || t == TYPE_FITBIT || t == TYPE_WITHINGS || t == TYPE_TRAININGPEAKS

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

    /**
     * v8.2.9: 两步路检测登录 —— 网页版无开放登录API（全版本加壳+雷池WAF），走 WebView 手动登录。
     * 检测 2bulu.com 域 cookie 是否已带登录会话（长度足够即视为登录成功），
     * 完整 cookie 交 MainActivity 持久化，供上传/下载网页版接口复用。
     */
    private fun detectTwoBulu() {
        val cm = CookieManager.getInstance()
        val all = listOf(
            cm.getCookie("https://www.2bulu.com"),
            cm.getCookie("https://2bulu.com"),
            cm.getCookie("2bulu.com")
        ).filterNotNull().joinToString("; ")
        // 未登录时 cookie 很短或为空；登录后含会话/鉴权 cookie，长度显著增长
        if (all.length < 40) return
        if (!verifying.compareAndSet(false, true)) return
        Thread {
            try {
                // 用 cookie 请求网页版已知白名单接口验证登录态（未登录返回 nologin）
                val req = okhttp3.Request.Builder()
                    .url("https://www.2bulu.com/community/queryList.htm")
                    .addHeader("Cookie", all)
                    .addHeader("User-Agent", "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36")
                    .get().build()
                val resp = okhttp3.OkHttpClient().newCall(req).execute()
                val body = resp.body?.string() ?: ""
                val loggedIn = !body.contains("nologin") && body.length > 50
                if (loggedIn) {
                    detected = true
                    Log.i(TAG, "✅ 两步路登录验证通过, cookie len=${all.length}")
                    runOnUiThread {
                        // v8.3.0: 两步路"浏览即捕获"——先存登录结果，不关闭，进入浏览模式自动下载KML
                        setResult(Activity.RESULT_OK, Intent()
                            .putExtra(RESULT_SESSION_ID, all)
                            .putExtra(RESULT_LOGIN_TYPE, TYPE_TWO_BULU))
                        enterTwoBuluBrowseMode(all)
                    }
                } else {
                    Log.d(TAG, "两步路cookie验证未通过(未登录), 继续检测: ${body.take(80)}")
                    verifying.set(false)
                }
            } catch (e: Exception) {
                Log.w(TAG, "两步路验证异常: ${e.message}")
                verifying.set(false)
            }
        }.start()
    }

    /**
     * v8.3.0: 两步路"浏览即捕获下载"模式
     * 参照社区项目 daimou03/2bulu_kml_project 真机流程：轨迹详情页 www.2bulu.com/track/t-<id>.htm
     * 内"下载"按钮 → 点击 → KML 选项 → 触发浏览器下载。
     * App 内：保持 WebView 打开，onPageFinished 命中 /track/t- 时注入 JS 模拟点击下载按钮，
     * setDownloadListener 捕获 KML 下载 URL → 带 cookie 保存到本地 + 写入缓存库。
     */
    private var twoBuluBrowseMode = false
    private var lastKmlTrack = ""

    private fun enterTwoBuluBrowseMode(cookie: String) {
        twoBuluBrowseMode = true
        try { title = "两步路（浏览轨迹自动下载KML）" } catch (_: Exception) {}
        android.widget.Toast.makeText(this, "两步路登录成功！浏览轨迹详情页将自动下载KML，按返回键退出", android.widget.Toast.LENGTH_LONG).show()
        Log.i(TAG, "进入两步路浏览模式, cookie len=${cookie.length}")
        try {
            webView.setDownloadListener { url, userAgent, contentDisposition, mimetype, _ ->
                Log.i(TAG, "两步路下载捕获: $url mime=$mimetype disp=$contentDisposition")
                val isKml = url.contains(".kml", true) || (mimetype ?: "").contains("kml", true) ||
                    (contentDisposition ?: "").contains("kml", true) || (contentDisposition ?: "").contains("filename", true)
                if (isKml) {
                    val tid = lastKmlTrack.ifBlank { url.substringAfterLast("/").substringBefore("?").substringBefore(".kml") }
                    com.jichi.ob.api.TwoBuluApi.saveKmlDownload(this, url, cookie, tid)
                } else {
                    android.widget.Toast.makeText(this, "检测到文件下载（非KML）：$url", android.widget.Toast.LENGTH_LONG).show()
                }
            }
        } catch (_: Exception) {}
    }

    /** v8.3.0: 两步路轨迹详情页 → 注入 JS 模拟点击"下载→KML"（daimou03 真机选择器） */
    private fun twoBuluInjectKmlClick(url: String) {
        if (!twoBuluBrowseMode) return
        val m = Regex("track/t-([A-Za-z0-9%._~+-]+).htm").find(url)
        val tid = m?.groupValues?.get(1) ?: return
        lastKmlTrack = tid
        Log.i(TAG, "两步路轨迹详情页: t-$tid, 注入KML下载点击")
        val js = """
            (function(){
              try{
                var d8 = document.querySelector('#base_area > div:nth-child(8) > ul');
                if(d8){ var lis = d8.querySelectorAll('li'); if(lis.length>1) lis[1].click(); }
                setTimeout(function(){
                  var dd = document.querySelector('#base_area > div:nth-child(8) > div:nth-child(3) > ul');
                  if(dd){ var ps = dd.querySelectorAll('li p'); if(ps.length>0) ps[0].click(); }
                }, 700);
              }catch(e){}
            })();
        """.trimIndent()
        webView.post { webView.evaluateJavascript(js, null) }
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

        // v8.3.4: 佳明WebView登录页错误文本回传（密码错误/两步验证/风控等）——国内国际统一弹窗风格（带日志+复制+检查引导）
        @android.webkit.JavascriptInterface
        fun onLoginError(msg: String) {
            if (isFinishing || detected) return
            val text = msg?.trim().orEmpty()
            if (text.isEmpty() || text.length > 500) return
            if (text == lastReportedLoginError) return
            lastReportedLoginError = text
            Log.i(TAG, "[$loginType] 佳明页面错误: $text")
            com.jichi.ob.api.GarminApi.enableDebugLogs = true
            com.jichi.ob.api.GarminApi.addDebugLog("[${if (loginType == TYPE_GARMIN_CN) "佳明中国" else "佳明国际"}][WebView] 页面错误: $text")
            runOnUiThread {
                // v8.3.4: 运行日志页同源日志池，保证窗口日志与实际日志一致
                flushGarminDebugToPersist()
                var garminLogTail = try {
                    com.jichi.ob.util.PrefsManager(this@LoginWebActivity).getPersistLogs().takeLast(18).joinToString("\n")
                } catch (_: Exception) { "" }
                if (garminLogTail.isBlank()) {
                    garminLogTail = synchronized(com.jichi.ob.api.GarminApi.debugLogs) {
                        com.jichi.ob.api.GarminApi.debugLogs.takeLast(18).joinToString("\n")
                    }
                }
                val body = text
                val t = body.lowercase()
                // v8.3.4: 错误分类精确化——强信号优先：明确密码错误→提示密码错误；明确两步验证→提示两步验证；
                // 弱信号按剩余关键词归类，避免"验证码/两步"与"密码错误"互相误判
                val strongPwd = t.contains("invalid username") || t.contains("invalid password") || t.contains("incorrect password")
                        || t.contains("invalid credentials") || t.contains("密码错误") || t.contains("密码不正确") || t.contains("用户名或密码")
                val strongMfa = t.contains("two-step") || t.contains("two step") || t.contains("two factor")
                        || t.contains("verification code") || t.contains("security code") || t.contains("两步验证") || t.contains(" mfa")
                val weakPwd = t.contains("password") || t.contains("invalid") || t.contains("incorrect")
                        || t.contains("密码") || t.contains("无效") || t.contains("用户名")
                val weakMfa = t.contains("verification") || t.contains("验证码") || t.contains("两步") || t.contains("mfa")
                val isPwd = strongPwd || (!strongMfa && weakPwd)
                val isMfa = strongMfa || (!isPwd && weakMfa)
                val isCooldown = t.contains("429") || t.contains("rate limit") || t.contains("too many")
                        || t.contains("频繁") || t.contains("风控") || t.contains("限流")
                val guide = when {
                    isPwd -> "账号或密码不匹配：请检查邮箱和密码后重试。\n（佳明对错误密码敏感：输错一次即可能触发风控，请先确认密码正确，避免继续尝试导致 24H 无法登录）"
                    isMfa -> "检测到两步验证（短信/邮箱验证码）：请先在佳明官网账号设置中关闭两步验证，再回 App 登录。\n继续尝试会触发风控，可能导致 24H 无法登录。"
                    isCooldown -> "该账号已触发佳明风控限流：请先检查账号密码是否正确，并等待冷却结束后再登录。\n（冷却期内反复尝试会延长封禁，可能导致 24H 无法登录）"
                    else -> "登录失败：请检查邮箱密码是否正确。\n（若提示两步验证，请先在佳明官网关闭；继续尝试会触发风控，可能导致 24H 无法登录）"
                }
                val fullMsg = "佳明页面提示：$text\n\n$guide\n\n如果不确定可以将报错日志通过抖音发给「多吃两口」排查。"
                // v8.3.4: 统一美化弹窗（可滑动日志 + 复制 + 知道了）
                showGarminResultDialog(
                    title = "佳明${if (loginType == TYPE_GARMIN_CN) "中国" else "国际"}登录失败",
                    guide = fullMsg,
                    logTail = garminLogTail,
                    showContinue = false,
                    onContinue = {}
                )
            }
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
            // v8.3.4: 6. 轮询页面错误提示文本（密码错误/两步验证/风控等），回传App统一弹窗（带日志+复制）
            var lastErr = '';
            var errKeys = ['password','invalid','incorrect','two-step','two step','verification','security code','rate limit','too many','429','密码','无效','用户名','验证码','两步','频繁','风控','限流'];
            setInterval(function() {
                try {
                    var t = document.body ? document.body.innerText : '';
                    if (!t) return;
                    var hit = '';
                    for (var i = 0; i < errKeys.length; i++) {
                        if (t.toLowerCase().indexOf(errKeys[i]) >= 0) { hit = t; break; }
                    }
                    if (hit && hit !== lastErr && window.GarminBridge) {
                        lastErr = hit;
                        var msg = hit.replace(/\\s+/g, ' ').substring(0, 300);
                        window.GarminBridge.onLoginError(msg);
                    }
                } catch(e) {}
            }, 2000);
        })();
        """.trimIndent()
    }

}
 


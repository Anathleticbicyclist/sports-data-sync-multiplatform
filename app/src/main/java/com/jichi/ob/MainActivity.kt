package com.jichi.ob

import android.annotation.SuppressLint
import android.app.Activity
import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.Environment
import android.graphics.Color
import android.text.SpannableStringBuilder
import android.text.Spanned
import android.text.TextPaint
import android.text.method.LinkMovementMethod
import android.text.style.ClickableSpan
import android.util.Log
import android.view.View
import android.widget.ScrollView
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.work.Constraints
import androidx.work.ExistingPeriodicWorkPolicy
import androidx.work.NetworkType
import androidx.work.PeriodicWorkRequestBuilder
import androidx.work.WorkManager
import com.google.android.material.button.MaterialButton
import com.google.android.material.chip.Chip
import android.widget.GridLayout
import android.text.SpannableString
import android.text.Spannable
import android.text.style.AbsoluteSizeSpan
import com.google.android.material.progressindicator.LinearProgressIndicator
import com.google.android.material.slider.Slider
import com.google.android.material.switchmaterial.SwitchMaterial
import com.jichi.ob.api.BlackbirdApi
import com.jichi.ob.api.BrytonApi
import com.jichi.ob.api.CorosApi
import com.jichi.ob.api.GarminApi
import com.jichi.ob.api.GarminOAuthHelper
import com.jichi.ob.api.WahooApi
import com.jichi.ob.api.WahooOAuth2Service
import com.jichi.ob.api.IgpsportApi
import com.jichi.ob.api.MageneApi
import com.jichi.ob.api.OutbaseApi
import com.jichi.ob.api.UploadEngine
import com.jichi.ob.api.XingzheApi
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import com.jichi.ob.model.UploadSupport
import com.jichi.ob.ui.LoginWebActivity
import com.jichi.ob.util.PrefsManager
import com.jichi.ob.util.FileNameGenerator
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import kotlin.coroutines.resume
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.io.PrintWriter
import java.io.StringWriter
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.concurrent.TimeUnit

class MainActivity : AppCompatActivity() {

    companion object {
        private const val TAG = "JichiOB"
        // 动态读取BuildConfig版本号，保证启动日志与当前版本一一对应
        private val APP_VERSION = "v${BuildConfig.VERSION_NAME}"
        private const val APP_EDITION = "开发体验版"
        // v7.6.2: 存储目录（Fragment共用）
        val SAVE_DIR: File by lazy {
            File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "鸡翅幸哲迈进OB")
        }
    }

    private lateinit var prefs: PrefsManager
    private lateinit var igpsportApi: IgpsportApi
    private lateinit var xingzheApi: XingzheApi
    private lateinit var mageneApi: MageneApi
    private lateinit var blackbirdApi: BlackbirdApi
    private lateinit var brytonApi: BrytonApi
    private lateinit var outbaseApi: OutbaseApi
    private lateinit var garminApi: GarminApi
    private lateinit var corosApi: CorosApi
    private lateinit var wahooApi: WahooApi
    private lateinit var uploadEngine: UploadEngine

    // v7.6.2: 四页面Fragment引用
    private lateinit var loginFragment: com.jichi.ob.ui.LoginFragment
    private lateinit var settingsFragment: com.jichi.ob.ui.SyncSettingsFragment
    private lateinit var syncFragment: com.jichi.ob.ui.SyncFragment
    private lateinit var aboutFragment: com.jichi.ob.ui.AboutFragment

    private var syncJob: Job? = null
    private var autoSyncJob: Job? = null
    private lateinit var fixWebView: android.webkit.WebView
    private var fixJsReady = false
    private val notifPermissionLauncher = registerForActivityResult(
        ActivityResultContracts.RequestPermission()
    ) { granted ->
        if (granted) appendLog("✅ 通知权限已授予") else appendLog("⚠️ 通知权限被拒绝，后台同步通知可能不显示")
    }

    private val loginLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { result ->
        try {
            val data = result.data
            if (result.resultCode == Activity.RESULT_OK && data != null) {
                val type = data.getStringExtra(LoginWebActivity.RESULT_LOGIN_TYPE) ?: ""
                val token = data.getStringExtra(LoginWebActivity.RESULT_TOKEN) ?: ""
                val sid = data.getStringExtra(LoginWebActivity.RESULT_SESSION_ID) ?: ""
                val extra = data.getStringExtra(LoginWebActivity.RESULT_EXTRA) ?: ""
                when (type) {
                    LoginWebActivity.TYPE_IGPSPORT -> if (token.length > 20) {
                        prefs.saveIgpsportToken(token); appendLog("✅ iGPSPORT登录成功"); fetchUsernameAfterLogin(DataSource.IGPSPORT)
                    }
                    LoginWebActivity.TYPE_XINGZHE -> if (sid.length > 10) {
                        prefs.saveXingzheSessionId(sid)
                        if (extra.isNotEmpty()) prefs.saveXingzheCsrf(extra)
                        appendLog("✅ 行者登录成功"); fetchUsernameAfterLogin(DataSource.XINGZHE)
                    }
                    LoginWebActivity.TYPE_MAGENE -> if (token.length > 20) {
                        prefs.saveMageneToken(token)
                        if (extra.isNotEmpty()) prefs.saveMageneRefreshToken(extra)
                        appendLog("✅ 迈金登录成功"); fetchUsernameAfterLogin(DataSource.MAGENE)
                    }
                    LoginWebActivity.TYPE_BLACKBIRD -> if (sid.length > 5) {
                        prefs.saveBlackbirdCookie(sid); appendLog("✅ 黑鸟单车登录成功(cookie ${sid.length}字节)"); fetchUsernameAfterLogin(DataSource.BLACKBIRD)
                    } else appendLog("⚠️ 黑鸟单车cookie异常，请重新登录")
                    LoginWebActivity.TYPE_BRYTON -> {
                        // v6.2.4: 百锐腾凭证格式 token;userId;cookie（Meteor登录态在localStorage）
                        val parts = sid.split(";")
                        val tok = parts.getOrNull(0) ?: ""
                        val uid = parts.getOrNull(1) ?: ""
                        val ck = parts.drop(2).joinToString(";")
                        if (tok.length > 10 && uid.isNotEmpty()) {
                            prefs.saveBrytonToken(tok); prefs.saveBrytonUserId(uid); prefs.saveBrytonCookie(ck)
                            appendLog("✅ 百锐腾登录成功(Meteor token ${tok.length}B, userId=$uid)")
                            fetchUsernameAfterLogin(DataSource.BRYTON)
                        } else if (ck.length > 5) {
                            prefs.saveBrytonCookie(ck); appendLog("✅ 百锐腾登录成功(cookie ${ck.length}字节)")
                            fetchUsernameAfterLogin(DataSource.BRYTON)
                        } else appendLog("⚠️ 百锐腾cookie异常，请重新登录")
                    }
                    LoginWebActivity.TYPE_OUTBASE -> if (sid.length > 10) {
                        prefs.saveOutbaseSessionId(sid)
                        prefs.saveGatewayCookies(extra)
                        appendLog("✅ Outbase登录成功"); fetchUsernameAfterLogin(DataSource.OUTBASE)
                    }
                    LoginWebActivity.TYPE_GARMIN_COM -> if (token.length > 20) {
                        prefs.saveGarminComToken(token)
                        prefs.saveGarminComCookie("")
                        appendLog("✅ 佳明国际登录成功(mobile SSO+DI Token)"); fetchUsernameAfterLogin(DataSource.GARMIN_COM)
                    } else appendLog("⚠️ 佳明国际登录失败: 未获取到token")
                    LoginWebActivity.TYPE_GARMIN_CN -> if (token.length > 20) {
                        prefs.saveGarminCnToken(token)
                        prefs.saveGarminCnCookie("")
                        appendLog("✅ 佳明中国登录成功(JWT_WEB+session)"); fetchUsernameAfterLogin(DataSource.GARMIN_CN)
                    } else appendLog("⚠️ 佳明中国登录失败: 未获取到token")
                    LoginWebActivity.TYPE_COROS_CN -> if (sid.length > 10) {
                        prefs.saveCorosCnToken(sid)
                        appendLog("✅ 高驰中国登录成功"); fetchUsernameAfterLogin(DataSource.COROS_CN)
                    } else appendLog("⚠️ 高驰中国登录失败: 未捕获到token")
                    LoginWebActivity.TYPE_COROS_INT -> if (sid.length > 10) {
                        prefs.saveCorosIntToken(sid)
                        appendLog("✅ 高驰国际登录成功"); fetchUsernameAfterLogin(DataSource.COROS_INT)
                    } else appendLog("⚠️ 高驰国际登录失败: 未捕获到token")
                    LoginWebActivity.TYPE_WAHOO -> {
                        // v7.1.3: Wahoo 返回 OAuth2 授权码，优先用内置生产凭证，其次用用户配置的凭证
                        val clientId = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_ID else prefs.getWahooClientId()
                        val clientSecret = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_SECRET else prefs.getWahooClientSecret()
                        if (sid.length > 5 && !clientId.isNullOrEmpty() && !clientSecret.isNullOrEmpty()) {
                            val code = sid
                            lifecycleScope.launch(Dispatchers.IO) {
                                val fresh = wahooApi.exchangeToken(code, clientId, clientSecret)
                                runOnUiThread {
                                    if (fresh != null) {
                                        prefs.saveWahooToken(fresh.first)
                                        prefs.saveWahooRefresh(fresh.second)
                                        appendLog("✅ Wahoo登录成功"); fetchUsernameAfterLogin(DataSource.WAHOO)
                                    } else appendLog("⚠️ Wahoo token换取失败")
                                    loginFragment.updateStatus()
                                }
                            }
                        } else appendLog("⚠️ Wahoo登录失败: 未捕获到授权码或未配置凭证")
                    }
                }
                loginFragment.updateStatus()
            }
        } catch (e: Exception) {
            Log.e(TAG, "login result error", e)
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        // v7.5.7: 全局崩溃捕获，堆栈写入文件，下次启动显示在日志中定位闪退
        val crashFile = File(cacheDir, "last_crash.txt")
        val oldHandler = Thread.getDefaultUncaughtExceptionHandler()
        Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
            try {
                val sw = StringWriter()
                throwable.printStackTrace(PrintWriter(sw))
                val time = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(Date())
                crashFile.writeText("时间: $time\n线程: ${thread.name}\n\n$sw")
            } catch (_: Exception) {}
            oldHandler?.uncaughtException(thread, throwable)
        }
        super.onCreate(savedInstanceState)
        try {
            setContentView(R.layout.activity_main)
            prefs = PrefsManager(this)
            igpsportApi = IgpsportApi()
            xingzheApi = XingzheApi()
            mageneApi = MageneApi()
            blackbirdApi = BlackbirdApi()
            brytonApi = BrytonApi()
            outbaseApi = OutbaseApi()
            garminApi = GarminApi()
            garminApi.initWebView(this)  // v6.7.3: 国际版用WebView绕过Cloudflare
            corosApi = CorosApi()
            wahooApi = WahooApi()
            uploadEngine = UploadEngine(this)
            if (!SAVE_DIR.exists()) SAVE_DIR.mkdirs()
            initFragments()
            initFixWebView()
            requestNotificationPermission()
            appendLog("🚴 鸡翅幸哲迈进OB($APP_EDITION) $APP_VERSION 启动")
            appendLog("🎯 让运动数据自由流动")
            appendLog("📱 Android ${Build.VERSION.RELEASE} (API ${Build.VERSION.SDK_INT})")
            appendLog("📂 存储目录: ${SAVE_DIR.absolutePath}")
            appendLog("💾 已同步记录: ${prefs.getSyncedCount()} 条")
            // v7.5.9: 启动登录检测（异步，不阻塞界面）
            checkAllLogins()
            // v7.5.7: 显示上次崩溃信息（如果有）
            if (crashFile.exists()) {
                try {
                    val crashText = crashFile.readText()
                    appendLog("⚠️ 检测到上次崩溃:\n$crashText")
                    crashFile.delete()
                } catch (_: Exception) {}
            }
        } catch (e: Exception) {
            Log.e(TAG, "onCreate failed", e)
        }
    }

    internal fun openLogin(type: String, url: String) {
        appendLog("🔐 打开登录页...")
        val intent = Intent(this, LoginWebActivity::class.java)
        intent.putExtra(LoginWebActivity.EXTRA_LOGIN_TYPE, type)
        intent.putExtra(LoginWebActivity.EXTRA_URL, url)
        loginLauncher.launch(intent)
    }

    /** v7.4.5: Wahoo 登录——恢复WahooOAuth2Service后台自动化登录（v7.3.0验证通过的方案），SCOPES含workouts_write支持上传 */
    internal fun openWahooLogin() {
        val layout = android.widget.LinearLayout(this).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val emailInput = android.widget.EditText(this).apply {
            hint = "Wahoo邮箱"
            inputType = android.text.InputType.TYPE_TEXT_VARIATION_EMAIL_ADDRESS
            setText(prefs.getWahooEmail() ?: "")
        }
        val passwordInput = android.widget.EditText(this).apply {
            hint = "Wahoo密码"
            inputType = android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(emailInput)
        layout.addView(passwordInput)
        
        androidx.appcompat.app.AlertDialog.Builder(this)
            .setTitle("Wahoo直接登录")
            .setMessage("后台自动完成OAuth2授权（含workouts_write上传权限）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val email = emailInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (email.isEmpty() || password.isEmpty()) {
                    appendLog("⚠️ 请输入邮箱和密码")
                    return@setPositiveButton
                }
                prefs.saveWahooEmail(email)
                appendLog("🔐 Wahoo直接登录中...")
                WahooOAuth2Service.debugLogCallback = { msg -> runOnUiThread { appendLog(msg) } }
                lifecycleScope.launch(Dispatchers.IO) {
                    // v7.5.4: 登录前先尝试复用已有token，避免每次登录都新建token导致"Too many unrevoked access tokens"上限
                    val clientId = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_ID else prefs.getWahooClientId()
                    val clientSecret = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_SECRET else prefs.getWahooClientSecret()
                    val savedToken = prefs.getWahooToken()
                    val savedRefresh = prefs.getWahooRefresh()
                    var reused: Pair<String, String>? = null
                    if (!savedToken.isNullOrEmpty() && !clientId.isNullOrEmpty() && !clientSecret.isNullOrEmpty()) {
                        appendLog("🔎 检测到已保存的Wahoo令牌，尝试复用（避免新建token超限）...")
                        reused = wahooApi.getUsableTokenOrNull(savedToken, savedRefresh, clientId, clientSecret)
                        if (reused != null) {
                            appendLog("✅ 复用已有Wahoo令牌成功，无需重新授权")
                        } else {
                            appendLog("ℹ️ 已有令牌已失效，尝试撤销旧令牌后重新授权...")
                            // v7.5.4: 用旧token撤销全部授权（即使已失效也无害），尽量清空token名额
                            if (wahooApi.deauthorize(savedToken)) appendLog("✅ 旧Wahoo令牌已撤销")
                            else appendLog("ℹ️ 旧令牌撤销失败（可能已失效），继续重新授权")
                        }
                    }
                    if (reused != null) {
                        prefs.saveWahooToken(reused.first)
                        prefs.saveWahooRefresh(reused.second)
                        appendLog("✅ Wahoo登录成功（含上传权限）")
                        fetchUsernameAfterLogin(DataSource.WAHOO)
                    } else {
                        appendLog("🔐 开始Wahoo OAuth2重新授权...")
                        val result = WahooOAuth2Service.login(email, password)
                        if (result != null) {
                            prefs.saveWahooToken(result.first)
                            prefs.saveWahooRefresh(result.second)
                            appendLog("✅ Wahoo登录成功（含上传权限）")
                            fetchUsernameAfterLogin(DataSource.WAHOO)
                        } else {
                            // v7.5.4: 错误原因已在WahooOAuth2Service日志中详细展示
                            appendLog("❌ Wahoo登录失败，详见上方日志")
                            // v7.5.4: token数量超限时弹出针对性引导
                            if (WahooOAuth2Service.lastError == WahooOAuth2Service.ERROR_TOKEN_LIMIT) {
                                runOnUiThread {
                                    androidx.appcompat.app.AlertDialog.Builder(this@MainActivity)
                                        .setTitle("Wahoo令牌数量超限")
                                        .setMessage("该Wahoo账号下\"鸡翅幸哲迈进OB\"的未撤销令牌已达10枚上限，无法继续登录。\n\n解决方法：\n1. 打开手机上的Wahoo官方App\n2. 进入 设置(Settings) → 已授权应用(Authorized Apps)\n3. 找到\"鸡翅幸哲迈进OB\"，点击 撤销授权(Deauthorize)\n4. 回到本应用重新登录即可")
                                        .setPositiveButton("我知道了", null)
                                        .show()
                                }
                            }
                        }
                    }
                    runOnUiThread { loginFragment.updateStatus() }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /**
     * v7.5.1: 佳明中国直接登录（模拟garth库mobile SSO流程，不需要WebView）
     * 用邮箱密码直接获取OAuth2 Bearer token，调用connectapi.garmin.cn
     */
    internal fun openGarminCnLogin() {
        val layout = android.widget.LinearLayout(this).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val emailInput = android.widget.EditText(this).apply {
            hint = "佳明中国邮箱"
            inputType = android.text.InputType.TYPE_TEXT_VARIATION_EMAIL_ADDRESS
        }
        val passwordInput = android.widget.EditText(this).apply {
            hint = "佳明中国密码"
            inputType = android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(emailInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(this)
            .setTitle("佳明中国直接登录")
            .setMessage("后台自动完成mobile SSO+OAuth2授权（参考garth库，Bearer token调connectapi）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val email = emailInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (email.isEmpty() || password.isEmpty()) {
                    appendLog("⚠️ 请输入邮箱和密码")
                    return@setPositiveButton
                }
                appendLog("🔐 佳明中国直接登录中...")
                lifecycleScope.launch(Dispatchers.IO) {
                    try {
                        val oauth2 = GarminOAuthHelper.loginWithCredentialsCn(email, password)
                        // 保存为diToken格式（GarminApi已支持佳明中国DI token+connectapi）
                        val cred = JSONObject().apply {
                            put("di_token", oauth2.accessToken)
                            put("di_refresh_token", oauth2.refreshToken)
                            put("di_client_id", "GCM_ANDROID_DARK")
                            put("jwt_web", "")
                            put("session", "")
                            put("csrf", "")
                        }.toString()
                        runOnUiThread {
                            prefs.saveGarminCnToken(cred)
                            prefs.saveGarminCnCookie("")
                            appendLog("✅ 佳明中国登录成功(mobile SSO+DI Token)")
                            fetchUsernameAfterLogin(DataSource.GARMIN_CN)
                            loginFragment.updateStatus()
                        }
                    } catch (e: Exception) {
                        runOnUiThread {
                            appendLog("❌ 佳明中国登录失败: ${e.message}")
                            loginFragment.updateStatus()
                        }
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.2.0: Wahoo配置对话框（保留，用于用户自配置凭证） */
    private fun openWahooConfigDialog() {
        val savedId = prefs.getWahooClientId() ?: ""
        val savedSecret = prefs.getWahooClientSecret() ?: ""

        val layout = android.widget.LinearLayout(this).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }

        val etId = android.widget.EditText(this).apply {
            hint = "Client ID"
            setText(savedId)
            inputType = android.text.InputType.TYPE_CLASS_TEXT
        }
        val etSecret = android.widget.EditText(this).apply {
            hint = "Client Secret"
            setText(savedSecret)
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
        }
        val tvTutorial = android.widget.TextView(this).apply {
            text = "申请沙箱教程：\n1. 打开 developers.wahooligan.com/applications\n2. 注册/登录后点击 New Application\n3. 填写名称，Redirect URI 填 http://localhost:8080\n4. Scopes 勾选 user_read、workouts_read、offline_data\n5. 提交后复制 Client ID 和 Client Secret 填入上方\n（沙箱免费，审核通过后即可使用）"
            textSize = 11f
            setTextColor(0xFF888888.toInt())
            setPadding(0, 24, 0, 0)
        }

        layout.addView(etId)
        layout.addView(etSecret)
        layout.addView(tvTutorial)

        androidx.appcompat.app.AlertDialog.Builder(this)
            .setTitle("Wahoo 开发者凭证配置")
            .setView(layout)
            .setPositiveButton("保存并登录") { _, _ ->
                val id = etId.text.toString().trim()
                val secret = etSecret.text.toString().trim()
                if (id.isEmpty() || secret.isEmpty()) {
                    android.widget.Toast.makeText(this, "请填写 Client ID 和 Client Secret", android.widget.Toast.LENGTH_SHORT).show()
                    return@setPositiveButton
                }
                prefs.saveWahooClientId(id)
                prefs.saveWahooClientSecret(secret)
                openLogin(LoginWebActivity.TYPE_WAHOO, wahooApi.authorizeUrl(id))
            }
            .setNegativeButton("取消", null)
            .show()
    }

    private fun checkAllLogins() {
        appendLog("🔍 启动登录检测中...")
        lifecycleScope.launch(Dispatchers.IO) {
            var valid = 0
            var refreshed = 0
            var invalid = 0
            val platforms = listOf(
                DataSource.IGPSPORT, DataSource.XINGZHE, DataSource.MAGENE, DataSource.BLACKBIRD,
                DataSource.BRYTON, DataSource.OUTBASE, DataSource.GARMIN_COM, DataSource.GARMIN_CN,
                DataSource.COROS_CN, DataSource.COROS_INT, DataSource.WAHOO
            )
            for (ds in platforms) {
                if (!prefs.isLoggedIn(ds)) continue  // 未登录过的跳过，不发无用请求
                kotlinx.coroutines.delay(300)  // 间隔避免并发触发风控
                val cred = prefs.getCredential(ds) ?: continue
                val username = try {
                    when (ds) {
                        DataSource.IGPSPORT -> igpsportApi.getUsername(cred)
                        DataSource.XINGZHE -> xingzheApi.getUsername(cred)
                        DataSource.MAGENE -> mageneApi.getUsername(cred)
                        DataSource.BLACKBIRD -> blackbirdApi.getUsername(cred)
                        DataSource.BRYTON -> brytonApi.getUsername(cred)
                        DataSource.OUTBASE -> outbaseApi.getUsername(cred)
                        DataSource.GARMIN_COM -> garminApi.getUsername(ds, cred)
                        DataSource.GARMIN_CN -> garminApi.getUsername(ds, cred)
                        DataSource.COROS_CN -> corosApi.getUsername(cred)
                        DataSource.COROS_INT -> corosApi.getUsername(cred)
                        DataSource.WAHOO -> wahooApi.getUsername(cred)
                    }
                } catch (e: Exception) {
                    Log.w(TAG, "启动登录检测 ${ds.displayName} 异常: ${e.message}")
                    null
                }
                if (!username.isNullOrBlank()) {
                    valid++
                    prefs.saveUsername(ds, username)
                    runOnUiThread { appendLog("✅ 登录有效: ${ds.displayName} ($username)") }
                    continue
                }
                // 登录态失效 → 尝试刷新
                val newCred = refreshCredentialOnStart(ds, cred)
                if (newCred != null && newCred != cred) {
                    refreshed++
                    prefs.saveCredential(ds, newCred)
                    // v7.6.1: 刷新后校验新token是否真实可用，输出明确成功/失败日志
                    val verifyName = try {
                        when (ds) {
                            DataSource.MAGENE -> mageneApi.getUsername(newCred)
                            DataSource.WAHOO -> wahooApi.getUsername(newCred)
                            else -> null
                        }
                    } catch (e: Exception) { null }
                    val suffix = if (verifyName.isNullOrBlank())
                        "（校验未通过，同步失败请重新登录）"
                    else " ✅ 登录有效 ($verifyName)"
                    runOnUiThread { appendLog("🔄 ${ds.displayName} 登录态失效，已自动刷新$suffix") }
                } else {
                    invalid++
                    if (ds == DataSource.WAHOO) {
                        // v7.6.0: Wahoo失效时【绝不】清除凭证！
                        // token/refresh_token有复用价值（v7.5.4复用机制），清除会导致手动重登走完整OAuth新建token，
                        // 旧token未撤销不断累积 → 触发每用户10枚未撤销token上限
                        runOnUiThread { appendLog("❌ ${ds.displayName} 登录失效，请重新登录（已保留令牌，重登时将自动复用/刷新，不会新建令牌）") }
                    } else {
                        prefs.clearCredential(ds)
                        runOnUiThread { appendLog("❌ ${ds.displayName} 登录失效，请重新登录") }
                    }
                }
            }
            runOnUiThread {
                loginFragment.updateStatus()
                appendLog("📊 登录检测完成: ${valid}有效 / ${refreshed}刷新成功 / ${invalid}失效")
            }
        }
    }

    /**
     * v7.5.9: 启动检测时尝试刷新失效平台的登录态
     * 仅支持有刷新机制的平台；返回 null 表示无法刷新（需重新登录）
     */
    private suspend fun refreshCredentialOnStart(ds: DataSource, cred: String): String? = when (ds) {
        DataSource.MAGENE -> {
            val refresh = prefs.getMageneRefreshToken()
            if (refresh.isNullOrEmpty()) null else mageneApi.refreshToken(refresh)
        }
        DataSource.WAHOO -> {
            val refresh = prefs.getWahooRefresh()
            val clientId = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured())
                com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_ID else prefs.getWahooClientId()
            val clientSecret = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured())
                com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_SECRET else prefs.getWahooClientSecret()
            if (refresh.isNullOrEmpty() || clientId.isNullOrEmpty() || clientSecret.isNullOrEmpty()) null
            else {
                // v7.6.0: 用getUsableTokenOrNull（先测token→失效则refresh→刷新后用新token验证撤销旧token）
                // 刷新成功必须同时保存新access_token和新refresh_token（refresh_token是轮换令牌，旧的作废）
                val usable = wahooApi.getUsableTokenOrNull(cred, refresh, clientId, clientSecret)
                if (usable != null) {
                    prefs.saveWahooToken(usable.first)
                    prefs.saveWahooRefresh(usable.second)
                    usable.first
                } else null
            }
        }
        DataSource.GARMIN_COM, DataSource.GARMIN_CN -> null  // 佳明无自动刷新，需重新登录
        else -> null
    }

    private fun fetchUsernameAfterLogin(ds: DataSource) {
        lifecycleScope.launch(Dispatchers.IO) {
            val cred = prefs.getCredential(ds) ?: return@launch
            val name = when (ds) {
                DataSource.IGPSPORT -> igpsportApi.getUsername(cred)
                DataSource.XINGZHE -> xingzheApi.getUsername(cred)
                DataSource.MAGENE -> mageneApi.getUsername(cred)
                DataSource.BLACKBIRD -> blackbirdApi.getUsername(cred)
                DataSource.BRYTON -> brytonApi.getUsername(cred)
                DataSource.OUTBASE -> outbaseApi.getUsername(cred)
                // v6.7.2: 佳明displayName是UUID(用户ID)，不获取不显示，直接已登录
                DataSource.GARMIN_COM -> null
                DataSource.GARMIN_CN -> null
                DataSource.COROS_CN -> corosApi.getUsername(cred)
                DataSource.COROS_INT -> corosApi.getUsername(cred)
                DataSource.WAHOO -> wahooApi.getUsername(cred)
            }
            if (name != null) {
                prefs.saveUsername(ds, name)
                appendLog("👤 ${ds.displayName}用户: $name")
                runOnUiThread { loginFragment.updateStatus() }
            }
        }
    }

    // v7.6.2: 日志/进度/同步态统一转发给SyncFragment
    private fun appendLog(message: String) {
        Log.i(TAG, message)
        runOnUiThread { syncFragment.appendLog(message) }
    }

    // v6.7.5: 输出GarminApi调试日志到界面（转发SyncFragment）
    private fun flushGarminDebugLogs() {
        try {
            val logs = GarminApi.debugLogs
            synchronized(logs) {
                if (logs.isNotEmpty()) {
                    for (line in logs) { syncFragment.appendLog(line) }
                    logs.clear()
                }
            }
        } catch (_: Exception) {}
    }

    private fun setSyncing(syncing: Boolean) {
        AutoSyncWorker.syncing = syncing
        runOnUiThread { syncFragment.setSyncing(syncing) }
    }

    internal fun startSync() {
        val source = settingsFragment.getSelectedSource()
        val target = settingsFragment.getSelectedTarget()
        val count = settingsFragment.getCount()
        val skip = settingsFragment.getSkip()
        if (source == target) { Toast.makeText(this, "来源和目标不能相同", Toast.LENGTH_SHORT).show(); return }
        val support = UploadSupport.fromDataSource(target)
        if (!support.available) { Toast.makeText(this, "${target.displayName}上传功能${support.note}", Toast.LENGTH_SHORT).show(); return }
        if (!prefs.isLoggedIn(source)) { Toast.makeText(this, "请先登录${source.displayName}", Toast.LENGTH_SHORT).show(); return }
        if (!prefs.isLoggedIn(target)) { Toast.makeText(this, "请先登录${target.displayName}", Toast.LENGTH_SHORT).show(); return }
        prefs.setLastSource(source.shortName)
        prefs.setLastTarget(target.shortName)
        appendLog("━━━━━━━━━━━━━━━━━━━━━━")
        appendLog("🚀 开始同步: ${source.displayName} → ${target.displayName} (跳过$skip, 同步$count)")
        setSyncing(true)
        // v6.7.5: 输出GarminApi调试日志
        flushGarminDebugLogs()
        syncJob = lifecycleScope.launch(Dispatchers.IO) {
            try {
                appendLog("📥 [${source.displayName}] 获取活动列表...")
                val activities = fetchActivities(source, skip, count)
                appendLog("📋 获取到 ${activities.size} 条活动")
                flushGarminDebugLogs()
                if (activities.isEmpty()) { appendLog("❌ 未获取到任何活动"); setSyncing(false); return@launch }
                if (target == DataSource.OUTBASE) {
                    val obSid = prefs.getOutbaseSessionId()!!
                    appendLog("🔍 校验Outbase会话...")
                    if (outbaseApi.warmUp(obSid)) appendLog("✅ Outbase会话有效") else appendLog("⚠️ Outbase会话校验未通过")
                }
                if (target == DataSource.XINGZHE) {
                    val xzSid = prefs.getXingzheSessionId() ?: ""
                    appendLog("🔍 校验行者会话...")
                    if (xzSid.isNotEmpty() && xingzheApi.verifySession(xzSid)) {
                        appendLog("✅ 行者会话有效")
                    } else {
                        appendLog("⚠️ 行者登录已过期或未登录，请重新登录行者后重试")
                        setSyncing(false); return@launch
                    }
                }
                withContext(Dispatchers.Main) { syncFragment.setProgressIndeterminate(false); syncFragment.setProgressMax(activities.size); syncFragment.setProgress(0) }
                var success = 0; var skipped = 0; var failed = 0
                for ((i, act) in activities.withIndex()) {
                    if (!isActive) break
                    val syncKey = "${source.shortName}_${act.id}_to_${target.shortName}"
                    if (prefs.isSynced(syncKey)) {
                        skipped++; appendLog("⏭️ [${i+1}/${activities.size}] 已同步跳过: ${act.title.take(20)}")
                        withContext(Dispatchers.Main) { syncFragment.setProgress(i + 1) }; continue
                    }
                    appendLog("⬇️ [${i+1}/${activities.size}] 下载: ${act.title.take(20)} id=${act.id} (${"%.1f".format(act.distance)}km)")
                    val fileData = try { downloadActivity(source, target, act) } catch (e: Exception) {
                        appendLog("❌ 下载失败: ${e.message}"); failed++
                        withContext(Dispatchers.Main) { syncFragment.setProgress(i + 1) }; continue
                    }
                    if (fileData == null || fileData.size < 100) {
                        appendLog("❌ 文件数据无效"); failed++
                        withContext(Dispatchers.Main) { syncFragment.setProgress(i + 1) }; continue
                    }
                    val ext = if (isFit(fileData)) "fit" else "gpx"
                    val localName = FileNameGenerator.generate(source, act, ext)
                    // cacheDir副本供迈金/百锐腾WebView文件选择；MediaStore副本写入公共下载供用户查看/分享
                    val localFile = File(cacheDir, localName)
                    try {
                        FileOutputStream(localFile).use { it.write(fileData) }
                        val savedPath = com.jichi.ob.util.FileSaver.saveToDownloads(this@MainActivity, localName, fileData)
                        appendLog("💾 已存: $savedPath (${fileData.size}字节)")
                    } catch (_: Exception) {}
                    val t0 = System.currentTimeMillis()
                    appendLog("📤 上传到 ${target.displayName} (${fileData.size}字节)...")
                    if (target == DataSource.MAGENE) {
                        appendLog("⏳ 正在打开顽鹿页面并注入登录态，页面加载约5-15秒，期间界面短暂无响应属正常...")
                    } else if (target == DataSource.BRYTON) {
                        appendLog("⏳ 正在打开百锐腾页面并注入登录态，页面加载约5-15秒，期间界面短暂无响应属正常...")
                    }
                    var targetCred = prefs.getCredential(target) ?: ""
                    // v6.5.3: 佳明目标平台token过期自动刷新
                    if (target == DataSource.GARMIN_COM || target == DataSource.GARMIN_CN) {
                        val newCred = garminApi.ensureValidToken(target, targetCred)
                        if (newCred != targetCred) {
                            targetCred = newCred
                            if (target == DataSource.GARMIN_COM) prefs.saveGarminComToken(targetCred)
                            else prefs.saveGarminCnToken(targetCred)
                        }
                    }
                    // v7.5.3: Wahoo目标平台token过期自动刷新（refresh_token轮换）
                    if (target == DataSource.WAHOO) {
                        val wahooRefresh = prefs.getWahooRefresh()
                        val wahooClientId = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_ID else prefs.getWahooClientId()
                        val wahooClientSecret = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_SECRET else prefs.getWahooClientSecret()
                        if (!wahooRefresh.isNullOrEmpty() && !wahooClientId.isNullOrEmpty() && !wahooClientSecret.isNullOrEmpty()) {
                            val newToken = wahooApi.ensureValidToken(targetCred, wahooRefresh, wahooClientId, wahooClientSecret)
                            if (newToken != targetCred) {
                                appendLog("🔄 Wahoo token已自动刷新")
                                targetCred = newToken
                                prefs.saveWahooToken(targetCred)
                            }
                        }
                    }
                    val csrf = if (target == DataSource.XINGZHE) (prefs.getXingzheCsrf() ?: "") else ""
                    val upExtra = if (csrf.isNotEmpty()) mapOf("csrf" to csrf) else emptyMap()
                    // v6.2.5: 迈金上传优先走HTTP(u.onelap.cn/upload/fit, v6.2.2实测OK、快且不卡UI)，
                    // HTTP失败再走顽鹿WebView真实文件选择兜底(v6.2.3实测OK)
                    // v6.2.4: 百锐腾同为Meteor无REST上传，走WebView真实文件选择（/activities 页"+"→file input）
                    val result = if (target == DataSource.MAGENE) {
                        val mToken = prefs.getCredential(DataSource.MAGENE) ?: ""
                        val httpResult = uploadEngine.upload(target, targetCred, fileData, act, upExtra)
                        if (httpResult.success) httpResult
                        else {
                            appendLog("↩️ 迈金HTTP上传失败(${httpResult.message})，改用顽鹿WebView通道重试...")
                            uploadToMageneViaWebView(localFile.absolutePath, mToken)
                        }
                    } else if (target == DataSource.BRYTON) {
                        uploadToBrytonViaWebView(localFile.absolutePath)
                    } else {
                        uploadEngine.upload(target, targetCred, fileData, act, upExtra)
                    }
                    val tCost = System.currentTimeMillis() - t0
                    if (result.success) { success++; prefs.addSyncedId(syncKey); appendLog("✅ 上传成功(${tCost}ms): ${result.message}") }
                    else if (result.skipped) { skipped++; prefs.addSyncedId(syncKey); appendLog("⏭️ 已存在跳过: ${result.message}") }
                    else {
                        // v7.5.3: Wahoo 401自动刷新token并重试一次
                        var retrySuccess = false
                        if (target == DataSource.WAHOO && result.message.contains("401")) {
                            appendLog("🔄 Wahoo返回401，刷新token后重试...")
                            val wahooRefresh = prefs.getWahooRefresh()
                            val wahooClientId = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_ID else prefs.getWahooClientId()
                            val wahooClientSecret = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_SECRET else prefs.getWahooClientSecret()
                            if (!wahooRefresh.isNullOrEmpty() && !wahooClientId.isNullOrEmpty() && !wahooClientSecret.isNullOrEmpty()) {
                                val newToken = wahooApi.ensureValidToken(targetCred, wahooRefresh, wahooClientId, wahooClientSecret)
                                if (newToken != targetCred) {
                                    targetCred = newToken
                                    prefs.saveWahooToken(targetCred)
                                    val retryResult = uploadEngine.upload(target, targetCred, fileData, act, upExtra)
                                    if (retryResult.success) {
                                        retrySuccess = true
                                        success++; prefs.addSyncedId(syncKey)
                                        appendLog("✅ 重试上传成功(${System.currentTimeMillis() - t0}ms): ${retryResult.message}")
                                    }
                                }
                            }
                        }
                        if (!retrySuccess) { failed++; appendLog("❌ 上传失败(${tCost}ms): ${result.message}") }
                    }
                    withContext(Dispatchers.Main) { syncFragment.setProgress(i + 1); settingsFragment.setSyncedCount(prefs.getSyncedCount()) }
                    delay(150) // v6.2.4: 缩短条间间隔，减少多活动同步累计等待
                }
                appendLog("━━━━━━━━━━━━━━━━━━━━━━")
                appendLog("📊 同步完成: 成功$success / 跳过$skipped / 失败$failed")
            } catch (e: Exception) { Log.e(TAG, "sync error", e); appendLog("❌ 同步异常: ${e.message}") }
            finally { setSyncing(false) }
        }
    }

    internal fun stopSync() { syncJob?.cancel(); appendLog("⏹ 正在停止同步...") }

    /**
     * v6.2.3: 顽鹿(迈金OTM)上传 —— WebView 真实文件选择通道
     *
     * 逆向结论：顽鹿 POST /api/otm/ride_record/upload/fit 对"程序化构造的File"一律返回
     * 422 {"code":422,"message":"没有上传文件"}；只有"真实文件选择"（浏览器原生input[type=file]）
     * 才能成功落库。故 Android 端用隐藏 WebView + onShowFileChooser 把本地FIT喂给页面，
     * 等价用户手动在顽鹿网页上选择文件上传。
     */
    private suspend fun uploadToMageneViaWebView(fitPath: String, token: String): com.jichi.ob.api.UploadEngine.UploadResult =
        suspendCancellableCoroutine { cont ->
            val uploader = MageneWebUploader(this, token)
            uploader.upload(fitPath) { ok, msg ->
                uploader.destroy()
                if (ok) {
                    cont.resume(com.jichi.ob.api.UploadEngine.UploadResult(true, message = msg))
                } else {
                    cont.resume(com.jichi.ob.api.UploadEngine.UploadResult(false, message = msg))
                }
            }
            cont.invokeOnCancellation { uploader.destroy() }
        }

    /**
     * v6.2.4: 百锐腾上传 —— WebView 真实文件选择通道
     *
     * 逆向结论：百锐腾(Bryton Active) 是 Meteor(DDP) 应用，无公开 REST 上传接口；
     * 网页 /activities 页右上角"+"→ 上传弹窗 input[type=file] → 真实文件选择可成功落库
     * （已在浏览器实测：上传后 userActivities collection 新增记录）。故用 WebView +
     * onShowFileChooser 把本地FIT/GPX喂给页面，等价用户手动上传。
     */
    private suspend fun uploadToBrytonViaWebView(fitPath: String): com.jichi.ob.api.UploadEngine.UploadResult =
        suspendCancellableCoroutine { cont ->
            val token = prefs.getBrytonToken() ?: ""
            val userId = prefs.getBrytonUserId() ?: ""
            val uploader = BrytonWebUploader(this, token, userId)
            uploader.upload(fitPath) { ok, msg ->
                uploader.destroy()
                if (ok) {
                    cont.resume(com.jichi.ob.api.UploadEngine.UploadResult(true, message = msg))
                } else {
                    cont.resume(com.jichi.ob.api.UploadEngine.UploadResult(false, message = msg))
                }
            }
            cont.invokeOnCancellation { uploader.destroy() }
        }

    /**
     * 清除上传记忆：删除全部已同步记录ID，下次同步将重新全量上传（便于频繁测试）
     */
    internal fun clearSyncMemory() {
        try {
            val before = prefs.getSyncedCount()
            prefs.clearSyncedIds()
            settingsFragment.setSyncedCount(0)
            appendLog("🗑 已清除上传记忆($before 条) → 下次同步将重新全量上传")
            Toast.makeText(this, "上传记忆已清除($before 条)", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Log.e(TAG, "clearSyncMemory error", e)
            Toast.makeText(this, "清除失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }

    // v7.5.5: 后台自动同步改用WorkManager（系统调度，跨开机，最低15分钟）
    internal fun startAutoSync() {
        val intervalSec = prefs.getAutoInterval().coerceAtLeast(15 * 60)
        // v7.5.7: WorkManager调用包try-catch，防止任何异常导致闪退
        try {
            val constraints = Constraints.Builder()
                .setRequiredNetworkType(NetworkType.CONNECTED)
                .build()
            val request = PeriodicWorkRequestBuilder<AutoSyncWorker>(intervalSec.toLong(), TimeUnit.SECONDS)
                .setConstraints(constraints)
                .addTag(AutoSyncWorker.WORK_TAG)
                .build()
            WorkManager.getInstance(this).enqueueUniquePeriodicWork(
                AutoSyncWorker.WORK_TAG,
                ExistingPeriodicWorkPolicy.UPDATE,
                request
            )
            appendLog("⏰ 后台自动同步已开启，间隔 ${intervalSec / 60}分钟（WorkManager调度，跨开机）")
        } catch (e: Exception) {
            Log.e(TAG, "startAutoSync failed", e)
            appendLog("❌ 自动同步开启失败: ${e.message?.take(50)}")
        }
    }

    internal fun stopAutoSync() {
        WorkManager.getInstance(this).cancelAllWorkByTag(AutoSyncWorker.WORK_TAG)
        // v7.5.6: 关闭自动同步时立即取消状态栏通知（前台+摘要）
        AutoSyncWorker.cancelAllNotifications(this)
        appendLog("⏰ 后台自动同步已关闭")
    }

    private suspend fun fetchActivities(source: DataSource, skip: Int, limit: Int): List<ActivityRecord> {
        var cred = prefs.getCredential(source) ?: return emptyList()
        // v6.5.3: 佳明token过期自动刷新
        if (source == DataSource.GARMIN_COM || source == DataSource.GARMIN_CN) {
            val newCred = garminApi.ensureValidToken(source, cred)
            if (newCred != cred) {
                cred = newCred
                if (source == DataSource.GARMIN_COM) prefs.saveGarminComToken(cred)
                else prefs.saveGarminCnToken(cred)
            }
        }
        return when (source) {
            DataSource.IGPSPORT -> igpsportApi.getActivities(cred, skip, limit)
            DataSource.XINGZHE -> xingzheApi.getActivities(cred, skip, limit)
            DataSource.MAGENE -> mageneApi.getActivities(cred, skip, limit)
            DataSource.BLACKBIRD -> blackbirdApi.getActivities(cred, skip, limit)
            DataSource.BRYTON -> {
                // v6.2.4: 百锐腾无REST列表，走WebView读 Meteor userActivities collection
                val tok = prefs.getBrytonToken() ?: return emptyList()
                val uid = prefs.getBrytonUserId() ?: return emptyList()
                BrytonWebApi(this, tok, uid).getActivities(skip, limit)
            }
            DataSource.GARMIN_COM -> garminApi.getActivities(source, cred, skip, limit)
            DataSource.GARMIN_CN -> garminApi.getActivities(source, cred, skip, limit)
            DataSource.COROS_CN -> corosApi.getActivities(cred, skip, limit)
            DataSource.COROS_INT -> corosApi.getActivities(cred, skip, limit)
            DataSource.WAHOO -> {
                // v7.1.3: Wahoo优先用内置生产凭证刷新token，其次用用户配置的凭证
                var token = cred
                val refresh = prefs.getWahooRefresh()
                val clientId = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_ID else prefs.getWahooClientId()
                val clientSecret = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_SECRET else prefs.getWahooClientSecret()
                if (refresh != null && !clientId.isNullOrEmpty() && !clientSecret.isNullOrEmpty()) {
                    val fresh = wahooApi.refreshToken(refresh, clientId, clientSecret)
                    if (fresh != null) {
                        prefs.saveWahooToken(fresh.first); prefs.saveWahooRefresh(fresh.second)
                        token = fresh.first
                    }
                }
                wahooApi.getActivities(token, skip, limit)
            }
            else -> emptyList()
        }
    }

    private suspend fun downloadActivity(source: DataSource, target: DataSource = DataSource.OUTBASE, record: ActivityRecord): ByteArray? {
        val cred = prefs.getCredential(source) ?: return null
        var data = when (source) {
            DataSource.IGPSPORT -> igpsportApi.downloadFitFile(cred, record.id, record.extra)
            DataSource.XINGZHE -> {
                // v7.5.2: 行者→iGPSPORT时GPX优先，可能解决8小时时差
                val preferGpx = (target == DataSource.IGPSPORT)
                val (bytes, kind) = xingzheApi.downloadGpxOrFit(cred, record.id, preferGpx)
                if (preferGpx) appendLog("📄 行者下载格式: ${kind.displayName}")
                bytes
            }
            DataSource.MAGENE -> {
                try {
                    val result = mageneApi.downloadFit(cred, record.id)
                    // 迈金坐标转换: 仅对fit_content接口下载的GCJ-02坐标FIT执行转换
                    // 七牛云直链(durl)下载的已是WGS84，不转换
                    if (prefs.isGcj02Convert() && result.fromFitContent && isFit(result.data)) {
                        appendLog("🔄 迈金fit_content来源(GCJ-02)，执行WGS84转换...")
                        convertFitCoordinates(result.data)
                    } else {
                        if (prefs.isGcj02Convert() && !result.fromFitContent) {
                            appendLog("ℹ️ 迈金七牛云直链(WGS84)，无需转换")
                        }
                        result.data
                    }
                } catch (e: MageneApi.NoFileException) { null }
            }
            DataSource.BLACKBIRD -> {
                val bbData = blackbirdApi.downloadActivity(cred, record.id)  // v6.3.16: 黑鸟固定GCJ-02→WGS84，内部默认convertCoord=true
                // v6.3.15调试：输出黑鸟原始track字段（带位置索引），确定真实字段顺序，排查字段错位
                val rawSample = com.jichi.ob.api.BlackbirdApi.lastRawTrackSample
                if (rawSample.isNotEmpty()) {
                    appendLog("🔬 黑鸟原始字段(startTime=${com.jichi.ob.api.BlackbirdApi.lastStartTime}):")
                    rawSample.split("\n").forEach { appendLog(it.take(400)) }
                }
                // 黑鸟坐标已是WGS84，不转换
                if (false && bbData.size >= 14 && bbData[8] == '.'.code.toByte() && bbData[9] == 'F'.code.toByte()) {
                    appendLog("🔄 黑鸟FIT坐标(GCJ-02)，执行WGS84转换...")
                    val fixed = convertFitCoordinates(bbData)
                    if (fixed != null && fixed.isNotEmpty()) fixed else bbData
                } else bbData
            }
            DataSource.BRYTON -> {
                // v6.2.4: 百锐腾官方未开放FIT/GPX下载接口（网页仅展示summary，CDP实测全部下载路径返回SPA HTML），
                // 从百锐腾下载原始轨迹不可行；仅支持将其他平台数据上传到百锐腾
                null
            }
            DataSource.GARMIN_COM -> garminApi.downloadFit(source, cred, record.id)
            DataSource.GARMIN_CN -> garminApi.downloadFit(source, cred, record.id)
            DataSource.COROS_CN -> corosApi.downloadFit(cred, record.id, record.extra)
            DataSource.COROS_INT -> corosApi.downloadFit(cred, record.id, record.extra)
            DataSource.WAHOO -> {
                // v7.1.3: Wahoo下载优先用内置生产凭证刷新token，其次用用户配置的凭证
                var token = cred
                val refresh = prefs.getWahooRefresh()
                val clientId = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_ID else prefs.getWahooClientId()
                val clientSecret = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_SECRET else prefs.getWahooClientSecret()
                if (refresh != null && !clientId.isNullOrEmpty() && !clientSecret.isNullOrEmpty()) {
                    val fresh = wahooApi.refreshToken(refresh, clientId, clientSecret)
                    if (fresh != null) {
                        prefs.saveWahooToken(fresh.first); prefs.saveWahooRefresh(fresh.second)
                        token = fresh.first
                    }
                }
                wahooApi.downloadFit(token, record.id)
            }
            else -> null
        }
        return data
    }

    private fun isFit(bytes: ByteArray): Boolean = bytes.size >= 14 && bytes[8] == '.'.code.toByte() && bytes[9] == 'F'.code.toByte()

    /** 申请通知权限（Android 13+）*/
    private fun requestNotificationPermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            if (checkSelfPermission(android.Manifest.permission.POST_NOTIFICATIONS) != android.content.pm.PackageManager.PERMISSION_GRANTED) {
                notifPermissionLauncher.launch(android.Manifest.permission.POST_NOTIFICATIONS)
            }
        }
    }

    /** 初始化坐标转换WebView (加载magene_fix.js) */
    @SuppressLint("SetJavaScriptEnabled")
    // v7.6.2: 四页面Fragment初始化 + 底部导航切换
    private fun initFragments() {
        loginFragment = com.jichi.ob.ui.LoginFragment()
        settingsFragment = com.jichi.ob.ui.SyncSettingsFragment()
        syncFragment = com.jichi.ob.ui.SyncFragment()
        aboutFragment = com.jichi.ob.ui.AboutFragment()
        supportFragmentManager.beginTransaction()
            .add(R.id.fragmentContainer, loginFragment, "login")
            .add(R.id.fragmentContainer, settingsFragment, "settings").hide(settingsFragment)
            .add(R.id.fragmentContainer, syncFragment, "sync").hide(syncFragment)
            .add(R.id.fragmentContainer, aboutFragment, "about").hide(aboutFragment)
            .commit()
        val bottomNav = findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        bottomNav.setOnItemSelectedListener { item ->
            when (item.itemId) {
                R.id.nav_login -> showFragment(loginFragment)
                R.id.nav_settings -> showFragment(settingsFragment)
                R.id.nav_sync -> showFragment(syncFragment)
                R.id.nav_about -> showFragment(aboutFragment)
            }
            true
        }
        bottomNav.selectedItemId = R.id.nav_login
    }

    private fun showFragment(target: androidx.fragment.app.Fragment) {
        val others = listOf(loginFragment, settingsFragment, syncFragment, aboutFragment).filter { it !== target }
        val tr = supportFragmentManager.beginTransaction()
        for (o in others) tr.hide(o)
        tr.show(target).commit()
    }

    private fun initFixWebView() {
        fixWebView = android.webkit.WebView(this)
        fixWebView.settings.javaScriptEnabled = true
        fixWebView.settings.allowFileAccess = true
        fixWebView.webViewClient = object : android.webkit.WebViewClient() {
            override fun onPageFinished(view: android.webkit.WebView?, url: String?) {
                fixJsReady = true
                appendLog("✅ 迈金坐标转换引擎已就绪")
            }
        }
        fixWebView.loadUrl("file:///android_asset/magene_fix.html")
    }

    /** 迈金FIT坐标转换 GCJ-02→WGS-84 (通过WebView执行JS) */
    private suspend fun convertFitCoordinates(fitData: ByteArray): ByteArray? = withContext(Dispatchers.Main) {
        if (!fixJsReady) {
            appendLog("⚠️ 坐标转换引擎未就绪，跳过转换")
            return@withContext fitData
        }
        try {
            val base64 = android.util.Base64.encodeToString(fitData, android.util.Base64.NO_WRAP)
            val deferred = CompletableDeferred<String?>()
            fixWebView.evaluateJavascript("__fixFit('$base64')") { result ->
                deferred.complete(result)
            }
            val result = deferred.await()
            if (result == null || result == "null" || result.isBlank()) {
                appendLog("⚠️ 坐标转换返回空结果")
                return@withContext fitData
            }
            // evaluateJavascript 返回的是JSON编码字符串，需要解码一层
            // 若JS返回对象 => result 直接是 {"ok":...}
            // 若JS返回JSON字符串 => result 是 "{\"ok\":...}"（带转义），需先解析字符串再解析JSON
            val json = try {
                val first = org.json.JSONTokener(result).nextValue()
                when (first) {
                    is org.json.JSONObject -> first
                    is String -> org.json.JSONObject(first)
                    else -> { appendLog("⚠️ 坐标转换返回格式异常"); return@withContext fitData }
                }
            } catch (e: Exception) {
                appendLog("❌ 坐标转换响应解析失败: ${e.message}")
                return@withContext fitData
            }
            if (json.optBoolean("ok")) {
                val fixedBase64 = json.optString("base64")
                val summary = json.optJSONObject("summary")
                val changed = summary?.optInt("changedRecords", 0) ?: 0
                val avgShift = summary?.optDouble("averageShiftM", 0.0) ?: 0.0
                appendLog("🔄 坐标转换完成: $changed 个坐标点修正，平均偏移 ${avgShift}m")
                if (fixedBase64.isEmpty()) { appendLog("⚠️ 坐标转换结果为空"); return@withContext fitData }
                return@withContext android.util.Base64.decode(fixedBase64, android.util.Base64.NO_WRAP)
            } else {
                appendLog("❌ 坐标转换失败: ${json.optString("error")}")
                return@withContext fitData
            }
        } catch (e: Exception) {
            appendLog("❌ 坐标转换异常: ${e.message}")
            return@withContext fitData
        }
    }

    /** 测试下载: 下载1条记录保存到本地，验证下载功能 */
    internal fun testDownload() {
        val source = settingsFragment.getSelectedSource()
        if (!prefs.isLoggedIn(source)) {
            Toast.makeText(this, "请先登录${source.displayName}", Toast.LENGTH_SHORT).show()
            return
        }
        appendLog("🧪 测试下载: ${source.displayName} 获取1条记录...")
        lifecycleScope.launch(Dispatchers.IO) {
            try {
                val activities = fetchActivities(source, 0, 1)
                if (activities.isEmpty()) { appendLog("❌ 未获取到活动"); return@launch }
                val act = activities[0]
                appendLog("⬇️ 下载: ${act.title.take(20)} (${"%.1f".format(act.distance)}km)")
                val data = downloadActivity(source, record = act)
                if (data == null || data.size < 100) { appendLog("❌ 下载失败: 数据无效"); return@launch }
                val ext = if (isFit(data)) "fit" else "gpx"
                val tName = "test_" + FileNameGenerator.generate(source, act, ext)
                val tPath = com.jichi.ob.util.FileSaver.saveToDownloads(this@MainActivity, tName, data)
                appendLog("✅ 测试下载成功! 文件: $tName (${data.size} bytes)")
                appendLog("📂 保存路径: $tPath（系统「文件」App→下载→鸡翅幸哲迈进OB）")
                withContext(Dispatchers.Main) {
                    Toast.makeText(this@MainActivity, "测试下载成功! $tName", Toast.LENGTH_LONG).show()
                }
            } catch (e: Exception) {
                appendLog("❌ 测试下载异常: ${e.message}")
            }
        }
    }

    /** 电源保护指引: 显示各品牌后台常驻和电池优化设置 */
    internal fun showPowerGuide() {
        val guide = """
            🔋 后台常驻 & 电池保护设置指引

            【通用设置】
            1. 多任务界面锁定本APP(下拉锁定)
            2. 设置 → 电池 → 关闭电池优化/加入白名单
            3. 设置 → 应用 → 本APP → 允许后台运行/自启动

            【华为】
            手机管家 → 应用启动管理 → 找到本APP → 关闭自动管理 → 允许自启动/后台活动
            设置 → 电池 → 更多电池设置 → 休眠时始终保持网络连接

            【小米/红米】
            设置 → 应用设置 → 授权管理 → 自启动管理 → 允许本APP
            设置 → 电池 → 应用智能省电 → 本APP → 无限制
            多任务页 → 长按本APP → 锁定

            【OPPO/一加/realme】
            设置 → 电池 → 应用耗电管理 → 本APP → 允许后台活动/自启动
            设置 → 应用管理 → 本APP → 电池 → 不优化

            【vivo/iQOO】
            i管家 → 应用管理 → 自启动 → 允许本APP
            设置 → 电池 → 后台耗电管理 → 本APP → 允许后台高耗电
            多任务页 → 下拉锁定

            【三星】
            设置 → 应用程序 → 本APP → 电池 → 不受限制
            智能管理器 → 自动运行应用程序 → 开启本APP

            完成以上设置后，后台自动同步才能稳定运行。
        """.trimIndent()
        androidx.appcompat.app.AlertDialog.Builder(this)
            .setTitle("🔋 后台常驻指引")
            .setMessage(guide)
            .setPositiveButton("我知道了", null)
            .setNeutralButton("申请电池优化白名单") { _, _ ->
                try {
                    val intent = Intent(android.provider.Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS)
                    intent.data = Uri.parse("package:$packageName")
                    startActivity(intent)
                } catch (_: Exception) {
                    Toast.makeText(this, "请手动在设置中关闭电池优化", Toast.LENGTH_SHORT).show()
                }
            }
            .show()
    }

    /** 显示后台同步通知 */
    private fun showAutoSyncNotification(message: String) {
        try {
            val nm = getSystemService(Context.NOTIFICATION_SERVICE) as android.app.NotificationManager
            val channelId = "jichi_ob_autosync"
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                val channel = android.app.NotificationChannel(channelId, "自动同步", android.app.NotificationManager.IMPORTANCE_LOW)
                nm.createNotificationChannel(channel)
            }
            val notif = androidx.core.app.NotificationCompat.Builder(this, channelId)
                .setContentTitle("鸡翅幸哲迈进OB 自动同步")
                .setContentText(message)
                .setSmallIcon(android.R.drawable.ic_menu_rotate)
                .setOngoing(true)
                .setPriority(androidx.core.app.NotificationCompat.PRIORITY_LOW)
                .build()
            nm.notify(1001, notif)
        } catch (e: Exception) {
            Log.e("MainActivity", "Notification error", e)
        }
    }

    private fun cancelAutoSyncNotification() {
        try {
            val nm = getSystemService(Context.NOTIFICATION_SERVICE) as android.app.NotificationManager
            nm.cancel(1001)
        } catch (_: Exception) {}
    }

    override fun onDestroy() { syncJob?.cancel(); autoSyncJob?.cancel(); cancelAutoSyncNotification(); super.onDestroy() }
}

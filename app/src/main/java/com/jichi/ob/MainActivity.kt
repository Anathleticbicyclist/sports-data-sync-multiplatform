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
import com.jichi.ob.api.GiantApi
import com.jichi.ob.api.IntervalsIcuApi
import com.jichi.ob.api.MyWhooshApi
import com.jichi.ob.api.ZwiftApi
import com.jichi.ob.api.KeepApi
import com.jichi.ob.api.WahooApi
import com.jichi.ob.api.WahooOAuth2Service
import com.jichi.ob.api.IgpsportApi
import com.jichi.ob.api.CodoonApi
import com.jichi.ob.api.ZeppApi
import com.jichi.ob.api.KomootApi
import com.jichi.ob.api.SuuntoApi
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
import com.jichi.ob.util.UpdateChecker
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
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
    private lateinit var giantApi: GiantApi
    private lateinit var outbaseApi: OutbaseApi
    private lateinit var garminApi: GarminApi
    private lateinit var mywhooshApi: MyWhooshApi
    private lateinit var zwiftApi: ZwiftApi
    private lateinit var keepApi: KeepApi
    private lateinit var codoonApi: CodoonApi
    private lateinit var zeppApi: ZeppApi
    private var lastZeppLoginAttempt = 0L   // v8.0.1: Zepp 登录节流（华米 429 风控）
    private lateinit var komootApi: KomootApi
    private lateinit var suuntoApi: SuuntoApi
    private lateinit var intervalsIcuApi: IntervalsIcuApi
    private lateinit var corosApi: CorosApi
    private lateinit var wahooApi: WahooApi
    private lateinit var devOAuthApi: com.jichi.ob.api.DevOAuth2Api
    private lateinit var twoBuluApi: com.jichi.ob.api.TwoBuluApi
    private lateinit var uploadEngine: UploadEngine

    // v7.6.2: 四页面Fragment引用
    private lateinit var loginFragment: com.jichi.ob.ui.LoginFragment
    private lateinit var settingsFragment: com.jichi.ob.ui.SyncSettingsFragment
    private lateinit var syncFragment: com.jichi.ob.ui.SyncFragment
    private lateinit var aboutFragment: com.jichi.ob.ui.AboutFragment
    // v8.2.0: 记录中心（跨平台日期检索）
    private lateinit var recordFragment: com.jichi.ob.ui.RecordCenterFragment
    // v7.9.7: 轨迹合并页（全屏覆盖）
    private lateinit var mergeFragment: com.jichi.ob.ui.MergeFragment
    // v8.2.1: 实验室登录页（松拓/Zepp/百锐腾，可返回）
    private lateinit var labLoginFragment: com.jichi.ob.ui.LabLoginFragment
    private lateinit var createTaskFragment: com.jichi.ob.ui.CreateTaskFragment

    private var syncJob: Job? = null
    private var autoSyncJob: Job? = null
    // v8.2.2: 任务化同步——任务引擎独立 Job，与批量同步互斥
    private var taskJob: Job? = null
    @Volatile private var taskActive = false
    internal val isTaskRunning: Boolean get() = taskActive
    internal val isBatchSyncing: Boolean get() = syncJob?.isActive == true
    // v8.2.3: 最近一次网络检测的失效平台（登录页卡片红标用；checkAllLogins 结果）
    @Volatile internal var lastInvalidPlatforms: List<DataSource> = emptyList()
    private var autoCheckDone = false  // v8.2.3: 会话内自动检查只跑一次
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
                    LoginWebActivity.TYPE_TWO_BULU -> if (sid.length > 10) {
                        prefs.saveTwoBuluCookie(sid)
                        appendLog("✅ 两步路登录成功(cookie ${sid.length}字节)"); fetchUsernameAfterLogin(DataSource.TWO_BULU)
                    } else appendLog("⚠️ 两步路登录失败: cookie异常")
                    LoginWebActivity.TYPE_OUTBASE -> if (sid.length > 10) {
                        prefs.saveOutbaseSessionId(sid)
                        prefs.saveGatewayCookies(extra)
                        appendLog("✅ Outbase登录成功"); fetchUsernameAfterLogin(DataSource.OUTBASE)
                    }
                    LoginWebActivity.TYPE_GARMIN_COM -> if (token.length > 20) {
                        prefs.saveGarminComToken(token)
                        prefs.saveGarminComCookie("")
                        appendLog("✅ 佳明国际登录成功(mobile SSO+DI Token)"); fetchUsernameAfterLogin(DataSource.GARMIN_COM)
                        // v7.9.0: 佳明风控引导——已生成长期刷新凭证，提醒勿频繁重新登录
                        com.jichi.ob.util.GarminLoginHint.show(this, "佳明国际")
                    } else appendLog("⚠️ 佳明国际登录失败: 未获取到token")
                    LoginWebActivity.TYPE_GARMIN_CN -> if (token.length > 20) {
                        prefs.saveGarminCnToken(token)
                        prefs.saveGarminCnCookie("")
                        appendLog("✅ 佳明中国登录成功(JWT_WEB+session)"); fetchUsernameAfterLogin(DataSource.GARMIN_CN)
                        // v7.9.0: 佳明风控引导——已生成长期刷新凭证，提醒勿频繁重新登录
                        com.jichi.ob.util.GarminLoginHint.show(this, "佳明中国")
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
                    LoginWebActivity.TYPE_SUUNTO -> {
                        // v7.9.6: Suunto 返回 OAuth2 授权码 → 换 token（需三凭证）
                        val clientId = if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured()) com.jichi.ob.api.SuuntoApi.BUILTIN_CLIENT_ID else prefs.getSuuntoClientId()
                        val clientSecret = if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured()) com.jichi.ob.api.SuuntoApi.BUILTIN_CLIENT_SECRET else prefs.getSuuntoClientSecret()
                        val subKey = if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured()) com.jichi.ob.api.SuuntoApi.BUILTIN_SUBSCRIPTION_KEY else prefs.getSuuntoSubscriptionKey()
                        if (sid.length > 5 && !clientId.isNullOrEmpty() && !clientSecret.isNullOrEmpty() && !subKey.isNullOrEmpty()) {
                            val code = sid
                            lifecycleScope.launch(Dispatchers.IO) {
                                val fresh = suuntoApi.exchangeCode(code, clientId, clientSecret, subKey)
                                runOnUiThread {
                                    if (fresh != null) {
                                        prefs.saveSuuntoToken(fresh.accessToken)
                                        prefs.saveSuuntoRefresh(fresh.refreshToken)
                                        appendLog("✅ 松拓登录成功"); fetchUsernameAfterLogin(DataSource.SUUNTO)
                                    } else appendLog("⚠️ 松拓token换取失败")
                                    loginFragment.updateStatus()
                                }
                            }
                        } else appendLog("⚠️ 松拓登录失败: 未捕获到授权码或未配置凭证")
                    }
                    LoginWebActivity.TYPE_STRAVA, LoginWebActivity.TYPE_POLAR, LoginWebActivity.TYPE_FITBIT,
                    LoginWebActivity.TYPE_WITHINGS, LoginWebActivity.TYPE_TRAININGPEAKS -> {
                        // v8.2.9: P0 实验室平台 —— OAuth2 授权码 → 换 token（用户自填 clientId/secret）
                        val ds = when (type) {
                            LoginWebActivity.TYPE_STRAVA -> DataSource.STRAVA
                            LoginWebActivity.TYPE_POLAR -> DataSource.POLAR
                            LoginWebActivity.TYPE_FITBIT -> DataSource.FITBIT
                            LoginWebActivity.TYPE_WITHINGS -> DataSource.WITHINGS
                            else -> DataSource.TRAININGPEAKS
                        }
                        if (sid.length > 5) {
                            val code = sid
                            lifecycleScope.launch(Dispatchers.IO) {
                                val ok = devOAuthApi.exchangeCode(ds, code)
                                runOnUiThread {
                                    if (ok) {
                                        appendLog("✅ ${ds.displayName}登录成功"); fetchUsernameAfterLogin(ds)
                                    } else appendLog("⚠️ ${ds.displayName}token换取失败（请检查凭证与scope）")
                                    loginFragment.updateStatus()
                                }
                            }
                        } else appendLog("⚠️ ${ds.displayName}登录失败: 未捕获到授权码")
                    }
                }
                loginFragment.updateStatus()
                // v7.7.4: 登录成功后刷新设置页来源/目标网格，目标立即可选，无需重启App
                try { settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                // v8.2.5: 失效平台重登后清失效清单——已统一收敛到 fetchUsernameAfterLogin（所有平台登录成功公共入口）
            }
        } catch (e: Exception) {
            Log.e(TAG, "login result error", e)
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        // v7.5.7: 全局崩溃捕获，堆栈写入文件，下次启动显示在日志中定位闪退
        // v8.2.2: 同时写入公共存储目录（Download/鸡翅幸哲迈进OB/crash_last.txt），用户可直接查看/发我定位
        val crashFile = File(cacheDir, "last_crash.txt")
        val crashPublic = try {
            val dir = SAVE_DIR
            if (!dir.exists()) dir.mkdirs()
            File(dir, "crash_last.txt")
        } catch (_: Exception) { null }
        val oldHandler = Thread.getDefaultUncaughtExceptionHandler()
        Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
            try {
                val sw = StringWriter()
                throwable.printStackTrace(PrintWriter(sw))
                val time = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(Date())
                val content = "时间: $time\n线程: ${thread.name}\n\n$sw"
                crashFile.writeText(content)
                try { crashPublic?.writeText(content) } catch (_: Exception) {}
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
            giantApi = GiantApi()
            outbaseApi = OutbaseApi()
            garminApi = GarminApi()
            mywhooshApi = MyWhooshApi()
            zwiftApi = ZwiftApi()
            keepApi = KeepApi()
            codoonApi = CodoonApi()
            zeppApi = ZeppApi()
            komootApi = KomootApi()
            suuntoApi = SuuntoApi()
            // v7.9.5: 同步咕咚/Zepp 坐标转换开关（默认关=WGS-84；如需开启在设置页预置）
            CodoonApi.gcjConvertEnabled = prefs.isCodoonGcjConvertEnabled()
            ZeppApi.gcjConvertEnabled = prefs.isZeppGcjConvertEnabled()
            intervalsIcuApi = IntervalsIcuApi()
            GarminApi.setAppContext(this)  // v7.9.0: 佳明429风控冷却持久化
            com.jichi.ob.api.GarminApi.enableDebugLogs = true  // v8.3.4: 全局开启佳明运行日志（登录/检测/同步/冷却写入App日志页，方便用户复制反馈排障）
            garminApi.initWebView(this)  // v6.7.3: 国际版用WebView绕过Cloudflare
            corosApi = CorosApi()
            wahooApi = WahooApi()
            devOAuthApi = com.jichi.ob.api.DevOAuth2Api(this)
            twoBuluApi = com.jichi.ob.api.TwoBuluApi(this)
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
            // v8.2.2: 启动改轻量本地校验（不发网络请求，避免启动即撞平台风控）；
            //         网络级登录检测收敛到登录页"一键检测"按钮
            initLoginStatesLight()
            // v8.2.3: 会话内自动检查——延迟5s后台串行校验一次（默认开，可关；不弹窗不阻塞，失败静默）
            if (prefs.isAutoCheckLogin() && !autoCheckDone) {
                lifecycleScope.launch(Dispatchers.IO) {
                    try {
                        kotlinx.coroutines.delay(5000)
                        if (autoCheckDone) return@launch
                        autoCheckDone = true
                        appendLog("🔍 会话内自动检查登录态...")
                        checkAllLogins()
                    } catch (_: Exception) {}
                }
            }
            // v7.7.6: 启动静默检查更新（仅发现新版才提示，24h内不重复打扰；不阻塞启动）
            UpdateChecker.check(this, force = false)
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

    /** v8.2.2: 统一平台登录入口（登录页详情弹窗/实验室复用） */
    /** v8.2.6: 合并上传/数据变更后刷新首页登录卡（缓存数、最近记录、统计） */
    internal fun refreshLoginCardsIfAny() {
        runOnUiThread {
            try { loginFragment.updateStatus() } catch (_: Exception) {}
        }
    }

    /** v8.2.9: 开发者自填 OAuth 平台登录——无凭证先弹输入框 */
    private fun openDevOAuthLogin(ds: DataSource, loginType: String) {
        val cid = prefs.getLabClientId(ds)
        val csec = prefs.getLabClientSecret(ds)
        if (cid.isNullOrEmpty() || csec.isNullOrEmpty()) {
            showLabCredentialDialog(ds, loginType)
        } else {
            val url = com.jichi.ob.api.DevOAuth2Api.buildAuthUrl(ds, cid)
            openLogin(loginType, url)
        }
    }

    /** v8.2.9: 实验室凭证输入对话框（松拓式：用户自填 clientId/clientSecret） */
    private fun showLabCredentialDialog(ds: DataSource, loginType: String) {
        val input = android.widget.LinearLayout(this).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(60, 20, 60, 0)
        }
        val etId = android.widget.EditText(this).apply {
            hint = "Client ID（开发者平台申请）"
            textSize = 14f
        }
        val etSec = android.widget.EditText(this).apply {
            hint = "Client Secret（开发者平台申请）"
            textSize = 14f
        }
        input.addView(etId); input.addView(etSec)
        android.app.AlertDialog.Builder(this)
            .setTitle("填写 ${ds.displayName} 开发者凭证")
            .setMessage("前往 ${ds.displayName} 开发者平台自助申请（免费），填写后即可登录。凭证仅存本机。")
            .setView(input)
            .setPositiveButton("保存并登录") { _, _ ->
                val id = etId.text.toString().trim()
                val sec = etSec.text.toString().trim()
                if (id.isNotEmpty() && sec.isNotEmpty()) {
                    prefs.saveLabClientId(ds, id)
                    prefs.saveLabClientSecret(ds, sec)
                    val url = com.jichi.ob.api.DevOAuth2Api.buildAuthUrl(ds, id)
                    openLogin(loginType, url)
                } else {
                    android.widget.Toast.makeText(this, "凭证不能为空", android.widget.Toast.LENGTH_SHORT).show()
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    internal fun openPlatformLogin(ds: DataSource) {
        when (ds) {
            DataSource.IGPSPORT -> openLogin(LoginWebActivity.TYPE_IGPSPORT, com.jichi.ob.api.IgpsportApi.LOGIN_URL)
            DataSource.XINGZHE -> openLogin(LoginWebActivity.TYPE_XINGZHE, com.jichi.ob.api.XingzheApi.LOGIN_URL)
            DataSource.MAGENE -> openLogin(LoginWebActivity.TYPE_MAGENE, com.jichi.ob.api.MageneApi.LOGIN_URL)
            DataSource.BLACKBIRD -> openLogin(LoginWebActivity.TYPE_BLACKBIRD, com.jichi.ob.api.BlackbirdApi.LOGIN_URL)
            DataSource.GIANT -> openGiantLogin()
            DataSource.OUTBASE -> openLogin(LoginWebActivity.TYPE_OUTBASE, com.jichi.ob.api.OutbaseApi.LOGIN_URL)
            DataSource.GARMIN_COM -> openLogin(LoginWebActivity.TYPE_GARMIN_COM, com.jichi.ob.api.GarminApi.LOGIN_URL_COM)
            DataSource.GARMIN_CN -> openGarminCnLogin()
            DataSource.COROS_CN -> openLogin(LoginWebActivity.TYPE_COROS_CN, com.jichi.ob.api.CorosApi.LOGIN_URL_CN)
            DataSource.COROS_INT -> openLogin(LoginWebActivity.TYPE_COROS_INT, com.jichi.ob.api.CorosApi.LOGIN_URL_INT)
            DataSource.WAHOO -> openWahooLogin()
            DataSource.MYWHOOSH -> openMywhooshLogin()
            DataSource.ZWIFT -> openZwiftLogin()
            DataSource.INTERVALS_ICU -> openIntervalsIcuLogin()
            DataSource.KEEP -> openKeepLogin()
            DataSource.CODOON -> openCodoonLogin()
            DataSource.KOMOT -> openKomootLogin()
            DataSource.ZEPP -> openZeppLogin()
            DataSource.SUUNTO -> openSuuntoLogin()
            DataSource.TWO_BULU -> openLogin(LoginWebActivity.TYPE_TWO_BULU, "https://www.2bulu.com/")
            DataSource.STRAVA -> openDevOAuthLogin(DataSource.STRAVA, LoginWebActivity.TYPE_STRAVA)
            DataSource.POLAR -> openDevOAuthLogin(DataSource.POLAR, LoginWebActivity.TYPE_POLAR)
            DataSource.FITBIT -> openDevOAuthLogin(DataSource.FITBIT, LoginWebActivity.TYPE_FITBIT)
            DataSource.WITHINGS -> openDevOAuthLogin(DataSource.WITHINGS, LoginWebActivity.TYPE_WITHINGS)
            DataSource.TRAININGPEAKS -> openDevOAuthLogin(DataSource.TRAININGPEAKS, LoginWebActivity.TYPE_TRAININGPEAKS)
            DataSource.BRYTON -> openLogin(LoginWebActivity.TYPE_BRYTON, com.jichi.ob.api.BrytonApi.LOGIN_URL)
        }
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
        // v8.2.1: 手动清空风控（不依赖登录态；提示强行重登会增加冷却）
        val clearCooldownLink = android.widget.TextView(this).apply {
            text = "→ 清空风控冷却（登录被限流/提示24小时后重试时点此）"
            textSize = 12f
            setTextColor(0xFFE65100.toInt())
            setPadding(0, 20, 0, 0)
            isClickable = true
            isFocusable = true
        }
        clearCooldownLink.setOnClickListener {
            androidx.appcompat.app.AlertDialog.Builder(this)
                .setTitle("清空风控")
                .setMessage("若清空风控后强行尝试登录，可能增加冷却时间，你确定清空吗？")
                .setPositiveButton("确定清空") { _, _ ->
                    com.jichi.ob.api.GarminApi.clearAllCooldownFor(DataSource.GARMIN_CN)
                    android.widget.Toast.makeText(this, "佳明中国：风控冷却缓存已清空，可重新登录", android.widget.Toast.LENGTH_SHORT).show()
                }
                .setNegativeButton("取消", null)
                .show()
        }
        layout.addView(clearCooldownLink)

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
                // v7.9.1: 佳明中国补风控检查——按账号维度（中国区走OAuth1→OAuth2，主通道GCM_ANDROID_DARK）
                if (com.jichi.ob.api.GarminApi.isCooldown(DataSource.GARMIN_CN, email, "GCM_ANDROID_DARK")) {
                    val remain = com.jichi.ob.api.GarminApi.cooldownRemainMinutes(DataSource.GARMIN_CN, email, "GCM_ANDROID_DARK")
                    appendLog("❌ 该账号处于佳明中国风控冷却中，请约${remain}分钟后重试；或到登录页点击【注销】清除该账号冷却缓存后立即重登（冷却仅针对该账号）")
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
                            // v7.9.1: 记录账号email，便于refresh按账号维度冷却
                            put("email", email)
                        }.toString()
                        runOnUiThread {
                            prefs.saveGarminCnToken(cred)
                            prefs.saveGarminCnCookie("")
                            appendLog("✅ 佳明中国登录成功(mobile SSO+DI Token)")
                            com.jichi.ob.util.GarminLoginHint.show(this@MainActivity, "佳明中国")
                            fetchUsernameAfterLogin(DataSource.GARMIN_CN)
                            loginFragment.updateStatus()
                        }
                    } catch (e: Exception) {
                        // v7.9.1: 佳明中国429（风控）单独提示 + 写冷却
                        val msg = e.message ?: ""
                        if (msg.contains("429") || msg.contains("rate limit") || msg.contains("限流")) {
                            com.jichi.ob.api.GarminApi.writeCooldownFor(DataSource.GARMIN_CN, email, "GCM_ANDROID_DARK")
                            val remain = com.jichi.ob.api.GarminApi.cooldownRemainMinutes(DataSource.GARMIN_CN, email, "GCM_ANDROID_DARK")
                            runOnUiThread {
                                appendLog("❌ 佳明中国触发风控限流(429)，已写入冷却。该账号请约${remain}分钟后重试（冷却仅针对该账号）")
                                loginFragment.updateStatus()
                                showGarminLoginFailDialog("佳明中国", "触发风控限流(429)，该账号请约${remain}分钟后重试。冷却期内反复尝试会延长封禁。")
                            }
                        } else {
                            runOnUiThread {
                                appendLog("❌ 佳明中国登录失败: $msg")
                                loginFragment.updateStatus()
                                // v8.2.3.1: 密码错误/两步验证等失败必须弹窗提醒，不能只落日志
                                val hint = when {
                                    msg.contains("INVALID_USERNAME_PASSWORD") || msg.contains("invalid_username_password") || msg.contains("401") ->
                                        "账号或密码错误，请检查后重试。"
                                    msg.contains("MFA") || msg.contains("mfa") || msg.contains("two") || msg.contains("verify") ->
                                        "该账号开启了两步验证，请先关闭两步验证（或使用网页版完成验证）后再登录。"
                                    msg.contains("captcha") || msg.contains("Captcha") ->
                                        "触发人机验证，请稍后再试或改用网页版登录。"
                                    else -> "登录失败：$msg"
                                }
                                showGarminLoginFailDialog("佳明中国", hint)
                            }
                        }
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v8.3.4: 佳明登录失败统一弹窗（国内/国际风格一致）——引导文案 + 可滑动日志 + 复制/知道了 */
    private fun showGarminLoginFailDialog(region: String, hint: String) {
        try {
            // v8.3.4: 先把佳明调试日志并入持久日志池（弹窗日志=运行日志页）
            flushGarminDebugLogs()
            // v8.3.4: 原生Dialog直接setContentView（show前设窗口参数，避免部分ROM按钮行被挤出/窗口高度异常）
            val dialog = android.app.Dialog(this, android.R.style.Theme_Translucent_NoTitleBar)
            val view = layoutInflater.inflate(R.layout.dialog_garmin_login, null)
            view.findViewById<android.widget.TextView>(R.id.tvGarminDialogTitle).text = "$region 登录失败"
            view.findViewById<android.widget.TextView>(R.id.tvGarminDialogGuide).text =
                hint + "\n\n如果不确定可以将报错日志通过抖音发给「多吃两口」排查。"
            var logTail = try {
                // v8.3.4: 取运行日志页同源日志池（appendLog持久日志），保证窗口日志与实际日志一致
                prefs.getPersistLogs().takeLast(18).joinToString("\n")
            } catch (_: Exception) { "" }
            if (logTail.isBlank()) {
                logTail = synchronized(com.jichi.ob.api.GarminApi.debugLogs) {
                    com.jichi.ob.api.GarminApi.debugLogs.takeLast(18).joinToString("\n")
                }
            }
            view.findViewById<android.widget.TextView>(R.id.tvGarminDialogLog).text =
                if (logTail.isNotBlank()) logTail else "（暂无佳明日志）"
            // 致命错误场景不提供「仍然继续登陆」；普通失败同样关闭该按钮
            view.findViewById<android.widget.TextView>(R.id.btnGarminContinue).visibility = android.view.View.GONE
            view.findViewById<android.widget.TextView>(R.id.btnGarminCopyLog).setOnClickListener {
                try {
                    val cm = getSystemService(android.content.ClipboardManager::class.java)
                    cm?.setPrimaryClip(android.content.ClipData.newPlainText("garminLog",
                        hint + "\n\n——— 佳明登录日志 ———\n" + (if (logTail.isNotBlank()) logTail else "（暂无佳明日志）")))
                    android.widget.Toast.makeText(this, "日志已复制，可粘贴反馈", android.widget.Toast.LENGTH_SHORT).show()
                } catch (_: Exception) {}
            }
            view.findViewById<android.widget.TextView>(R.id.btnGarminOk).setOnClickListener { dialog.dismiss() }
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

    /** v7.8.0: 捷安特直接登录——账号密码原生表单直调 GiantApi（纯API，无需WebView） */
    internal fun openGiantLogin() {
        val layout = android.widget.LinearLayout(this).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val accountInput = android.widget.EditText(this).apply {
            hint = "捷安特账号（手机号/邮箱）"
            inputType = android.text.InputType.TYPE_CLASS_TEXT
            setText(prefs.getGiantAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(this).apply {
            hint = "捷安特密码"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(accountInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(this)
            .setTitle("登录捷安特")
            .setMessage("账号密码直接登录，支持同步上传（捷安特暂不支持下载）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val account = accountInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (account.isEmpty() || password.isEmpty()) {
                    appendLog("⚠️ 请输入捷安特账号和密码")
                    return@setPositiveButton
                }
                prefs.saveGiantAccount(account)
                appendLog("🔐 捷安特直接登录中...")
                lifecycleScope.launch(Dispatchers.IO) {
                    val result = giantApi.login(account, password)
                    runOnUiThread {
                        if (result != null) {
                            prefs.saveGiantToken(result.token)
                            prefs.saveUsername(DataSource.GIANT, result.nickname)
                            appendLog("✅ 捷安特登录成功")
                            fetchUsernameAfterLogin(DataSource.GIANT)
                        } else {
                            appendLog("❌ 捷安特登录失败：账号或密码错误，请重新输入")
                        }
                        loginFragment.updateStatus()
                        try { settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.8.4: MyWhoosh 直接登录——账号密码原生表单直调 MyWhooshApi（纯API，仅下载源） */
    internal fun openMywhooshLogin() {
        val layout = android.widget.LinearLayout(this).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val accountInput = android.widget.EditText(this).apply {
            hint = "MyWhoosh 账号（邮箱）"
            inputType = android.text.InputType.TYPE_CLASS_TEXT
            setText(prefs.getMywhooshAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(this).apply {
            hint = "MyWhoosh 密码"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(accountInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(this)
            .setTitle("登录 MyWhoosh")
            .setMessage("账号密码直接登录，MyWhoosh 作为数据源（仅下载，不支持上传）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val account = accountInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (account.isEmpty() || password.isEmpty()) {
                    appendLog("⚠️ 请输入 MyWhoosh 账号和密码")
                    return@setPositiveButton
                }
                prefs.saveMywhooshAccount(account)
                appendLog("🔐 MyWhoosh直接登录中...")
                lifecycleScope.launch(Dispatchers.IO) {
                    val result = mywhooshApi.login(account, password)
                    runOnUiThread {
                        if (result != null) {
                            prefs.saveMywhooshToken(result.token)
                            prefs.saveMywhooshWhooshId(result.whooshId)
                            prefs.saveMywhooshRefreshToken(result.refreshToken)
                            appendLog("✅ MyWhoosh登录成功")
                            fetchUsernameAfterLogin(DataSource.MYWHOOSH)
                        } else {
                            appendLog("❌ MyWhoosh登录失败：账号或密码错误，请重新输入")
                        }
                        loginFragment.updateStatus()
                        try { settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.8.4: Zwift 直接登录——账号密码原生表单直调 ZwiftApi（纯API，仅下载源） */
    internal fun openZwiftLogin() {
        val layout = android.widget.LinearLayout(this).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val accountInput = android.widget.EditText(this).apply {
            hint = "Zwift 账号（邮箱）"
            inputType = android.text.InputType.TYPE_CLASS_TEXT
            setText(prefs.getZwiftAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(this).apply {
            hint = "Zwift 密码"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(accountInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(this)
            .setTitle("登录 Zwift")
            .setMessage("账号密码直接登录，Zwift 作为数据源（仅下载，不支持上传）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val account = accountInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (account.isEmpty() || password.isEmpty()) {
                    appendLog("⚠️ 请输入 Zwift 账号和密码")
                    return@setPositiveButton
                }
                prefs.saveZwiftAccount(account)
                appendLog("🔐 Zwift直接登录中...")
                lifecycleScope.launch(Dispatchers.IO) {
                    val result = zwiftApi.login(account, password)
                    runOnUiThread {
                        if (result != null) {
                            prefs.saveZwiftToken(result.token)
                            prefs.saveZwiftRefreshToken(result.refreshToken)
                            // 解析 playerId 供活动列表使用
                            lifecycleScope.launch(Dispatchers.IO) {
                                val pid = zwiftApi.getProfileId(result.token)
                                runOnUiThread {
                                    if (!pid.isNullOrBlank()) prefs.saveZwiftPlayerId(pid)
                                    appendLog("✅ Zwift登录成功")
                                    fetchUsernameAfterLogin(DataSource.ZWIFT)
                                    loginFragment.updateStatus()
                                    try { settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                                }
                            }
                        } else {
                            appendLog("❌ Zwift登录失败：账号或密码错误，请重新输入")
                            loginFragment.updateStatus()
                            try { settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                        }
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.9.2: Keep 直接登录——手机号密码原生表单直调 KeepApi（纯API，仅下载源；上传走 Keep App 半自动导入） */
    internal fun openKeepLogin() {
        val layout = android.widget.LinearLayout(this).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val accountInput = android.widget.EditText(this).apply {
            hint = "Keep 手机号"
            inputType = android.text.InputType.TYPE_CLASS_PHONE
            setText(prefs.getKeepAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(this).apply {
            hint = "Keep 密码"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(accountInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(this)
            .setTitle("登录 Keep")
            .setMessage("手机号密码直接登录，Keep 作为数据源（下载运动记录）；上传 Keep 需在 Keep App 内手动导入（运动→数据同步→运动数据文件去导入）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val account = accountInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (account.isEmpty() || password.isEmpty()) {
                    appendLog("⚠️ 请输入 Keep 手机号和密码")
                    return@setPositiveButton
                }
                prefs.saveKeepAccount(account)
                appendLog("🔐 Keep直接登录中...")
                lifecycleScope.launch(Dispatchers.IO) {
                    val result = keepApi.login(account, password)
                    runOnUiThread {
                        if (result != null) {
                            prefs.saveKeepToken(result.token)
                            appendLog("✅ Keep登录成功")
                            fetchUsernameAfterLogin(DataSource.KEEP)
                        } else {
                            appendLog("❌ Keep登录失败：账号或密码错误，请重新输入")
                        }
                        loginFragment.updateStatus()
                        try { settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.9.5: 咕咚直接登录——手机号+密码（纯API，仅下载源） */
    internal fun openCodoonLogin() {
        val layout = android.widget.LinearLayout(this).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val accountInput = android.widget.EditText(this).apply {
            hint = "咕咚 手机号"
            inputType = android.text.InputType.TYPE_CLASS_PHONE
            setText(prefs.getCodoonAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(this).apply {
            hint = "咕咚 密码"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(accountInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(this)
            .setTitle("登录 咕咚")
            .setMessage("手机号密码直接登录，咕咚作为数据源（下载运动记录）；咕咚官方无开放上传API，暂不支持上传到咕咚")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val account = accountInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (account.isEmpty() || password.isEmpty()) {
                    appendLog("⚠️ 请输入咕咚手机号和密码")
                    return@setPositiveButton
                }
                prefs.saveCodoonAccount(account)
                prefs.saveCodoonPassword(password)
                appendLog("🔐 咕咚直接登录中...")
                lifecycleScope.launch(Dispatchers.IO) {
                    val result = codoonApi.login(account, password)
                    runOnUiThread {
                        if (result != null) {
                            prefs.saveCodoonToken(result.token)
                            prefs.saveCodoonUserId(result.userId)
                            appendLog("✅ 咕咚登录成功")
                            fetchUsernameAfterLogin(DataSource.CODOON)
                        } else {
                            appendLog("❌ 咕咚登录失败：账号或密码错误，请重新输入")
                        }
                        loginFragment.updateStatus()
                        try { settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.9.5: Zepp（华米）直接登录——邮箱/手机号+密码（纯API，仅下载源） */
    internal fun openZeppLogin() {
        val layout = android.widget.LinearLayout(this).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val accountInput = android.widget.EditText(this).apply {
            hint = "Zepp 邮箱或手机号"
            inputType = android.text.InputType.TYPE_CLASS_TEXT
            setText(prefs.getZeppAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(this).apply {
            hint = "Zepp 密码"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(accountInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(this)
            .setTitle("登录 Zepp")
            .setMessage("使用 Zepp/小米运动 App 账号邮箱或手机号密码直接登录，Zepp 作为数据源（下载运动记录）；华米无官方开放上传API，暂不支持上传到 Zepp")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val account = accountInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (account.isEmpty() || password.isEmpty()) {
                    appendLog("⚠️ 请输入 Zepp 邮箱/手机号和密码")
                    return@setPositiveButton
                }
                prefs.saveZeppAccount(account)
                // v8.0.1: 登录节流——华米对连续登录风控严格(429)，10 秒内禁止重复提交
                val now = System.currentTimeMillis()
                if (now - lastZeppLoginAttempt < 10_000) {
                    appendLog("⚠️ Zepp 登录过于频繁，请稍等 10 秒再试（避免触发华米风控）")
                    return@setPositiveButton
                }
                lastZeppLoginAttempt = now
                appendLog("🔐 Zepp直接登录中...")
                lifecycleScope.launch(Dispatchers.IO) {
                    val result = zeppApi.login(account, password)
                    runOnUiThread {
                        if (result != null && result.appToken.isNotBlank()) {
                            prefs.saveZeppToken(result.appToken)
                            prefs.saveZeppUserId(result.userId)
                            appendLog("✅ Zepp登录成功")
                            fetchUsernameAfterLogin(DataSource.ZEPP)
                        } else {
                            // v8.0.1: 区分风控(429)与密码错误，不再一律提示"账号或密码错误"
                            appendLog("❌ Zepp登录失败：${result?.error ?: "账号或密码错误，请重新输入"}")
                        }
                        loginFragment.updateStatus()
                        try { settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.9.6: Komoot 直接登录——邮箱+密码（纯API Basic认证，双向：下载+上传） */
    internal fun openKomootLogin() {
        val layout = android.widget.LinearLayout(this).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val emailInput = android.widget.EditText(this).apply {
            hint = "Komoot 邮箱"
            inputType = android.text.InputType.TYPE_TEXT_VARIATION_EMAIL_ADDRESS
            setText(prefs.getKomootAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(this).apply {
            hint = "Komoot 密码"
            inputType = android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(emailInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(this)
            .setTitle("登录 Komoot")
            .setMessage("使用 Komoot 官网注册账号的邮箱密码直接登录，Komoot 作为数据源和上传目标（双向同步）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val email = emailInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (email.isEmpty() || password.isEmpty()) {
                    appendLog("⚠️ 请输入 Komoot 邮箱和密码")
                    return@setPositiveButton
                }
                prefs.saveKomootAccount(email)
                appendLog("🔐 Komoot直接登录中...")
                lifecycleScope.launch(Dispatchers.IO) {
                    val result = komootApi.login(email, password)
                    runOnUiThread {
                        if (result != null) {
                            prefs.saveKomootToken(result.token)
                            prefs.saveUsername(DataSource.KOMOT, result.username)
                            appendLog("✅ Komoot登录成功")
                            fetchUsernameAfterLogin(DataSource.KOMOT)
                        } else {
                            appendLog("❌ Komoot登录失败：邮箱或密码错误，请重新输入")
                        }
                        loginFragment.updateStatus()
                        try { settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /**
     * v7.9.6: Suunto（松拓）登录——OAuth2 授权。
     * 需要 apizone.suunto.com 注册开发者应用的 client_id/client_secret/subscription_key 三凭证。
     * ① 若凭证已内置/已保存 → 直接打开 WebView 授权页；
     * ② 否则先弹对话框填三凭证（仅首次）。
     */
    internal fun openSuuntoLogin() {
        val hasCreds = com.jichi.ob.api.SuuntoApi.isBuiltinConfigured() ||
            (!prefs.getSuuntoClientId().isNullOrEmpty() && !prefs.getSuuntoClientSecret().isNullOrEmpty() && !prefs.getSuuntoSubscriptionKey().isNullOrEmpty())
        if (!hasCreds) {
            // 首次：填三凭证
            val layout = android.widget.LinearLayout(this).apply {
                orientation = android.widget.LinearLayout.VERTICAL
                setPadding(48, 24, 48, 24)
            }
            val clientIdInput = android.widget.EditText(this).apply {
                hint = "Client ID"
                inputType = android.text.InputType.TYPE_CLASS_TEXT
                setText(prefs.getSuuntoClientId() ?: "")
            }
            val clientSecretInput = android.widget.EditText(this).apply {
                hint = "Client Secret"
                inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD
                setText(prefs.getSuuntoClientSecret() ?: "")
            }
            val subKeyInput = android.widget.EditText(this).apply {
                hint = "Subscription Key"
                inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD
                setText(prefs.getSuuntoSubscriptionKey() ?: "")
            }
            layout.addView(clientIdInput)
            layout.addView(clientSecretInput)
            layout.addView(subKeyInput)

            androidx.appcompat.app.AlertDialog.Builder(this)
                .setTitle("松拓开发者凭证")
                .setMessage("在 apizone.suunto.com 免费注册开发者应用（个人申请约3-4周审批），到应用详情页复制 Client ID / Client Secret / Subscription Key 三凭证（仅首次填写，仅存本机）")
                .setView(layout)
                .setPositiveButton("下一步") { _, _ ->
                    val cid = clientIdInput.text.toString().trim()
                    val cs = clientSecretInput.text.toString().trim()
                    val sk = subKeyInput.text.toString().trim()
                    if (cid.isEmpty() || cs.isEmpty() || sk.isEmpty()) {
                        appendLog("⚠️ 请完整填写松拓三个凭证")
                        return@setPositiveButton
                    }
                    prefs.saveSuuntoClientId(cid)
                    prefs.saveSuuntoClientSecret(cs)
                    prefs.saveSuuntoSubscriptionKey(sk)
                    launchSuuntoWebAuth(cid)
                }
                .setNegativeButton("取消", null)
                .show()
        } else {
            val cid = if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured())
                com.jichi.ob.api.SuuntoApi.BUILTIN_CLIENT_ID else prefs.getSuuntoClientId()!!
            launchSuuntoWebAuth(cid)
        }
    }

    private fun launchSuuntoWebAuth(clientId: String) {
        appendLog("🔐 打开松拓授权页...")
        openLogin(LoginWebActivity.TYPE_SUUNTO, suuntoApi.authorizeUrl(clientId))
    }

    /** v7.8.5: Intervals.icu 直接登录——粘贴个人 API Key（纯API，仅上传目标） */
    internal fun openIntervalsIcuLogin() {
        val layout = android.widget.LinearLayout(this).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val keyInput = android.widget.EditText(this).apply {
            hint = "Intervals.icu API Key"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD
            setText(prefs.getIntervalsIcuKey() ?: "")
        }
        layout.addView(keyInput)

        androidx.appcompat.app.AlertDialog.Builder(this)
            .setTitle("登录 Intervals.icu")
            .setMessage("在 intervals.icu 设置页底部复制你的 API Key 粘贴到这里（仅用于上传同步，Key 仅保存在本机）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val apiKey = keyInput.text.toString().trim()
                if (apiKey.isEmpty()) {
                    appendLog("⚠️ 请输入 Intervals.icu API Key")
                    return@setPositiveButton
                }
                prefs.saveIntervalsIcuKey(apiKey)
                appendLog("🔐 Intervals.icu 校验 API Key 中...")
                lifecycleScope.launch(Dispatchers.IO) {
                    val ok = intervalsIcuApi.validateKey(apiKey)
                    runOnUiThread {
                        if (ok) {
                            prefs.saveUsername(DataSource.INTERVALS_ICU, "Intervals.icu用户")
                            appendLog("✅ Intervals.icu API Key 有效，登录成功")
                            fetchUsernameAfterLogin(DataSource.INTERVALS_ICU)
                        } else {
                            prefs.clearCredential(DataSource.INTERVALS_ICU)
                            appendLog("❌ Intervals.icu API Key 无效或网络异常，请重新输入")
                        }
                        loginFragment.updateStatus()
                        try { settingsFragment?.refreshLoginState() } catch (_: Exception) {}
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

    /**
     * v8.2.2: 启动轻量登录检测——只做本地凭证校验（不发网络请求），
     * 避免启动即撞平台风控；网络级检测由登录页"一键检测"触发 checkAllLogins。
     */
    /** v8.2.3: 平台统计 + 平台日志写入（IO 线程调用；type: dl下载/ok上传成功/skip跳过/err失败） */
    private fun recordSync(ds: DataSource, type: String, okDelta: Int = 0, skipDelta: Int = 0, failDelta: Int = 0, msg: String = "") {
        try {
            val cache = com.jichi.ob.util.ActivityCache.get(this)
            cache.addPlatformStat(ds.shortName, okDelta, skipDelta, failDelta, System.currentTimeMillis())
            if (msg.isNotEmpty()) cache.addPlatformLog(ds.shortName, type, msg)
        } catch (_: Exception) {}
    }

    private fun initLoginStatesLight() {
        val logged = DataSource.sourcePlatforms().count { prefs.isLoggedIn(it) }
        val cacheCount = try { com.jichi.ob.util.ActivityCache.get(this).queryByPlatform("").size } catch (_: Exception) { 0 }
        appendLog("📊 启动登录检测: $logged 个平台凭证有效（网络检测请用登录页「一键检测」）")
        runOnUiThread {
            loginFragment.updateStatus()
            try { settingsFragment?.refreshLoginState() } catch (_: Exception) {}
        }
    }

    /** v8.2.2: 一键检测——网络级登录态全量校验（登录页按钮触发；onDone 返回汇总） */
    internal fun checkAllLogins(onDone: ((valid: Int, refreshed: Int, invalid: Int) -> Unit)? = null) {
        appendLog("🔍 登录检测中...")
        lifecycleScope.launch(Dispatchers.IO) {
            var valid = 0
            var refreshed = 0
            var invalid = 0
            val invalidList = ArrayList<DataSource>()
            val platforms = listOf(
                DataSource.IGPSPORT, DataSource.XINGZHE, DataSource.MAGENE, DataSource.BLACKBIRD,
                DataSource.BRYTON, DataSource.OUTBASE, DataSource.GARMIN_COM, DataSource.GARMIN_CN,
                DataSource.COROS_CN, DataSource.COROS_INT, DataSource.WAHOO, DataSource.GIANT,
                DataSource.MYWHOOSH, DataSource.ZWIFT, DataSource.INTERVALS_ICU, DataSource.KEEP,
                DataSource.CODOON, DataSource.ZEPP, DataSource.KOMOT, DataSource.SUUNTO
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
                        DataSource.GIANT -> giantApi.getUsername(cred)
                        DataSource.OUTBASE -> outbaseApi.getUsername(cred)
                        DataSource.GARMIN_COM -> garminApi.getUsername(ds, cred)
                        DataSource.GARMIN_CN -> garminApi.getUsername(ds, cred)
                        DataSource.COROS_CN -> corosApi.getUsername(cred)
                        DataSource.COROS_INT -> corosApi.getUsername(cred)
                        DataSource.WAHOO -> wahooApi.getUsername(cred)
                        DataSource.MYWHOOSH -> mywhooshApi.getUsername(cred)
                        DataSource.ZWIFT -> {
                            val u = zwiftApi.getUsername(cred)
                            if (u != null && zwiftApi.isTrialAccount(cred)) {
                                appendLog("⚠️ Zwift 为试用订阅账号：可查看活动列表，但 Zwift 不提供 FIT 文件下载，需升级会员")
                            }
                            u
                        }
                        DataSource.KEEP -> keepApi.getUsername(cred)
                        DataSource.CODOON -> codoonApi.getUsername(cred, prefs.getCodoonUserId())
                        DataSource.ZEPP -> zeppApi.getUsername(cred)
                        DataSource.KOMOT -> {
                            val email = prefs.getKomootAccount()
                            if (email.isNullOrEmpty()) null else komootApi.getUsername(email, cred)
                        }
                        DataSource.SUUNTO -> {
                            val sk = suuntoSubscriptionKey()
                            if (sk.isNullOrEmpty()) null else suuntoApi.getUsername(cred, sk)
                        }
                        DataSource.TWO_BULU -> "两步路用户"
                        DataSource.STRAVA -> "Strava用户"
                        DataSource.POLAR -> "Polar用户"
                        DataSource.FITBIT -> "Fitbit用户"
                        DataSource.WITHINGS -> "Withings用户"
                        DataSource.TRAININGPEAKS -> "TrainingPeaks用户"
                        DataSource.INTERVALS_ICU -> {
                            // v7.8.5: API Key 有效性即登录态
                            if (intervalsIcuApi.validateKey(cred))
                                prefs.getUsername(DataSource.INTERVALS_ICU) ?: "Intervals.icu用户"
                            else null
                        }
                    }
                } catch (e: Exception) {
                    Log.w(TAG, "启动登录检测 ${ds.displayName} 异常: ${e.message}")
                    null
                }
                if (!username.isNullOrBlank()) {
                    valid++
                    prefs.saveUsername(ds, username)
                    // v7.6.9: 迈金JWT若快过期(<1小时)，后台主动刷新，避免同步时才401
                    if (ds == DataSource.MAGENE) {
                        try {
                            val expLeft = mageneApi.getJwtExpRemainingSec(cred)
                            if (expLeft != null && expLeft < 3600) {
                                val refresh = prefs.getMageneRefreshToken()
                                if (!refresh.isNullOrEmpty()) {
                                    val newTok = mageneApi.refreshToken(refresh)
                                    if (newTok != null && newTok != cred) {
                                        prefs.saveCredential(ds, newTok)
                                        prefs.saveMageneRefreshToken(refresh)
                                        runOnUiThread { appendLog("🔄 ${ds.displayName} token将过期，已后台提前刷新") }
                                    }
                                }
                            }
                        } catch (e: Exception) { Log.w(TAG, "迈金提前刷新异常: ${e.message}") }
                    }
                    runOnUiThread { appendLog("✅ 登录有效: ${ds.displayName} ($username)") }
                    continue
                }
                // 登录态失效 → 尝试刷新
                val newCred = refreshCredentialOnStart(ds, cred)
                if (newCred != null && newCred != cred) {
                    refreshed++
                    prefs.saveCredential(ds, newCred)
                    // v7.6.1: 刷新后校验新token是否真实可用，输出明确成功/失败日志
                    // v7.6.8: 迈金刷新成功即保存新token；校验失败不再提示"同步失败请重新登录"（新token已保存，
                    //         同步时若真失效会有明确的401报错兜底，避免刷新成功却误报需重登）
                    val verifyName = try {
                        when (ds) {
                            DataSource.MAGENE -> mageneApi.getUsername(newCred)
                            DataSource.WAHOO -> wahooApi.getUsername(newCred)
                            else -> null
                        }
                    } catch (e: Exception) { null }
                    val suffix = if (verifyName.isNullOrBlank())
                        "（已自动刷新，同步时将自动校验）"
                    else " ✅ 登录有效 ($verifyName)"
                    runOnUiThread { appendLog("🔄 ${ds.displayName} 登录态失效，已自动刷新$suffix") }
                } else {
                    invalid++
                    invalidList.add(ds)
                    if (ds == DataSource.WAHOO || ds == DataSource.COROS_CN || ds == DataSource.COROS_INT
                        || ds == DataSource.GARMIN_COM || ds == DataSource.GARMIN_CN) {
                        // v7.6.8: Wahoo/高驰失效时【绝不】清除凭证！
                        // Wahoo: token/refresh_token有复用价值，清除会导致重登走完整OAuth新建token触发10枚上限
                        // 高驰: 凭证含regionId/cookie，保留后重登时WebView可复用cookie自动登录，无需重新选区域输账号
                        // v7.9.0: 佳明DI凭证含refresh_token，失效时同样保留——同步前会ensureValidToken静默刷新，
                        //         若refresh_token也失效（冷却期外），重登时WebView可复用cookie自动登录，无需重输账号密码
                        runOnUiThread { appendLog("❌ ${ds.displayName} 登录失效，请重新登录（已保留令牌，重登时自动复用/刷新，不会新建令牌）") }
                    } else {
                        prefs.clearCredential(ds)
                        runOnUiThread { appendLog("❌ ${ds.displayName} 登录失效，请重新登录") }
                    }
                }
            }
            runOnUiThread {
                lastInvalidPlatforms = invalidList
                loginFragment.updateStatus()
                appendLog("📊 登录检测完成: ${valid}有效 / ${refreshed}刷新成功 / ${invalid}失效")
                onDone?.invoke(valid, refreshed, invalid)
            }
        }
    }

    /**
     * v7.5.9: 启动检测时尝试刷新失效平台的登录态
     * 仅支持有刷新机制的平台；返回 null 表示无法刷新（需重新登录）
     */
    private suspend fun refreshCredentialOnStart(ds: DataSource, cred: String): String? = when (ds) {
        DataSource.CODOON -> {
            // v8.1.1: 咕咚无 refresh 端点，token 失效后用保存的账号密码自动重登（否则"登录状态记不住"）
            val account = prefs.getCodoonAccount()
            val password = prefs.getCodoonPassword()
            if (account.isNullOrEmpty() || password.isNullOrEmpty()) null
            else try {
                val r = codoonApi.login(account, password)
                if (r != null) {
                    prefs.saveCodoonToken(r.token)
                    prefs.saveCodoonUserId(r.userId)
                    r.token
                } else null
            } catch (e: Exception) {
                Log.w(TAG, "咕咚自动重登异常: ${e.message}")
                null
            }
        }
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
        DataSource.GARMIN_COM, DataSource.GARMIN_CN -> {
            // v7.9.0: 佳明DI token静默刷新（用refresh_token，不重新SSO登录，避免撞429风控）
            // ensureValidToken内部判断：未过期→原样返回；过期且有refresh_token→刷新返回新凭证
            try {
                garminApi.ensureValidToken(ds, cred)
            } catch (e: Exception) {
                Log.w(TAG, "佳明刷新异常: ${e.message}")
                null
            }
        }
        DataSource.ZWIFT -> {
            // v7.8.4: Zwift refresh_token 轮换刷新
            val refresh = prefs.getZwiftRefreshToken()
            if (refresh.isNullOrEmpty()) null
            else {
                val fresh = zwiftApi.refreshToken(refresh)
                if (fresh != null) {
                    prefs.saveZwiftToken(fresh.first)
                    prefs.saveZwiftRefreshToken(fresh.second)
                    fresh.first
                } else null
            }
        }
        DataSource.MYWHOOSH -> null  // MyWhoosh 无 refresh 端点，需重新登录
        DataSource.INTERVALS_ICU -> null  // Intervals.icu 无 refresh，需重新输入 API Key
        DataSource.KEEP -> null  // Keep 无 refresh 端点，需重新登录
        DataSource.CODOON -> null  // 咕咚无 refresh 端点，需重新登录
        DataSource.ZEPP -> null  // Zepp 无 refresh 端点，需重新登录
        DataSource.KOMOT -> {
            // v7.9.6: Komoot token 为长期令牌，失效时用内存中的最近账号密码自动重登
            try {
                val fresh = komootApi.reLoginIfNeeded()
                fresh?.token
            } catch (e: Exception) { null }
        }
        DataSource.SUUNTO -> {
            // v7.9.6: Suunto 用 refresh_token 刷新（轮换令牌，成功后需同时保存新access+refresh）
            val refresh = prefs.getSuuntoRefresh()
            val clientId = if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured()) com.jichi.ob.api.SuuntoApi.BUILTIN_CLIENT_ID else prefs.getSuuntoClientId()
            val clientSecret = if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured()) com.jichi.ob.api.SuuntoApi.BUILTIN_CLIENT_SECRET else prefs.getSuuntoClientSecret()
            val subKey = suuntoSubscriptionKey()
            if (refresh.isNullOrEmpty() || clientId.isNullOrEmpty() || clientSecret.isNullOrEmpty() || subKey.isNullOrEmpty()) null
            else {
                val fresh = suuntoApi.refreshToken(refresh, clientId, clientSecret, subKey)
                if (fresh != null) {
                    prefs.saveSuuntoToken(fresh.accessToken)
                    prefs.saveSuuntoRefresh(fresh.refreshToken)
                    fresh.accessToken
                } else null
            }
        }
        else -> null
    }

    /** v7.9.6: Suunto Subscription Key（内置优先，其次用户配置） */
    private fun suuntoSubscriptionKey(): String? =
        if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured())
            com.jichi.ob.api.SuuntoApi.BUILTIN_SUBSCRIPTION_KEY
        else prefs.getSuuntoSubscriptionKey()

    private fun fetchUsernameAfterLogin(ds: DataSource) {
        // v8.2.5: 所有平台登录成功的统一入口——立即从失效清单移除该平台并刷新登录卡片（此前需手动点"检测"才恢复红标）
        if (lastInvalidPlatforms.isNotEmpty() && lastInvalidPlatforms.contains(ds)) {
            lastInvalidPlatforms = lastInvalidPlatforms.filter { it != ds }
            runOnUiThread { try { loginFragment.updateStatus() } catch (_: Exception) {} }
        }
        lifecycleScope.launch(Dispatchers.IO) {
            val cred = prefs.getCredential(ds) ?: return@launch
            val name = when (ds) {
                DataSource.IGPSPORT -> igpsportApi.getUsername(cred)
                DataSource.XINGZHE -> xingzheApi.getUsername(cred)
                DataSource.MAGENE -> mageneApi.getUsername(cred)
                DataSource.BLACKBIRD -> blackbirdApi.getUsername(cred)
                DataSource.BRYTON -> brytonApi.getUsername(cred)
                DataSource.GIANT -> giantApi.getUsername(cred)
                DataSource.OUTBASE -> outbaseApi.getUsername(cred)
                // v6.7.2: 佳明displayName是UUID(用户ID)，不获取不显示，直接已登录
                DataSource.GARMIN_COM -> null
                DataSource.GARMIN_CN -> null
                DataSource.COROS_CN -> corosApi.getUsername(cred)
                DataSource.COROS_INT -> corosApi.getUsername(cred)
                DataSource.WAHOO -> wahooApi.getUsername(cred)
                DataSource.MYWHOOSH -> mywhooshApi.getUsername(cred)
                DataSource.ZWIFT -> {
                    val u = zwiftApi.getUsername(cred)
                    if (u != null && zwiftApi.isTrialAccount(cred)) {
                        appendLog("⚠️ Zwift 为试用订阅账号：可查看活动列表，但 Zwift 不提供 FIT 文件下载，需升级会员")
                    }
                    u
                }
                DataSource.INTERVALS_ICU -> "Intervals.icu用户"
                DataSource.KEEP -> keepApi.getUsername(cred)
                DataSource.CODOON -> codoonApi.getUsername(cred, prefs.getCodoonUserId())
                DataSource.ZEPP -> zeppApi.getUsername(cred)
                DataSource.KOMOT -> {
                    val email = prefs.getKomootAccount()
                    if (email.isNullOrEmpty()) null else komootApi.getUsername(email, cred)
                }
                DataSource.SUUNTO -> suuntoApi.getUsername(cred, suuntoSubscriptionKey() ?: "")
                DataSource.TWO_BULU -> "两步路用户"
                DataSource.STRAVA -> "Strava用户"
                DataSource.POLAR -> "Polar用户"
                DataSource.FITBIT -> "Fitbit用户"
                DataSource.WITHINGS -> "Withings用户"
                DataSource.TRAININGPEAKS -> "TrainingPeaks用户"
            }
            if (name != null) {
                prefs.saveUsername(ds, name)
                appendLog("👤 ${ds.displayName}用户: $name")
                runOnUiThread { loginFragment.updateStatus() }
            }
            // v8.2.3.4: 登录成功后询问是否预拉取最近运动记录（用户可暂不；后台执行不卡登录）
            runOnUiThread {
                try {
                    if (!isFinishing && !isDestroyed) {
                        androidx.appcompat.app.AlertDialog.Builder(this@MainActivity)
                            .setTitle("拉取最近运动记录？")
                            .setMessage("已登录 ${ds.displayName}。是否立即拉取最近运动记录到记录中心？\n（后台执行不影响使用；也可在批量同步时自动写入缓存）")
                            .setPositiveButton("立即拉取") { _, _ -> preloadRecent(ds) }
                            .setNegativeButton("暂不", null)
                            .show()
                    }
                } catch (_: Exception) {}
            }
        }
    }

    /** v8.2.3.10: 时间归一——秒→毫秒；startTimeMs 无效时用时间字符串解析兜底；再归一次秒→毫秒 */
    private fun normStartMs(ms: Long, timeStr: String, cache: com.jichi.ob.util.ActivityCache): Long {
        var t = ms
        if (t > 0 && t < 1_000_000_000_000L) t *= 1000L
        if (t <= 0) t = cache.parseStartTimeMs(timeStr)
        if (t > 0 && t < 1_000_000_000_000L) t *= 1000L
        return t
    }

    /** v8.2.5: 从平台 extra 提取干净运动类型（历史实现把 extra 原样塞进 type 列导致记录中心显示长串） */
    private fun cleanCacheType(ds: com.jichi.ob.model.DataSource, extra: String?): String {
        val s = extra ?: return ""
        return when (ds) {
            com.jichi.ob.model.DataSource.KEEP -> {  // extra="id|type"
                val i = s.indexOf('|')
                val t = if (i >= 0) s.substring(i + 1) else ""
                when (t) { "running" -> "跑步"; "cycling" -> "骑行"; "hiking" -> "徒步"; "swimming" -> "游泳"; "other" -> "运动"; else -> t }
            }
            else -> ""  // 其余平台 extra 是下载凭证，无类型语义
        }
    }

    /** v8.2.3.9: 预拉取全部运动记录元数据入库（循环分页全量；上限=缓存库单平台2000条；后台IO不卡UI；失败可见反馈） */
    fun preloadRecent(ds: DataSource) {
        lifecycleScope.launch(Dispatchers.IO) {
            val n = preloadAllOf(ds)
            if (n == 0) {
                runOnUiThread {
                    Toast.makeText(this@MainActivity, "${ds.displayName} 暂无运动记录", Toast.LENGTH_SHORT).show()
                    try { loginFragment.updateStatus() } catch (_: Exception) {}
                }
            } else if (n > 0) {
                runOnUiThread {
                    Toast.makeText(this@MainActivity, "已拉取 $n 条 ${ds.displayName} 记录", Toast.LENGTH_LONG).show()
                }
            }
        }
    }

    /** v8.2.3.9: 登录页「拉取全部」——串行拉取所有已登录平台（防并发触发风控），汇总反馈 */
    fun preloadAll() {
        lifecycleScope.launch(Dispatchers.IO) {
            val platforms = DataSource.entries.filter { it != DataSource.OUTBASE && prefs.isLoggedIn(it) }
            if (platforms.isEmpty()) {
                runOnUiThread { Toast.makeText(this@MainActivity, "暂无已登录平台", Toast.LENGTH_SHORT).show() }
                return@launch
            }
            appendLog("🔄 手动拉取全部：${platforms.joinToString("、") { it.displayName }}")
            var okCount = 0
            var total = 0
            for (ds in platforms) {
                val n = try { preloadAllOf(ds) } catch (e: Exception) { -1 }
                if (n >= 0) { okCount++; total += n }
            }
            appendLog("✅ 拉取完成：$okCount 个平台共 $total 条")
            runOnUiThread {
                Toast.makeText(this@MainActivity, "拉取完成：$okCount 个平台共 $total 条记录", Toast.LENGTH_LONG).show()
                try { loginFragment.updateStatus() } catch (_: Exception) {}
                try { if (::recordFragment.isInitialized) recordFragment.refresh() } catch (_: Exception) {}
            }
        }
    }

    /** 单平台全量拉取核心：返回入库条数（0=无记录，-1=失败）；日志逐批输出进度 */
    private suspend fun preloadAllOf(ds: DataSource): Int {
        try {
            appendLog("📥 ${ds.displayName} 预拉取全部运动记录...")
            val all = mutableListOf<ActivityRecord>()
            val seen = HashSet<String>()
            var skip = 0
            val BATCH = 200
            val MAX = 2000 // 与缓存库单平台上限一致
            var batches = 0
            // v8.2.3.9: 判据修正——只有「空返回」或「id 全重复（游标未动）」才算拉完；
            // 不再用 batch.size < BATCH（Keep 每页仅返回部分记录，不足一批不代表没有更多）
            while (all.size < MAX && batches < 60) {
                val batch = try {
                    fetchActivities(ds, skip, BATCH)
                } catch (e: Exception) {
                    appendLog("⚠️ ${ds.displayName} 第 ${skip + 1} 条起拉取中断: ${e.message}")
                    break
                }
                if (batch.isEmpty()) break
                // 防死循环：本批 id 与已拉全部重复 → 平台游标未前进，收口
                val before = seen.size
                batch.forEach { seen.add(it.id) }
                if (seen.size == before) break
                all.addAll(batch)
                batches++
                appendLog("📥 ${ds.displayName} 已拉取 ${all.size} 条...")
                skip += batch.size
            }
            if (all.isEmpty()) {
                appendLog("⏳ ${ds.displayName} 暂无运动记录")
                return 0
            }
            // v8.2.6: igp 列表接口不带时间 → 对时间缺失记录下载 FIT 解析时间回填（限最近30条，避免全量下载过重）
            if (ds == com.jichi.ob.model.DataSource.IGPSPORT) {
                val missingCount = all.count { it.startTimeMs <= 0 }
                if (missingCount > 0) {
                    val token = prefs.getIgpsportToken()
                    if (!token.isNullOrEmpty()) {
                        appendLog("⏳ iGPSPORT ${missingCount} 条无时间，下载 FIT 解析（限最近30条）...")
                        var fixed = 0
                        val fmt = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.getDefault())
                        for (rec in all.filter { it.startTimeMs <= 0 }.take(30)) {
                            try {
                                val fit = igpsportApi.downloadFitFile(token, rec.id, rec.extra)
                                val ms = igpsportApi.parseFitStartTimeMs(fit)
                                if (ms > 0) {
                                    rec.startTimeMs = ms
                                    val idx = all.indexOf(rec)
                                    if (idx >= 0) all[idx] = rec.copy(startTime = fmt.format(java.util.Date(ms)))
                                    fixed++
                                }
                            } catch (_: Exception) {}
                        }
                        appendLog("✅ iGPSPORT FIT 时间回填 ${fixed}/${minOf(missingCount, 30)} 条（未回填的可单点下载后自动补）")
                    }
                }
            }
            val cache = com.jichi.ob.util.ActivityCache.get(this@MainActivity)
            cache.upsertBatch(ds.shortName, all.map {
                com.jichi.ob.util.ActivityCache.Entry(
                    id = it.id,
                    platform = ds.shortName,
                    startTime = normStartMs(it.startTimeMs, it.startTime, cache),
                    type = cleanCacheType(ds, it.extra),
                    title = it.title,
                    distanceKm = it.distance,
                    durationSec = it.duration,
                    filename = "",
                    extra = it.extra ?: ""
                )
            })
            // v8.2.3.10: 预拉取平台日志写入详情弹窗可见（导入/成功/失败）
            cache.addPlatformLog(ds.shortName, "导入", "预拉取 ${all.size} 条记录入库")
            appendLog("💾 ${ds.displayName} 已缓存 ${all.size} 条记录到记录中心")
            runOnUiThread {
                try { loginFragment.updateStatus() } catch (_: Exception) {}
                try { if (::recordFragment.isInitialized) recordFragment.refresh() } catch (_: Exception) {}
            }
            return all.size
        } catch (e: Exception) {
            appendLog("⚠️ ${ds.displayName} 预拉取失败: ${e.message}")
            return -1
        }
    }

    // v7.6.2: 日志/进度/同步态统一转发给SyncFragment
    // v8.1.3: Fragment detached 防御——后台同步/Worker 回调时页面可能已销毁，任何 UI 异常不允许冒泡崩溃
    private fun appendLog(message: String) {
        Log.i(TAG, message)
        // v7.6.9: 同步日志持久化，App重开/后台自动同步日志仍可见
        prefs.appendPersistLog(message)
        runOnUiThread {
            try { syncFragment.appendLog(message) } catch (_: Exception) {}
        }
    }

    /** v8.3.5: 毫秒时间戳 → "MM-dd HH:mm"（游标日志显示） */
    private fun fmtTime(ms: Long): String = try {
        java.text.SimpleDateFormat("MM-dd HH:mm", java.util.Locale.getDefault()).format(Date(ms))
    } catch (e: Exception) { ms.toString() }

    // v6.7.5: 输出GarminApi调试日志到界面（转发SyncFragment）
    private fun flushGarminDebugLogs() {
        try {
            val logs = GarminApi.debugLogs
            synchronized(logs) {
                if (logs.isNotEmpty()) {
                    for (line in logs) { try { syncFragment.appendLog(line) } catch (_: Exception) {} }
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
        // v8.2.2: 任务×批量互斥——任务运行中禁止启动批量同步
        if (taskActive) {
            Toast.makeText(this, "同步任务运行中，请先停止任务", Toast.LENGTH_SHORT).show()
            return
        }
        // v8.2.3.5: 多对一模式仅用于任务——批量同步需一对多
        if (settingsFragment.isTaskModeMulti()) {
            Toast.makeText(this, "多对一模式仅用于任务：请先点「保存为任务」，再到同步页运行任务", Toast.LENGTH_LONG).show()
            return
        }
        val source = settingsFragment.getSelectedSource()
        // v7.6.7: 一对多同步 - 支持多目标
        var targets = settingsFragment.getSelectedTargets().distinct().filter { it != source }
        if (targets.isEmpty()) { Toast.makeText(this, "请选择至少一个同步目标", Toast.LENGTH_SHORT).show(); return }
        val count = settingsFragment.getCount()
        val skip = settingsFragment.getSkip()
        // 过滤不可用目标（开发中；Keep 为半自动导入目标，保留不移除）
        val unavailable = targets.filter { !UploadSupport.fromDataSource(it).available && it != DataSource.KEEP }
        if (unavailable.isNotEmpty()) {
            Toast.makeText(this, "${unavailable.joinToString { it.displayName }}上传功能不可用，已移除", Toast.LENGTH_SHORT).show()
            targets = targets.filter { UploadSupport.fromDataSource(it).available || it == DataSource.KEEP }
        }
        if (targets.isEmpty()) return
        if (!prefs.isLoggedIn(source)) { Toast.makeText(this, "请先登录${source.displayName}", Toast.LENGTH_SHORT).show(); return }
        // Keep 半自动导入无需 Keep 登录态，放行
        val notLoggedIn = targets.filter { it != DataSource.KEEP && !prefs.isLoggedIn(it) }
        if (notLoggedIn.isNotEmpty()) {
            Toast.makeText(this, "请先登录${notLoggedIn.joinToString { it.displayName }}", Toast.LENGTH_SHORT).show(); return
        }
        prefs.setLastSource(source.shortName)
        prefs.setLastTargets(targets.map { it.shortName })
        val targetNames = targets.joinToString("、") { it.displayName }
        appendLog("━━━━━━━━━━━━━━━━━━━━━━")
        appendLog("🚀 开始同步: ${source.displayName} → $targetNames (跳过$skip, 同步$count)")
        setSyncing(true)
        // v6.7.5: 输出GarminApi调试日志
        flushGarminDebugLogs()
        syncJob = lifecycleScope.launch(Dispatchers.IO) {
            try {
                appendLog("📥 [${source.displayName}] 获取活动列表...")
                val activities = fetchActivities(source, skip, count)
                appendLog("📋 获取到 ${activities.size} 条活动")
                flushGarminDebugLogs()
                // v8.2.0: 拉取列表后落本地缓存（轻量元数据，IO线程写入；日期检索走缓存，对齐佳速通"登录后缓存列表"做法）
                try {
                    val cache = com.jichi.ob.util.ActivityCache.get(this@MainActivity)
                    cache.upsertBatch(source.shortName, activities.map {
                        com.jichi.ob.util.ActivityCache.Entry(
                            id = it.id,
                            platform = source.shortName,
                            startTime = normStartMs(it.startTimeMs, it.startTime, cache),
                            type = cleanCacheType(source, it.extra),
                            title = it.title,
                            distanceKm = it.distance,
                            durationSec = it.duration,
                            filename = "",
                            extra = it.extra ?: ""
                        )
                    })
                    appendLog("💾 已缓存 ${activities.size} 条到记录中心")
                    // v8.2.1: 同步完成可见提示（确认缓存入库，记录中心打开即可见）
                    runOnUiThread {
                        android.widget.Toast.makeText(
                            this@MainActivity,
                            "已写入记录中心 ${activities.size} 条（${source.displayName}）",
                            android.widget.Toast.LENGTH_SHORT
                        ).show()
                    }
                } catch (e: Exception) {
                    appendLog("⚠️ 记录缓存失败: ${e.message}")
                    runOnUiThread {
                        android.widget.Toast.makeText(
                            this@MainActivity,
                            "⚠️ 记录缓存失败: ${e.message}",
                            android.widget.Toast.LENGTH_LONG
                        ).show()
                    }
                }
                // 多目标会话预校验
                for (t in targets) {
                    when (t) {
                        DataSource.OUTBASE -> {
                            val obSid = prefs.getOutbaseSessionId()
                            if (obSid == null) { appendLog("⚠️ Outbase会话缺失"); continue }
                            appendLog("🔍 校验Outbase会话...")
                            if (outbaseApi.warmUp(obSid)) appendLog("✅ Outbase会话有效") else appendLog("⚠️ Outbase会话校验未通过")
                        }
                        DataSource.XINGZHE -> {
                            val xzSid = prefs.getXingzheSessionId() ?: ""
                            appendLog("🔍 校验行者会话...")
                            if (xzSid.isNotEmpty() && xingzheApi.verifySession(xzSid)) {
                                appendLog("✅ 行者会话有效")
                            } else {
                                appendLog("⚠️ 行者登录已过期或未登录，请重新登录行者后重试")
                                targets = targets.filter { it != DataSource.XINGZHE }
                                if (targets.isEmpty()) { setSyncing(false); return@launch }
                            }
                        }
                        else -> {}
                    }
                }
                withContext(Dispatchers.Main) { syncFragment.setProgressIndeterminate(false); syncFragment.setProgressMax(activities.size); syncFragment.setProgress(0) }
                var success = 0; var skipped = 0; var failed = 0
                // v7.7.8: 累计统计——每成功/跳过/失败一条立即累加并刷新卡片（不清除记忆一直累加）
                fun updateStats(type: String) {
                    prefs.addStat(type)
                    val ok = prefs.getStatOk(); val skip = prefs.getStatSkip(); val fail = prefs.getStatFail()
                    runOnUiThread { syncFragment.setStats(ok, skip, fail) }
                }
                for ((i, act) in activities.withIndex()) {
                    if (!isActive) break
                    // v7.6.7: 一条活动只要任一目标未同步就下载；下载一次，上传到所有未同步目标
                    // v7.6.8: 忽略记忆强制重传 —— 1对多(targets>1)自动强制开启；1对1按用户开关(prefs.isForceRetransmit)
                    val forceRetransmit = prefs.isForceRetransmit() || targets.size > 1
                    val pendingTargets = targets.filter { t ->
                        val syncKey = "${source.shortName}_${act.id}_to_${t.shortName}"
                        forceRetransmit || !prefs.isSynced(syncKey)
                    }
                    if (pendingTargets.isEmpty()) {
                        skipped++; updateStats("skip"); appendLog("⏭️ [${i+1}/${activities.size}] 已同步跳过: ${act.title.take(20)}")
                        recordSync(source, "skip", 0, 0, 0, "已同步跳过 ${act.title.take(20)}")
                        withContext(Dispatchers.Main) { syncFragment.setProgress(i + 1) }; continue
                    }
                    appendLog("⬇️ [${i+1}/${activities.size}] 下载: ${act.title.take(20)} id=${act.id} (${"%.1f".format(act.distance)}km)")
                    val fileData = try { downloadActivity(source, targets.first(), act) } catch (e: Exception) {
                        appendLog("❌ 下载失败: ${e.message}"); failed++; updateStats("fail")
                        recordSync(source, "err", 0, 0, 1, "下载失败: ${e.message}")
                        withContext(Dispatchers.Main) { syncFragment.setProgress(i + 1) }; continue
                    }
                    if (fileData == null || fileData.size < 100) {
                        appendLog("❌ 文件数据无效"); failed++; updateStats("fail")
                        recordSync(source, "err", 0, 0, 1, "文件数据无效")
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
                        recordSync(source, "dl", 1, 0, 0, "下载 ${act.title.take(20)} ${fileData.size}字节")
                        // v8.2.0: 缓存回填文件名（记录中心可直接打开本地文件）
                        try { com.jichi.ob.util.ActivityCache.get(this@MainActivity).setFilename(source.shortName, act.id, savedPath ?: "") } catch (_: Exception) {}
                    } catch (_: Exception) {}
                    // v7.6.7: 内层循环目标上传（同一文件，多目标复用）
                    for (target in pendingTargets) {
                        if (!isActive) break
                        val syncKey = "${source.shortName}_${act.id}_to_${target.shortName}"
                        val t0 = System.currentTimeMillis()
                        appendLog("📤 上传到 ${target.displayName} (${fileData.size}字节)...")
                        if (target == DataSource.BRYTON) {
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
                        // v7.6.7: 迈金纯API直传（顽鹿OTM接口，已移除WebView兜底）
                        val result = if (target == DataSource.BRYTON) {
                            uploadToBrytonViaWebView(localFile.absolutePath)
                        } else if (target == DataSource.KEEP) {
                            // v7.9.2: Keep 半自动导入——软件生成 fit 已存本地，引导用户在 Keep App 手动导入
                            showKeepImportGuide(localName, localFile.absolutePath)
                            com.jichi.ob.api.UploadEngine.UploadResult(
                                true, message = "已生成 ${localName}，请在 Keep App 内手动导入"
                            )
                        } else {
                            uploadEngine.upload(target, targetCred, fileData, act, upExtra)
                        }
                        val tCost = System.currentTimeMillis() - t0
                        if (result.success) { success++; updateStats("ok"); prefs.addSyncedId(syncKey); recordSync(target, "ok", 0, 1, 0, "上传成功 ${act.title.take(20)}"); appendLog("✅ 上传成功(${tCost}ms): ${result.message}") }
                        else if (result.skipped) { skipped++; updateStats("skip"); prefs.addSyncedId(syncKey); recordSync(target, "skip", 0, 1, 0, "已存在跳过 ${act.title.take(20)}"); appendLog("⏭️ 已存在跳过: ${result.message}") }
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
                                            success++; updateStats("ok"); prefs.addSyncedId(syncKey)
                                            recordSync(target, "ok", 0, 1, 0, "重试上传成功 ${act.title.take(20)}")
                                            appendLog("✅ 重试上传成功(${System.currentTimeMillis() - t0}ms): ${retryResult.message}")
                                        }
                                    }
                                }
                            }
                            if (!retrySuccess) { failed++; updateStats("fail"); recordSync(target, "err", 0, 0, 1, "上传失败 ${act.title.take(20)}: ${result.message}"); appendLog("❌ 上传失败(${tCost}ms): ${result.message}") }
                        }
                    }
                    withContext(Dispatchers.Main) { syncFragment.setProgress(i + 1); settingsFragment.setSyncedCount(prefs.getSyncedCount()) }
                    delay(150) // v6.2.4: 缩短条间间隔，减少多活动同步累计等待
                }
                appendLog("━━━━━━━━━━━━━━━━━━━━━━")
                appendLog("📊 同步完成: 成功$success / 跳过$skipped / 失败$failed")
                // v7.7.8: 同步结束更新统计卡片
                withContext(Dispatchers.Main) {
                    syncFragment.setStats(prefs.getStatOk(), prefs.getStatSkip(), prefs.getStatFail())
                    // v8.2.3.4: 同步落库后刷新首页登录卡片条数徽标（数据已写入缓存库）
                    try { loginFragment.updateStatus() } catch (_: Exception) {}
                }
            } catch (e: Exception) { Log.e(TAG, "sync error", e); appendLog("❌ 同步异常: ${e.message}") }
            finally { setSyncing(false) }
        }
    }

    internal fun stopSync() { syncJob?.cancel(); appendLog("⏹ 正在停止同步...") }

    // ===== v8.2.2: 任务化同步引擎（与批量同步互斥）=====
    internal fun runTask(task: com.jichi.ob.model.SyncTask) {
        if (syncJob?.isActive == true) {
            Toast.makeText(this, "批量同步运行中，请先停止", Toast.LENGTH_SHORT).show(); return
        }
        if (taskActive) return
        val sources = task.sources.mapNotNull { DataSource.fromShortName(it) }.distinct()
        var targets = task.targets.mapNotNull { DataSource.fromShortName(it) }.distinct()
        if (sources.isEmpty() || targets.isEmpty()) {
            Toast.makeText(this, "任务未配置来源或目标", Toast.LENGTH_SHORT).show(); return
        }
        val unavailable = targets.filter { !UploadSupport.fromDataSource(it).available && it != DataSource.KEEP }
        if (unavailable.isNotEmpty())
            Toast.makeText(this, "${unavailable.joinToString { it.displayName }}上传不可用，已移除", Toast.LENGTH_SHORT).show()
        targets = targets.filter { UploadSupport.fromDataSource(it).available || it == DataSource.KEEP }
        if (targets.isEmpty()) { Toast.makeText(this, "没有可用的同步目标", Toast.LENGTH_SHORT).show(); return }
        val notLoggedSrc = sources.filter { !prefs.isLoggedIn(it) }
        if (notLoggedSrc.isNotEmpty()) {
            Toast.makeText(this, "请先登录${notLoggedSrc.joinToString { it.displayName }}", Toast.LENGTH_SHORT).show(); return
        }
        val notLoggedTgt = targets.filter { it != DataSource.KEEP && !prefs.isLoggedIn(it) }
        if (notLoggedTgt.isNotEmpty()) {
            Toast.makeText(this, "请先登录${notLoggedTgt.joinToString { it.displayName }}", Toast.LENGTH_SHORT).show(); return
        }
        appendLog("━━━━━━━━━━━━━━━━━━━━━━")
        appendLog("📦 任务开始: ${task.name}（${sources.size}来源 × ${targets.size}目标）")
        taskActive = true
        refreshTaskUi()
        taskJob = lifecycleScope.launch(Dispatchers.IO) {
            var ok = 0; var skipped = 0; var failed = 0
            try {
                for (source in sources) {
                    if (!taskActive) break
                    var srcFailed = 0  // v8.3.5: 本来源失败计数（用于游标推进判定）
                    appendLog("📥 [${source.displayName}] 获取活动列表...")
                    val activities = try { fetchActivities(source, task.skip, task.count) } catch (e: Exception) {
                        Log.e(TAG, "task fetch ${source.displayName} error", e)
                        appendLog("❌ ${source.displayName} 获取列表失败: ${e.message}")
                        recordSync(source, "err", 0, 0, 1, "获取列表失败: ${e.message}")
                        failed++; srcFailed++
                        continue
                    }
                    appendLog("📋 获取到 ${activities.size} 条活动")
                    flushGarminDebugLogs()
                    // 落缓存（对齐批量行为：拉列表即入记录中心）
                    try {
                        val cache = com.jichi.ob.util.ActivityCache.get(this@MainActivity)
                        cache.upsertBatch(source.shortName, activities.map {
                            com.jichi.ob.util.ActivityCache.Entry(
                                id = it.id, platform = source.shortName,
                                startTime = normStartMs(it.startTimeMs, it.startTime, cache),
                                type = cleanCacheType(source, it.extra), title = it.title,
                                distanceKm = it.distance, durationSec = it.duration, filename = "",
                                extra = it.extra ?: ""
                            )
                        })
                        appendLog("💾 已缓存 ${activities.size} 条到记录中心")
                    } catch (e: Exception) { appendLog("⚠️ 记录缓存失败: ${e.message}") }
                    // v8.3.5: 增量=游标时间过滤 + 缓存 existsIds 双保险（游标失败不推进，下次自动重试）
                    var list = activities
                    if (task.incremental) {
                        val cursor = prefs.getSyncCursor(source.shortName)
                        if (cursor > 0L) {
                            val before = list.size
                            list = list.filter { it.startTimeMs > cursor }
                            if (list.size < before)
                                appendLog("⏭️ 增量游标: 跳过游标之前 ${before - list.size} 条（最后同步 ${fmtTime(cursor)}）")
                        }
                        try {
                            val cache = com.jichi.ob.util.ActivityCache.get(this@MainActivity)
                            val existIds = cache.existsIds(source.shortName, list.map { it.id })
                            val before = list.size
                            list = list.filter { !existIds.contains(it.id) }
                            if (list.size < before)
                                appendLog("⏭️ 增量模式: 跳过缓存已有 ${before - list.size} 条，本次同步 ${list.size} 条")
                        } catch (e: Exception) { Log.w(TAG, "增量过滤失败: ${e.message}") }
                    }
                    // v8.3.5: 佳明目标上传前查重预检——预拉目标端列表，按 开始时间|时长 键预判重复（命中不下载不上传）
                    val garminPrecheck = mutableMapOf<DataSource, Set<String>>()
                    for (gt in targets) {
                        if (gt != DataSource.GARMIN_COM && gt != DataSource.GARMIN_CN) continue
                        try {
                            val gtCred = prefs.getCredential(gt) ?: continue
                            val existing = garminApi.getActivities(gt, gtCred, 0, 999)
                            garminPrecheck[gt] = existing.mapNotNull { r ->
                                if (r.startTimeMs > 0) "${r.startTimeMs}|${r.duration}" else null
                            }.toSet()
                            appendLog("🔎 查重预检: ${gt.displayName} 已有 ${existing.size} 条，同时间同时长自动跳过")
                        } catch (e: Exception) {
                            appendLog("⚠️ 查重预检 ${gt.displayName} 失败（不影响同步）: ${e.message}")
                        }
                    }
                    flushGarminDebugLogs()
                    val force = task.force || targets.size > 1
                    // v8.2.3: P2 并发按平台风险分级——先收集待下载条目（含各目标记忆过滤），下载阶段并行，上传阶段串行
                    val pendingItems = mutableListOf<Pair<Int, Pair<com.jichi.ob.model.ActivityRecord, List<DataSource>>>>()
                    for ((i, act) in list.withIndex()) {
                        if (!taskActive) break
                        val pendingTargets = targets.filter { t ->
                            val syncKey = "${source.shortName}_${act.id}_to_${t.shortName}"
                            val needSync = force || !prefs.isSynced(syncKey)
                            if (!needSync) return@filter false
                            // v8.3.5: 查重预检命中（同时间同时长已在目标端）→ 不下载不上传；强制重传除外
                            val preDup = act.startTimeMs > 0 && garminPrecheck[t]?.contains("${act.startTimeMs}|${act.duration}") == true
                            !preDup
                        }
                        if (pendingTargets.isEmpty()) {
                            skipped++; prefs.addStat("skip")
                            appendLog("⏭️ [${i+1}/${list.size}] 已同步跳过: ${act.title.take(20)}")
                            continue
                        }
                        pendingItems.add(i to (act to pendingTargets))
                    }
                    // 下载并发：低风险来源按全局并发数(1-4)；佳明国区/国际强制串行（风控敏感，避免并发触发冷却）
                    val dlConc = if (source == DataSource.GARMIN_COM || source == DataSource.GARMIN_CN)
                        1 else prefs.getDownloadConcurrency().coerceIn(1, 4)
                    val dlSem = java.util.concurrent.Semaphore(dlConc)
                    class Downloaded(val act: com.jichi.ob.model.ActivityRecord, val fileData: ByteArray?, val localFile: File?)
                    val dlResults = coroutineScope {
                        pendingItems.map { (i, pair) ->
                            async {
                                val act = pair.first
                                if (!taskActive) return@async Downloaded(act, null, null)
                                dlSem.acquire()
                                try {
                                    appendLog("⬇️ [${i+1}/${list.size}] 下载: ${act.title.take(20)} id=${act.id} (${"%.1f".format(act.distance)}km)")
                                    val fileData = try { downloadActivity(source, targets.first(), act, task.coordinateConvert) } catch (e: Exception) {
                                        appendLog("❌ 下载失败: ${e.message}")
                                        recordSync(source, "err", 0, 0, 1, "下载失败: ${e.message}")
                                        failed++; srcFailed++; prefs.addStat("fail")
                                        return@async Downloaded(act, null, null)
                                    }
                                    if (fileData == null || fileData.size < 100) {
                                        appendLog("❌ 文件数据无效")
                                        recordSync(source, "err", 0, 0, 1, "文件数据无效")
                                        failed++; srcFailed++; prefs.addStat("fail")
                                        return@async Downloaded(act, null, null)
                                    }
                                    val ext = if (isFit(fileData)) "fit" else "gpx"
                                    val localName = com.jichi.ob.util.FileNameGenerator.generate(source, act, ext)
                                    val localFile = File(cacheDir, localName)
                                    try {
                                        FileOutputStream(localFile).use { it.write(fileData) }
                                        val savedPath = com.jichi.ob.util.FileSaver.saveToDownloads(this@MainActivity, localName, fileData)
                                        appendLog("💾 已存: $savedPath (${fileData.size}字节)")
                                        recordSync(source, "dl", 1, 0, 0, "下载 ${act.title.take(20)} ${fileData.size}字节")
                                        try { com.jichi.ob.util.ActivityCache.get(this@MainActivity).setFilename(source.shortName, act.id, savedPath ?: "") } catch (_: Exception) {}
                                    } catch (_: Exception) {}
                                    Downloaded(act, fileData, localFile)
                                } finally {
                                    dlSem.release()
                                }
                            }
                        }.awaitAll()
                    }
                    // v8.2.3.3: 上传阶段"目标间并发"——一条数据同时上传到多个目标（受全局并发数限制）
                    // 佳明国区/国际/Keep（弹窗引导）强制串行，避免风控与弹窗叠加；其余目标按并发数并行
                    for ((dl, pair) in dlResults.zip(pendingItems.map { it.second })) {
                        if (!taskActive) break
                        val fileData = dl.fileData ?: continue
                        val act = dl.act
                        val localFile = dl.localFile ?: continue
                        val localName = localFile.name
                        val pendingTargets = pair.second
                        val normalTargets = pendingTargets.filter {
                            it != DataSource.GARMIN_COM && it != DataSource.GARMIN_CN && it != DataSource.KEEP
                        }
                        val serialTargets = pendingTargets.filter {
                            it == DataSource.GARMIN_COM || it == DataSource.GARMIN_CN || it == DataSource.KEEP
                        }
                        val upConc = prefs.getUploadConcurrency().coerceIn(1, 4)
                        val upSem = java.util.concurrent.Semaphore(upConc)
                        // 普通目标并行上传（上传函数返回增量，避免共享计数竞争）
                        val deltas = coroutineScope {
                            normalTargets.map { target ->
                                async {
                                    upSem.acquire()
                                    try {
                                        uploadOneToTarget(source, act, fileData, localFile, localName, target)
                                    } finally {
                                        upSem.release()
                                    }
                                }
                            }.awaitAll()
                        }
                        for ((dOk, dSkip, dFail) in deltas) { ok += dOk; skipped += dSkip; failed += dFail; srcFailed += dFail }
                        // 佳明/Keep 串行上传
                        for (target in serialTargets) {
                            if (!taskActive) break
                            val (dOk, dSkip, dFail) = uploadOneToTarget(source, act, fileData, localFile, localName, target)
                            ok += dOk; skipped += dSkip; failed += dFail; srcFailed += dFail
                        }
                        kotlinx.coroutines.delay(150)
                    }
                    // v8.3.5: 游标推进——本来源全部成功（无失败）时推进到本批最新活动时间；失败不推进，下次自动重试
                    if (task.incremental && srcFailed == 0) {
                        val newest = (list.maxOfOrNull { it.startTimeMs } ?: activities.firstOrNull()?.startTimeMs ?: 0L)
                        if (newest > 0) {
                            prefs.setSyncCursor(source.shortName, newest)
                            appendLog("📌 增量游标已推进: ${source.displayName} → ${fmtTime(newest)}")
                        }
                    }
                }
                // v8.3.5: 阶段2 健康数据同步（任务开启 + 佳明来源与佳明目标 CN↔COM）
                if (task.wellness && taskActive) {
                    val gSrc = sources.firstOrNull { it == DataSource.GARMIN_COM || it == DataSource.GARMIN_CN }
                    val gTgt = targets.firstOrNull { it == DataSource.GARMIN_COM || it == DataSource.GARMIN_CN }
                    if (gSrc != null && gTgt != null && gSrc != gTgt) {
                        appendLog("📊 [健康数据] 开始同步 ${gSrc.displayName} → ${gTgt.displayName}（最近 ${com.jichi.ob.api.GarminWellnessSync.DEFAULT_DAYS} 天）...")
                        try {
                            val srcCred = prefs.getCredential(gSrc) ?: ""
                            val tgtCred = prefs.getCredential(gTgt) ?: ""
                            val w = com.jichi.ob.api.GarminWellnessSync.sync(
                                garminApi, gSrc, srcCred, gTgt, tgtCred
                            ) { appendLog(it) }
                            ok += w.ok; skipped += w.duplicate; failed += w.failed
                        } catch (e: Exception) {
                            appendLog("❌ [健康数据] 同步异常: ${e.message}")
                            failed++
                        }
                    } else {
                        appendLog("⚠️ [健康数据] 需佳明来源与佳明目标（CN↔COM）且不相同，当前任务不满足，已跳过")
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "task sync error", e)
                appendLog("❌ 任务异常: ${e.message}")
            } finally {
                taskActive = false
                prefs.upsertTask(task.copyRun(ok, skipped, failed))
                appendLog("━━━━━━━━━━━━━━━━━━━━━━")
                appendLog("📦 任务完成: 成功$ok / 跳过$skipped / 失败$failed")
                runOnUiThread {
                    syncFragment.setStats(prefs.getStatOk(), prefs.getStatSkip(), prefs.getStatFail())
                    settingsFragment.setSyncedCount(prefs.getSyncedCount())
                    refreshTaskUi()
                    // v8.2.3.4: 任务落库后刷新首页登录卡片条数徽标
                    try { loginFragment.updateStatus() } catch (_: Exception) {}
                }
            }
        }
    }

    internal fun stopTask() {
        taskJob?.cancel()
        taskActive = false
        appendLog("⏹ 正在停止任务...")
        refreshTaskUi()
    }

    /** v8.2.2: 刷新任务区互斥状态（任务运行中批量开始按钮置灰等） */
    internal fun refreshTaskUi() {
        runOnUiThread {
            try { syncFragment.refreshTaskState() } catch (_: Exception) {}
            try { settingsFragment.refreshTaskState() } catch (_: Exception) {}
        }
    }

    /** v8.2.3.3: 上传到单个目标（目标间并发调用）。返回 (成功, 跳过, 失败) 增量，避免并发下共享计数竞争 */
    private suspend fun uploadOneToTarget(
        source: DataSource,
        act: com.jichi.ob.model.ActivityRecord,
        fileData: ByteArray,
        localFile: File,
        localName: String,
        target: DataSource
    ): Triple<Int, Int, Int> {
        val syncKey = "${source.shortName}_${act.id}_to_${target.shortName}"
        val t0 = System.currentTimeMillis()
        appendLog("📤 上传到 ${target.displayName} (${fileData.size}字节)...")
        if (target == DataSource.BRYTON)
            appendLog("⏳ 正在打开百锐腾页面并注入登录态，页面加载约5-15秒...")
        var targetCred = prefs.getCredential(target) ?: ""
        if (target == DataSource.GARMIN_COM || target == DataSource.GARMIN_CN) {
            val newCred = garminApi.ensureValidToken(target, targetCred)
            if (newCred != targetCred) {
                targetCred = newCred
                if (target == DataSource.GARMIN_COM) prefs.saveGarminComToken(targetCred)
                else prefs.saveGarminCnToken(targetCred)
            }
        }
        if (target == DataSource.WAHOO) {
            val wahooRefresh = prefs.getWahooRefresh()
            val wahooClientId = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_ID else prefs.getWahooClientId()
            val wahooClientSecret = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_SECRET else prefs.getWahooClientSecret()
            if (!wahooRefresh.isNullOrEmpty() && !wahooClientId.isNullOrEmpty() && !wahooClientSecret.isNullOrEmpty()) {
                val newToken = wahooApi.ensureValidToken(targetCred, wahooRefresh, wahooClientId, wahooClientSecret)
                if (newToken != targetCred) { targetCred = newToken; prefs.saveWahooToken(targetCred) }
            }
        }
        val csrf = if (target == DataSource.XINGZHE) (prefs.getXingzheCsrf() ?: "") else ""
        val upExtra = if (csrf.isNotEmpty()) mapOf("csrf" to csrf) else emptyMap()
        val result = if (target == DataSource.BRYTON) {
            uploadToBrytonViaWebView(localFile.absolutePath)
        } else if (target == DataSource.KEEP) {
            showKeepImportGuide(localName, localFile.absolutePath)
            com.jichi.ob.api.UploadEngine.UploadResult(true, message = "已生成 $localName，请在 Keep App 内手动导入")
        } else if (target == DataSource.STRAVA || target == DataSource.TRAININGPEAKS || target == DataSource.POLAR || target == DataSource.FITBIT || target == DataSource.WITHINGS) {
            // v8.3.1: 开发者 OAuth 平台上传（Strava/TP 官方上传API；Polar/Fitbit/Withings 官方无上传，返回不支持）
            val ok = devOAuthApi.uploadFile(target, localFile)
            com.jichi.ob.api.UploadEngine.UploadResult(ok, message = if (ok) "${target.displayName}上传成功" else "${target.displayName}上传失败（官方接口不支持或凭证失效）")
        } else if (target == DataSource.TWO_BULU) {
            // v8.3.1: 两步路网页上传——接口受WAF限制，返回待真机校准提示（不阻塞同步流程）
            val ok = twoBuluApi.uploadFile(localFile)
            com.jichi.ob.api.UploadEngine.UploadResult(ok, message = if (ok) "两步路上传成功" else "两步路网页上传接口待真机校准")
        } else {
            uploadEngine.upload(target, targetCred, fileData, act, upExtra)
        }
        val tCost = System.currentTimeMillis() - t0
        return if (result.success) {
            prefs.addStat("ok"); prefs.addSyncedId(syncKey); recordSync(target, "ok", 0, 1, 0, "上传成功 ${act.title.take(20)}"); appendLog("✅ 上传成功(${tCost}ms): ${result.message}")
            Triple(1, 0, 0)
        } else if (result.skipped) {
            prefs.addStat("skip"); prefs.addSyncedId(syncKey); recordSync(target, "skip", 0, 1, 0, "已存在跳过 ${act.title.take(20)}"); appendLog("⏭️ 已存在跳过: ${result.message}")
            Triple(0, 1, 0)
        } else {
            var retrySuccess = false
            if (target == DataSource.WAHOO && result.message.contains("401")) {
                val wahooRefresh = prefs.getWahooRefresh()
                val wahooClientId = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_ID else prefs.getWahooClientId()
                val wahooClientSecret = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_SECRET else prefs.getWahooClientSecret()
                if (!wahooRefresh.isNullOrEmpty() && !wahooClientId.isNullOrEmpty() && !wahooClientSecret.isNullOrEmpty()) {
                    val newToken = wahooApi.ensureValidToken(targetCred, wahooRefresh, wahooClientId, wahooClientSecret)
                    if (newToken != targetCred) {
                        targetCred = newToken; prefs.saveWahooToken(targetCred)
                        val retryResult = uploadEngine.upload(target, targetCred, fileData, act, upExtra)
                        if (retryResult.success) {
                            retrySuccess = true
                            prefs.addStat("ok"); prefs.addSyncedId(syncKey)
                            recordSync(target, "ok", 0, 1, 0, "重试上传成功 ${act.title.take(20)}")
                            appendLog("✅ 重试上传成功(${System.currentTimeMillis() - t0}ms): ${retryResult.message}")
                        }
                    }
                }
            }
            if (!retrySuccess) {
                prefs.addStat("fail"); recordSync(target, "err", 0, 0, 1, "上传失败 ${act.title.take(20)}: ${result.message}"); appendLog("❌ 上传失败(${tCost}ms): ${result.message}")
                Triple(0, 0, 1)
            } else Triple(1, 0, 0)
        }
    }

    /** v7.9.2: Keep 半自动上传引导——文件已生成，提示用户在 Keep App 内手动导入 */
    private fun showKeepImportGuide(fileName: String, filePath: String) {
        runOnUiThread {
            try {
                androidx.appcompat.app.AlertDialog.Builder(this)
                    .setTitle("导入 Keep（半自动）")
                    .setMessage(
                        "运动文件已生成：\n$fileName\n\nKeep 未开放第三方文件上传接口，请在 Keep App 内手动导入（30 秒完成）：\n\n" +
                        "1️⃣ 打开 Keep App\n" +
                        "2️⃣ 底部「运动」→ 浮层「数据同步」\n" +
                        "3️⃣ 点「运动数据文件去导入 / 去上传」\n" +
                        "4️⃣ 选择刚生成的文件导入\n\n" +
                        "文件已保存到：$filePath"
                    )
                    .setPositiveButton("知道了", null)
                    .setNegativeButton("打开文件位置", { _, _ ->
                        try {
                            val dir = SAVE_DIR
                            val intent = android.content.Intent(android.content.Intent.ACTION_VIEW)
                            intent.setDataAndType(
                                android.net.Uri.fromFile(dir),
                                "resource/folder"
                            )
                            intent.addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK)
                            startActivity(intent)
                        } catch (_: Exception) {
                            try {
                                val intent = android.content.Intent(android.content.Intent.ACTION_VIEW)
                                intent.setDataAndType(android.net.Uri.parse("file://$SAVE_DIR"), "*/*")
                                intent.addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK)
                                startActivity(intent)
                            } catch (_: Exception) {
                                Toast.makeText(this, "无法直接打开目录，请到文件管理器查看：\n${SAVE_DIR.absolutePath}", Toast.LENGTH_LONG).show()
                            }
                        }
                    })
                    .show()
            } catch (_: Exception) {}
        }
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
            // v7.7.8: 清除记忆时累计统计同步清零
            prefs.resetStats()
            runOnUiThread { syncFragment.setStats(0, 0, 0) }
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
            // v7.6.9: 检测电池优化白名单，未加入则提示（后台可能被系统限制，导致自动同步不执行）
            try {
                val pm = getSystemService(Context.POWER_SERVICE) as android.os.PowerManager
                if (!pm.isIgnoringBatteryOptimizations(packageName)) {
                    appendLog("⚠️ 未加入电池优化白名单，后台可能被系统限制，建议在同步页点击「后台常驻指引」申请")
                }
            } catch (_: Exception) {}
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
        // v7.6.9: 迈金源token过期(401)自动刷新后重试一次
        if (source == DataSource.MAGENE) {
            try {
                return mageneApi.getActivities(cred, skip, limit)
            } catch (e: Exception) {
                if (e.message?.contains("过期") == true || e.message?.contains("401") == true) {
                    val refresh = prefs.getMageneRefreshToken()
                    if (!refresh.isNullOrEmpty()) {
                        appendLog("🔄 迈金登录已过期，自动刷新token后重试...")
                        val newTok = mageneApi.refreshToken(refresh)
                        if (newTok != null) {
                            prefs.saveMageneToken(newTok)
                            return mageneApi.getActivities(newTok, skip, limit)
                        }
                    }
                }
                throw e
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
            DataSource.COROS_CN -> corosApi.getActivities(cred, skip, limit, DataSource.COROS_CN)
            DataSource.COROS_INT -> corosApi.getActivities(cred, skip, limit, DataSource.COROS_INT)
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
            DataSource.MYWHOOSH -> {
                // v7.8.4: MyWhoosh 无 refresh 端点，401 时抛异常提示重新登录
                val whooshId = prefs.getMywhooshWhooshId() ?: ""
                mywhooshApi.getActivities(cred, whooshId, skip, limit)
            }
            DataSource.ZWIFT -> {
                // v7.8.4: Zwift 401 时用 refresh_token 刷新后重试
                getZwiftActivitiesWithRefresh(cred, prefs.getZwiftPlayerId(), prefs.getZwiftRefreshToken(), skip, limit)
            }
            DataSource.KEEP -> keepApi.getActivities(cred, skip, limit)
            DataSource.CODOON -> codoonApi.getActivities(cred, prefs.getCodoonUserId() ?: "", skip, limit)
            DataSource.ZEPP -> zeppApi.getActivities(cred, prefs.getZeppUserId() ?: "", skip, limit)
            DataSource.KOMOT -> {
                val email = prefs.getKomootAccount()
                if (email.isNullOrEmpty()) emptyList() else komootApi.getActivities(email, cred, skip, limit)
            }
            DataSource.SUUNTO -> suuntoApi.getActivities(cred, suuntoSubscriptionKey() ?: "", skip, limit)
            DataSource.TWO_BULU -> twoBuluApi.fetchActivities(skip, limit)   // 浏览捕获模式已入库，从缓存库读取
            DataSource.STRAVA, DataSource.POLAR, DataSource.FITBIT, DataSource.WITHINGS, DataSource.TRAININGPEAKS ->
                devOAuthApi.fetchActivities(source, skip, limit)
            else -> emptyList()
        }
    }

    /** v7.8.4: Zwift 源列表——401/过期时用 refresh_token 刷新后重试一次 */
    private suspend fun getZwiftActivitiesWithRefresh(
        token: String, playerId: String?, refresh: String?, skip: Int, limit: Int
    ): List<ActivityRecord> {
        try {
            return zwiftApi.getActivities(token, playerId, skip, limit)
        } catch (e: Exception) {
            if (e.message?.contains("401") == true && !refresh.isNullOrEmpty()) {
                val fresh = zwiftApi.refreshToken(refresh)
                if (fresh != null) {
                    prefs.saveZwiftToken(fresh.first)
                    prefs.saveZwiftRefreshToken(fresh.second)
                    appendLog("🔄 Zwift token已自动刷新")
                    return zwiftApi.getActivities(fresh.first, prefs.getZwiftPlayerId(), skip, limit)
                }
            }
            throw e
        }
    }

    private suspend fun downloadActivity(source: DataSource, target: DataSource = DataSource.OUTBASE, record: ActivityRecord, convertMagene: Boolean = true): ByteArray? {
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
                    // v8.2.3.1: 任务级开关 convertMagene（默认开=跟随设置页全局开关；任务可单独关）
                    if (prefs.isGcj02Convert() && convertMagene && result.fromFitContent && isFit(result.data)) {
                        appendLog("🔄 迈金fit_content来源(GCJ-02)，执行WGS84转换...")
                        convertFitCoordinates(result.data)
                    } else {
                        if (prefs.isGcj02Convert() && convertMagene && !result.fromFitContent) {
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
            DataSource.MYWHOOSH -> {
                // v7.8.4: MyWhoosh 下载（extra=activityFileId）
                val whooshId = prefs.getMywhooshWhooshId() ?: ""
                mywhooshApi.downloadFit(cred, whooshId, record.extra ?: "")
            }
            DataSource.ZWIFT -> {
                // v8.3.2: Zwift 下载 403 修复——S3 直链失败自动回退 API 鉴权下载
                try {
                    val zw = zwiftApi.downloadFit(record.extra ?: "", cred, record.id)
                    appendLog("✅ Zwift 下载成功 (v8.3.3: S3直链+详情预检+API兜底)")
                    zw
                } catch (e: Exception) {
                    appendLog("❌ Zwift 下载失败: ${e.message}")
                    null
                }
            }
            DataSource.KEEP -> {
                // v7.9.2: Keep 下载轨迹→GPX（extra=run_id），上传引擎自动转 FIT
                keepApi.downloadGpx(cred, record.extra ?: record.id)
            }
            DataSource.CODOON -> {
                // v7.9.5: 咕咚下载轨迹→GPX（extra=route_id）
                codoonApi.downloadGpx(cred, record.extra ?: record.id)
            }
            DataSource.ZEPP -> {
                // v7.9.5: Zepp 下载轨迹→GPX（id=trackid，extra=source）
                zeppApi.downloadGpx(cred, record.id, record.extra ?: "")
            }
            DataSource.KOMOT -> {
                // v7.9.6: Komoot 下载轨迹→GPX（extra=tour id），国际平台 WGS-84 无需坐标转换
                val email = prefs.getKomootAccount()
                if (email.isNullOrEmpty()) null else komootApi.downloadGpx(email, cred, record.extra ?: record.id)
            }
            DataSource.SUUNTO -> {
                // v7.9.6: Suunto 下载轨迹→FIT（国际平台 WGS-84，无需坐标转换）
                suuntoApi.download(cred, suuntoSubscriptionKey() ?: "", record.extra ?: record.id, gpx = false)
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
        recordFragment = com.jichi.ob.ui.RecordCenterFragment()
        mergeFragment = com.jichi.ob.ui.MergeFragment()
        labLoginFragment = com.jichi.ob.ui.LabLoginFragment()
        createTaskFragment = com.jichi.ob.ui.CreateTaskFragment()
        supportFragmentManager.beginTransaction()
            .add(R.id.fragmentContainer, loginFragment, "login")
            .add(R.id.fragmentContainer, settingsFragment, "settings").hide(settingsFragment)
            .add(R.id.fragmentContainer, syncFragment, "sync").hide(syncFragment)
            .add(R.id.fragmentContainer, aboutFragment, "about").hide(aboutFragment)
            .add(R.id.fragmentContainer, recordFragment, "records").hide(recordFragment)
            .add(R.id.fragmentContainer, mergeFragment, "merge").hide(mergeFragment)
            .add(R.id.fragmentContainer, labLoginFragment, "lab").hide(labLoginFragment)
            .add(R.id.fragmentContainer, createTaskFragment, "createtask").hide(createTaskFragment)
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

    // v8.2.3.5: 新建任务引导——切到设置页（设置页=任务配置页，调好来源/目标/参数后点「保存为任务」）
    fun switchToSettingsTab() {
        val bottomNav = findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        bottomNav?.selectedItemId = R.id.nav_settings
        Toast.makeText(this, "在设置页选好来源/目标后，点「保存为任务」", Toast.LENGTH_LONG).show()
    }

    // v8.2.3.5: 设置页保存任务后，刷新同步页任务列表
    fun refreshTasksFromSettings() {
        try { syncFragment.refreshTaskState() } catch (_: Exception) {}
        try { settingsFragment.refreshTaskState() } catch (_: Exception) {}
    }

    // v8.2.1: 记录中心入口（关于页横条调用；全屏覆盖页，不占底部导航高频位）
    fun openRecordCenter() {
        val bottomNav = findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        supportFragmentManager.beginTransaction().show(recordFragment).commit()
        bottomNav?.visibility = android.view.View.GONE
        toolbar?.visibility = android.view.View.GONE
        try { recordFragment.refresh() } catch (_: Exception) {}
    }

    fun closeRecordCenter() {
        val bottomNav = findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        supportFragmentManager.beginTransaction().hide(recordFragment).commit()
        bottomNav?.visibility = android.view.View.VISIBLE
        toolbar?.visibility = android.view.View.VISIBLE
        // 返回关于页（记录中心入口所在页）
        try { showFragment(aboutFragment) } catch (_: Exception) {}
    }

    // v8.2.1: 实验室登录入口（关于页横条调用；独立页面，可返回，不占底部导航）
    fun openLabLogin(platforms: List<com.jichi.ob.model.DataSource>) {
        val bottomNav = findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        supportFragmentManager.beginTransaction().show(labLoginFragment).commit()
        bottomNav?.visibility = android.view.View.GONE
        toolbar?.visibility = android.view.View.GONE
        try { labLoginFragment.refreshStates() } catch (_: Exception) {}
    }

    fun closeLabLogin() {
        val bottomNav = findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        supportFragmentManager.beginTransaction().hide(labLoginFragment).commit()
        bottomNav?.visibility = android.view.View.VISIBLE
        toolbar?.visibility = android.view.View.VISIBLE
        // 返回关于页（实验室入口所在页），并刷新登录页/设置页状态
        try { showFragment(aboutFragment) } catch (_: Exception) {}
        try { loginFragment.updateStatus() } catch (_: Exception) {}
        try { settingsFragment.refreshLoginState() } catch (_: Exception) {}
    }

    // v8.2.2: 新建任务向导（设置页「＋新建同步任务」横条入口；全屏覆盖页，可返回）
    fun openCreateTask() {
        // v8.3.2: 新建任务限时体验到期（2026-10-07）——到期后点击提醒，不进入向导
        if (System.currentTimeMillis() >= 1791302400000L) {
            try {
                android.app.AlertDialog.Builder(this)
                    .setTitle("提示")
                    .setMessage("版本过旧，需要获取更新，关注抖音:多吃两口获取更新")
                    .setPositiveButton("知道了", null)
                    .show()
            } catch (_: Exception) {}
            return
        }
        val bottomNav = findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        supportFragmentManager.beginTransaction().show(createTaskFragment).commit()
        bottomNav?.visibility = android.view.View.GONE
        toolbar?.visibility = android.view.View.GONE
    }

    fun closeCreateTask() {
        val bottomNav = findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        supportFragmentManager.beginTransaction().hide(createTaskFragment).commit()
        bottomNav?.visibility = android.view.View.VISIBLE
        toolbar?.visibility = android.view.View.VISIBLE
        // v8.2.3.8: 返回打开向导前的 tab（不再硬编码设置页；底部高亮与页面保持一致）
        when (bottomNav?.selectedItemId) {
            R.id.nav_login -> showFragment(loginFragment)
            R.id.nav_settings -> showFragment(settingsFragment)
            R.id.nav_about -> showFragment(aboutFragment)
            else -> showFragment(syncFragment)
        }
        try { syncFragment.refreshTaskState() } catch (_: Exception) {}
        try { settingsFragment.refreshLoginState() } catch (_: Exception) {}
    }

    private fun showFragment(target: androidx.fragment.app.Fragment) {
        val others = listOf(loginFragment, settingsFragment, syncFragment, aboutFragment, recordFragment, labLoginFragment, createTaskFragment).filter { it !== target }
        val tr = supportFragmentManager.beginTransaction()
        for (o in others) tr.hide(o)
        tr.show(target).commit()
        // v7.7.7: 登录页隐藏顶部Toolbar，品牌横幅顶置，页面以登录为主（一屏放下）
        val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        toolbar?.visibility = if (target == loginFragment) android.view.View.GONE else android.view.View.VISIBLE
        // v7.7.4: hide/show 不触发 onResume，切到设置页时手动刷新来源/目标网格（登录/注销后即时生效，无需重启）
        if (target == settingsFragment) {
            try { settingsFragment.refreshLoginState() } catch (_: Exception) {}
        }
        // v8.2.0: 切到记录中心时强制刷新（同步后立即显示新缓存）
        if (target == recordFragment) {
            try { recordFragment.refresh() } catch (_: Exception) {}
        }
    }

    // ============ v7.9.7 轨迹合并：全屏覆盖页 ============
    fun openMerge() {
        // v8.0.0 限时体验：9月30号之前可用，系统时间过期后自动失效
        if (!MergeTrial.isAvailable()) {
            android.widget.Toast.makeText(this, "轨迹合并&透明贴纸 限时体验已结束", android.widget.Toast.LENGTH_SHORT).show()
            return
        }
        val bottomNav = findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        supportFragmentManager.beginTransaction().show(mergeFragment).commit()
        bottomNav?.visibility = android.view.View.GONE
        toolbar?.visibility = android.view.View.GONE
    }

    fun closeMerge() {
        val bottomNav = findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        supportFragmentManager.beginTransaction().hide(mergeFragment).commit()
        bottomNav?.visibility = android.view.View.VISIBLE
        toolbar?.visibility = android.view.View.VISIBLE
        // 返回同步页（合并入口所在页）
        try { showFragment(syncFragment) } catch (_: Exception) {}
    }

    /**
     * 合并页拉取活动列表。
     * - 未指定日期范围：只拉最近一页（30 条），秒开不卡；
     * - 指定日期范围：从最新翻页拉取直到覆盖范围（记录日期早于 fromDate 停止，上限 1000 防卡），再按范围过滤。
     */
    /** 合并页记录分页结果 */
    data class MergeFetchPage(val records: List<ActivityRecord>, val hasMore: Boolean)

    /**
     * 合并页拉取记录（v8.1.2 分页化）：
     * - 无日期筛选：只拉最近 1 批（30 条），秒开；
     * - 指定日期范围：从 skip 开始翻页拉取并过滤，单次最多拉 500 条防卡，hasMore=可能还有更早记录。
     */
    suspend fun fetchMergeActivities(source: DataSource, fromDate: String? = null, toDate: String? = null, skipStart: Int = 0): MergeFetchPage = withContext(Dispatchers.IO) {
        val out = LinkedHashMap<String, ActivityRecord>()
        var skip = skipStart
        val page = 30
        val max = 500
        var fetched = 0
        var lastBatchFull = false
        try {
            while (fetched < max) {
                val batch = try {
                    fetchActivities(source, skip, page)
                } catch (e: Exception) {
                    break
                }
                if (batch.isEmpty()) { lastBatchFull = false; break }
                lastBatchFull = batch.size >= page
                skip += batch.size; fetched += batch.size
                if (fromDate == null && toDate == null) {
                    for (r in batch) out[r.id] = r
                    // v7.9.11 秒开修复：无日期筛选时只拉最近 1 批（约 30 条）
                    break
                }
                for (r in batch) {
                    val d = recDay(r.startTime)
                    if ((fromDate == null || d >= fromDate) && (toDate == null || d <= toDate)) out[r.id] = r
                }
                if (batch.size < page) break
            }
        } catch (_: Exception) {}
        val list = out.values.toList()
        if (fromDate == null && toDate == null) return@withContext MergeFetchPage(list.take(page), lastBatchFull)
        // 有日期：拉到更早记录可能仍匹配 → hasMore=还有下一页可拉（未触上限且刚拉满页）
        MergeFetchPage(list, lastBatchFull && fetched >= max)
    }

    private fun recDay(startTime: String): String = startTime.take(10)

    /** 合并页：下载单条轨迹原始数据（FIT/GPX） */
    suspend fun downloadForMerge(source: DataSource, record: ActivityRecord): ByteArray? = withContext(Dispatchers.IO) {
        try {
            downloadActivity(source, DataSource.OUTBASE, record)
        } catch (e: Exception) {
            null
        }
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

    /** v8.2.3.10: 记录中心单点下载——从源平台拉取 FIT/GPX 存本地并回填缓存文件名 */
    /** v8.2.6: 批量修复 iGPSPORT 缺失时间——对缓存库中 start_time<=0 的记录逐个下载 FIT 解析回填
     *  （列表接口不带时间；FIT 文件自带 file_id.time_created，串行下载防触发风控，限 100 条） */
    internal fun repairIgpTimes() {
        val token = prefs.getIgpsportToken()
        if (token.isNullOrEmpty()) {
            Toast.makeText(this, "iGPSPORT 未登录，无法修复时间", Toast.LENGTH_SHORT).show()
            return
        }
        Toast.makeText(this, "开始修复 iGPSPORT 缺失时间（后台进行，查看平台日志）", Toast.LENGTH_SHORT).show()
        lifecycleScope.launch(Dispatchers.IO) {
            try {
                val cache = com.jichi.ob.util.ActivityCache.get(this@MainActivity)
                val bad = cache.queryBadTime(com.jichi.ob.model.DataSource.IGPSPORT.shortName, 100)
                if (bad.isEmpty()) {
                    appendLog("✅ iGPSPORT 无缺失时间记录")
                    return@launch
                }
                appendLog("🔧 修复 iGPSPORT 缺失时间: ${bad.size} 条（下载 FIT 解析，串行）...")
                var fixed = 0
                for ((i, rec) in bad.withIndex()) {
                    if (!isFinishing) {
                        try {
                            val fit = igpsportApi.downloadFitFile(token, rec.id, rec.extra)
                            val ms = igpsportApi.parseFitStartTimeMs(fit)
                            if (ms > 0) {
                                cache.setStartTime(com.jichi.ob.model.DataSource.IGPSPORT.shortName, rec.id, ms)
                                fixed++
                                if (fixed % 10 == 0) appendLog("✅ 已修复 $fixed/${bad.size} 条")
                            }
                        } catch (e: Exception) { Log.w(TAG, "igp 时间修复单条失败: ${e.message}") }
                    }
                    kotlinx.coroutines.delay(300) // 串行节流，避免风控
                }
                appendLog("✅ iGPSPORT 时间修复完成: 成功 $fixed / ${bad.size} 条")
                withContext(Dispatchers.Main) {
                    try { if (::recordFragment.isInitialized) recordFragment.reload() } catch (_: Exception) {}
                }
            } catch (e: Exception) {
                Log.e(TAG, "igp 时间批量修复失败", e)
                appendLog("❌ iGPSPORT 时间修复失败: ${e.message}")
            }
        }
    }

    internal fun downloadCacheEntry(entry: com.jichi.ob.util.ActivityCache.Entry) {        val ds = com.jichi.ob.model.DataSource.fromShortName(entry.platform)
        if (ds == null) {
            Toast.makeText(this, "未知平台: ${entry.platform}", Toast.LENGTH_SHORT).show()
            return
        }
        lifecycleScope.launch(Dispatchers.IO) {
            try {
                appendLog("⬇️ 单点下载: [${ds.displayName}] ${entry.title.take(20)} (${"%.1f".format(entry.distanceKm)}km)")
                val act = com.jichi.ob.model.ActivityRecord(
                    id = entry.id,
                    title = entry.title.ifBlank { "活动 ${entry.id.take(8)}" },
                    startTime = "",
                    distance = entry.distanceKm,
                    duration = entry.durationSec,
                    source = ds,
                    extra = entry.extra,
                    startTimeMs = entry.startTime
                )
                val data = downloadActivity(ds, record = act) ?: throw Exception("下载返回空数据")
                if (data.size < 100) throw Exception("下载数据无效 (${data.size}字节)")
                val ext = if (isFit(data)) "fit" else "gpx"
                val name = FileNameGenerator.generate(ds, act, ext)
                val path = com.jichi.ob.util.FileSaver.saveToDownloads(this@MainActivity, name, data)
                try {
                    com.jichi.ob.util.ActivityCache.get(this@MainActivity)
                        .setFilename(ds.shortName, entry.id, path ?: "")
                } catch (_: Exception) {}
                // v8.2.6: igp 记录时间缺失（1970）时，下载的 FIT 自带时间 → 解析回填，立即修复记录中心时间
                if (ds == com.jichi.ob.model.DataSource.IGPSPORT && entry.startTime <= 0 && isFit(data)) {
                    try {
                        val ms = igpsportApi.parseFitStartTimeMs(data)
                        if (ms > 0) {
                            com.jichi.ob.util.ActivityCache.get(this@MainActivity)
                                .setStartTime(ds.shortName, entry.id, ms)
                            val t = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm", java.util.Locale.getDefault())
                                .format(java.util.Date(ms))
                            appendLog("✅ iGPSPORT 时间已从 FIT 回填: $t")
                        } else appendLog("⚠️ iGPSPORT FIT 未解析到时间字段")
                    } catch (_: Exception) {}
                }
                appendLog("💾 已存: $path (${data.size}字节)")
                appendLog("✅ 单点下载完成: $name")
                withContext(Dispatchers.Main) {
                    Toast.makeText(this@MainActivity, "已下载 $name", Toast.LENGTH_LONG).show()
                    try { if (::recordFragment.isInitialized) recordFragment.reload() } catch (_: Exception) {}
                }
            } catch (e: Exception) {
                appendLog("⚠️ 单点下载失败: ${e.message}")
                withContext(Dispatchers.Main) {
                    Toast.makeText(this@MainActivity, "下载失败: ${e.message}", Toast.LENGTH_LONG).show()
                }
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

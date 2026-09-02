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
import com.jichi.ob.api.WahooApi
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
import java.io.File
import java.io.FileOutputStream
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class MainActivity : AppCompatActivity() {

    companion object {
        private const val TAG = "JichiOB"
        // 动态读取BuildConfig版本号，保证启动日志与当前版本一一对应
        private val APP_VERSION = "v${BuildConfig.VERSION_NAME}"
        private const val APP_EDITION = "开发体验版"
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

    private lateinit var tvIgpStatus: TextView
    private lateinit var tvXingzheStatus: TextView
    private lateinit var tvMageneStatus: TextView
    private lateinit var tvBlackbirdStatus: TextView
    private lateinit var tvBrytonStatus: TextView
    private lateinit var tvOutbaseStatus: TextView
    private lateinit var tvGarminComStatus: TextView
    private lateinit var tvGarminCnStatus: TextView
    private lateinit var tvCorosCnStatus: TextView
    private lateinit var tvCorosIntStatus: TextView
    private lateinit var tvWahooStatus: TextView
    private lateinit var btnIgpLogin: MaterialButton
    private lateinit var btnXingzheLogin: MaterialButton
    private lateinit var btnMageneLogin: MaterialButton
    private lateinit var btnBlackbirdLogin: MaterialButton
    private lateinit var btnBrytonLogin: MaterialButton
    private lateinit var btnOutbaseLogin: MaterialButton
    private lateinit var btnGarminComLogin: MaterialButton
    private lateinit var btnGarminCnLogin: MaterialButton
    private lateinit var btnCorosCnLogin: MaterialButton
    private lateinit var btnCorosIntLogin: MaterialButton
    private lateinit var btnWahooLogin: MaterialButton
    private lateinit var btnSync: MaterialButton
    private lateinit var btnStop: MaterialButton
    private lateinit var btnTestDownload: MaterialButton
    private lateinit var btnPowerGuide: MaterialButton
    private lateinit var btnCopyLog: MaterialButton
    private lateinit var btnClearSync: MaterialButton
    private lateinit var sliderCount: Slider
    private lateinit var tvCount: TextView
    private lateinit var sliderSkip: Slider
    private lateinit var tvSkip: TextView
    private lateinit var tvLog: TextView
    private lateinit var progressBar: LinearProgressIndicator
    private lateinit var gridSource: GridLayout
    private lateinit var gridTarget: GridLayout
    private var selectedSourceTag = "xz"
    private var selectedTargetTag = "ob"
    private lateinit var logScrollView: ScrollView
    private lateinit var switchGcj02: SwitchMaterial
    private lateinit var switchAutoSync: SwitchMaterial
    private lateinit var sliderAutoInterval: Slider
    private lateinit var tvAutoInterval: TextView
    private lateinit var tvSaveDir: TextView
    private lateinit var tvSyncedCount: TextView

    private var syncJob: Job? = null
    private var autoSyncJob: Job? = null
    private lateinit var fixWebView: android.webkit.WebView
    private var fixJsReady = false
    private val saveDir: File by lazy {
        File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "鸡翅幸哲迈进OB")
    }

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
                                    updateStatusUI()
                                }
                            }
                        } else appendLog("⚠️ Wahoo登录失败: 未捕获到授权码或未配置凭证")
                    }
                }
                updateStatusUI()
            }
        } catch (e: Exception) {
            Log.e(TAG, "login result error", e)
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
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
            if (!saveDir.exists()) saveDir.mkdirs()
            initViews()
            setupListeners()
            restoreSettings()
            updateStatusUI()
            updateTargetChips()
            initFixWebView()
            requestNotificationPermission()
            appendLog("🚴 鸡翅幸哲迈进OB($APP_EDITION) $APP_VERSION 启动")
            appendLog("🎯 让运动数据自由流动")
            appendLog("📱 Android ${Build.VERSION.RELEASE} (API ${Build.VERSION.SDK_INT})")
            appendLog("📂 存储目录: ${saveDir.absolutePath}")
            appendLog("💾 已同步记录: ${prefs.getSyncedCount()} 条")
        } catch (e: Exception) {
            Log.e(TAG, "onCreate failed", e)
        }
    }

    private fun initViews() {
        tvIgpStatus = findViewById(R.id.tvIgpStatus)
        tvXingzheStatus = findViewById(R.id.tvXingzheStatus)
        tvMageneStatus = findViewById(R.id.tvMageneStatus)
        tvBlackbirdStatus = findViewById(R.id.tvBlackbirdStatus)
        tvBrytonStatus = findViewById(R.id.tvBrytonStatus)
        tvOutbaseStatus = findViewById(R.id.tvOutbaseStatus)
        tvGarminComStatus = findViewById(R.id.tvGarminComStatus)
        tvGarminCnStatus = findViewById(R.id.tvGarminCnStatus)
        tvCorosCnStatus = findViewById(R.id.tvCorosCnStatus)
        tvCorosIntStatus = findViewById(R.id.tvCorosIntStatus)
        tvWahooStatus = findViewById(R.id.tvWahooStatus)
        btnIgpLogin = findViewById(R.id.btnIgpLogin)
        btnXingzheLogin = findViewById(R.id.btnXingzheLogin)
        btnMageneLogin = findViewById(R.id.btnMageneLogin)
        btnBlackbirdLogin = findViewById(R.id.btnBlackbirdLogin)
        btnBrytonLogin = findViewById(R.id.btnBrytonLogin)
        btnOutbaseLogin = findViewById(R.id.btnOutbaseLogin)
        btnGarminComLogin = findViewById(R.id.btnGarminComLogin)
        btnGarminCnLogin = findViewById(R.id.btnGarminCnLogin)
        btnCorosCnLogin = findViewById(R.id.btnCorosCnLogin)
        btnCorosIntLogin = findViewById(R.id.btnCorosIntLogin)
        btnWahooLogin = findViewById(R.id.btnWahooLogin)
        btnSync = findViewById(R.id.btnSync)
        btnStop = findViewById(R.id.btnStop)
        btnTestDownload = findViewById(R.id.btnTestDownload)
        btnPowerGuide = findViewById(R.id.btnPowerGuide)
        btnCopyLog = findViewById(R.id.btnCopyLog)
        btnClearSync = findViewById(R.id.btnClearSync)
        sliderCount = findViewById(R.id.sliderCount)
        tvCount = findViewById(R.id.tvCount)
        sliderSkip = findViewById(R.id.sliderSkip)
        tvSkip = findViewById(R.id.tvSkip)
        tvLog = findViewById(R.id.tvLog)
        progressBar = findViewById(R.id.progressBar)
        gridSource = findViewById(R.id.gridSource)
        gridTarget = findViewById(R.id.gridTarget)
        setupSourceButtons()
        setupTargetButtons()
        logScrollView = findViewById(R.id.svLog)
        switchGcj02 = findViewById(R.id.switchGcj02)
        switchAutoSync = findViewById(R.id.switchAutoSync)
        sliderAutoInterval = findViewById(R.id.sliderAutoInterval)
        tvAutoInterval = findViewById(R.id.tvAutoInterval)
        tvSaveDir = findViewById(R.id.tvSaveDir)
        tvSyncedCount = findViewById(R.id.tvSyncedCount)
        tvSaveDir.text = saveDir.absolutePath
    }

    private fun setupListeners() {
        btnIgpLogin.setOnClickListener { openLogin(LoginWebActivity.TYPE_IGPSPORT, IgpsportApi.LOGIN_URL) }
        btnXingzheLogin.setOnClickListener { openLogin(LoginWebActivity.TYPE_XINGZHE, XingzheApi.LOGIN_URL) }
        btnMageneLogin.setOnClickListener { openLogin(LoginWebActivity.TYPE_MAGENE, MageneApi.LOGIN_URL) }
        btnBlackbirdLogin.setOnClickListener { openLogin(LoginWebActivity.TYPE_BLACKBIRD, BlackbirdApi.LOGIN_URL) }
        btnBrytonLogin.setOnClickListener { openLogin(LoginWebActivity.TYPE_BRYTON, BrytonApi.LOGIN_URL) }
        btnOutbaseLogin.setOnClickListener { openLogin(LoginWebActivity.TYPE_OUTBASE, OutbaseApi.LOGIN_URL) }
        btnGarminComLogin.setOnClickListener { openLogin(LoginWebActivity.TYPE_GARMIN_COM, GarminApi.LOGIN_URL_COM) }
        btnGarminCnLogin.setOnClickListener { openLogin(LoginWebActivity.TYPE_GARMIN_CN, GarminApi.LOGIN_URL_CN) }
        btnCorosCnLogin.setOnClickListener { openLogin(LoginWebActivity.TYPE_COROS_CN, CorosApi.LOGIN_URL_CN) }
        btnCorosIntLogin.setOnClickListener { openLogin(LoginWebActivity.TYPE_COROS_INT, CorosApi.LOGIN_URL_INT) }
        btnWahooLogin.setOnClickListener { openWahooLogin() }
        sliderCount.addOnChangeListener { _, v, _ -> tvCount.text = v.toInt().toString() }
        sliderSkip.addOnChangeListener { _, v, _ -> tvSkip.text = v.toInt().toString() }
        sliderAutoInterval.addOnChangeListener { _, v, _ ->
            val sec = v.toInt()
            tvAutoInterval.text = if (sec >= 60) "${sec / 60}分钟" else "${sec}秒"
        }
        btnSync.setOnClickListener { startSync() }
        btnStop.setOnClickListener { stopSync() }
        btnTestDownload.setOnClickListener { testDownload() }
        btnPowerGuide.setOnClickListener { showPowerGuide() }
        btnClearSync.setOnClickListener { clearSyncMemory() }
        btnCopyLog.setOnClickListener {
            val log = tvLog.text?.toString() ?: ""
            if (log.isNotBlank()) {
                (getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager)
                    .setPrimaryClip(ClipData.newPlainText("运行日志", log))
                Toast.makeText(this, "日志已复制", Toast.LENGTH_SHORT).show()
            }
        }
        switchAutoSync.setOnCheckedChangeListener { _, checked ->
            prefs.setAutoSync(checked)
            if (checked) startAutoSync() else stopAutoSync()
        }
        switchGcj02.setOnCheckedChangeListener { _, checked -> prefs.setGcj02Convert(checked) }
        findViewById<TextView>(R.id.tvClubLink)?.setOnClickListener {
            startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(
                "https://outbase.cn/zeusfit/zeusfit-mk/sharePage.html?_bid=1005477&type=club&clubId=MTAxMjgz&timestamp=1787569599904&sign=b4604ad9041551e64ce90ea385a0029f"
            )))
        }
        // v6.2.8: 更新链接改为"标题可点、冒号后说明为注释不可点"
        setupLinkWithNote(
            findViewById(R.id.tvUpdateLink),
            "📦 鸡翅幸哲迈进OB(开发体验版)",
            "开发版不稳定且用且珍惜",
            "https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform"
        )
        setupLinkWithNote(
            findViewById(R.id.tvOfficialLink),
            "🚴 鸡翅幸哲迈进OB正式版",
            "正式版稳定可用，开发版不稳定请下载正式版",
            "https://github.com/Anathleticbicyclist/sync-igpsport-magene-onelap-xingzhe-data-to-outbase"
        )
    }

    /** 底部更新链接：标题蓝色可点击(无下划线)、说明注释另起一行灰色 */
    private fun setupLinkWithNote(tv: TextView?, link: String, note: String, url: String) {
        if (tv == null) return
        val sb = SpannableStringBuilder()
        sb.append(link)
        sb.setSpan(object : ClickableSpan() {
            override fun onClick(widget: View) {
                startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
            }
            override fun updateDrawState(ds: TextPaint) {
                super.updateDrawState(ds)
                ds.color = Color.parseColor("#1E88E5") // 蓝色
                ds.isUnderlineText = false // 取消下划线
            }
        }, 0, link.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        sb.append("\n")
        sb.append(note)
        // 注释部分灰色
        sb.setSpan(android.text.style.ForegroundColorSpan(Color.parseColor("#999999")),
            link.length + 1, sb.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        tv.text = sb
        tv.textSize = 11f
        tv.movementMethod = LinkMovementMethod.getInstance()
        tv.highlightColor = Color.TRANSPARENT
    }

    private fun restoreSettings() {
        val lastSrc = prefs.getLastSource()
        if (lastSrc.isNotBlank()) selectedSourceTag = lastSrc
        for (i in 0 until gridSource.childCount) {
            val btn = gridSource.getChildAt(i) as? MaterialButton ?: continue
            val tag = btn.tag as? String ?: continue
            setButtonSelected(btn, tag == selectedSourceTag, tag)
        }
        val lastTgt = prefs.getLastTarget()
        selectedTargetTag = if (lastTgt.isNotBlank()) lastTgt else "ob"
        for (i in 0 until gridTarget.childCount) {
            val btn = gridTarget.getChildAt(i) as? MaterialButton ?: continue
            val tag = btn.tag as? String ?: continue
            setButtonSelected(btn, tag == selectedTargetTag, tag)
        }
        switchGcj02.isChecked = prefs.isGcj02Convert()
        switchAutoSync.isChecked = prefs.isAutoSync()
        val interval = prefs.getAutoInterval()
        sliderAutoInterval.value = interval.toFloat()
        tvAutoInterval.text = if (interval >= 60) "${interval / 60}分钟" else "${interval}秒"
        tvSyncedCount.text = "已同步: ${prefs.getSyncedCount()} 条"
    }

    private fun updateTargetChips() {
        for (i in 0 until gridTarget.childCount) {
            val btn = gridTarget.getChildAt(i) as? MaterialButton ?: continue
            val ds = DataSource.fromShortName(btn.tag as? String ?: "") ?: continue
            val support = UploadSupport.fromDataSource(ds)
            if (!support.available) {
                btn.isEnabled = false
                // 两行显示：第一行平台名(10sp)，第二行"开发中"(8sp)
                val name = ds.displayName
                val spannable = SpannableString("$name\n开发中")
                spannable.setSpan(AbsoluteSizeSpan(11, true), 0, name.length, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
                spannable.setSpan(AbsoluteSizeSpan(8, true), name.length + 1, spannable.length, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
                btn.text = spannable
                btn.maxLines = 2
                btn.setBackgroundColor(0xFFE8E8E8.toInt())
                btn.setTextColor(0xFFB0B0B0.toInt())
                btn.alpha = 0.7f
            }
        }
    }

    private fun openLogin(type: String, url: String) {
        appendLog("🔐 打开登录页...")
        val intent = Intent(this, LoginWebActivity::class.java)
        intent.putExtra(LoginWebActivity.EXTRA_LOGIN_TYPE, type)
        intent.putExtra(LoginWebActivity.EXTRA_URL, url)
        loginLauncher.launch(intent)
    }

    /** v7.4.0: Wahoo 登录——改回WebView方式，用户手动登录授权，redirect_uri用ob://wahoo/callback */
    private fun openWahooLogin() {
        openLogin(LoginWebActivity.TYPE_WAHOO, wahooApi.authorizeUrl())
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

    private fun getSelectedSource(): DataSource {
        return DataSource.fromShortName(selectedSourceTag) ?: DataSource.XINGZHE
    }

    private fun getSelectedTarget(): DataSource {
        return DataSource.fromShortName(selectedTargetTag) ?: DataSource.OUTBASE
    }


    // v6.7.9: 平台主题色映射
    private fun platformColor(tag: String): Int = when (tag) {
        "igp" -> getColor(R.color.igp_green)
        "xz" -> getColor(R.color.xingzhe_blue)
        "mg" -> getColor(R.color.magene_blue)
        "bb" -> getColor(R.color.blackbird_dark)
        "br" -> getColor(R.color.bryton_red)
        "gm", "gcn" -> getColor(R.color.garmin_blue)
        "cscn", "cs" -> getColor(R.color.coros_red)
        "wahoo" -> getColor(R.color.wahoo_red)
        "ob" -> getColor(R.color.outbase_orange)
        else -> getColor(R.color.primary)
    }

    private fun setButtonSelected(btn: MaterialButton, selected: Boolean, tag: String) {
        if (!btn.isEnabled) {
            // 开发中/不可用：更浅的灰底+更浅的文字+半透明，明显区分
            btn.setBackgroundColor(0xFFE8E8E8.toInt())
            btn.setTextColor(0xFFB0B0B0.toInt())
            btn.alpha = 0.6f
            return
        }
        btn.alpha = 1.0f
        if (selected) {
            btn.setBackgroundColor(platformColor(tag))
            btn.setTextColor(getColor(R.color.white))
        } else {
            btn.setBackgroundColor(getColor(R.color.grey_light))
            btn.setTextColor(getColor(R.color.text_primary))
        }
    }

    private fun setupSourceButtons() {
        for (i in 0 until gridSource.childCount) {
            val btn = gridSource.getChildAt(i) as? MaterialButton ?: continue
            val tag = btn.tag as? String ?: continue
            btn.setOnClickListener {
                if (!btn.isEnabled) return@setOnClickListener
                selectedSourceTag = tag
                for (j in 0 until gridSource.childCount) {
                    val b = gridSource.getChildAt(j) as? MaterialButton ?: continue
                    setButtonSelected(b, (b.tag as? String) == tag, b.tag as? String ?: "")
                }
            }
        }
    }

    private fun setupTargetButtons() {
        for (i in 0 until gridTarget.childCount) {
            val btn = gridTarget.getChildAt(i) as? MaterialButton ?: continue
            val tag = btn.tag as? String ?: continue
            btn.setOnClickListener {
                if (!btn.isEnabled) return@setOnClickListener
                selectedTargetTag = tag
                for (j in 0 until gridTarget.childCount) {
                    val b = gridTarget.getChildAt(j) as? MaterialButton ?: continue
                    setButtonSelected(b, (b.tag as? String) == tag, b.tag as? String ?: "")
                }
            }
        }
    }

    private fun updateStatusUI() {
        setStatus(tvIgpStatus, btnIgpLogin, DataSource.IGPSPORT)
        setStatus(tvXingzheStatus, btnXingzheLogin, DataSource.XINGZHE)
        setStatus(tvMageneStatus, btnMageneLogin, DataSource.MAGENE)
        setStatus(tvBlackbirdStatus, btnBlackbirdLogin, DataSource.BLACKBIRD)
        setStatus(tvBrytonStatus, btnBrytonLogin, DataSource.BRYTON)
        setStatus(tvOutbaseStatus, btnOutbaseLogin, DataSource.OUTBASE)
        setStatus(tvGarminComStatus, btnGarminComLogin, DataSource.GARMIN_COM)
        setStatus(tvGarminCnStatus, btnGarminCnLogin, DataSource.GARMIN_CN)
        setStatus(tvCorosCnStatus, btnCorosCnLogin, DataSource.COROS_CN)
        setStatus(tvCorosIntStatus, btnCorosIntLogin, DataSource.COROS_INT)
        setStatus(tvWahooStatus, btnWahooLogin, DataSource.WAHOO)
    }

    private fun setStatus(tv: TextView, btn: MaterialButton, ds: DataSource) {
        val logged = prefs.isLoggedIn(ds)
        val username = prefs.getUsername(ds)
        // v6.7.2: 佳明的displayName是UUID(用户ID)，不显示，直接显示已登录
        val hideUsername = ds == DataSource.GARMIN_CN || ds == DataSource.GARMIN_COM
        tv.text = if (logged) {
            if (username != null && !hideUsername) "✅ $username" else "✅ 已登录"
        } else "❌ 未登录"
        tv.setTextColor(getColor(if (logged) R.color.green else R.color.red))
        btn.text = if (logged) "重新登录" else "登录${ds.displayName}"
    }

    /** 登录后异步获取用户名并保存 */
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
                runOnUiThread { updateStatusUI() }
            }
        }
    }

    private fun appendLog(message: String) {
        val ts = try { SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date()) } catch (_: Exception) { "??:??:??" }
        Log.i(TAG, message)
        runOnUiThread {
            val cur = tvLog.text?.toString() ?: ""
            tvLog.text = if (cur.isBlank() || cur == "等待操作...") "[$ts] $message" else "$cur\n[$ts] $message"
            logScrollView.post { try { logScrollView.fullScroll(ScrollView.FOCUS_DOWN) } catch (_: Exception) {} }
        }
    }

    // v6.7.5: 输出GarminApi调试日志到界面
    private fun flushGarminDebugLogs() {
        try {
            val logs = GarminApi.debugLogs
            synchronized(logs) {
                if (logs.isNotEmpty()) {
                    for (line in logs) {
                        val cur = tvLog.text?.toString() ?: ""
                        tvLog.text = if (cur.isBlank() || cur == "等待操作...") line else "$cur\n$line"
                    }
                    logs.clear()
                    logScrollView.post { try { logScrollView.fullScroll(ScrollView.FOCUS_DOWN) } catch (_: Exception) {} }
                }
            }
        } catch (_: Exception) {}
    }

    private fun setSyncing(syncing: Boolean) {
        AutoSyncService.syncing = syncing
        runOnUiThread {
            btnSync.isEnabled = !syncing
            btnStop.isEnabled = syncing
            btnSync.text = if (syncing) "⏳ 同步中..." else "🚴 开始同步"
            progressBar.visibility = if (syncing) View.VISIBLE else View.GONE
            if (syncing) progressBar.isIndeterminate = true
        }
    }

    private fun startSync() {
        val source = getSelectedSource()
        val target = getSelectedTarget()
        val count = sliderCount.value.toInt()
        val skip = sliderSkip.value.toInt()
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
                withContext(Dispatchers.Main) { progressBar.isIndeterminate = false; progressBar.max = activities.size; progressBar.progress = 0 }
                var success = 0; var skipped = 0; var failed = 0
                for ((i, act) in activities.withIndex()) {
                    if (!isActive) break
                    val syncKey = "${source.shortName}_${act.id}_to_${target.shortName}"
                    if (prefs.isSynced(syncKey)) {
                        skipped++; appendLog("⏭️ [${i+1}/${activities.size}] 已同步跳过: ${act.title.take(20)}")
                        withContext(Dispatchers.Main) { progressBar.progress = i + 1 }; continue
                    }
                    appendLog("⬇️ [${i+1}/${activities.size}] 下载: ${act.title.take(20)} id=${act.id} (${"%.1f".format(act.distance)}km)")
                    val fileData = try { downloadActivity(source, act) } catch (e: Exception) {
                        appendLog("❌ 下载失败: ${e.message}"); failed++
                        withContext(Dispatchers.Main) { progressBar.progress = i + 1 }; continue
                    }
                    if (fileData == null || fileData.size < 100) {
                        appendLog("❌ 文件数据无效"); failed++
                        withContext(Dispatchers.Main) { progressBar.progress = i + 1 }; continue
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
                    else { failed++; appendLog("❌ 上传失败(${tCost}ms): ${result.message}") }
                    withContext(Dispatchers.Main) { progressBar.progress = i + 1; tvSyncedCount.text = "已同步: ${prefs.getSyncedCount()} 条" }
                    delay(150) // v6.2.4: 缩短条间间隔，减少多活动同步累计等待
                }
                appendLog("━━━━━━━━━━━━━━━━━━━━━━")
                appendLog("📊 同步完成: 成功$success / 跳过$skipped / 失败$failed")
            } catch (e: Exception) { Log.e(TAG, "sync error", e); appendLog("❌ 同步异常: ${e.message}") }
            finally { setSyncing(false) }
        }
    }

    private fun stopSync() { syncJob?.cancel(); appendLog("⏹ 正在停止同步...") }

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
    private fun clearSyncMemory() {
        try {
            val before = prefs.getSyncedCount()
            prefs.clearSyncedIds()
            tvSyncedCount.text = "已同步: 0 条"
            appendLog("🗑 已清除上传记忆($before 条) → 下次同步将重新全量上传")
            Toast.makeText(this, "上传记忆已清除($before 条)", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Log.e(TAG, "clearSyncMemory error", e)
            Toast.makeText(this, "清除失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }

    private fun startAutoSync() {
        val interval = prefs.getAutoInterval()
        appendLog("⏰ 后台自动同步已开启，间隔 ${if (interval >= 60) "${interval/60}分钟" else "${interval}秒"}")
        AutoSyncService.start(this, interval)
    }

    private fun stopAutoSync() {
        AutoSyncService.stop(this)
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

    private suspend fun downloadActivity(source: DataSource, record: ActivityRecord): ByteArray? {
        val cred = prefs.getCredential(source) ?: return null
        var data = when (source) {
            DataSource.IGPSPORT -> igpsportApi.downloadFitFile(cred, record.id, record.extra)
            DataSource.XINGZHE -> { val (bytes, _) = xingzheApi.downloadGpxOrFit(cred, record.id); bytes }
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
    private fun testDownload() {
        val source = getSelectedSource()
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
                val data = downloadActivity(source, act)
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
    private fun showPowerGuide() {
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

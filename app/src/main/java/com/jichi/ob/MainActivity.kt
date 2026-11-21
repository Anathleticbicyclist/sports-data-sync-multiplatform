package com.jichi.ob

import android.annotation.SuppressLint
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.Environment
import android.util.Log
import android.view.View
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.work.Constraints
import androidx.work.ExistingPeriodicWorkPolicy
import androidx.work.NetworkType
import androidx.work.PeriodicWorkRequestBuilder
import androidx.work.WorkManager
import com.jichi.ob.api.BlackbirdApi
import com.jichi.ob.api.BrytonApi
import com.jichi.ob.api.CorosApi
import com.jichi.ob.api.GarminApi
import com.jichi.ob.api.GiantApi
import com.jichi.ob.api.IntervalsIcuApi
import com.jichi.ob.api.MyWhooshApi
import com.jichi.ob.api.ZwiftApi
import com.jichi.ob.api.KeepApi
import com.jichi.ob.api.WahooApi
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

    internal lateinit var prefs: PrefsManager
    internal lateinit var igpsportApi: IgpsportApi
    internal lateinit var xingzheApi: XingzheApi
    internal lateinit var mageneApi: MageneApi
    internal lateinit var blackbirdApi: BlackbirdApi
    internal lateinit var brytonApi: BrytonApi
    internal lateinit var giantApi: GiantApi
    internal lateinit var outbaseApi: OutbaseApi
    internal lateinit var garminApi: GarminApi
    internal lateinit var mywhooshApi: MyWhooshApi
    internal lateinit var zwiftApi: ZwiftApi
    internal lateinit var keepApi: KeepApi
    internal lateinit var codoonApi: CodoonApi
    internal lateinit var zeppApi: ZeppApi
    internal var lastZeppLoginAttempt = 0L   // v8.0.1: Zepp 登录节流（华米 429 风控）
    internal lateinit var komootApi: KomootApi
    internal lateinit var suuntoApi: SuuntoApi
    internal lateinit var intervalsIcuApi: IntervalsIcuApi
    internal lateinit var corosApi: CorosApi
    internal lateinit var wahooApi: WahooApi
    internal lateinit var devOAuthApi: com.jichi.ob.api.DevOAuth2Api
    internal lateinit var twoBuluApi: com.jichi.ob.api.TwoBuluApi
    internal lateinit var uploadEngine: UploadEngine

    // P1 Step 1: 协调器——登录/同步状态/导航/日志逻辑已移至 coordinator/ 与 util/AppLog，
    // 此处只保留字段与一行委托，对外调用方签名不变。
    internal lateinit var appLog: com.jichi.ob.util.AppLog
    internal lateinit var auth: com.jichi.ob.coordinator.AuthCoordinator
    internal lateinit var syncCoordinator: com.jichi.ob.coordinator.SyncCoordinator
    internal lateinit var navigator: com.jichi.ob.coordinator.FragmentNavigator

    // v7.6.2: 四页面Fragment引用
    internal lateinit var loginFragment: com.jichi.ob.ui.LoginFragment
    internal lateinit var settingsFragment: com.jichi.ob.ui.SyncSettingsFragment
    internal lateinit var syncFragment: com.jichi.ob.ui.SyncFragment
    internal lateinit var aboutFragment: com.jichi.ob.ui.AboutFragment
    // v8.2.0: 记录中心（跨平台日期检索）
    internal lateinit var recordFragment: com.jichi.ob.ui.RecordCenterFragment
    // v7.9.7: 轨迹合并页（全屏覆盖）
    internal lateinit var mergeFragment: com.jichi.ob.ui.MergeFragment
    // v8.2.1: 实验室登录页（松拓/Zepp/百锐腾，可返回）
    internal lateinit var labLoginFragment: com.jichi.ob.ui.LabLoginFragment
    internal lateinit var createTaskFragment: com.jichi.ob.ui.CreateTaskFragment

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

    internal val loginLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { result ->
        try {
            if (::auth.isInitialized) auth.handleLoginResult(result.resultCode, result.data)
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
            appLog = com.jichi.ob.util.AppLog(this)
            auth = com.jichi.ob.coordinator.AuthCoordinator(this)
            syncCoordinator = com.jichi.ob.coordinator.SyncCoordinator(this)
            navigator = com.jichi.ob.coordinator.FragmentNavigator(this)
            if (!SAVE_DIR.exists()) SAVE_DIR.mkdirs()
            if (savedInstanceState == null) {
                navigator.initFragments()
            } else {
                navigator.restoreFragments()
            }
            initFixWebView()
            requestNotificationPermission()
            appendLog("🚴 鸡翅幸哲迈进OB($APP_EDITION) $APP_VERSION 启动")
            appendLog("🎯 让运动数据自由流动")
            appendLog("📱 Android ${Build.VERSION.RELEASE} (API ${Build.VERSION.SDK_INT})")
            appendLog("📂 存储目录: ${SAVE_DIR.absolutePath}")
            appendLog("💾 已同步记录: ${prefs.getSyncedCount()} 条")
            // v8.2.2: 启动改轻量本地校验（不发网络请求，避免启动即撞平台风控）；
            //         网络级登录检测收敛到登录页"一键检测"按钮
            syncCoordinator.initLoginStatesLight()
            // v8.2.3: 会话内自动检查——延迟5s后台串行校验一次（默认开，可关；不弹窗不阻塞，失败静默）
            if (prefs.isAutoCheckLogin() && !autoCheckDone) {
                lifecycleScope.launch(Dispatchers.IO) {
                    try {
                        kotlinx.coroutines.delay(5000)
                        if (autoCheckDone) return@launch
                        autoCheckDone = true
                        appendLog("🔍 会话内自动检查登录态...")
                        syncCoordinator.checkAllLogins()
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

    /** v8.4.4: 回到前台时轻量刷新登录卡片统计（不重建任务卡片避免卡顿） */
    override fun onResume() {
        super.onResume()
        try { loginFragment.refreshStats() } catch (_: Exception) {}
        try { syncFragment.refreshTaskState() } catch (_: Exception) {}
        // v8.5.8: 底部导航栏消失兜底——onResume时恢复可见（除非全屏Fragment正在显示）
        try {
            val bottomNav = findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
            val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
            // 检查所有全屏Fragment是否处于show状态（isHidden=false且isAdded）
            val onFullScreen = (recordFragment != null && recordFragment.isAdded && !recordFragment.isHidden) ||
                (labLoginFragment != null && labLoginFragment.isAdded && !labLoginFragment.isHidden) ||
                (createTaskFragment != null && createTaskFragment.isAdded && !createTaskFragment.isHidden) ||
                (mergeFragment != null && mergeFragment.isAdded && !mergeFragment.isHidden)
            if (!onFullScreen) {
                bottomNav?.visibility = android.view.View.VISIBLE
                toolbar?.visibility = android.view.View.VISIBLE
            }
        } catch (_: Exception) {}
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

    /** v8.2.9: 实验室凭证输入对话框（松拓式：用户自填 clientId/clientSecret） */

    internal fun openPlatformLogin(ds: DataSource) = auth.openPlatformLogin(ds)

    /** v7.4.5: Wahoo 登录——恢复WahooOAuth2Service后台自动化登录（v7.3.0验证通过的方案），SCOPES含workouts_write支持上传 */
    internal fun openWahooLogin() = auth.openWahooLogin()

    /**
     * v7.5.1: 佳明中国直接登录（模拟garth库mobile SSO流程，不需要WebView）
     * 用邮箱密码直接获取OAuth2 Bearer token，调用connectapi.garmin.cn
     */
    internal fun openGarminCnLogin() = auth.openGarminCnLogin()

    /** v8.3.4: 佳明登录失败统一弹窗（国内/国际风格一致）——引导文案 + 可滑动日志 + 复制/知道了 */

    /** v7.8.0: 捷安特直接登录——账号密码原生表单直调 GiantApi（纯API，无需WebView） */
    internal fun openGiantLogin() = auth.openGiantLogin()

    /** v7.8.4: MyWhoosh 直接登录——账号密码原生表单直调 MyWhooshApi（纯API，仅下载源） */
    internal fun openMywhooshLogin() = auth.openMywhooshLogin()

    /** v7.8.4: Zwift 直接登录——账号密码原生表单直调 ZwiftApi（纯API，仅下载源） */
    internal fun openZwiftLogin() = auth.openZwiftLogin()

    /** v7.9.2: Keep 直接登录——手机号密码原生表单直调 KeepApi（纯API，仅下载源；上传走 Keep App 半自动导入） */
    internal fun openKeepLogin() = auth.openKeepLogin()

    /** v7.9.5: 咕咚直接登录——手机号+密码（纯API，仅下载源） */
    internal fun openCodoonLogin() = auth.openCodoonLogin()

    /** v7.9.5: Zepp（华米）直接登录——邮箱/手机号+密码（纯API，仅下载源） */
    internal fun openZeppLogin() = auth.openZeppLogin()

    /** v7.9.6: Komoot 直接登录——邮箱+密码（纯API Basic认证，双向：下载+上传） */
    internal fun openKomootLogin() = auth.openKomootLogin()

    /**
     * v7.9.6: Suunto（松拓）登录——OAuth2 授权。
     * 需要 apizone.suunto.com 注册开发者应用的 client_id/client_secret/subscription_key 三凭证。
     * ① 若凭证已内置/已保存 → 直接打开 WebView 授权页；
     * ② 否则先弹对话框填三凭证（仅首次）。
     */
    internal fun openSuuntoLogin() = auth.openSuuntoLogin()


    /** v7.8.5: Intervals.icu 直接登录——粘贴个人 API Key（纯API，仅上传目标） */
    internal fun openIntervalsIcuLogin() = auth.openIntervalsIcuLogin()

    /** v7.2.0: Wahoo配置对话框（保留，用于用户自配置凭证） */

    /**
     * v8.2.2: 启动轻量登录检测——只做本地凭证校验（不发网络请求），
     * 避免启动即撞平台风控；网络级检测由登录页"一键检测"触发 checkAllLogins。
     */
    /** v8.2.3: 平台统计 + 平台日志写入（IO 线程调用；type: dl下载/ok上传成功/skip跳过/err失败） */
    private fun recordSync(ds: DataSource, type: String, okDelta: Int = 0, skipDelta: Int = 0, failDelta: Int = 0, msg: String = "") = syncCoordinator.recordSync(ds, type, okDelta, skipDelta, failDelta, msg)


    /** v8.2.2: 一键检测——网络级登录态全量校验（登录页按钮触发；onDone 返回汇总） */
    internal fun checkAllLogins(onDone: ((valid: Int, refreshed: Int, invalid: Int) -> Unit)? = null) = syncCoordinator.checkAllLogins(onDone)

    /**
     * v7.5.9: 启动检测时尝试刷新失效平台的登录态
     * 仅支持有刷新机制的平台；返回 null 表示无法刷新（需重新登录）
     */

    /** v7.9.6: Suunto Subscription Key（内置优先，其次用户配置） */
    private fun suuntoSubscriptionKey(): String? = auth.suuntoSubscriptionKey()

    private fun fetchUsernameAfterLogin(ds: DataSource) = auth.fetchUsernameAfterLogin(ds)

    /** v8.2.3.10: 时间归一——秒→毫秒；startTimeMs 无效时用时间字符串解析兜底；再归一次秒→毫秒 */
    private fun normStartMs(ms: Long, timeStr: String, cache: com.jichi.ob.util.ActivityCache): Long = syncCoordinator.normStartMs(ms, timeStr, cache)

    /** v8.2.5: 从平台 extra 提取干净运动类型（历史实现把 extra 原样塞进 type 列导致记录中心显示长串） */
    private fun cleanCacheType(ds: com.jichi.ob.model.DataSource, extra: String?): String = syncCoordinator.cleanCacheType(ds, extra)

    /** v8.2.3.9: 预拉取全部运动记录元数据入库（循环分页全量；上限=缓存库单平台2000条；后台IO不卡UI；失败可见反馈） */
    fun preloadRecent(ds: DataSource) = syncCoordinator.preloadRecent(ds)

    /** v8.2.3.9: 登录页「拉取全部」——串行拉取所有已登录平台（防并发触发风控），汇总反馈 */
    fun preloadAll() = syncCoordinator.preloadAll()

    /** 单平台全量拉取核心：返回入库条数（0=无记录，-1=失败）；日志逐批输出进度 */

    // v7.6.2: 日志/进度/同步态统一转发给SyncFragment
    // v8.1.3: Fragment detached 防御——后台同步/Worker 回调时页面可能已销毁，任何 UI 异常不允许冒泡崩溃
    private fun appendLog(message: String) = appLog.append(message)

    /** v8.3.5: 毫秒时间戳 → "MM-dd HH:mm"（游标日志显示） */
    private fun fmtTime(ms: Long): String = appLog.fmtTime(ms)

    // v6.7.5: 输出GarminApi调试日志到界面（转发SyncFragment）
    private fun flushGarminDebugLogs() = appLog.flushGarminDebugLogs()

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
            // v8.4.7: 本次各平台明细统计（ConcurrentHashMap 线程安全，并行上传不崩）
            val perPlatform = java.util.concurrent.ConcurrentHashMap<String, IntArray>()
            fun bump(short: String, dl: Int = 0, up: Int = 0, fail: Int = 0) {
                val arr = perPlatform.getOrPut(short) { IntArray(3) }
                synchronized(arr) { arr[0] += dl; arr[1] += up; arr[2] += fail }
            }
            var totalScanned = 0  // 本次扫描了多少条活动
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
                    totalScanned += list.size  // v8.4.7 本次扫描总数
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
                        for ((dOk, dSkip, dFail) in deltas) { ok += dOk; skipped += dSkip; failed += dFail; srcFailed += dFail; bump(source.shortName, dl = 1); pendingTargets.forEach { bump(it.shortName, up = dOk, fail = dFail) } }
                        // 佳明/Keep 串行上传
                        for (target in serialTargets) {
                            if (!taskActive) break
                            val (dOk, dSkip, dFail) = uploadOneToTarget(source, act, fileData, localFile, localName, target)
                            ok += dOk; skipped += dSkip; failed += dFail; srcFailed += dFail; bump(target.shortName, up = dOk, fail = dFail)
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
                // v9.2.3: 阶段2 健康数据同步
                // - 任务级 wellness=true：直接同步，不受全局开关影响，用任务设置的天数
                // - 任务级 wellness=false（同步页直接点开始）：全局开关开了才同步，默认7天
                if (taskActive && (task.wellness || prefs.isGarminWellnessSync())) {
                    val gSrc = sources.firstOrNull { it == DataSource.GARMIN_COM || it == DataSource.GARMIN_CN }
                    val gTgt = targets.firstOrNull { it == DataSource.GARMIN_COM || it == DataSource.GARMIN_CN }
                    if (gSrc != null && gTgt != null && gSrc != gTgt) {
                        val days = if (task.wellness && task.wellnessDays > 0) task.wellnessDays else com.jichi.ob.api.GarminWellnessSync.DEFAULT_DAYS
                        appendLog("📊 [健康数据] 开始同步 ${gSrc.displayName} → ${gTgt.displayName}（最近 $days 天）...")
                        try {
                            val srcCred = prefs.getCredential(gSrc) ?: ""
                            val tgtCred = prefs.getCredential(gTgt) ?: ""
                            val w = com.jichi.ob.api.GarminWellnessSync.sync(
                                garminApi, gSrc, srcCred, gTgt, tgtCred, days
                            ) { appendLog(it) }
                            ok += w.ok; skipped += w.duplicate; failed += w.failed
                        } catch (e: Exception) {
                            appendLog("❌ [健康数据] 同步异常: ${e.message}")
                            failed++
                        }
                    } else if (task.wellness) {
                        appendLog("⚠️ [健康数据] 需佳明来源与佳明目标（CN↔COM）且不相同，当前任务不满足，已跳过")
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "task sync error", e)
                appendLog("❌ 任务异常: ${e.message}")
            } finally {
                taskActive = false
                // v8.4.7: 构造各平台明细 JSON（含扫描总数）
                val detailJson = org.json.JSONObject().apply {
                    put("scanned", totalScanned)
                    perPlatform.forEach { (k, v) ->
                        put(k, org.json.JSONObject().apply {
                            put("dl", v[0]); put("up", v[1]); put("fail", v[2])
                        })
                    }
                }.toString()
                prefs.upsertTask(task.copyRun(ok, skipped, failed, detailJson))
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

    internal suspend fun fetchActivities(source: DataSource, skip: Int, limit: Int): List<ActivityRecord> {
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

    internal suspend fun downloadActivity(source: DataSource, target: DataSource = DataSource.OUTBASE, record: ActivityRecord, convertMagene: Boolean = true): ByteArray? {
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

    private fun isFit(bytes: ByteArray): Boolean = syncCoordinator.isFit(bytes)
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

    /** v8.5.6: Activity重建恢复Fragment引用（不重新add，由FragmentManager自动恢复） */

    // v8.2.3.5: 新建任务引导——切到设置页（设置页=任务配置页，调好来源/目标/参数后点「保存为任务」）
    fun switchToSettingsTab() = navigator.switchToSettingsTab()

    // v8.2.3.5: 设置页保存任务后，刷新同步页任务列表
    fun refreshTasksFromSettings() = navigator.refreshTasksFromSettings()

    // v8.2.1: 记录中心入口（关于页横条调用；全屏覆盖页，不占底部导航高频位）
    fun openRecordCenter() = navigator.openRecordCenter()

    fun closeRecordCenter() = navigator.closeRecordCenter()

    // v8.2.1: 实验室登录入口（关于页横条调用；独立页面，可返回，不占底部导航）
    fun openLabLogin(platforms: List<com.jichi.ob.model.DataSource>) = navigator.openLabLogin(platforms)

    fun closeLabLogin() = navigator.closeLabLogin()

    // v8.2.2: 新建任务向导（设置页「＋新建同步任务」横条入口；全屏覆盖页，可返回）
    fun openCreateTask() = navigator.openCreateTask()

    fun closeCreateTask() = navigator.closeCreateTask()


    // ============ v7.9.7 轨迹合并：全屏覆盖页 ============
    fun openMerge() = navigator.openMerge()

    fun closeMerge() = navigator.closeMerge()

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
    suspend fun fetchMergeActivities(source: DataSource, fromDate: String? = null, toDate: String? = null, skipStart: Int = 0): MergeFetchPage = syncCoordinator.fetchMergeActivities(source, fromDate, toDate, skipStart)

    suspend fun downloadForMerge(source: DataSource, record: ActivityRecord): ByteArray? = syncCoordinator.downloadForMerge(source, record)

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

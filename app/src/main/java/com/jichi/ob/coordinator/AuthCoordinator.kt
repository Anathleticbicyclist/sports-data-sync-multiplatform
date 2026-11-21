package com.jichi.ob.coordinator

import android.app.Activity
import android.content.Intent
import android.util.Log
import android.widget.Toast
import androidx.lifecycle.lifecycleScope
import com.jichi.ob.MainActivity
import com.jichi.ob.R
import com.jichi.ob.api.*
import com.jichi.ob.model.DataSource
import com.jichi.ob.ui.LoginWebActivity
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import org.json.JSONObject

/**
 * P1 Step 1: 登录认证协调器——从 MainActivity（3316 行）抽出的全部平台登录入口。
 * 持有 MainActivity 引用并调用其 internal 成员（过渡形态；下一步抽 AuthHost 接口解耦）。
 * MainActivity 保留同名委托方法，对外调用方（LoginFragment / LabLoginFragment）签名不变。
 */
class AuthCoordinator(private val activity: MainActivity) {

    companion object {
        private const val TAG = "JichiOB"
    }

    private fun openDevOAuthLogin(ds: DataSource, loginType: String) {
        val cid = activity.prefs.getLabClientId(ds)
        val csec = activity.prefs.getLabClientSecret(ds)
        if (cid.isNullOrEmpty() || csec.isNullOrEmpty()) {
            showLabCredentialDialog(ds, loginType)
        } else {
            val url = com.jichi.ob.api.DevOAuth2Api.buildAuthUrl(ds, cid)
            activity.openLogin(loginType, url)
        }
    }

    /** v8.2.9: 实验室凭证输入对话框（松拓式：用户自填 clientId/clientSecret） */

    private fun showLabCredentialDialog(ds: DataSource, loginType: String) {
        val input = android.widget.LinearLayout(activity).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(60, 20, 60, 0)
        }
        val etId = android.widget.EditText(activity).apply {
            hint = "Client ID（开发者平台申请）"
            textSize = 14f
        }
        val etSec = android.widget.EditText(activity).apply {
            hint = "Client Secret（开发者平台申请）"
            textSize = 14f
        }
        input.addView(etId); input.addView(etSec)
        android.app.AlertDialog.Builder(activity)
            .setTitle("填写 ${ds.displayName} 开发者凭证")
            .setMessage("前往 ${ds.displayName} 开发者平台自助申请（免费），填写后即可登录。凭证仅存本机。")
            .setView(input)
            .setPositiveButton("保存并登录") { _, _ ->
                val id = etId.text.toString().trim()
                val sec = etSec.text.toString().trim()
                if (id.isNotEmpty() && sec.isNotEmpty()) {
                    activity.prefs.saveLabClientId(ds, id)
                    activity.prefs.saveLabClientSecret(ds, sec)
                    val url = com.jichi.ob.api.DevOAuth2Api.buildAuthUrl(ds, id)
                    activity.openLogin(loginType, url)
                } else {
                    android.widget.Toast.makeText(activity, "凭证不能为空", android.widget.Toast.LENGTH_SHORT).show()
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    internal fun openPlatformLogin(ds: DataSource) {
        when (ds) {
            DataSource.IGPSPORT -> activity.openLogin(LoginWebActivity.TYPE_IGPSPORT, com.jichi.ob.api.IgpsportApi.LOGIN_URL)
            DataSource.XINGZHE -> activity.openLogin(LoginWebActivity.TYPE_XINGZHE, com.jichi.ob.api.XingzheApi.LOGIN_URL)
            DataSource.MAGENE -> activity.openLogin(LoginWebActivity.TYPE_MAGENE, com.jichi.ob.api.MageneApi.LOGIN_URL)
            DataSource.BLACKBIRD -> activity.openLogin(LoginWebActivity.TYPE_BLACKBIRD, com.jichi.ob.api.BlackbirdApi.LOGIN_URL)
            DataSource.GIANT -> openGiantLogin()
            DataSource.OUTBASE -> activity.openLogin(LoginWebActivity.TYPE_OUTBASE, com.jichi.ob.api.OutbaseApi.LOGIN_URL)
            DataSource.GARMIN_COM -> activity.openLogin(LoginWebActivity.TYPE_GARMIN_COM, com.jichi.ob.api.GarminApi.LOGIN_URL_COM)
            DataSource.GARMIN_CN -> openGarminCnLogin()
            DataSource.COROS_CN -> activity.openLogin(LoginWebActivity.TYPE_COROS_CN, com.jichi.ob.api.CorosApi.LOGIN_URL_CN)
            DataSource.COROS_INT -> activity.openLogin(LoginWebActivity.TYPE_COROS_INT, com.jichi.ob.api.CorosApi.LOGIN_URL_INT)
            DataSource.WAHOO -> openWahooLogin()
            DataSource.MYWHOOSH -> openMywhooshLogin()
            DataSource.ZWIFT -> openZwiftLogin()
            DataSource.INTERVALS_ICU -> openIntervalsIcuLogin()
            DataSource.KEEP -> openKeepLogin()
            DataSource.CODOON -> openCodoonLogin()
            DataSource.KOMOT -> openKomootLogin()
            DataSource.ZEPP -> openZeppLogin()
            DataSource.SUUNTO -> openSuuntoLogin()
            DataSource.TWO_BULU -> activity.openLogin(LoginWebActivity.TYPE_TWO_BULU, "https://www.2bulu.com/")
            DataSource.STRAVA -> openDevOAuthLogin(DataSource.STRAVA, LoginWebActivity.TYPE_STRAVA)
            DataSource.POLAR -> openDevOAuthLogin(DataSource.POLAR, LoginWebActivity.TYPE_POLAR)
            DataSource.FITBIT -> openDevOAuthLogin(DataSource.FITBIT, LoginWebActivity.TYPE_FITBIT)
            DataSource.WITHINGS -> openDevOAuthLogin(DataSource.WITHINGS, LoginWebActivity.TYPE_WITHINGS)
            DataSource.TRAININGPEAKS -> openDevOAuthLogin(DataSource.TRAININGPEAKS, LoginWebActivity.TYPE_TRAININGPEAKS)
            DataSource.BRYTON -> activity.openLogin(LoginWebActivity.TYPE_BRYTON, com.jichi.ob.api.BrytonApi.LOGIN_URL)
        }
    }

    /** v7.4.5: Wahoo 登录——恢复WahooOAuth2Service后台自动化登录（v7.3.0验证通过的方案），SCOPES含workouts_write支持上传 */

    internal fun openWahooLogin() {
        val layout = android.widget.LinearLayout(activity).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val emailInput = android.widget.EditText(activity).apply {
            hint = "Wahoo邮箱"
            inputType = android.text.InputType.TYPE_TEXT_VARIATION_EMAIL_ADDRESS
            setText(activity.prefs.getWahooEmail() ?: "")
        }
        val passwordInput = android.widget.EditText(activity).apply {
            hint = "Wahoo密码"
            inputType = android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(emailInput)
        layout.addView(passwordInput)
    
        androidx.appcompat.app.AlertDialog.Builder(activity)
            .setTitle("Wahoo直接登录")
            .setMessage("后台自动完成OAuth2授权（含workouts_write上传权限）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val email = emailInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (email.isEmpty() || password.isEmpty()) {
                    activity.appLog.append("⚠️ 请输入邮箱和密码")
                    return@setPositiveButton
                }
                activity.prefs.saveWahooEmail(email)
                activity.appLog.append("🔐 Wahoo直接登录中...")
                WahooOAuth2Service.debugLogCallback = { msg -> activity.runOnUiThread { activity.appLog.append(msg) } }
                activity.lifecycleScope.launch(Dispatchers.IO) {
                    // v7.5.4: 登录前先尝试复用已有token，避免每次登录都新建token导致"Too many unrevoked access tokens"上限
                    val clientId = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_ID else activity.prefs.getWahooClientId()
                    val clientSecret = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_SECRET else activity.prefs.getWahooClientSecret()
                    val savedToken = activity.prefs.getWahooToken()
                    val savedRefresh = activity.prefs.getWahooRefresh()
                    var reused: Pair<String, String>? = null
                    if (!savedToken.isNullOrEmpty() && !clientId.isNullOrEmpty() && !clientSecret.isNullOrEmpty()) {
                        activity.appLog.append("🔎 检测到已保存的Wahoo令牌，尝试复用（避免新建token超限）...")
                        reused = activity.wahooApi.getUsableTokenOrNull(savedToken, savedRefresh, clientId, clientSecret)
                        if (reused != null) {
                            activity.appLog.append("✅ 复用已有Wahoo令牌成功，无需重新授权")
                        } else {
                            activity.appLog.append("ℹ️ 已有令牌已失效，尝试撤销旧令牌后重新授权...")
                            // v7.5.4: 用旧token撤销全部授权（即使已失效也无害），尽量清空token名额
                            if (activity.wahooApi.deauthorize(savedToken)) activity.appLog.append("✅ 旧Wahoo令牌已撤销")
                            else activity.appLog.append("ℹ️ 旧令牌撤销失败（可能已失效），继续重新授权")
                        }
                    }
                    if (reused != null) {
                        activity.prefs.saveWahooToken(reused.first)
                        activity.prefs.saveWahooRefresh(reused.second)
                        activity.appLog.append("✅ Wahoo登录成功（含上传权限）")
                        fetchUsernameAfterLogin(DataSource.WAHOO)
                    } else {
                        activity.appLog.append("🔐 开始Wahoo OAuth2重新授权...")
                        val result = WahooOAuth2Service.login(email, password)
                        if (result != null) {
                            activity.prefs.saveWahooToken(result.first)
                            activity.prefs.saveWahooRefresh(result.second)
                            activity.appLog.append("✅ Wahoo登录成功（含上传权限）")
                            fetchUsernameAfterLogin(DataSource.WAHOO)
                        } else {
                            // v7.5.4: 错误原因已在WahooOAuth2Service日志中详细展示
                            activity.appLog.append("❌ Wahoo登录失败，详见上方日志")
                            // v7.5.4: token数量超限时弹出针对性引导
                            if (WahooOAuth2Service.lastError == WahooOAuth2Service.ERROR_TOKEN_LIMIT) {
                                activity.runOnUiThread {
                                    androidx.appcompat.app.AlertDialog.Builder(activity)
                                        .setTitle("Wahoo令牌数量超限")
                                        .setMessage("该Wahoo账号下\"鸡翅幸哲迈进OB\"的未撤销令牌已达10枚上限，无法继续登录。\n\n解决方法：\n1. 打开手机上的Wahoo官方App\n2. 进入 设置(Settings) → 已授权应用(Authorized Apps)\n3. 找到\"鸡翅幸哲迈进OB\"，点击 撤销授权(Deauthorize)\n4. 回到本应用重新登录即可")
                                        .setPositiveButton("我知道了", null)
                                        .show()
                                }
                            }
                        }
                    }
                    activity.runOnUiThread { activity.loginFragment.updateStatus() }
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
        val layout = android.widget.LinearLayout(activity).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val emailInput = android.widget.EditText(activity).apply {
            hint = "佳明中国邮箱"
            inputType = android.text.InputType.TYPE_TEXT_VARIATION_EMAIL_ADDRESS
        }
        val passwordInput = android.widget.EditText(activity).apply {
            hint = "佳明中国密码"
            inputType = android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(emailInput)
        layout.addView(passwordInput)
        // v8.2.1: 手动清空风控（不依赖登录态；提示强行重登会增加冷却）
        val clearCooldownLink = android.widget.TextView(activity).apply {
            text = "→ 清空风控冷却（登录被限流/提示24小时后重试时点此）"
            textSize = 12f
            setTextColor(0xFFE65100.toInt())
            setPadding(0, 20, 0, 0)
            isClickable = true
            isFocusable = true
        }
        clearCooldownLink.setOnClickListener {
            androidx.appcompat.app.AlertDialog.Builder(activity)
                .setTitle("清空风控")
                .setMessage("若清空风控后强行尝试登录，可能增加冷却时间，你确定清空吗？")
                .setPositiveButton("确定清空") { _, _ ->
                    com.jichi.ob.api.GarminApi.clearAllCooldownFor(DataSource.GARMIN_CN)
                    android.widget.Toast.makeText(activity, "佳明中国：风控冷却缓存已清空，可重新登录", android.widget.Toast.LENGTH_SHORT).show()
                }
                .setNegativeButton("取消", null)
                .show()
        }
        layout.addView(clearCooldownLink)

        androidx.appcompat.app.AlertDialog.Builder(activity)
            .setTitle("佳明中国直接登录")
            .setMessage("后台自动完成mobile SSO+OAuth2授权（参考garth库，Bearer token调connectapi）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val email = emailInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (email.isEmpty() || password.isEmpty()) {
                    activity.appLog.append("⚠️ 请输入邮箱和密码")
                    return@setPositiveButton
                }
                // v7.9.1: 佳明中国补风控检查——按账号维度（中国区走OAuth1→OAuth2，主通道GCM_ANDROID_DARK）
                if (com.jichi.ob.api.GarminApi.isCooldown(DataSource.GARMIN_CN, email, "GCM_ANDROID_DARK")) {
                    val remain = com.jichi.ob.api.GarminApi.cooldownRemainMinutes(DataSource.GARMIN_CN, email, "GCM_ANDROID_DARK")
                    activity.appLog.append("❌ 该账号处于佳明中国风控冷却中，请约${remain}分钟后重试；或到登录页点击【注销】清除该账号冷却缓存后立即重登（冷却仅针对该账号）")
                    return@setPositiveButton
                }
                activity.appLog.append("🔐 佳明中国直接登录中...")
                activity.lifecycleScope.launch(Dispatchers.IO) {
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
                        activity.runOnUiThread {
                            activity.prefs.saveGarminCnToken(cred)
                            activity.prefs.saveGarminCnCookie("")
                            activity.appLog.append("✅ 佳明中国登录成功(mobile SSO+DI Token)")
                            com.jichi.ob.util.GarminLoginHint.show(activity, "佳明中国")
                            fetchUsernameAfterLogin(DataSource.GARMIN_CN)
                            activity.loginFragment.updateStatus()
                        }
                    } catch (e: Exception) {
                        // v7.9.1: 佳明中国429（风控）单独提示 + 写冷却
                        val msg = e.message ?: ""
                        if (msg.contains("429") || msg.contains("rate limit") || msg.contains("限流")) {
                            com.jichi.ob.api.GarminApi.writeCooldownFor(DataSource.GARMIN_CN, email, "GCM_ANDROID_DARK")
                            val remain = com.jichi.ob.api.GarminApi.cooldownRemainMinutes(DataSource.GARMIN_CN, email, "GCM_ANDROID_DARK")
                            activity.runOnUiThread {
                                activity.appLog.append("❌ 佳明中国触发风控限流(429)，已写入冷却。该账号请约${remain}分钟后重试（冷却仅针对该账号）")
                                activity.loginFragment.updateStatus()
                                showGarminLoginFailDialog("佳明中国", "触发风控限流(429)，该账号请约${remain}分钟后重试。冷却期内反复尝试会延长封禁。")
                            }
                        } else {
                            activity.runOnUiThread {
                                activity.appLog.append("❌ 佳明中国登录失败: $msg")
                                activity.loginFragment.updateStatus()
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
            activity.appLog.flushGarminDebugLogs()
            // v8.3.4: 原生Dialog直接setContentView（show前设窗口参数，避免部分ROM按钮行被挤出/窗口高度异常）
            val dialog = android.app.Dialog(activity, android.R.style.Theme_Translucent_NoTitleBar)
            val view = activity.layoutInflater.inflate(R.layout.dialog_garmin_login, null)
            view.findViewById<android.widget.TextView>(R.id.tvGarminDialogTitle).text = "$region 登录失败"
            view.findViewById<android.widget.TextView>(R.id.tvGarminDialogGuide).text =
                hint + "\n\n如果不确定可以将报错日志通过抖音发给「多吃两口」排查。"
            var logTail = try {
                // v8.3.4: 取运行日志页同源日志池（appendLog持久日志），保证窗口日志与实际日志一致
                activity.prefs.getPersistLogs().takeLast(18).joinToString("\n")
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
                    val cm = activity.getSystemService(android.content.ClipboardManager::class.java)
                    cm?.setPrimaryClip(android.content.ClipData.newPlainText("garminLog",
                        hint + "\n\n——— 佳明登录日志 ———\n" + (if (logTail.isNotBlank()) logTail else "（暂无佳明日志）")))
                    android.widget.Toast.makeText(activity, "日志已复制，可粘贴反馈", android.widget.Toast.LENGTH_SHORT).show()
                } catch (_: Exception) {}
            }
            view.findViewById<android.widget.TextView>(R.id.btnGarminOk).setOnClickListener { dialog.dismiss() }
            dialog.setContentView(view)
            dialog.setCancelable(true)
            dialog.window?.setBackgroundDrawable(android.graphics.drawable.ColorDrawable(android.graphics.Color.TRANSPARENT))
            dialog.window?.setLayout(
                (activity.resources.displayMetrics.widthPixels * 0.9f).toInt(),
                android.view.ViewGroup.LayoutParams.WRAP_CONTENT
            )
            dialog.show()
        } catch (_: Exception) {}
    }

    /** v7.8.0: 捷安特直接登录——账号密码原生表单直调 GiantApi（纯API，无需WebView） */

    internal fun openGiantLogin() {
        val layout = android.widget.LinearLayout(activity).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val accountInput = android.widget.EditText(activity).apply {
            hint = "捷安特账号（手机号/邮箱）"
            inputType = android.text.InputType.TYPE_CLASS_TEXT
            setText(activity.prefs.getGiantAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(activity).apply {
            hint = "捷安特密码"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(accountInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(activity)
            .setTitle("登录捷安特")
            .setMessage("账号密码直接登录，支持同步上传（捷安特暂不支持下载）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val account = accountInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (account.isEmpty() || password.isEmpty()) {
                    activity.appLog.append("⚠️ 请输入捷安特账号和密码")
                    return@setPositiveButton
                }
                activity.prefs.saveGiantAccount(account)
                activity.appLog.append("🔐 捷安特直接登录中...")
                activity.lifecycleScope.launch(Dispatchers.IO) {
                    val result = activity.giantApi.login(account, password)
                    activity.runOnUiThread {
                        if (result != null) {
                            activity.prefs.saveGiantToken(result.token)
                            activity.prefs.saveUsername(DataSource.GIANT, result.nickname)
                            activity.appLog.append("✅ 捷安特登录成功")
                            fetchUsernameAfterLogin(DataSource.GIANT)
                        } else {
                            activity.appLog.append("❌ 捷安特登录失败：账号或密码错误，请重新输入")
                        }
                        activity.loginFragment.updateStatus()
                        try { activity.settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.8.4: MyWhoosh 直接登录——账号密码原生表单直调 MyWhooshApi（纯API，仅下载源） */

    internal fun openMywhooshLogin() {
        val layout = android.widget.LinearLayout(activity).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val accountInput = android.widget.EditText(activity).apply {
            hint = "MyWhoosh 账号（邮箱）"
            inputType = android.text.InputType.TYPE_CLASS_TEXT
            setText(activity.prefs.getMywhooshAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(activity).apply {
            hint = "MyWhoosh 密码"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(accountInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(activity)
            .setTitle("登录 MyWhoosh")
            .setMessage("账号密码直接登录，MyWhoosh 作为数据源（仅下载，不支持上传）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val account = accountInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (account.isEmpty() || password.isEmpty()) {
                    activity.appLog.append("⚠️ 请输入 MyWhoosh 账号和密码")
                    return@setPositiveButton
                }
                activity.prefs.saveMywhooshAccount(account)
                activity.appLog.append("🔐 MyWhoosh直接登录中...")
                activity.lifecycleScope.launch(Dispatchers.IO) {
                    val result = activity.mywhooshApi.login(account, password)
                    activity.runOnUiThread {
                        if (result != null) {
                            activity.prefs.saveMywhooshToken(result.token)
                            activity.prefs.saveMywhooshWhooshId(result.whooshId)
                            activity.prefs.saveMywhooshRefreshToken(result.refreshToken)
                            activity.appLog.append("✅ MyWhoosh登录成功")
                            fetchUsernameAfterLogin(DataSource.MYWHOOSH)
                        } else {
                            activity.appLog.append("❌ MyWhoosh登录失败：账号或密码错误，请重新输入")
                        }
                        activity.loginFragment.updateStatus()
                        try { activity.settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.8.4: Zwift 直接登录——账号密码原生表单直调 ZwiftApi（纯API，仅下载源） */

    internal fun openZwiftLogin() {
        val layout = android.widget.LinearLayout(activity).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val accountInput = android.widget.EditText(activity).apply {
            hint = "Zwift 账号（邮箱）"
            inputType = android.text.InputType.TYPE_CLASS_TEXT
            setText(activity.prefs.getZwiftAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(activity).apply {
            hint = "Zwift 密码"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(accountInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(activity)
            .setTitle("登录 Zwift")
            .setMessage("账号密码直接登录，Zwift 作为数据源（仅下载，不支持上传）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val account = accountInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (account.isEmpty() || password.isEmpty()) {
                    activity.appLog.append("⚠️ 请输入 Zwift 账号和密码")
                    return@setPositiveButton
                }
                activity.prefs.saveZwiftAccount(account)
                activity.appLog.append("🔐 Zwift直接登录中...")
                activity.lifecycleScope.launch(Dispatchers.IO) {
                    val result = activity.zwiftApi.login(account, password)
                    activity.runOnUiThread {
                        if (result != null) {
                            activity.prefs.saveZwiftToken(result.token)
                            activity.prefs.saveZwiftRefreshToken(result.refreshToken)
                            // 解析 playerId 供活动列表使用
                            activity.lifecycleScope.launch(Dispatchers.IO) {
                                val pid = activity.zwiftApi.getProfileId(result.token)
                                activity.runOnUiThread {
                                    if (!pid.isNullOrBlank()) activity.prefs.saveZwiftPlayerId(pid)
                                    activity.appLog.append("✅ Zwift登录成功")
                                    fetchUsernameAfterLogin(DataSource.ZWIFT)
                                    activity.loginFragment.updateStatus()
                                    try { activity.settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                                }
                            }
                        } else {
                            activity.appLog.append("❌ Zwift登录失败：账号或密码错误，请重新输入")
                            activity.loginFragment.updateStatus()
                            try { activity.settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                        }
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.9.2: Keep 直接登录——手机号密码原生表单直调 KeepApi（纯API，仅下载源；上传走 Keep App 半自动导入） */

    internal fun openKeepLogin() {
        val layout = android.widget.LinearLayout(activity).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val accountInput = android.widget.EditText(activity).apply {
            hint = "Keep 手机号"
            inputType = android.text.InputType.TYPE_CLASS_PHONE
            setText(activity.prefs.getKeepAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(activity).apply {
            hint = "Keep 密码"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(accountInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(activity)
            .setTitle("登录 Keep")
            .setMessage("手机号密码直接登录，Keep 作为数据源（下载运动记录）；上传 Keep 需在 Keep App 内手动导入（运动→数据同步→运动数据文件去导入）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val account = accountInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (account.isEmpty() || password.isEmpty()) {
                    activity.appLog.append("⚠️ 请输入 Keep 手机号和密码")
                    return@setPositiveButton
                }
                activity.prefs.saveKeepAccount(account)
                activity.appLog.append("🔐 Keep直接登录中...")
                activity.lifecycleScope.launch(Dispatchers.IO) {
                    val result = activity.keepApi.login(account, password)
                    activity.runOnUiThread {
                        if (result != null) {
                            activity.prefs.saveKeepToken(result.token)
                            activity.appLog.append("✅ Keep登录成功")
                            fetchUsernameAfterLogin(DataSource.KEEP)
                        } else {
                            activity.appLog.append("❌ Keep登录失败：账号或密码错误，请重新输入")
                        }
                        activity.loginFragment.updateStatus()
                        try { activity.settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.9.5: 咕咚直接登录——手机号+密码（纯API，仅下载源） */

    internal fun openCodoonLogin() {
        val layout = android.widget.LinearLayout(activity).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val accountInput = android.widget.EditText(activity).apply {
            hint = "咕咚 手机号"
            inputType = android.text.InputType.TYPE_CLASS_PHONE
            setText(activity.prefs.getCodoonAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(activity).apply {
            hint = "咕咚 密码"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(accountInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(activity)
            .setTitle("登录 咕咚")
            .setMessage("手机号密码直接登录，咕咚作为数据源（下载运动记录）；咕咚官方无开放上传API，暂不支持上传到咕咚")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val account = accountInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (account.isEmpty() || password.isEmpty()) {
                    activity.appLog.append("⚠️ 请输入咕咚手机号和密码")
                    return@setPositiveButton
                }
                activity.prefs.saveCodoonAccount(account)
                activity.prefs.saveCodoonPassword(password)
                activity.appLog.append("🔐 咕咚直接登录中...")
                activity.lifecycleScope.launch(Dispatchers.IO) {
                    val result = activity.codoonApi.login(account, password)
                    activity.runOnUiThread {
                        if (result != null) {
                            activity.prefs.saveCodoonToken(result.token)
                            activity.prefs.saveCodoonUserId(result.userId)
                            activity.appLog.append("✅ 咕咚登录成功")
                            fetchUsernameAfterLogin(DataSource.CODOON)
                        } else {
                            activity.appLog.append("❌ 咕咚登录失败：账号或密码错误，请重新输入")
                        }
                        activity.loginFragment.updateStatus()
                        try { activity.settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.9.5: Zepp（华米）直接登录——邮箱/手机号+密码（纯API，仅下载源） */

    internal fun openZeppLogin() {
        val layout = android.widget.LinearLayout(activity).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val accountInput = android.widget.EditText(activity).apply {
            hint = "Zepp 邮箱或手机号"
            inputType = android.text.InputType.TYPE_CLASS_TEXT
            setText(activity.prefs.getZeppAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(activity).apply {
            hint = "Zepp 密码"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(accountInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(activity)
            .setTitle("登录 Zepp")
            .setMessage("使用 Zepp/小米运动 App 账号邮箱或手机号密码直接登录，Zepp 作为数据源（下载运动记录）；华米无官方开放上传API，暂不支持上传到 Zepp")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val account = accountInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (account.isEmpty() || password.isEmpty()) {
                    activity.appLog.append("⚠️ 请输入 Zepp 邮箱/手机号和密码")
                    return@setPositiveButton
                }
                activity.prefs.saveZeppAccount(account)
                // v8.0.1: 登录节流——华米对连续登录风控严格(429)，10 秒内禁止重复提交
                val now = System.currentTimeMillis()
                if (now - activity.lastZeppLoginAttempt < 10_000) {
                    activity.appLog.append("⚠️ Zepp 登录过于频繁，请稍等 10 秒再试（避免触发华米风控）")
                    return@setPositiveButton
                }
                activity.lastZeppLoginAttempt = now
                activity.appLog.append("🔐 Zepp直接登录中...")
                activity.lifecycleScope.launch(Dispatchers.IO) {
                    val result = activity.zeppApi.login(account, password)
                    activity.runOnUiThread {
                        if (result != null && result.appToken.isNotBlank()) {
                            activity.prefs.saveZeppToken(result.appToken)
                            activity.prefs.saveZeppUserId(result.userId)
                            activity.appLog.append("✅ Zepp登录成功")
                            fetchUsernameAfterLogin(DataSource.ZEPP)
                        } else {
                            // v8.0.1: 区分风控(429)与密码错误，不再一律提示"账号或密码错误"
                            activity.appLog.append("❌ Zepp登录失败：${result?.error ?: "账号或密码错误，请重新输入"}")
                        }
                        activity.loginFragment.updateStatus()
                        try { activity.settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.9.6: Komoot 直接登录——邮箱+密码（纯API Basic认证，双向：下载+上传） */

    internal fun openKomootLogin() {
        val layout = android.widget.LinearLayout(activity).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val emailInput = android.widget.EditText(activity).apply {
            hint = "Komoot 邮箱"
            inputType = android.text.InputType.TYPE_TEXT_VARIATION_EMAIL_ADDRESS
            setText(activity.prefs.getKomootAccount() ?: "")
        }
        val passwordInput = android.widget.EditText(activity).apply {
            hint = "Komoot 密码"
            inputType = android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            transformationMethod = android.text.method.PasswordTransformationMethod.getInstance()
        }
        layout.addView(emailInput)
        layout.addView(passwordInput)

        androidx.appcompat.app.AlertDialog.Builder(activity)
            .setTitle("登录 Komoot")
            .setMessage("使用 Komoot 官网注册账号的邮箱密码直接登录，Komoot 作为数据源和上传目标（双向同步）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val email = emailInput.text.toString().trim()
                val password = passwordInput.text.toString()
                if (email.isEmpty() || password.isEmpty()) {
                    activity.appLog.append("⚠️ 请输入 Komoot 邮箱和密码")
                    return@setPositiveButton
                }
                activity.prefs.saveKomootAccount(email)
                activity.appLog.append("🔐 Komoot直接登录中...")
                activity.lifecycleScope.launch(Dispatchers.IO) {
                    val result = activity.komootApi.login(email, password)
                    activity.runOnUiThread {
                        if (result != null) {
                            activity.prefs.saveKomootToken(result.token)
                            activity.prefs.saveUsername(DataSource.KOMOT, result.username)
                            activity.appLog.append("✅ Komoot登录成功")
                            fetchUsernameAfterLogin(DataSource.KOMOT)
                        } else {
                            activity.appLog.append("❌ Komoot登录失败：邮箱或密码错误，请重新输入")
                        }
                        activity.loginFragment.updateStatus()
                        try { activity.settingsFragment?.refreshLoginState() } catch (_: Exception) {}
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
            (!activity.prefs.getSuuntoClientId().isNullOrEmpty() && !activity.prefs.getSuuntoClientSecret().isNullOrEmpty() && !activity.prefs.getSuuntoSubscriptionKey().isNullOrEmpty())
        if (!hasCreds) {
            // 首次：填三凭证
            val layout = android.widget.LinearLayout(activity).apply {
                orientation = android.widget.LinearLayout.VERTICAL
                setPadding(48, 24, 48, 24)
            }
            val clientIdInput = android.widget.EditText(activity).apply {
                hint = "Client ID"
                inputType = android.text.InputType.TYPE_CLASS_TEXT
                setText(activity.prefs.getSuuntoClientId() ?: "")
            }
            val clientSecretInput = android.widget.EditText(activity).apply {
                hint = "Client Secret"
                inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD
                setText(activity.prefs.getSuuntoClientSecret() ?: "")
            }
            val subKeyInput = android.widget.EditText(activity).apply {
                hint = "Subscription Key"
                inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD
                setText(activity.prefs.getSuuntoSubscriptionKey() ?: "")
            }
            layout.addView(clientIdInput)
            layout.addView(clientSecretInput)
            layout.addView(subKeyInput)

            androidx.appcompat.app.AlertDialog.Builder(activity)
                .setTitle("松拓开发者凭证")
                .setMessage("在 apizone.suunto.com 免费注册开发者应用（个人申请约3-4周审批），到应用详情页复制 Client ID / Client Secret / Subscription Key 三凭证（仅首次填写，仅存本机）")
                .setView(layout)
                .setPositiveButton("下一步") { _, _ ->
                    val cid = clientIdInput.text.toString().trim()
                    val cs = clientSecretInput.text.toString().trim()
                    val sk = subKeyInput.text.toString().trim()
                    if (cid.isEmpty() || cs.isEmpty() || sk.isEmpty()) {
                        activity.appLog.append("⚠️ 请完整填写松拓三个凭证")
                        return@setPositiveButton
                    }
                    activity.prefs.saveSuuntoClientId(cid)
                    activity.prefs.saveSuuntoClientSecret(cs)
                    activity.prefs.saveSuuntoSubscriptionKey(sk)
                    launchSuuntoWebAuth(cid)
                }
                .setNegativeButton("取消", null)
                .show()
        } else {
            val cid = if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured())
                com.jichi.ob.api.SuuntoApi.BUILTIN_CLIENT_ID else activity.prefs.getSuuntoClientId()!!
            launchSuuntoWebAuth(cid)
        }
    }

    private fun launchSuuntoWebAuth(clientId: String) {
        activity.appLog.append("🔐 打开松拓授权页...")
        activity.openLogin(LoginWebActivity.TYPE_SUUNTO, activity.suuntoApi.authorizeUrl(clientId))
    }

    /** v7.8.5: Intervals.icu 直接登录——粘贴个人 API Key（纯API，仅上传目标） */

    internal fun openIntervalsIcuLogin() {
        val layout = android.widget.LinearLayout(activity).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }
        val keyInput = android.widget.EditText(activity).apply {
            hint = "Intervals.icu API Key"
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD
            setText(activity.prefs.getIntervalsIcuKey() ?: "")
        }
        layout.addView(keyInput)

        androidx.appcompat.app.AlertDialog.Builder(activity)
            .setTitle("登录 Intervals.icu")
            .setMessage("在 intervals.icu 设置页底部复制你的 API Key 粘贴到这里（仅用于上传同步，Key 仅保存在本机）")
            .setView(layout)
            .setPositiveButton("登录") { _, _ ->
                val apiKey = keyInput.text.toString().trim()
                if (apiKey.isEmpty()) {
                    activity.appLog.append("⚠️ 请输入 Intervals.icu API Key")
                    return@setPositiveButton
                }
                activity.prefs.saveIntervalsIcuKey(apiKey)
                activity.appLog.append("🔐 Intervals.icu 校验 API Key 中...")
                activity.lifecycleScope.launch(Dispatchers.IO) {
                    val ok = activity.intervalsIcuApi.validateKey(apiKey)
                    activity.runOnUiThread {
                        if (ok) {
                            activity.prefs.saveUsername(DataSource.INTERVALS_ICU, "Intervals.icu用户")
                            activity.appLog.append("✅ Intervals.icu API Key 有效，登录成功")
                            fetchUsernameAfterLogin(DataSource.INTERVALS_ICU)
                        } else {
                            activity.prefs.clearCredential(DataSource.INTERVALS_ICU)
                            activity.appLog.append("❌ Intervals.icu API Key 无效或网络异常，请重新输入")
                        }
                        activity.loginFragment.updateStatus()
                        try { activity.settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                    }
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.2.0: Wahoo配置对话框（保留，用于用户自配置凭证） */

    private fun openWahooConfigDialog() {
        val savedId = activity.prefs.getWahooClientId() ?: ""
        val savedSecret = activity.prefs.getWahooClientSecret() ?: ""

        val layout = android.widget.LinearLayout(activity).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 24, 48, 24)
        }

        val etId = android.widget.EditText(activity).apply {
            hint = "Client ID"
            setText(savedId)
            inputType = android.text.InputType.TYPE_CLASS_TEXT
        }
        val etSecret = android.widget.EditText(activity).apply {
            hint = "Client Secret"
            setText(savedSecret)
            inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
        }
        val tvTutorial = android.widget.TextView(activity).apply {
            text = "申请沙箱教程：\n1. 打开 developers.wahooligan.com/applications\n2. 注册/登录后点击 New Application\n3. 填写名称，Redirect URI 填 http://localhost:8080\n4. Scopes 勾选 user_read、workouts_read、offline_data\n5. 提交后复制 Client ID 和 Client Secret 填入上方\n（沙箱免费，审核通过后即可使用）"
            textSize = 11f
            setTextColor(0xFF888888.toInt())
            setPadding(0, 24, 0, 0)
        }

        layout.addView(etId)
        layout.addView(etSecret)
        layout.addView(tvTutorial)

        androidx.appcompat.app.AlertDialog.Builder(activity)
            .setTitle("Wahoo 开发者凭证配置")
            .setView(layout)
            .setPositiveButton("保存并登录") { _, _ ->
                val id = etId.text.toString().trim()
                val secret = etSecret.text.toString().trim()
                if (id.isEmpty() || secret.isEmpty()) {
                    android.widget.Toast.makeText(activity, "请填写 Client ID 和 Client Secret", android.widget.Toast.LENGTH_SHORT).show()
                    return@setPositiveButton
                }
                activity.prefs.saveWahooClientId(id)
                activity.prefs.saveWahooClientSecret(secret)
                activity.openLogin(LoginWebActivity.TYPE_WAHOO, activity.wahooApi.authorizeUrl(id))
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /**
     * v8.2.2: 启动轻量登录检测——只做本地凭证校验（不发网络请求），
     * 避免启动即撞平台风控；网络级检测由登录页"一键检测"触发 checkAllLogins。
     */
    /** v8.2.3: 平台统计 + 平台日志写入（IO 线程调用；type: dl下载/ok上传成功/skip跳过/err失败） */

    internal fun suuntoSubscriptionKey(): String? =
        if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured())
            com.jichi.ob.api.SuuntoApi.BUILTIN_SUBSCRIPTION_KEY
        else activity.prefs.getSuuntoSubscriptionKey()

    internal fun fetchUsernameAfterLogin(ds: DataSource) {
        // v8.2.5: 所有平台登录成功的统一入口——立即从失效清单移除该平台并刷新登录卡片（此前需手动点"检测"才恢复红标）
        if (activity.lastInvalidPlatforms.isNotEmpty() && activity.lastInvalidPlatforms.contains(ds)) {
            activity.lastInvalidPlatforms = activity.lastInvalidPlatforms.filter { it != ds }
            activity.runOnUiThread { try { activity.loginFragment.updateStatus() } catch (_: Exception) {} }
        }
        activity.lifecycleScope.launch(Dispatchers.IO) {
            val cred = activity.prefs.getCredential(ds) ?: return@launch
            val name = when (ds) {
                DataSource.IGPSPORT -> activity.igpsportApi.getUsername(cred)
                DataSource.XINGZHE -> activity.xingzheApi.getUsername(cred)
                DataSource.MAGENE -> activity.mageneApi.getUsername(cred)
                DataSource.BLACKBIRD -> activity.blackbirdApi.getUsername(cred)
                DataSource.BRYTON -> activity.brytonApi.getUsername(cred)
                DataSource.GIANT -> activity.giantApi.getUsername(cred)
                DataSource.OUTBASE -> activity.outbaseApi.getUsername(cred)
                // v6.7.2: 佳明displayName是UUID(用户ID)，不获取不显示，直接已登录
                DataSource.GARMIN_COM -> null
                DataSource.GARMIN_CN -> null
                DataSource.COROS_CN -> activity.corosApi.getUsername(cred)
                DataSource.COROS_INT -> activity.corosApi.getUsername(cred)
                DataSource.WAHOO -> activity.wahooApi.getUsername(cred)
                DataSource.MYWHOOSH -> activity.mywhooshApi.getUsername(cred)
                DataSource.ZWIFT -> {
                    val u = activity.zwiftApi.getUsername(cred)
                    if (u != null && activity.zwiftApi.isTrialAccount(cred)) {
                        activity.appLog.append("⚠️ Zwift 为试用订阅账号：可查看活动列表，但 Zwift 不提供 FIT 文件下载，需升级会员")
                    }
                    u
                }
                DataSource.INTERVALS_ICU -> "Intervals.icu用户"
                DataSource.KEEP -> activity.keepApi.getUsername(cred)
                DataSource.CODOON -> activity.codoonApi.getUsername(cred, activity.prefs.getCodoonUserId())
                DataSource.ZEPP -> activity.zeppApi.getUsername(cred)
                DataSource.KOMOT -> {
                    val email = activity.prefs.getKomootAccount()
                    if (email.isNullOrEmpty()) null else activity.komootApi.getUsername(email, cred)
                }
                DataSource.SUUNTO -> activity.suuntoApi.getUsername(cred, suuntoSubscriptionKey() ?: "")
                DataSource.TWO_BULU -> "两步路用户"
                DataSource.STRAVA -> "Strava用户"
                DataSource.POLAR -> "Polar用户"
                DataSource.FITBIT -> "Fitbit用户"
                DataSource.WITHINGS -> "Withings用户"
                DataSource.TRAININGPEAKS -> "TrainingPeaks用户"
            }
            if (name != null) {
                activity.prefs.saveUsername(ds, name)
                activity.appLog.append("👤 ${ds.displayName}用户: $name")
                activity.runOnUiThread { activity.loginFragment.updateStatus() }
            }
            // v8.2.3.4: 登录成功后询问是否预拉取最近运动记录（用户可暂不；后台执行不卡登录）
            activity.runOnUiThread {
                try {
                    if (!activity.isFinishing && !activity.isDestroyed) {
                        androidx.appcompat.app.AlertDialog.Builder(activity)
                            .setTitle("拉取最近运动记录？")
                            .setMessage("已登录 ${ds.displayName}。是否立即拉取最近运动记录到记录中心？\n（后台执行不影响使用；也可在批量同步时自动写入缓存）")
                            .setPositiveButton("立即拉取") { _, _ -> activity.syncCoordinator.preloadRecent(ds) }
                            .setNegativeButton("暂不", null)
                            .show()
                    }
                } catch (_: Exception) {}
            }
        }
    }

    /** v8.2.3.10: 时间归一——秒→毫秒；startTimeMs 无效时用时间字符串解析兜底；再归一次秒→毫秒 */

    internal fun handleLoginResult(resultCode: Int, data: Intent?) {
        try {
            if (resultCode == Activity.RESULT_OK && data != null) {
                val type = data.getStringExtra(LoginWebActivity.RESULT_LOGIN_TYPE) ?: ""
                val token = data.getStringExtra(LoginWebActivity.RESULT_TOKEN) ?: ""
                val sid = data.getStringExtra(LoginWebActivity.RESULT_SESSION_ID) ?: ""
                val extra = data.getStringExtra(LoginWebActivity.RESULT_EXTRA) ?: ""
                when (type) {
                    LoginWebActivity.TYPE_IGPSPORT -> if (token.length > 20) {
                        activity.prefs.saveIgpsportToken(token); activity.appLog.append("✅ iGPSPORT登录成功"); fetchUsernameAfterLogin(DataSource.IGPSPORT)
                    }
                    LoginWebActivity.TYPE_XINGZHE -> if (sid.length > 10) {
                        activity.prefs.saveXingzheSessionId(sid)
                        if (extra.isNotEmpty()) activity.prefs.saveXingzheCsrf(extra)
                        activity.appLog.append("✅ 行者登录成功"); fetchUsernameAfterLogin(DataSource.XINGZHE)
                    }
                    LoginWebActivity.TYPE_MAGENE -> if (token.length > 20) {
                        activity.prefs.saveMageneToken(token)
                        if (extra.isNotEmpty()) activity.prefs.saveMageneRefreshToken(extra)
                        activity.appLog.append("✅ 迈金登录成功"); fetchUsernameAfterLogin(DataSource.MAGENE)
                    }
                    LoginWebActivity.TYPE_BLACKBIRD -> if (sid.length > 5) {
                        activity.prefs.saveBlackbirdCookie(sid); activity.appLog.append("✅ 黑鸟单车登录成功(cookie ${sid.length}字节)"); fetchUsernameAfterLogin(DataSource.BLACKBIRD)
                    } else activity.appLog.append("⚠️ 黑鸟单车cookie异常，请重新登录")
                    LoginWebActivity.TYPE_BRYTON -> {
                        // v6.2.4: 百锐腾凭证格式 token;userId;cookie（Meteor登录态在localStorage）
                        val parts = sid.split(";")
                        val tok = parts.getOrNull(0) ?: ""
                        val uid = parts.getOrNull(1) ?: ""
                        val ck = parts.drop(2).joinToString(";")
                        if (tok.length > 10 && uid.isNotEmpty()) {
                            activity.prefs.saveBrytonToken(tok); activity.prefs.saveBrytonUserId(uid); activity.prefs.saveBrytonCookie(ck)
                            activity.appLog.append("✅ 百锐腾登录成功(Meteor token ${tok.length}B, userId=$uid)")
                            fetchUsernameAfterLogin(DataSource.BRYTON)
                        } else if (ck.length > 5) {
                            activity.prefs.saveBrytonCookie(ck); activity.appLog.append("✅ 百锐腾登录成功(cookie ${ck.length}字节)")
                            fetchUsernameAfterLogin(DataSource.BRYTON)
                        } else activity.appLog.append("⚠️ 百锐腾cookie异常，请重新登录")
                    }
                    LoginWebActivity.TYPE_TWO_BULU -> if (sid.length > 10) {
                        activity.prefs.saveTwoBuluCookie(sid)
                        activity.appLog.append("✅ 两步路登录成功(cookie ${sid.length}字节)"); fetchUsernameAfterLogin(DataSource.TWO_BULU)
                    } else activity.appLog.append("⚠️ 两步路登录失败: cookie异常")
                    LoginWebActivity.TYPE_OUTBASE -> if (sid.length > 10) {
                        activity.prefs.saveOutbaseSessionId(sid)
                        activity.prefs.saveGatewayCookies(extra)
                        activity.appLog.append("✅ Outbase登录成功"); fetchUsernameAfterLogin(DataSource.OUTBASE)
                    }
                    LoginWebActivity.TYPE_GARMIN_COM -> if (token.length > 20) {
                        activity.prefs.saveGarminComToken(token)
                        activity.prefs.saveGarminComCookie("")
                        activity.appLog.append("✅ 佳明国际登录成功(mobile SSO+DI Token)"); fetchUsernameAfterLogin(DataSource.GARMIN_COM)
                        // v7.9.0: 佳明风控引导——已生成长期刷新凭证，提醒勿频繁重新登录
                        com.jichi.ob.util.GarminLoginHint.show(activity, "佳明国际")
                    } else activity.appLog.append("⚠️ 佳明国际登录失败: 未获取到token")
                    LoginWebActivity.TYPE_GARMIN_CN -> if (token.length > 20) {
                        activity.prefs.saveGarminCnToken(token)
                        activity.prefs.saveGarminCnCookie("")
                        activity.appLog.append("✅ 佳明中国登录成功(JWT_WEB+session)"); fetchUsernameAfterLogin(DataSource.GARMIN_CN)
                        // v7.9.0: 佳明风控引导——已生成长期刷新凭证，提醒勿频繁重新登录
                        com.jichi.ob.util.GarminLoginHint.show(activity, "佳明中国")
                    } else activity.appLog.append("⚠️ 佳明中国登录失败: 未获取到token")
                    LoginWebActivity.TYPE_COROS_CN -> if (sid.length > 10) {
                        activity.prefs.saveCorosCnToken(sid)
                        activity.appLog.append("✅ 高驰中国登录成功"); fetchUsernameAfterLogin(DataSource.COROS_CN)
                    } else activity.appLog.append("⚠️ 高驰中国登录失败: 未捕获到token")
                    LoginWebActivity.TYPE_COROS_INT -> if (sid.length > 10) {
                        activity.prefs.saveCorosIntToken(sid)
                        activity.appLog.append("✅ 高驰国际登录成功"); fetchUsernameAfterLogin(DataSource.COROS_INT)
                    } else activity.appLog.append("⚠️ 高驰国际登录失败: 未捕获到token")
                    LoginWebActivity.TYPE_WAHOO -> {
                        // v7.1.3: Wahoo 返回 OAuth2 授权码，优先用内置生产凭证，其次用用户配置的凭证
                        val clientId = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_ID else activity.prefs.getWahooClientId()
                        val clientSecret = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_SECRET else activity.prefs.getWahooClientSecret()
                        if (sid.length > 5 && !clientId.isNullOrEmpty() && !clientSecret.isNullOrEmpty()) {
                            val code = sid
                            activity.lifecycleScope.launch(Dispatchers.IO) {
                                val fresh = activity.wahooApi.exchangeToken(code, clientId, clientSecret)
                                activity.runOnUiThread {
                                    if (fresh != null) {
                                        activity.prefs.saveWahooToken(fresh.first)
                                        activity.prefs.saveWahooRefresh(fresh.second)
                                        activity.appLog.append("✅ Wahoo登录成功"); fetchUsernameAfterLogin(DataSource.WAHOO)
                                    } else activity.appLog.append("⚠️ Wahoo token换取失败")
                                    activity.loginFragment.updateStatus()
                                }
                            }
                        } else activity.appLog.append("⚠️ Wahoo登录失败: 未捕获到授权码或未配置凭证")
                    }
                    LoginWebActivity.TYPE_SUUNTO -> {
                        // v7.9.6: Suunto 返回 OAuth2 授权码 → 换 token（需三凭证）
                        val clientId = if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured()) com.jichi.ob.api.SuuntoApi.BUILTIN_CLIENT_ID else activity.prefs.getSuuntoClientId()
                        val clientSecret = if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured()) com.jichi.ob.api.SuuntoApi.BUILTIN_CLIENT_SECRET else activity.prefs.getSuuntoClientSecret()
                        val subKey = if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured()) com.jichi.ob.api.SuuntoApi.BUILTIN_SUBSCRIPTION_KEY else activity.prefs.getSuuntoSubscriptionKey()
                        if (sid.length > 5 && !clientId.isNullOrEmpty() && !clientSecret.isNullOrEmpty() && !subKey.isNullOrEmpty()) {
                            val code = sid
                            activity.lifecycleScope.launch(Dispatchers.IO) {
                                val fresh = activity.suuntoApi.exchangeCode(code, clientId, clientSecret, subKey)
                                activity.runOnUiThread {
                                    if (fresh != null) {
                                        activity.prefs.saveSuuntoToken(fresh.accessToken)
                                        activity.prefs.saveSuuntoRefresh(fresh.refreshToken)
                                        activity.appLog.append("✅ 松拓登录成功"); fetchUsernameAfterLogin(DataSource.SUUNTO)
                                    } else activity.appLog.append("⚠️ 松拓token换取失败")
                                    activity.loginFragment.updateStatus()
                                }
                            }
                        } else activity.appLog.append("⚠️ 松拓登录失败: 未捕获到授权码或未配置凭证")
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
                            activity.lifecycleScope.launch(Dispatchers.IO) {
                                val ok = activity.devOAuthApi.exchangeCode(ds, code)
                                activity.runOnUiThread {
                                    if (ok) {
                                        activity.appLog.append("✅ ${ds.displayName}登录成功"); fetchUsernameAfterLogin(ds)
                                    } else activity.appLog.append("⚠️ ${ds.displayName}token换取失败（请检查凭证与scope）")
                                    activity.loginFragment.updateStatus()
                                }
                            }
                        } else activity.appLog.append("⚠️ ${ds.displayName}登录失败: 未捕获到授权码")
                    }
                }
                activity.loginFragment.updateStatus()
                // v7.7.4: 登录成功后刷新设置页来源/目标网格，目标立即可选，无需重启App
                try { activity.settingsFragment?.refreshLoginState() } catch (_: Exception) {}
                // v8.2.5: 失效平台重登后清失效清单——已统一收敛到 fetchUsernameAfterLogin（所有平台登录成功公共入口）
            }
        } catch (e: Exception) {
            Log.e(TAG, "login result error", e)
        }
    }

}

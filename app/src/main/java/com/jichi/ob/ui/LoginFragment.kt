package com.jichi.ob.ui

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.google.android.material.button.MaterialButton
import com.jichi.ob.MainActivity
import com.jichi.ob.R
import com.jichi.ob.api.CorosApi
import com.jichi.ob.api.GarminApi
import com.jichi.ob.api.IgpsportApi
import com.jichi.ob.api.MageneApi
import com.jichi.ob.api.OutbaseApi
import com.jichi.ob.api.WahooApi
import com.jichi.ob.api.XingzheApi
import com.jichi.ob.api.BlackbirdApi
import com.jichi.ob.model.DataSource
import com.jichi.ob.util.PrefsManager
import android.widget.TextView
import android.widget.Toast

/**
 * v7.6.2: 四页面布局 - 页面1 登录页
 * 展示11个平台登录状态与登录按钮
 */
class LoginFragment : Fragment() {

    private lateinit var prefs: PrefsManager
    private val statusViews = mutableMapOf<DataSource, TextView>()
    private val btnViews = mutableMapOf<DataSource, MaterialButton>()
    private val logoutViews = mutableMapOf<DataSource, TextView>()  // v7.6.7: 注销按钮

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_login, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        prefs = PrefsManager(requireContext())

        statusViews[DataSource.IGPSPORT] = view.findViewById(R.id.tvIgpStatus)
        statusViews[DataSource.XINGZHE] = view.findViewById(R.id.tvXingzheStatus)
        statusViews[DataSource.MAGENE] = view.findViewById(R.id.tvMageneStatus)
        statusViews[DataSource.BLACKBIRD] = view.findViewById(R.id.tvBlackbirdStatus)
        statusViews[DataSource.GIANT] = view.findViewById(R.id.tvGiantStatus)
        statusViews[DataSource.OUTBASE] = view.findViewById(R.id.tvOutbaseStatus)
        statusViews[DataSource.GARMIN_COM] = view.findViewById(R.id.tvGarminComStatus)
        statusViews[DataSource.GARMIN_CN] = view.findViewById(R.id.tvGarminCnStatus)
        statusViews[DataSource.COROS_CN] = view.findViewById(R.id.tvCorosCnStatus)
        statusViews[DataSource.COROS_INT] = view.findViewById(R.id.tvCorosIntStatus)
        statusViews[DataSource.WAHOO] = view.findViewById(R.id.tvWahooStatus)
        statusViews[DataSource.MYWHOOSH] = view.findViewById(R.id.tvMywhooshStatus)
        statusViews[DataSource.ZWIFT] = view.findViewById(R.id.tvZwiftStatus)

        btnViews[DataSource.IGPSPORT] = view.findViewById(R.id.btnIgpLogin)
        btnViews[DataSource.XINGZHE] = view.findViewById(R.id.btnXingzheLogin)
        btnViews[DataSource.MAGENE] = view.findViewById(R.id.btnMageneLogin)
        btnViews[DataSource.BLACKBIRD] = view.findViewById(R.id.btnBlackbirdLogin)
        btnViews[DataSource.GIANT] = view.findViewById(R.id.btnGiantLogin)
        btnViews[DataSource.OUTBASE] = view.findViewById(R.id.btnOutbaseLogin)
        btnViews[DataSource.GARMIN_COM] = view.findViewById(R.id.btnGarminComLogin)
        btnViews[DataSource.GARMIN_CN] = view.findViewById(R.id.btnGarminCnLogin)
        btnViews[DataSource.COROS_CN] = view.findViewById(R.id.btnCorosCnLogin)
        btnViews[DataSource.COROS_INT] = view.findViewById(R.id.btnCorosIntLogin)
        btnViews[DataSource.WAHOO] = view.findViewById(R.id.btnWahooLogin)
        btnViews[DataSource.MYWHOOSH] = view.findViewById(R.id.btnMywhooshLogin)
        btnViews[DataSource.ZWIFT] = view.findViewById(R.id.btnZwiftLogin)

        // v7.6.7: 注销按钮（每个卡片头部右上角，仅登录后显示）
        logoutViews[DataSource.IGPSPORT] = view.findViewById(R.id.btnIgpLogout)
        logoutViews[DataSource.XINGZHE] = view.findViewById(R.id.btnXingzheLogout)
        logoutViews[DataSource.MAGENE] = view.findViewById(R.id.btnMageneLogout)
        logoutViews[DataSource.BLACKBIRD] = view.findViewById(R.id.btnBlackbirdLogout)
        logoutViews[DataSource.GIANT] = view.findViewById(R.id.btnGiantLogout)
        logoutViews[DataSource.OUTBASE] = view.findViewById(R.id.btnOutbaseLogout)
        logoutViews[DataSource.GARMIN_COM] = view.findViewById(R.id.btnGarminComLogout)
        logoutViews[DataSource.GARMIN_CN] = view.findViewById(R.id.btnGarminCnLogout)
        logoutViews[DataSource.COROS_CN] = view.findViewById(R.id.btnCorosCnLogout)
        logoutViews[DataSource.COROS_INT] = view.findViewById(R.id.btnCorosIntLogout)
        logoutViews[DataSource.WAHOO] = view.findViewById(R.id.btnWahooLogout)
        logoutViews[DataSource.MYWHOOSH] = view.findViewById(R.id.btnMywhooshLogout)
        logoutViews[DataSource.ZWIFT] = view.findViewById(R.id.btnZwiftLogout)

        // 注销点击 → 确认后清除凭证并刷新
        for ((ds, tv) in logoutViews) {
            tv.setOnClickListener {
                androidx.appcompat.app.AlertDialog.Builder(requireContext())
                    .setTitle("注销登录")
                    .setMessage("确定注销${ds.displayName}吗？注销后该平台将无法同步。")
                    .setPositiveButton("注销") { _, _ ->
                        prefs.clearCredential(ds)
                        // v7.7.3: 同时清除该平台WebView登录态(localStorage+cookie)，
                        // 避免"注销后重新登录仍用旧账号自动登录、看不到登录窗口"的问题
                        // v7.7.4: WebView登录类平台(除佳明/Wahoo)追加清空全部cookie，
                        // 覆盖HttpOnly登录态(如高驰CPL-coros-token)，确保注销后可切换账号
                        val wipeAll = ds != DataSource.GARMIN_COM && ds != DataSource.GARMIN_CN && ds != DataSource.WAHOO
                        LoginWebActivity.clearPlatformWebLogin(ds.toLoginType(), wipeAllCookies = wipeAll)
                        // 若该平台被选为来源/目标，同步记忆残留不影响，登录页刷新即可
                        updateStatus()
                        Toast.makeText(requireContext(), "已注销${ds.displayName}", Toast.LENGTH_SHORT).show()
                    }
                    .setNegativeButton("取消", null)
                    .show()
            }
        }

        // 登录按钮点击 → MainActivity处理
        btnViews[DataSource.IGPSPORT]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_IGPSPORT, IgpsportApi.LOGIN_URL) }
        btnViews[DataSource.XINGZHE]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_XINGZHE, XingzheApi.LOGIN_URL) }
        btnViews[DataSource.MAGENE]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_MAGENE, MageneApi.LOGIN_URL) }
        btnViews[DataSource.BLACKBIRD]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_BLACKBIRD, BlackbirdApi.LOGIN_URL) }
        btnViews[DataSource.GIANT]?.setOnClickListener { (activity as? MainActivity)?.openGiantLogin() }
        btnViews[DataSource.OUTBASE]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_OUTBASE, OutbaseApi.LOGIN_URL) }
        btnViews[DataSource.GARMIN_COM]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_GARMIN_COM, GarminApi.LOGIN_URL_COM) }
        btnViews[DataSource.GARMIN_CN]?.setOnClickListener { (activity as? MainActivity)?.openGarminCnLogin() }
        btnViews[DataSource.COROS_CN]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_COROS_CN, CorosApi.LOGIN_URL_CN) }
        btnViews[DataSource.COROS_INT]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_COROS_INT, CorosApi.LOGIN_URL_INT) }
        btnViews[DataSource.WAHOO]?.setOnClickListener { (activity as? MainActivity)?.openWahooLogin() }
        btnViews[DataSource.MYWHOOSH]?.setOnClickListener { (activity as? MainActivity)?.openMywhooshLogin() }
        btnViews[DataSource.ZWIFT]?.setOnClickListener { (activity as? MainActivity)?.openZwiftLogin() }

        // v7.6.7: fragment可见时刷新登录状态（登录返回/注销后自动同步）
        lifecycle.addObserver(object : androidx.lifecycle.LifecycleEventObserver {
            override fun onStateChanged(source: androidx.lifecycle.LifecycleOwner, event: androidx.lifecycle.Lifecycle.Event) {
                if (event == androidx.lifecycle.Lifecycle.Event.ON_RESUME) updateStatus()
            }
        })

        updateStatus()
    }

    /** v7.6.2: 从prefs刷新所有平台登录状态（替代原MainActivity.updateStatusUI） */
    fun updateStatus() {
        val ctx = requireContext()
        for ((ds, tv) in statusViews) {
            val logged = prefs.isLoggedIn(ds)
            val username = prefs.getUsername(ds)
            // 佳明displayName是UUID(用户ID)，不显示
            val hideUsername = ds == DataSource.GARMIN_CN || ds == DataSource.GARMIN_COM
            tv.text = if (logged) {
                if (username != null && !hideUsername) "✅ $username" else "✅ 已登录"
            } else "未登录"
            tv.setTextColor(ctx.getColor(if (logged) R.color.green else R.color.text_secondary))
            val btn = btnViews[ds] ?: continue
            btn.text = if (logged) "重新登录" else "登录${ds.displayName}"
            // v7.6.7: 注销按钮仅登录后显示
            logoutViews[ds]?.visibility = if (logged) View.VISIBLE else View.GONE
        }
    }

    /** v7.7.3: DataSource → LoginWebActivity登录类型映射（注销清WebView登录态用） */
    private fun DataSource.toLoginType(): String = when (this) {
        DataSource.IGPSPORT -> LoginWebActivity.TYPE_IGPSPORT
        DataSource.XINGZHE -> LoginWebActivity.TYPE_XINGZHE
        DataSource.MAGENE -> LoginWebActivity.TYPE_MAGENE
        DataSource.BLACKBIRD -> LoginWebActivity.TYPE_BLACKBIRD
        DataSource.BRYTON -> LoginWebActivity.TYPE_BRYTON
        DataSource.GIANT -> "giant"   // 捷安特无WebView登录态，注销清理直接跳过
        DataSource.OUTBASE -> LoginWebActivity.TYPE_OUTBASE
        DataSource.GARMIN_COM -> LoginWebActivity.TYPE_GARMIN_COM
        DataSource.GARMIN_CN -> LoginWebActivity.TYPE_GARMIN_CN
        DataSource.COROS_CN -> LoginWebActivity.TYPE_COROS_CN
        DataSource.COROS_INT -> LoginWebActivity.TYPE_COROS_INT
        DataSource.WAHOO -> LoginWebActivity.TYPE_WAHOO
        DataSource.MYWHOOSH -> "mywhoosh"  // 纯API登录，无WebView登录态，注销清理直接跳过
        DataSource.ZWIFT -> "zwift"        // 纯API登录，无WebView登录态，注销清理直接跳过
    }
}

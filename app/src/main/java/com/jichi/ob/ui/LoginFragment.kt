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
import com.jichi.ob.api.BrytonApi
import com.jichi.ob.model.DataSource
import com.jichi.ob.util.PrefsManager
import android.widget.TextView

/**
 * v7.6.2: 四页面布局 - 页面1 登录页
 * 展示11个平台登录状态与登录按钮
 */
class LoginFragment : Fragment() {

    private lateinit var prefs: PrefsManager
    private val statusViews = mutableMapOf<DataSource, TextView>()
    private val btnViews = mutableMapOf<DataSource, MaterialButton>()

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
        statusViews[DataSource.BRYTON] = view.findViewById(R.id.tvBrytonStatus)
        statusViews[DataSource.OUTBASE] = view.findViewById(R.id.tvOutbaseStatus)
        statusViews[DataSource.GARMIN_COM] = view.findViewById(R.id.tvGarminComStatus)
        statusViews[DataSource.GARMIN_CN] = view.findViewById(R.id.tvGarminCnStatus)
        statusViews[DataSource.COROS_CN] = view.findViewById(R.id.tvCorosCnStatus)
        statusViews[DataSource.COROS_INT] = view.findViewById(R.id.tvCorosIntStatus)
        statusViews[DataSource.WAHOO] = view.findViewById(R.id.tvWahooStatus)

        btnViews[DataSource.IGPSPORT] = view.findViewById(R.id.btnIgpLogin)
        btnViews[DataSource.XINGZHE] = view.findViewById(R.id.btnXingzheLogin)
        btnViews[DataSource.MAGENE] = view.findViewById(R.id.btnMageneLogin)
        btnViews[DataSource.BLACKBIRD] = view.findViewById(R.id.btnBlackbirdLogin)
        btnViews[DataSource.BRYTON] = view.findViewById(R.id.btnBrytonLogin)
        btnViews[DataSource.OUTBASE] = view.findViewById(R.id.btnOutbaseLogin)
        btnViews[DataSource.GARMIN_COM] = view.findViewById(R.id.btnGarminComLogin)
        btnViews[DataSource.GARMIN_CN] = view.findViewById(R.id.btnGarminCnLogin)
        btnViews[DataSource.COROS_CN] = view.findViewById(R.id.btnCorosCnLogin)
        btnViews[DataSource.COROS_INT] = view.findViewById(R.id.btnCorosIntLogin)
        btnViews[DataSource.WAHOO] = view.findViewById(R.id.btnWahooLogin)

        // 登录按钮点击 → MainActivity处理
        btnViews[DataSource.IGPSPORT]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_IGPSPORT, IgpsportApi.LOGIN_URL) }
        btnViews[DataSource.XINGZHE]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_XINGZHE, XingzheApi.LOGIN_URL) }
        btnViews[DataSource.MAGENE]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_MAGENE, MageneApi.LOGIN_URL) }
        btnViews[DataSource.BLACKBIRD]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_BLACKBIRD, BlackbirdApi.LOGIN_URL) }
        btnViews[DataSource.BRYTON]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_BRYTON, BrytonApi.LOGIN_URL) }
        btnViews[DataSource.OUTBASE]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_OUTBASE, OutbaseApi.LOGIN_URL) }
        btnViews[DataSource.GARMIN_COM]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_GARMIN_COM, GarminApi.LOGIN_URL_COM) }
        btnViews[DataSource.GARMIN_CN]?.setOnClickListener { (activity as? MainActivity)?.openGarminCnLogin() }
        btnViews[DataSource.COROS_CN]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_COROS_CN, CorosApi.LOGIN_URL_CN) }
        btnViews[DataSource.COROS_INT]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_COROS_INT, CorosApi.LOGIN_URL_INT) }
        btnViews[DataSource.WAHOO]?.setOnClickListener { (activity as? MainActivity)?.openWahooLogin() }

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
            } else "❌ 未登录"
            tv.setTextColor(ctx.getColor(if (logged) R.color.green else R.color.red))
            val btn = btnViews[ds] ?: continue
            btn.text = if (logged) "重新登录" else "登录${ds.displayName}"
        }
    }
}

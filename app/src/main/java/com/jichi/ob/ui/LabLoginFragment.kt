package com.jichi.ob.ui

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.fragment.app.Fragment
import com.google.android.material.button.MaterialButton
import com.jichi.ob.MainActivity
import com.jichi.ob.R
import com.jichi.ob.api.BrytonApi
import com.jichi.ob.model.DataSource
import com.jichi.ob.util.PrefsManager

/**
 * v8.2.1: 实验室登录页（独立页面，可返回）
 * 从关于页"实验室"横条进入；松拓/Zepp/百锐腾三个实验平台在此登录/注销，
 * 登录后设置页才显示对应平台按钮（未登录隐藏）。
 */
class LabLoginFragment : Fragment() {

    private lateinit var prefs: PrefsManager
    private val statusViews = mutableMapOf<DataSource, TextView>()
    private val btnViews = mutableMapOf<DataSource, MaterialButton>()
    private val logoutViews = mutableMapOf<DataSource, TextView>()

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_lab_login, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        prefs = PrefsManager(requireContext())

        view.findViewById<MaterialButton>(R.id.btnLabBack)?.setOnClickListener {
            try { (activity as? MainActivity)?.closeLabLogin() } catch (_: Exception) {}
        }

        statusViews[DataSource.SUUNTO] = view.findViewById(R.id.tvSuuntoLabStatus)
        statusViews[DataSource.ZEPP] = view.findViewById(R.id.tvZeppLabStatus)
        statusViews[DataSource.BRYTON] = view.findViewById(R.id.tvBrytonLabStatus)
        btnViews[DataSource.SUUNTO] = view.findViewById(R.id.btnSuuntoLabLogin)
        btnViews[DataSource.ZEPP] = view.findViewById(R.id.btnZeppLabLogin)
        btnViews[DataSource.BRYTON] = view.findViewById(R.id.btnBrytonLabLogin)
        logoutViews[DataSource.SUUNTO] = view.findViewById(R.id.btnSuuntoLabLogout)
        logoutViews[DataSource.ZEPP] = view.findViewById(R.id.btnZeppLabLogout)
        logoutViews[DataSource.BRYTON] = view.findViewById(R.id.btnBrytonLabLogout)

        btnViews[DataSource.SUUNTO]?.setOnClickListener { (activity as? MainActivity)?.openSuuntoLogin() }
        btnViews[DataSource.ZEPP]?.setOnClickListener { (activity as? MainActivity)?.openZeppLogin() }
        btnViews[DataSource.BRYTON]?.setOnClickListener { (activity as? MainActivity)?.openLogin(LoginWebActivity.TYPE_BRYTON, BrytonApi.LOGIN_URL) }

        logoutViews[DataSource.SUUNTO]?.setOnClickListener { logout(DataSource.SUUNTO) }
        logoutViews[DataSource.ZEPP]?.setOnClickListener { logout(DataSource.ZEPP) }
        logoutViews[DataSource.BRYTON]?.setOnClickListener { logout(DataSource.BRYTON) }

        // 返回实验室页时刷新登录状态（登录/注销完成后自动同步）
        lifecycle.addObserver(object : androidx.lifecycle.LifecycleEventObserver {
            override fun onStateChanged(source: androidx.lifecycle.LifecycleOwner, event: androidx.lifecycle.Lifecycle.Event) {
                if (event == androidx.lifecycle.Lifecycle.Event.ON_RESUME) refreshStates()
            }
        })
        refreshStates()
    }

    fun refreshStates() {
        for (ds in listOf(DataSource.SUUNTO, DataSource.ZEPP, DataSource.BRYTON)) {
            val logged = prefs.isLoggedIn(ds)
            statusViews[ds]?.text = if (logged) "✅ 已登录" else "未登录"
            statusViews[ds]?.setTextColor(requireContext().getColor(if (logged) R.color.primary else R.color.text_secondary))
            btnViews[ds]?.isEnabled = !logged
            logoutViews[ds]?.visibility = if (logged) View.VISIBLE else View.GONE
        }
    }

    private fun logout(ds: DataSource) {
        try {
            prefs.clearCredential(ds)
            LoginWebActivity.clearPlatformWebLogin(ds.toLoginTypeLab(), wipeAllCookies = true)
            android.widget.Toast.makeText(requireContext(), "已注销${ds.displayName}", android.widget.Toast.LENGTH_SHORT).show()
        } catch (_: Exception) {}
        refreshStates()
    }

    /** 实验室注销用：DataSource → LoginWebActivity登录类型 */
    private fun DataSource.toLoginTypeLab(): String = when (this) {
        DataSource.SUUNTO -> LoginWebActivity.TYPE_SUUNTO
        DataSource.ZEPP -> "zepp"
        DataSource.BRYTON -> LoginWebActivity.TYPE_BRYTON
        else -> ""
    }
}

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
        // v8.2.9: 动态追加实验室新平台（两步路 + P0开发者OAuth五平台）
        ensureDynamicCards()
        refreshStates()
    }

    /** v8.2.9: 动态渲染 labLoginPlatforms() 中静态XML未包含的平台卡片 */
    private val dynamicDs = mutableListOf<DataSource>()

    private fun ensureDynamicCards() {
        val root = view?.findViewById<android.widget.LinearLayout>(R.id.labRoot) ?: return
        val staticDs = setOf(DataSource.SUUNTO, DataSource.ZEPP, DataSource.BRYTON)
        val need = DataSource.labLoginPlatforms().filter { !staticDs.contains(it) }
        if (dynamicDs.isEmpty()) {
            for (ds in need) {
                val card = buildCard(ds)
                root.addView(card)
                dynamicDs.add(ds)
                statusViews[ds] = card.findViewById(R.id.tvLabDynStatus)
                btnViews[ds] = card.findViewById(R.id.btnLabDynLogin)
                logoutViews[ds] = card.findViewById(R.id.btnLabDynLogout)
                btnViews[ds]?.setOnClickListener { (activity as? MainActivity)?.openPlatformLogin(ds) }
                logoutViews[ds]?.setOnClickListener { logout(ds) }
            }
        }
        // 若平台列表变化（未来新增），补漏
        for (ds in need) {
            if (!dynamicDs.contains(ds)) {
                val card = buildCard(ds)
                root.addView(card)
                dynamicDs.add(ds)
                statusViews[ds] = card.findViewById(R.id.tvLabDynStatus)
                btnViews[ds] = card.findViewById(R.id.btnLabDynLogin)
                logoutViews[ds] = card.findViewById(R.id.btnLabDynLogout)
                btnViews[ds]?.setOnClickListener { (activity as? MainActivity)?.openPlatformLogin(ds) }
                logoutViews[ds]?.setOnClickListener { logout(ds) }
            }
        }
    }

    private fun buildCard(ds: DataSource): android.view.View {
        val dp = { v: Int -> (v * resources.displayMetrics.density).toInt() }
        val card = com.google.android.material.card.MaterialCardView(requireContext()).apply {
            layoutParams = android.widget.LinearLayout.LayoutParams(android.view.ViewGroup.LayoutParams.MATCH_PARENT, android.view.ViewGroup.LayoutParams.WRAP_CONTENT).apply {
                bottomMargin = dp(8)
            }
            radius = dp(16).toFloat()
            cardElevation = 0f
            strokeWidth = dp(1)
            setStrokeColor(requireContext().getColor(R.color.primary))
            setContentPadding(dp(14), dp(12), dp(14), dp(12))
        }
        val inner = android.widget.LinearLayout(requireContext()).apply {
            orientation = android.widget.LinearLayout.VERTICAL
        }
        // 标题行：平台名 + 注销
        val row = android.widget.LinearLayout(requireContext()).apply {
            orientation = android.widget.LinearLayout.HORIZONTAL
            gravity = android.view.Gravity.CENTER_VERTICAL
        }
        row.addView(android.widget.TextView(requireContext()).apply {
            text = ds.displayName
            textSize = 15f
            setTextColor(requireContext().getColor(R.color.text_primary))
            setTypeface(null, android.graphics.Typeface.BOLD)
        }.apply { layoutParams = android.widget.LinearLayout.LayoutParams(0, android.view.ViewGroup.LayoutParams.WRAP_CONTENT, 1f) })
        row.addView(android.widget.TextView(requireContext()).apply {
            id = R.id.btnLabDynLogout
            text = "注销"
            textSize = 9f
            setTextColor(requireContext().getColor(R.color.text_secondary))
            setPadding(dp(8), dp(4), dp(8), dp(4))
            visibility = android.view.View.GONE
        })
        inner.addView(row)
        inner.addView(android.widget.TextView(requireContext()).apply {
            id = R.id.tvLabDynStatus
            text = "未登录"
            textSize = 11f
            setTextColor(requireContext().getColor(R.color.text_secondary))
        }.apply { layoutParams = android.widget.LinearLayout.LayoutParams(android.view.ViewGroup.LayoutParams.WRAP_CONTENT, android.view.ViewGroup.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(2) } })
        inner.addView(com.google.android.material.button.MaterialButton(requireContext()).apply {
            id = R.id.btnLabDynLogin
            text = "登录${ds.displayName}"
            textSize = 12f
            insetTop = 0; insetBottom = 0
            minHeight = 0
            setBackgroundColor(requireContext().getColor(R.color.primary))
        }.apply { layoutParams = android.widget.LinearLayout.LayoutParams(android.view.ViewGroup.LayoutParams.MATCH_PARENT, dp(34)).apply { topMargin = dp(6) } })
        card.addView(inner)
        return card
    }

    fun refreshStates() {
        val all = mutableListOf(DataSource.SUUNTO, DataSource.ZEPP, DataSource.BRYTON)
        all += DataSource.labLoginPlatforms().filter { !setOf(DataSource.SUUNTO, DataSource.ZEPP, DataSource.BRYTON).contains(it) }
        for (ds in all) {
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
        DataSource.STRAVA -> LoginWebActivity.TYPE_STRAVA
        DataSource.POLAR -> LoginWebActivity.TYPE_POLAR
        DataSource.FITBIT -> LoginWebActivity.TYPE_FITBIT
        DataSource.WITHINGS -> LoginWebActivity.TYPE_WITHINGS
        DataSource.TRAININGPEAKS -> LoginWebActivity.TYPE_TRAININGPEAKS
        else -> ""
    }
}

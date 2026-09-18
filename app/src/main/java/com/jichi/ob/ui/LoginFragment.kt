package com.jichi.ob.ui

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import com.google.android.material.card.MaterialCardView
import com.jichi.ob.MainActivity
import com.jichi.ob.R
import com.jichi.ob.model.DataSource
import com.jichi.ob.util.PrefsManager
import com.jichi.ob.api.GarminApi
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

/**
 * v8.2.2: 登录页改造
 * - 顶部一键检测（网络级登录态全量校验，收敛启动网络检测）
 * - 已登录平台：状态卡片（每行2个），点击卡片 → 详情弹窗（重新登录/注销/清空风控）
 * - 未登录平台：折叠区（默认收起），展开后显示登录卡片
 * - 全部卡片程序化构建（避开 GridLayout+PlatformButton 的 layoutParams 闪退陷阱）
 */
class LoginFragment : Fragment() {

    /** 登录页展示平台（与旧版17卡一致；实验室平台不进此页） */
    private val LOGIN_PLATFORMS = listOf(
        DataSource.IGPSPORT, DataSource.XINGZHE, DataSource.MAGENE, DataSource.BLACKBIRD,
        DataSource.GIANT, DataSource.WAHOO, DataSource.GARMIN_COM, DataSource.GARMIN_CN,
        DataSource.COROS_CN, DataSource.COROS_INT, DataSource.MYWHOOSH, DataSource.ZWIFT,
        DataSource.OUTBASE, DataSource.INTERVALS_ICU, DataSource.KEEP, DataSource.CODOON,
        DataSource.KOMOT
    )

    /** v8.3.1: 全局接入——已登录的实验室平台（两步路/P0五平台）自动出现在登录页，登录后全链路可用 */
    private val LAB_LOGIN_EXTRA = listOf(
        DataSource.TWO_BULU, DataSource.STRAVA, DataSource.POLAR,
        DataSource.FITBIT, DataSource.WITHINGS, DataSource.TRAININGPEAKS
    )

    private fun allLoginPlatforms(): List<DataSource> =
        LOGIN_PLATFORMS + LAB_LOGIN_EXTRA.filter { prefs.isLoggedIn(it) }

    private lateinit var prefs: PrefsManager
    private lateinit var containerLogged: LinearLayout
    private lateinit var containerLoggedOut: LinearLayout
    private lateinit var tvGroupLogged: TextView
    private lateinit var tvFoldToggle: TextView
    private lateinit var tvFoldArrow: TextView
    private lateinit var llFoldToggle: LinearLayout
    private lateinit var btnCheckAll: com.google.android.material.button.MaterialButton
    private lateinit var tvCheckStatus: TextView
    private lateinit var tvCheckSummary: TextView
    private var loggedOutExpanded = false
    private var checking = false
    /** v8.2.3: 平台统计 TextView（按 DataSource 索引，异步刷新） */
    private val statViews = mutableMapOf<DataSource, TextView>()
    /** v8.2.3.4: 平台记录条数徽标（右上角；缓存库实时条数，上限显示2000+；异步刷新） */
    private val countViews = mutableMapOf<DataSource, TextView>()

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_login, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        prefs = PrefsManager(requireContext())
        containerLogged = view.findViewById(R.id.containerLogged)
        containerLoggedOut = view.findViewById(R.id.containerLoggedOut)
        tvGroupLogged = view.findViewById(R.id.tvGroupLogged)
        tvFoldToggle = view.findViewById(R.id.tvFoldToggle)
        tvFoldArrow = view.findViewById(R.id.tvFoldArrow)
        llFoldToggle = view.findViewById(R.id.llFoldToggle)
        btnCheckAll = view.findViewById(R.id.btnCheckAll)
        tvCheckStatus = view.findViewById(R.id.tvCheckStatus)
        tvCheckSummary = view.findViewById(R.id.tvCheckSummary)

        btnCheckAll.setOnClickListener { startCheckAll() }
        llFoldToggle.setOnClickListener {
            loggedOutExpanded = !loggedOutExpanded
            containerLoggedOut.visibility = if (loggedOutExpanded) View.VISIBLE else View.GONE
            tvFoldArrow.text = if (loggedOutExpanded) "▴ 收起" else "▾ 点击展开"
        }

        // v8.2.3: 会话内自动检查开关（默认开；关闭后仅手动点「检测」）
        val switchAutoCheck = view.findViewById<com.google.android.material.switchmaterial.SwitchMaterial>(R.id.switchAutoCheck)
        switchAutoCheck.isChecked = prefs.isAutoCheckLogin()
        switchAutoCheck.setOnCheckedChangeListener { _, checked -> prefs.setAutoCheckLogin(checked) }

        lifecycle.addObserver(object : androidx.lifecycle.LifecycleEventObserver {
            override fun onStateChanged(source: androidx.lifecycle.LifecycleOwner, event: androidx.lifecycle.Lifecycle.Event) {
                if (event == androidx.lifecycle.Lifecycle.Event.ON_RESUME) updateStatus()
            }
        })
        updateStatus()
    }

    /** 一键检测：网络级全量校验（MainActivity.checkAllLogins） */
    private fun startCheckAll() {
        if (checking) return
        val act = activity as? MainActivity ?: return
        checking = true
        btnCheckAll.isEnabled = false
        tvCheckStatus.text = "正在检测所有已登录平台..."
        tvCheckSummary.visibility = View.GONE
        act.checkAllLogins { valid, refreshed, invalid ->
            checking = false
            btnCheckAll.isEnabled = true
            tvCheckStatus.text = "检测完成"
            tvCheckSummary.text = "✅ ${valid} 有效 · 🔄 ${refreshed} 刷新 · ❌ ${invalid} 失效"
            tvCheckSummary.setTextColor(requireContext().getColor(
                if (invalid > 0) R.color.log_error else R.color.green
            ))
            tvCheckSummary.visibility = View.VISIBLE
            updateStatus()
        }
    }

    /** v8.2.2: 刷新已登录/未登录两组卡片（MainActivity 登录返回后调用） */
    fun updateStatus() {
        if (!::prefs.isInitialized) return
        try {
            statViews.clear()
            countViews.clear()
            buildLogged()
            buildLoggedOut()
            updateFoldToggle()
            refreshStats()
        } catch (_: Exception) {}
    }

    private fun updateFoldToggle() {
        val loggedOut = allLoginPlatforms().filter { !prefs.isLoggedIn(it) }
        tvFoldToggle.text = "未登录平台（${loggedOut.size}）"
        llFoldToggle.visibility = if (loggedOut.isEmpty()) View.GONE else View.VISIBLE
    }

    private fun buildLogged() {
        containerLogged.removeAllViews()
        val logged = allLoginPlatforms().filter { prefs.isLoggedIn(it) }
        tvGroupLogged.text = "已登录平台（${logged.size}）"
        if (logged.isEmpty()) {
            containerLogged.addView(emptyHint("暂无已登录平台，展开下方「未登录平台」登录"))
            return
        }
        // 一排两列（用户确认布局：每行2个等宽卡片）
        for (i in logged.indices step 2) {
            val row = LinearLayout(requireContext()).apply { orientation = LinearLayout.HORIZONTAL }
            row.addView(makeCard(logged[i], true), rowChildLp(weight = 1f, marginEnd = if (i + 1 < logged.size) 4 else 0))
            if (i + 1 < logged.size) row.addView(makeCard(logged[i + 1], true), rowChildLp(weight = 1f, marginEnd = 0))
            containerLogged.addView(row, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT))
        }
    }

    private fun buildLoggedOut() {
        containerLoggedOut.removeAllViews()
        val loggedOut = allLoginPlatforms().filter { !prefs.isLoggedIn(it) }
        if (loggedOut.isEmpty()) return
        for (i in loggedOut.indices step 2) {
            val row = LinearLayout(requireContext()).apply { orientation = LinearLayout.HORIZONTAL }
            row.addView(makeCard(loggedOut[i], false), rowChildLp(weight = 1f, marginEnd = if (i + 1 < loggedOut.size) 4 else 0))
            if (i + 1 < loggedOut.size) row.addView(makeCard(loggedOut[i + 1], false), rowChildLp(weight = 1f, marginEnd = 0))
            containerLoggedOut.addView(row, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT))
        }
    }

    private fun rowChildLp(weight: Float, marginEnd: Int): LinearLayout.LayoutParams =
        LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, weight).apply {
            this.marginEnd = dp(marginEnd.toFloat()).toInt()
            topMargin = dp(2f).toInt(); bottomMargin = dp(2f).toInt()
        }

    private fun emptyHint(text: String): TextView = TextView(requireContext()).apply {
        this.text = text
        textSize = 12f
        setTextColor(requireContext().getColor(R.color.text_secondary))
        setPadding(dp(8f).toInt(), dp(10f).toInt(), dp(8f).toInt(), dp(10f).toInt())
    }

    /** 平台卡片（登录/未登录通用；点击 → 详情弹窗） */
    private fun makeCard(ds: DataSource, logged: Boolean): MaterialCardView {
        val ctx = requireContext()
        val isInvalid = logged && invalidPlatforms().contains(ds)
        val card = MaterialCardView(ctx).apply {
            radius = dp(14f)
            elevation = 0f
            strokeWidth = dp(1f).toInt()
            setStrokeColor(if (isInvalid) android.graphics.Color.parseColor("#F5C2C4") else android.graphics.Color.parseColor("#E3EEFA"))
            setCardBackgroundColor(if (isInvalid) android.graphics.Color.parseColor("#FFF8F8") else android.graphics.Color.WHITE)
            setOnClickListener { showDetail(ds) }
        }
        val inner = LinearLayout(ctx).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(8f).toInt(), dp(7f).toInt(), dp(8f).toInt(), dp(7f).toInt())
        }
        // 第一行：状态点 + 平台名
        val row1 = LinearLayout(ctx).apply { orientation = LinearLayout.HORIZONTAL; gravity = android.view.Gravity.CENTER_VERTICAL }
        val dot = View(ctx).apply {
            setBackgroundResource(dotRes(ds))
            layoutParams = LinearLayout.LayoutParams(dp(8f).toInt(), dp(8f).toInt())
        }
        row1.addView(dot)
        val name = TextView(ctx).apply {
            text = ds.displayName
            textSize = 12f
            setTypeface(null, android.graphics.Typeface.BOLD)
            setTextColor(ctx.getColor(R.color.text_primary))
            maxLines = 1
        }
        row1.addView(name, LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f).apply { marginStart = dp(6f).toInt() })
        // v8.2.3.4: 右上角记录条数徽标（已登录且缓存>0时显示；上限2000+；异步刷新）
        if (logged) {
            val tvCount = TextView(ctx).apply {
                textSize = 9.5f
                setTextColor(android.graphics.Color.WHITE)
                setPadding(dp(6f).toInt(), dp(1f).toInt(), dp(6f).toInt(), dp(1f).toInt())
                background = android.graphics.drawable.GradientDrawable().apply {
                    cornerRadius = dp(8f)
                    setColor(android.graphics.Color.parseColor("#2B8CFF"))
                }
                visibility = View.GONE
            }
            countViews[ds] = tvCount
            row1.addView(tvCount, LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { marginStart = dp(4f).toInt() })
        }
        inner.addView(row1)
        // 第二行：状态/账号（v8.2.3: 失效红标「已失效·点击重登」）
        val status = TextView(ctx).apply {
            textSize = 10f
            maxLines = 1
            when {
                isInvalid -> {
                    text = "已失效 · 点击重登"
                    setTextColor(ctx.getColor(R.color.log_error))
                }
                logged -> {
                    val username = prefs.getUsername(ds)
                    val hide = ds == DataSource.GARMIN_CN || ds == DataSource.GARMIN_COM
                    text = if (username != null && !hide) "✅ $username" else "✅ 已登录"
                    setTextColor(ctx.getColor(R.color.green))
                }
                else -> {
                    text = "未登录"
                    setTextColor(ctx.getColor(R.color.text_secondary))
                }
            }
        }
        inner.addView(status, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(2f).toInt() })
        // v8.2.3: 平台统计行（↑下载 ↓上传 ✗失败；异步刷新）
        val tvStat = TextView(ctx).apply {
            textSize = 9.5f
            maxLines = 1
            text = if (logged) "↑- ↓- ✗-" else ""
            setTextColor(ctx.getColor(R.color.text_secondary))
        }
        if (logged) statViews[ds] = tvStat
        inner.addView(tvStat, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(1f).toInt() })
        // 第三行：主按钮（视觉提示，点击仍进详情）
        val btn = TextView(ctx).apply {
            text = when {
                isInvalid -> "重新登录"
                logged -> "重新登录"
                else -> "登录${ds.displayName}"
            }
            textSize = 10f
            gravity = android.view.Gravity.CENTER
            setTextColor(ctx.getColor(
                when {
                    isInvalid -> R.color.log_error
                    logged -> R.color.green
                    else -> R.color.primary
                }
            ))
            setBackgroundResource(R.drawable.login_btn_bg)
            setPadding(0, dp(6f).toInt(), 0, dp(6f).toInt())
        }
        inner.addView(btn, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(5f).toInt() })
        card.addView(inner)
        return card
    }

    /** v8.2.3: 当前会话检测到的失效平台（来自 MainActivity.checkAllLogins 结果） */
    private fun invalidPlatforms(): Set<DataSource> =
        (activity as? MainActivity)?.lastInvalidPlatforms?.toSet() ?: emptySet()

    /** v8.2.3: 异步刷新全部已登录平台的累计统计 + 缓存条数（IO 查询，主线程更新，不卡 UI） */
    private fun refreshStats() {
        val act = activity as? MainActivity ?: return
        val logged = allLoginPlatforms().filter { prefs.isLoggedIn(it) }
        if (logged.isEmpty()) return
        lifecycleScope.launch(Dispatchers.IO) {
            val cache = try { com.jichi.ob.util.ActivityCache.get(requireContext()) } catch (_: Exception) { null }
            val stats = logged.associateWith { ds ->
                try { cache?.getPlatformStat(ds.shortName) } catch (_: Exception) { null }
            }
            // v8.2.3.4: 缓存条数（上限显示 2000+）
            val counts = logged.associateWith { ds ->
                try { cache?.count(ds.shortName) ?: -1 } catch (_: Exception) { -1 }
            }
            act.runOnUiThread {
                stats.forEach { (ds, st) ->
                    if (st != null) statViews[ds]?.text = "↑${st.ok} ↓${st.skip} ✗${st.fail}"
                }
                counts.forEach { (ds, c) ->
                    if (c >= 0) countViews[ds]?.apply {
                        // v8.2.5: 拉取条数无上限全显示（此前 >2000 截断为 "2000+"）
                        text = "$c 条"
                        visibility = View.VISIBLE
                    }
                }
            }
        }
    }

    private fun dotRes(ds: DataSource): Int = when (ds) {
        DataSource.IGPSPORT -> R.drawable.bg_dot_igp
        DataSource.XINGZHE -> R.drawable.bg_dot_xingzhe
        DataSource.MAGENE -> R.drawable.bg_dot_magene
        DataSource.BLACKBIRD -> R.drawable.bg_dot_blackbird
        DataSource.GIANT -> R.drawable.bg_dot_giant
        DataSource.WAHOO -> R.drawable.bg_dot_wahoo
        DataSource.GARMIN_COM, DataSource.GARMIN_CN -> R.drawable.bg_dot_garmin
        DataSource.COROS_CN, DataSource.COROS_INT -> R.drawable.bg_dot_coros
        DataSource.MYWHOOSH -> R.drawable.bg_dot_mywhoosh
        DataSource.ZWIFT -> R.drawable.bg_dot_zwift
        DataSource.OUTBASE -> R.drawable.bg_dot_outbase
        DataSource.INTERVALS_ICU -> R.drawable.bg_dot_intervals_icu
        DataSource.KEEP -> R.drawable.bg_dot_keep
        DataSource.CODOON -> R.drawable.bg_dot_codoon
        DataSource.KOMOT -> R.drawable.bg_dot_komoot
        DataSource.SUUNTO -> R.drawable.bg_dot_suunto
        DataSource.TWO_BULU -> R.drawable.bg_dot_keep
        DataSource.STRAVA -> R.drawable.bg_dot_keep
        DataSource.POLAR -> R.drawable.bg_dot_keep
        DataSource.FITBIT -> R.drawable.bg_dot_keep
        DataSource.WITHINGS -> R.drawable.bg_dot_keep
        DataSource.TRAININGPEAKS -> R.drawable.bg_dot_keep
        DataSource.ZEPP -> R.drawable.bg_dot_zepp
        DataSource.BRYTON -> R.drawable.bg_dot_bryton
    }

    /** 平台详情弹窗：状态 / 账号 / 统计 / 平台日志 / 登录 / 注销 / （佳明）清空风控 */
    private fun showDetail(ds: DataSource) {
        val ctx = requireContext()
        val act = activity as? MainActivity
        val logged = prefs.isLoggedIn(ds)
        val username = prefs.getUsername(ds)
        val isGarmin = ds == DataSource.GARMIN_COM || ds == DataSource.GARMIN_CN
        // v8.2.3.5: 弹窗可变引用（登录按钮在 dialog 定义前也能先关闭旧弹窗）
        var dlg: androidx.appcompat.app.AlertDialog? = null

        val layout = LinearLayout(ctx).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(20f).toInt(), dp(8f).toInt(), dp(20f).toInt(), dp(4f).toInt())
        }
        fun infoRow(label: String, value: String, color: Int) {
            layout.addView(TextView(ctx).apply {
                text = "$label $value"
                textSize = 13f
                setTextColor(ctx.getColor(color))
                setPadding(0, dp(6f).toInt(), 0, 0)
            })
        }
        val hideUsername = isGarmin
        infoRow("状态：", if (logged) "已登录" else "未登录", if (logged) R.color.green else R.color.text_secondary)
        if (logged && username != null && !hideUsername) infoRow("账号：", username, R.color.text_primary)
        // v8.2.3: 平台统计（累计 上传/下载/失败 + 最后同步时间；异步查询后填充）
        val tvStat = TextView(ctx).apply {
            textSize = 12f
            setTextColor(ctx.getColor(R.color.text_primary))
            setPadding(0, dp(6f).toInt(), 0, 0)
        }
        layout.addView(tvStat)
        // v8.2.3.4: 最近运动记录（缓存库最近5条；标题行可点开独立弹窗；「查看全部」跳记录中心）
        val tvRecentTitle = TextView(ctx).apply {
            text = "最近运动记录（缓存） ▸"
            textSize = 12f
            setTypeface(null, android.graphics.Typeface.BOLD)
            setTextColor(ctx.getColor(R.color.primary))
            setPadding(0, dp(10f).toInt(), 0, 0)
            // v8.2.5: 点击弹出该平台最近记录列表弹窗
            setOnClickListener { if (logged) showRecentDialog(ds) }
        }
        val tvRecents = TextView(ctx).apply {
            textSize = 11f
            setTextColor(ctx.getColor(R.color.text_secondary))
            setPadding(0, dp(4f).toInt(), 0, 0)
        }
        val btnAllRecords = TextView(ctx).apply {
            text = "查看全部"
            textSize = 12f
            gravity = android.view.Gravity.CENTER
            setTextColor(ctx.getColor(R.color.primary))
            setBackgroundResource(R.drawable.bg_check_update)
            setPadding(0, dp(8f).toInt(), 0, dp(8f).toInt())
        }
        if (logged) {
            layout.addView(tvRecentTitle)
            layout.addView(tvRecents)
            // v8.2.5: 手动拉取该平台全部记录 + 查看全部 → 两个等宽美观按钮（蓝底/淡蓝胶囊）
            val fetchRow = LinearLayout(ctx).apply {
                orientation = LinearLayout.HORIZONTAL
                gravity = android.view.Gravity.CENTER_VERTICAL
                setPadding(0, dp(8f).toInt(), 0, 0)
            }
            fetchRow.addView(TextView(ctx).apply {
                text = "拉取全部记录"
                textSize = 12f
                gravity = android.view.Gravity.CENTER
                setTextColor(android.graphics.Color.WHITE)
                setBackgroundResource(R.drawable.primary_btn_bg)
                setPadding(0, dp(8f).toInt(), 0, dp(8f).toInt())
                setOnClickListener {
                    // v8.2.3.5: 先关弹窗再拉取，避免残留
                    try { dlg?.dismiss() } catch (_: Exception) {}
                    act?.preloadRecent(ds)
                }
            }, LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f).apply { marginEnd = dp(6f).toInt() })
            fetchRow.addView(btnAllRecords, LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f).apply { marginStart = dp(6f).toInt() })
            layout.addView(fetchRow)
            // v8.2.6: iGPSPORT 专属——批量修复缺失时间（列表接口无时间，FIT 文件自带时间；对 1970 记录逐个下载解析回填）
            if (ds == com.jichi.ob.model.DataSource.IGPSPORT) {
                layout.addView(TextView(ctx).apply {
                    text = "修复缺失时间（1970 记录）"
                    textSize = 12f
                    gravity = android.view.Gravity.CENTER
                    setTextColor(ctx.getColor(R.color.primary))
                    setBackgroundResource(R.drawable.logout_bg)
                    setPadding(0, dp(8f).toInt(), 0, dp(8f).toInt())
                    setOnClickListener {
                        try { dlg?.dismiss() } catch (_: Exception) {}
                        (activity as? MainActivity)?.repairIgpTimes()
                    }
                }, LinearLayout.LayoutParams(android.view.ViewGroup.LayoutParams.MATCH_PARENT, android.view.ViewGroup.LayoutParams.WRAP_CONTENT).apply {
                    setMargins(0, dp(8f).toInt(), 0, 0)
                })
            }
        }
        // v8.2.3: 平台日志（最近 10 条；标题行可点开独立完整日志弹窗）
        val tvLogTitle = TextView(ctx).apply {
            text = "平台同步日志 ▸"
            textSize = 12f
            setTypeface(null, android.graphics.Typeface.BOLD)
            setTextColor(ctx.getColor(R.color.primary))
            setPadding(0, dp(10f).toInt(), 0, 0)
            // v8.2.5: 点击弹出完整日志列表弹窗
            setOnClickListener { if (logged) showLogDialog(ds) }
        }
        val tvLogs = TextView(ctx).apply {
            textSize = 11f
            setTextColor(ctx.getColor(R.color.text_secondary))
            setPadding(0, dp(4f).toInt(), 0, 0)
        }
        if (logged) {
            layout.addView(tvLogTitle)
            layout.addView(tvLogs)
        }
        if (isGarmin) {
            infoRow("提示：", "若登录遇「冷却中」拦截，可先清空风控后再试", R.color.text_secondary)
        }
        // 操作按钮行
        val btnRow = LinearLayout(ctx).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = android.view.Gravity.CENTER_VERTICAL
            setPadding(0, dp(14f).toInt(), 0, 0)
        }
        fun actionBtn(text: String, textColor: Int, bg: Int, onClick: () -> Unit): TextView =
            TextView(ctx).apply {
                this.text = text
                textSize = 12f
                gravity = android.view.Gravity.CENTER
                setTextColor(ctx.getColor(textColor))
                setBackgroundResource(bg)
                setPadding(0, dp(8f).toInt(), 0, dp(8f).toInt())
                setOnClickListener { onClick() }
            }
        btnRow.addView(
            actionBtn(if (logged) "重新登录" else "登录", R.color.white, R.drawable.primary_btn_bg) {
                // v8.2.3.5: 登录前先关闭详情弹窗，登录成功后不残留旧弹窗
                try { dlg?.dismiss() } catch (_: Exception) {}
                (activity as? MainActivity)?.openPlatformLogin(ds)
            },
            LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f).apply { marginEnd = dp(6f).toInt() }
        )
        if (logged) {
            btnRow.addView(
                actionBtn("注销", R.color.text_secondary, R.drawable.logout_bg) { logout(ds) },
                LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f).apply { marginStart = dp(6f).toInt() }
            )
        } else if (isGarmin) {
            // 未登录也要能清风控（用户要求：不依赖登录态）
            btnRow.addView(
                actionBtn("清空风控", R.color.log_error, R.drawable.logout_bg) { clearCooldown(ds) },
                LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f).apply { marginStart = dp(6f).toInt() }
            )
        }
        layout.addView(btnRow)
        if (logged && isGarmin) {
            val clearBtn = actionBtn("🧹 清空风控冷却", R.color.log_error, R.drawable.logout_bg) { clearCooldown(ds) }
            layout.addView(clearBtn, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(8f).toInt() })
        }

        // v8.2.3.5: 用可变引用，登录按钮在 dialog 定义前也能 dismiss
        dlg = androidx.appcompat.app.AlertDialog.Builder(ctx)
            .setTitle(ds.displayName)
            .setView(layout)
            .setNegativeButton("关闭", null)
            .show()

        // v8.2.3.4: 最近记录「查看全部」跳记录中心（dialog 定义后才绑定）
        btnAllRecords.setOnClickListener {
            try { dlg?.dismiss() } catch (_: Exception) {}
            act?.openRecordCenter()
        }

        // v8.2.3: 异步加载统计 + 平台日志（IO 查询，主线程填充）
        if (logged) {
            lifecycleScope.launch(Dispatchers.IO) {
                val cache = try { com.jichi.ob.util.ActivityCache.get(requireContext()) } catch (_: Exception) { null }
                val stat = try { cache?.getPlatformStat(ds.shortName) } catch (_: Exception) { null }
                val logs = try { cache?.getPlatformLogs(ds.shortName, 10) ?: emptyList() } catch (_: Exception) { emptyList() }
                val recents = try { cache?.queryByPlatform(ds.shortName)?.take(5) ?: emptyList() } catch (_: Exception) { emptyList() }
                act?.runOnUiThread {
                    if (stat != null) {
                        val last = if (stat.lastSync > 0)
                            android.text.format.DateFormat.getDateFormat(requireContext())
                                .format(java.util.Date(stat.lastSync)) else "从未"
                        tvStat.text = "累计：↑${stat.ok} 下载 · ↓${stat.skip} 上传 · ✗${stat.fail} 失败　最后同步 ${last}"
                    } else {
                        tvStat.text = "累计：暂无同步记录"
                    }
                    // v8.2.3.4: 最近记录填充
                    tvRecents.text = if (recents.isEmpty()) "（暂无缓存记录，同步后自动写入）"
                    else recents.joinToString("\n") { r ->
                        val t = java.text.SimpleDateFormat("MM-dd HH:mm", java.util.Locale.getDefault()).format(java.util.Date(r.startTime))
                        val d = if (r.distanceKm > 0) "%.1fkm".format(r.distanceKm) else ""
                        "[$t] ${r.title.ifBlank { "未命名活动" }}${if (d.isNotEmpty()) " · $d" else ""}"
                    }
                    tvLogs.text = if (logs.isEmpty()) "（暂无日志）"
                    else logs.joinToString("\n") { l ->
                        val t = java.text.SimpleDateFormat("MM-dd HH:mm", java.util.Locale.getDefault()).format(java.util.Date(l.time))
                        val tag = when (l.type) {
                            "ok" -> "✅ 上传成功"; "dl" -> "⬇ 下载"; "skip" -> "⏭ 跳过"; "err" -> "❌ 失败"; else -> ""
                        }
                        "[" + t + "] " + tag + (if (l.msg.isBlank()) "" else " " + l.msg)
                    }
                    if (dlg?.isShowing == true) dlg?.show() // 保持显示
                }
            }
        }
    }

    /** v8.2.2: 清空风控冷却（不依赖登录态；确认弹窗说明风险） */
    private fun clearCooldown(ds: DataSource) {
        androidx.appcompat.app.AlertDialog.Builder(requireContext())
            .setTitle("清空风控冷却")
            .setMessage("若清空风控后强行尝试登录，可能增加冷却时间，你确定清空吗？")
            .setPositiveButton("确定清空") { _, _ ->
                try {
                    // 优先从凭证提取邮箱；取不到时按平台全量清除
                    val email = try {
                        org.json.JSONObject(prefs.getCredential(ds) ?: "").optString("email", "")
                            .takeIf { it.isNotBlank() }
                    } catch (_: Exception) { null }
                    if (email != null) GarminApi.clearCooldownFor(ds, email)
                    else GarminApi.clearAllCooldownFor(ds)
                    Toast.makeText(requireContext(), "风控冷却缓存已清除，可重新尝试登录", Toast.LENGTH_SHORT).show()
                } catch (e: Exception) {
                    Toast.makeText(requireContext(), "清空失败: ${e.message}", Toast.LENGTH_SHORT).show()
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v8.2.5: 最近运动记录独立弹窗——该平台缓存记录列表（时间+标题+距离，最多50条） */
    private fun showRecentDialog(ds: DataSource) {
        val ctx = requireContext()
        val act = activity as? MainActivity ?: return
        val body = TextView(ctx).apply {
            text = "加载中..."
            textSize = 12f
            setTextColor(ctx.getColor(R.color.text_secondary))
            setPadding(dp(24f).toInt(), dp(12f).toInt(), dp(24f).toInt(), dp(12f).toInt())
        }
        androidx.appcompat.app.AlertDialog.Builder(ctx)
            .setTitle("${ds.displayName} · 最近运动记录")
            .setView(body)
            .setPositiveButton("查看全部", { _, _ -> act.openRecordCenter() })
            .setNegativeButton("关闭", null)
            .show()
        lifecycleScope.launch(Dispatchers.IO) {
            val cache = try { com.jichi.ob.util.ActivityCache.get(requireContext()) } catch (_: Exception) { null }
            val recents = try { cache?.queryByPlatform(ds.shortName)?.take(50) ?: emptyList() } catch (_: Exception) { emptyList() }
            act.runOnUiThread {
                body.text = if (recents.isEmpty()) "（暂无缓存记录，同步后自动写入）"
                else recents.joinToString("\n") { r ->
                    val t = try {
                        java.text.SimpleDateFormat("yyyy-MM-dd HH:mm", java.util.Locale.getDefault()).format(java.util.Date(r.startTime))
                    } catch (_: Exception) { "时间未知" }
                    val d = if (r.distanceKm > 0) "%.1fkm".format(r.distanceKm) else ""
                    "▪ $t  ${r.title.ifBlank { "未命名活动" }}${if (d.isNotEmpty()) " · $d" else ""}"
                }
            }
        }
    }

    /** v8.2.5: 平台同步日志独立弹窗——最近 50 条完整日志 */
    private fun showLogDialog(ds: DataSource) {
        val ctx = requireContext()
        val act = activity as? MainActivity ?: return
        val body = TextView(ctx).apply {
            text = "加载中..."
            textSize = 12f
            setTextColor(ctx.getColor(R.color.text_secondary))
            setPadding(dp(24f).toInt(), dp(12f).toInt(), dp(24f).toInt(), dp(12f).toInt())
        }
        androidx.appcompat.app.AlertDialog.Builder(ctx)
            .setTitle("${ds.displayName} · 平台同步日志")
            .setView(body)
            .setNegativeButton("关闭", null)
            .show()
        lifecycleScope.launch(Dispatchers.IO) {
            val cache = try { com.jichi.ob.util.ActivityCache.get(requireContext()) } catch (_: Exception) { null }
            val logs = try { cache?.getPlatformLogs(ds.shortName, 50) ?: emptyList() } catch (_: Exception) { emptyList() }
            act.runOnUiThread {
                body.text = if (logs.isEmpty()) "（暂无日志）"
                else logs.joinToString("\n") { l ->
                    val t = try {
                        java.text.SimpleDateFormat("MM-dd HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date(l.time))
                    } catch (_: Exception) { "" }
                    val tag = when (l.type) {
                        "ok" -> "✅ 上传成功"; "dl" -> "⬇ 下载"; "skip" -> "⏭ 跳过"; "err" -> "❌ 失败"; else -> ""
                    }
                    "[$t] $tag" + (if (l.msg.isBlank()) "" else " " + l.msg)
                }
            }
        }
    }

    /** 注销（保留 v7.6.7 逻辑：顺带清 WebView 登录态；佳明注销顺带清风控缓存） */
    private fun logout(ds: DataSource) {
        androidx.appcompat.app.AlertDialog.Builder(requireContext())
            .setTitle("注销登录")
            .setMessage("确定注销${ds.displayName}吗？注销后该平台将无法同步。")
            .setPositiveButton("注销") { _, _ ->
                val garminEmail = if (ds == DataSource.GARMIN_COM || ds == DataSource.GARMIN_CN) {
                    try {
                        org.json.JSONObject(prefs.getCredential(ds) ?: "").optString("email", "")
                            .takeIf { it.isNotBlank() }
                    } catch (_: Exception) { null }
                } else null
                prefs.clearCredential(ds)
                if (garminEmail != null) GarminApi.clearCooldownFor(ds, garminEmail)
                val wipeAll = ds != DataSource.GARMIN_COM && ds != DataSource.GARMIN_CN && ds != DataSource.WAHOO
                LoginWebActivity.clearPlatformWebLogin(ds.toLoginType(), wipeAllCookies = wipeAll)
                updateStatus()
                Toast.makeText(requireContext(), "已注销${ds.displayName}" + if (garminEmail != null) "（风控冷却缓存已清除）" else "", Toast.LENGTH_SHORT).show()
            }
            .setNegativeButton("取消", null)
            .show()
    }

    /** v7.7.3: DataSource → LoginWebActivity登录类型映射（注销清WebView登录态用） */
    private fun DataSource.toLoginType(): String = when (this) {
        DataSource.IGPSPORT -> LoginWebActivity.TYPE_IGPSPORT
        DataSource.XINGZHE -> LoginWebActivity.TYPE_XINGZHE
        DataSource.MAGENE -> LoginWebActivity.TYPE_MAGENE
        DataSource.BLACKBIRD -> LoginWebActivity.TYPE_BLACKBIRD
        DataSource.BRYTON -> LoginWebActivity.TYPE_BRYTON
        DataSource.GIANT -> "giant"
        DataSource.OUTBASE -> LoginWebActivity.TYPE_OUTBASE
        DataSource.GARMIN_COM -> LoginWebActivity.TYPE_GARMIN_COM
        DataSource.GARMIN_CN -> LoginWebActivity.TYPE_GARMIN_CN
        DataSource.COROS_CN -> LoginWebActivity.TYPE_COROS_CN
        DataSource.COROS_INT -> LoginWebActivity.TYPE_COROS_INT
        DataSource.WAHOO -> LoginWebActivity.TYPE_WAHOO
        DataSource.MYWHOOSH -> "mywhoosh"
        DataSource.ZWIFT -> "zwift"
        DataSource.INTERVALS_ICU -> "icu"
        DataSource.KEEP -> "keep"
        DataSource.CODOON -> "codoon"
        DataSource.KOMOT -> "komoot"
        DataSource.SUUNTO -> LoginWebActivity.TYPE_SUUNTO
        DataSource.TWO_BULU -> LoginWebActivity.TYPE_TWO_BULU
        DataSource.STRAVA -> LoginWebActivity.TYPE_STRAVA
        DataSource.POLAR -> LoginWebActivity.TYPE_POLAR
        DataSource.FITBIT -> LoginWebActivity.TYPE_FITBIT
        DataSource.WITHINGS -> LoginWebActivity.TYPE_WITHINGS
        DataSource.TRAININGPEAKS -> LoginWebActivity.TYPE_TRAININGPEAKS
        DataSource.ZEPP -> "zepp"
    }

    private fun dp(v: Float): Float = v * resources.displayMetrics.density
}

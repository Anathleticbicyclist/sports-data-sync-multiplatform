package com.jichi.ob.ui

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.os.Bundle
import android.text.SpannableStringBuilder
import android.text.Spanned
import android.text.style.AbsoluteSizeSpan
import android.text.style.ForegroundColorSpan
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.google.android.material.button.MaterialButton
import com.google.android.material.slider.Slider
import com.google.android.material.switchmaterial.SwitchMaterial
import com.jichi.ob.MainActivity
import com.jichi.ob.R
import com.jichi.ob.model.DataSource
import com.jichi.ob.util.PrefsManager
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * v7.6.2: 四页面布局 - 页面3 同步页
 * v7.7.7: UI重塑 —— 圆形同步按钮+环绕进度环、日志分层着色、次级按钮统一描边
 * 自动同步 + 开始/停止/测试/清记忆 + 进度 + 运行日志
 */
class SyncFragment : Fragment() {

    private lateinit var prefs: PrefsManager
    private var tvLog: TextView? = null
    private var logScrollView: ScrollView? = null
    private var progressBar: LinearProgressView? = null
    private var btnSync: MaterialButton? = null
    private var btnStop: MaterialButton? = null
    private var tvStatOk: TextView? = null
    private var tvStatSkip: TextView? = null
    private var tvStatFail: TextView? = null
    private var tvLogReady = false
    private val pendingLogs = mutableListOf<String>()
    private var isAutoScroll = true

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_sync, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        prefs = PrefsManager(requireContext())
        tvLog = view.findViewById(R.id.tvLog)
        logScrollView = view.findViewById(R.id.svLog)
        progressBar = view.findViewById(R.id.progressBar)
        btnSync = view.findViewById(R.id.btnSync)
        btnStop = view.findViewById(R.id.btnStop)
        tvStatOk = view.findViewById(R.id.tvStatOk)
        tvStatSkip = view.findViewById(R.id.tvStatSkip)
        tvStatFail = view.findViewById(R.id.tvStatFail)
        // v7.7.8: 初始化显示累计统计（不清除记忆一直累加）
        setStats(prefs.getStatOk(), prefs.getStatSkip(), prefs.getStatFail())

        // v7.7.8: 日志操作——暂停滚动 / 清空
        val btnPauseLog = view.findViewById<TextView>(R.id.btnPauseLog)
        btnPauseLog.setOnClickListener {
            isAutoScroll = !isAutoScroll
            btnPauseLog.text = if (isAutoScroll) "暂停滚动" else "恢复滚动"
            Toast.makeText(requireContext(), if (isAutoScroll) "已开启自动滚动" else "已暂停自动滚动", Toast.LENGTH_SHORT).show()
        }
        // v8.2.3: 完整日志后台覆盖页（读持久化记录，不在同步主路径上）
        view.findViewById<TextView>(R.id.btnFullLog).setOnClickListener { showFullLog() }
        view.findViewById<TextView>(R.id.btnClearLog).setOnClickListener {
            tvLog?.text = ""
            logLineCount = 0
            Toast.makeText(requireContext(), "日志已清空", Toast.LENGTH_SHORT).show()
        }

        // 操作按钮
        btnSync?.setOnClickListener { (activity as? MainActivity)?.startSync() }
        btnStop?.setOnClickListener { (activity as? MainActivity)?.stopSync() }
        view.findViewById<MaterialButton>(R.id.btnTestDownload)?.setOnClickListener { (activity as? MainActivity)?.testDownload() }
        view.findViewById<MaterialButton>(R.id.btnPowerGuide)?.setOnClickListener { (activity as? MainActivity)?.showPowerGuide() }
        view.findViewById<MaterialButton>(R.id.btnClearSync)?.setOnClickListener { (activity as? MainActivity)?.clearSyncMemory() }
        view.findViewById<MaterialButton>(R.id.btnCopyLog)?.setOnClickListener { copyLog() }

        // v8.2.1: 轨迹合并入口已移至关于页（cardMerge 从同步页移除）

        // 自动同步
        val switchAutoSync = view.findViewById<SwitchMaterial>(R.id.switchAutoSync)
        val sliderAutoInterval = view.findViewById<Slider>(R.id.sliderAutoInterval)
        val tvAutoInterval = view.findViewById<TextView>(R.id.tvAutoInterval)
        switchAutoSync.isChecked = prefs.isAutoSync()
        val interval = prefs.getAutoInterval().coerceAtLeast(15 * 60)
        sliderAutoInterval.value = interval.toFloat()
        tvAutoInterval.text = "${interval / 60}分钟"
        switchAutoSync.setOnCheckedChangeListener { _, checked ->
            prefs.setAutoSync(checked)
            val act = activity as? MainActivity
            if (checked) act?.startAutoSync() else act?.stopAutoSync()
        }
        sliderAutoInterval.addOnChangeListener { _, v, _ ->
            val sec = v.toInt().coerceAtLeast(15 * 60)
            prefs.setAutoInterval(sec)
            tvAutoInterval.text = "${sec / 60}分钟"
        }

        // v8.2.3.6: 新建任务入口——二级页向导（原样恢复；设置页「保存为任务」为第二入口）
        view.findViewById<TextView>(R.id.btnGoCreate)?.setOnClickListener {
            (activity as? MainActivity)?.openCreateTask()
        }
        refreshTaskState()

        tvLogReady = true
        flushPendingLogs()
        // v7.6.9: 加载持久化日志（自动同步/历史同步记录），App重开仍可见，避免"假同步"无日志
        // v8.2.3: 前台只回显最近 3 条（完整记录点「完整日志」）
        try {
            val logs = prefs.getPersistLogs().takeLast(3)
            if (logs.isNotEmpty()) {
                val tv = tvLog
                if (tv != null) {
                    tv.text = "━━━ 最近同步记录 ━━━\n" + logs.joinToString("\n")
                    logLineCount = logs.size + 1
                    logScrollView?.post { try { logScrollView?.fullScroll(ScrollView.FOCUS_DOWN) } catch (_: Exception) {} }
                }
            }
        } catch (_: Exception) {}
    }

    private fun flushPendingLogs() {
        if (!tvLogReady) return
        for (msg in pendingLogs) appendLog(msg)
        pendingLogs.clear()
    }

    /** v7.7.7: 日志按类型着色 */
    private fun colorForMessage(msg: String): Int = when {
        msg.contains("❌") || msg.contains("失败") || msg.contains("被拒") || msg.contains("失效") -> R.color.log_error
        msg.contains("✅") || msg.contains("上传成功") || msg.contains("登录成功") || msg.contains("登录有效") || msg.contains("完成") -> R.color.log_success
        msg.contains("⏭️") || msg.contains("跳过") -> R.color.log_skip
        msg.contains("📥") || msg.contains("📤") || msg.contains("📋") || msg.contains("💾") || msg.contains("🔄") || msg.contains("📊") || msg.contains("🚀") -> R.color.log_info
        msg.contains("━━━") -> R.color.log_time
        else -> R.color.log_normal
    }

    /** MainActivity调用：追加日志（时间戳浅灰小字 + 消息分层着色）
     *  v8.1.3: 防御 Fragment detached（后台同步/协程回调时页面已销毁会 requireContext 崩溃） */
    // v8.2.0: 日志性能优化——增量追加 + 行数上限 + 滚动防抖（修复同步时主线程卡顿）
    private var logLineCount = 0
    private val MAX_LOG_LINES = 500        // 超过后截断头部，保留尾部
    private val TRIM_KEEP_LINES = 300      // 截断时保留的行数
    private var lastScrollPost = 0L

    fun appendLog(message: String) {
        val ctx = context
        if (ctx == null || isDetached || !isAdded) {
            // Fragment 已销毁：日志挂起，等下次进入页面时 flushPendingLogs 补显
            val ts0 = try { SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date()) } catch (_: Exception) { "??:??:??" }
            pendingLogs.add("[$ts0] $message")
            return
        }
        try {
            val ts = try { SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date()) } catch (_: Exception) { "??:??:??" }
            val tv = tvLog
            if (tv == null) {
                pendingLogs.add("[$ts] $message")
                return
            }
            // v8.2.0: 增量追加——只构造新行，TextView.append 增量绘制，不再整体拷贝历史（旧实现每次 O(n) 重建，748条同步把主线程拖死）
            val sb = SpannableStringBuilder()
            if (tv.length() > 0) sb.append('\n')

            val tsStart = sb.length
            sb.append("[$ts] ")
            sb.setSpan(AbsoluteSizeSpan(11, true), tsStart, sb.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
            sb.setSpan(ForegroundColorSpan(ctx.getColor(R.color.log_time)), tsStart, sb.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)

            val msgStart = sb.length
            sb.append(message)
            sb.setSpan(ForegroundColorSpan(ctx.getColor(colorForMessage(message))), msgStart, sb.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)

            tv.append(sb)
            logLineCount++
            // v8.2.3: 前台只保留最近 3 条（完整日志走持久化记录，「完整日志」按钮查看；3行重建成本极低，避免大日志拖慢主线程）
            if (logLineCount > 3) {
                val cur = tv.text.toString()
                val nl = cur.indexOf('\n')
                if (nl > 0) {
                    tv.text = cur.substring(nl + 1)
                    logLineCount = 3
                }
            }
            // 行数上限：低频截断（仅超限时重建一次尾部，正常增量无成本）
            if (logLineCount > MAX_LOG_LINES) {
                val all = tv.text
                val text = all.toString()
                val nl = text.indexOf('\n')
                if (nl in 1 until text.length - 1) {
                    val trimmed = text.substring(nl + 1)
                    tv.text = trimmed
                    logLineCount = TRIM_KEEP_LINES
                }
            }
            // 滚动防抖：≥200ms 才 post 一次（旧实现每条都 post，主线程消息堆积）
            if (isAutoScroll) {
                val now = System.currentTimeMillis()
                if (now - lastScrollPost >= 200) {
                    lastScrollPost = now
                    logScrollView?.post { try { logScrollView?.fullScroll(ScrollView.FOCUS_DOWN) } catch (_: Exception) {} }
                }
            }
        } catch (_: Exception) {
            // 任何 UI 状态异常都不允许冒泡到主线程导致崩溃；日志可丢失
        }
    }

    /** v7.7.8: MainActivity调用——更新顶部统计卡片（成功/跳过/失败） */
    fun setStats(ok: Int, skip: Int, fail: Int) {
        tvStatOk?.text = ok.toString()
        tvStatSkip?.text = skip.toString()
        tvStatFail?.text = fail.toString()
    }

    // ===== v8.2.2: 同步任务区 =====
    private var containerTasks: LinearLayout? = null
    private var tvTaskHint: TextView? = null

    /** 渲染任务卡列表 + 批量同步互斥置灰（MainActivity 任务状态变化时调用） */
    fun refreshTaskState() {
        val view = view ?: return
        if (containerTasks == null) containerTasks = view.findViewById(R.id.containerTasks)
        if (tvTaskHint == null) tvTaskHint = view.findViewById(R.id.tvTaskHint)
        val container = containerTasks ?: return
        try {
            val tasks = prefs.getTasks()
            tvTaskHint?.text = "${tasks.size} 个任务"
            container.removeAllViews()
            val act = activity as? MainActivity
            val running = act?.isTaskRunning == true
            for (task in tasks) {
                container.addView(taskCard(task, running), LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT))
            }
            if (tasks.isEmpty()) {
                container.addView(TextView(requireContext()).apply {
                    text = "还没有任务。点击下方「＋ 新建任务」创建（也可在设置页配置后点「保存为任务」）"
                    textSize = 12f
                    setTextColor(requireContext().getColor(R.color.text_secondary))
                    setPadding(0, dp8(6f), 0, dp8(2f))
                })
            }
            // 批量同步互斥：任务运行中开始同步置灰
            val btnS = btnSync
            btnS?.isEnabled = !running
            btnS?.alpha = if (running) 0.4f else 1f
            if (running) btnS?.text = "⏳ 任务运行中..." else if (btnS?.text?.contains("同步中") != true) btnS?.text = "🚴 开始同步"
        } catch (_: Exception) {}
    }

    private fun taskCard(task: com.jichi.ob.model.SyncTask, anyRunning: Boolean): com.google.android.material.card.MaterialCardView {
        val ctx = requireContext()
        val card = com.google.android.material.card.MaterialCardView(ctx).apply {
            radius = dp8(12f).toFloat()
            elevation = 0f
            strokeWidth = dp8(1f)
            setStrokeColor(ctx.getColor(if (task.enabled) R.color.primary_light else R.color.divider))
            setCardBackgroundColor(android.graphics.Color.WHITE)
        }
        val inner = LinearLayout(ctx).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp8(10f), dp8(8f), dp8(10f), dp8(8f))
        }
        // 第一行：名称 + 运行/停止按钮
        val row1 = LinearLayout(ctx).apply { orientation = LinearLayout.HORIZONTAL; gravity = android.view.Gravity.CENTER_VERTICAL }
        row1.addView(TextView(ctx).apply {
            text = task.name
            textSize = 13f
            setTypeface(null, android.graphics.Typeface.BOLD)
            setTextColor(ctx.getColor(R.color.text_primary))
            maxLines = 1
            ellipsize = android.text.TextUtils.TruncateAt.END
        }, LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f))
        val runBtn = TextView(ctx).apply {
            text = if (anyRunning) "运行中…" else "▶ 运行"
            textSize = 11f
            gravity = android.view.Gravity.CENTER
            setTextColor(ctx.getColor(R.color.white))
            setBackgroundResource(R.drawable.primary_btn_bg)
            setPadding(dp8(10f), dp8(4f), dp8(10f), dp8(4f))
            isClickable = !anyRunning
            if (!anyRunning) setOnClickListener { (activity as? MainActivity)?.runTask(task) }
        }
        row1.addView(runBtn)
        inner.addView(row1)
        // 第二行：链路信息
        inner.addView(TextView(ctx).apply {
            val src = task.sources.mapNotNull { DataSource.fromShortName(it) }.joinToString("、") { it.displayName }
            val tgt = task.targets.mapNotNull { DataSource.fromShortName(it) }.joinToString("、") { it.displayName }
            text = "$src  →  $tgt"
            textSize = 11f
            setTextColor(ctx.getColor(R.color.text_secondary))
            maxLines = 1
            ellipsize = android.text.TextUtils.TruncateAt.END
        }, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp8(3f) })
        // 第三行：增量/强制 + 最近运行 + 删除
        val row3 = LinearLayout(ctx).apply { orientation = LinearLayout.HORIZONTAL; gravity = android.view.Gravity.CENTER_VERTICAL }
        row3.addView(TextView(ctx).apply {
            text = buildString {
                if (task.incremental) append("增量")
                if (task.force) { if (isNotEmpty()) append("·"); append("强制重传") }
                if (task.autoSync) { if (isNotEmpty()) append("·"); append("自动") }
                if (isEmpty()) append("全量")
            }
            textSize = 10f
            setTextColor(ctx.getColor(R.color.log_info))
        })
        row3.addView(TextView(ctx).apply {
            text = "  最近: " + when {
                task.lastRunOk + task.lastRunSkip + task.lastRunFail == 0 -> "未运行"
                else -> "成功${task.lastRunOk} 跳过${task.lastRunSkip} 失败${task.lastRunFail}"
            }
            textSize = 10f
            setTextColor(ctx.getColor(R.color.text_secondary))
        }, LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f))
        val delBtn = TextView(ctx).apply {
            text = "🗑"
            textSize = 12f
            setTextColor(ctx.getColor(R.color.log_error))
            setPadding(dp8(8f), dp8(2f), dp8(2f), dp8(2f))
            setOnClickListener {
                androidx.appcompat.app.AlertDialog.Builder(ctx)
                    .setTitle("删除任务")
                    .setMessage("确定删除任务「${task.name}」吗？已缓存的记录会保留。")
                    .setPositiveButton("删除") { _, _ ->
                        prefs.deleteTask(task.id)
                        refreshTaskState()
                    }
                    .setNegativeButton("取消", null)
                    .show()
            }
        }
        row3.addView(delBtn)
        inner.addView(row3, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp8(4f) })
        card.addView(inner)
        return card
    }

    private fun dp8(v: Float): Int = (v * resources.displayMetrics.density).toInt()

    /** MainActivity调用：设置同步中状态 */
    fun setSyncing(syncing: Boolean) {
        com.jichi.ob.AutoSyncWorker.syncing = syncing
        val btnS = btnSync ?: return
        val btnT = btnStop ?: return
        val pb = progressBar ?: return
        btnS.isEnabled = !syncing
        btnT.isEnabled = syncing
        btnS.text = if (syncing) "⏳ 同步中..." else "🚴 开始同步"
        pb.visibility = if (syncing) View.VISIBLE else View.GONE
        if (syncing) pb.setProgressIndeterminate(true)
    }

    fun setProgressIndeterminate(v: Boolean) { progressBar?.setProgressIndeterminate(v) }
    fun setProgressMax(max: Int) { progressBar?.setProgressMax(max) }
    // v8.2.0: 进度节流——≥120ms 才真正刷新（进度条为连续值，合并感知不到跳变；避免748条同步高频切主线程）
    private var lastProgressUi = 0L
    fun setProgress(cur: Int) {
        val now = System.currentTimeMillis()
        if (now - lastProgressUi < 120) return
        lastProgressUi = now
        progressBar?.setProgress(cur)
    }

    /** v8.2.3: 完整日志后台覆盖页（读持久化记录，滚动查看 + 一键复制） */
    private fun showFullLog() {
        val ctx = requireContext()
        val logs = try { prefs.getPersistLogs().takeLast(200) } catch (_: Exception) { emptyList() }
        val content = TextView(ctx).apply {
            text = if (logs.isEmpty()) "（暂无持久化日志）" else logs.joinToString("\n")
            textSize = 11f
            setTextColor(ctx.getColor(R.color.log_normal))
            setPadding(dp8(16f), dp8(12f), dp8(16f), dp8(12f))
        }
        val sv = ScrollView(ctx).apply { addView(content) }
        androidx.appcompat.app.AlertDialog.Builder(ctx)
            .setTitle("完整运行日志（最近 ${logs.size} 条）")
            .setView(sv)
            .setNegativeButton("关闭", null)
            .setPositiveButton("复制") { _, _ ->
                (ctx.getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager)
                    .setPrimaryClip(ClipData.newPlainText("运行日志", logs.joinToString("\n")))
                Toast.makeText(ctx, "已复制", Toast.LENGTH_SHORT).show()
            }
            .show()
    }

    private fun copyLog() {
        val log = tvLog?.text?.toString() ?: ""
        if (log.isNotBlank()) {
            (requireContext().getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager)
                .setPrimaryClip(ClipData.newPlainText("运行日志", log))
            Toast.makeText(requireContext(), "日志已复制", Toast.LENGTH_SHORT).show()
        }
    }
}

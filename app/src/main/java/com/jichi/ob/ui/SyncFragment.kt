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
import android.widget.ScrollView
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.google.android.material.button.MaterialButton
import com.google.android.material.slider.Slider
import com.google.android.material.switchmaterial.SwitchMaterial
import com.jichi.ob.MainActivity
import com.jichi.ob.R
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
        view.findViewById<TextView>(R.id.btnClearLog).setOnClickListener {
            tvLog?.text = ""
            Toast.makeText(requireContext(), "日志已清空", Toast.LENGTH_SHORT).show()
        }

        // 操作按钮
        btnSync?.setOnClickListener { (activity as? MainActivity)?.startSync() }
        btnStop?.setOnClickListener { (activity as? MainActivity)?.stopSync() }
        view.findViewById<MaterialButton>(R.id.btnTestDownload)?.setOnClickListener { (activity as? MainActivity)?.testDownload() }
        view.findViewById<MaterialButton>(R.id.btnPowerGuide)?.setOnClickListener { (activity as? MainActivity)?.showPowerGuide() }
        view.findViewById<MaterialButton>(R.id.btnClearSync)?.setOnClickListener { (activity as? MainActivity)?.clearSyncMemory() }
        view.findViewById<MaterialButton>(R.id.btnCopyLog)?.setOnClickListener { copyLog() }

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

        tvLogReady = true
        flushPendingLogs()
        // v7.6.9: 加载持久化日志（自动同步/历史同步记录），App重开仍可见，避免"假同步"无日志
        try {
            val logs = prefs.getPersistLogs().takeLast(80)
            if (logs.isNotEmpty()) {
                val tv = tvLog
                if (tv != null) {
                    tv.text = "━━━ 最近同步记录 ━━━\n" + logs.joinToString("\n")
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

    /** MainActivity调用：追加日志（时间戳浅灰小字 + 消息分层着色） */
    fun appendLog(message: String) {
        val ts = try { SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date()) } catch (_: Exception) { "??:??:??" }
        val tv = tvLog
        if (tv == null) {
            pendingLogs.add("[$ts] $message")
            return
        }
        val cur = tv.text
        val sb: SpannableStringBuilder = when {
            cur is SpannableStringBuilder -> cur
            cur != null && cur.isNotEmpty() && cur.toString() != "等待操作..." -> SpannableStringBuilder(cur)
            else -> SpannableStringBuilder()
        }
        if (sb.length > 0) sb.append('\n')

        // 时间戳段：浅灰小字
        val tsStart = sb.length
        sb.append("[$ts] ")
        sb.setSpan(AbsoluteSizeSpan(11, true), tsStart, sb.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        sb.setSpan(ForegroundColorSpan(requireContext().getColor(R.color.log_time)), tsStart, sb.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)

        // 消息段：按类型着色
        val msgStart = sb.length
        sb.append(message)
        sb.setSpan(ForegroundColorSpan(requireContext().getColor(colorForMessage(message))), msgStart, sb.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)

        tv.text = sb
        if (isAutoScroll) logScrollView?.post { try { logScrollView?.fullScroll(ScrollView.FOCUS_DOWN) } catch (_: Exception) {} }
    }

    /** v7.7.8: MainActivity调用——更新顶部统计卡片（成功/跳过/失败） */
    fun setStats(ok: Int, skip: Int, fail: Int) {
        tvStatOk?.text = ok.toString()
        tvStatSkip?.text = skip.toString()
        tvStatFail?.text = fail.toString()
    }

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
    fun setProgress(cur: Int) { progressBar?.setProgress(cur) }

    private fun copyLog() {
        val log = tvLog?.text?.toString() ?: ""
        if (log.isNotBlank()) {
            (requireContext().getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager)
                .setPrimaryClip(ClipData.newPlainText("运行日志", log))
            Toast.makeText(requireContext(), "日志已复制", Toast.LENGTH_SHORT).show()
        }
    }
}

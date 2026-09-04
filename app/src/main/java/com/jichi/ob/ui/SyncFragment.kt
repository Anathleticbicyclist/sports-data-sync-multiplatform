package com.jichi.ob.ui

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.os.Bundle
import android.text.SpannableString
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ScrollView
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.google.android.material.button.MaterialButton
import com.google.android.material.progressindicator.LinearProgressIndicator
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
 * 自动同步 + 开始/停止/测试/清记忆 + 进度 + 运行日志
 */
class SyncFragment : Fragment() {

    private lateinit var prefs: PrefsManager
    private var tvLog: TextView? = null
    private var logScrollView: ScrollView? = null
    private var progressBar: LinearProgressIndicator? = null
    private var btnSync: MaterialButton? = null
    private var btnStop: MaterialButton? = null
    private var tvLogReady = false
    private val pendingLogs = mutableListOf<String>()

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
    }

    private fun flushPendingLogs() {
        if (!tvLogReady) return
        for (msg in pendingLogs) appendLog(msg)
        pendingLogs.clear()
    }

    /** MainActivity调用：追加日志 */
    fun appendLog(message: String) {
        val ts = try { SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date()) } catch (_: Exception) { "??:??:??" }
        val tv = tvLog
        if (tv == null) {
            pendingLogs.add("[$ts] $message")
            return
        }
        val cur = tv.text?.toString() ?: ""
        tv.text = if (cur.isBlank() || cur == "等待操作...") "[$ts] $message" else "$cur\n[$ts] $message"
        logScrollView?.post { try { logScrollView?.fullScroll(ScrollView.FOCUS_DOWN) } catch (_: Exception) {} }
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
        if (syncing) pb.isIndeterminate = true
    }

    fun setProgressIndeterminate(v: Boolean) { progressBar?.isIndeterminate = v }
    fun setProgressMax(max: Int) { progressBar?.max = max }
    fun setProgress(cur: Int) { progressBar?.progress = cur }

    private fun copyLog() {
        val log = tvLog?.text?.toString() ?: ""
        if (log.isNotBlank()) {
            (requireContext().getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager)
                .setPrimaryClip(ClipData.newPlainText("运行日志", log))
            Toast.makeText(requireContext(), "日志已复制", Toast.LENGTH_SHORT).show()
        }
    }
}

package com.jichi.ob.util

import android.util.Log
import com.jichi.ob.MainActivity
import com.jichi.ob.api.GarminApi
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * P1 Step 1: 应用日志——从 MainActivity 抽出的日志队列/节流刷新与时间格式化。
 * MainActivity 保留 private 委托 appendLog()/fmtTime()/flushGarminDebugLogs()，内部调用点零改动。
 */
class AppLog(private val activity: MainActivity) {

    companion object {
        private const val TAG = "JichiOB"
    }

    private val logQueue = java.util.concurrent.ConcurrentLinkedQueue<String>()
    private var logFlushing = false

    internal fun append(message: String) {
        Log.i(TAG, message)
        activity.prefs.appendPersistLog(message)
        // v8.5.1: 节流批量刷新，避免每条日志都runOnUiThread阻塞主线程导致其他页面空白
        logQueue.add(message)
        if (logFlushing) return
        logFlushing = true
        android.os.Handler(android.os.Looper.getMainLooper()).postDelayed({
            logFlushing = false
            val batch = StringBuilder()
            while (true) {
                val line = logQueue.poll() ?: break
                batch.append(line).append('\n')
            }
            if (batch.isNotEmpty()) {
                try { activity.syncFragment.appendLogBatch(batch.toString()) } catch (_: Exception) {}
            }
        }, 200)
    }

    /** v8.3.5: 毫秒时间戳 → "MM-dd HH:mm"（游标日志显示） */

    internal fun fmtTime(ms: Long): String = try {
        java.text.SimpleDateFormat("MM-dd HH:mm", java.util.Locale.getDefault()).format(Date(ms))
    } catch (e: Exception) { ms.toString() }

    // v6.7.5: 输出GarminApi调试日志到界面（转发SyncFragment）

    internal fun flushGarminDebugLogs() {
        try {
            val logs = GarminApi.debugLogs
            synchronized(logs) {
                if (logs.isNotEmpty()) {
                    for (line in logs) { try { activity.syncFragment.appendLog(line) } catch (_: Exception) {} }
                    logs.clear()
                }
            }
        } catch (_: Exception) {}
    }

}

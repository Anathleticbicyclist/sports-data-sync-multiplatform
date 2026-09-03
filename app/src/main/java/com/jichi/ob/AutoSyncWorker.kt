package com.jichi.ob

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.os.Build
import android.util.Log
import androidx.core.app.NotificationCompat
import androidx.work.CoroutineWorker
import androidx.work.ForegroundInfo
import androidx.work.WorkerParameters
import com.jichi.ob.api.*
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import com.jichi.ob.util.PrefsManager
import kotlinx.coroutines.delay
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * v7.5.5: 后台自动同步Worker（WorkManager调度）
 * v7.5.6: 修复闪退(manifest前台服务声明)、关闭后通知不消失(onStopped取消)、
 *         增强状态栏信息(源→目标、间隔、最近检测日期与状态、下次检测时间)
 *
 * 替代原AutoSyncService前台Service方案：
 * - 系统调度，跨开机自动恢复，Doze/省电模式下仍可执行
 * - 最低间隔15分钟（PeriodicWorkRequest限制）
 * - 实际执行时间由系统优化，不保证精确
 */
class AutoSyncWorker(
    context: Context,
    params: WorkerParameters
) : CoroutineWorker(context, params) {
    companion object {
        private const val TAG = "AutoSyncWorker"
        private const val NOTIF_ID_FOREGROUND = 1002
        private const val NOTIF_ID_SUMMARY = 1003
        private const val CHANNEL_ID = "jichi_ob_autosync"
        const val WORK_TAG = "jichi_ob_autosync_work"

        /** 全局同步互斥：避免后台自动同步与前台手动同步并发执行 */
        @Volatile
        var syncing: Boolean = false

        /** 取消所有自动同步通知（关闭自动同步时调用） */
        fun cancelAllNotifications(context: Context) {
            val nm = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            nm.cancel(NOTIF_ID_FOREGROUND)
            nm.cancel(NOTIF_ID_SUMMARY)
        }
    }

    private val prefs = PrefsManager(applicationContext)
    private val igpsportApi = IgpsportApi()
    private val xingzheApi = XingzheApi()
    private val mageneApi = MageneApi()
    private val blackbirdApi = BlackbirdApi()
    private val brytonApi = BrytonApi()
    private val uploadEngine = UploadEngine()

    override suspend fun doWork(): Result {
        if (syncing) {
            Log.d(TAG, "手动同步进行中，跳过本次自动同步")
            return Result.success()
        }
        createNotificationChannel()

        val source = DataSource.fromShortName(prefs.getLastSource()) ?: DataSource.IGPSPORT
        val target = DataSource.fromShortName(prefs.getLastTarget()) ?: DataSource.OUTBASE
        val intervalSec = prefs.getAutoInterval().coerceAtLeast(900)
        val intervalMin = intervalSec / 60

        // v7.5.7: setForeground()在部分ROM(如vivo OriginOS+Android16)可能抛异常导致闪退
        // 包进try-catch，失败时降级为普通通知，保证不闪退
        var foregroundOk = false
        try {
            setForeground(createForegroundInfo(
                "正在检测: ${source.displayName}→${target.displayName}",
                source, target, intervalMin
            ))
            foregroundOk = true
            Log.d(TAG, "setForeground成功")
        } catch (e: Exception) {
            Log.e(TAG, "setForeground失败，降级为普通通知: ${e.message}", e)
            // 降级：发普通通知（不可保持后台存活，但不闪退）
            val nm = applicationContext.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            nm.notify(NOTIF_ID_FOREGROUND, buildForegroundNotification(
                "正在检测: ${source.displayName}→${target.displayName}",
                source, target, intervalMin
            ))
        }

        return try {
            val (synced, lastTitle, detectedDate) = doSync(source, target)

            // 记录最近同步信息
            prefs.setLastAutoSyncTime(System.currentTimeMillis())
            prefs.setLastDetectedDate(detectedDate)
            val resultText = if (synced > 0) "新上传${synced}条" else "无最新(已上传)"
            prefs.setLastAutoSyncResult(resultText)

            // 同步完成后发摘要通知（可手动清除，显示最近状态+下次检测时间）
            postSummaryNotification(source, target, intervalMin, synced, lastTitle, detectedDate)

            Result.success()
        } catch (e: Exception) {
            Log.e(TAG, "Auto sync error", e)
            try {
                updateForeground("同步出错: ${e.message?.take(30) ?: "未知"}", source, target, intervalMin)
            } catch (_: Exception) {}
            Result.retry()
        } finally {
            // v7.5.6: Worker正常结束或被取消(用户关闭自动同步)时，取消前台通知
            // CoroutineWorker.onStopped是final不可override，用finally替代
            try {
                val nm = applicationContext.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
                nm.cancel(NOTIF_ID_FOREGROUND)
            } catch (_: Exception) {}
        }
    }

    private suspend fun doSync(source: DataSource, target: DataSource): Triple<Int, String, String> {
        val sourceCred = prefs.getCredential(source) ?: return Triple(0, "", "未登录")
        val targetCred = prefs.getCredential(target) ?: return Triple(0, "", "目标未登录")
        syncing = true
        try {
            val activities = when (source) {
                DataSource.IGPSPORT -> igpsportApi.getActivities(sourceCred, 0, 8)
                DataSource.XINGZHE -> xingzheApi.getActivities(sourceCred, 0, 8)
                DataSource.MAGENE -> mageneApi.getActivities(sourceCred, 0, 8)
                DataSource.BLACKBIRD -> blackbirdApi.getActivities(sourceCred, 0, 8)
                DataSource.BRYTON -> brytonApi.getActivities(sourceCred, 0, 8)
                else -> emptyList()
            }

            // 记录源平台最新活动日期（用于通知显示"最近检测的运动日期"）
            val detectedDate = activities.firstOrNull()?.startTime ?: "无记录"

            var synced = 0
            var lastTitle = ""
            for (record in activities.take(5)) {
                try {
                    val syncKey = "${source.shortName}_${record.id}_to_${target.shortName}"
                    if (prefs.isSynced(syncKey)) continue
                    val data = downloadActivity(source, sourceCred, record) ?: continue
                    val csrf = if (target == DataSource.XINGZHE) (prefs.getXingzheCsrf() ?: "") else ""
                    val upExtra = if (csrf.isNotEmpty()) mapOf("csrf" to csrf) else emptyMap()
                    // 迈金/百锐腾上传需WebView真实文件选择（需前台Activity），后台跳过
                    if (target == DataSource.MAGENE) { lastTitle = "迈金上传需前台同步"; continue }
                    if (target == DataSource.BRYTON) { lastTitle = "百锐腾上传需前台同步"; continue }
                    val result = uploadEngine.upload(target, targetCred, data, record, upExtra)
                    if (result.success) {
                        prefs.addSyncedId(syncKey)
                        synced++
                        lastTitle = record.title.take(15)
                        updateForeground(
                            "已上传${synced}条: ${record.title.take(12)}",
                            source, target, intervalMin = prefs.getAutoInterval().coerceAtLeast(900) / 60
                        )
                    } else {
                        Log.w(TAG, "AutoSync upload failed: ${result.message}")
                    }
                    delay(200)
                } catch (e: Exception) {
                    Log.w(TAG, "AutoSync item error", e)
                }
            }
            return Triple(synced, lastTitle, detectedDate)
        } finally {
            syncing = false
        }
    }

    private suspend fun downloadActivity(source: DataSource, cred: String, record: ActivityRecord): ByteArray? {
        return when (source) {
            DataSource.IGPSPORT -> igpsportApi.downloadFitFile(cred, record.id, record.extra)
            DataSource.XINGZHE -> { val (bytes, _) = xingzheApi.downloadGpxOrFit(cred, record.id); bytes }
            DataSource.MAGENE -> {
                try { mageneApi.downloadFit(cred, record.id).data } catch (_: Exception) { null }
            }
            DataSource.BLACKBIRD -> blackbirdApi.downloadActivity(cred, record.id)
            DataSource.BRYTON -> {
                try { brytonApi.downloadFit(cred, record.id) } catch (_: Exception) { brytonApi.downloadGpx(cred, record.id) }
            }
            else -> null
        }
    }

    // ==================== 通知构建 ====================

    private fun createForegroundInfo(message: String, source: DataSource, target: DataSource, intervalMin: Int): ForegroundInfo {
        return ForegroundInfo(NOTIF_ID_FOREGROUND, buildForegroundNotification(message, source, target, intervalMin))
    }

    /** 同步进行中的前台通知：不可清除，显示源→目标、间隔、当前动作 */
    private fun buildForegroundNotification(message: String, source: DataSource, target: DataSource, intervalMin: Int): Notification {
        val pendingIntent = getLaunchPendingIntent()
        val bigText = "$message\n${source.displayName}→${target.displayName} | 间隔${intervalMin}分钟"
        return NotificationCompat.Builder(applicationContext, CHANNEL_ID)
            .setContentTitle("鸡翅幸哲迈进OB 自动同步中")
            .setContentText("${source.displayName}→${target.displayName} | $message")
            .setStyle(NotificationCompat.BigTextStyle().bigText(bigText))
            .setSmallIcon(android.R.drawable.ic_popup_sync)
            .setOngoing(true)
            .setContentIntent(pendingIntent)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .build()
    }

    private fun updateForeground(message: String, source: DataSource, target: DataSource, intervalMin: Int) {
        val nm = applicationContext.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        nm.notify(NOTIF_ID_FOREGROUND, buildForegroundNotification(message, source, target, intervalMin))
    }

    /**
     * v7.5.6: 同步完成后的摘要通知（可手动清除）
     * - 有新文件: "✅ 新上传X条 | 最近: 日期 标题"
     * - 无新文件: "📋 无最新 | 最近: 日期(已上传)"
     * - 底部: 源→目标 | 间隔 | 下次检测时间
     */
    private fun postSummaryNotification(
        source: DataSource, target: DataSource, intervalMin: Int,
        synced: Int, lastTitle: String, detectedDate: String
    ) {
        val nm = applicationContext.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        val pendingIntent = getLaunchPendingIntent()

        val dateStr = formatDate(detectedDate)
        val statusLine = if (synced > 0) {
            "✅ 新上传${synced}条 | 最近: $dateStr $lastTitle"
        } else {
            "📋 无最新 | 最近: $dateStr(已上传)"
        }
        val bigText = "$statusLine\n${source.displayName}→${target.displayName} | 间隔${intervalMin}分钟 | 下次检测: 约${intervalMin}分钟后"

        val notification = NotificationCompat.Builder(applicationContext, CHANNEL_ID)
            .setContentTitle("鸡翅幸哲迈进OB 自动同步")
            .setContentText(statusLine)
            .setStyle(NotificationCompat.BigTextStyle().bigText(bigText))
            .setSmallIcon(android.R.drawable.ic_popup_sync)
            .setOngoing(false)  // 可手动清除
            .setAutoCancel(true)
            .setContentIntent(pendingIntent)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .build()
        nm.notify(NOTIF_ID_SUMMARY, notification)
    }

    private fun getLaunchPendingIntent(): PendingIntent {
        val intent = applicationContext.packageManager.getLaunchIntentForPackage(applicationContext.packageName)
        return PendingIntent.getActivity(
            applicationContext, 0, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
    }

    /** 将各种格式的日期字符串统一为 MM-dd HH:mm 显示 */
    private fun formatDate(raw: String): String {
        if (raw.isBlank()) return "无记录"
        return try {
            // 尝试常见格式
            val formats = listOf(
                "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd'T'HH:mm:ss",
                "yyyy/MM/dd HH:mm:ss", "yyyy-MM-dd HH:mm",
                "MMM dd, yyyy HH:mm:ss"
            )
            for (fmt in formats) {
                try {
                    val sdf = SimpleDateFormat(fmt, Locale.US)
                    val date = sdf.parse(raw)
                    if (date != null) {
                        return SimpleDateFormat("MM-dd HH:mm", Locale.getDefault()).format(date)
                    }
                } catch (_: Exception) {}
            }
            raw.take(16)  // 解析失败则截断显示
        } catch (_: Exception) {
            raw.take(16)
        }
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val nm = applicationContext.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            // 防止重复创建
            if (nm.getNotificationChannel(CHANNEL_ID) == null) {
                val channel = NotificationChannel(CHANNEL_ID, "自动同步", NotificationManager.IMPORTANCE_LOW)
                channel.description = "后台自动同步运动数据"
                nm.createNotificationChannel(channel)
            }
        }
    }
}

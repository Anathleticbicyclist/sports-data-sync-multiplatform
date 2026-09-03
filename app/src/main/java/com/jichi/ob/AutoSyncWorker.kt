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

/**
 * v7.5.5: 后台自动同步Worker（WorkManager调度）
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
        private const val NOTIF_ID = 1002
        private const val CHANNEL_ID = "jichi_ob_autosync"
        const val WORK_TAG = "jichi_ob_autosync_work"

        /** 全局同步互斥：避免后台自动同步与前台手动同步并发执行 */
        @Volatile
        var syncing: Boolean = false
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
        setForeground(createForegroundInfo("正在检测新数据..."))

        return try {
            val source = DataSource.fromShortName(prefs.getLastSource()) ?: DataSource.IGPSPORT
            val target = DataSource.fromShortName(prefs.getLastTarget()) ?: DataSource.OUTBASE
            val result = doSync(source, target)
            val msg = if (result.first > 0) {
                "已同步${result.first}条新记录 (${result.second})"
            } else {
                "无新数据"
            }
            updateNotification(msg)
            Result.success()
        } catch (e: Exception) {
            Log.e(TAG, "Auto sync error", e)
            updateNotification("同步出错: ${e.message?.take(30)}")
            Result.retry()
        }
    }

    private suspend fun doSync(source: DataSource, target: DataSource): Pair<Int, String> {
        val sourceCred = prefs.getCredential(source) ?: return Pair(0, "未登录")
        val targetCred = prefs.getCredential(target) ?: return Pair(0, "目标未登录")
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
            var synced = 0
            var lastMsg = ""
            for (record in activities.take(5)) {
                try {
                    val syncKey = "${source.shortName}_${record.id}_to_${target.shortName}"
                    if (prefs.isSynced(syncKey)) continue
                    val data = downloadActivity(source, sourceCred, record) ?: continue
                    val csrf = if (target == DataSource.XINGZHE) (prefs.getXingzheCsrf() ?: "") else ""
                    val upExtra = if (csrf.isNotEmpty()) mapOf("csrf" to csrf) else emptyMap()
                    // 迈金/百锐腾上传需WebView真实文件选择（需前台Activity），后台跳过
                    if (target == DataSource.MAGENE) { lastMsg = "迈金上传需前台同步"; continue }
                    if (target == DataSource.BRYTON) { lastMsg = "百锐腾上传需前台同步"; continue }
                    val result = uploadEngine.upload(target, targetCred, data, record, upExtra)
                    if (result.success) {
                        prefs.addSyncedId(syncKey)
                        synced++
                        lastMsg = record.title.take(15)
                        updateNotification("已同步${synced}条: ${record.title.take(12)}")
                    } else {
                        Log.w(TAG, "AutoSync upload failed: ${result.message}")
                    }
                    delay(200)
                } catch (e: Exception) {
                    Log.w(TAG, "AutoSync item error", e)
                }
            }
            return Pair(synced, lastMsg)
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

    private fun createForegroundInfo(message: String): ForegroundInfo {
        val notification = buildNotification(message)
        return ForegroundInfo(NOTIF_ID, notification)
    }

    private fun buildNotification(message: String): Notification {
        val intent = applicationContext.packageManager.getLaunchIntentForPackage(applicationContext.packageName)
        val pendingIntent = PendingIntent.getActivity(
            applicationContext, 0, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
        return NotificationCompat.Builder(applicationContext, CHANNEL_ID)
            .setContentTitle("鸡翅幸哲迈进OB 自动同步")
            .setContentText(message)
            .setSmallIcon(android.R.drawable.ic_popup_sync)
            .setOngoing(true)
            .setContentIntent(pendingIntent)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .build()
    }

    private fun updateNotification(message: String) {
        val nm = applicationContext.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        nm.notify(NOTIF_ID, buildNotification(message))
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(CHANNEL_ID, "自动同步", NotificationManager.IMPORTANCE_LOW)
            channel.description = "后台自动同步运动数据"
            val nm = applicationContext.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            nm.createNotificationChannel(channel)
        }
    }
}

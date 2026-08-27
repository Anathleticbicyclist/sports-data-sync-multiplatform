package com.jichi.ob

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.IBinder
import android.util.Log
import androidx.core.app.NotificationCompat
import com.jichi.ob.api.*
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import com.jichi.ob.util.PrefsManager
import kotlinx.coroutines.*

/**
 * 后台自动同步前台服务
 * 保持通知栏常驻，定时检测新数据并同步
 */
class AutoSyncService : Service() {

    companion object {
        private const val TAG = "AutoSyncService"
        private const val NOTIF_ID = 1001
        private const val CHANNEL_ID = "jichi_ob_autosync"
        const val ACTION_START = "com.jichi.ob.START_AUTOSYNC"
        const val ACTION_STOP = "com.jichi.ob.STOP_AUTOSYNC"
        const val EXTRA_INTERVAL = "interval_seconds"

        fun start(context: Context, intervalSeconds: Int) {
            val intent = Intent(context, AutoSyncService::class.java).apply {
                action = ACTION_START
                putExtra(EXTRA_INTERVAL, intervalSeconds)
            }
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                context.startForegroundService(intent)
            } else {
                context.startService(intent)
            }
        }

        fun stop(context: Context) {
            val intent = Intent(context, AutoSyncService::class.java).apply {
                action = ACTION_STOP
            }
            context.startService(intent)
        }
    }

    private val serviceScope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var syncJob: Job? = null
    private var intervalSeconds = 300
    private lateinit var prefs: PrefsManager

    private val igpsportApi = IgpsportApi()
    private val xingzheApi = XingzheApi()
    private val mageneApi = MageneApi()
    private val blackbirdApi = BlackbirdApi()
    private val brytonApi = BrytonApi()
    private val outbaseApi = OutbaseApi()
    private val uploadEngine = UploadEngine()

    override fun onCreate() {
        super.onCreate()
        prefs = PrefsManager(this)
        createNotificationChannel()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_STOP -> {
                stopSelf()
                return START_NOT_STICKY
            }
            ACTION_START -> {
                intervalSeconds = intent.getIntExtra(EXTRA_INTERVAL, 300)
                startForeground(NOTIF_ID, buildNotification("自动同步已开启，间隔${formatInterval(intervalSeconds)}"))
                startAutoSyncLoop()
            }
        }
        return START_STICKY
    }

    private fun startAutoSyncLoop() {
        syncJob?.cancel()
        syncJob = serviceScope.launch {
            while (isActive) {
                try {
                    updateNotification("正在检测新数据...")
                    val source = DataSource.fromShortName(prefs.getLastSource()) ?: DataSource.IGPSPORT
                    val target = DataSource.fromShortName(prefs.getLastTarget()) ?: DataSource.OUTBASE
                    val result = doSync(source, target)
                    val msg = if (result.first > 0) {
                        "已同步${result.first}条新记录 (${result.second})"
                    } else {
                        "无新数据，下次检测${formatInterval(intervalSeconds)}后"
                    }
                    updateNotification(msg)
                } catch (e: Exception) {
                    Log.e(TAG, "Auto sync error", e)
                    updateNotification("同步出错: ${e.message?.take(30)}，重试中...")
                }
                delay(intervalSeconds * 1000L)
            }
        }
    }

    private suspend fun doSync(source: DataSource, target: DataSource): Pair<Int, String> {
        val sourceCred = prefs.getCredential(source) ?: return Pair(0, "未登录")
        val targetCred = prefs.getCredential(target) ?: return Pair(0, "目标未登录")

        val activities = when (source) {
            DataSource.IGPSPORT -> igpsportApi.getActivities(sourceCred, 0, 20)
            DataSource.XINGZHE -> xingzheApi.getActivities(sourceCred, 0, 20)
            DataSource.MAGENE -> mageneApi.getActivities(sourceCred, 0, 20)
            DataSource.BLACKBIRD -> blackbirdApi.getActivities(sourceCred, 0, 20)
            DataSource.BRYTON -> brytonApi.getActivities(sourceCred, 0, 20)
            else -> emptyList()
        }

        var synced = 0
        var lastMsg = ""
        for (record in activities.take(5)) {
            if (prefs.isSynced(record.id)) continue
            val data = downloadActivity(source, sourceCred, record) ?: continue
            val result = uploadEngine.upload(target, targetCred, data, record)
            if (result.success) {
                prefs.addSyncedId(record.id)
                synced++
                lastMsg = record.title.take(15)
            }
        }
        return Pair(synced, lastMsg)
    }

    private suspend fun downloadActivity(source: DataSource, cred: String, record: ActivityRecord): ByteArray? {
        return when (source) {
            DataSource.IGPSPORT -> igpsportApi.downloadFitFile(cred, record.id, record.extra)
            DataSource.XINGZHE -> { val (bytes, _) = xingzheApi.downloadGpxOrFit(cred, record.id); bytes }
            DataSource.MAGENE -> {
                try {
                    val result = mageneApi.downloadFit(cred, record.id)
                    result.data
                } catch (_: Exception) { null }
            }
            DataSource.BLACKBIRD -> blackbirdApi.downloadActivity(cred, record.id)
            DataSource.BRYTON -> { try { brytonApi.downloadFit(cred, record.id) } catch (_: Exception) { brytonApi.downloadGpx(cred, record.id) } }
            else -> null
        }
    }

    private fun buildNotification(message: String): Notification {
        val intent = packageManager.getLaunchIntentForPackage(packageName)
        val pendingIntent = PendingIntent.getActivity(
            this, 0, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("鸡翅幸哲迈进OB 自动同步")
            .setContentText(message)
            .setSmallIcon(android.R.drawable.ic_popup_sync)
            .setOngoing(true)
            .setContentIntent(pendingIntent)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .build()
    }

    private fun updateNotification(message: String) {
        val nm = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        nm.notify(NOTIF_ID, buildNotification(message))
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(CHANNEL_ID, "自动同步", NotificationManager.IMPORTANCE_LOW)
            channel.description = "后台自动同步运动数据"
            val nm = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            nm.createNotificationChannel(channel)
        }
    }

    private fun formatInterval(seconds: Int): String {
        return if (seconds >= 60) "${seconds / 60}分钟" else "${seconds}秒"
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        syncJob?.cancel()
        serviceScope.cancel()
        super.onDestroy()
    }
}

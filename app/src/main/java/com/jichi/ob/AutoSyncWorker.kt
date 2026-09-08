package com.jichi.ob

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.content.pm.ServiceInfo
import android.os.Build
import android.util.Log
import androidx.core.app.NotificationCompat
import androidx.work.CoroutineWorker
import androidx.work.ForegroundInfo
import androidx.work.WorkerParameters
import com.jichi.ob.api.*
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import com.jichi.ob.model.UploadSupport
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
    private val garminApi = GarminApi()
    private val wahooApi = WahooApi()
    private val uploadEngine = UploadEngine(applicationContext)

    override suspend fun doWork(): Result {
        if (syncing) {
            Log.d(TAG, "手动同步进行中，跳过本次自动同步")
            // v7.6.9: 跳过也要留痕，避免"假同步"用户无感知
            plog("⏭️ 自动同步被跳过：手动同步正在进行中")
            return Result.success()
        }
        createNotificationChannel()

        val source = DataSource.fromShortName(prefs.getLastSource()) ?: DataSource.IGPSPORT
        // v7.6.7: 一对多 - 自动同步读取多目标
        var targets = prefs.getLastTargets().mapNotNull { DataSource.fromShortName(it) }.distinct().filter { it != source }
        if (targets.isEmpty()) targets = listOf(DataSource.fromShortName(prefs.getLastTarget()) ?: DataSource.OUTBASE)
        val intervalSec = prefs.getAutoInterval().coerceAtLeast(900)
        val intervalMin = intervalSec / 60
        val targetNames = targets.joinToString("、") { it.displayName }

        // v7.5.7: setForeground()在部分ROM(如vivo OriginOS+Android16)可能抛异常导致闪退
        // 包进try-catch，失败时降级为普通通知，保证不闪退
        var foregroundOk = false
        try {
            setForeground(createForegroundInfo(
                "正在检测: ${source.displayName}→$targetNames",
                source, targets.first(), intervalMin
            ))
            foregroundOk = true
            Log.d(TAG, "setForeground成功")
        } catch (e: Exception) {
            Log.e(TAG, "setForeground失败，降级为普通通知: ${e.message}", e)
            // 降级：发普通通知（不可保持后台存活，但不闪退）
            val nm = applicationContext.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            nm.notify(NOTIF_ID_FOREGROUND, buildForegroundNotification(
                "正在检测: ${source.displayName}→$targetNames",
                source, targets.first(), intervalMin
            ))
        }

        return try {
            val result = doSync(source, targets)

            // 记录最近同步信息
            prefs.setLastAutoSyncTime(System.currentTimeMillis())
            prefs.setLastDetectedDate(result.detectedDate)
            val resultText = if (result.synced > 0) "新上传${result.synced}条" else "无最新(已上传)"
            prefs.setLastAutoSyncResult(resultText)

            // 同步完成后发摘要通知（可手动清除，显示最近状态+下次检测时间）
            postSummaryNotification(source, targets.first(), intervalMin, result, targetNames)

            Result.success()
        } catch (e: Exception) {
            Log.e(TAG, "Auto sync error", e)
            plog("❌ 自动同步出错: ${e.message?.take(60)}")
            try {
                updateForeground("同步出错: ${e.message?.take(30) ?: "未知"}", source, targets.first(), intervalMin)
                // v7.6.9: 失败也发通知，避免"假同步"用户无感知
                postFailureNotification(e.message?.take(60) ?: "未知错误", source, targetNames)
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

    private data class AutoSyncResult(
        val synced: Int, val skipped: Int, val failed: Int,
        val lastTitle: String, val detectedDate: String,
        val failedDetails: MutableList<String> = mutableListOf(),
        val successDetails: MutableList<String> = mutableListOf(),
        val skippedDetails: MutableList<String> = mutableListOf()
    )

    /** v7.6.9: 自动同步日志统一加[自动]前缀，与手动同步区分 */
    private fun plog(msg: String) = prefs.appendPersistLog("[自动] $msg")

    /** v7.6.9: 迈金列表401自动刷新token后重试一次 */
    private suspend fun getMageneActivitiesWithRefresh(token: String, skip: Int, limit: Int): List<ActivityRecord> {
        try {
            return mageneApi.getActivities(token, skip, limit)
        } catch (e: Exception) {
            if (e.message?.contains("过期") == true || e.message?.contains("401") == true) {
                val refresh = prefs.getMageneRefreshToken()
                if (!refresh.isNullOrEmpty()) {
                    val newTok = mageneApi.refreshToken(refresh)
                    if (newTok != null) {
                        prefs.saveMageneToken(newTok)
                        plog("🔄 迈金登录已过期，自动刷新token后重试")
                        return mageneApi.getActivities(newTok, skip, limit)
                    }
                }
            }
            throw e
        }
    }

    private suspend fun doSync(source: DataSource, targets: List<DataSource>): AutoSyncResult {
        val sourceCred = prefs.getCredential(source) ?: run {
            plog("❌ 自动同步: ${source.displayName} 未登录")
            return AutoSyncResult(0, 0, 0, "", "无记录")
        }
        // v7.6.7: 过滤未登录/不可用目标；迈金已走API可后台同步，百锐腾仍需前台
        val validTargets = targets.filter { t ->
            prefs.isLoggedIn(t) && (UploadSupport.fromDataSource(t).available)
                    && t != DataSource.BRYTON
        }
        if (validTargets.isEmpty()) {
            plog("⏭️ 自动同步: 无可用目标（未登录或上传不可用）")
            return AutoSyncResult(0, 0, 0, "", "无记录")
        }
        val validTargetNames = validTargets.joinToString("、") { it.displayName }
        // v7.6.9: 自动同步过程写入持久日志，用户可在同步页查看
        plog("⏰ 自动同步开始: ${source.displayName} → $validTargetNames")
        syncing = true
        try {
            plog("📥 [${source.displayName}] 获取活动列表...")
            val activities = try {
                when (source) {
                    DataSource.IGPSPORT -> igpsportApi.getActivities(sourceCred, 0, 8)
                    DataSource.XINGZHE -> xingzheApi.getActivities(sourceCred, 0, 8)
                    DataSource.MAGENE -> getMageneActivitiesWithRefresh(sourceCred, 0, 8)
                    DataSource.BLACKBIRD -> blackbirdApi.getActivities(sourceCred, 0, 8)
                    DataSource.BRYTON -> brytonApi.getActivities(sourceCred, 0, 8)
                    else -> emptyList()
                }
            } catch (e: Exception) {
                plog("❌ 自动同步: 获取列表失败 ${e.message?.take(60)}")
                throw e
            }
            plog("📋 获取到 ${activities.size} 条活动")

            // 记录源平台最新活动日期（用于通知显示"最近检测的运动日期"）
            val detectedDate = activities.firstOrNull()?.startTime ?: "无记录"

            var synced = 0
            var skipped = 0
            var failed = 0
            var lastTitle = ""
            val failedDetails = mutableListOf<String>()
            val successDetails = mutableListOf<String>()
            val skippedDetails = mutableListOf<String>()
            for (record in activities.take(5)) {
                try {
                    // v7.6.7: 多目标 - 任一目标未同步则处理；下载一次，上传到所有未同步目标
                    // v7.6.9: 自动同步保持【纯增量】（不读"忽略记忆"开关）——强制重传只作用于手动同步。
                    //   原因：多目标模式下"忽略记忆"开关曾被自动开启并污染prefs，导致自动同步每次全量重传最近5条，
                    //   通知恒显示"新上传5条"但实际平台已存在/去重，用户误以为"假同步"。自动同步本质是增量同步新记录。
                    val pendingTargets = validTargets.filter { t ->
                        !prefs.isSynced("${source.shortName}_${record.id}_to_${t.shortName}")
                    }
                    if (pendingTargets.isEmpty()) {
                        skipped++
                        plog("⏭️ 已同步跳过: ${record.title.take(20)}")
                        continue
                    }
                    val data = downloadActivity(source, sourceCred, record)
                    if (data == null || data.size < 100) {
                        failed++
                        plog("❌ 下载失败: ${record.title.take(20)}")
                        failedDetails.add("下载失败:${record.title.take(10)}")
                        continue
                    }
                    plog("⬇️ 下载: ${record.title.take(20)} (${data.size}字节)")
                    for (target in pendingTargets) {
                        val syncKey = "${source.shortName}_${record.id}_to_${target.shortName}"
                        var targetCred = prefs.getCredential(target) ?: continue
                        // v7.6.9: 佳明/Wahoo目标token过期自动刷新（与手动同步一致，避免后台上传直接失败）
                        if (target == DataSource.GARMIN_COM || target == DataSource.GARMIN_CN) {
                            val newCred = garminApi.ensureValidToken(target, targetCred)
                            if (newCred != targetCred) {
                                targetCred = newCred
                                if (target == DataSource.GARMIN_COM) prefs.saveGarminComToken(targetCred)
                                else prefs.saveGarminCnToken(targetCred)
                                plog("🔄 ${target.displayName} token已自动刷新")
                            }
                        }
                        if (target == DataSource.WAHOO) {
                            val wahooRefresh = prefs.getWahooRefresh()
                            val wahooClientId = if (WahooApi.isBuiltinConfigured()) WahooApi.BUILTIN_CLIENT_ID else prefs.getWahooClientId()
                            val wahooClientSecret = if (WahooApi.isBuiltinConfigured()) WahooApi.BUILTIN_CLIENT_SECRET else prefs.getWahooClientSecret()
                            if (!wahooRefresh.isNullOrEmpty() && !wahooClientId.isNullOrEmpty() && !wahooClientSecret.isNullOrEmpty()) {
                                val newToken = wahooApi.ensureValidToken(targetCred, wahooRefresh, wahooClientId, wahooClientSecret)
                                if (newToken != targetCred) {
                                    targetCred = newToken
                                    prefs.saveWahooToken(targetCred)
                                    plog("🔄 Wahoo token已自动刷新")
                                }
                            }
                        }
                        val csrf = if (target == DataSource.XINGZHE) (prefs.getXingzheCsrf() ?: "") else ""
                        val upExtra = if (csrf.isNotEmpty()) mapOf("csrf" to csrf) else emptyMap()
                        plog("📤 上传到 ${target.displayName}...")
                        val result = uploadEngine.upload(target, targetCred, data, record, upExtra)
                        if (result.success) {
                            prefs.addSyncedId(syncKey)
                            synced++
                            lastTitle = record.title.take(15)
                            successDetails.add("${formatDate(record.startTime)} ${record.title.take(20)} → ${target.displayName}")
                            plog("✅ 上传成功: ${target.displayName} - ${record.title.take(20)}")
                            updateForeground(
                                "已上传${synced}条: ${record.title.take(12)}",
                                source, target, intervalMin = prefs.getAutoInterval().coerceAtLeast(900) / 60
                            )
                        } else if (result.skipped) {
                            skipped++
                            prefs.addSyncedId(syncKey)
                            skippedDetails.add("${formatDate(record.startTime)} ${record.title.take(20)} → ${target.displayName}")
                            plog("⏭️ 已存在跳过: ${target.displayName}")
                        } else {
                            failed++
                            failedDetails.add("${record.title.take(12)}→${target.displayName}:${result.message.take(20)}")
                            plog("❌ 上传失败: ${target.displayName} - ${result.message.take(60)}")
                        }
                        delay(200)
                    }
                } catch (e: Exception) {
                    failed++
                    failedDetails.add(e.message?.take(20) ?: "未知")
                    Log.w(TAG, "AutoSync item error", e)
                    plog("❌ 自动同步单条异常: ${e.message?.take(50)}")
                }
            }
            plog("📊 自动同步完成: 成功$synced / 跳过$skipped / 失败$failed")
            return AutoSyncResult(synced, skipped, failed, lastTitle, detectedDate, failedDetails, successDetails, skippedDetails)
        } finally {
            syncing = false
        }
    }

    private suspend fun downloadActivity(source: DataSource, cred: String, record: ActivityRecord): ByteArray? {
        return when (source) {
            DataSource.IGPSPORT -> igpsportApi.downloadFitFile(cred, record.id, record.extra)
            DataSource.XINGZHE -> { val (bytes, _) = xingzheApi.downloadGpxOrFit(cred, record.id); bytes }
            DataSource.MAGENE -> {
                try {
                    val result = mageneApi.downloadFit(cred, record.id)
                    // v7.6.9: 与手动同步一致——fit_content接口下载的GCJ-02坐标FIT需转WGS84；
                    // 后台无WebView，用纯Kotlin实现FitGcj02Fixer（算法与WebView版magene_fix.js完全一致）
                    if (prefs.isGcj02Convert() && result.fromFitContent && isFit(result.data)) {
                        plog("🔄 迈金fit_content(GCJ-02)坐标转WGS84...")
                        val fixed = com.jichi.ob.util.FitGcj02Fixer.fix(result.data)
                        if (fixed != null) fixed else result.data
                    } else result.data
                } catch (_: Exception) { null }
            }
            DataSource.BLACKBIRD -> blackbirdApi.downloadActivity(cred, record.id)
            DataSource.BRYTON -> {
                try { brytonApi.downloadFit(cred, record.id) } catch (_: Exception) { brytonApi.downloadGpx(cred, record.id) }
            }
            else -> null
        }
    }

    private fun isFit(bytes: ByteArray): Boolean =
        bytes.size >= 14 && bytes[8] == '.'.code.toByte() && bytes[9] == 'F'.code.toByte()

    // ==================== 通知构建 ====================

    private fun createForegroundInfo(message: String, source: DataSource, target: DataSource, intervalMin: Int): ForegroundInfo {
        // v7.5.8: 必须用三参数构造函数显式指定foregroundServiceType，
        // 否则Android16+报InvalidForegroundServiceTypeException(type none)闪退
        return ForegroundInfo(
            NOTIF_ID_FOREGROUND,
            buildForegroundNotification(message, source, target, intervalMin),
            ServiceInfo.FOREGROUND_SERVICE_TYPE_DATA_SYNC
        )
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
     * v7.6.9: 显示成功/跳过/失败明细与目标平台
     */
    private fun postSummaryNotification(
        source: DataSource, target: DataSource, intervalMin: Int,
        result: AutoSyncResult, targetNames: String
    ) {
        val nm = applicationContext.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        val pendingIntent = getLaunchPendingIntent()

        val hasFail = result.failed > 0
        val statusLine = buildString {
            if (result.synced > 0) append("✅ 新上传${result.synced}条")
            if (result.synced > 0 && hasFail) append(" · ")
            if (hasFail) append("❌ 失败${result.failed}条")
            if (result.synced == 0 && !hasFail) append("📋 无新记录")
            if (result.skipped > 0) append(" · 跳过${result.skipped}")
        }
        val detail = buildString {
            if (result.synced > 0) {
                append("✅ 新上传${result.synced}条\n")
                result.successDetails.forEach { append(" · $it\n") }
            }
            if (result.failed > 0) {
                append("❌ 失败${result.failed}条\n")
                result.failedDetails.forEach { append(" · $it\n") }
            }
            if (result.skipped > 0) append("⏭️ 跳过${result.skipped}条（已在同步记忆）\n")
            append("源:${source.displayName} → $targetNames | 间隔${intervalMin}分钟 | 下次约${intervalMin}分钟后")
        }

        // v7.6.9: 有失败→红色错误图标 + 标题标注，但保持LOW静默（不响铃不震动，避免夜间自动同步骚扰）
        val notification = NotificationCompat.Builder(applicationContext, CHANNEL_ID)
            .setContentTitle(if (hasFail) "鸡翅幸哲迈进OB 自动同步（部分失败）" else "鸡翅幸哲迈进OB 自动同步")
            .setContentText(statusLine)
            .setStyle(NotificationCompat.BigTextStyle().bigText(detail))
            .setSmallIcon(if (hasFail) android.R.drawable.stat_notify_error else android.R.drawable.ic_popup_sync)
            .setOngoing(false)  // 可手动清除
            .setAutoCancel(true)
            .setContentIntent(pendingIntent)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .build()
        nm.notify(NOTIF_ID_SUMMARY, notification)
    }

    /** v7.6.9: 自动同步异常通知（用户可感知，不再静默失败） */
    private fun postFailureNotification(error: String, source: DataSource, targetNames: String) {
        try {
            val nm = applicationContext.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            val pendingIntent = getLaunchPendingIntent()
            val notification = NotificationCompat.Builder(applicationContext, CHANNEL_ID)
                .setContentTitle("鸡翅幸哲迈进OB 自动同步出错")
                .setContentText(error)
                .setStyle(NotificationCompat.BigTextStyle().bigText("$error\n${source.displayName}→$targetNames"))
                .setSmallIcon(android.R.drawable.stat_notify_error)
                .setAutoCancel(true)
                .setContentIntent(pendingIntent)
                .setPriority(NotificationCompat.PRIORITY_DEFAULT)
                .build()
            nm.notify(NOTIF_ID_SUMMARY, notification)
        } catch (e: Exception) { Log.e(TAG, "postFailureNotification error", e) }
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

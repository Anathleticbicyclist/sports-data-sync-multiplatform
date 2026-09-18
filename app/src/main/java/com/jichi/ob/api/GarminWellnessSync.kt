package com.jichi.ob.api

import com.jichi.ob.model.DataSource
import kotlinx.coroutines.delay
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Locale
import java.util.zip.ZipInputStream

/**
 * v8.3.5: 佳明健康数据同步编排（步数/睡眠/HRV/压力，CN↔COM）
 *
 * 思路借鉴 dailysync-rev（GPL-3.0，仅参考接口与思路，Kotlin 侧自实现）：
 * - 下载：GET {GC_API}/download-service/files/wellness/{yyyy-MM-dd} → zip
 * - 上传：multipart userfile → upload-service（本实现复用已验证的 /upload-service/upload + file 字段）
 * - 409 = 重复跳过；419 = 目标账号未绑定健康设备（Wellness device is not active）
 * - 节奏：每条间隔 500ms 串行，防佳明风控
 */
object GarminWellnessSync {

    /** 默认同步最近天数 */
    const val DEFAULT_DAYS = 7

    /** 单条上传间隔（毫秒），佳明敏感平台强制串行 */
    private const val UPLOAD_INTERVAL_MS = 500L

    data class Result(val ok: Int, val duplicate: Int, val failed: Int, val days: Int)

    /**
     * 同步最近 [days] 天的健康数据。
     * @param onLog 日志回调（调用方负责线程安全）
     */
    suspend fun sync(
        garminApi: GarminApi,
        source: DataSource,
        sourceCred: String,
        target: DataSource,
        targetCred: String,
        days: Int = DEFAULT_DAYS,
        onLog: (String) -> Unit
    ): Result {
        var ok = 0; var dup = 0; var fail = 0
        val fmt = SimpleDateFormat("yyyy-MM-dd", Locale.US)
        val cal = Calendar.getInstance()
        var deviceInactive = false
        var syncedDays = 0
        for (d in 0 until days) {
            if (deviceInactive) break
            val date = fmt.format(cal.time)
            cal.add(Calendar.DAY_OF_MONTH, -1)
            onLog("📥 [健康] $date 下载 ${source.displayName} 健康数据...")
            val zip = try {
                garminApi.downloadWellnessZip(source, sourceCred, date)
            } catch (e: Exception) {
                onLog("❌ [健康] $date 下载异常: ${e.message}")
                fail++
                continue
            }
            if (zip == null || zip.size < 4) {
                onLog("⏭️ [健康] $date 无健康数据（跳过）")
                continue
            }
            val fits = unzipAllFit(zip)
            if (fits.isEmpty()) {
                onLog("⏭️ [健康] $date 压缩包内无 FIT 文件（跳过）")
                continue
            }
            onLog("📦 [健康] $date 解压出 ${fits.size} 个 FIT，开始上传 ${target.displayName}...")
            var dayOk = 0; var dayDup = 0; var dayFail = 0
            for ((name, data) in fits) {
                delay(UPLOAD_INTERVAL_MS)
                val fileName = if (name.endsWith(".fit", ignoreCase = true)) name else "$date-${name.hashCode()}.fit"
                val r = try {
                    garminApi.uploadWellnessFit(target, targetCred, data, fileName)
                } catch (e: Exception) {
                    "上传异常: ${e.message}"
                }
                when {
                    r == null -> { dayOk++; onLog("✅ [健康] $date $fileName 上传成功") }
                    r.contains("重复") -> { dayDup++; onLog("⏭️ [健康] $date $fileName 已存在，跳过") }
                    r.contains("绑定健康设备") -> {
                        dayFail++; deviceInactive = true
                        onLog("❌ [健康] $date $fileName 上传失败: 目标账号未绑定健康设备（419）")
                        onLog("⚠️ [健康] 请在目标佳明账号绑定健康设备（手表/手环）并打开 Garmin Connect 后重试，本任务已停止后续上传")
                    }
                    else -> { dayFail++; onLog("❌ [健康] $date $fileName 上传失败: $r") }
                }
            }
            ok += dayOk; dup += dayDup; fail += dayFail
            if (dayOk > 0 || dayDup > 0) syncedDays++
        }
        onLog("📊 [健康] 健康数据同步完成: 成功$ok / 重复$dup / 失败$fail（覆盖 ${if (deviceInactive) "部分" else syncedDays} 天）")
        return Result(ok, dup, fail, syncedDays)
    }

    /** 解压 zip 中全部 .fit 文件（含文件名） */
    private fun unzipAllFit(zipBytes: ByteArray): List<Pair<String, ByteArray>> {
        return try {
            ZipInputStream(ByteArrayInputStream(zipBytes)).use { zis ->
                val out = mutableListOf<Pair<String, ByteArray>>()
                var entry = zis.nextEntry
                while (entry != null) {
                    if (entry.name.endsWith(".fit", ignoreCase = true)) {
                        val buf = ByteArrayOutputStream()
                        val tmp = ByteArray(65536)
                        var n: Int
                        while (zis.read(tmp).also { n = it } != -1) buf.write(tmp, 0, n)
                        out.add(entry.name.substringAfterLast('/') to buf.toByteArray())
                    }
                    zis.closeEntry()
                    entry = zis.nextEntry
                }
                out
            }
        } catch (e: Exception) {
            emptyList()
        }
    }
}

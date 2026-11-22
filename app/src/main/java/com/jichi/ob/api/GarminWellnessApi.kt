package com.jichi.ob.api

import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody

/**
 * 佳明健康数据 API（v8.3.5 Wellness：步数/睡眠/HRV/压力）——从 GarminApi 抽出（verbatim 搬移，仅改必要引用前缀）。
 *
 * 调用方仍走 GarminApi.downloadWellnessZip / uploadWellnessFit（同名委托，签名不变），
 * 实际调用者是 GarminWellnessSync（下载源端、上传目标端）。
 * 共享依赖仍留在 GarminApi 内（internal，不重复复制）：
 * parseCredential / connectApiHost / gcApiHost / connectHeaders / apiHeaders /
 * OkHttp client / GarminSession；日志走 GarminApi.addDebugLog。
 */
internal class GarminWellnessApi(private val api: GarminApi) {
    // ==================== v8.3.5: Wellness 健康数据同步（步数/睡眠/HRV/压力）====================

    /**
     * 下载指定日期的 wellness 原始数据（zip 原样返回，由调用方解压）。
     * 参考 dailysync-rev：GET {GC_API}/download-service/files/wellness/{yyyy-MM-dd}
     */
    suspend fun downloadWellnessZip(ds: DataSource, cred: String, date: String): ByteArray? = withContext(Dispatchers.IO) {
        try {
            val sess = api.parseCredential(cred)
            // 优先 DI/OAuth1 直连 connectapi（与 getActivities/downloadFit 一致）
            if ((ds == DataSource.GARMIN_COM || ds == DataSource.GARMIN_CN) && (sess?.oauthToken?.isNotEmpty() == true || sess?.diToken?.isNotEmpty() == true)) {
                val url = "${api.connectApiHost(ds)}/download-service/files/wellness/$date"
                val req = Request.Builder().url(url).apply {
                    api.connectHeaders(sess, ds, url).forEach { (k, v) -> addHeader(k, v) }
                    addHeader("Accept", "*/*")
                }.get().build()
                api.client.newCall(req).execute().use { resp ->
                    GarminApi.addDebugLog("downloadWellness DI: HTTP ${resp.code} date=$date")
                    if (resp.code != 200) {
                        GarminApi.addDebugLog("downloadWellness DI失败: ${resp.body?.string()?.take(120)}")
                        return@withContext null
                    }
                    return@withContext resp.body?.bytes()
                }
            }
            // 兜底：gc-api + OkHttp
            val url = "${api.gcApiHost(ds)}/download-service/files/wellness/$date"
            val headers = api.apiHeaders(ds, cred).toMutableMap()
            headers["Accept"] = "*/*"
            val req = Request.Builder().url(url).apply { headers.forEach { (k, v) -> addHeader(k, v) } }.get().build()
            api.client.newCall(req).execute().use { resp ->
                if (resp.code != 200) { GarminApi.addDebugLog("downloadWellness OkHttp HTTP ${resp.code}"); return@withContext null }
                resp.body?.bytes()
            }
        } catch (e: Exception) {
            GarminApi.addDebugLog("downloadWellness异常: ${e.message}")
            null
        }
    }

    /**
     * 上传健康数据 FIT 文件。
     * 返回：null=成功；"重复(已在佳明存在)"；"需绑定健康设备(419)"；其他错误字符串
     */
    suspend fun uploadWellnessFit(ds: DataSource, cred: String, data: ByteArray, fileName: String): String? = withContext(Dispatchers.IO) {
        try {
            val sess = api.parseCredential(cred)
            if ((ds == DataSource.GARMIN_COM || ds == DataSource.GARMIN_CN) && (sess?.oauthToken?.isNotEmpty() == true || sess?.diToken?.isNotEmpty() == true)) {
                val url = "${api.connectApiHost(ds)}/upload-service/upload"
                val body = MultipartBody.Builder()
                    .setType(MultipartBody.FORM)
                    .addFormDataPart("file", fileName, data.toRequestBody("application/octet-stream".toMediaType()))
                    .build()
                val req = Request.Builder().url(url).apply {
                    api.connectHeaders(sess, ds, url, "POST").forEach { (k, v) -> addHeader(k, v) }
                    addHeader("Accept", "application/json")
                }.post(body).build()
                api.client.newCall(req).execute().use { resp ->
                    val result = resp.body?.string() ?: ""
                    GarminApi.addDebugLog("uploadWellness DI: HTTP ${resp.code}, result=${result.take(160)}")
                    return@withContext when (resp.code) {
                        200, 201, 202 -> null
                        409 -> if (result.contains("Duplicate Wellness", true) || result.contains("Duplicate Activity", true))
                            "重复(已在佳明存在)" else "佳明健康上传冲突 HTTP 409: ${result.take(100)}"
                        419 -> "需绑定健康设备(419)"
                        400, 415 -> "佳明拒绝该文件(HTTP ${resp.code}): ${result.take(150)}"
                        else -> "佳明健康上传失败 HTTP ${resp.code}: ${result.take(100)}"
                    }
                }
            }
            // 兜底：gc-api + OkHttp
            val url = "${api.gcApiHost(ds)}/upload-service/upload/"
            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("file", fileName, data.toRequestBody("application/octet-stream".toMediaType()))
                .build()
            val headers = api.apiHeaders(ds, cred).toMutableMap()
            headers["Accept"] = "application/json"
            val req = Request.Builder().url(url).apply { headers.forEach { (k, v) -> addHeader(k, v) } }.post(body).build()
            api.client.newCall(req).execute().use { resp ->
                val result = resp.body?.string() ?: ""
                GarminApi.addDebugLog("uploadWellness OkHttp HTTP ${resp.code}: ${result.take(160)}")
                when (resp.code) {
                    200, 201, 202 -> null
                    409 -> if (result.contains("Duplicate Wellness", true) || result.contains("Duplicate Activity", true))
                        "重复(已在佳明存在)" else "佳明健康上传冲突 HTTP 409: ${result.take(100)}"
                    419 -> "需绑定健康设备(419)"
                    400, 415 -> "佳明拒绝该文件(HTTP ${resp.code}): ${result.take(150)}"
                    else -> "佳明健康上传失败 HTTP ${resp.code}: ${result.take(100)}"
                }
            }
        } catch (e: java.io.IOException) {
            GarminApi.addDebugLog("uploadWellness连接错误: ${e.message}")
            "佳明健康上传异常(连接错误): ${e.message}"
        } catch (e: Exception) {
            GarminApi.addDebugLog("uploadWellness异常: ${e.message}")
            "佳明健康上传异常: ${e.message}"
        }
    }
}

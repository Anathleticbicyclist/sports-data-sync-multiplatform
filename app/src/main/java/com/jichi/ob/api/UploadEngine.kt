package com.jichi.ob.api

import android.util.Log
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.api.BlackbirdApi
import com.jichi.ob.api.BrytonApi
import com.jichi.ob.model.DataSource
import com.jichi.ob.model.UploadSupport
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONObject
import java.security.MessageDigest
import java.util.concurrent.TimeUnit

/**
 * 统一上传引擎（v6.1.1 逆向流动核心）
 * 支持上传到：Outbase / iGPSPORT / 行者 / 迈金
 * 黑鸟单车 / 百锐腾：开发中
 */
class UploadEngine {

    companion object {
        private const val TAG = "UploadEngine"
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private val outbaseApi = OutbaseApi()
    private val blackbirdApi = BlackbirdApi()
    private val brytonApi = BrytonApi()

    data class UploadResult(
        val success: Boolean,
        val targetId: String = "",
        val message: String = "",
        val skipped: Boolean = false
    )

    /**
     * 上传FIT文件到目标平台
     */
    suspend fun upload(
        target: DataSource,
        credential: String,
        fitData: ByteArray,
        record: ActivityRecord,
        extra: Map<String, String> = emptyMap()
    ): UploadResult = withContext(Dispatchers.IO) {
        val support = UploadSupport.fromDataSource(target)
        if (!support.available) {
            return@withContext UploadResult(false, message = "${target.displayName}上传功能${support.note}")
        }

        when (target) {
            DataSource.OUTBASE -> uploadToOutbase(credential, fitData, record, extra)
            DataSource.IGPSPORT -> uploadToIgpsport(credential, fitData, record, extra)
            DataSource.XINGZHE -> uploadToXingzhe(credential, fitData, record, extra)
            DataSource.MAGENE -> uploadToMagene(credential, fitData, record, extra)
            DataSource.BLACKBIRD -> uploadToBlackbird(credential, fitData, record, extra)
            DataSource.BRYTON -> uploadToBryton(credential, fitData, record, extra)
            else -> UploadResult(false, message = "${target.displayName}上传功能开发中")
        }
    }

    // ===== Outbase 上传（已验证可用）=====
    private suspend fun uploadToOutbase(
        sessionId: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        return try {
            val fileName = "${record.source.shortName}_${record.id}.fit"
            val (msg, skipped, _) = outbaseApi.upload(sessionId, null, fitData, fileName)
            UploadResult(!skipped && msg.contains("成功"), message = msg, skipped = skipped)
        } catch (e: Exception) {
            Log.e(TAG, "Outbase upload error", e)
            UploadResult(false, message = "Outbase上传失败: ${e.message}")
        }
    }

    // ===== iGPSPORT 上传（OSS直传流程，经网页版逆向验证：getSignedUrl→PUT→uploadByOss）=====
    private fun uploadToIgpsport(
        token: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        val start = System.currentTimeMillis()
        return try {
            val fileName = "${record.source.shortName}_${record.id}.fit"
            val authHeaders = mapOf(
                "Authorization" to "Bearer $token",
                "User-Agent" to "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36",
                "Origin" to "https://app.igpsport.cn",
                "Referer" to "https://app.igpsport.cn/"
            )

            // 1) 获取OSS签名URL（已验证接口）
            val signedReq = Request.Builder()
                .url("https://prod.zh.igpsport.com/service/sportg/third-party-server/oss/getSignedUrl?fileExtension=.fit")
                .apply { authHeaders.forEach { (k, v) -> addHeader(k, v) } }
                .get().build()
            client.newCall(signedReq).execute().use { resp ->
                val bodyStr = resp.body?.string()?.trim() ?: ""
                Log.d(TAG, "iGPSPORT getSignedUrl HTTP ${resp.code}: ${bodyStr.take(200)}")
                if (resp.code == 401 || resp.code == 403) {
                    return UploadResult(false, message = "iGPSPORT上传失败: 登录已过期(HTTP ${resp.code})，请重新登录igp")
                }
                if (resp.code != 200) {
                    return UploadResult(false, message = "iGPSPORT上传失败: 获取上传地址HTTP ${resp.code}")
                }
                val json = try { JSONObject(bodyStr) } catch (_: Exception) { null }
                // 返回结构: {"code":0,"message":"success","data":{"ossId":"...","signedUrl":"https://..."}}
                val dataObj = json?.optJSONObject("data")
                val signedUrl = dataObj?.optString("signedUrl", "") ?: ""
                val ossId = dataObj?.optString("ossId", "") ?: ""
                if (signedUrl.isEmpty()) {
                    return UploadResult(false, message = "iGPSPORT上传失败: 未获取到上传地址 ${bodyStr.take(100)}")
                }

                // 2) PUT 文件到OSS
                val putReq = Request.Builder()
                    .url(signedUrl)
                    .addHeader("Content-Type", "application/octet-stream")
                    .put(fitData.toRequestBody("application/octet-stream".toMediaType()))
                    .build()
                val putResp = client.newCall(putReq).execute()
                val putCode = putResp.code
                putResp.close()
                if (putCode !in 200..299) {
                    return UploadResult(false, message = "iGPSPORT上传失败: OSS上传HTTP $putCode")
                }

                // 3) 通知iGPSPORT解析（uploadByOss）
                val body = JSONObject()
                    .put("fileName", fileName)
                    .put("ossName", ossId)
                val notifyReq = Request.Builder()
                    .url("https://prod.zh.igpsport.com/service/web-gateway/web-analyze/activity/uploadByOss")
                    .apply { authHeaders.forEach { (k, v) -> addHeader(k, v) } }
                    .addHeader("Content-Type", "application/json")
                    .post(body.toString().toRequestBody("application/json".toMediaType()))
                    .build()
                client.newCall(notifyReq).execute().use { resp2 ->
                    val result = resp2.body?.string()?.trim() ?: ""
                    val cost = System.currentTimeMillis() - start
                    Log.d(TAG, "iGPSPORT uploadByOss HTTP ${resp2.code} (${cost}ms): ${result.take(300)}")
                    if (resp2.code == 200) {
                        val j2 = try { JSONObject(result) } catch (_: Exception) { null }
                        val code = j2?.optInt("code", -1) ?: -1
                        if (code == 200 || code == 0) {
                            val id = j2?.optString("data", "") ?: ""
                            UploadResult(true, targetId = id, message = "iGPSPORT上传成功(id=$id)")
                        } else {
                            UploadResult(false, message = "iGPSPORT上传失败: ${result.take(150)}")
                        }
                    } else if (resp2.code == 401 || resp2.code == 403) {
                        UploadResult(false, message = "iGPSPORT上传失败: 登录已过期(HTTP ${resp2.code})")
                    } else {
                        UploadResult(false, message = "iGPSPORT上传失败: HTTP ${resp2.code} ${result.take(100)}")
                    }
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "iGPSPORT upload error", e)
            UploadResult(false, message = "iGPSPORT上传失败: ${e.message}")
        }
    }

    // ===== 行者 上传（网页版上传接口 api/v4/upload_fits）=====
    private fun uploadToXingzhe(
        sessionId: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        val start = System.currentTimeMillis()
        return try {
            val fileName = "${record.source.shortName}_${record.id}.fit"
            val csrf = extra["csrf"] ?: ""
            val uuid = java.util.UUID.randomUUID().toString()

            // 行者网页版上传接口（已验证）：POST /api/v1/workout/upload/
            // multipart: file + uuid(随机) ; Cookie: sessionid+csrftoken ; X-CSRFToken
            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("file", fileName, fitData.toRequestBody("application/octet-stream".toMediaType()))
                .addFormDataPart("uuid", uuid)
                .build()

            val reqBuilder = Request.Builder()
                .url("https://www.imxingzhe.com/api/v1/workout/upload/")
                .addHeader("Cookie", "sessionid=$sessionId${if (csrf.isNotEmpty()) "; csrftoken=$csrf" else ""}")
                .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36")
                .addHeader("Referer", "https://www.imxingzhe.com/upload/fit")
                .addHeader("Accept", "application/json")
            if (csrf.isNotEmpty()) reqBuilder.addHeader("X-CSRFToken", csrf)
            val req = reqBuilder.post(body).build()

            client.newCall(req).execute().use { resp ->
                val result = resp.body?.string()?.trim() ?: ""
                val cost = System.currentTimeMillis() - start
                Log.d(TAG, "Xingzhe upload HTTP ${resp.code} (${cost}ms): ${result.take(300)}")
                // 行者认证失败返回特征：HTTP 401/403，或 body 含 "Authentication credentials / not provided"，
                // 或 body.code == 401（曾出现 HTTP 200 + code:401 的情况），统一识别为"登录已过期"
                val authFail = resp.code == 401 || resp.code == 403 ||
                    result.contains("Authentication credentials") ||
                    result.contains("credentials were not provided") ||
                    result.contains("not provided") ||
                    (try { JSONObject(result).optInt("code", -1) == 401 } catch (_: Exception) { false })
                when {
                    authFail ->
                        UploadResult(false, message = "行者上传失败: 行者登录已过期或失效，请重新登录行者")
                    resp.code == 200 -> {
                        val json = try { JSONObject(result) } catch (_: Exception) { null }
                        val code = json?.optInt("code", -1) ?: -1
                        val dataId = json?.optJSONObject("data")?.optLong("id", 0L) ?: 0L
                        if (code == 0 && dataId > 0) {
                            UploadResult(true, targetId = dataId.toString(), message = "行者上传成功(id=$dataId)")
                        } else {
                            UploadResult(false, message = "行者上传失败: ${json?.optString("msg") ?: result.take(100)}")
                        }
                    }
                    else -> UploadResult(false, message = "行者上传失败: HTTP ${resp.code} ${result.take(100)}")
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Xingzhe upload error", e)
            UploadResult(false, message = "行者上传失败: ${e.message}")
        }
    }

    private fun uploadToMagene(
        cookie: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        val start = System.currentTimeMillis()
        return try {
            val token = extra["_token"] ?: ""
            val fileName = "${record.source.shortName}_${record.id}.fit"

            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("jilu", fileName, fitData.toRequestBody("application/octet-stream".toMediaType()))
                .addFormDataPart("filename", fileName)
                .addFormDataPart("_token", token)
                .build()

            // 尝试多个候选上传接口，迈金(顽鹿)网页版上传
            val candidates = listOf(
                "https://u.onelap.cn/upload/fit",
                "https://www.onelap.cn/upload/fit"
            )
            var lastError = "无候选接口"
            for (url in candidates) {
                try {
                    val req = Request.Builder()
                        .url(url)
                        .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36")
                        .addHeader("Cookie", cookie)
                        .addHeader("Origin", "https://www.onelap.cn")
                        .addHeader("Referer", "https://www.onelap.cn/")
                        .addHeader("Authorization", if (token.isNotEmpty()) token else "")
                        .post(body)
                        .build()
                    client.newCall(req).execute().use { resp ->
                        val result = resp.body?.string() ?: ""
                        val cost = System.currentTimeMillis() - start
                        Log.d(TAG, "Magene upload ${url} HTTP ${resp.code} (${cost}ms): ${result.take(200)}")
                        if (resp.code == 200 && (result.contains("成功") || result.contains("success") || result.contains("\"code\":0") || result.contains("\"code\":200") || result.contains("\"id\""))) {
                            return UploadResult(true, message = "迈金上传成功")
                        }
                        lastError = "HTTP ${resp.code} ${result.take(100)}"
                    }
                } catch (e: Exception) {
                    lastError = e.message ?: "网络错误"
                }
            }
            UploadResult(false, message = "迈金上传失败: $lastError")
        } catch (e: Exception) {
            Log.e(TAG, "Magene upload error", e)
            UploadResult(false, message = "迈金上传失败: ${e.message}")
        }
    }

    // ===== 黑鸟单车 上传 =====
    private suspend fun uploadToBlackbird(
        cookie: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        val start = System.currentTimeMillis()
        return try {
            val fileName = "${record.source.shortName}_${record.id}.fit"
            val err = blackbirdApi.uploadActivity(cookie, fitData, fileName)
            Log.d(TAG, "Blackbird upload result: ${err ?: "ok"} (${System.currentTimeMillis() - start}ms)")
            if (err == null) UploadResult(true, message = "黑鸟单车上传成功")
            else UploadResult(false, message = err)
        } catch (e: Exception) {
            Log.e(TAG, "Blackbird upload error", e)
            UploadResult(false, message = "黑鸟单车上传失败: ${e.message}")
        }
    }

    // ===== 百锐腾 上传 =====
    private suspend fun uploadToBryton(
        cookie: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        val start = System.currentTimeMillis()
        return try {
            val fileName = "${record.source.shortName}_${record.id}.fit"
            val ok = brytonApi.uploadActivity(cookie, fitData, fileName)
            Log.d(TAG, "Bryton upload result: $ok (${System.currentTimeMillis() - start}ms)")
            if (ok) UploadResult(true, message = "百锐腾上传成功")
            else UploadResult(false, message = "百锐腾上传失败（HTTP详见日志）")
        } catch (e: Exception) {
            Log.e(TAG, "Bryton upload error", e)
            UploadResult(false, message = "百锐腾上传失败: ${e.message}")
        }
    }
}

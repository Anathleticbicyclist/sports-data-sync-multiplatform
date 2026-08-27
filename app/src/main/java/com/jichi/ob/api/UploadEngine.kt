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

    // ===== iGPSPORT 上传（官方第三方API）=====
    private fun uploadToIgpsport(
        token: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        return try {
            val memberId = extra["memberid"] ?: ""
            val appId = extra["appid"] ?: "jichiob"
            val fileName = "${record.source.shortName}_${record.id}.fit"

            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("file", fileName, fitData.toRequestBody("application/octet-stream".toMediaType()))
                .addFormDataPart("memberid", memberId)
                .addFormDataPart("appid", appId)
                .addFormDataPart("token", token)
                .build()

            val req = Request.Builder()
                .url("http://my.igpsport.com/Partner/UplodFit")
                .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36")
                .post(body)
                .build()

            client.newCall(req).execute().use { resp ->
                val result = resp.body?.string()?.trim() ?: ""
                val code = result.toIntOrNull()
                if (code != null && code > 0) {
                    UploadResult(true, targetId = code.toString(), message = "iGPSPORT上传成功")
                } else {
                    UploadResult(false, message = "iGPSPORT上传失败: code=$result")
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "iGPSPORT upload error", e)
            UploadResult(false, message = "iGPSPORT上传失败: ${e.message}")
        }
    }

    // ===== 行者 上传（官方开放API）=====
    private fun uploadToXingzhe(
        sessionId: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        return try {
            val md5 = MessageDigest.getInstance("MD5").digest(fitData)
                .joinToString("") { "%02x".format(it) }
            val fileName = "${record.source.shortName}_${record.id}.fit"
            val title = record.title.take(32)

            // 第一步：获取上传凭证
            val metaBody = JSONObject().apply {
                put("name", title)
                put("detail", "")
                put("fit_filename", fileName)
                put("file_type", "fit")
                put("md5", md5)
            }.toString()

            val metaReq = Request.Builder()
                .url("https://www.imxingzhe.com/openapi/v1/uploads/")
                .addHeader("Cookie", "sessionid=$sessionId")
                .addHeader("Content-Type", "application/json")
                .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36")
                .post(metaBody.toRequestBody("application/json".toMediaType()))
                .build()

            client.newCall(metaReq).execute().use { resp ->
                val body = resp.body?.string() ?: ""
                val json = JSONObject(body)
                if (json.optInt("code", -1) != 0) {
                    return UploadResult(false, message = "行者上传失败: ${json.optString("msg")}")
                }
                val data = json.optJSONObject("data") ?: JSONObject()
                val uploadUrl = data.optString("upload_url", "")
                val workoutId = data.optInt("workout_id", 0)

                // 如果有上传URL，上传文件
                if (uploadUrl.isNotEmpty()) {
                    val uploadBody = MultipartBody.Builder()
                        .setType(MultipartBody.FORM)
                        .addFormDataPart("file", fileName, fitData.toRequestBody("application/octet-stream".toMediaType()))
                        .build()
                    val uploadReq = Request.Builder().url(uploadUrl).post(uploadBody).build()
                    client.newCall(uploadReq).execute().close()
                }

                UploadResult(true, targetId = workoutId.toString(), message = "行者上传成功")
            }
        } catch (e: Exception) {
            Log.e(TAG, "Xingzhe upload error", e)
            UploadResult(false, message = "行者上传失败: ${e.message}")
        }
    }

    // ===== 迈金 上传（u.onelap.cn/upload/fit）=====
    private fun uploadToMagene(
        cookie: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        return try {
            val token = extra["_token"] ?: ""
            val fileName = "${record.source.shortName}_${record.id}.fit"

            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("jilu", fileName, fitData.toRequestBody("application/octet-stream".toMediaType()))
                .addFormDataPart("filename", fileName)
                .addFormDataPart("_token", token)
                .build()

            val req = Request.Builder()
                .url("http://u.onelap.cn/upload/fit")
                .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36")
                .addHeader("Cookie", cookie)
                .addHeader("Referer", "https://www.onelap.cn/")
                .post(body)
                .build()

            client.newCall(req).execute().use { resp ->
                val result = resp.body?.string() ?: ""
                Log.d(TAG, "Magene upload response: $result")
                if (resp.code == 200 && (result.contains("成功") || result.contains("success") || result.contains("\"code\":0") || result.contains("\"code\":200"))) {
                    UploadResult(true, message = "迈金上传成功")
                } else {
                    UploadResult(false, message = "迈金上传失败: ${result.take(100)}")
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Magene upload error", e)
            UploadResult(false, message = "迈金上传失败: ${e.message}")
        }
    }


    // ===== 黑鸟单车 上传 =====
    private suspend fun uploadToBlackbird(
        cookie: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        return try {
            val fileName = "${record.source.shortName}_${record.id}.fit"
            val ok = blackbirdApi.uploadActivity(cookie, fitData, fileName)
            if (ok) UploadResult(true, message = "黑鸟单车上传成功")
            else UploadResult(false, message = "黑鸟单车上传失败")
        } catch (e: Exception) {
            Log.e(TAG, "Blackbird upload error", e)
            UploadResult(false, message = "黑鸟单车上传失败: ${e.message}")
        }
    }

    // ===== 百锐腾 上传 =====
    private suspend fun uploadToBryton(
        cookie: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        return try {
            val fileName = "${record.source.shortName}_${record.id}.fit"
            val ok = brytonApi.uploadActivity(cookie, fitData, fileName)
            if (ok) UploadResult(true, message = "百锐腾上传成功")
            else UploadResult(false, message = "百锐腾上传失败")
        } catch (e: Exception) {
            Log.e(TAG, "Bryton upload error", e)
            UploadResult(false, message = "百锐腾上传失败: ${e.message}")
        }
    }
}

package com.jichi.ob.api

import android.util.Base64
import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import java.util.concurrent.TimeUnit

/**
 * Intervals.icu API（v7.8.5 新增，2026-09 官方开放 API）
 *
 * 认证: 个人 API Key（设置页底部复制），Basic auth——username 固定字面 "API_KEY"，password 为真实 Key
 *       参考官方 Cookbook：curl -F file=@x.fit 'https://intervals.icu/api/v1/athlete/0/activities' -u API_KEY:<key>
 * 校验: GET /api/v1/athlete/0/activities?oldest=..&newest=..  (200=Key有效, 401=无效)
 * 上传: POST /api/v1/athlete/0/activities (multipart file，支持 .fit/.tcx/.gpx/.zip/.gz)
 *       external_id 参数用于去重/幂等（同一 external_id 重复上传会更新而非新增）
 */
class IntervalsIcuApi {

    companion object {
        private const val TAG = "IntervalsIcuApi"
        const val LOGIN_URL = "https://intervals.icu/settings"
        private const val BASE = "https://intervals.icu/api/v1"
        /** Basic auth 的固定用户名（官方约定为字面 "API_KEY"） */
        private const val API_KEY_USER = "API_KEY"
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private fun basicAuth(apiKey: String): String =
        "Basic " + Base64.encodeToString("$API_KEY_USER:$apiKey".toByteArray(), Base64.NO_WRAP)

    /** 校验 API Key 有效性：拉取最近活动列表，200=有效 */
    suspend fun validateKey(apiKey: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val today = java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.US).format(java.util.Date())
            val req = Request.Builder()
                .url("$BASE/athlete/0/activities?oldest=$today&newest=$today")
                .addHeader("Authorization", basicAuth(apiKey))
                .get()
                .build()
            client.newCall(req).execute().use { resp ->
                val ok = resp.code == 200
                if (!ok) Log.w(TAG, "validateKey failed: HTTP ${resp.code}")
                ok
            }
        } catch (e: Exception) {
            Log.w(TAG, "validateKey error: ${e.message}")
            false
        }
    }

    /**
     * 上传 FIT 活动，成功返回 null，失败返回错误消息
     * @param externalId 我们的活动ID（幂等去重用，重复上传会更新不新增）
     */
    suspend fun uploadFit(apiKey: String, fitData: ByteArray, fileName: String, externalId: String): String? =
        withContext(Dispatchers.IO) {
            try {
                val mediaType = "application/octet-stream".toMediaType()
                val filePart = MultipartBody.Part.createFormData(
                    "file", fileName, fitData.toRequestBody(mediaType)
                )
                val body = MultipartBody.Builder().setType(MultipartBody.FORM)
                    .addPart(filePart)
                    .build()
                val url = if (externalId.isNotBlank()) "$BASE/athlete/0/activities?external_id=$externalId"
                    else "$BASE/athlete/0/activities"
                val req = Request.Builder()
                    .url(url)
                    .addHeader("Authorization", basicAuth(apiKey))
                    .post(body)
                    .build()
                client.newCall(req).execute().use { resp ->
                    val code = resp.code
                    val text = resp.body?.string()?.orEmpty()?.take(300)
                    when (code) {
                        in 200..299 -> {
                            Log.d(TAG, "upload OK HTTP $code: $text")
                            null
                        }
                        401 -> "Intervals.icu API Key 无效或已失效，请重新登录"
                        429 -> "Intervals.icu 接口限流，请稍后重试"
                        else -> "Intervals.icu 上传失败 HTTP $code: $text"
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "upload error", e)
                "Intervals.icu 上传失败: ${e.message}"
            }
        }
}

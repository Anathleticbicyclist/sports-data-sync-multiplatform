package com.jichi.ob.api

import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONObject
import java.util.concurrent.TimeUnit

/**
 * 捷安特骑行 Giant API（v7.8.0 新增，2026-09 实测可用）
 *
 * 认证: user_token（账号密码 login 获取，纯 API 无需浏览器）
 * 登录: POST /index.php/api/login   (form: username + password)
 *        → {status:1, user:{nickname,userId,...}, user_token}
 * 上传: POST /index.php/api/upload_fit
 *        (multipart: token + device=bike_computer + brand=giant + files[])
 *        → {status:1, msg:文件上传成功}
 * 列表: POST /index.php/api/fit_list  (form: token) → 记录列表（用于去重/校验token）
 */
class GiantApi {

    companion object {
        private const val TAG = "GiantApi"
        const val LOGIN_URL = "https://ridelife.giant.com.cn"
        private const val BASE = "https://ridelife.giant.com.cn/index.php/api"
        private const val DEVICE = "bike_computer"
        private const val BRAND = "giant"
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private fun ua() = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"

    data class LoginResult(val token: String, val nickname: String, val userId: String)

    /** 账号密码登录，成功返回 token+昵称，失败返回 null */
    suspend fun login(username: String, password: String): LoginResult? = withContext(Dispatchers.IO) {
        try {
            val body = okhttp3.FormBody.Builder()
                .add("username", username)
                .add("password", password)
                .build()
            val req = Request.Builder()
                .url("$BASE/login")
                .addHeader("User-Agent", ua())
                .addHeader("Referer", LOGIN_URL)
                .post(body)
                .build()
            client.newCall(req).execute().use { resp ->
                val result = resp.body?.string()?.trim() ?: ""
                Log.d(TAG, "Giant login HTTP ${resp.code}: ${result.take(200)}")
                if (resp.code != 200) return@withContext null
                val json = try { JSONObject(result) } catch (_: Exception) { null } ?: return@withContext null
                if (json.optInt("status", 0) != 1) {
                    Log.w(TAG, "Giant login failed: ${json.optString("msg")}")
                    return@withContext null
                }
                val token = json.optString("user_token", "").takeIf { it.isNotBlank() } ?: return@withContext null
                val user = json.optJSONObject("user")
                val nickname = user?.optString("nickname", "")?.takeIf { it.isNotBlank() } ?: username
                val userId = user?.optString("userId", "") ?: ""
                LoginResult(token, nickname, userId)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Giant login error", e)
            null
        }
    }

    /** 校验 token 有效性（调 fit_list），有效返回 true */
    suspend fun validateToken(token: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val body = okhttp3.FormBody.Builder().add("token", token).build()
            val req = Request.Builder()
                .url("$BASE/fit_list")
                .addHeader("User-Agent", ua())
                .addHeader("Referer", LOGIN_URL)
                .post(body)
                .build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) return@withContext false
                val json = try { JSONObject(resp.body?.string() ?: "") } catch (_: Exception) { null }
                json?.optInt("status", 0) == 1
            }
        } catch (e: Exception) {
            Log.e(TAG, "Giant validateToken error", e)
            false
        }
    }

    /** 启动登录检测：token 有效返回 "捷安特用户"，无效返回 null（显示登录失效） */
    suspend fun getUsername(token: String): String? = withContext(Dispatchers.IO) {
        if (token.isBlank()) null
        else if (validateToken(token)) "捷安特用户" else null
    }

    /**
     * 上传 FIT 到捷安特。成功返回 null，失败返回错误信息。
     * multipart 字段：token / device=bike_computer / brand=giant / files[]
     */
    suspend fun uploadFit(token: String, fitData: ByteArray, fileName: String): String? = withContext(Dispatchers.IO) {
        try {
            if (token.isBlank()) return@withContext "捷安特未登录，请先登录捷安特"
            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("token", token)
                .addFormDataPart("device", DEVICE)
                .addFormDataPart("brand", BRAND)
                .addFormDataPart("files[]", fileName, fitData.toRequestBody("application/octet-stream".toMediaType()))
                .build()
            val req = Request.Builder()
                .url("$BASE/upload_fit")
                .addHeader("User-Agent", ua())
                .addHeader("Referer", LOGIN_URL)
                .post(body)
                .build()
            client.newCall(req).execute().use { resp ->
                val result = resp.body?.string()?.trim() ?: ""
                Log.d(TAG, "Giant upload HTTP ${resp.code}: ${result.take(200)}")
                if (resp.code == 401 || resp.code == 403) return@withContext "捷安特上传失败: 登录已过期(HTTP ${resp.code})，请重新登录捷安特"
                if (resp.code != 200) return@withContext "捷安特上传失败: HTTP ${resp.code} ${result.take(100)}"
                val json = try { JSONObject(result) } catch (_: Exception) { null }
                val status = json?.optInt("status", 0) ?: 0
                if (status == 1) {
                    Log.i(TAG, "Giant upload success")
                    null
                } else {
                    json?.optString("msg")?.takeIf { it.isNotBlank() }?.let { return@withContext "捷安特上传失败: $it" }
                    return@withContext "捷安特上传失败: ${result.take(120)}"
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Giant upload error", e)
            "捷安特上传失败: ${e.message}"
        }
    }
}

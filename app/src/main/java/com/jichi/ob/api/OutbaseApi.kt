package com.jichi.ob.api
 
import android.util.Log
import com.jichi.ob.util.WebBridge
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONObject
import java.security.MessageDigest
import java.util.UUID
import java.util.concurrent.TimeUnit
 
/**
 * Outbase 上传（v6.0.8 已实测跑通）
 *
 * 关键发现（2026-08-11 用户HAR抓包确认）：
 * - CDN上传端点已变更: /zeusfit/resource/upload(已加鉴权ec=1044) → /zeusfit/resource/h5/upload(浏览器通道,匿名可用)
 * - 上传请求与浏览器完全一致即可: Origin/Referer + 浏览器UA, 无需Sessionid
 * - 注册接口: POST /api/h5/sport/upload/fit + Sessionid头 + Uagent头
 * - 会话校验: POST /api/h5/sport/upload/list {"index":0,"count":20} + Sessionid头
 */
class OutbaseApi {
 
    companion object {
        private const val TAG = "OutbaseApi"
        const val LOGIN_URL = "https://outbase.cn/zeusfit/official-website/login.html"
        private const val CDN_UPLOAD = "https://melon-gateway.immomo.com/zeusfit/resource/h5/upload"
        private const val REGISTER = "https://melon-gateway.immomo.com/zeusfit/api/h5/sport/upload/fit"
        private const val UPLOAD_LIST = "https://melon-gateway.immomo.com/zeusfit/api/h5/sport/upload/list"
        private const val BROWSER_UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
        private const val UAGENT = "$BROWSER_UA PCAgent/1.0.0"
    }
 
    class UploadException(msg: String, val sessionExpired: Boolean = false) : Exception(msg)
 
    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()
 
    private fun md5Hex(data: ByteArray): String =
        MessageDigest.getInstance("MD5").digest(data).joinToString("") { "%02x".format(it) }
 
    private fun dateTag(): String {
        val cal = java.util.Calendar.getInstance()
        return "%04d%02d%02d".format(cal.get(1), cal.get(2) + 1, cal.get(5))
    }
 
    /** 会话校验: POST upload/list */
    suspend fun getUsername(sessionId: String): String? = withContext(Dispatchers.IO) {
        try {
            val req = Request.Builder().url("https://melon-gateway.immomo.com/zeusfit/api/h5/user/info")
                .addHeader("Sessionid", sessionId)
                .addHeader("Uagent", "Mozilla/5.0")
                .get().build()
            val resp = client.newCall(req).execute()
            val body = resp.body?.string() ?: ""
            val json = JSONObject(body)
            if (json.optInt("code", -1) == 0 || json.optInt("status", -1) == 0) {
                val data = json.optJSONObject("data") ?: json
                data.optString("nickname")?.takeIf { it.isNotEmpty() }
                    ?: data.optString("userName")?.takeIf { it.isNotEmpty() }
                    ?: data.optString("name")?.takeIf { it.isNotEmpty() }
            } else null
        } catch (e: Exception) { Log.w(TAG, "getUsername: ${e.message}"); null }
    }

    suspend fun warmUp(sessionId: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val body = JSONObject().apply { put("index", 0); put("count", 20) }
            val req = Request.Builder()
                .url(UPLOAD_LIST)
                .addHeader("Sessionid", sessionId)
                .addHeader("Uagent", UAGENT)
                .addHeader("User-Agent", BROWSER_UA)
                .addHeader("Content-Type", "application/json")
                .addHeader("Origin", "https://outbase.cn")
                .addHeader("Referer", "https://outbase.cn/")
                .post(body.toString().toRequestBody("application/json".toMediaType()))
                .build()
            val resp = client.newCall(req).execute()
            val respBody = resp.body?.string() ?: ""
            val json = try { JSONObject(respBody) } catch (e: Exception) { null }
            val ec = json?.optInt("ec", -1) ?: -1
            Log.d(TAG, "warmUp: HTTP ${resp.code} ec=$ec")
            ec == 0
        } catch (e: Exception) {
            Log.e(TAG, "warmUp error", e)
            false
        }
    }
 
    private fun multipartBody(fileName: String, data: ByteArray) = MultipartBody.Builder()
        .setType(MultipartBody.FORM)
        .addFormDataPart("file", fileName, data.toRequestBody("application/octet-stream".toMediaType()))
        .build()
 
    /**
     * 上传FIT到Outbase（CDN h5端点 + 注册）
     * @return Triple(结果描述, 是否重复跳过, 通道名)
     */
    suspend fun upload(
        sessionId: String,
        bridge: WebBridge?,
        fileData: ByteArray,
        fileName: String
    ): Triple<String, Boolean, String> = withContext(Dispatchers.IO) {
        val fitGuid = UUID.randomUUID().toString()
        val date = dateTag()
        val idParam = "$fitGuid$date"
        val guidHex = fitGuid.replace("-", "")
        val prefix = "${guidHex.substring(0, 2)}/${guidHex.substring(2, 4)}"
        val uriPath = "/resource/$prefix/$fitGuid$date.fit"
        val cdnUrl = "$CDN_UPLOAD?source=zeusfit&id=$idParam&uri=$uriPath&momoid=0&"
        Log.d(TAG, "upload: $fileName ${fileData.size}B")
 
        var cdnOk = false
        var channel = ""
        var lastDetail = ""
 
        // ===== CDN直连（h5端点，浏览器风格请求，无需鉴权头） =====
        try {
            val req = Request.Builder()
                .url(cdnUrl)
                .addHeader("User-Agent", BROWSER_UA)
                .addHeader("Accept", "*/*")
                .addHeader("Origin", "https://outbase.cn")
                .addHeader("Referer", "https://outbase.cn/")
                .post(multipartBody(fileName, fileData))
                .build()
            val resp = client.newCall(req).execute()
            val body = resp.body?.string() ?: ""
            val json = try { JSONObject(body) } catch (e: Exception) { null }
            if (json?.optString("message", "") == "SUCCESS") {
                cdnOk = true
                channel = "h5直连"
            } else {
                lastDetail = "HTTP${resp.code}/${json?.optString("em", body.take(80))}"
                Log.w(TAG, "CDN直连失败: $lastDetail")
            }
        } catch (e: Exception) {
            lastDetail = "直连异常:${e.message}"
            Log.w(TAG, "CDN直连异常", e)
        }
 
        // ===== 回退: WebView内fetch =====
        if (!cdnOk && bridge != null) {
            try {
                val (status, body) = bridge.uploadViaOutbasePage(cdnUrl, fileName, fileData, false, sessionId)
                Log.d(TAG, "回退fetch: HTTP $status ${body.take(200)}")
                val json = try { JSONObject(body) } catch (e: Exception) { null }
                if (status == 200 && json?.optString("message", "") == "SUCCESS") {
                    cdnOk = true
                    channel = "WebView回退"
                } else {
                    lastDetail += " | 回退HTTP$status/${json?.optString("em", body.take(60))}"
                }
            } catch (e: Exception) {
                lastDetail += " | 回退异常:${e.message}"
            }
        }
 
        if (!cdnOk) throw UploadException("CDN上传失败[$lastDetail]")
 
        // ===== 注册 =====
        val regBody = JSONObject().apply {
            put("fitGuid", idParam)
            put("sign", md5Hex(fileData))
            put("fileName", fileName)
            put("fileSize", fileData.size)
        }
        val regReq = Request.Builder()
            .url(REGISTER)
            .addHeader("Sessionid", sessionId)
            .addHeader("Uagent", UAGENT)
            .addHeader("User-Agent", BROWSER_UA)
            .addHeader("Content-Type", "application/json")
            .addHeader("Accept", "application/json, text/plain, */*")
            .addHeader("Origin", "https://outbase.cn")
            .addHeader("Referer", "https://outbase.cn/")
            .post(regBody.toString().toRequestBody("application/json".toMediaType()))
            .build()
        val regResp = client.newCall(regReq).execute()
        val regStr = regResp.body?.string() ?: throw UploadException("注册空响应")
        Log.d(TAG, "Register HTTP ${regResp.code}: ${regStr.take(200)}")
 
        val regJson = try { JSONObject(regStr) } catch (e: Exception) { throw UploadException("注册解析失败:${regStr.take(100)}") }
        val ec = regJson.optInt("ec", -1)
        val em = regJson.optString("em", "")
        val data = regJson.optJSONObject("data")
        val statusDesc = data?.optString("statusDesc", "") ?: ""
 
        when {
            ec == 0 -> Triple("上传成功[$channel${if (statusDesc.isNotEmpty()) ",$statusDesc" else ""}]", false, channel)
            ec == 503 || em.contains("已存在") || em.contains("相同时间") || em.contains("重复") ->
                Triple("已存在(跳过)", true, channel)
            ec == 410001 || em.contains("log in", true) || em.contains("登录") ->
                throw UploadException("Outbase登录态失效(em=$em)", sessionExpired = true)
            else -> throw UploadException("注册失败: ec=$ec em=$em ${regStr.take(100)}")
        }
    }
}
 


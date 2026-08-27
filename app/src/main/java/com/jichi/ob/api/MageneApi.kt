package com.jichi.ob.api
 
import android.util.Log
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import android.util.Base64
import org.json.JSONObject
import java.security.MessageDigest
import java.util.concurrent.TimeUnit
 
/**
 * 迈金/顽鹿 OTM API（2026-08-11 实测跑通）
 *
 * 登录: POST /api/login {"account":手机号,"password":MD5(密码)} → data[0].token (JWT裸用)
 * 列表: POST /api/otm/ride_record/list {"page":n,"limit":20} + Authorization: token
 * 详情: GET /api/otm/ride_record/analysis/{id} → data.ridingRecord.durl (七牛签名直链)
 * 下载: GET durl → FIT文件
 * 刷新: POST /api/token {"token":refresh_token,"from":"web","to":"web"}
 */
class MageneApi {
 
    /** 迈金云端无此记录的FIT文件（2025-10后新记录未上传七牛） */
    class NoFileException(msg: String) : Exception(msg)

    /** 迈金FIT下载结果: fromFitContent=true表示来自fit_content接口(GCJ-02需转换), false表示来自七牛云直链(WGS84无需转换) */
    data class MageneFitResult(val data: ByteArray, val fromFitContent: Boolean)
 
    companion object {
        private const val TAG = "MageneApi"
        const val LOGIN_URL = "https://otm.onelap.cn/login"
        private const val BASE = "https://otm.onelap.cn"
        private const val PER_PAGE = 20
    }
 
    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()
 
    private val JSON = "application/json".toMediaType()
 
    private fun md5Hex(s: String): String =
        MessageDigest.getInstance("MD5").digest(s.toByteArray()).joinToString("") { "%02x".format(it) }
 
    /**
     * 账号密码直接登录（密码MD5）
     * @return Pair(token, refreshToken)
     */
    suspend fun login(account: String, password: String): Pair<String, String> =
        withContext(Dispatchers.IO) {
            val body = JSONObject().apply {
                put("account", account)
                put("password", md5Hex(password))
            }
            val req = Request.Builder()
                .url("$BASE/api/login")
                .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0")
                .addHeader("Origin", BASE)
                .addHeader("Referer", "$BASE/login")
                .post(body.toString().toRequestBody(JSON))
                .build()
            val resp = client.newCall(req).execute()
            val respBody = resp.body?.string() ?: throw Exception("登录空响应")
            val json = JSONObject(respBody)
            val code = json.optInt("code", -1)
            if (code != 200) throw Exception("迈金登录失败: ${json.optString("error", respBody.take(100))}")
            val arr = json.optJSONArray("data") ?: throw Exception("登录响应无data")
            var token = ""
            var refresh = ""
            for (i in 0 until arr.length()) {
                val item = arr.optJSONObject(i) ?: continue
                if (item.has("token")) {
                    token = item.optString("token", "")
                    refresh = item.optString("refresh_token", "")
                    break
                }
            }
            if (token.isEmpty()) throw Exception("登录响应无token")
            Log.d(TAG, "login ok, token len=${token.length}")
            Pair(token, refresh)
        }
 
    /**
     * token刷新
     */
    suspend fun refreshToken(refreshToken: String): String? =
        withContext(Dispatchers.IO) {
            try {
                val body = JSONObject().apply {
                    put("token", refreshToken)
                    put("from", "web")
                    put("to", "web")
                }
                val req = Request.Builder()
                    .url("$BASE/api/token")
                    .addHeader("User-Agent", "Mozilla/5.0")
                    .post(body.toString().toRequestBody(JSON))
                    .build()
                val resp = client.newCall(req).execute()
                val json = JSONObject(resp.body?.string() ?: "")
                val data = json.optJSONObject("data")
                val tok = data?.optString("token", "") ?: ""
                if (tok.isNotEmpty()) tok else null
            } catch (e: Exception) {
                Log.e(TAG, "refreshToken error", e)
                null
            }
        }
 
    /**
     * 获取活动列表（自动翻页，服务端分页）
     * @param skip 跳过前skip条
     * @param limit 需要的条数
     */
    suspend fun getUsername(token: String): String? = withContext(Dispatchers.IO) {
        // 优先解析JWT payload（迈金token是JWT，内含用户信息）
        try {
            val parts = token.split(".")
            if (parts.size >= 2) {
                val payloadB64 = parts[1].replace('-', '+').replace('_', '/')
                val padded = payloadB64 + "=".repeat((4 - payloadB64.length % 4) % 4)
                val decoded = String(android.util.Base64.decode(padded, android.util.Base64.DEFAULT), Charsets.UTF_8)
                val payload = JSONObject(decoded)
                payload.optString("nickname")?.takeIf { it.isNotEmpty() }
                    ?: payload.optString("userName")?.takeIf { it.isNotEmpty() }
                    ?: payload.optString("name")?.takeIf { it.isNotEmpty() }
                    ?: payload.optString("username")?.takeIf { it.isNotEmpty() }
                    ?: payload.optString("account")?.takeIf { it.isNotEmpty() }
                    ?: payload.optString("mobile")?.takeIf { it.isNotEmpty() }
                    ?: "用户${payload.optString("uid").take(6)}"
            } else null
        } catch (e: Exception) {
            // JWT解析失败，回退到API
            try {
                val req = Request.Builder().url("$BASE/api/otm/user/info")
                    .addHeader("Authorization", token)
                    .addHeader("User-Agent", "Mozilla/5.0")
                    .addHeader("Origin", BASE)
                    .addHeader("Referer", "$BASE/calendar")
                    .get().build()
                val resp = client.newCall(req).execute()
                val body = resp.body?.string() ?: ""
                val json = JSONObject(body)
                if (json.optInt("code", -1) == 200) {
                    val data = json.optJSONObject("data")
                    data?.optString("nickname")?.takeIf { it.isNotEmpty() }
                        ?: data?.optString("userName")?.takeIf { it.isNotEmpty() }
                        ?: data?.optString("name")?.takeIf { it.isNotEmpty() }
                } else null
            } catch (e2: Exception) { Log.w(TAG, "getUsername fallback: ${e2.message}"); null }
        }
    }

    suspend fun getActivities(token: String, skip: Int, limit: Int): List<ActivityRecord> =
        withContext(Dispatchers.IO) {
            val result = mutableListOf<ActivityRecord>()
            // 服务端分页: page从 skip/PER_PAGE + 1 开始
            var page = skip / PER_PAGE + 1
            var skipLeft = skip % PER_PAGE  // 首页内需要跳过的条数
            while (result.size < limit) {
                val body = JSONObject().apply {
                    put("page", page)
                    put("limit", PER_PAGE)
                }
                val req = Request.Builder()
                    .url("$BASE/api/otm/ride_record/list")
                    .addHeader("Authorization", token)
                    .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0")
                    .addHeader("Origin", BASE)
                    .addHeader("Referer", "$BASE/calendar")
                    .post(body.toString().toRequestBody(JSON))
                    .build()
                val resp = client.newCall(req).execute()
                val respBody = resp.body?.string() ?: throw Exception("列表空响应")
                if (resp.code == 401) throw Exception("迈金登录已过期，请重新登录")
                val json = JSONObject(respBody)
                val code = json.optInt("code", -1)
                if (code == 401) throw Exception("迈金登录已过期，请重新登录")
                if (code != 200) throw Exception("迈金列表错误: ${json.optString("error", respBody.take(100))}")
 
                val data = json.optJSONObject("data") ?: break
                val rows = data.optJSONArray("list")
                if (rows == null || rows.length() == 0) break
 
                for (i in 0 until rows.length()) {
                    if (skipLeft > 0) { skipLeft--; continue }
                    val item = rows.getJSONObject(i)
                    val id = item.optString("id", "")
                    if (id.isEmpty()) continue
                    val startTime = item.optString("start_riding_time", "")
                    var name = item.optString("name", "")
                    if (name == "null") name = ""
                    val title = name.ifEmpty {
                        val d = startTime.take(10)
                        if (d.isNotEmpty()) "$d 骑行" else "骑行 ${id.take(8)}"
                    }
                    result.add(
                        ActivityRecord(
                            id = id,
                            title = title,
                            startTime = startTime,
                            distance = item.optDouble("distance_km", 0.0),
                            duration = item.optInt("time_seconds", 0),
                            source = DataSource.MAGENE
                        )
                    )
                    if (result.size >= limit) break
                }
 
                val pagination = data.optJSONObject("pagination")
                val hasMore = pagination?.optBoolean("has_more", false) ?: false
                if (!hasMore || rows.length() < PER_PAGE) break
                page++
                kotlinx.coroutines.delay(150)
            }
            Log.d(TAG, "getActivities: ${result.size} records")
            result
        }
 
    /**
     * 下载FIT（2026-08-12 修复版）
     * 策略: 详情接口取 durl+fitUrl
     *   ① durl七牛直链（老格式记录可用）
     *   ② 回退 fit_content/{base64(fitUrl)}（官方网页端同款接口，新geo/格式记录必用）
     */
    suspend fun downloadFit(token: String, recordId: String): MageneFitResult =
        withContext(Dispatchers.IO) {
            val req = Request.Builder()
                .url("$BASE/api/otm/ride_record/analysis/$recordId")
                .addHeader("Authorization", token)
                .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0")
                .addHeader("Origin", BASE)
                .addHeader("Referer", "$BASE/calendar")
                .get().build()
            val resp = client.newCall(req).execute()
            val respBody = resp.body?.string() ?: throw Exception("详情空响应")
            if (resp.code == 401) throw Exception("迈金登录已过期，请重新登录")
            val json = JSONObject(respBody)
            if (json.optInt("code", -1) != 200) throw Exception("迈金详情错误: ${respBody.take(100)}")
            val riding = json.optJSONObject("data")?.optJSONObject("ridingRecord")
            val durl = riding?.optString("durl", "") ?: ""
            val fitUrl = riding?.optString("fitUrl", "") ?: ""
 
            // ① durl直链（快，但新格式记录404）
            if (durl.isNotEmpty()) {
                try {
                    val dlReq = Request.Builder()
                        .url(durl)
                        .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0")
                        .get().build()
                    val dlResp = client.newCall(dlReq).execute()
                    if (dlResp.code == 200) {
                        val bytes = dlResp.body?.bytes()
                        if (bytes != null && isFit(bytes)) {
                            Log.d(TAG, "FIT via durl(七牛云WGS84): ${bytes.size} bytes (id=$recordId)")
                            return@withContext MageneFitResult(bytes, false)
                        }
                    }
                    Log.d(TAG, "durl不可用(HTTP ${dlResp.code})，回退fit_content")
                } catch (e: Exception) {
                    Log.w(TAG, "durl异常: ${e.message}，回退fit_content")
                }
            }
 
            // ② fit_content/{base64(fitUrl)} —— 官方网页端同款，全格式通用
            if (fitUrl.isEmpty()) throw NoFileException("该记录无FIT文件(fitUrl为空，可能是虚拟路线)")
            val b64 = Base64.encodeToString(fitUrl.toByteArray(), Base64.NO_WRAP)
            val fcReq = Request.Builder()
                .url("$BASE/api/otm/ride_record/analysis/fit_content/$b64")
                .addHeader("Authorization", token)
                .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0")
                .addHeader("Origin", BASE)
                .addHeader("Referer", "$BASE/calendar")
                .get().build()
            val fcResp = client.newCall(fcReq).execute()
            val fcBytes = fcResp.body?.bytes() ?: throw Exception("fit_content空响应")
            if (fcResp.code != 200 || !isFit(fcBytes)) {
                throw NoFileException("FIT获取失败(fit_content HTTP ${fcResp.code}, size=${fcBytes.size})")
            }
            Log.d(TAG, "FIT via fit_content(GCJ-02): ${fcBytes.size} bytes (id=$recordId)")
            MageneFitResult(fcBytes, true)
        }
 
    private fun isFit(bytes: ByteArray): Boolean =
        bytes.size >= 14 && bytes[8] == '.'.code.toByte() && bytes[9] == 'F'.code.toByte()
}
 


package com.jichi.ob.api

import android.annotation.SuppressLint
import android.content.Context
import android.util.Log
import android.webkit.CookieManager
import android.webkit.WebView
import android.webkit.WebViewClient
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONArray
import org.json.JSONObject
import java.io.ByteArrayInputStream
import java.util.concurrent.TimeUnit
import java.util.zip.ZipInputStream
import kotlin.coroutines.resume

/**
 * 佳明(Garmin) API（v6.7.3 国际版用WebView绕过Cloudflare）
 *
 * v6.7.3 重要变更：国际版connect.garmin.com/gc-api被Cloudflare拦截(403)，
 * 中国版connect.garmin.cn/gc-api正常。国际版改用WebView执行fetch请求绕过Cloudflare。
 *
 * 凭证格式：JSON {"jwt_web":"...","session":"...","csrf":"..."}
 */
class GarminApi {
    companion object {
        private const val TAG = "GarminApi"
        const val LOGIN_URL_COM = "https://sso.garmin.com/portal/sso/en-US/sign-in?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.com%2Fapp%2F"
        const val LOGIN_URL_CN = "https://sso.garmin.cn/portal/sso/zh-CN/sign-in?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.cn%2Fapp"
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    // v6.7.3: 国际版用WebView绕过Cloudflare
    private var webView: WebView? = null
    private var webViewReady = false

    @SuppressLint("SetJavaScriptEnabled")
    fun initWebView(context: Context) {
        if (webView != null) return
        webView = WebView(context.applicationContext).apply {
            settings.javaScriptEnabled = true
            settings.domStorageEnabled = true
            settings.userAgentString = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
            webViewClient = object : WebViewClient() {
                override fun onPageFinished(view: WebView?, url: String?) {
                    super.onPageFinished(view, url)
                    if (url?.contains("connect.garmin.com") == true) {
                        webViewReady = true
                        Log.d(TAG, "WebView页面加载完成: $url")
                    }
                }
            }
        }
        // 预加载国际版首页，获取Cloudflare clearance
        webView?.loadUrl("https://connect.garmin.com/app/home")
        Log.d(TAG, "WebView已初始化，正在加载国际版首页")
    }

    private data class GarminSession(val cookies: String, val csrf: String) {
        fun toJson(): String = JSONObject().put("cookies", cookies).put("csrf", csrf).toString()
        companion object {
            fun fromJson(json: String): GarminSession? {
                return try {
                    val obj = JSONObject(json)
                    val csrf = obj.optString("csrf", "")
                    val jwtWeb = obj.optString("jwt_web", "")
                    val sessionCookie = obj.optString("session", "")
                    val cookies = if (jwtWeb.isNotEmpty() && sessionCookie.isNotEmpty()) {
                        "JWT_WEB=$jwtWeb; session=$sessionCookie"
                    } else {
                        obj.optString("cookies", "")
                    }
                    if (cookies.isNotEmpty()) GarminSession(cookies, csrf) else null
                } catch (_: Exception) { null }
            }
        }
    }

    private fun parseCredential(cred: String): GarminSession? {
        if (cred.isEmpty()) return null
        GarminSession.fromJson(cred)?.let { return it }
        return null
    }

    fun ensureValidToken(ds: DataSource, cred: String): String = cred

    private fun gcApiHost(ds: DataSource): String =
        if (ds == DataSource.GARMIN_CN) "https://connect.garmin.cn/gc-api" else "https://connect.garmin.com/gc-api"

    private fun apiHeaders(ds: DataSource, cred: String): Map<String, String> {
        val sess = parseCredential(cred)
        val h = mutableMapOf(
            "User-Agent" to "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
            "Accept" to "application/json",
            "Referer" to if (ds == DataSource.GARMIN_CN) "https://connect.garmin.cn/app/home" else "https://connect.garmin.com/app/home",
            "Origin" to if (ds == DataSource.GARMIN_CN) "https://connect.garmin.cn" else "https://connect.garmin.com",
        )
        sess?.let {
            if (it.cookies.isNotEmpty()) h["Cookie"] = it.cookies
            if (it.csrf.isNotEmpty()) h["connect-csrf-token"] = it.csrf
        }
        return h
    }

    // v6.7.3: 用WebView执行fetch请求（绕过国际版Cloudflare）
    private suspend fun fetchViaWebView(url: String, method: String = "GET", headers: Map<String, String> = emptyMap(), body: String? = null): String? = withContext(Dispatchers.Main) {
        suspendCancellableCoroutine { cont ->
            val wv = webView
            if (wv == null) {
                cont.resume(null)
                return@suspendCancellableCoroutine
            }
            // 构建fetch的headers JSON
            val headersJson = JSONObject(headers as Map<String, String>).toString()
            // 构建fetch JS
            val fetchJs = """
                (function() {
                    try {
                        var opts = { method: '$method', credentials: 'include', headers: $headersJson };
                        ${if (body != null) "opts.body = '$body';" else ""}
                        fetch('$url', opts).then(function(r) { return r.text(); }).then(function(t) { window.__garmin_result = t; window.__garmin_done = true; }).catch(function(e) { window.__garmin_error = e.toString(); window.__garmin_done = true; });
                    } catch(e) { window.__garmin_error = e.toString(); window.__garmin_done = true; }
                })();
            """.trimIndent()

            var result: String? = null
            var attempts = 0
            val checkResult = object : Runnable {
                override fun run() {
                    attempts++
                    wv.evaluateJavascript("(function(){ if(window.__garmin_done){ if(window.__garmin_result!==undefined) return window.__garmin_result; if(window.__garmin_error) return 'ERROR:'+window.__garmin_error; } return '__NOT_DONE__'; })()") { value ->
                        val v = value?.trim()?.trim('"') ?: ""
                        if (v != "__NOT_DONE__" && v.isNotEmpty()) {
                            result = if (v.startsWith("ERROR:")) null else v.replace("\\n", "\n").replace("\\\"", "\"")
                            cont.resume(result)
                        } else if (attempts < 50) {
                            wv.postDelayed(this, 200)
                        } else {
                            cont.resume(null)
                        }
                    }
                }
            }
            // 重置状态并执行fetch
            wv.evaluateJavascript("window.__garmin_done=false;window.__garmin_result=undefined;window.__garmin_error=undefined;") {
                wv.evaluateJavascript(fetchJs) { checkResult.run() }
            }
        }
    }

    // v6.7.3: 用WebView上传文件（base64编码）
    private suspend fun uploadViaWebView(url: String, fileName: String, fileData: ByteArray, headers: Map<String, String>): String? = withContext(Dispatchers.Main) {
        suspendCancellableCoroutine { cont ->
            val wv = webView
            if (wv == null) {
                cont.resume(null)
                return@suspendCancellableCoroutine
            }
            val base64 = android.util.Base64.encodeToString(fileData, android.util.Base64.NO_WRAP)
            val headersJson = JSONObject(headers as Map<String, String>).toString()
            val fetchJs = """
                (function() {
                    try {
                        var binary = atob('$base64');
                        var bytes = new Uint8Array(binary.length);
                        for(var i=0;i<binary.length;i++) bytes[i]=binary.charCodeAt(i);
                        var blob = new Blob([bytes], {type:'application/octet-stream'});
                        var form = new FormData();
                        form.append('file', blob, '$fileName');
                        fetch('$url', { method:'POST', credentials:'include', headers:$headersJson, body:form }).then(function(r){ return r.text(); }).then(function(t){ window.__garmin_result=t; window.__garmin_done=true; }).catch(function(e){ window.__garmin_error=e.toString(); window.__garmin_done=true; });
                    } catch(e) { window.__garmin_error=e.toString(); window.__garmin_done=true; }
                })();
            """.trimIndent()

            var attempts = 0
            val checkResult = object : Runnable {
                override fun run() {
                    attempts++
                    wv.evaluateJavascript("(function(){ if(window.__garmin_done){ if(window.__garmin_result!==undefined) return window.__garmin_result; if(window.__garmin_error) return 'ERROR:'+window.__garmin_error; } return '__NOT_DONE__'; })()") { value ->
                        val v = value?.trim()?.trim('"') ?: ""
                        if (v != "__NOT_DONE__" && v.isNotEmpty()) {
                            val result = if (v.startsWith("ERROR:")) null else v.replace("\\n", "\n").replace("\\\"", "\"")
                            cont.resume(result)
                        } else if (attempts < 100) {
                            wv.postDelayed(this, 200)
                        } else {
                            cont.resume(null)
                        }
                    }
                }
            }
            wv.evaluateJavascript("window.__garmin_done=false;window.__garmin_result=undefined;window.__garmin_error=undefined;") {
                wv.evaluateJavascript(fetchJs) { checkResult.run() }
            }
        }
    }

    /** 获取用户名 */
    suspend fun getUsername(ds: DataSource, cred: String): String? = withContext(Dispatchers.IO) {
        try {
            val url = "${gcApiHost(ds)}/userprofile-service/socialProfile"
            // v6.7.3: 国际版用WebView
            if (ds == DataSource.GARMIN_COM && webView != null) {
                val result = fetchViaWebView(url, "GET", apiHeaders(ds, cred))
                if (result != null) {
                    val json = JSONObject(result)
                    return@withContext json.optString("displayName").ifBlank { null }
                }
                return@withContext null
            }
            val req = Request.Builder().url(url).apply {
                apiHeaders(ds, cred).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) return@withContext null
                val body = resp.body?.string() ?: return@withContext null
                val json = JSONObject(body)
                json.optString("displayName").ifBlank { null }
            }
        } catch (e: Exception) { null }
    }

    /** 获取活动列表 */
    suspend fun getActivities(ds: DataSource, cred: String, offset: Int, limit: Int): List<ActivityRecord> = withContext(Dispatchers.IO) {
        val url = "${gcApiHost(ds)}/activitylist-service/activities/search/activities?start=$offset&limit=$limit"
        try {
            // v6.7.3: 国际版用WebView
            if (ds == DataSource.GARMIN_COM && webView != null) {
                val result = fetchViaWebView(url, "GET", apiHeaders(ds, cred))
                if (result != null) {
                    val arr = JSONArray(result)
                    val out = mutableListOf<ActivityRecord>()
                    for (i in 0 until arr.length()) {
                        val item = arr.getJSONObject(i)
                        val id = item.optString("activityId")
                        if (id.isEmpty()) continue
                        val title = item.optString("activityName").ifBlank { "佳明活动" }
                        val startTime = item.optString("startTimeLocal").ifBlank { item.optString("startTimeGMT") }
                        val distance = item.optDouble("distance", 0.0) / 1000.0
                        val duration = item.optInt("duration", 0)
                        out.add(ActivityRecord(id, title, startTime, distance, duration, ds))
                    }
                    Log.d(TAG, "WebView获取到 ${out.size} 条活动")
                    return@withContext out
                }
                Log.w(TAG, "WebView获取活动列表失败，返回空")
                return@withContext emptyList()
            }
            val req = Request.Builder().url(url).apply {
                apiHeaders(ds, cred).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) {
                    Log.w(TAG, "getActivities HTTP ${resp.code}: ${resp.body?.string()?.take(150)}")
                    return@withContext emptyList()
                }
                val arr = JSONArray(resp.body?.string() ?: "[]")
                val out = mutableListOf<ActivityRecord>()
                for (i in 0 until arr.length()) {
                    val item = arr.getJSONObject(i)
                    val id = item.optString("activityId")
                    if (id.isEmpty()) continue
                    val title = item.optString("activityName").ifBlank { "佳明活动" }
                    val startTime = item.optString("startTimeLocal").ifBlank { item.optString("startTimeGMT") }
                    val distance = item.optDouble("distance", 0.0) / 1000.0
                    val duration = item.optInt("duration", 0)
                    out.add(ActivityRecord(id, title, startTime, distance, duration, ds))
                }
                out
            }
        } catch (e: Exception) {
            Log.e(TAG, "getActivities error", e); emptyList()
        }
    }

    /** 下载 FIT */
    suspend fun downloadFit(ds: DataSource, cred: String, activityId: String): ByteArray? = withContext(Dispatchers.IO) {
        try {
            val url = "${gcApiHost(ds)}/download-service/files/activity/$activityId"
            // v6.7.3: 国际版用WebView（base64返回）
            if (ds == DataSource.GARMIN_COM && webView != null) {
                val headers = apiHeaders(ds, cred).toMutableMap()
                headers["Accept"] = "*/*"
                // WebView fetch返回base64
                val fetchJs = """
                    (function(){ fetch('$url',{method:'GET',credentials:'include',headers:${JSONObject(headers as Map<String,String>).toString()}}).then(r=>r.blob()).then(b=>{var r=new FileReader();r.onload=e=>{window.__garmin_result=e.target.result.split(',')[1];window.__garmin_done=true;};r.readAsDataURL(b);}).catch(e=>{window.__garmin_error=e.toString();window.__garmin_done=true;}); })();
                """.trimIndent()
                val wv = webView!!
                val result = suspendCancellableCoroutine<String?> { cont ->
                    var attempts = 0
                    val check = object : Runnable {
                        override fun run() {
                            attempts++
                            wv.evaluateJavascript("(function(){ if(window.__garmin_done){ if(window.__garmin_result) return window.__garmin_result; if(window.__garmin_error) return 'ERROR:'+window.__garmin_error; } return '__NOT_DONE__'; })()") { v ->
                                val valStr = v?.trim()?.trim('"') ?: ""
                                if (valStr != "__NOT_DONE__" && valStr.isNotEmpty()) {
                                    cont.resume(if (valStr.startsWith("ERROR:")) null else valStr)
                                } else if (attempts < 100) {
                                    wv.postDelayed(this, 200)
                                } else cont.resume(null)
                            }
                        }
                    }
                    wv.evaluateJavascript("window.__garmin_done=false;window.__garmin_result=undefined;window.__garmin_error=undefined;") {
                        wv.evaluateJavascript(fetchJs) { check.run() }
                    }
                }
                if (result != null) {
                    val zipBytes = android.util.Base64.decode(result, android.util.Base64.DEFAULT)
                    Log.d(TAG, "WebView下载ZIP大小: ${zipBytes.size}")
                    return@withContext unzipFit(zipBytes)
                }
                return@withContext null
            }
            val headers = apiHeaders(ds, cred).toMutableMap()
            headers["Accept"] = "*/*"
            val req = Request.Builder().url(url).apply {
                headers.forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) {
                    Log.w(TAG, "downloadFit HTTP ${resp.code}")
                    return@withContext null
                }
                val zipBytes = resp.body?.bytes() ?: return@withContext null
                unzipFit(zipBytes)
            }
        } catch (e: Exception) {
            Log.e(TAG, "downloadFit error", e); null
        }
    }

    private fun unzipFit(zipBytes: ByteArray): ByteArray? {
        return try {
            ZipInputStream(ByteArrayInputStream(zipBytes)).use { zis ->
                var entry = zis.nextEntry
                while (entry != null) {
                    if (entry.name.endsWith(".fit", ignoreCase = true)) {
                        val out = java.io.ByteArrayOutputStream()
                        val buf = ByteArray(65536)
                        var n: Int
                        while (zis.read(buf).also { n = it } != -1) out.write(buf, 0, n)
                        return out.toByteArray()
                    }
                    zis.closeEntry()
                    entry = zis.nextEntry
                }
                null
            }
        } catch (e: Exception) {
            Log.e(TAG, "unzipFit error", e)
            if (zipBytes.size >= 14 && zipBytes[8] == '.'.code.toByte() && zipBytes[9] == 'F'.code.toByte()) zipBytes else null
        }
    }

    /** 上传 FIT */
    suspend fun uploadActivity(ds: DataSource, cred: String, data: ByteArray, fileName: String): String? = withContext(Dispatchers.IO) {
        try {
            val url = "${gcApiHost(ds)}/upload-service/upload/"
            // v6.7.3: 国际版用WebView
            if (ds == DataSource.GARMIN_COM && webView != null) {
                val headers = apiHeaders(ds, cred).toMutableMap()
                headers["Accept"] = "application/json"
                val result = uploadViaWebView(url, fileName, data, headers)
                Log.d(TAG, "WebView上传结果: ${result?.take(200)}")
                if (result == null) return@withContext "佳明国际上传失败(WebView无响应)"
                return@withContext when {
                    result.contains("Duplicate Activity") || result.contains("duplicate") -> "重复活动(已在佳明存在)"
                    result.contains("\"id\"") || result.contains("\"activityId\"") -> null
                    else -> "佳明国际上传返回: ${result.take(100)}"
                }
            }
            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("file", fileName, data.toRequestBody("application/octet-stream".toMediaType()))
                .build()
            val headers = apiHeaders(ds, cred).toMutableMap()
            headers["Accept"] = "application/json"
            val req = Request.Builder().url(url).apply {
                headers.forEach { (k, v) -> addHeader(k, v) }
            }.post(body).build()
            client.newCall(req).execute().use { resp ->
                val result = resp.body?.string() ?: ""
                Log.d(TAG, "Garmin upload HTTP ${resp.code}: ${result.take(200)}")
                when (resp.code) {
                    200, 201, 202 -> null
                    409 -> if (result.contains("Duplicate Activity")) "重复活动(已在佳明存在)"
                           else "佳明上传冲突 HTTP 409: ${result.take(100)}"
                    400, 415 -> "佳明拒绝该文件(HTTP ${resp.code}): ${result.take(150)}"
                    else -> "佳明上传失败 HTTP ${resp.code}: ${result.take(100)}"
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Garmin upload error", e)
            "佳明上传异常: ${e.message}"
        }
    }
}

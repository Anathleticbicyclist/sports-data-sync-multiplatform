package com.jichi.ob.api

import android.annotation.SuppressLint
import android.content.Context
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.webkit.CookieManager
import android.webkit.WebView
import android.webkit.WebViewClient
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeoutOrNull
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
 * 佳明(Garmin) API（v6.7.6 静态WebView共享+fetch超时修复）
 *
 * v6.7.6: WebView改为静态共享，UploadEngine中的GarminApi实例也能使用
 */
class GarminApi {
    companion object {
        private const val TAG = "GarminApi"
        const val LOGIN_URL_COM = "https://sso.garmin.com/portal/sso/en-US/sign-in?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.com%2Fapp%2F"
        const val LOGIN_URL_CN = "https://sso.garmin.cn/portal/sso/zh-CN/sign-in?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.cn%2Fapp"

        // v6.7.6: 静态WebView，所有实例共享
        @Volatile private var sharedWebView: WebView? = null
        @Volatile private var sharedWebViewReady = false
        private val mainHandler = Handler(Looper.getMainLooper())

        // 调试日志
        val debugLogs = mutableListOf<String>()
        fun addDebugLog(msg: String) {
            val time = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())
            val line = "[$time][GarminApi] $msg"
            synchronized(debugLogs) {
                debugLogs.add(line)
                if (debugLogs.size > 200) debugLogs.removeAt(0)
            }
            Log.d(TAG, msg)
        }

        @SuppressLint("SetJavaScriptEnabled")
        fun initSharedWebView(context: Context) {
            if (sharedWebView != null) {
                addDebugLog("initSharedWebView: WebView已存在，跳过")
                return
            }
            if (Looper.myLooper() != Looper.getMainLooper()) {
                addDebugLog("initSharedWebView: 切换到主线程")
                mainHandler.post { initSharedWebView(context) }
                return
            }
            try {
                val appContext = context.applicationContext
                addDebugLog("initSharedWebView: 开始创建静态WebView...")
                sharedWebView = WebView(appContext).apply {
                    settings.javaScriptEnabled = true
                    settings.domStorageEnabled = true
                    settings.databaseEnabled = true
                    settings.useWideViewPort = true
                    settings.loadWithOverviewMode = true
                    settings.userAgentString = "Mozilla/5.0 (Linux; Android 14; Pixel 8 Build/UQ1A.240205.004; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/120.0.6099.230 Mobile Safari/537.36"
                    webViewClient = object : WebViewClient() {
                        override fun onPageFinished(view: WebView?, url: String?) {
                            super.onPageFinished(view, url)
                            addDebugLog("WebView onPageFinished: $url")
                            if (url?.contains("connect.garmin.com") == true) {
                                sharedWebViewReady = true
                                addDebugLog("WebView已就绪")
                            }
                        }
                        override fun onReceivedError(view: WebView?, errorCode: Int, description: String?, failingUrl: String?) {
                            super.onReceivedError(view, errorCode, description, failingUrl)
                            addDebugLog("WebView错误: code=$errorCode, desc=$description, url=$failingUrl")
                        }
                    }
                }
                CookieManager.getInstance().apply {
                    setAcceptCookie(true)
                    setAcceptThirdPartyCookies(sharedWebView, true)
                }
                addDebugLog("静态WebView创建成功，加载connect.garmin.com/app/home")
                sharedWebView?.loadUrl("https://connect.garmin.com/app/home")
            } catch (e: Exception) {
                addDebugLog("静态WebView创建异常: ${e.message}")
                Log.e(TAG, "WebView创建异常", e)
            }
        }
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    // 兼容旧接口
    fun initWebView(context: Context) = initSharedWebView(context)

    private suspend fun ensureWebViewReady(): Boolean {
        val wv = sharedWebView
        if (wv == null) {
            addDebugLog("ensureWebViewReady: 静态WebView为null!")
            return false
        }
        if (sharedWebViewReady) return true
        addDebugLog("ensureWebViewReady: 等待WebView就绪...")
        var attempts = 0
        while (!sharedWebViewReady && attempts < 15) {
            delay(1000)
            attempts++
        }
        if (!sharedWebViewReady) {
            addDebugLog("ensureWebViewReady: 强制重新加载首页")
            withContext(Dispatchers.Main) { wv.loadUrl("https://connect.garmin.com/app/home") }
            delay(5000)
        }
        return sharedWebViewReady
    }

    private fun injectCookies(cred: String) {
        val sess = parseCredential(cred) ?: run {
            addDebugLog("injectCookies: 凭证解析失败")
            return
        }
        val cm = CookieManager.getInstance()
        val cookies = sess.cookies.split("; ").map { it.trim() }
        for (cookie in cookies) {
            if (cookie.isNotEmpty()) {
                cm.setCookie("connect.garmin.com", cookie)
                cm.setCookie(".connect.garmin.com", cookie)
            }
        }
        cm.flush()
        addDebugLog("injectCookies: 注入${cookies.size}个cookie, csrf=${sess.csrf.take(20)}...")
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
        return GarminSession.fromJson(cred)
    }

    fun ensureValidToken(ds: DataSource, cred: String): String = cred

    private fun gcApiHost(ds: DataSource): String =
        if (ds == DataSource.GARMIN_CN) "https://connect.garmin.cn/gc-api" else "https://connect.garmin.com/gc-api"

    private fun apiHeaders(ds: DataSource, cred: String): Map<String, String> {
        val sess = parseCredential(cred)
        val h = mutableMapOf(
            "User-Agent" to "Mozilla/5.0 (Linux; Android 14; Pixel 8 Build/UQ1A.240205.004; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/120.0.6099.230 Mobile Safari/537.36",
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

    // v6.7.6: 用WebView执行fetch（带超时）
    private suspend fun fetchViaWebView(url: String, method: String = "GET", headers: Map<String, String> = emptyMap(), body: String? = null): String? {
        val wv = sharedWebView
        if (wv == null) {
            addDebugLog("fetchViaWebView: 静态WebView为null，回退OkHttp")
            return null
        }
        if (!ensureWebViewReady()) {
            addDebugLog("fetchViaWebView: WebView未就绪，回退OkHttp")
            return null
        }
        addDebugLog("fetchViaWebView: $method $url")
        return withTimeoutOrNull(25000) {
            withContext(Dispatchers.Main) {
                suspendCancellableCoroutine { cont ->
                    val headersJson = JSONObject(headers as Map<String, String>).toString()
                    val fetchJs = """
                        (function() {
                            try {
                                window.__g_done = false;
                                window.__g_result = undefined;
                                window.__g_error = undefined;
                                window.__g_status = 0;
                                var opts = { method: '$method', credentials: 'include', headers: $headersJson };
                                ${if (body != null) "opts.body = '$body';" else ""}
                                fetch('$url', opts).then(function(r) {
                                    window.__g_status = r.status;
                                    return r.text();
                                }).then(function(t) {
                                    window.__g_result = t;
                                    window.__g_done = true;
                                }).catch(function(e) {
                                    window.__g_error = e.toString();
                                    window.__g_done = true;
                                });
                            } catch(e) {
                                window.__g_error = e.toString();
                                window.__g_done = true;
                            }
                        })();
                    """.trimIndent()

                    var attempts = 0
                    val checkResult = object : Runnable {
                        override fun run() {
                            attempts++
                            wv.evaluateJavascript("(function(){ if(window.__g_done){ var s=window.__g_status||0; var r=window.__g_result!==undefined?window.__g_result:''; var e=window.__g_error||''; return JSON.stringify({s:s,r:r,e:e}); } return '__ND__'; })()") { value ->
                                val v = value?.trim()?.trim('"') ?: ""
                                if (attempts % 5 == 0) addDebugLog("fetch检查 ${attempts}/50: ${v.take(60)}")
                                if (v != "__ND__" && v.isNotEmpty()) {
                                    try {
                                        val json = JSONObject(v.replace("\\n", "\n").replace("\\\"", "\""))
                                        val status = json.optInt("s", 0)
                                        val result = json.optString("r", "")
                                        val error = json.optString("e", "")
                                        addDebugLog("fetch完成: status=$status, len=${result.length}, err=$error")
                                        if (status in 200..299 && result.isNotEmpty()) cont.resume(result) else cont.resume(null)
                                    } catch (e: Exception) {
                                        addDebugLog("fetch解析异常: ${e.message}")
                                        cont.resume(null)
                                    }
                                } else if (attempts < 50) {
                                    wv.postDelayed(this, 500)
                                } else {
                                    addDebugLog("fetch检查超时")
                                    cont.resume(null)
                                }
                            }
                        }
                    }
                    addDebugLog("执行fetch JS...")
                    wv.evaluateJavascript(fetchJs) {
                        addDebugLog("fetch JS已执行，开始检查结果")
                        checkResult.run()
                    }
                }
            }
        }
    }

    // v6.7.6: 用WebView上传文件（带超时）
    private suspend fun uploadViaWebView(url: String, fileName: String, fileData: ByteArray, headers: Map<String, String>): String? {
        val wv = sharedWebView
        if (wv == null) {
            addDebugLog("uploadViaWebView: WebView为null")
            return null
        }
        if (!ensureWebViewReady()) {
            addDebugLog("uploadViaWebView: WebView未就绪")
            return null
        }
        addDebugLog("uploadViaWebView: $fileName (${fileData.size}字节)")
        val base64 = android.util.Base64.encodeToString(fileData, android.util.Base64.NO_WRAP)
        val headersJson = JSONObject(headers as Map<String, String>).toString()
        return withTimeoutOrNull(60000) {
            withContext(Dispatchers.Main) {
                suspendCancellableCoroutine { cont ->
                    val fetchJs = """
                        (function() {
                            try {
                                window.__g_done = false;
                                window.__g_result = undefined;
                                window.__g_error = undefined;
                                window.__g_status = 0;
                                var binary = atob('$base64');
                                var bytes = new Uint8Array(binary.length);
                                for(var i=0;i<binary.length;i++) bytes[i]=binary.charCodeAt(i);
                                var blob = new Blob([bytes], {type:'application/octet-stream'});
                                var form = new FormData();
                                form.append('file', blob, '$fileName');
                                fetch('$url', { method:'POST', credentials:'include', headers:$headersJson, body:form }).then(function(r) {
                                    window.__g_status = r.status;
                                    return r.text();
                                }).then(function(t) {
                                    window.__g_result = t;
                                    window.__g_done = true;
                                }).catch(function(e) {
                                    window.__g_error = e.toString();
                                    window.__g_done = true;
                                });
                            } catch(e) {
                                window.__g_error = e.toString();
                                window.__g_done = true;
                            }
                        })();
                    """.trimIndent()

                    var attempts = 0
                    val checkResult = object : Runnable {
                        override fun run() {
                            attempts++
                            wv.evaluateJavascript("(function(){ if(window.__g_done){ var s=window.__g_status||0; var r=window.__g_result!==undefined?window.__g_result:''; var e=window.__g_error||''; return JSON.stringify({s:s,r:r,e:e}); } return '__ND__'; })()") { value ->
                                val v = value?.trim()?.trim('"') ?: ""
                                if (attempts % 5 == 0) addDebugLog("上传检查 ${attempts}/120: ${v.take(60)}")
                                if (v != "__ND__" && v.isNotEmpty()) {
                                    try {
                                        val json = JSONObject(v.replace("\\n", "\n").replace("\\\"", "\""))
                                        val status = json.optInt("s", 0)
                                        val result = json.optString("r", "")
                                        val error = json.optString("e", "")
                                        addDebugLog("上传完成: status=$status, result=${result.take(200)}, err=$error")
                                        cont.resume(if (status in 200..299) result else null)
                                    } catch (e: Exception) {
                                        cont.resume(null)
                                    }
                                } else if (attempts < 120) {
                                    wv.postDelayed(this, 500)
                                } else {
                                    addDebugLog("上传检查超时")
                                    cont.resume(null)
                                }
                            }
                        }
                    }
                    wv.evaluateJavascript(fetchJs) { checkResult.run() }
                }
            }
        }
    }

    /** 获取用户名 */
    suspend fun getUsername(ds: DataSource, cred: String): String? = withContext(Dispatchers.IO) {
        try {
            val url = "${gcApiHost(ds)}/userprofile-service/socialProfile"
            if (ds == DataSource.GARMIN_COM && sharedWebView != null) {
                addDebugLog("getUsername: 国际版用WebView")
                injectCookies(cred)
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
            addDebugLog("getActivities: ds=$ds, sharedWebView!=null=${sharedWebView != null}, ready=$sharedWebViewReady")
            if (ds == DataSource.GARMIN_COM && sharedWebView != null) {
                addDebugLog("getActivities: 国际版走WebView分支")
                injectCookies(cred)
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
                    addDebugLog("WebView获取到 ${out.size} 条活动")
                    return@withContext out
                }
                addDebugLog("WebView获取失败，回退OkHttp")
            } else {
                addDebugLog("getActivities: 走OkHttp分支")
            }
            val req = Request.Builder().url(url).apply {
                apiHeaders(ds, cred).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                if (resp.code != 200) {
                    addDebugLog("getActivities OkHttp HTTP ${resp.code}")
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
            addDebugLog("getActivities异常: ${e.message}")
            Log.e(TAG, "getActivities error", e); emptyList()
        }
    }

    /** 下载 FIT */
    suspend fun downloadFit(ds: DataSource, cred: String, activityId: String): ByteArray? = withContext(Dispatchers.IO) {
        try {
            val url = "${gcApiHost(ds)}/download-service/files/activity/$activityId"
            addDebugLog("downloadFit: ds=$ds, webView!=null=${sharedWebView != null}")
            if (ds == DataSource.GARMIN_COM && sharedWebView != null) {
                addDebugLog("downloadFit: 国际版用WebView")
                injectCookies(cred)
                val headers = apiHeaders(ds, cred).toMutableMap()
                headers["Accept"] = "*/*"
                val wv = sharedWebView!!
                if (!ensureWebViewReady()) return@withContext null
                val fetchJs = """
                    (function(){ fetch('$url',{method:'GET',credentials:'include',headers:${JSONObject(headers as Map<String,String>).toString()}}).then(r=>{window.__g_status=r.status;return r.blob();}).then(b=>{var r=new FileReader();r.onload=e=>{window.__g_result=e.target.result.split(',')[1];window.__g_done=true;};r.readAsDataURL(b);}).catch(e=>{window.__g_error=e.toString();window.__g_done=true;}); })();
                """.trimIndent()
                val result = withTimeoutOrNull(60000) {
                    withContext(Dispatchers.Main) {
                        suspendCancellableCoroutine<String?> { cont ->
                            var attempts = 0
                            val check = object : Runnable {
                                override fun run() {
                                    attempts++
                                    wv.evaluateJavascript("(function(){ if(window.__g_done){ var s=window.__g_status||0; var r=window.__g_result!==undefined?window.__g_result:''; var e=window.__g_error||''; return JSON.stringify({s:s,r:r,e:e}); } return '__ND__'; })()") { v ->
                                        val valStr = v?.trim()?.trim('"') ?: ""
                                        if (valStr != "__ND__" && valStr.isNotEmpty()) {
                                            try {
                                                val json = JSONObject(valStr.replace("\\n","\n").replace("\\\"","\""))
                                                val status = json.optInt("s", 0)
                                                val res = json.optString("r", "")
                                                addDebugLog("下载完成: status=$status, size=${res.length}")
                                                cont.resume(if (status in 200..299 && res.isNotEmpty()) res else null)
                                            } catch (e: Exception) { cont.resume(null) }
                                        } else if (attempts < 120) {
                                            wv.postDelayed(this, 500)
                                        } else cont.resume(null)
                                    }
                                }
                            }
                            wv.evaluateJavascript("window.__g_done=false;window.__g_result=undefined;window.__g_error=undefined;") {
                                wv.evaluateJavascript(fetchJs) { check.run() }
                            }
                        }
                    }
                }
                if (result != null) {
                    val zipBytes = android.util.Base64.decode(result, android.util.Base64.DEFAULT)
                    addDebugLog("WebView下载ZIP: ${zipBytes.size}字节")
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
                    addDebugLog("downloadFit OkHttp HTTP ${resp.code}")
                    return@withContext null
                }
                val zipBytes = resp.body?.bytes() ?: return@withContext null
                unzipFit(zipBytes)
            }
        } catch (e: Exception) {
            addDebugLog("downloadFit异常: ${e.message}")
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
            addDebugLog("uploadActivity: ds=$ds, webView!=null=${sharedWebView != null}, ready=$sharedWebViewReady, size=${data.size}")
            if (ds == DataSource.GARMIN_COM && sharedWebView != null) {
                addDebugLog("uploadActivity: 国际版走WebView分支")
                injectCookies(cred)
                val headers = apiHeaders(ds, cred).toMutableMap()
                headers["Accept"] = "application/json"
                val result = uploadViaWebView(url, fileName, data, headers)
                addDebugLog("WebView上传结果: ${result?.take(200)}")
                if (result == null) return@withContext "佳明国际上传失败(WebView无响应，请查看调试日志)"
                return@withContext when {
                    result.contains("Duplicate Activity", true) || result.contains("duplicate", true) -> "重复活动(已在佳明存在)"
                    result.contains("\"id\"") || result.contains("\"activityId\"") || result.contains("\"uploadId\"") -> null
                    else -> "佳明国际上传返回: ${result.take(100)}"
                }
            }
            addDebugLog("uploadActivity: 走OkHttp分支")
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
                addDebugLog("upload OkHttp HTTP ${resp.code}: ${result.take(200)}")
                when (resp.code) {
                    200, 201, 202 -> null
                    409 -> if (result.contains("Duplicate Activity")) "重复活动(已在佳明存在)"
                           else "佳明上传冲突 HTTP 409: ${result.take(100)}"
                    400, 415 -> "佳明拒绝该文件(HTTP ${resp.code}): ${result.take(150)}"
                    else -> "佳明上传失败 HTTP ${resp.code}: ${result.take(100)}"
                }
            }
        } catch (e: Exception) {
            addDebugLog("uploadActivity异常: ${e.message}")
            Log.e(TAG, "Garmin upload error", e)
            "佳明上传异常: ${e.message}"
        }
    }
}

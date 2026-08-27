package com.jichi.ob.util
 
import android.annotation.SuppressLint
import android.content.Context
import android.util.Base64
import android.util.Log
import android.webkit.CookieManager
import android.webkit.JavascriptInterface
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import kotlinx.coroutines.DelicateCoroutinesApi
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeout
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.coroutines.resume
 
/**
 * WebView 桥（双WebView）：
 * 1) 本地桥(bridge.html): GPX→FIT 转换（Outbase官方 gpx2fit.js）
 * 2) Outbase页桥(真实outbase.cn页面): CDN上传回退，fetch与官方网页同源同凭证
 */
@SuppressLint("SetJavaScriptEnabled")
class WebBridge(private val context: Context) {
 
    companion object {
        private const val TAG = "WebBridge"
        private const val INJECT_CHUNK = 256 * 1024
        private const val READ_CHUNK = 200 * 1024
        private const val OUTBASE_PAGE = "https://outbase.cn/zeusfit/official-website/dashboard.html"
 
        private const val UPLOAD_JS = """
window.__upChunks = [];
window.__upInject = function(idx, b64) { window.__upChunks[idx] = b64; return 'ok'; };
window.__upRun = function(url, fileName, count, withSid, sid) {
  try {
    var b64 = window.__upChunks.slice(0, count).join('');
    window.__upChunks = [];
    var bin = atob(b64);
    var bytes = new Uint8Array(bin.length);
    for (var i = 0; i < bin.length; i++) bytes[i] = bin.charCodeAt(i);
    var blob = new Blob([bytes], { type: 'application/octet-stream' });
    var fd = new FormData();
    fd.append('file', blob, fileName);
    var opt = { method: 'POST', credentials: 'include', body: fd };
    if (withSid) { opt.headers = { 'Sessionid': sid }; }
    fetch(url, opt).then(function(r) {
      return r.text().then(function(t) { window.__upResult = { status: r.status, body: t.substring(0, 500) }; });
    }).catch(function(e) {
      window.__upResult = { status: -1, body: String(e && e.message || e) };
    });
    return 'started';
  } catch (e) { return 'err:' + e; }
};
window.__upResult = null;
"""
    }
 
    private var localWv: WebView? = null
    private var outbaseWv: WebView? = null
    private val localReady = AtomicBoolean(false)
    private val outbaseReady = AtomicBoolean(false)
 
    @Volatile
    private var uploadCont: kotlin.coroutines.Continuation<Pair<Int, String>>? = null
 
    // ================= 本地桥：GPX→FIT =================
 
    suspend fun initLocal() {
        if (localWv != null && localReady.get()) return
        if (localWv == null) {
            withContext(Dispatchers.Main) {
                val wv = WebView(context)
                wv.settings.apply {
                    javaScriptEnabled = true
                    domStorageEnabled = true
                    allowFileAccess = true
                    mixedContentMode = WebSettings.MIXED_CONTENT_ALWAYS_ALLOW
                }
                wv.addJavascriptInterface(BridgeCallback(), "JsBridge")
                wv.loadUrl("file:///android_asset/bridge.html")
                localWv = wv
            }
        }
        withTimeout(20000) {
            while (!localReady.get()) {
                val status = evalLocal("window.__bridgeReady ? window.__bridgeReady() : 'loading'")
                if (status != null && status.startsWith("ready")) { localReady.set(true); break }
                if (status != null && status.startsWith("api_error")) throw Exception("桥初始化失败: $status")
                kotlinx.coroutines.delay(200)
            }
        }
    }
 
    private suspend fun evalLocal(script: String): String? = evalOn(localWv, script)
 
    private suspend fun evalOn(wvRef: WebView?, script: String): String? =
        withContext(Dispatchers.Main) {
            suspendCancellableCoroutine { cont ->
                try {
                    val wv = wvRef
                    if (wv == null) { cont.resume(null); return@suspendCancellableCoroutine }
                    wv.evaluateJavascript(script) { value ->
                        val v = value?.takeIf { it != "null" }
                            ?.removeSurrounding("\"")
                            ?.replace("\\\\", "\u0000")
                            ?.replace("\\\"", "\"")
                            ?.replace("\\n", "\n")
                            ?.replace("\\/", "/")
                            ?.replace("\u0000", "\\")
                        cont.resume(v)
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "eval error", e)
                    cont.resume(null)
                }
            }
        }
 
    private suspend fun injectChunks(wvRef: WebView?, data: ByteArray, injectFn: String): Int {
        val b64 = Base64.encodeToString(data, Base64.NO_WRAP)
        var idx = 0
        var pos = 0
        while (pos < b64.length) {
            val end = minOf(pos + INJECT_CHUNK, b64.length)
            val chunk = b64.substring(pos, end)
            val r = evalOn(wvRef, "$injectFn($idx, '$chunk')")
            if (r != "ok") throw Exception("注入块失败 idx=$idx: $r")
            idx++
            pos = end
        }
        return idx
    }
 
    /** GPX → FIT */
    suspend fun convertGpxToFit(gpxData: ByteArray): ByteArray {
        initLocal()
        val count = injectChunks(localWv, gpxData, "window.__injectChunk")
        val trigger = evalLocal("window.__convertGpx($count)")
        if (trigger?.startsWith("err:") == true) throw Exception("GPX→FIT失败: $trigger")
 
        val b64Len = withTimeout(120000L) {
            var waited = 0L
            var len = -1
            while (waited < 120000L) {
                val err = evalLocal("window.__convertError")
                if (!err.isNullOrEmpty()) throw Exception("GPX→FIT失败: $err")
                val s = evalLocal("window.__resultB64 ? window.__resultB64.length : -1")
                len = s?.toIntOrNull() ?: -1
                if (len > 0) break
                kotlinx.coroutines.delay(200)
                waited += 200
            }
            if (len <= 0) throw Exception("GPX→FIT 转换超时")
            len
        }
 
        val sb = StringBuilder(b64Len)
        var pos = 0
        while (pos < b64Len) {
            val chunk = evalLocal("window.__getResultChunk($pos, $READ_CHUNK)")
                ?: throw Exception("读回结果失败 pos=$pos")
            if (chunk.isEmpty()) throw Exception("读回结果为空 pos=$pos")
            sb.append(chunk)
            pos += READ_CHUNK
        }
        evalLocal("window.__clearResult()")
        val fit = Base64.decode(sb.toString(), Base64.DEFAULT)
        if (fit.size < 14 || fit[8] != '.'.code.toByte()) throw Exception("转换出的FIT无效 (size=${fit.size})")
        Log.d(TAG, "GPX→FIT ok: ${gpxData.size} -> ${fit.size} bytes")
        return fit
    }
 
    // ================= Outbase页桥：CDN上传回退 =================
 
    /** 初始化Outbase页面WebView（需Outbase已登录，cookie在CookieManager中） */
    suspend fun initOutbasePage() {
        if (outbaseWv != null && outbaseReady.get()) return
        if (outbaseWv == null) {
            withContext(Dispatchers.Main) {
                val wv = WebView(context)
                wv.settings.apply {
                    javaScriptEnabled = true
                    domStorageEnabled = true
                    mixedContentMode = WebSettings.MIXED_CONTENT_ALWAYS_ALLOW
                    userAgentString = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
                }
                wv.webViewClient = object : WebViewClient() {
                    override fun onPageFinished(view: WebView?, url: String?) {
                        Log.d(TAG, "outbase page finished: $url")
                    }
                    override fun shouldOverrideUrlLoading(view: WebView?, request: android.webkit.WebResourceRequest?) = false
                }
                CookieManager.getInstance().setAcceptCookie(true)
                wv.loadUrl(OUTBASE_PAGE)
                outbaseWv = wv
            }
        }
        // 等待页面加载并注入上传函数
        withTimeout(30000) {
            var injected = false
            while (!outbaseReady.get()) {
                kotlinx.coroutines.delay(500)
                if (!injected) {
                    val r = evalOn(outbaseWv, UPLOAD_JS.replace("\n", "") + "; 'injected'")
                    if (r == "injected") injected = true
                } else {
                    val r = evalOn(outbaseWv, "typeof window.__upRun === 'function' ? 'ready' : 'no'")
                    if (r == "ready") { outbaseReady.set(true); break }
                }
            }
        }
        Log.d(TAG, "outbase page bridge ready")
    }
 
    /** 在Outbase页面上下文执行fetch上传 */
    @OptIn(DelicateCoroutinesApi::class)
    suspend fun uploadViaOutbasePage(cdnUrl: String, fileName: String, fileData: ByteArray, withSid: Boolean, sid: String): Pair<Int, String> {
        initOutbasePage()
        val count = injectChunks(outbaseWv, fileData, "window.__upInject")
        evalOn(outbaseWv, "window.__upResult = null")
        return withTimeout(180000L) {
            suspendCancellableCoroutine { cont ->
                uploadCont = cont
                GlobalScope.launch(Dispatchers.Main) {
                    val safeUrl = cdnUrl.replace("\\", "\\\\").replace("'", "\\'")
                    val safeName = fileName.replace("\\", "\\\\").replace("'", "\\'")
                    val safeSid = sid.replace("'", "\\'")
                    val r = evalOn(outbaseWv, "window.__upRun('$safeUrl', '$safeName', $count, $withSid, '$safeSid')")
                    Log.d(TAG, "upRun trigger: $r")
                    if (r?.startsWith("err:") == true) {
                        uploadCont?.resume(Pair(-1, r))
                        uploadCont = null
                    }
                }
                // 轮询结果
                GlobalScope.launch {
                    var waited = 0L
                    while (waited < 175000L) {
                        kotlinx.coroutines.delay(500)
                        waited += 500
                        val done = evalOn(outbaseWv, "window.__upResult ? JSON.stringify(window.__upResult) : null")
                        if (done != null) {
                            try {
                                val json = org.json.JSONObject(done)
                                val c = uploadCont
                                if (c != null) {
                                    uploadCont = null
                                    c.resume(Pair(json.optInt("status", -1), json.optString("body", "")))
                                }
                            } catch (_: Exception) {}
                            break
                        }
                    }
                }
            }
        }
    }
 
    inner class BridgeCallback {
        @JavascriptInterface
        fun onConvertDone(fitSize: Int, b64Len: Int) {
            Log.d(TAG, "onConvertDone: fit=$fitSize b64=$b64Len")
        }
 
        @JavascriptInterface
        fun onConvertError(err: String) {
            Log.e(TAG, "onConvertError: $err")
        }
 
        @JavascriptInterface
        fun onUploadResult(status: Int, body: String) {
            Log.d(TAG, "onUploadResult: HTTP $status | ${body.take(200)}")
            uploadCont?.resume(Pair(status, body))
            uploadCont = null
        }
    }
 
    fun destroy() {
        try { localWv?.destroy() } catch (_: Exception) {}
        try { outbaseWv?.destroy() } catch (_: Exception) {}
        localWv = null
        outbaseWv = null
        localReady.set(false)
        outbaseReady.set(false)
    }
}
package com.jichi.ob

import android.app.Activity
import android.net.Uri
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.webkit.ValueCallback
import android.webkit.WebChromeClient
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.core.content.FileProvider
import java.io.File
import java.util.concurrent.atomic.AtomicBoolean

/**
 * 迈金(顽鹿OTM) WebView 上传器 —— v6.2.3 核心新功能
 *
 * 【为什么需要WebView】
 * 顽鹿 upload/fit 接口 (POST https://otm.onelap.cn/api/otm/ride_record/upload/fit, multipart字段`jilu`)
 * 对"程序化构造的File"一律返回 422 {"code":422,"message":"没有上传文件"}。
 * 经逆向实测(见 顽鹿OTM上传逆向_调试记录.md)：无论 Python/curl/页面JS new File()+fetch、
 * 完整复刻boundary/请求头/TLS指纹、还是CDP setFileInputFiles，全部 422；
 * 唯一成功路径是"真实文件选择"（浏览器原生input[type=file]选择本地文件）。
 * 因此 Android 端必须通过 WebView + WebChromeClient.onShowFileChooser 返回本地FIT文件，
 * 由WebView内部把该文件赋给页面 input.files —— 与用户手动在网页上选择文件完全等价。
 *
 * 【登录注入】顽鹿Web与App同源：App内已通过API登录(账号15092285275)获得token，
 * WebView加载 otm.onelap.cn 后把 token 写入 localStorage('token') 即保持登录态，无需WebView二次登录。
 */
class MageneWebUploader(private val activity: Activity, private val token: String) {

    private val TAG = "MageneWebUploader"
    private val mainHandler = Handler(Looper.getMainLooper())

    private var webView: WebView? = null
    private var fitFile: File? = null
    private var resultCallback: ((Boolean, String) -> Unit)? = null
    private val done = AtomicBoolean(false)
    private var timeoutTask: Runnable? = null
    private var firstInject = true

    /** 上传单个FIT文件。onResult(success, message)。必须可重复调用（每次上传新的fit）。 */
    fun upload(fitPath: String, onResult: (Boolean, String) -> Unit) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            mainHandler.post { upload(fitPath, onResult) }
            return
        }
        val f = File(fitPath)
        if (!f.exists() || f.length() < 100L) {
            onResult(false, "待上传FIT文件不存在或无效: $fitPath")
            return
        }
        fitFile = f
        resultCallback = onResult
        done.set(false)
        firstInject = true
        ensureWebView()
        webView?.loadUrl("https://otm.onelap.cn/calendar")
        timeoutTask = Runnable { finish(false, "顽鹿上传超时(60s)：请确认顽鹿页面登录正常且网络畅通") }
        mainHandler.postDelayed(timeoutTask!!, 60000L)
    }

    private fun ensureWebView() {
        if (webView != null) return
        webView = WebView(activity).apply {
            settings.javaScriptEnabled = true
            settings.domStorageEnabled = true
            settings.javaScriptCanOpenWindowsAutomatically = true
            settings.mediaPlaybackRequiresUserGesture = false
            settings.cacheMode = WebSettings.LOAD_DEFAULT
            settings.blockNetworkImage = true
            settings.loadsImagesAutomatically = false
            // 隐藏但保活：加到一个不显示的容器里，避免布局
            webViewClient = object : WebViewClient() {
                override fun onPageFinished(view: WebView?, url: String?) {
                    if (done.get()) return
                    val u = url ?: ""
                    Log.d(TAG, "page finished: $u")
                    if (!u.contains("otm.onelap.cn")) return
                    if (!firstInject) return
                    firstInject = false
                    injectAndTriggerUpload(view)
                }
            }
            webChromeClient = object : WebChromeClient() {
                override fun onShowFileChooser(
                    webView: WebView?,
                    filePathCallback: ValueCallback<Array<Uri>>?,
                    fileChooserParams: FileChooserParams?
                ): Boolean {
                    val f = fitFile
                    if (f == null || !f.exists()) {
                        filePathCallback?.onReceiveValue(null)
                        return true
                    }
                    try {
                        val uri = FileProvider.getUriForFile(
                            activity,
                            activity.packageName + ".fileprovider",
                            f
                        )
                        filePathCallback?.onReceiveValue(arrayOf(uri))
                        Log.d(TAG, "onShowFileChooser -> $uri")
                        pollResult()
                    } catch (e: Exception) {
                        Log.e(TAG, "FileProvider error", e)
                        filePathCallback?.onReceiveValue(null)
                    }
                    return true
                }
            }
        }
    }

    private fun injectAndTriggerUpload(view: WebView?) {
        val fitName = fitFile?.name ?: "upload.fit"
        val js = """
            (function(){
              try{
                var cur = (localStorage.getItem('token')||'');
                if (cur.length < 20) {
                  localStorage.setItem('token', '$token');
                  location.reload();
                  return;
                }
                window.__obUpload = 'pending';
                // 监听上传结果消息
                setInterval(function(){
                  if (window.__obUpload && window.__obUpload.indexOf('pending')>=0){
                    var msgs = document.querySelectorAll('.arco-message,[class*="message"],[class*="Message"]');
                    for (var i=0;i<msgs.length;i++){
                      var t = msgs[i].textContent||'';
                      if (t.indexOf('上传成功')>=0 || t.indexOf('全部上传成功')>=0){ window.__obUpload='success'; }
                      else if (t.indexOf('上传失败')>=0){ window.__obUpload='fail:'+t.slice(0,100); }
                    }
                  }
                }, 700);
                // 打开上传弹窗
                setTimeout(function(){
                  var btns = document.querySelectorAll('button');
                  var hit = false;
                  for (var i=0;i<btns.length;i++){
                    if (btns[i].textContent.trim()==='上传'){ btns[i].click(); hit=true; break; }
                  }
                  if (!hit){ window.__obUpload='fail:未找到上传按钮'; return; }
                  setTimeout(function(){
                    var input = document.querySelector('input[type=file]');
                    if (input){ input.click(); }
                    else { window.__obUpload='fail:未找到文件选择框'; }
                  }, 900);
                }, 700);
              }catch(e){ window.__obUpload='error:'+String(e); }
            })();
        """.trimIndent()
        view?.evaluateJavascript(js) { }
    }

    private fun pollResult() {
        if (done.get()) return
        webView?.evaluateJavascript("window.__obUpload || 'pending'") { res ->
            val v = res?.trim()?.trim('"') ?: "pending"
            when {
                v.contains("success") -> finish(true, "顽鹿上传成功")
                v.startsWith("fail:") -> finish(false, v.removePrefix("fail:"))
                v.startsWith("error:") -> finish(false, v.removePrefix("error:"))
                else -> mainHandler.postDelayed({ pollResult() }, 1200L)
            }
        }
    }

    private fun finish(success: Boolean, msg: String) {
        if (!done.compareAndSet(false, true)) return
        timeoutTask?.let { mainHandler.removeCallbacks(it) }
        val cb = resultCallback
        resultCallback = null
        Log.d(TAG, "finish success=$success msg=$msg")
        cb?.invoke(success, msg)
    }

    fun destroy() {
        mainHandler.post {
            timeoutTask?.let { mainHandler.removeCallbacks(it) }
            try { webView?.removeAllViews(); webView?.destroy() } catch (_: Exception) {}
            webView = null
        }
    }
}

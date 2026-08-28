package com.jichi.ob

import android.app.Activity
import android.graphics.Color
import android.net.Uri
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.view.ViewGroup
import android.webkit.ValueCallback
import android.webkit.WebChromeClient
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.FrameLayout
import androidx.core.content.FileProvider
import org.json.JSONObject
import java.io.File
import java.util.concurrent.atomic.AtomicBoolean

/**
 * 百锐腾(Bryton Active) WebView 上传器 —— v6.2.4
 *
 * 【背景】百锐腾是 Meteor(DDP) 应用，无公开 REST 上传接口（POST /user/upload/{userId} 需真实文件选择）。
 * 已验证：/activities 页右上角"+"(img src=0_add.png) → 上传弹窗 input[type=file] → 真实文件选择成功落库
 * （返回记录出现在 userActivities collection，页面显示 "完成"）。
 *
 * 【登录态注入】百锐腾 Meteor 登录态在 localStorage(Meteor.loginToken/Meteor.userId)。
 * WebView 加载 active.brytonsport.com 后先写入这两项再 reload，页面即保持登录态。
 *
 * 【结果确认】不只看前端 toast，上传后页面内查 userActivities collection 对比"上传前最新 _id"，
 * 确认真实落库后才判定成功。
 */
class BrytonWebUploader(
    private val activity: Activity,
    private val token: String,
    private val userId: String
) {
    private val TAG = "BrytonWebUploader"
    private val mainHandler = Handler(Looper.getMainLooper())

    private var webView: WebView? = null
    private var container: FrameLayout? = null
    private var fitFile: File? = null
    private var resultCallback: ((Boolean, String) -> Unit)? = null
    private val done = AtomicBoolean(false)
    private var timeoutTask: Runnable? = null
    private var pageLoadCount = 0
    private var baseRecordId: String? = null
    private var confirmTries = 0

    /** 上传单个FIT/GPX文件。onResult(success, message)。可重复调用。 */
    fun upload(fitPath: String, onResult: (Boolean, String) -> Unit) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            mainHandler.post { upload(fitPath, onResult) }
            return
        }
        val f = File(fitPath)
        if (!f.exists() || f.length() < 100L) {
            onResult(false, "待上传文件不存在或无效: $fitPath")
            return
        }
        fitFile = f
        resultCallback = onResult
        done.set(false)
        pageLoadCount = 0
        baseRecordId = null
        confirmTries = 0
        ensureWebView()
        webView?.loadUrl("https://active.brytonsport.com/activities")
        timeoutTask = Runnable { finish(false, "百锐腾上传超时(60s)：请确认百锐腾网页登录有效") }
        mainHandler.postDelayed(timeoutTask!!, 60000L)
    }

    private fun ensureWebView() {
        if (webView != null) return
        val container = FrameLayout(activity).apply {
            setBackgroundColor(Color.TRANSPARENT)
            alpha = 0f
        }
        val wv = WebView(activity).apply {
            settings.javaScriptEnabled = true
            settings.domStorageEnabled = true
            settings.javaScriptCanOpenWindowsAutomatically = true
            settings.cacheMode = WebSettings.LOAD_DEFAULT
            webViewClient = object : WebViewClient() {
                override fun onPageFinished(view: WebView?, url: String?) {
                    if (done.get()) return
                    val u = url ?: ""
                    Log.d(TAG, "page finished #${pageLoadCount + 1}: $u")
                    if (!u.contains("active.brytonsport.com")) return
                    pageLoadCount++
                    if (pageLoadCount == 1) {
                        injectAndReload(view)
                    } else {
                        startUploadFlow(view)
                    }
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
        container.addView(wv, FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT))
        (activity.window.decorView as? ViewGroup)?.addView(container,
            ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT))
        this.webView = wv
        this.container = container
    }

    private fun injectAndReload(view: WebView?) {
        val js = """
            (function(){
              try {
                localStorage.setItem('Meteor.loginToken', '${token.replace("'", "\\'")}');
                localStorage.setItem('Meteor.userId', '${userId.replace("'", "\\'")}');
                location.reload();
              } catch(e){ window.__bbUpload='error:'+String(e); }
            })();
        """.trimIndent()
        view?.evaluateJavascript(js) { }
    }

    private fun startUploadFlow(view: WebView?) {
        val js = """
            (async function(){
              try{
                // 1. 记录上传前最新记录id（collection userActivities 需订阅完成）
                try {
                  const c = Meteor.connection._mongo_livedata_collections['userActivities'];
                  if (c){ const all=c.find().fetch(); window.__baseId = all.length?all[0]._id:''; }
                  else window.__baseId = '';
                } catch(e){ window.__baseId = ''; }
                window.__bbUpload = 'pending';
                // 2. 点右上角 + 图标
                setTimeout(function(){
                  var imgs = document.querySelectorAll('img');
                  var add = null;
                  for (var i=0;i<imgs.length;i++){
                    if ((imgs[i].src||'').indexOf('0_add')>=0){ add=imgs[i]; break; }
                  }
                  if (!add){ window.__bbUpload='fail:未找到+按钮'; return; }
                  add.click();
                  // 3. 等弹窗渲染后点击文件input
                  setTimeout(function(){
                    var input = document.querySelector('#fileInput') || document.querySelector('input[type=file]');
                    if (input){ input.click(); }
                    else { window.__bbUpload='fail:未找到文件选择框'; }
                  }, 1500);
                }, 1200);
              }catch(e){ window.__bbUpload='error:'+String(e); }
            })();
        """.trimIndent()
        view?.evaluateJavascript(js) { }
    }

    private fun pollResult() {
        if (done.get()) return
        webView?.evaluateJavascript("window.__bbUpload || 'pending'") { res ->
            val v = res?.trim()?.trim('"') ?: "pending"
            when {
                v.contains("success") || v.contains("完成") -> confirmByCollection()
                v.startsWith("fail:") -> finish(false, v.removePrefix("fail:"))
                v.startsWith("error:") -> finish(false, v.removePrefix("error:"))
                else -> mainHandler.postDelayed({ pollResult() }, 1200L)
            }
        }
    }

    /** 前端提示完成后再用 userActivities collection 确认真实落库 */
    private fun confirmByCollection() {
        if (done.get()) return
        confirmTries++
        val js = """
            (async function(){
              try {
                const c = Meteor.connection._mongo_livedata_collections['userActivities'];
                if (!c) return 'empty';
                const all = c.find().fetch();
                if (all.length){
                  const top = all[0]._id;
                  if (top && top !== (window.__baseId||'')) return 'confirmed:'+top;
                  return 'notyet';
                }
                return 'empty';
              } catch(e){ return 'api_err:'+String(e); }
            })();
        """.trimIndent()
        webView?.evaluateJavascript(js) { res ->
            val v = res?.trim()?.trim('"') ?: "empty"
            when {
                v.startsWith("confirmed") -> finish(true, "百锐腾上传成功（已落库 id=${v.removePrefix("confirmed:")}）")
                v.startsWith("api_err:") -> finish(false, "百锐腾前端提示成功但落库确认失败: ${v.removePrefix("api_err:")}")
                confirmTries >= 5 -> finish(false, "百锐腾前端提示完成但未检测到新记录（未落库）")
                else -> mainHandler.postDelayed({ confirmByCollection() }, 1500L)
            }
        }
    }

    private fun finish(success: Boolean, msg: String) {
        if (!done.compareAndSet(false, true)) return
        timeoutTask?.let { mainHandler.removeCallbacks(it) }
        val cb = resultCallback
        resultCallback = null
        Log.d(TAG, "finish success=$success msg=$msg")
        removeFromTree()
        cb?.invoke(success, msg)
    }

    private fun removeFromTree() {
        try {
            container?.let { (activity.window.decorView as? ViewGroup)?.removeView(it) }
        } catch (_: Exception) {}
    }

    fun destroy() {
        mainHandler.post {
            timeoutTask?.let { mainHandler.removeCallbacks(it) }
            removeFromTree()
            try { webView?.removeAllViews(); webView?.destroy() } catch (_: Exception) {}
            webView = null
            container = null
        }
    }
}

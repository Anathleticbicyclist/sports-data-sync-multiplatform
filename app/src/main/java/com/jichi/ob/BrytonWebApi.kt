package com.jichi.ob

import android.app.Activity
import android.graphics.Color
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.view.ViewGroup
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.FrameLayout
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.suspendCancellableCoroutine
import org.json.JSONArray
import org.json.JSONObject
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.coroutines.resume

/**
 * 百锐腾(Bryton Active) 列表获取 —— WebView 通道（v6.2.4）
 *
 * 【背景】百锐腾无 REST 列表接口（/api/activity/list 返回 SPA HTML）。网页端数据经 Meteor 订阅
 * activityList 后存放在 collection `userActivities`。本类通过 WebView 加载 /activities 页、
 * 注入 localStorage(Meteor.loginToken/Meteor.userId) 保持登录态，再执行 JS 读取 collection
 * 返回活动列表 JSON。
 */
class BrytonWebApi(
    private val activity: Activity,
    private val token: String,
    private val userId: String
) {
    private val TAG = "BrytonWebApi"

    /** 获取活动列表。skip/limit 与页面 collection 顺序一致（按 start_time 倒序）。 */
    suspend fun getActivities(skip: Int, limit: Int): List<ActivityRecord> =
        suspendCancellableCoroutine { cont ->
            if (Looper.myLooper() != Looper.getMainLooper()) {
                Handler(Looper.getMainLooper()).post {
                    doGetActivities(skip, limit) { r ->
                        if (cont.isActive) cont.resume(r)
                    }
                }
                return@suspendCancellableCoroutine
            }
            doGetActivities(skip, limit) { r ->
                if (cont.isActive) cont.resume(r)
            }
        }

    private fun doGetActivities(skip: Int, limit: Int, cb: (List<ActivityRecord>) -> Unit) {
        var cleanup: () -> Unit = {}
        val container = FrameLayout(activity).apply {
            setBackgroundColor(Color.TRANSPARENT)
            alpha = 0f
        }
        var pageLoadCount = 0
        var pollRunnable: Runnable? = null
        val done = AtomicBoolean(false)
        val mainHandler = Handler(Looper.getMainLooper())
        val webView = WebView(activity).apply {
            settings.javaScriptEnabled = true
            settings.domStorageEnabled = true
            settings.cacheMode = WebSettings.LOAD_DEFAULT
            webViewClient = object : WebViewClient() {
                override fun onPageFinished(view: WebView?, url: String?) {
                    if (done.get()) return
                    val u = url ?: ""
                    if (!u.contains("active.brytonsport.com")) return
                    pageLoadCount++
                    if (pageLoadCount == 1) {
                        view?.evaluateJavascript(
                            "(function(){localStorage.setItem('Meteor.loginToken','${token.replace("'", "\\'")}');localStorage.setItem('Meteor.userId','${userId.replace("'", "\\'")}');location.reload();})()"
                        ) { }
                    } else {
                        // 轮询 collection 直到数据就绪
                        val query = """
                            (function(){
                              try {
                                var c = Meteor.connection._mongo_livedata_collections['userActivities'];
                                if (!c) return 'wait';
                                var all = c.find().fetch();
                                var out = all.map(function(a){
                                  var s = a.summary||{};
                                  return {
                                    id: a._id,
                                    name: (a.name||'').toString(),
                                    start_time: a.start_time||0,
                                    distance_m: s.total_distance||0,
                                    duration_s: s.total_elapsed_time||0,
                                    avg_speed: s.avg_speed||0
                                  };
                                });
                                return JSON.stringify(out);
                              } catch(e){ return 'error:'+e; }
                            })()
                        """.trimIndent()
                        pollRunnable = object : Runnable {
                            override fun run() {
                                if (done.get()) return
                                view?.evaluateJavascript(query) { res ->
                                    if (done.get()) return@evaluateJavascript
                                    val v = res?.trim()?.trim('"')?.replace("\\\"", "\"") ?: "wait"
                                    when {
                                        v == "wait" || v == "" -> mainHandler.postDelayed(this, 800L)
                                        v.startsWith("error:") -> {
                                            done.set(true)
                                            Log.e(TAG, "list error: $v")
                                            cleanup()
                                            cb(emptyList())
                                        }
                                        else -> {
                                            done.set(true)
                                            val list = parseList(v, skip, limit)
                                            cleanup()
                                            cb(list)
                                        }
                                    }
                                }
                            }
                        }
                        mainHandler.post(pollRunnable!!)
                    }
                }
            }
        }
        val layoutParams = ViewGroup.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)
        container.addView(webView, layoutParams)
        (activity.window.decorView as? ViewGroup)?.addView(container, layoutParams)
        webView.loadUrl("https://active.brytonsport.com/activities")

        // 总超时 30s
        mainHandler.postDelayed({
            if (!done.get()) {
                done.set(true)
                Log.w(TAG, "list timeout")
                cleanup()
                cb(emptyList())
            }
        }, 30000L)

        cleanup = {
            try {
                (activity.window.decorView as? ViewGroup)?.removeView(container)
            } catch (_: Exception) {}
            try { webView.removeAllViews(); webView.destroy() } catch (_: Exception) {}
        }
    }

    private fun parseList(json: String, skip: Int, limit: Int): List<ActivityRecord> {
        val result = mutableListOf<ActivityRecord>()
        try {
            val arr = JSONArray(json)
            var left = skip
            for (i in 0 until arr.length()) {
                if (result.size >= limit) break
                val o = arr.getJSONObject(i)
                if (left > 0) { left--; continue }
                val id = o.optString("id", "")
                if (id.isEmpty()) continue
                val name = o.optString("name", "").ifEmpty { "百锐腾骑行" }
                val startTs = o.optLong("start_time", 0L) * 1000L
                val startTime = if (startTs > 0) {
                    try {
                        java.text.SimpleDateFormat("yyyy-MM-dd HH:mm", java.util.Locale.getDefault())
                            .format(java.util.Date(startTs))
                    } catch (_: Exception) { "" }
                } else ""
                val distM = o.optDouble("distance_m", 0.0)
                val durS = o.optLong("duration_s", 0L)
                result.add(ActivityRecord(
                    id = id,
                    title = name,
                    startTime = startTime,
                    distance = distM / 1000.0,
                    duration = durS.toInt(),
                    source = DataSource.BRYTON,
                    extra = null
                ))
            }
        } catch (e: Exception) {
            Log.e(TAG, "parseList error", e)
        }
        return result
    }
}

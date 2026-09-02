package com.jichi.ob.api

import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.FormBody
import okhttp3.OkHttpClient
import okhttp3.Request
import org.jsoup.Jsoup
import java.util.concurrent.TimeUnit

/**
 * v7.2.0: Wahoo OAuth2直接登录服务（不使用WebView，用OkHttp模拟完整流程）
 *
 * 流程：
 * 1. 访问授权URL → 获取SAML登录页面
 * 2. 提交用户名密码 → 获取SAMLResponse
 * 3. 提交SAMLResponse到saml_callback → 重定向到授权确认页面
 * 4. 提交Authorize表单 → 302重定向到localhost?code=xxx
 * 5. 从URL中提取授权码 → 换取access_token
 */
object WahooOAuth2Service {
    private const val TAG = "WahooOAuth2"

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(30, TimeUnit.SECONDS)
        .writeTimeout(30, TimeUnit.SECONDS)
        .followRedirects(false)  // 不自动跟随重定向，手动处理
        .followSslRedirects(false)
        .build()

    private val cookieStore = mutableMapOf<String, String>()

    /**
     * 直接登录Wahoo并获取access_token
     * @return Pair(access_token, refresh_token) 或 null
     */
    suspend fun login(email: String, password: String): Pair<String, String>? = withContext(Dispatchers.IO) {
        try {
            cookieStore.clear()

            // Step 1: 访问授权URL
            Log.i(TAG, "Step 1: 访问授权URL")
            val authUrl = "https://api.wahooligan.com/oauth/authorize?client_id=${WahooApi.BUILTIN_CLIENT_ID}" +
                    "&redirect_uri=${java.net.URLEncoder.encode(WahooApi.REDIRECT_URI, "UTF-8")}" +
                    "&scope=${java.net.URLEncoder.encode(WahooApi.SCOPES, "UTF-8")}" +
                    "&response_type=code"

            val authResp = executeGet(authUrl)
            if (authResp.code != 200 && authResp.code != 302) {
                Log.e(TAG, "授权URL访问失败: ${authResp.code}")
                return@withContext null
            }

            // 如果是302，跟随到登录页面
            var loginHtml = authResp.body
            var loginUrl = authUrl
            if (authResp.code == 302) {
                val location = authResp.headers["Location"] ?: return@withContext null
                Log.i(TAG, "重定向到: $location")
                val loginResp = executeGet(location)
                loginHtml = loginResp.body
                loginUrl = location
            }

            // Step 2: 解析SAML登录表单并提交
            Log.i(TAG, "Step 2: 解析SAML登录表单")
            val loginDoc = Jsoup.parse(loginHtml)
            val loginForm = loginDoc.selectFirst("form") ?: run {
                Log.e(TAG, "未找到登录表单")
                return@withContext null
            }

            val loginAction = loginForm.attr("action")
            val loginFormData = mutableMapOf<String, String>()

            // 收集所有隐藏字段
            loginForm.select("input[type=hidden]").forEach { input ->
                val name = input.attr("name")
                val value = input.attr("value")
                if (name.isNotEmpty()) loginFormData[name] = value
            }

            loginFormData["email"] = email
            loginFormData["password"] = password

            Log.i(TAG, "登录表单字段: ${loginFormData.keys}")
            Log.i(TAG, "提交登录到: $loginAction")

            val samlResp = executePost(loginAction, loginFormData)
            if (samlResp.code != 200) {
                Log.e(TAG, "登录提交失败: ${samlResp.code}")
                return@withContext null
            }

            // Step 3: 解析SAMLResponse并提交到saml_callback
            Log.i(TAG, "Step 3: 解析SAMLResponse")
            val samlDoc = Jsoup.parse(samlResp.body)
            val samlForm = samlDoc.selectFirst("form") ?: run {
                Log.e(TAG, "未找到SAMLResponse表单")
                return@withContext null
            }

            val samlAction = samlForm.attr("action")
            val samlFormData = mutableMapOf<String, String>()
            samlForm.select("input[type=hidden]").forEach { input ->
                val name = input.attr("name")
                val value = input.attr("value")
                if (name.isNotEmpty()) samlFormData[name] = value
            }

            Log.i(TAG, "SAML表单字段: ${samlFormData.keys}")
            Log.i(TAG, "提交SAML到: $samlAction")

            val callbackResp = executePost(samlAction, samlFormData)
            if (callbackResp.code != 302) {
                Log.e(TAG, "SAML回调失败: ${callbackResp.code}")
                return@withContext null
            }

            val callbackLocation = callbackResp.headers["Location"] ?: return@withContext null
            Log.i(TAG, "SAML回调重定向到: ${callbackLocation.take(100)}")

            // Step 4: 跟随重定向到授权确认页面
            Log.i(TAG, "Step 4: 获取授权确认页面")
            val authorizePageResp = executeGet(callbackLocation)
            if (authorizePageResp.code != 200) {
                Log.e(TAG, "授权确认页面获取失败: ${authorizePageResp.code}")
                return@withContext null
            }

            // Step 5: 解析Authorize表单并提交
            Log.i(TAG, "Step 5: 解析Authorize表单")
            val authorizeDoc = Jsoup.parse(authorizePageResp.body)

            // 找到包含commit=Authorize的表单
            var authorizeForm: org.jsoup.nodes.Element? = null
            for (form in authorizeDoc.select("form")) {
                val commitInput = form.selectFirst("input[name=commit][value=Authorize]")
                if (commitInput != null) {
                    authorizeForm = form
                    break
                }
            }

            if (authorizeForm == null) {
                Log.e(TAG, "未找到Authorize表单")
                return@withContext null
            }

            val authorizeAction = authorizeForm.attr("action")
            val authorizeFormData = mutableMapOf<String, String>()
            authorizeForm.select("input").forEach { input ->
                val name = input.attr("name")
                val value = input.attr("value")
                val type = input.attr("type")
                if (name.isNotEmpty() && type != "checkbox") {
                    authorizeFormData[name] = value
                }
            }

            Log.i(TAG, "Authorize表单字段: ${authorizeFormData.keys}")
            Log.i(TAG, "提交Authorize到: $authorizeAction")

            val finalResp = executePost(authorizeAction, authorizeFormData)
            if (finalResp.code != 302) {
                Log.e(TAG, "Authorize提交失败: ${finalResp.code}")
                return@withContext null
            }

            val finalLocation = finalResp.headers["Location"] ?: return@withContext null
            Log.i(TAG, "最终重定向URL: $finalLocation")

            // Step 6: 从URL中提取授权码
            if (!finalLocation.contains("code=")) {
                Log.e(TAG, "重定向URL中没有授权码: $finalLocation")
                return@withContext null
            }

            val code = try {
                val uri = java.net.URI(finalLocation)
                val query = uri.query ?: ""
                query.split("&").firstOrNull { it.startsWith("code=") }?.substringAfter("code=")
            } catch (e: Exception) {
                finalLocation.substringAfter("code=").substringBefore("&")
            }

            if (code.isNullOrEmpty()) {
                Log.e(TAG, "授权码提取失败")
                return@withContext null
            }

            Log.i(TAG, "✅ 授权码获取成功，长度: ${code.length}")

            // Step 7: 用授权码换取access_token
            Log.i(TAG, "Step 7: 换取access_token")
            val tokenResp = WahooApi().exchangeToken(code, WahooApi.BUILTIN_CLIENT_ID, WahooApi.BUILTIN_CLIENT_SECRET)
            if (tokenResp == null) {
                Log.e(TAG, "token换取失败")
                return@withContext null
            }

            Log.i(TAG, "✅ Wahoo登录成功!")
            tokenResp
        } catch (e: Exception) {
            Log.e(TAG, "登录异常: ${e.message}", e)
            null
        }
    }

    private fun executeGet(url: String): HttpResponse {
        val request = Request.Builder()
            .url(url)
            .header("User-Agent", "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36")
            .header("Cookie", getCookieHeader(url))
            .build()

        client.newCall(request).execute().use { response ->
            saveCookies(url, response.headers("Set-Cookie"))
            return HttpResponse(
                code = response.code,
                body = response.body?.string() ?: "",
                headers = response.headers.toMultimap().mapValues { it.value.firstOrNull() ?: "" }
            )
        }
    }

    private fun executePost(url: String, formData: Map<String, String>): HttpResponse {
        val formBody = FormBody.Builder().apply {
            formData.forEach { (key, value) -> add(key, value) }
        }.build()

        val request = Request.Builder()
            .url(url)
            .header("User-Agent", "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36")
            .header("Cookie", getCookieHeader(url))
            .post(formBody)
            .build()

        client.newCall(request).execute().use { response ->
            saveCookies(url, response.headers("Set-Cookie"))
            return HttpResponse(
                code = response.code,
                body = response.body?.string() ?: "",
                headers = response.headers.toMultimap().mapValues { it.value.firstOrNull() ?: "" }
            )
        }
    }

    private fun getCookieHeader(url: String): String {
        val domain = try { java.net.URI(url).host } catch (_: Exception) { "" }
        return cookieStore.entries
            .filter { domain.contains(it.key) || it.key.contains(domain) }
            .joinToString("; ") { "${it.key}=${it.value}" }
    }

    private fun saveCookies(url: String, cookies: List<String>) {
        val domain = try { java.net.URI(url).host } catch (_: Exception) { "" }
        cookies.forEach { cookie ->
            val parts = cookie.split(";")[0].split("=", limit = 2)
            if (parts.size == 2) {
                cookieStore[parts[0]] = parts[1]
            }
        }
    }

    private data class HttpResponse(
        val code: Int,
        val body: String,
        val headers: Map<String, String>
    )
}

package com.jichi.ob.api

import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.Cookie
import okhttp3.CookieJar
import okhttp3.HttpUrl
import okhttp3.FormBody
import okhttp3.OkHttpClient
import okhttp3.Request
import org.jsoup.Jsoup
import java.util.concurrent.TimeUnit

/**
 * v7.2.1: Wahoo OAuth2直接登录服务（彻底重写，使用OkHttp CookieJar自动管理Cookie）
 *
 * 5个专家视角分析后的修复：
 * 1. 网络请求专家：使用OkHttp CookieJar自动管理Cookie，避免手动匹配domain的bug
 * 2. HTML解析专家：正确解析表单action（处理&amp;实体解码）和相对路径
 * 3. SAML认证专家：正确处理SAML回调的302重定向和Location头解码
 * 4. OAuth2授权专家：正确解析Authorize表单（找到包含commit=Authorize的form）
 * 5. Android平台专家：添加详细日志，协程正确使用，异常处理完善
 */
object WahooOAuth2Service {
    private const val TAG = "WahooOAuth2"

    // 使用CookieJar自动管理Cookie（关键修复：避免手动管理的bug）
    private val cookieStore = mutableListOf<Cookie>()
    private val cookieJar = object : CookieJar {
        override fun saveFromResponse(url: HttpUrl, cookies: List<Cookie>) {
            cookieStore.addAll(cookies)
            Log.d(TAG, "保存Cookie: ${cookies.size}个, domain=${url.host}")
        }
        override fun loadForRequest(url: HttpUrl): List<Cookie> {
            val valid = cookieStore.filter { it.matches(url) }
            Log.d(TAG, "发送Cookie: ${valid.size}个, domain=${url.host}")
            return valid
        }
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(30, TimeUnit.SECONDS)
        .writeTimeout(30, TimeUnit.SECONDS)
        .followRedirects(false)  // 不自动跟随重定向，手动处理
        .followSslRedirects(false)
        .cookieJar(cookieJar)
        .build()

    private const val UA = "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    /**
     * 直接登录Wahoo并获取access_token
     * @return Pair(access_token, refresh_token) 或 null
     */
    suspend fun login(email: String, password: String): Pair<String, String>? = withContext(Dispatchers.IO) {
        try {
            cookieStore.clear()
            Log.i(TAG, "========== Wahoo OAuth2 直接登录开始 ==========")

            // Step 1: 访问授权URL（自动跟随重定向到SAML登录页面）
            Log.i(TAG, "Step 1: 访问授权URL")
            val authUrl = "https://api.wahooligan.com/oauth/authorize?client_id=${WahooApi.BUILTIN_CLIENT_ID}" +
                    "&redirect_uri=${java.net.URLEncoder.encode(WahooApi.REDIRECT_URI, "UTF-8")}" +
                    "&scope=${java.net.URLEncoder.encode(WahooApi.SCOPES, "UTF-8")}" +
                    "&response_type=code"

            // 关键修复：使用单独的client自动跟随重定向，避免手动处理的bug
            val redirectClient = OkHttpClient.Builder()
                .connectTimeout(30, TimeUnit.SECONDS)
                .readTimeout(30, TimeUnit.SECONDS)
                .writeTimeout(30, TimeUnit.SECONDS)
                .followRedirects(true)
                .followSslRedirects(true)
                .cookieJar(cookieJar)
                .build()

            val authRequest = Request.Builder()
                .url(authUrl)
                .header("User-Agent", UA)
                .header("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8")
                .header("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8")
                .get()
                .build()

            val authResp = redirectClient.newCall(authRequest).execute()
            val loginHtml = authResp.body?.string() ?: ""
            val currentUrl = authResp.request.url.toString()
            authResp.close()

            Log.i(TAG, "  状态码: 200(自动跟随重定向后), 最终URL: ${currentUrl.take(100)}")
            Log.i(TAG, "  登录页面HTML长度: ${loginHtml.length}")

            // Step 2: 解析SAML登录表单
            Log.i(TAG, "Step 2: 解析SAML登录表单")
            val loginDoc = Jsoup.parse(loginHtml)
            val loginForm = loginDoc.selectFirst("form") ?: run {
                Log.e(TAG, "  ❌ 未找到登录表单")
                return@withContext null
            }

            val loginAction = resolveUrl(currentUrl, decodeHtmlEntities(loginForm.attr("action")))
            Log.i(TAG, "  登录表单action: $loginAction")

            val loginFormData = mutableMapOf<String, String>()
            loginForm.select("input").forEach { input ->
                val name = input.attr("name")
                val value = input.attr("value")
                val type = input.attr("type").lowercase()
                if (name.isNotEmpty() && type != "checkbox" && type != "submit") {
                    loginFormData[name] = value
                }
            }
            loginFormData["email"] = email
            loginFormData["password"] = password
            Log.i(TAG, "  登录表单字段: ${loginFormData.keys}")

            // Step 3: 提交登录表单
            Log.i(TAG, "Step 3: 提交登录表单")
            val samlResp = executePost(loginAction, loginFormData)
            Log.i(TAG, "  状态码: ${samlResp.code}")

            if (samlResp.code != 200) {
                Log.e(TAG, "  ❌ 登录提交失败: ${samlResp.code}")
                return@withContext null
            }

            // Step 4: 解析SAMLResponse
            Log.i(TAG, "Step 4: 解析SAMLResponse")
            val samlDoc = Jsoup.parse(samlResp.body)
            val samlForm = samlDoc.selectFirst("form") ?: run {
                Log.e(TAG, "  ❌ 未找到SAMLResponse表单（登录可能失败）")
                // 检查是否有错误信息
                val errorText = samlDoc.select(".alert, .error, .flash").text()
                if (errorText.isNotEmpty()) Log.e(TAG, "  错误信息: $errorText")
                return@withContext null
            }

            val samlAction = decodeHtmlEntities(samlForm.attr("action"))
            Log.i(TAG, "  SAML回调action: $samlAction")

            val samlFormData = mutableMapOf<String, String>()
            samlForm.select("input[type=hidden]").forEach { input ->
                val name = input.attr("name")
                val value = input.attr("value")
                if (name.isNotEmpty()) samlFormData[name] = value
            }
            Log.i(TAG, "  SAML表单字段: ${samlFormData.keys}")

            // Step 5: 提交SAMLResponse到saml_callback
            Log.i(TAG, "Step 5: 提交SAMLResponse")
            val callbackResp = executePost(samlAction, samlFormData)
            Log.i(TAG, "  状态码: ${callbackResp.code}")

            if (callbackResp.code != 302) {
                Log.e(TAG, "  ❌ SAML回调失败: ${callbackResp.code}")
                return@withContext null
            }

            val callbackLocation = decodeHtmlEntities(callbackResp.location)
            Log.i(TAG, "  回调重定向: ${callbackLocation.take(100)}")

            // Step 6: 跟随重定向到授权确认页面
            Log.i(TAG, "Step 6: 获取授权确认页面")
            val authorizePageUrl = resolveUrl(samlAction, callbackLocation)
            val authorizePageResp = executeGet(authorizePageUrl)
            Log.i(TAG, "  状态码: ${authorizePageResp.code}")

            if (authorizePageResp.code != 200) {
                Log.e(TAG, "  ❌ 授权确认页面获取失败: ${authorizePageResp.code}")
                return@withContext null
            }

            // Step 7: 解析Authorize表单（关键：找到包含commit=Authorize的form）
            Log.i(TAG, "Step 7: 解析Authorize表单")
            val authorizeDoc = Jsoup.parse(authorizePageResp.body)

            var authorizeForm: org.jsoup.nodes.Element? = null
            for (form in authorizeDoc.select("form")) {
                val hasAuthorize = form.select("input[name=commit][value=Authorize]").isNotEmpty()
                if (hasAuthorize) {
                    authorizeForm = form
                    break
                }
            }

            if (authorizeForm == null) {
                Log.e(TAG, "  ❌ 未找到Authorize表单")
                return@withContext null
            }

            val authorizeAction = resolveUrl(authorizePageUrl, decodeHtmlEntities(authorizeForm.attr("action")))
            Log.i(TAG, "  Authorize表单action: $authorizeAction")

            val authorizeFormData = mutableMapOf<String, String>()
            authorizeForm.select("input").forEach { input ->
                val name = input.attr("name")
                val value = input.attr("value")
                val type = input.attr("type").lowercase()
                if (name.isNotEmpty() && type != "checkbox" && type != "submit") {
                    authorizeFormData[name] = value
                }
            }
            // 确保commit字段存在
            if (!authorizeFormData.containsKey("commit")) {
                authorizeFormData["commit"] = "Authorize"
            }
            Log.i(TAG, "  Authorize表单字段: ${authorizeFormData.keys}")
            Log.i(TAG, "  authenticity_token: ${authorizeFormData["authenticity_token"]?.take(30)}...")
            Log.i(TAG, "  client_id: ${authorizeFormData["client_id"]}")
            Log.i(TAG, "  redirect_uri: ${authorizeFormData["redirect_uri"]}")

            // Step 8: 提交Authorize表单
            Log.i(TAG, "Step 8: 提交Authorize表单")
            val finalResp = executePost(authorizeAction, authorizeFormData)
            Log.i(TAG, "  状态码: ${finalResp.code}")

            if (finalResp.code != 302) {
                Log.e(TAG, "  ❌ Authorize提交失败: ${finalResp.code}")
                Log.e(TAG, "  响应内容前500字: ${finalResp.body.take(500)}")
                return@withContext null
            }

            val finalLocation = finalResp.location
            Log.i(TAG, "  最终重定向URL: $finalLocation")

            // Step 9: 从URL中提取授权码
            if (!finalLocation.contains("code=")) {
                Log.e(TAG, "  ❌ 重定向URL中没有授权码")
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
                Log.e(TAG, "  ❌ 授权码提取失败")
                return@withContext null
            }

            Log.i(TAG, "  ✅ 授权码获取成功，长度: ${code.length}")

            // Step 10: 用授权码换取access_token
            Log.i(TAG, "Step 10: 换取access_token")
            val tokenResp = WahooApi().exchangeToken(code, WahooApi.BUILTIN_CLIENT_ID, WahooApi.BUILTIN_CLIENT_SECRET)
            if (tokenResp == null) {
                Log.e(TAG, "  ❌ token换取失败")
                return@withContext null
            }

            Log.i(TAG, "✅✅✅ Wahoo登录成功!")
            tokenResp
        } catch (e: Exception) {
            Log.e(TAG, "❌ 登录异常: ${e.message}", e)
            null
        }
    }

    private fun executeGet(url: String): HttpResponse {
        val request = Request.Builder()
            .url(url)
            .header("User-Agent", UA)
            .header("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8")
            .header("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8")
            .get()
            .build()

        client.newCall(request).execute().use { response ->
            return HttpResponse(
                code = response.code,
                body = response.body?.string() ?: "",
                location = response.header("Location") ?: "",
                finalUrl = response.request.url.toString()
            )
        }
    }

    private fun executePost(url: String, formData: Map<String, String>): HttpResponse {
        val formBody = FormBody.Builder().apply {
            formData.forEach { (key, value) -> add(key, value) }
        }.build()

        val request = Request.Builder()
            .url(url)
            .header("User-Agent", UA)
            .header("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8")
            .header("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8")
            .header("Referer", url)
            .post(formBody)
            .build()

        client.newCall(request).execute().use { response ->
            return HttpResponse(
                code = response.code,
                body = response.body?.string() ?: "",
                location = response.header("Location") ?: "",
                finalUrl = response.request.url.toString()
            )
        }
    }

    /** 解析相对URL为绝对URL */
    private fun resolveUrl(base: String, relative: String): String {
        return try {
            val baseUri = java.net.URI(base)
            baseUri.resolve(relative).toString()
        } catch (e: Exception) {
            if (relative.startsWith("http")) relative else "https://api.wahooligan.com$relative"
        }
    }

    /** 解码HTML实体（&amp; -> &） */
    private fun decodeHtmlEntities(text: String): String {
        return text.replace("&amp;", "&")
            .replace("&lt;", "<")
            .replace("&gt;", ">")
            .replace("&quot;", "\"")
            .replace("&#39;", "'")
    }

    private data class HttpResponse(
        val code: Int,
        val body: String,
        val location: String,
        val finalUrl: String
    )
}

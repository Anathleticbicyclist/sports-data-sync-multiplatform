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
import java.security.MessageDigest
import java.security.SecureRandom
import java.util.Base64
import java.util.concurrent.TimeUnit

/**
 * v7.5.3: Wahoo OAuth2直接登录服务
 * - 修复PKCE: 生成code_verifier + code_challenge(SHA256)，授权URL带code_challenge，换token带code_verifier
 * - 修复SAML表单action相对路径bug: 用resolveUrl补全域名
 * - token换取失败时打印响应体
 */
object WahooOAuth2Service {
    private const val TAG = "WahooOAuth2"

    // 调试日志回调（用于在界面上显示）
    var debugLogCallback: ((String) -> Unit)? = null
    // v7.5.4: 最近一次登录失败的具体原因标识（用于MainActivity弹出针对性引导）
    var lastError: String? = null
    // v7.5.4: token数量超限错误标识
    const val ERROR_TOKEN_LIMIT = "TOKEN_LIMIT_EXCEEDED"

    // v7.5.3: PKCE code_verifier，全程保留直到换取token完成
    private var currentCodeVerifier: String? = null

    private fun log(msg: String) {
        Log.i(TAG, msg)
        debugLogCallback?.invoke(msg)
    }

    private fun logError(msg: String, e: Throwable? = null) {
        Log.e(TAG, msg, e)
        debugLogCallback?.invoke("❌ $msg")
        e?.let { debugLogCallback?.invoke("   ${it.javaClass.simpleName}: ${it.message}") }
    }

    // v7.5.3: 生成PKCE code_verifier (43-128字符的随机字符串)
    private fun generateCodeVerifier(): String {
        val random = SecureRandom()
        val bytes = ByteArray(32)
        random.nextBytes(bytes)
        return Base64.getUrlEncoder().withoutPadding().encodeToString(bytes)
    }

    // v7.5.3: 计算code_challenge = BASE64URL(SHA256(code_verifier))
    private fun generateCodeChallenge(verifier: String): String {
        val digest = MessageDigest.getInstance("SHA-256")
        val hash = digest.digest(verifier.toByteArray(Charsets.UTF_8))
        return Base64.getUrlEncoder().withoutPadding().encodeToString(hash)
    }

    // CookieJar：去重+过期过滤
    private val cookieStore = mutableListOf<Cookie>()
    private val cookieJar = object : CookieJar {
        override fun saveFromResponse(url: HttpUrl, cookies: List<Cookie>) {
            cookies.forEach { newCookie ->
                // 删除相同name+domain的旧Cookie
                cookieStore.removeAll { it.name == newCookie.name && it.domain == newCookie.domain }
                cookieStore.add(newCookie)
            }
            log("  🍪 保存Cookie: ${cookies.size}个, domain=${url.host}, 总数=${cookieStore.size}")
        }
        override fun loadForRequest(url: HttpUrl): List<Cookie> {
            val now = System.currentTimeMillis()
            val valid = cookieStore.filter { it.matches(url) && it.expiresAt > now }
            log("  🍪 发送Cookie: ${valid.size}个, domain=${url.host}")
            return valid
        }
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(30, TimeUnit.SECONDS)
        .writeTimeout(30, TimeUnit.SECONDS)
        .followRedirects(false)
        .followSslRedirects(false)
        .cookieJar(cookieJar)
        .build()

    private const val UA = "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    suspend fun login(email: String, password: String): Pair<String, String>? = withContext(Dispatchers.IO) {
        try {
            cookieStore.clear()
            log("========== Wahoo OAuth2 登录开始 ==========")
            log("账号: $email")

            // Step 1: 访问授权URL（自动跟随重定向）
            log("Step 1: 访问授权URL...")
            // v7.5.3: 生成PKCE code_verifier和code_challenge
            currentCodeVerifier = generateCodeVerifier()
            val codeChallenge = generateCodeChallenge(currentCodeVerifier!!)
            log("  🔑 PKCE code_verifier长度: ${currentCodeVerifier!!.length}, code_challenge长度: ${codeChallenge.length}")

            val authUrl = "https://api.wahooligan.com/oauth/authorize?client_id=${WahooApi.BUILTIN_CLIENT_ID}" +
                    "&redirect_uri=${java.net.URLEncoder.encode(WahooApi.REDIRECT_URI, "UTF-8")}" +
                    "&scope=${java.net.URLEncoder.encode(WahooApi.SCOPES, "UTF-8")}" +
                    "&response_type=code" +
                    "&code_challenge=${java.net.URLEncoder.encode(codeChallenge, "UTF-8")}" +
                    "&code_challenge_method=S256"

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
            val authCode = authResp.code
            authResp.close()

            log("  状态码: $authCode, 最终URL: ${currentUrl.take(100)}")
            log("  HTML长度: ${loginHtml.length}")

            if (loginHtml.isEmpty()) {
                logError("登录页面HTML为空")
                return@withContext null
            }

            // Step 2: 解析SAML登录表单
            log("Step 2: 解析SAML登录表单...")
            val loginDoc = Jsoup.parse(loginHtml)
            val loginForm = loginDoc.selectFirst("form")
            if (loginForm == null) {
                logError("未找到登录表单，页面可能是错误页")
                log("  页面标题: ${loginDoc.title()}")
                log("  页面前500字: ${loginHtml.take(500)}")
                return@withContext null
            }

            val loginAction = resolveUrl(currentUrl, decodeHtmlEntities(loginForm.attr("action")))
            log("  登录表单action: $loginAction")

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
            log("  登录表单字段: ${loginFormData.keys}")

            // Step 3: 提交登录表单
            log("Step 3: 提交登录表单...")
            val samlResp = executePost(loginAction, loginFormData)
            log("  状态码: ${samlResp.code}, 响应长度: ${samlResp.body.length}")

            if (samlResp.code != 200) {
                logError("登录提交失败: ${samlResp.code}")
                log("  响应前500字: ${samlResp.body.take(500)}")
                return@withContext null
            }

            // Step 4: 解析SAMLResponse
            log("Step 4: 解析SAMLResponse...")
            val samlDoc = Jsoup.parse(samlResp.body)
            val samlForm = samlDoc.selectFirst("form")
            if (samlForm == null) {
                logError("未找到SAMLResponse表单（登录可能失败）")
                val errorText = samlDoc.select(".alert, .error, .flash, [class*=error]").text()
                if (errorText.isNotEmpty()) log("  错误信息: $errorText")
                log("  页面标题: ${samlDoc.title()}")
                log("  页面前500字: ${samlResp.body.take(500)}")
                return@withContext null
            }

            // v7.5.3: 修复SAML回调action相对路径bug，用resolveUrl补全域名
            val samlAction = resolveUrl(samlResp.finalUrl, decodeHtmlEntities(samlForm.attr("action")))
            log("  SAML回调action: $samlAction")

            val samlFormData = mutableMapOf<String, String>()
            samlForm.select("input[type=hidden]").forEach { input ->
                val name = input.attr("name")
                val value = input.attr("value")
                if (name.isNotEmpty()) samlFormData[name] = value
            }
            log("  SAML表单字段: ${samlFormData.keys}")

            // Step 5: 提交SAMLResponse
            log("Step 5: 提交SAMLResponse...")
            val callbackResp = executePost(samlAction, samlFormData)
            log("  状态码: ${callbackResp.code}")

            if (callbackResp.code != 302) {
                logError("SAML回调失败: ${callbackResp.code}")
                log("  响应前500字: ${callbackResp.body.take(500)}")
                return@withContext null
            }

            val callbackLocation = decodeHtmlEntities(callbackResp.location)
            log("  回调重定向: ${callbackLocation.take(100)}")

            // Step 6: 获取授权确认页面
            log("Step 6: 获取授权确认页面...")
            val authorizePageUrl = resolveUrl(samlAction, callbackLocation)
            val authorizePageResp = executeGet(authorizePageUrl)
            log("  状态码: ${authorizePageResp.code}, 响应长度: ${authorizePageResp.body.length}")

            if (authorizePageResp.code != 200) {
                logError("授权确认页面获取失败: ${authorizePageResp.code}")
                return@withContext null
            }

            // Step 7: 解析Authorize表单
            log("Step 7: 解析Authorize表单...")
            val authorizeDoc = Jsoup.parse(authorizePageResp.body)

            var authorizeForm: org.jsoup.nodes.Element? = null
            for (form in authorizeDoc.select("form")) {
                // v7.3.0: 同时支持英文"Authorize"和中文"授权"（页面locale=zh-Hans时按钮是中文）
                val commitInput = form.selectFirst("input[name=commit]")
                val commitValue = commitInput?.attr("value") ?: ""
                val hasAuthorize = commitValue.equals("Authorize", ignoreCase = true) || 
                                   commitValue.equals("授权") ||
                                   commitValue.equals("Allow", ignoreCase = true) ||
                                   commitValue.equals("同意")
                // 排除取消/拒绝按钮
                val isCancel = commitValue.equals("Cancel", ignoreCase = true) || 
                               commitValue.equals("取消") ||
                               commitValue.equals("Deny", ignoreCase = true) ||
                               commitValue.equals("拒绝")
                if (hasAuthorize && !isCancel) {
                    authorizeForm = form
                    log("  匹配到授权按钮: value=$commitValue")
                    break
                }
            }

            if (authorizeForm == null) {
                logError("未找到Authorize表单")
                log("  页面标题: ${authorizeDoc.title()}")
                log("  页面前500字: ${authorizePageResp.body.take(500)}")
                return@withContext null
            }

            val authorizeAction = resolveUrl(authorizePageUrl, decodeHtmlEntities(authorizeForm.attr("action")))
            log("  Authorize表单action: $authorizeAction")

            val authorizeFormData = mutableMapOf<String, String>()
            authorizeForm.select("input").forEach { input ->
                val name = input.attr("name")
                val value = input.attr("value")
                val type = input.attr("type").lowercase()
                if (name.isNotEmpty() && type != "checkbox" && type != "submit") {
                    authorizeFormData[name] = value
                }
            }
            if (!authorizeFormData.containsKey("commit")) {
                authorizeFormData["commit"] = "Authorize"
            }
            log("  Authorize表单字段: ${authorizeFormData.keys}")

            // Step 8: 提交Authorize表单
            log("Step 8: 提交Authorize表单...")
            val finalResp = executePost(authorizeAction, authorizeFormData)
            log("  状态码: ${finalResp.code}")

            if (finalResp.code != 302) {
                logError("Authorize提交失败: ${finalResp.code}")
                log("  响应前500字: ${finalResp.body.take(500)}")
                return@withContext null
            }

            val finalLocation = finalResp.location
            log("  最终重定向URL: $finalLocation")

            // Step 9: 提取授权码
            if (!finalLocation.contains("code=")) {
                logError("重定向URL中没有授权码")
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
                logError("授权码提取失败")
                return@withContext null
            }

            log("  ✅ 授权码获取成功，长度: ${code.length}")

            // Step 10: 换取access_token（传入PKCE code_verifier）
            log("Step 10: 换取access_token...")
            val verifier = currentCodeVerifier
            if (verifier.isNullOrEmpty()) {
                logError("PKCE code_verifier为空，无法换取token")
                return@withContext null
            }
            // v7.5.4: 复用同一个WahooApi实例，便于读取真实错误响应体
            val api = WahooApi()
            api.debugLogCallback = { msg -> log(msg) }
            val tokenResp = api.exchangeToken(code, WahooApi.BUILTIN_CLIENT_ID, WahooApi.BUILTIN_CLIENT_SECRET, verifier)
            // v7.5.3: 换取token后销毁code_verifier
            currentCodeVerifier = null
            if (tokenResp == null) {
                // v7.5.4: 展示真实错误原因（如token数量超限），不再笼统报"请检查邮箱密码"
                val err = api.lastExchangeError ?: "未知错误"
                if (err.contains("Too many unrevoked access tokens")) {
                    lastError = ERROR_TOKEN_LIMIT
                    logError("Wahoo令牌数量超限：该账号下未撤销token已达10枚上限")
                    log("📌 解决方法：打开Wahoo官方App → 设置(Settings) → 已授权应用(Authorized Apps) → 找到\"鸡翅幸哲迈进OB\" → 点击撤销授权(Deauthorize) → 回到本应用重新登录")
                } else {
                    lastError = err
                    logError("token换取失败: $err")
                }
                return@withContext null
            }

            log("✅✅✅ Wahoo登录成功!")
            tokenResp
        } catch (e: Exception) {
            logError("登录异常", e)
            e.printStackTrace()
            null
        }
    }

    private fun executeGet(url: String): HttpResponse {
        log("  GET: $url")
        val request = Request.Builder()
            .url(url)
            .header("User-Agent", UA)
            .header("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8")
            .header("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8")
            .get()
            .build()

        client.newCall(request).execute().use { response ->
            val body = response.body?.string() ?: ""
            log("  ← ${response.code}, 长度=${body.length}")
            return HttpResponse(
                code = response.code,
                body = body,
                location = response.header("Location") ?: "",
                finalUrl = response.request.url.toString()
            )
        }
    }

    private fun executePost(url: String, formData: Map<String, String>): HttpResponse {
        log("  POST: $url (${formData.size}字段)")
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
            val body = response.body?.string() ?: ""
            log("  ← ${response.code}, 长度=${body.length}")
            return HttpResponse(
                code = response.code,
                body = body,
                location = response.header("Location") ?: "",
                finalUrl = response.request.url.toString()
            )
        }
    }

    private fun resolveUrl(base: String, relative: String): String {
        return try {
            val baseUri = java.net.URI(base)
            baseUri.resolve(relative).toString()
        } catch (e: Exception) {
            if (relative.startsWith("http")) relative else "https://api.wahooligan.com$relative"
        }
    }

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

package com.jichi.ob.api

import android.util.Log
import org.json.JSONObject
import java.net.URLEncoder
import java.security.SecureRandom
import java.util.Base64
import javax.crypto.Mac
import javax.crypto.spec.SecretKeySpec

/**
 * v6.5.3 佳明 OAuth 认证助手
 * 流程：SSO登录获取ticket → OAuth1 preauthorized → OAuth2 exchange → Bearer token调API
 * 参考：garth (已废弃) + python-garminconnect (新移动SSO流)
 * Consumer credentials 来自 garth 共享 S3 桶
 */
object GarminOAuthHelper {
    private const val TAG = "GarminOAuth"

    // garth 共享的 OAuth consumer（佳明Connect Android App 同款）
    private const val CONSUMER_KEY = "fc3e99d2-118c-44b8-8ae3-03370dde24c0"
    private const val CONSUMER_SECRET = "E08WAR897WEy2knn7aFBrvegVAf0AFdWBBF"
    private const val ANDROID_UA = "com.garmin.android.apps.connectmobile"

    data class OAuth1Token(
        val oauthToken: String,
        val oauthTokenSecret: String,
        val mfaToken: String? = null
    )

    data class OAuth2Token(
        val accessToken: String,
        val refreshToken: String,
        val expiresIn: Long,
        val refreshExpiresIn: Long,
        val scope: String? = null,
        val jti: String? = null
    ) {
        val expiresAt: Long = System.currentTimeMillis() / 1000 + expiresIn
        val refreshExpiresAt: Long = System.currentTimeMillis() / 1000 + refreshExpiresIn

        fun isExpired(): Boolean = System.currentTimeMillis() / 1000 >= expiresAt - 60
        fun isRefreshExpired(): Boolean = System.currentTimeMillis() / 1000 >= refreshExpiresAt - 60

        fun toJson(): String = JSONObject().apply {
            put("access_token", accessToken)
            put("refresh_token", refreshToken)
            put("expires_in", expiresIn)
            put("refresh_token_expires_in", refreshExpiresIn)
            put("expires_at", expiresAt)
            put("refresh_expires_at", refreshExpiresAt)
            scope?.let { put("scope", it) }
            jti?.let { put("jti", it) }
        }.toString()

        companion object {
            fun fromJson(json: String): OAuth2Token? {
                return try {
                    val o = JSONObject(json)
                    OAuth2Token(
                        accessToken = o.getString("access_token"),
                        refreshToken = o.optString("refresh_token", ""),
                        expiresIn = o.optLong("expires_in", 3600),
                        refreshExpiresIn = o.optLong("refresh_token_expires_in", 71400),
                        scope = o.optString("scope", null),
                        jti = o.optString("jti", null)
                    )
                } catch (e: Exception) {
                    Log.e(TAG, "parse OAuth2 token failed", e)
                    null
                }
            }
        }
    }

    /**
     * 用 SSO ticket 换取 OAuth1 token
     * @param cn true=中国域(connectapi.garmin.cn), false=国际域
     * @param serviceUrl 登录时的service参数，必须和ticket匹配
     */
    fun exchangeTicketForOAuth1(ticket: String, cn: Boolean, serviceUrl: String): OAuth1Token {
        val base = if (cn) "https://connectapi.garmin.cn" else "https://connectapi.garmin.com"
        val loginUrl = if (cn) "https://sso.garmin.cn/sso/embed" else "https://sso.garmin.com/sso/embed"
        val url = "$base/oauth-service/oauth/preauthorized?ticket=${urlEncode(ticket)}" +
                "&login-url=${urlEncode(serviceUrl)}&accepts-mfa-tokens=true"

        val authHeader = buildOAuth1Header(url, "GET", null, null)
        Log.d(TAG, "OAuth1 preauthorized: $url")

        val conn = java.net.URL(url).openConnection() as java.net.HttpURLConnection
        conn.requestMethod = "GET"
        conn.setRequestProperty("User-Agent", ANDROID_UA)
        conn.setRequestProperty("Authorization", authHeader)
        conn.connectTimeout = 15000
        conn.readTimeout = 15000

        val code = conn.responseCode
        val body = if (code == 200) conn.inputStream.bufferedReader().readText()
                   else conn.errorStream?.bufferedReader()?.readText() ?: ""
        Log.d(TAG, "OAuth1 preauthorized HTTP $code: ${body.take(200)}")

        if (code != 200) throw Exception("OAuth1 preauthorized failed: HTTP $code, $body")

        // 解析 oauth_token=xxx&oauth_token_secret=yyy
        val params = body.split("&").associate {
            val kv = it.split("=", limit = 2)
            kv[0] to (kv.getOrNull(1) ?: "")
        }
        return OAuth1Token(
            oauthToken = params["oauth_token"] ?: throw Exception("no oauth_token"),
            oauthTokenSecret = params["oauth_token_secret"] ?: throw Exception("no oauth_token_secret"),
            mfaToken = params["mfa_token"]
        )
    }

    /** 用 OAuth1 token 换取 OAuth2 Bearer token */
    fun exchangeOAuth1ForOAuth2(oauth1: OAuth1Token, cn: Boolean): OAuth2Token {
        val base = if (cn) "https://connectapi.garmin.cn" else "https://connectapi.garmin.com"
        val url = "$base/oauth-service/oauth/exchange/user/2.0"

        val authHeader = buildOAuth1Header(url, "POST", oauth1.oauthToken, oauth1.oauthTokenSecret)
        Log.d(TAG, "OAuth2 exchange: $url")

        val conn = java.net.URL(url).openConnection() as java.net.HttpURLConnection
        conn.requestMethod = "POST"
        conn.setRequestProperty("User-Agent", ANDROID_UA)
        conn.setRequestProperty("Authorization", authHeader)
        conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded")
        conn.doOutput = true
        conn.connectTimeout = 15000
        conn.readTimeout = 15000

        // 如果有mfa_token，带上
        val postBody = if (!oauth1.mfaToken.isNullOrEmpty()) {
            "mfa_token=${urlEncode(oauth1.mfaToken)}"
        } else ""
        if (postBody.isNotEmpty()) conn.outputStream.write(postBody.toByteArray())

        val code = conn.responseCode
        val body = if (code == 200) conn.inputStream.bufferedReader().readText()
                   else conn.errorStream?.bufferedReader()?.readText() ?: ""
        Log.d(TAG, "OAuth2 exchange HTTP $code: ${body.take(200)}")

        if (code != 200) throw Exception("OAuth2 exchange failed: HTTP $code, $body")

        val json = JSONObject(body)
        return OAuth2Token(
            accessToken = json.getString("access_token"),
            refreshToken = json.optString("refresh_token", ""),
            expiresIn = json.optLong("expires_in", 3600),
            refreshExpiresIn = json.optLong("refresh_token_expires_in", 71400),
            scope = json.optString("scope", null),
            jti = json.optString("jti", null)
        )
    }

    /** 完整流程：ticket → OAuth1 → OAuth2 */
    /**
     * v7.5.1: 佳明中国专用——用邮箱密码直接登录（模拟garth库mobile SSO流程，不需要WebView）
     * 流程：访问sign-in设置cookie → POST /mobile/api/login提交邮箱密码 → 获取serviceTicketId → 换OAuth1→OAuth2
     * 参考：garth库 sso.py login() 方法
     */
    fun loginWithCredentialsCn(email: String, password: String): OAuth2Token {
        val clientId = "GCM_ANDROID_DARK"
        val serviceUrl = "https://mobile.integration.garmin.cn/gcm/android"
        val ssoBase = "https://sso.garmin.cn"
        
        // 浏览器风格headers（避免Cloudflare挑战）
        val ssoHeaders = mapOf(
            "User-Agent" to "Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148",
            "Accept" to "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
            "Accept-Language" to "en-US,en;q=0.9",
            "Sec-Fetch-Mode" to "navigate",
            "Sec-Fetch-Dest" to "document"
        )
        
        // Step 1: 访问sign-in页面设置cookie
        Log.i(TAG, "Step 1: 访问佳明中国sign-in设置cookie...")
        val signInUrl = "$ssoBase/mobile/sso/en/sign-in?clientId=$clientId"
        val cookies = mutableMapOf<String, String>()
        
        val conn1 = java.net.URL(signInUrl).openConnection() as java.net.HttpURLConnection
        conn1.requestMethod = "GET"
        ssoHeaders.forEach { (k, v) -> conn1.setRequestProperty(k, v) }
        conn1.setRequestProperty("Sec-Fetch-Site", "none")
        conn1.connectTimeout = 15000
        conn1.readTimeout = 15000
        conn1.instanceFollowRedirects = true
        val code1 = conn1.responseCode
        // 提取所有Set-Cookie
        var i = 0
        while (true) {
            val headerName = conn1.getHeaderFieldKey(i)
            val headerValue = conn1.getHeaderField(i)
            if (headerName == null && headerValue == null) break
            if ("Set-Cookie".equals(headerName, ignoreCase = true)) {
                val cookiePart = headerValue.substringBefore(";")
                val eqIdx = cookiePart.indexOf("=")
                if (eqIdx > 0) {
                    cookies[cookiePart.substring(0, eqIdx)] = cookiePart.substring(eqIdx + 1)
                }
            }
            i++
        }
        conn1.disconnect()
        Log.i(TAG, "  sign-in HTTP $code1, 获取到 ${cookies.size} 个cookie")
        
        // Step 2: POST /mobile/api/login 提交邮箱密码
        Log.i(TAG, "Step 2: 提交登录表单...")
        val loginParams = "clientId=$clientId&locale=en-US&service=${java.net.URLEncoder.encode(serviceUrl, "UTF-8")}"
        val loginUrl = "$ssoBase/mobile/api/login?$loginParams"
        val jsonBody = JSONObject().apply {
            put("username", email)
            put("password", password)
            put("rememberMe", false)
            put("captchaToken", "")
        }.toString()
        
        val conn2 = java.net.URL(loginUrl).openConnection() as java.net.HttpURLConnection
        conn2.requestMethod = "POST"
        ssoHeaders.forEach { (k, v) -> conn2.setRequestProperty(k, v) }
        conn2.setRequestProperty("Content-Type", "application/json")
        conn2.setRequestProperty("Cookie", cookies.entries.joinToString("; ") { "${it.key}=${it.value}" })
        conn2.doOutput = true
        conn2.connectTimeout = 15000
        conn2.readTimeout = 15000
        conn2.outputStream.write(jsonBody.toByteArray())
        conn2.outputStream.flush()
        
        val code2 = conn2.responseCode
        val body2 = if (code2 == 200) conn2.inputStream.bufferedReader().readText()
                    else conn2.errorStream?.bufferedReader()?.readText() ?: ""
        conn2.disconnect()
        Log.i(TAG, "  登录HTTP $code2, 响应: ${body2.take(300)}")
        
        if (code2 != 200) throw Exception("佳明中国登录失败: HTTP $code2, $body2")
        
        // 解析响应，获取serviceTicketId
        val respJson = JSONObject(body2)
        val status = respJson.optJSONObject("responseStatus")
        val statusType = status?.optString("type", "UNKNOWN") ?: "UNKNOWN"
        Log.i(TAG, "  登录状态: $statusType")
        
        if (statusType == "MFA_REQUIRED") {
            throw Exception("佳明中国需要两步验证(MFA)，请先在佳明App中关闭两步验证")
        }
        if (statusType != "SUCCESSFUL") {
            val message = status?.optString("message", "") ?: ""
            throw Exception("佳明中国登录失败: $statusType - $message")
        }
        
        val ticket = respJson.optString("serviceTicketId", "")
        if (ticket.isEmpty()) throw Exception("佳明中国登录成功但未获取到serviceTicketId")
        Log.i(TAG, "✅ 获取到serviceTicketId: ${ticket.take(20)}...")
        
        // Step 3: 用ticket换OAuth1→OAuth2（复用现有方法）
        return loginWithTicket(ticket, true, serviceUrl)
    }

    fun loginWithTicket(ticket: String, cn: Boolean, serviceUrl: String): OAuth2Token {
        val oauth1 = exchangeTicketForOAuth1(ticket, cn, serviceUrl)
        Log.i(TAG, "✅ OAuth1 token获取成功: ${oauth1.oauthToken.take(20)}...")
        val oauth2 = exchangeOAuth1ForOAuth2(oauth1, cn)
        Log.i(TAG, "✅ OAuth2 token获取成功: ${oauth2.accessToken.take(20)}...")
        return oauth2
    }

    /**
     * 构建 OAuth1 HMAC-SHA1 签名头
     */
    private fun buildOAuth1Header(
        url: String,
        method: String,
        oauthToken: String?,
        oauthTokenSecret: String?
    ): String {
        val timestamp = (System.currentTimeMillis() / 1000).toString()
        val nonce = generateNonce()

        val params = mutableMapOf(
            "oauth_consumer_key" to CONSUMER_KEY,
            "oauth_nonce" to nonce,
            "oauth_signature_method" to "HMAC-SHA1",
            "oauth_timestamp" to timestamp,
            "oauth_version" to "1.0"
        )
        oauthToken?.takeIf { it.isNotEmpty() }?.let { params["oauth_token"] = it }

        // 把URL中的query参数也加入签名
        val queryStart = url.indexOf('?')
        val baseUrl = if (queryStart > 0) url.substring(0, queryStart) else url
        if (queryStart > 0) {
            url.substring(queryStart + 1).split("&").forEach { param ->
                val kv = param.split("=", limit = 2)
                if (kv.size == 2) params[urlDecode(kv[0])] = urlDecode(kv[1])
            }
        }

        // 排序并拼接
        val sortedParams = params.toSortedMap()
        val paramString = sortedParams.entries.joinToString("&") {
            "${urlEncode(it.key)}=${urlEncode(it.value)}"
        }

        val baseString = "${method.uppercase()}&${urlEncode(baseUrl)}&${urlEncode(paramString)}"
        val signingKey = "${urlEncode(CONSUMER_SECRET)}&${urlEncode(oauthTokenSecret ?: "")}"

        val signature = hmacSha1Base64(signingKey, baseString)
        params["oauth_signature"] = signature

        // 构建 Authorization 头（只包含oauth_*参数，不包含业务参数）
        val oauthParams = params.filterKeys { it.startsWith("oauth_") }.toSortedMap()
        val headerParams = oauthParams.entries.joinToString(", ") {
            "${urlEncode(it.key)}=\"${urlEncode(it.value)}\""
        }
        return "OAuth $headerParams"
    }

    private fun hmacSha1Base64(key: String, data: String): String {
        val mac = Mac.getInstance("HmacSHA1")
        mac.init(SecretKeySpec(key.toByteArray(Charsets.UTF_8), "HmacSHA1"))
        val raw = mac.doFinal(data.toByteArray(Charsets.UTF_8))
        return Base64.getEncoder().encodeToString(raw)
    }

    private fun generateNonce(): String {
        val bytes = ByteArray(16)
        SecureRandom().nextBytes(bytes)
        return bytes.joinToString("") { "%02x".format(it) }
    }

    private fun urlEncode(s: String): String = URLEncoder.encode(s, "UTF-8")
        .replace("+", "%20").replace("*", "%2A").replace("%7E", "~")

    private fun urlDecode(s: String): String = java.net.URLDecoder.decode(s, "UTF-8")
}

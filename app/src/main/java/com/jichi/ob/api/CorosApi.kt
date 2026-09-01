package com.jichi.ob.api

import android.util.Log
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.FormBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONObject
import java.security.MessageDigest
import javax.crypto.Mac
import javax.crypto.spec.SecretKeySpec
import java.util.concurrent.TimeUnit

/**
 * 高驰(COROS) API（v6.5.0 新增）
 *
 * 依据开源项目 XiaoSiHwang/garmin-sync-coros 逆向接口（已逐行核对源码）：
 * - 三区域：regionId 1=国际(teamapi.coros.com, AWS coros-s3) / 2=中国(teamcnapi.coros.com, 阿里云 coros-oss) / 3=欧洲(teameuapi.coros.com, AWS eu-coros)
 * - 认证：登录后 accessToken（WebView 登录从 CPL-coros-token cookie 捕获），regionId 从 CPL-coros-region cookie 捕获
 * - 列表：GET {teamapi}/activity/query
 * - 下载：POST {teamapi}/activity/detail/download?labelId&sportType&fileType=4(FIT)
 * - 上传：STS→OSS(FIT)→POST {teamapi}/activity/fit/import
 * - 限制：高驰单设备登录，同步期间不能开网页/App
 */
class CorosApi {

    companion object {
        private const val TAG = "CorosApi"

        /** 中国区登录页（WebView） */
        const val LOGIN_URL_CN = "https://trainingcn.coros.com/"
        /** 国际区登录页（WebView） */
        const val LOGIN_URL_INT = "https://training.coros.com/login"

        // 区域配置（region_config.py 实锤）
        private val REGIONCONFIG = mapOf(
            1 to Region("https://teamapi.coros.com", "https://training.coros.com"),
            2 to Region("https://teamcnapi.coros.com", "https://trainingcn.coros.com"),
            3 to Region("https://teameuapi.coros.com", "https://trainingeu.coros.com")
        )

        // STS 配置（sts_config.py 实锤）
        private val STS_CONFIG = mapOf(
            1 to Sts("coros-s3", "aws", "877571111A1EE5316E4B590103D4B5B3"),
            2 to Sts("coros-oss", "aliyun", "9AD4AA35AAFEE6BB1E847A76848D58DF"),
            3 to Sts("eu-coros", "aws", "877571111A1EE5316E4B590103D4B5B3")
        )
        private const val STS_APP_ID = "1660188068672619112"
        private const val STS_V = "2"
        private const val STS_SALT = "9y78gpoERW4lBNYL"

        private const val UA = "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36"
    }

    private data class Region(val teamapi: String, val host: String)
    private data class Sts(val bucket: String, val service: String, val sign: String)

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    // ===== 区域工具 =====
    private fun teamApi(regionId: Int): String = REGIONCONFIG[regionId]?.teamapi ?: "https://teamcnapi.coros.com"

    private fun authHeaders(token: String, regionId: Int) = mapOf(
        "Accept" to "application/json, text/plain, */*",
        "accesstoken" to token,
        "Cookie" to "CPL-coros-region=$regionId; CPL-coros-token=$token",
        "User-Agent" to UA
    )

    /** 从凭证字符串解析 token;regionId;cookie（WebView登录返回格式） */
    private fun parseCredential(cred: String): Triple<String, Int, String> {
        val parts = cred.split(";")
        val token = parts.getOrNull(0) ?: ""
        val regionId = parts.getOrNull(1)?.toIntOrNull() ?: 2
        val cookie = parts.drop(2).joinToString(";")
        return Triple(token, regionId, cookie)
    }

    /** 获取用户名（/account 或 user 接口） */
    suspend fun getUsername(cred: String): String? = withContext(Dispatchers.IO) {
        try {
            val (token, regionId, _) = parseCredential(cred)
            if (token.isEmpty()) return@withContext null
            // 高驰无统一user接口，尝试从 cookie / token 前缀返回占位
            null
        } catch (e: Exception) { null }
    }

    /**
     * 获取高驰 userId（v6.5.5 新增）
     * 高驰 fit/import 的 OSS object key 格式为 fit_zip/{userId}/{md5}.zip
     * 尝试从 /account 接口获取，失败则从活动列表第一条记录的 userId 字段提取
     */
    suspend fun getUserId(cred: String): String = withContext(Dispatchers.IO) {
        val (token, regionId, _) = parseCredential(cred)
        if (token.isEmpty()) return@withContext "0"
        try {
            // 尝试1: GET /account（高驰Training Hub用户信息接口）
            val url1 = "${teamApi(regionId)}/account"
            val req1 = Request.Builder().url(url1).apply {
                authHeaders(token, regionId).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req1).execute().use { resp ->
                val body = resp.body?.string() ?: ""
                Log.d(TAG, "getUserId /account HTTP ${resp.code}: ${body.take(300)}")
                if (resp.code == 200) {
                    val json = JSONObject(body)
                    if (json.optString("result") == "0000") {
                        val data = json.optJSONObject("data")
                        val uid = data?.optString("userId") ?: data?.optString("id") ?: ""
                        if (uid.isNotEmpty()) return@withContext uid
                    }
                }
            }
        } catch (e: Exception) { Log.w(TAG, "getUserId /account error: ${e.message}") }
        try {
            // 尝试2: 从活动列表第一条记录提取 userId
            val url2 = "${teamApi(regionId)}/activity/query?modeList=&pageNumber=1&size=1"
            val req2 = Request.Builder().url(url2).apply {
                authHeaders(token, regionId).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req2).execute().use { resp ->
                val body = resp.body?.string() ?: ""
                Log.d(TAG, "getUserId activity/query HTTP ${resp.code}: ${body.take(400)}")
                if (resp.code == 200) {
                    val json = JSONObject(body)
                    if (json.optString("result") == "0000") {
                        val data = json.optJSONObject("data")
                        val list = data?.optJSONArray("dataList")
                        if (list != null && list.length() > 0) {
                            val item = list.getJSONObject(0)
                            val uid = item.optString("userId") ?: item.optString("uid") ?: ""
                            if (uid.isNotEmpty()) return@withContext uid
                        }
                        // 从data顶层提取userId
                        val uid = data?.optString("userId") ?: data?.optString("uid") ?: ""
                        if (uid.isNotEmpty()) return@withContext uid
                    }
                }
            }
        } catch (e: Exception) { Log.w(TAG, "getUserId activity/query error: ${e.message}") }
        // 兜底: 用token的MD5前16位作为userId替代（保证object key唯一）
        val fallback = md5Hex(token.toByteArray()).substring(0, 16)
        Log.w(TAG, "getUserId fallback to token md5: $fallback")
        fallback
    }

    /** 获取活动列表 */
    suspend fun getActivities(cred: String, offset: Int, limit: Int): List<ActivityRecord> = withContext(Dispatchers.IO) {
        val (token, regionId, _) = parseCredential(cred)
        if (token.isEmpty()) return@withContext emptyList()
        try {
            val page = (offset / 200) + 1
            val url = "${teamApi(regionId)}/activity/query?modeList=&pageNumber=$page&size=200"
            val req = Request.Builder().url(url).apply {
                authHeaders(token, regionId).forEach { (k, v) -> addHeader(k, v) }
            }.get().build()
            client.newCall(req).execute().use { resp ->
                val body = resp.body?.string() ?: ""
                if (resp.code != 200) {
                    Log.w(TAG, "getActivities HTTP ${resp.code}: ${body.take(150)}")
                    return@withContext emptyList()
                }
                val json = JSONObject(body)
                if (json.optString("result") != "0000") {
                    Log.w(TAG, "getActivities result=${json.optString("result")}: ${json.optString("message")}")
                    return@withContext emptyList()
                }
                val data = json.optJSONObject("data")
                val list = data?.optJSONArray("dataList") ?: return@withContext emptyList()
                val out = mutableListOf<ActivityRecord>()
                var skip = offset - (page - 1) * 200
                for (i in 0 until list.length()) {
                    val item = list.getJSONObject(i)
                    if (skip > 0) { skip--; continue }
                    if (out.size >= limit) break
                    val labelId = item.optString("labelId")
                    val sportType = item.optInt("sportType")
                    val title = item.optString("name").ifBlank { "高驰运动" }
                    val startTime = item.optString("startTime").ifBlank { "" }
                    val distance = item.optDouble("distance", 0.0) / 1000.0
                    val duration = item.optInt("duration", 0)
                    out.add(ActivityRecord(labelId, title, startTime, distance, duration, DataSource.COROS_CN,
                        extra = "sportType=$sportType"))
                }
                out
            }
        } catch (e: Exception) {
            Log.e(TAG, "getActivities error", e); emptyList()
        }
    }

    /** 下载 FIT（fileType=4） */
    suspend fun downloadFit(cred: String, recordId: String, extra: String?): ByteArray? = withContext(Dispatchers.IO) {
        val (token, regionId, _) = parseCredential(cred)
        if (token.isEmpty()) return@withContext null
        try {
            val sportType = extra?.substringAfter("sportType=")?.substringBefore(",")?.toIntOrNull() ?: 1
            val url = "${teamApi(regionId)}/activity/detail/download?labelId=$recordId&sportType=$sportType&fileType=4"
            val req = Request.Builder().url(url).apply {
                authHeaders(token, regionId).forEach { (k, v) -> addHeader(k, v) }
            }.post(FormBody.Builder().build()).build()
            client.newCall(req).execute().use { resp ->
                val body = resp.body?.string() ?: ""
                if (resp.code != 200) { Log.w(TAG, "downloadFit HTTP ${resp.code}: ${body.take(150)}"); return@withContext null }
                val json = JSONObject(body)
                val fileUrl = json.optJSONObject("data")?.optString("fileUrl") ?: ""
                if (fileUrl.isEmpty()) { Log.w(TAG, "downloadFit no fileUrl: ${body.take(200)}"); return@withContext null }
                // GET 下载
                val dlReq = Request.Builder().url(fileUrl).addHeader("User-Agent", UA).get().build()
                client.newCall(dlReq).execute().use { dl ->
                    if (dl.code != 200) return@withContext null
                    dl.body?.bytes()
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "downloadFit error", e); null
        }
    }

    /**
     * 上传 FIT 到高驰（v6.5.6 重写，实测验证通过）：
     * 1) 把 FIT 打包成 ZIP（ZIP内装一个.fit文件，高驰fit/import只接受.zip格式）
     * 2) faq.coros.com/openapi/oss/sts 换取 OSS 临时凭证（阿里云/AWS）
     * 3) 上传 ZIP 到 OSS，object key = fit_zip/{userId}/{zipMd5}.zip
     * 4) POST {teamapi}/activity/fit/import 注册（元数据调用，不传文件）
     * 5) 成功标志：result=="0000" 且 data.status==2
     * 实测验证：传裸.fit会status=-1（解析失败），传.zip status=2（成功）
     */
    suspend fun uploadFit(cred: String, fitData: ByteArray, fileName: String, activityId: String = ""): String? = withContext(Dispatchers.IO) {
        val (token, regionId, _) = parseCredential(cred)
        if (token.isEmpty()) return@withContext "高驰登录失效，请重新登录"
        try {
            val sts = STS_CONFIG[regionId] ?: STS_CONFIG[2]!!
            val bucket = sts.bucket
            // v6.5.6: 把FIT打包成ZIP（高驰只接受.zip）
            val zipData = zipFitData(fitData, activityId, fileName)
            val md5 = md5Hex(zipData)
            val size = zipData.size
            // 获取 userId，object key 格式 fit_zip/{userId}/{md5}.zip
            val userId = getUserId(cred)
            val objectKey = "fit_zip/$userId/$md5.zip"
            // oriFileName: {activityId}.zip
            val zipFileName = if (activityId.isNotEmpty()) "$activityId.zip" else
                (fileName.substringAfterLast('/').substringBeforeLast('.') + ".zip")
            Log.i(TAG, "uploadFit: fit=${fitData.size}B→zip=${size}B, md5=$md5, userId=$userId, key=$objectKey, oriFileName=$zipFileName")

            // 1) 获取 STS 凭证
            val stsUrl = "https://faq.coros.com/openapi/oss/sts?bucket=$bucket&service=${sts.service}&app_id=$STS_APP_ID&sign=${sts.sign}&v=$STS_V"
            val stsReq = Request.Builder().url(stsUrl).addHeader("User-Agent", UA).get().build()
            val credJson = client.newCall(stsReq).execute().use { resp ->
                val rawBody = resp.body?.string() ?: ""
                Log.d(TAG, "STS HTTP ${resp.code}: ${rawBody.take(300)}")
                if (resp.code != 200) return@withContext "高驰OSS STS获取失败 HTTP ${resp.code}"
                val json = JSONObject(rawBody)
                val ok = json.optInt("code") == 200 || json.optString("code") == "200" ||
                    json.optString("result") == "0000" || json.optString("status") == "ok"
                if (!ok) return@withContext "高驰OSS STS失败: ${rawBody.take(150)}"
                val dataObj = json.optJSONObject("data")
                val enc = dataObj?.optString("credentials") ?: dataObj?.optString("credential")
                    ?: json.optString("credentials") ?: return@withContext "高驰OSS STS无凭证: ${rawBody.take(150)}"
                decodeSts(enc)
            }
            // 2) 上传 ZIP 到 OSS
            val upOk = when (sts.service) {
                "aliyun" -> uploadAliyunOss(bucket, objectKey, zipData, credJson)
                else -> uploadAwsS3(bucket, objectKey, zipData, credJson, regionId)
            }
            if (!upOk) {
                Log.w(TAG, "OSS上传失败, bucket=$bucket, key=$objectKey, service=${sts.service}, size=$size")
                return@withContext "高驰OSS上传失败"
            }
            Log.i(TAG, "OSS上传成功: $objectKey ($size bytes)")
            // 3) fit/import 注册（元数据调用，不传文件）
            val importBody = JSONObject()
                .put("source", 1)
                .put("timezone", 32)
                .put("bucket", bucket)
                .put("md5", md5)
                .put("size", size)
                .put("object", objectKey)
                .put("serviceName", sts.service)
                .put("oriFileName", zipFileName)
            val form = FormBody.Builder().add("jsonParameter", importBody.toString()).build()
            val importUrl = "${teamApi(regionId)}/activity/fit/import"
            val importReq = Request.Builder().url(importUrl).apply {
                authHeaders(token, regionId).forEach { (k, v) -> addHeader(k, v) }
                addHeader("Origin", REGIONCONFIG[regionId]?.host ?: "https://trainingcn.coros.com")
                addHeader("Referer", "${REGIONCONFIG[regionId]?.host ?: "https://trainingcn.coros.com"}/")
            }.post(form).build()
            client.newCall(importReq).execute().use { resp ->
                val body = resp.body?.string() ?: ""
                Log.d(TAG, "fit/import HTTP ${resp.code}: ${body.take(500)}")
                if (resp.code != 200) return@withContext "高驰fit/import HTTP ${resp.code}: ${body.take(120)}"
                val json = try { JSONObject(body) } catch (_: Exception) { null }
                // v6.5.5: 成功标志 = result=="0000" 且 data.status==2（对照 garmin-sync-coros）
                val result = json?.optString("result") ?: ""
                val message = json?.optString("message") ?: ""
                val apiCode = json?.optString("apiCode") ?: ""
                val dataObj = json?.optJSONObject("data")
                val status = dataObj?.optInt("status", 0) ?: 0
                val dataStr = dataObj?.toString()?.take(300) ?: ""
                val success = result == "0000" && status == 2
                Log.i(TAG, "fit/import result=$result, status=$status, apiCode=$apiCode, msg=$message, data=$dataStr")
                // v6.5.6: token过期检测（result=1019或message含Access token invalid）
                if (result == "1019" || message.contains("Access token is invalid", true) || message.contains("token", true) && message.contains("invalid", true)) {
                    return@withContext "高驰登录已过期，请重新登录高驰"
                }
                if (success) null else "高驰fit/import失败(result=$result, status=$status, apiCode=$apiCode, msg=$message): ${body.take(250)}"
            }
        } catch (e: Exception) {
            Log.e(TAG, "uploadFit error", e)
            "高驰上传异常: ${e.message}"
        }
    }

    /** v6.5.6: 把FIT数据打包成ZIP（高驰fit/import只接受.zip格式，ZIP内装一个.fit） */
    private fun zipFitData(fitData: ByteArray, activityId: String, fileName: String): ByteArray {
        val fitName = if (activityId.isNotEmpty()) "$activityId.fit" else
            fileName.substringAfterLast('/').let { if (it.endsWith(".fit", true)) it else "$it.fit" }
        val baos = java.io.ByteArrayOutputStream()
        java.util.zip.ZipOutputStream(baos).use { zos ->
            val entry = java.util.zip.ZipEntry(fitName)
            zos.putNextEntry(entry)
            zos.write(fitData)
            zos.closeEntry()
        }
        return baos.toByteArray()
    }
    /** STS credentials 解码：去掉盐 + base64 */
    private fun decodeSts(enc: String): JSONObject {
        val cleaned = enc.replace(STS_SALT, "")
        val decoded = String(android.util.Base64.decode(cleaned, android.util.Base64.DEFAULT), Charsets.UTF_8)
        return JSONObject(decoded)
    }

    /** 阿里云 OSS PUT（OSS V1 签名） */
    private fun uploadAliyunOss(bucket: String, key: String, data: ByteArray, cred: JSONObject): Boolean {
        return try {
            val ak = cred.getString("AccessKeyId")
            val sk = cred.getString("AccessKeySecret")
            val token = cred.getString("SecurityToken")
            val sdf = java.text.SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", java.util.Locale.US)
            sdf.timeZone = java.util.TimeZone.getTimeZone("GMT")
            val date = sdf.format(java.util.Date())
            val contentType = "application/octet-stream"
            val stringToSign = "PUT\n\n$contentType\n$date\nx-oss-security-token:$token\n/$bucket/$key"
            val signature = hmacSha1(sk, stringToSign)
            val auth = "OSS $ak:$signature"
            val url = "https://$bucket.oss-cn-beijing.aliyuncs.com/$key"
            val req = Request.Builder().url(url)
                .put(data.toRequestBody(null))
                .addHeader("Authorization", auth)
                .addHeader("Date", date)
                .addHeader("Content-Type", contentType)
                .addHeader("x-oss-security-token", token)
                .build()
            client.newCall(req).execute().use { it.code in 200..299 }
        } catch (e: Exception) {
            Log.e(TAG, "aliyun oss error", e); false
        }
    }

    /** AWS S3 PUT（SigV4 签名） */
    private fun uploadAwsS3(bucket: String, key: String, data: ByteArray, cred: JSONObject, regionId: Int): Boolean {
        return try {
            val ak = cred.getString("AccessKeyId")
            val sk = cred.getString("AccessKeySecret")
            val token = cred.getString("SecurityToken")
            val region = if (regionId == 3) "eu-central-1" else "us-east-1"
            val now = java.util.Calendar.getInstance()
            val amzDate = java.text.SimpleDateFormat("yyyyMMdd'T'HHmmss'Z'", java.util.Locale.US).apply { timeZone = java.util.TimeZone.getTimeZone("UTC") }.format(now.time)
            val dateStamp = amzDate.substring(0, 8)
            val payloadHash = sha256Hex(data)
            val canonicalHeaders = "host:${bucket}.s3.$region.amazonaws.com\nx-amz-content-sha256:$payloadHash\nx-amz-date:$amzDate\nx-amz-security-token:$token\n"
            val canonicalRequest = "PUT\n/$key\n\n$canonicalHeaders\nhost;x-amz-content-sha256;x-amz-date;x-amz-security-token\n$payloadHash"
            val scope = "$dateStamp/$region/s3/aws4_request"
            val stringToSign = "AWS4-HMAC-SHA256\n$amzDate\n$scope\n${sha256Hex(canonicalRequest.toByteArray())}"
            val kDate = hmacSha256(("AWS4" + sk).toByteArray(), dateStamp)
            val kRegion = hmacSha256(kDate, region)
            val kService = hmacSha256(kRegion, "s3")
            val kSigning = hmacSha256(kService, "aws4_request")
            val signature = hmacSha256Hex(kSigning, stringToSign)
            val url = "https://${bucket}.s3.$region.amazonaws.com/$key"
            val req = Request.Builder().url(url)
                .put(data.toRequestBody(null))
                .addHeader("Authorization", "AWS4-HMAC-SHA256 Credential=$ak/$scope, SignedHeaders=host;x-amz-content-sha256;x-amz-date;x-amz-security-token, Signature=$signature")
                .addHeader("x-amz-date", amzDate)
                .addHeader("x-amz-content-sha256", payloadHash)
                .addHeader("x-amz-security-token", token)
                .build()
            client.newCall(req).execute().use { it.code in 200..299 }
        } catch (e: Exception) {
            Log.e(TAG, "aws s3 error", e); false
        }
    }

    // ===== 加密工具 =====
    private fun md5Hex(data: ByteArray): String =
        MessageDigest.getInstance("MD5").digest(data).joinToString("") { "%02x".format(it) }

    private fun sha256Hex(data: ByteArray): String =
        MessageDigest.getInstance("SHA-256").digest(data).joinToString("") { "%02x".format(it) }

    private fun hmacSha1(key: String, data: String): String {
        val mac = Mac.getInstance("HmacSHA1")
        mac.init(SecretKeySpec(key.toByteArray(), "HmacSHA1"))
        return android.util.Base64.encodeToString(mac.doFinal(data.toByteArray()), android.util.Base64.NO_WRAP)
    }

    private fun hmacSha256(key: ByteArray, data: String): ByteArray {
        val mac = Mac.getInstance("HmacSHA256")
        mac.init(SecretKeySpec(key, "HmacSHA256"))
        return mac.doFinal(data.toByteArray())
    }

    private fun hmacSha256Hex(key: ByteArray, data: String): String =
        hmacSha256(key, data).joinToString("") { "%02x".format(it) }
}

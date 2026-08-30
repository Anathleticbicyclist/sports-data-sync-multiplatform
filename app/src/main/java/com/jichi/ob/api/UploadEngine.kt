package com.jichi.ob.api

import android.util.Log
import com.jichi.ob.GpxToFitConverter
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.api.BlackbirdApi
import com.jichi.ob.api.BrytonApi
import com.jichi.ob.model.DataSource
import com.jichi.ob.model.UploadSupport
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONObject
import java.security.MessageDigest
import java.util.concurrent.TimeUnit
import com.jichi.ob.util.FileNameGenerator
import com.jichi.ob.util.GpxTimeFixer

/**
 * 统一上传引擎（v6.1.1 逆向流动核心）
 * 支持上传到：Outbase / iGPSPORT / 行者 / 迈金
 * 黑鸟单车 / 百锐腾：开发中
 */
class UploadEngine(private val context: android.content.Context? = null) {

    companion object {
        private const val TAG = "UploadEngine"
    }

    /** v6.2.6: Outbase GPX→FIT 转换桥（Outbase官方gpx2fit库，复用WebBridge/bridge.html/gpx2fit.js） */
    private val outbaseBridge: com.jichi.ob.util.WebBridge? by lazy {
        context?.let { com.jichi.ob.util.WebBridge(it) }
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(300, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private val outbaseApi = OutbaseApi()
    private val blackbirdApi = BlackbirdApi()
    private val brytonApi = BrytonApi()

    data class UploadResult(
        val success: Boolean,
        val targetId: String = "",
        val message: String = "",
        val skipped: Boolean = false
    )

    /**
     * 上传FIT文件到目标平台
     */
    suspend fun upload(
        target: DataSource,
        credential: String,
        fitData: ByteArray,
        record: ActivityRecord,
        extra: Map<String, String> = emptyMap()
    ): UploadResult = withContext(Dispatchers.IO) {
        val support = UploadSupport.fromDataSource(target)
        if (!support.available) {
            return@withContext UploadResult(false, message = "${target.displayName}上传功能${support.note}")
        }

        // ===== v6.3.17 统一时间适配矩阵（仅GPX，FIT不动）=====
        // 下载端统一产出【标准UTC带Z】GPX；上传端按目标平台时区输出。
        //  A) 走官方gpx2fit(Date.parse带Z按UTC)：Outbase/黑鸟 → 保持UTC
        //  B) 国产平台直接吃GPX、按GPX时钟数字显示：iGPSPORT/行者/迈金 → 需北京时间(UTC+8)
        val isGpxFile = !com.jichi.ob.GpxToFitConverter.isFit(fitData)
        // 第一步 源归一化为UTC：行者源是"北京时间标Z"，减8；黑鸟等源本就是UTC
        val utcData = if (isGpxFile && record.source == DataSource.XINGZHE) {
            try {
                val f = com.jichi.ob.util.GpxTimeFixer.fixGpxTime(fitData, 8)
                Log.d(TAG, "源归一化: 行者GPX减8→UTC，目标=${target.displayName}"); f
            } catch (e: Exception) { Log.w(TAG, "行者源归一化失败: ${e.message}"); fitData }
        } else fitData
        // 第二步 按目标时区：B类国产直传GPX平台 UTC+8，A类gpx2fit平台保持UTC
        // v6.4.1: 行者从localTimeTargets移除——行者上传强制GPX→FIT, FIT是标准UTC时间戳, 不需+8
        val localTimeTargets = setOf(DataSource.IGPSPORT, DataSource.MAGENE)
        val finalData = if (isGpxFile && localTimeTargets.contains(target)) {
            try {
                val f = com.jichi.ob.util.GpxTimeFixer.fixGpxTime(utcData, -8) // -8=加8→北京时间
                Log.d(TAG, "目标适配: ${record.source.displayName}→${target.displayName} GPX+8(北京显示)"); f
            } catch (e: Exception) { Log.w(TAG, "目标时区适配失败: ${e.message}"); utcData }
        } else utcData

        when (target) {
            DataSource.OUTBASE -> uploadToOutbase(credential, finalData, record, extra)
            DataSource.IGPSPORT -> uploadToIgpsport(credential, finalData, record, extra)
            DataSource.XINGZHE -> uploadToXingzhe(credential, finalData, record, extra)
            DataSource.MAGENE -> uploadToMagene(credential, finalData, record, extra)
            DataSource.BLACKBIRD -> uploadToBlackbird(credential, finalData, record, extra)
            DataSource.BRYTON -> uploadToBryton(credential, finalData, record, extra)
            else -> UploadResult(false, message = "${target.displayName}上传功能开发中")
        }
    }

    // ===== Outbase 上传（已验证可用）=====
    private suspend fun uploadToOutbase(
        sessionId: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        return try {
            // v6.3.5/v6.3.13: Outbase上传——GPX用官方gpx2fit转FIT（与正式版一致，能正确处理时间和心率）
            val uploadData = if (com.jichi.ob.GpxToFitConverter.isFit(fitData)) {
                fitData
            } else {
                val officialFit = try {
                    if (outbaseBridge != null) {
                        val f = outbaseBridge!!.convertGpxToFit(fitData)
                        Log.d(TAG, "Outbase GPX->FIT(官方gpx2fit): ${fitData.size} -> ${f.size} bytes")
                        f
                    } else null
                } catch (e: Exception) {
                    Log.w(TAG, "Outbase 官方gpx2fit转换失败: ${e.message}")
                    null
                }
                officialFit ?: try {
                    val f = com.jichi.ob.GpxToFitConverter.convert(fitData)
                    Log.d(TAG, "Outbase GPX->FIT(自研兜底): ${fitData.size} -> ${f.size} bytes")
                    f
                } catch (e: Exception) {
                    Log.w(TAG, "Outbase 自研转换也失败: ${e.message}")
                    fitData
                }
            }
            val fileName = FileNameGenerator.generate(DataSource.OUTBASE, record, "fit")
            val (msg, skipped, _) = outbaseApi.upload(sessionId, null, uploadData, fileName)
            UploadResult(!skipped && msg.contains("成功"), message = msg, skipped = skipped)
        } catch (e: Exception) {
            Log.e(TAG, "Outbase upload error", e)
            UploadResult(false, message = "Outbase上传失败: ${e.message}")
        }
    }

    // ===== iGPSPORT 上传（OSS直传流程，经网页版逆向验证：getSignedUrl→PUT→uploadByOss）=====
    // v6.2.3 修复：按文件类型选择扩展名（FIT用.fit，GPX用.gpx）。行者等来源下载的是GPX，
    // 若仍以.fit上传，iGPSPORT按FIT解析GPX会失败→不落库但接口返回success→误报"成功(id=null)"。
    // 同时OSS PUT 不能携带 Content-Type（否则OSS签名校验403 SignatureDoesNotMatch→文件未上传）。
    private fun uploadToIgpsport(
        token: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        val start = System.currentTimeMillis()
        return try {
            // 按文件头判断真实类型：FIT以 .FIT 开头（offset 8-9）
            val isFitFile = fitData.size >= 14 &&
                fitData[8] == '.'.code.toByte() && fitData[9] == 'F'.code.toByte()
            val ext = if (isFitFile) "fit" else "gpx"
            val fileName = FileNameGenerator.generate(DataSource.IGPSPORT, record, ext)
            val authHeaders = mapOf(
                "Authorization" to "Bearer $token",
                "User-Agent" to "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36",
                "Origin" to "https://app.igpsport.cn",
                "Referer" to "https://app.igpsport.cn/"
            )

            // 1) 获取OSS签名URL（扩展名须与文件类型一致，GPX用.gpx否则解析失败）
            val signedReq = Request.Builder()
                .url("https://prod.zh.igpsport.com/service/sportg/third-party-server/oss/getSignedUrl?fileExtension=.$ext")
                .apply { authHeaders.forEach { (k, v) -> addHeader(k, v) } }
                .get().build()
            client.newCall(signedReq).execute().use { resp ->
                val bodyStr = resp.body?.string()?.trim() ?: ""
                Log.d(TAG, "iGPSPORT getSignedUrl HTTP ${resp.code}: ${bodyStr.take(200)}")
                if (resp.code == 401 || resp.code == 403) {
                    return UploadResult(false, message = "iGPSPORT上传失败: 登录已过期(HTTP ${resp.code})，请重新登录igp")
                }
                if (resp.code != 200) {
                    return UploadResult(false, message = "iGPSPORT上传失败: 获取上传地址HTTP ${resp.code}")
                }
                val json = try { JSONObject(bodyStr) } catch (_: Exception) { null }
                // 返回结构: {"code":0,"message":"success","data":{"ossId":"...","signedUrl":"https://..."}}
                val dataObj = json?.optJSONObject("data")
                val signedUrl = dataObj?.optString("signedUrl", "") ?: ""
                val ossId = dataObj?.optString("ossId", "") ?: ""
                if (signedUrl.isEmpty()) {
                    return UploadResult(false, message = "iGPSPORT上传失败: 未获取到上传地址 ${bodyStr.take(100)}")
                }

                // 2) PUT 文件到OSS（v6.2.3: OSS签名URL绑定Content-Type校验，携带Content-Type会403
                //    SignatureDoesNotMatch→文件未上传。故先不带Content-Type直传，403/400时再尝试带Content-Type）
                val ossError = StringBuilder()
                var putCode: Int? = null
                // 尝试①：不带 Content-Type（OSS签名URL的标准直传方式，已验证HTTP 200）
                val putReq1 = Request.Builder()
                    .url(signedUrl)
                    .put(fitData.toRequestBody(null))
                    .build()
                client.newCall(putReq1).execute().use { pr ->
                    putCode = pr.code
                    if (pr.code in 200..299) {
                        // 成功，直接进入第3步
                    } else {
                        val errBody = pr.body?.string()?.trim() ?: ""
                        Log.w(TAG, "iGPSPORT OSS PUT#1 HTTP ${pr.code}: $errBody")
                        ossError.append("PUT#$putCode $errBody")
                        // 尝试②：带 Content-Type（兼容部分绑定Content-Type的签名URL）
                        if (pr.code == 403 || pr.code == 400) {
                            val putReq2 = Request.Builder()
                                .url(signedUrl)
                                .addHeader("Content-Type", "application/octet-stream")
                                .put(fitData.toRequestBody("application/octet-stream".toMediaType()))
                                .build()
                            client.newCall(putReq2).execute().use { pr2 ->
                                if (pr2.code in 200..299) {
                                    putCode = 200
                                } else {
                                    val errBody2 = pr2.body?.string()?.trim() ?: ""
                                    Log.w(TAG, "iGPSPORT OSS PUT#2 HTTP ${pr2.code}: $errBody2")
                                    ossError.append(" | PUT2#${pr2.code} $errBody2")
                                    putCode = pr2.code
                                }
                            }
                        }
                    }
                }
                if (putCode == null || putCode !in 200..299) {
                    return UploadResult(false, message = "iGPSPORT上传失败: OSS上传HTTP $putCode ${ossError.toString().take(200)}")
                }

                // 3) 通知iGPSPORT解析（uploadByOss）；v6.3.14补充title/name活动标题
                val actTitle = record.title.ifBlank { "骑行" }
                val body = JSONObject()
                    .put("fileName", fileName)
                    .put("ossName", ossId)
                    .put("title", actTitle)
                    .put("name", actTitle)
                    .put("activityName", actTitle)
                val notifyReq = Request.Builder()
                    .url("https://prod.zh.igpsport.com/service/web-gateway/web-analyze/activity/uploadByOss")
                    .apply { authHeaders.forEach { (k, v) -> addHeader(k, v) } }
                    .addHeader("Content-Type", "application/json")
                    .post(body.toString().toRequestBody("application/json".toMediaType()))
                    .build()
                client.newCall(notifyReq).execute().use { resp2 ->
                    val result = resp2.body?.string()?.trim() ?: ""
                    val cost = System.currentTimeMillis() - start
                    Log.d(TAG, "iGPSPORT uploadByOss HTTP ${resp2.code} (${cost}ms): ${result.take(300)}")
                    if (resp2.code == 200) {
                        val j2 = try { JSONObject(result) } catch (_: Exception) { null }
                        val code = j2?.optInt("code", -1) ?: -1
                        if (code == 200 || code == 0) {
                            val id = j2?.optString("data", "") ?: ""
                            UploadResult(true, targetId = id, message = "iGPSPORT上传成功(id=$id)")
                        } else {
                            UploadResult(false, message = "iGPSPORT上传失败: ${result.take(150)}")
                        }
                    } else if (resp2.code == 401 || resp2.code == 403) {
                        UploadResult(false, message = "iGPSPORT上传失败: 登录已过期(HTTP ${resp2.code})")
                    } else {
                        UploadResult(false, message = "iGPSPORT上传失败: HTTP ${resp2.code} ${result.take(100)}")
                    }
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "iGPSPORT upload error", e)
            UploadResult(false, message = "iGPSPORT上传失败: ${e.message}")
        }
    }

    // ===== 行者 上传（网页版上传接口 api/v1/fit/upload）=====
    private fun uploadToXingzhe(
        sessionId: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        val start = System.currentTimeMillis()
        return try {
            // v6.4.1修复: 行者接口只吃FIT, GPX必须先转FIT, 否则服务器HTTP 500
            val uploadData = if (!GpxToFitConverter.isFit(fitData)) {
                try {
                    val fit = GpxToFitConverter.convert(fitData)
                    Log.d(TAG, "行者上传: GPX→FIT转换成功(${fitData.size}→${fit.size}字节)")
                    fit
                } catch (e: Exception) {
                    Log.w(TAG, "行者上传: GPX→FIT转换失败(${e.message}), 尝试直传GPX")
                    fitData
                }
            } else fitData

            val fileName = FileNameGenerator.generate(DataSource.XINGZHE, record, "fit")
            val csrf = extra["csrf"] ?: ""

            // 行者官方上传接口（v6.2.1 实测修复）：POST /api/v1/fit/upload/
            // 旧接口 /api/v1/workout/upload/ (file+随机uuid) 只存文件不解析 → 平台不显示(is_valid=0)
            // 正确接口需字段 fit_file + md5(文件MD5)，返回 data.workout_id 且 handle_msg=ok → 正常入库(is_valid=1)
            val md5 = MessageDigest.getInstance("MD5").digest(uploadData).joinToString("") { "%02x".format(it) }
            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("fit_file", fileName, uploadData.toRequestBody("application/octet-stream".toMediaType()))
                .addFormDataPart("md5", md5)
                .build()

            val reqBuilder = Request.Builder()
                .url("https://www.imxingzhe.com/api/v1/fit/upload/")
                .addHeader("Cookie", "sessionid=$sessionId${if (csrf.isNotEmpty()) "; csrftoken=$csrf" else ""}")
                .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36")
                .addHeader("Referer", "https://www.imxingzhe.com/upload/fit")
                .addHeader("Accept", "application/json")
            if (csrf.isNotEmpty()) reqBuilder.addHeader("X-CSRFToken", csrf)
            val req = reqBuilder.post(body).build()

            client.newCall(req).execute().use { resp ->
                val result = resp.body?.string()?.trim() ?: ""
                val cost = System.currentTimeMillis() - start
                Log.d(TAG, "Xingzhe upload HTTP ${resp.code} (${cost}ms): ${result.take(300)}")
                // 行者认证失败返回特征：HTTP 401/403，或 body 含 "Authentication credentials / not provided"，
                // 或 body.code == 401（曾出现 HTTP 200 + code:401 的情况），统一识别为"登录已过期"
                val authFail = resp.code == 401 || resp.code == 403 ||
                    result.contains("Authentication credentials") ||
                    result.contains("credentials were not provided") ||
                    result.contains("not provided") ||
                    (try { JSONObject(result).optInt("code", -1) == 401 } catch (_: Exception) { false })
                when {
                    authFail ->
                        UploadResult(false, message = "行者上传失败: 行者登录已过期或失效，请重新登录行者")
                    resp.code == 200 -> {
                        val json = try { JSONObject(result) } catch (_: Exception) { null }
                        val code = json?.optInt("code", -1) ?: -1
                        val dataObj = json?.optJSONObject("data")
                        val workoutId = dataObj?.optLong("workout_id", 0L) ?: 0L
                        val handleMsg = dataObj?.optString("handle_msg", "") ?: ""
                        // 正确解析：返回 workout_id>0 且 handle_msg=ok（或含 msg=上传成功）
                        if (code == 0 && workoutId > 0) {
                            UploadResult(true, targetId = workoutId.toString(), message = "行者上传成功(id=$workoutId)")
                        } else {
                            UploadResult(false, message = "行者上传失败: ${json?.optString("msg") ?: result.take(100)}")
                        }
                    }
                    else -> UploadResult(false, message = "行者上传失败: HTTP ${resp.code} ${result.take(100)}")
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Xingzhe upload error", e)
            UploadResult(false, message = "行者上传失败: ${e.message}")
        }
    }

    private fun uploadToMagene(
        cookie: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        val start = System.currentTimeMillis()
        return try {
            val token = extra["_token"] ?: ""
            val fileName = FileNameGenerator.generate(DataSource.MAGENE, record, "fit")

            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("jilu", fileName, fitData.toRequestBody("application/octet-stream".toMediaType()))
                .addFormDataPart("filename", fileName)
                .addFormDataPart("_token", token)
                .build()

            // 尝试多个候选上传接口，迈金(顽鹿)网页版上传
            val candidates = listOf(
                "https://u.onelap.cn/upload/fit",
                "https://www.onelap.cn/upload/fit"
            )
            var lastError = "无候选接口"
            for (url in candidates) {
                try {
                    val req = Request.Builder()
                        .url(url)
                        .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36")
                        .addHeader("Cookie", cookie)
                        .addHeader("Origin", "https://www.onelap.cn")
                        .addHeader("Referer", "https://www.onelap.cn/")
                        .addHeader("Authorization", if (token.isNotEmpty()) token else "")
                        .post(body)
                        .build()
                    client.newCall(req).execute().use { resp ->
                        val result = resp.body?.string() ?: ""
                        val cost = System.currentTimeMillis() - start
                        Log.d(TAG, "Magene upload ${url} HTTP ${resp.code} (${cost}ms): ${result.take(200)}")
                        if (resp.code == 200 && (result.contains("成功") || result.contains("success") || result.contains("\"code\":0") || result.contains("\"code\":200") || result.contains("\"id\""))) {
                            return UploadResult(true, message = "迈金上传成功")
                        }
                        lastError = "HTTP ${resp.code} ${result.take(100)}"
                    }
                } catch (e: Exception) {
                    lastError = e.message ?: "网络错误"
                }
            }
            UploadResult(false, message = "迈金上传失败: $lastError")
        } catch (e: Exception) {
            Log.e(TAG, "Magene upload error", e)
            UploadResult(false, message = "迈金上传失败: ${e.message}")
        }
    }

    // ===== 黑鸟单车 上传 =====
    private suspend fun uploadToBlackbird(
        cookie: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        val start = System.currentTimeMillis()
        return try {
            // v6.3.5: 黑鸟只接受FIT。GPX源必须用Outbase官方gpx2fit转FIT（自研转换器生成的FIT黑鸟无法解析）
            val fileName = FileNameGenerator.generate(DataSource.BLACKBIRD, record, "fit")
            val uploadBytes: ByteArray
            if (GpxToFitConverter.isFit(fitData)) {
                uploadBytes = fitData
                Log.d(TAG, "黑鸟 源已是FIT，直接上传 ${fitData.size} bytes")
            } else {
                Log.d(TAG, "黑鸟 GPX源 ${fitData.size} bytes，开始官方gpx2fit转换...")
                val officialFit = try {
                    if (outbaseBridge != null) {
                        val f = outbaseBridge!!.convertGpxToFit(fitData)
                        Log.d(TAG, "黑鸟 GPX->FIT(官方gpx2fit成功): ${fitData.size} -> ${f.size} bytes")
                        f
                    } else {
                        Log.e(TAG, "黑鸟 outbaseBridge为null，官方gpx2fit不可用！")
                        null
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "黑鸟 官方gpx2fit转换异常: ${e.message}", e)
                    null
                }
                uploadBytes = if (officialFit != null) {
                    officialFit
                } else {
                    Log.w(TAG, "黑鸟 官方gpx2fit不可用，回退自研转换器（黑鸟可能拒绝该FIT）")
                    try {
                        val f = GpxToFitConverter.convert(fitData)
                        Log.d(TAG, "黑鸟 GPX->FIT(自研兜底): ${fitData.size} -> ${f.size} bytes")
                        f
                    } catch (e: Exception) {
                        Log.w(TAG, "黑鸟 自研转换也失败: ${e.message}")
                        fitData
                    }
                }
            }
            val err = blackbirdApi.uploadActivity(cookie, uploadBytes, fileName)
            Log.d(TAG, "Blackbird upload result: ${err ?: "ok"} (${System.currentTimeMillis() - start}ms)")
            if (err == null) UploadResult(true, message = "黑鸟单车上传成功")
            else UploadResult(false, message = err)
        } catch (e: Exception) {
            Log.e(TAG, "Blackbird upload error", e)
            UploadResult(false, message = "黑鸟单车上传失败: ${e.message}")
        }
    }

    // ===== 百锐腾 上传 =====
    private suspend fun uploadToBryton(
        cookie: String, fitData: ByteArray, record: ActivityRecord, extra: Map<String, String>
    ): UploadResult {
        val start = System.currentTimeMillis()
        return try {
            val fileName = FileNameGenerator.generate(DataSource.BRYTON, record, "fit")
            val ok = brytonApi.uploadActivity(cookie, fitData, fileName)
            Log.d(TAG, "Bryton upload result: $ok (${System.currentTimeMillis() - start}ms)")
            if (ok) UploadResult(true, message = "百锐腾上传成功")
            else UploadResult(false, message = "百锐腾上传失败（HTTP详见日志）")
        } catch (e: Exception) {
            Log.e(TAG, "Bryton upload error", e)
            UploadResult(false, message = "百锐腾上传失败: ${e.message}")
        }
    }
}

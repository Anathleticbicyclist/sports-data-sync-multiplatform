package com.jichi.ob.api

import android.util.Log
import com.jichi.ob.BuildConfig
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONObject
import java.util.concurrent.TimeUnit

/**
 * 黑鸟单车 API（v6.1.1 新增）
 * 认证: Cookie: 完整cookie
 * 列表: GET /api/records?lastRecordId=0&pageSize=100
 * 数据: GET /api/records/{recordId}/data
 */
class BlackbirdApi {

    /**
     * v6.3.8: 黑鸟坐标为GCJ-02(火星坐标)，上传Outbase等WGS84平台必须转换
     * 算法：迭代近似GCJ-02→WGS84（与blackbird2wgs.py一致）
     */
    private val PI = 3.1415926535897932384626
    private val A = 6378245.0
    private val EE = 0.00669342162296594323

    private fun transformLat(x: Double, y: Double): Double {
        var ret = -100.0 + 2.0 * x + 3.0 * y + 0.2 * y * y + 0.1 * x * y + 0.2 * Math.sqrt(Math.abs(x))
        ret += (20.0 * Math.sin(6.0 * x * PI) + 20.0 * Math.sin(2.0 * x * PI)) * 2.0 / 3.0
        ret += (20.0 * Math.sin(y * PI) + 40.0 * Math.sin(y / 3.0 * PI)) * 2.0 / 3.0
        ret += (160.0 * Math.sin(y / 12.0 * PI) + 320 * Math.sin(y * PI / 30.0)) * 2.0 / 3.0
        return ret
    }

    private fun transformLon(x: Double, y: Double): Double {
        var ret = 300.0 + x + 2.0 * y + 0.1 * x * x + 0.1 * x * y + 0.1 * Math.sqrt(Math.abs(x))
        ret += (20.0 * Math.sin(6.0 * x * PI) + 20.0 * Math.sin(2.0 * x * PI)) * 2.0 / 3.0
        ret += (20.0 * Math.sin(x * PI) + 40.0 * Math.sin(x / 3.0 * PI)) * 2.0 / 3.0
        ret += (150.0 * Math.sin(x / 12.0 * PI) + 300.0 * Math.sin(x / 30.0 * PI)) * 2.0 / 3.0
        return ret
    }

    /** GCJ-02 → WGS84，迭代近似（黑鸟轨迹坐标转换） */
    private fun gcj02ToWgs84(gcjLat: Double, gcjLon: Double): Pair<Double, Double> {
        if (outOfChina(gcjLat, gcjLon)) return Pair(gcjLat, gcjLon)
        var wgLat = gcjLat
        var wgLon = gcjLon
        for (i in 0 until 100) {
            val dLat = transformLat(wgLon - 105.0, wgLat - 35.0)
            val dLon = transformLon(wgLon - 105.0, wgLat - 35.0)
            val radLat = wgLat / 180.0 * PI
            var magic = Math.sin(radLat)
            magic = 1 - EE * magic * magic
            val sqrtMagic = Math.sqrt(magic)
            val mgLat = wgLat + (dLat * 180.0) / ((A * (1 - EE)) / (magic * sqrtMagic) * PI)
            val mgLon = wgLon + (dLon * 180.0) / (A / sqrtMagic * Math.cos(radLat) * PI)
            if (Math.abs(mgLat - gcjLat) < 1e-8 && Math.abs(mgLon - gcjLon) < 1e-8) break
            wgLat = gcjLat - (dLat * 180.0) / ((A * (1 - EE)) / (magic * sqrtMagic) * PI)
            wgLon = gcjLon - (dLon * 180.0) / (A / sqrtMagic * Math.cos(radLat) * PI)
        }
        return Pair(wgLat, wgLon)
    }

    private fun outOfChina(lat: Double, lon: Double): Boolean =
        lon < 72.004 || lon > 137.8347 || lat < 0.8293 || lat > 55.8271

    companion object {
        private const val TAG = "BlackbirdApi"
        const val LOGIN_URL = "https://www.blackbirdsport.com/login"
        private const val BASE = "https://www.blackbirdsport.com/api"
        private const val PER_PAGE = 100
        // v6.3.15调试: 最近一次活动的原始track样本（带字段索引），供界面日志显示，用于确定黑鸟真实字段顺序
        @Volatile var lastRawTrackSample: String = ""
        @Volatile var lastRawKeys: String = ""
        @Volatile var lastStartTime: Long = 0L
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private fun authHeaders(cookie: String) = mapOf(
        "Cookie" to cookie,
        "User-Agent" to "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36",
        "Referer" to "https://www.blackbirdsport.com/",
        "Accept" to "application/json, text/plain, */*"
    )

    /** 黑鸟startTime为毫秒时间戳，格式化为可读时间 */
    private fun formatStartTime(ts: Long): String {
        if (ts <= 0) return ""
        return try {
            val fmt = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm", java.util.Locale.getDefault())
            fmt.format(java.util.Date(ts))
        } catch (_: Exception) { ts.toString() }
    }

    suspend fun getUsername(cookie: String): String? = withContext(Dispatchers.IO) {
        try {
            // 黑鸟用户接口: GET /api/user → content.nickname (已验证)
            val req = Request.Builder().url("$BASE/user")
                .addHeader("Cookie", cookie)
                .addHeader("User-Agent", "Mozilla/5.0")
                .get().build()
            val resp = client.newCall(req).execute()
            val body = resp.body?.string() ?: ""
            Log.d(TAG, "Blackbird user info: HTTP ${resp.code} ${body.take(120)}")
            val json = JSONObject(body)
            if (json.optString("status") == "ok") {
                val data = json.optJSONObject("content") ?: json.optJSONObject("data") ?: json
                data.optString("nickname")?.takeIf { it.isNotEmpty() }
                    ?: data.optString("userName")?.takeIf { it.isNotEmpty() }
                    ?: data.optString("name")?.takeIf { it.isNotEmpty() }
            } else null
        } catch (e: Exception) { Log.w(TAG, "getUsername: ${e.message}"); null }
    }

    suspend fun getActivities(cookie: String, offset: Int, limit: Int): List<ActivityRecord> =
        withContext(Dispatchers.IO) {
            val result = mutableListOf<ActivityRecord>()
            var lastRecordId = 0L
            var fetched = 0

            while (result.size < limit) {
                val url = "$BASE/records?lastRecordId=$lastRecordId&pageSize=$PER_PAGE"
                val req = Request.Builder().url(url)
                    .apply { authHeaders(cookie).forEach { (k, v) -> addHeader(k, v) } }
                    .get().build()
                val resp = client.newCall(req).execute()
                val code = resp.code
                val body = resp.body?.string() ?: throw Exception("空响应 (HTTP $code)")
                if (code in 401..403) throw Exception("黑鸟登录已过期，请重新登录")
                if (code != 200) throw Exception("黑鸟 HTTP $code: ${body.take(200)}")

                val json = JSONObject(body)
                // 黑鸟返回结构: {"status":"ok","content":[{recordId,title,startTime,distance,duration}]}
                val rows = json.optJSONArray("content") ?: json.optJSONArray("data") ?: json.optJSONArray("records") ?: break
                if (rows.length() == 0) break

                for (i in 0 until rows.length()) {
                    fetched++
                    if (fetched <= offset) continue
                    val item = rows.getJSONObject(i)
                    val id = item.optLong("recordId", item.optLong("id", 0))
                    if (id <= 0) continue
                    lastRecordId = id
                    result.add(
                        ActivityRecord(
                            id = id.toString(),
                            title = item.optString("title", "").takeIf { it.isNotEmpty() && it != "null" } ?: "骑行",
                            startTime = formatStartTime(item.optLong("startTime", 0)),
                            distance = item.optDouble("distance", 0.0) / 1000.0,
                            duration = item.optInt("duration", 0),
                            source = DataSource.BLACKBIRD
                        )
                    )
                    if (result.size >= limit) break
                }
                if (rows.length() < PER_PAGE) break
                kotlinx.coroutines.delay(200)
            }
            Log.d(TAG, "getActivities: ${result.size} records")
            result
        }

    /**
     * 下载活动数据（FIT优先，回退GPX构建）
     */
    /**
     * v6.3.8: 黑鸟下载重构
     * - FIT优先：增强字段探测(fitUrl/fit_url/downloadUrl/fileUrl/fitFileUrl等)+cookie认证
     * - GPX回退：解析content.startTime(Unix秒)+track字符串(lat,lon,ele,...,time_offset_ms)
     *   构建带时间戳/心率/功率/踏频的完整GPX，不再只存lat/lon/ele
     * - 坐标：黑鸟为GCJ-02(火星坐标)，构建GPX时根据UI开关决定是否转WGS84（实测Outbase偏移修复）
     */
    suspend fun downloadActivity(cookie: String, recordId: String, convertCoord: Boolean = true): ByteArray =
        withContext(Dispatchers.IO) {
            val req = Request.Builder().url("$BASE/records/$recordId/data")
                .apply { authHeaders(cookie).forEach { (k, v) -> addHeader(k, v) } }
                .get().build()
            val resp = client.newCall(req).execute()
            val body = resp.body?.string() ?: throw Exception("数据空响应")
            if (resp.code != 200) throw Exception("黑鸟数据 HTTP ${resp.code}")

            val json = JSONObject(body)
            val data = json.optJSONObject("content") ?: json.optJSONObject("data") ?: json

            // v6.3.8: 增强FIT下载地址字段探测
            val fitUrl = listOf("fitUrl", "fit_url", "downloadUrl", "download_url", "fileUrl",
                "file_url", "fitFileUrl", "fit_file_url", "fitDownloadUrl", "fit_download_url")
                .map { data.optString(it, "") }
                .firstOrNull { it.isNotEmpty() && it.startsWith("http") } ?: ""

            if (fitUrl.isNotEmpty()) {
                try {
                    // v6.3.8: FIT下载带cookie认证+Referer，避免401/403
                    val dlReq = Request.Builder().url(fitUrl)
                        .addHeader("User-Agent", "Mozilla/5.0")
                        .addHeader("Referer", "$BASE/records/$recordId")
                        .apply { authHeaders(cookie).forEach { (k, v) -> addHeader(k, v) } }
                        .get().build()
                    val dlResp = client.newCall(dlReq).execute()
                    val bytes = dlResp.body?.bytes()
                    if (bytes != null && bytes.size > 100 &&
                        bytes.size >= 14 && bytes[8] == '.'.code.toByte() && bytes[9] == 'F'.code.toByte()) {
                        Log.d(TAG, "✅ 黑鸟FIT下载成功: ${bytes.size} bytes (id=$recordId)")
                        return@withContext bytes
                    }
                    Log.w(TAG, "黑鸟FIT下载返回非FIT数据(${bytes?.size ?: 0}bytes)，回退GPX构建")
                } catch (e: Exception) {
                    Log.w(TAG, "黑鸟FIT下载异常: ${e.message}，回退GPX构建")
                }
            } else {
                Log.d(TAG, "黑鸟活动无FIT下载地址，使用GPX构建")
            }

            // v6.3.9: 获取开始时间(Unix秒)，支持字符串/数字+更多字段名
            val startTime = run {
                val keys = listOf("startTime","start_time","beginTime","begin_time","startDate","start_date","date","time","startTimestamp","start_timestamp")
                var v = 0L
                for (k in keys) {
                    val s = data.optString(k, "")
                    if (s.isNotEmpty()) {
                        val num = s.toLongOrNull() ?: s.toDoubleOrNull()?.toLong()
                        if (num != null && num > 0) { v = num; break }
                    }
                }
                if (v == 0L) {
                    for (k in keys) {
                        val num = data.optLong(k, 0L)
                        if (num > 0) { v = num; break }
                    }
                }
                v
            }
            // v6.3.9调试：输出content所有字段名和track前2个点，排查时间/心率功率问题
            val allKeys = data.names()?.let { arr -> (0 until arr.length()).map { arr.optString(it) }.joinToString(",") } ?: "(无)"
            val trackStr = data.optString("track", data.optString("points", ""))
            val firstPoints = trackStr.split(";").take(2).joinToString(" | ")
            // v6.3.9: startTime可能是毫秒(13位)或秒(10位)，自动判断
            val startTimeSec = if (startTime > 1000000000000L) startTime / 1000 else startTime
            Log.w(TAG, "===== 黑鸟活动调试 ===== keys=$allKeys startTimeRaw=$startTime startTimeSec=$startTimeSec")
            Log.w(TAG, "===== track前2点: $firstPoints =====")
            // v6.3.15: 保存原始track前5点，每个字段标注位置索引，供界面日志确认真实字段顺序
            lastRawKeys = allKeys
            lastStartTime = startTimeSec
            lastRawTrackSample = trackStr.split(";").take(5).mapIndexed { i, seg ->
                val parts = seg.split(",")
                "点#$i(${parts.size}字段): " + parts.mapIndexed { j, v -> "[$j]=$v" }.joinToString(" ")
            }.joinToString("\n")

            // 从轨迹点构建GPX：track可能是JSONArray（旧格式）或分号分隔字符串（实际格式）
            val trackArr = data.optJSONArray("track") ?: data.optJSONArray("points")
            if (trackArr != null && trackArr.length() > 0) {
                val gpx = buildGpx(trackArr, recordId, startTimeSec, convertCoord)
                Log.d(TAG, "GPX built: ${gpx.size} bytes from ${trackArr.length()} points")
                return@withContext gpx
            }
            if (trackStr.isNotBlank()) {
                val gpx = buildGpxFromTrackString(trackStr, recordId, startTimeSec, convertCoord)
                Log.d(TAG, "GPX built from track string: ${gpx.size} bytes (startTime=$startTimeSec)")
                return@withContext gpx
            }

            throw Exception("无法获取活动数据 (recordId=$recordId)")
        }

    private fun buildGpx(track: org.json.JSONArray, recordId: String, startTimeSec: Long, convertCoord: Boolean): ByteArray {
        val sb = StringBuilder()
        var firstTime2 = ""
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
        sb.append("<gpx version=\"1.1\" creator=\"JichiOB-${BuildConfig.VERSION_NAME}\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\">\n")
        for (i in 0 until track.length()) {
            val pt = track.optJSONObject(i) ?: continue
            val gcjLat = pt.optDouble("lat", pt.optDouble("latitude", 0.0))
            val gcjLon = pt.optDouble("lng", pt.optDouble("longitude", 0.0))
            val ele = pt.optDouble("ele", pt.optDouble("altitude", 0.0))
            // v6.3.8: 黑鸟坐标GCJ-02→WGS84转换（受UI开关控制）
            val (lat, lon) = if (convertCoord) gcj02ToWgs84(gcjLat, gcjLon) else Pair(gcjLat, gcjLon)
            // 时间：优先用点自带的time/timestamp，否则用startTime+索引递增
            val ptTime = pt.optString("time", pt.optString("timestamp", "")).let {
                if (it.isNotEmpty()) it else {
                    val offset = pt.optLong("offset", pt.optLong("time_offset", i.toLong()))
                    if (startTimeSec > 0) {
                        val instant = java.time.Instant.ofEpochSecond(startTimeSec + offset)
                        java.time.format.DateTimeFormatter.ISO_INSTANT.format(instant)
                    } else ""
                }
            }
            val hr = pt.optInt("hr", pt.optInt("heartRate", pt.optInt("heart_rate", 0)))
            val power = pt.optInt("power", pt.optInt("watts", 0))
            val cad = pt.optInt("cad", pt.optInt("cadence", 0))
            sb.append("      <trkpt lat=\"$lat\" lon=\"$lon\">\n")
            if (ele != 0.0) sb.append("        <ele>$ele</ele>\n")
            if (ptTime.isNotEmpty()) {
                if (firstTime2.isEmpty()) firstTime2 = ptTime
                sb.append("        <time>$ptTime</time>\n")
            }
            if (hr > 0 || power > 0 || cad > 0) {
                sb.append("        <extensions>\n          <gpxtpx:TrackPointExtension>\n")
                if (hr > 0) sb.append("            <gpxtpx:hr>$hr</gpxtpx:hr>\n")
                if (cad > 0) sb.append("            <gpxtpx:cad>$cad</gpxtpx:cad>\n")
                if (power > 0) sb.append("            <gpxtpx:power>$power</gpxtpx:power>\n")
                sb.append("          </gpxtpx:TrackPointExtension>\n        </extensions>\n")
            }
            sb.append("      </trkpt>\n")
        }
        if (firstTime2.isNotEmpty()) {
            sb.insert(sb.indexOf("<gpx "), "<metadata><time>$firstTime2</time></metadata>\n")
        }
        sb.append("    </trkseg>\n")
        if (firstTime2.isNotEmpty()) sb.append("    <time>$firstTime2</time>\n")
        sb.append("  </trk>\n</gpx>")
        return sb.toString().toByteArray()
    }


    /** 从黑鸟 track 字符串（"lat,lon,ele,dist,...;lat,lon,..."）构建GPX */
    /**
     * v6.3.16（推倒重写）黑鸟track固定9字段，按位置精确解析，不再靠数值范围猜测。
     * 字段布局（实际抓包 + 第三方blackbird2wgs脚本双重验证）:
     *   [0]lat(GCJ-02) [1]lon(GCJ-02) [2]ele海拔(米)
     *   [3]内部值(忽略) [4]hr心率(bpm) [5]power功率(瓦) [6]speed速度(单位0.1km/h)
     *   [7]相对startTime的秒偏移 [8]保留(恒0)
     * 坐标固定 GCJ-02→WGS84；逐点时间=startTime+[7]；速度[6]换算m/s写入gpxtpx:speed；无独立踏频字段不造假。
     */
    private fun buildGpxFromTrackString(trackStr: String, recordId: String, startTimeSec: Long, convertCoord: Boolean): ByteArray {
        val isoFmt = java.time.format.DateTimeFormatter.ISO_INSTANT
        val sb = StringBuilder()
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
        sb.append("<gpx version=\"1.1\" creator=\"JichiOB-${BuildConfig.VERSION_NAME}\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\">\n")
        sb.append("  <trk>\n    <name>黑鸟骑行 $recordId</name>\n    <trkseg>\n")
        var count = 0
        var firstTimeStr = ""
        var nHr = 0; var nPower = 0; var nSpeed = 0
        for (segment in trackStr.split(";")) {
            if (count >= 50000) break  // 上限5万点，长距离不截断
            val f = segment.split(",")
            if (f.size < 3) continue
            val gcjLat = f[0].trim().toDoubleOrNull() ?: continue
            val gcjLon = f[1].trim().toDoubleOrNull() ?: continue
            val ele = f[2].trim().toDoubleOrNull() ?: 0.0
            // 黑鸟坐标固定GCJ-02，统一转WGS84后输出（运动平台均使用WGS84）
            val (lat, lon) = if (convertCoord) gcj02ToWgs84(gcjLat, gcjLon) else Pair(gcjLat, gcjLon)

            // 时间偏移：固定取[7]秒；字段不足的老格式回退最后一个字段
            val offsetSec = (if (f.size >= 8) f[7].trim().toDoubleOrNull()
                             else f[f.size - 1].trim().toDoubleOrNull()) ?: 0.0
            val timeStr = if (startTimeSec > 0)
                isoFmt.format(java.time.Instant.ofEpochMilli((startTimeSec * 1000 + offsetSec * 1000).toLong())) else ""
            if (firstTimeStr.isEmpty() && timeStr.isNotEmpty()) firstTimeStr = timeStr

            // 传感器按固定位置取，0=该点无此数据
            val hr = if (f.size >= 5) (f[4].trim().toDoubleOrNull()?.toInt() ?: 0) else 0
            val power = if (f.size >= 6) (f[5].trim().toDoubleOrNull()?.toInt() ?: 0) else 0
            val speedDeciKmh = if (f.size >= 7) (f[6].trim().toDoubleOrNull() ?: 0.0) else 0.0 // 0.1km/h
            val speedMs = if (speedDeciKmh > 0) speedDeciKmh / 36.0 else 0.0 // 换算 m/s
            if (hr > 0) nHr++
            if (power > 0) nPower++
            if (speedMs > 0) nSpeed++

            sb.append("      <trkpt lat=\"$lat\" lon=\"$lon\">\n")
            sb.append("        <ele>$ele</ele>\n")
            if (timeStr.isNotEmpty()) sb.append("        <time>$timeStr</time>\n")
            if (hr > 0 || power > 0 || speedMs > 0) {
                sb.append("        <extensions>\n          <gpxtpx:TrackPointExtension>\n")
                if (hr > 0) sb.append("            <gpxtpx:hr>$hr</gpxtpx:hr>\n")
                if (speedMs > 0) sb.append("            <gpxtpx:speed>$speedMs</gpxtpx:speed>\n")
                if (power > 0) sb.append("            <gpxtpx:power>$power</gpxtpx:power>\n")
                sb.append("          </gpxtpx:TrackPointExtension>\n        </extensions>\n")
            }
            sb.append("      </trkpt>\n")
            count++
        }
        sb.append("    </trkseg>\n  </trk>\n</gpx>")
        if (firstTimeStr.isNotEmpty()) {
            val idx = sb.indexOf("<gpx ")
            if (idx >= 0) sb.insert(sb.indexOf(">", idx) + 1, "\n  <metadata><time>$firstTimeStr</time></metadata>")
        }
        Log.w(TAG, "buildGpx(固定9字段): $count 点 | 有hr=$nHr power=$nPower speed=$nSpeed | 首时间=$firstTimeStr")
        return sb.toString().toByteArray()
    }

    /**
     * 上传FIT/GPX文件到黑鸟单车
     */
    /** 黑鸟上传：返回 null=成功；非null=失败原因 */
    suspend fun uploadActivity(cookie: String, fitData: ByteArray, fileName: String): String? = withContext(Dispatchers.IO) {
        try {
            val body = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("file", fileName, fitData.toRequestBody("application/octet-stream".toMediaType()))
                .build()
            val req = Request.Builder()
                .url("$BASE/records/upload")
                .addHeader("Cookie", cookie)
                .addHeader("User-Agent", "Mozilla/5.0")
                .post(body)
                .build()
            val resp = client.newCall(req).execute()
            val bodyStr = resp.body?.string() ?: ""
            Log.d(TAG, "Blackbird upload: HTTP ${resp.code} resp=${bodyStr.take(300)}")
            if (resp.code in 301..308) {
                Log.w(TAG, "黑鸟上传被重定向(可能未登录): ${resp.header("Location")}")
                return@withContext "黑鸟上传失败: 登录已失效(被重定向)，请重新登录黑鸟"
            }
            if (resp.code in 401..403) {
                Log.w(TAG, "黑鸟上传认证失败: HTTP ${resp.code}")
                return@withContext "黑鸟上传失败: 登录已过期(HTTP ${resp.code})，请重新登录黑鸟"
            }
            if (bodyStr.contains("FIT_FILE_ERROR") || bodyStr.contains("FIT file integrity")) {
                Log.w(TAG, "黑鸟接口已连通但FIT校验被拒：黑鸟解析器较旧")
                return@withContext "黑鸟拒绝该FIT(FIT_FILE_ERROR)：黑鸟解析器较旧，无法解析迈金等含大量开发者字段的FIT；室内无GPS的FIT必被拒。建议用iGPSPORT/行者记录或户外含GPS数据"
            }
            val ok = resp.code == 200 && (bodyStr.contains("\"status\":\"ok\"") || bodyStr.contains("\"code\":0") ||
                    bodyStr.contains("\"code\":200") || bodyStr.contains("success"))
            if (ok) return@withContext null
            // 错误码翻译，方便用户理解
            return@withContext translateBlackbirdError(bodyStr, resp.code)
        } catch (e: Exception) {
            Log.e(TAG, "Blackbird upload error", e)
            "黑鸟上传失败: ${e.message}"
        }
    }

    /** 黑鸟上传错误响应翻译（2026-08-27 实测验证） */
    private fun translateBlackbirdError(bodyStr: String, httpCode: Int): String {
        val raw = "黑鸟上传失败(HTTP $httpCode): ${bodyStr.take(160)}"
        return when {
            bodyStr.contains("DUPLICATE") ->
                "黑鸟提示该记录已存在(重复上传)：此活动之前已同步过黑鸟，跳过即可"
            bodyStr.contains("010001") ->
                "黑鸟无法入库该活动(010001)：多为该FIT无有效GPS轨迹（如0km空活动/室内骑行）或格式黑鸟不认。真实户外骑行记录可正常上传"
            bodyStr.contains("errorCode") || bodyStr.contains("\"status\":\"error\"") ->
                "黑鸟上传被拒：${extractBlackbirdMsg(bodyStr)}"
            else -> raw
        }
    }

    /** 提取黑鸟错误响应中的可读信息 */
    private fun extractBlackbirdMsg(bodyStr: String): String {
        // 尝试从JSON取 errorCode/msg
        return try {
            val j = org.json.JSONObject(bodyStr)
            val code = j.optString("errorCode", "")
            val msg = j.optString("msg", "")
            when {
                code.isNotEmpty() && msg.isNotEmpty() -> "$code($msg)"
                code.isNotEmpty() -> code
                else -> msg.ifEmpty { bodyStr.take(80) }
            }
        } catch (e: Exception) {
            bodyStr.take(80)
        }
    }
}

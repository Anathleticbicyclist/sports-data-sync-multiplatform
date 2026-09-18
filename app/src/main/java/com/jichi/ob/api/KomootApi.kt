package com.jichi.ob.api

import android.util.Base64
import android.util.Log
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONArray
import org.json.JSONObject
import java.io.ByteArrayOutputStream
import java.util.concurrent.TimeUnit

/**
 * Komoot API（v7.9.6 新增，纯HTTP 双向：下载源 + 上传目标）
 *
 * 认证: Kompy（https://github.com/Tsadoq/kompy）社区方案——邮箱+密码 HTTP Basic 登录，
 *       无需 OAuth / 开发者合同，个人账号即可使用。
 * 登录: GET https://api.komoot.de/v006/account/email/{email}/
 *       auth=(email, password) → 响应 JSON 的 password 字段即认证 token
 *       （注意：Komoot 的 v006/v007 内部 API 用 HTTP Basic（email:token）认证，非 Bearer）
 * 列表: GET https://api.komoot.de/v007/users/{username}/tours/?limit=&page=
 *       (Basic email:token) → _embedded.tours[]（含 id/name/date/distance/duration/sport），
 *       page.totalPages 分页
 * 下载: GET https://api.komoot.de/v007/tours/{id}.gpx（GPX）/ {id}.fit（FIT，仅planned）
 *       (Basic email:token)
 * 上传: POST https://api.komoot.de/v007/tours/?data_type=fit|gpx&sport=&status=&name=
 *       (Basic email:token，body=文件字节，需 User-Agent) → 201 新建 / 202 重复已存在
 *
 * 坐标: Komoot 为国际平台，轨迹 WGS-84，无需坐标转换。
 * sport 类型: 骑行=racebike（公路）/touringbicycle（旅行）/mtb（山地）/citybike（城市）
 *             跑步=jogging 徒步=hike 越野跑=trail 其他=other
 */
class KomootApi {

    companion object {
        private const val TAG = "KomootApi"
        private const val API = "https://api.komoot.de"
        private const val LOGIN_URL = "$API/v006/account/email"
        private const val LIST_TOURS = "$API/v007/users"
        private const val TOUR_URL = "$API/v007/tours"
        private const val UPLOAD_URL = "$API/v007/tours"
        private const val FORM_MEDIA = "application/x-www-form-urlencoded;charset=utf-8"
        private const val UA = "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"
        private const val APP_UA = "jichiOb/7.9.6 (鸡翅幸哲迈进OB)"
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(60, TimeUnit.SECONDS)
        .writeTimeout(60, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    private var lastEmail: String? = null
    private var lastPassword: String? = null

    data class LoginResult(val token: String, val username: String)

    /** 邮箱+密码登录。成功返回 {token, username}，失败返回 null */
    suspend fun login(email: String, password: String): LoginResult? = withContext(Dispatchers.IO) {
        try {
            lastEmail = email
            lastPassword = password
            // HTTP Basic (email:password) 请求登录接口，返回 JSON 中 password 字段即 token
            val req = Request.Builder()
                .url("$LOGIN_URL/${android.net.Uri.encode(email)}/")
                .addHeader("Authorization", basicAuth(email, password))
                .addHeader("User-Agent", UA)
                .get()
                .build()
            client.newCall(req).execute().use { resp ->
                val respBody = resp.body?.string() ?: return@withContext null
                if (resp.code == 403) {
                    Log.w(TAG, "Komoot login 403: 邮箱或密码错误")
                    return@withContext null
                }
                if (resp.code != 200) {
                    Log.w(TAG, "Komoot login HTTP ${resp.code}: ${respBody.take(150)}")
                    return@withContext null
                }
                val json = try { JSONObject(respBody) } catch (_: Exception) { null } ?: return@withContext null
                val token = json.optString("password").takeIf { it.isNotBlank() } ?: return@withContext null
                val username = json.optString("username").takeIf { it.isNotBlank() } ?: email
                LoginResult(token, username)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Komoot login error", e)
            null
        }
    }

    /** 校验 token：用 Basic(email:token) 拉列表首页，200 即有效 */
    suspend fun validateToken(email: String, token: String): Boolean = withContext(Dispatchers.IO) {
        if (email.isBlank() || token.isBlank()) return@withContext false
        try {
            val req = Request.Builder()
                .url("$LIST_TOURS/${android.net.Uri.encode(email)}/tours/?limit=1&page=0")
                .addHeader("Authorization", basicAuth(email, token))
                .addHeader("User-Agent", UA)
                .get()
                .build()
            client.newCall(req).execute().use { resp ->
                resp.code == 200
            }
        } catch (e: Exception) {
            Log.e(TAG, "Komoot validateToken error", e)
            false
        }
    }

    /** 启动登录检测：token 有效返回 "Komoot用户"，无效返回 null */
    suspend fun getUsername(email: String, token: String): String? = withContext(Dispatchers.IO) {
        if (validateToken(email, token)) "Komoot用户" else null
    }

    /** token 失效时用最近一次登录的邮箱密码重新登录（内存兜底） */
    suspend fun reLoginIfNeeded(): LoginResult? = withContext(Dispatchers.IO) {
        val e = lastEmail ?: return@withContext null
        val p = lastPassword ?: return@withContext null
        login(e, p)
    }

    /**
     * 获取活动列表（分页，按日期倒序）。Komoot API 天然分页（page 从 0 起，totalPages）。
     * 返回记录 extra 存 tour id；title 用 name，运动类型映射为中文便于显示。
     */
    suspend fun getActivities(email: String, token: String, skip: Int, limit: Int): List<ActivityRecord> =
        withContext(Dispatchers.IO) {
            try {
                val out = mutableListOf<ActivityRecord>()
                var page = 0
                var totalPages = 1
                while (page < totalPages) {
                    val req = Request.Builder()
                        .url("$LIST_TOURS/${android.net.Uri.encode(email)}/tours/?limit=50&page=$page")
                        .addHeader("Authorization", basicAuth(email, token))
                        .addHeader("User-Agent", UA)
                        .get()
                        .build()
                    val (code, body) = client.newCall(req).execute().use { resp ->
                        Pair(resp.code, resp.body?.string() ?: "")
                    }
                    if (code == 401 || code == 403) throw IllegalStateException("Komoot 登录失效(HTTP $code)")
                    if (code != 200) {
                        Log.w(TAG, "Komoot list HTTP $code: ${body.take(120)}")
                        break
                    }
                    val json = try { JSONObject(body) } catch (_: Exception) { null } ?: break
                    // 分页信息
                    val pageObj = json.optJSONObject("page")
                    totalPages = pageObj?.optInt("totalPages", 1) ?: 1
                    val embedded = json.optJSONObject("_embedded") ?: break
                    val tours = embedded.optJSONArray("tours") ?: break
                    for (i in 0 until tours.length()) {
                        val t = tours.optJSONObject(i) ?: continue
                        val id = t.optString("id").takeIf { it.isNotBlank() } ?: continue
                        val name = t.optString("name").takeIf { it.isNotBlank() } ?: sportToChinese(t.optString("sport"))
                        val start = formatTime(t.optString("date"))
                        val dist = t.optDouble("distance", 0.0) / 1000.0  // 米→公里
                        val dur = t.optLong("duration", 0).toInt()
                        val sport = t.optString("sport")
                        val title = "$name ${sportToChinese(sport)}".trim()
                        // v8.2.4: 补 startTimeMs（时间=0会沉底/日期检索失效）
                        out.add(ActivityRecord(id, title, start, dist, dur, DataSource.KOMOT, id,
                            startTimeMs = com.jichi.ob.util.ActivityCache.parseStartTimeMs(t.optString("date"))))
                    }
                    page++
                    if (out.size >= skip + limit) break
                }
                out.distinctBy { it.id }.take((skip + limit).coerceAtLeast(1)).drop(skip)
            } catch (e: Exception) {
                Log.e(TAG, "Komoot getActivities error", e)
                throw e
            }
        }

    /** Komoot sport 枚举 → 中文名 */
    private fun sportToChinese(sport: String): String = when (sport) {
        "racebike", "e_racebike" -> "公路骑行"
        "touringbicycle", "e_touringbicycle" -> "旅行骑行"
        "mtb", "e_mtb" -> "山地骑行"
        "mtb_easy", "e_mtb_easy" -> "越野骑行"
        "mtb_advanced", "e_mtb_advanced" -> "耐力骑行"
        "citybike" -> "城市骑行"
        "downhillbike" -> "速降"
        "jogging" -> "跑步"
        "trail" -> "越野跑"
        "hike" -> "徒步"
        "mountaineering" -> "登山"
        "nordic" -> "越野滑雪"
        "nordicwalking" -> "北欧徒步"
        "skialpin" -> "高山滑雪"
        "skitour" -> "滑雪旅行"
        "snowboard" -> "单板滑雪"
        "snowshoe" -> "雪鞋徒步"
        "sled" -> "雪橇"
        "skaten" -> "轮滑"
        "climbing" -> "攀岩"
        "unicycle" -> "独轮车"
        "other" -> "其他"
        else -> "运动"
    }

    /** 上传到 Komoot 时，把中文/通用运动类型映射为 Komoot sport 枚举 */
    fun mapToKomootSport(record: ActivityRecord): String = when {
        record.title.contains("骑") -> "racebike"
        record.title.contains("跑") -> "jogging"
        record.title.contains("徒步") -> "hike"
        record.title.contains("越野") -> "mtb_easy"
        record.title.contains("游泳") -> "other"
        record.title.contains("健走") || record.title.contains("快走") -> "nordicwalking"
        else -> "other"
    }

    /**
     * 下载活动轨迹。Komoot 支持 .gpx 下载（recorded/planned 均可）。
     * 返回 GPX 字节，上传引擎会自动按需转 FIT。
     */
    suspend fun downloadGpx(email: String, token: String, tourId: String): ByteArray = withContext(Dispatchers.IO) {
        try {
            val req = Request.Builder()
                .url("$TOUR_URL/${android.net.Uri.encode(tourId)}.gpx")
                .addHeader("Authorization", basicAuth(email, token))
                .addHeader("User-Agent", UA)
                .addHeader("Accept", "application/gpx+xml")
                .get()
                .build()
            client.newCall(req).execute().use { resp ->
                if (resp.code == 401 || resp.code == 403) throw IllegalStateException("Komoot 登录失效(HTTP ${resp.code})")
                if (resp.code != 200) throw IllegalStateException("Komoot 下载HTTP ${resp.code}")
                val bytes = resp.body?.bytes() ?: throw IllegalStateException("Komoot 下载为空")
                if (bytes.isEmpty()) throw IllegalStateException("Komoot 轨迹为空")
                bytes
            }
        } catch (e: Exception) {
            Log.e(TAG, "Komoot downloadGpx error", e)
            throw e
        }
    }

    /**
     * 上传活动到 Komoot（bytes 可为 GPX 或 FIT）。
     * - GPX: data_type=gpx&sport={sport}&name={name}（GPX 需显式指定 sport）
     * - FIT: data_type=fit&name={name}（FIT 内嵌运动类型）
     * 返回 Pair(是否成功, 提示信息)。201=新建，202=重复已存在（视为成功）。
     */
    suspend fun upload(
        email: String, token: String, data: ByteArray, record: ActivityRecord,
        isFit: Boolean, sport: String
    ): Pair<Boolean, String> = withContext(Dispatchers.IO) {
        try {
            val dataType = if (isFit) "fit" else "gpx"
            val name = record.title.takeIf { it.isNotBlank() } ?: "jichiOB sync"
            val url = if (isFit) {
                "$UPLOAD_URL/?data_type=fit&name=${android.net.Uri.encode(name)}"
            } else {
                "$UPLOAD_URL/?data_type=gpx&sport=${android.net.Uri.encode(sport)}&name=${android.net.Uri.encode(name)}"
            }
            val body = data.toRequestBody(null)
            val req = Request.Builder()
                .url(url)
                .addHeader("Authorization", basicAuth(email, token))
                .addHeader("User-Agent", APP_UA)
                .post(body)
                .build()
            client.newCall(req).execute().use { resp ->
                val respBody = resp.body?.string() ?: ""
                when (resp.code) {
                    201 -> Pair(true, "Komoot上传成功")
                    202 -> Pair(true, "Komoot已存在(重复)")
                    400 -> {
                        Log.w(TAG, "Komoot upload 400: $respBody")
                        Pair(false, "Komoot上传失败: 文件格式不被接受(400)")
                    }
                    401, 403 -> throw IllegalStateException("Komoot 登录失效(HTTP ${resp.code})")
                    else -> {
                        Log.w(TAG, "Komoot upload HTTP ${resp.code}: $respBody")
                        Pair(false, "Komoot上传失败: HTTP ${resp.code}")
                    }
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Komoot upload error", e)
            Pair(false, "Komoot上传失败: ${e.message}")
        }
    }

    /** HTTP Basic 认证头 */
    private fun basicAuth(user: String, pass: String): String {
        val raw = "$user:$pass".toByteArray(Charsets.UTF_8)
        return "Basic " + Base64.encodeToString(raw, Base64.NO_WRAP)
    }

    private fun formatTime(iso: String): String {
        if (iso.isBlank()) return ""
        return try {
            // Komoot date 为 ISO8601（如 2026-09-13T08:30:00.000Z），转本地显示
            val p = java.time.OffsetDateTime.parse(iso)
            val f = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.US)
            f.timeZone = java.util.TimeZone.getDefault()
            f.format(java.util.Date(p.toInstant().toEpochMilli()))
        } catch (_: Exception) { iso }
    }
}

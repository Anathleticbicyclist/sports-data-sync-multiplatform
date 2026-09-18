package com.jichi.ob.api

import android.content.Context
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import com.jichi.ob.util.PrefsManager
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.FormBody
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.asRequestBody
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale
import java.util.concurrent.TimeUnit

/**
 * v8.2.9: 开发者自填 OAuth2 实验室平台（松拓式）
 *
 * 平台：Strava / Polar / Fitbit / Withings / TrainingPeaks（官方免费开发者平台）
 * 接入方式：用户在实验室自填 clientId / clientSecret（自己申请）→ WebView 官方授权页 → 回调 localhost:8080?code= → 换 token
 * 全局链路：登录 → 拉缓存库 → 同步 → 入库
 *
 * ⚠️ 私有/逆向凭证一律不碰；仅使用各平台官方公开 OAuth2 端点。
 */
class DevOAuth2Api(private val ctx: Context) {

    private val prefs = PrefsManager(ctx)
    private val client = OkHttpClient.Builder()
        .connectTimeout(20, TimeUnit.SECONDS)
        .readTimeout(40, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    companion object {
        const val REDIRECT = "http://localhost:8080/callback"

        data class PlatformConf(
            val authUrl: String,   // 授权端点（client_id/redirect_uri/scope 由 buildAuthUrl 追加）
            val tokenUrl: String,
            val scope: String,
            val listUrl: String?,   // null = 列表接口待验证
            val uploadUrl: String?, // null = 官方无上传
            val extraParams: String = ""
        )

        fun conf(ds: DataSource): PlatformConf? = when (ds) {
            DataSource.STRAVA -> PlatformConf(
                "https://www.strava.com/oauth/authorize",
                "https://www.strava.com/oauth/token",
                "activity:read_all,activity:write",
                "https://www.strava.com/api/v3/athlete/activities",
                "https://www.strava.com/api/v3/uploads",
                "&approval_prompt=auto"
            )
            DataSource.POLAR -> PlatformConf(
                "https://flow.polar.com/oauth2/authorization",
                "https://polarremote.com/v2/oauth2/token",
                "training:read",
                "https://www.polaraccesslink.com/v3/exercises",
                null
            )
            DataSource.FITBIT -> PlatformConf(
                "https://www.fitbit.com/oauth2/authorize",
                "https://api.fitbit.com/oauth2/token",
                "activity",
                "https://api.fitbit.com/1/user/-/activities/list.json",
                null,
                "&expires_in=31536000"
            )
            DataSource.WITHINGS -> PlatformConf(
                "https://account.withings.com/oauth2_user/authorize2",
                "https://account.withings.com/oauth2/token",
                "user.activity",
                "https://api.health.nokia.com/v2/workouts",
                null,
                "&state=1"
            )
            DataSource.TRAININGPEAKS -> PlatformConf(
                "https://oauth.trainingpeaks.com/oauth/authorize",
                "https://oauth.trainingpeaks.com/oauth/token",
                "workouts:read",
                "https://api.trainingpeaks.com/v1/workouts",
                null
            )
            else -> null
        }

        fun isDevOAuth(ds: DataSource): Boolean = conf(ds) != null

        fun buildAuthUrl(ds: DataSource, clientId: String): String {
            val c = conf(ds) ?: return ""
            return "${c.authUrl}?client_id=$clientId&response_type=code&redirect_uri=$REDIRECT&scope=${c.scope}${c.extraParams}"
        }
    }

    private fun confOrNull(ds: DataSource): PlatformConf? = conf(ds)

    /** 授权码换 token */
    suspend fun exchangeCode(ds: DataSource, code: String): Boolean = withContext(Dispatchers.IO) {
        val c = confOrNull(ds) ?: return@withContext false
        val clientId = prefs.getLabClientId(ds) ?: return@withContext false
        val clientSecret = prefs.getLabClientSecret(ds) ?: return@withContext false
        try {
            val fb = FormBody.Builder()
                .add("client_id", clientId)
                .add("client_secret", clientSecret)
                .add("code", code)
                .add("grant_type", "authorization_code")
                .add("redirect_uri", REDIRECT)
                .build()
            val req = Request.Builder().url(c.tokenUrl).post(fb)
                .addHeader("User-Agent", "OBA-Sync/8.2.9")
                .build()
            val body = client.newCall(req).execute().use { it.body?.string() ?: "" }
            val json = JSONObject(body)
            val token = json.optString("access_token", "")
            val refresh = json.optString("refresh_token", "")
            if (token.isNotEmpty()) {
                prefs.saveLabToken(ds, token, refresh)
                true
            } else {
                android.util.Log.w("DevOAuth", "token交换失败: ${json.optString("message")}")
                false
            }
        } catch (e: Exception) {
            android.util.Log.w("DevOAuth", "exchangeCode异常: ${e.message}")
            false
        }
    }

    /** 拉取活动列表（Strava/Fitbit 已实现；Polar/Withings/TP 骨架待验证） */
    suspend fun fetchActivities(ds: DataSource, skip: Int = 0, limit: Int = 100): List<ActivityRecord> = withContext(Dispatchers.IO) {
        val c = confOrNull(ds) ?: return@withContext emptyList()
        val token = prefs.getLabToken(ds) ?: return@withContext emptyList()
        try {
            when (ds) {
                DataSource.STRAVA -> fetchStrava(token, skip, limit)
                DataSource.FITBIT -> fetchFitbit(token, skip, limit)
                else -> emptyList()  // Polar/Withings/TP 接口待真机验证
            }
        } catch (e: Exception) {
            android.util.Log.w("DevOAuth", "${ds.displayName} fetch异常: ${e.message}")
            emptyList()
        }
    }

    private fun authReq(url: String, token: String): Request = Request.Builder()
        .url(url)
        .addHeader("Authorization", "Bearer $token")
        .addHeader("User-Agent", "OBA-Sync/8.2.9")
        .get().build()

    private suspend fun fetchStrava(token: String, skip: Int, limit: Int): List<ActivityRecord> {
        val page = skip / 200 + 1
        val url = "https://www.strava.com/api/v3/athlete/activities?per_page=200&page=$page"
        val body = client.newCall(authReq(url, token)).execute().use { it.body?.string() ?: "" }
        val arr = JSONArray(body)
        val out = mutableListOf<ActivityRecord>()
        for (i in 0 until arr.length()) {
            val o = arr.getJSONObject(i)
            val id = o.optString("id", "")
            if (id.isEmpty()) continue
            val name = o.optString("name", "骑行")
            val start = o.optString("start_date", "")
            val distM = o.optDouble("distance", 0.0)
            val secs = o.optInt("moving_time", 0)
            out.add(ActivityRecord(
                id = "st_$id",
                title = name,
                startTime = start,
                distance = distM / 1000.0,
                duration = secs,
                source = DataSource.STRAVA,
                startTimeMs = parseIsoTime(start)
            ))
        }
        return out.take(limit)
    }

    private suspend fun fetchFitbit(token: String, skip: Int, limit: Int): List<ActivityRecord> {
        val cal = Calendar.getInstance()
        cal.add(Calendar.DAY_OF_YEAR, -60)
        val fmt = SimpleDateFormat("yyyy-MM-dd", Locale.US)
        val after = fmt.format(cal.time)
        val offset = skip / 20
        val url = "https://api.fitbit.com/1/user/-/activities/list.json?afterDate=$after&sort=desc&limit=20&offset=$offset"
        val body = client.newCall(authReq(url, token)).execute().use { it.body?.string() ?: "" }
        val json = JSONObject(body)
        val arr = json.optJSONArray("activities") ?: JSONArray()
        val out = mutableListOf<ActivityRecord>()
        for (i in 0 until arr.length()) {
            val o = arr.getJSONObject(i)
            val id = o.optString("logId", "")
            if (id.isEmpty()) continue
            val name = o.optString("activityName", "运动")
            val start = o.optString("startTime", "")
            val dist = o.optDouble("distance", 0.0)  // km
            val durMs = o.optLong("duration", 0)
            out.add(ActivityRecord(
                id = "fb_$id",
                title = name,
                startTime = start,
                distance = dist,
                duration = (durMs / 1000).toInt(),
                source = DataSource.FITBIT
            ))
        }
        return out.take(limit)
    }

    /** 上传（Strava 已实现；其他平台官方无上传或待验证） */
    suspend fun uploadFile(ds: DataSource, file: File): Boolean = withContext(Dispatchers.IO) {
        val c = confOrNull(ds) ?: return@withContext false
        val uploadUrl = c.uploadUrl ?: return@withContext false
        val token = prefs.getLabToken(ds) ?: return@withContext false
        try {
            val ext = file.extension.lowercase()
            val dataType = when (ext) { "fit" -> "fit"; "gpx" -> "gpx"; "tcx" -> "tcx"; else -> "fit" }
            val body = MultipartBody.Builder().setType(MultipartBody.FORM)
                .addFormDataPart("data_type", dataType)
                .addFormDataPart("name", file.nameWithoutExtension)
                .addFormDataPart("file", file.name, file.asRequestBody("application/octet-stream".toMediaType()))
                .build()
            val req = Request.Builder().url(uploadUrl).post(body)
                .addHeader("Authorization", "Bearer $token")
                .addHeader("User-Agent", "OBA-Sync/8.2.9")
                .build()
            val resp = client.newCall(req).execute()
            val rbody = resp.body?.string() ?: ""
            if (resp.isSuccessful) {
                android.util.Log.i("DevOAuth", "${ds.displayName}上传OK: $rbody")
                true
            } else {
                android.util.Log.w("DevOAuth", "${ds.displayName}上传失败 ${resp.code}: $rbody")
                false
            }
        } catch (e: Exception) {
            android.util.Log.w("DevOAuth", "上传异常: ${e.message}")
            false
        }
    }

    private fun parseIsoTime(s: String): Long {
        return try {
            val fmt = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US)
            fmt.parse(s)?.time ?: 0L
        } catch (e: Exception) { 0L }
    }
}

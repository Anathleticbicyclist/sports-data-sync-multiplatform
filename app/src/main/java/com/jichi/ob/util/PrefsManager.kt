package com.jichi.ob.util

import android.content.Context
import android.content.SharedPreferences
import android.util.Log
import com.jichi.ob.model.DataSource
import org.json.JSONArray
import org.json.JSONObject
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * 本地存储：六平台凭证 + 同步记忆 + 设置（v6.1.1）
 */
class PrefsManager(context: Context) {

    companion object {
        private const val TAG = "PrefsManager"
        private const val PREFS_NAME = "jichi_ob"
        private const val KEY_SYNCED_IDS = "synced_ids"
        private const val KEY_LAST_SOURCE = "last_source"
        private const val KEY_LAST_TARGET = "last_target"
        private const val KEY_LAST_TARGETS = "last_targets"
        private const val KEY_LAST_SOURCE_TAGS = "last_source_tags"
        private const val KEY_TASK_MODE_MULTI = "task_mode_multi"
        private const val KEY_AUTO_SYNC = "auto_sync"
        private const val KEY_AUTO_INTERVAL = "auto_interval"
        private const val KEY_LAST_AUTO_SYNC_TIME = "last_auto_sync_time"
        private const val KEY_LAST_AUTO_SYNC_RESULT = "last_auto_sync_result"
        private const val KEY_LAST_DETECTED_DATE = "last_detected_date"
        private const val KEY_GCJ02_CONVERT = "gcj02_convert"
        private const val KEY_GARMIN_WELLNESS = "garmin_wellness_sync"
        private const val KEY_SAVE_DIR = "save_dir"
        private const val KEY_FORCE_RETRANSMIT = "force_retransmit"
        private const val KEY_SYNC_COUNT = "sync_count"
        private const val KEY_SKIP_COUNT = "skip_count"
        private const val KEY_PERSIST_LOG = "persist_log"
        private const val KEY_STAT_OK = "stat_ok"
        private const val KEY_STAT_SKIP = "stat_skip"
        private const val KEY_STAT_FAIL = "stat_fail"
        private const val KEY_TASKS = "sync_tasks_v1"
        private const val KEY_DL_CONCURRENCY = "dl_concurrency"
        private const val KEY_UL_CONCURRENCY = "ul_concurrency"
        // v8.2.3: 会话内自动检查登录态开关（默认开；关闭后仅手动点「检测」）
        private const val KEY_AUTO_CHECK = "auto_check_login"
        private const val MAX_LOG_LINES = 400
    }

    private val prefs: SharedPreferences =
        context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)

    // ===== iGPSPORT: Bearer token =====
    fun saveIgpsportToken(token: String) {
        Log.d(TAG, "saveIgpsportToken: ${token.length}")
        prefs.edit().putString("igpsport_token", token).apply()
    }
    fun getIgpsportToken(): String? = prefs.getString("igpsport_token", null)
    fun isIgpsportLoggedIn(): Boolean = !getIgpsportToken().isNullOrEmpty()

    // ===== 行者: sessionid cookie =====
    fun saveXingzheSessionId(sid: String) {
        Log.d(TAG, "saveXingzheSessionId: ${sid.length}")
        prefs.edit().putString("xingzhe_session_id", sid).apply()
    }
    fun getXingzheSessionId(): String? = prefs.getString("xingzhe_session_id", null)
    fun saveXingzheCsrf(csrf: String) { prefs.edit().putString("xingzhe_csrf", csrf).apply() }
    fun getXingzheCsrf(): String? = prefs.getString("xingzhe_csrf", null)
    fun isXingzheLoggedIn(): Boolean = !getXingzheSessionId().isNullOrEmpty()

    // ===== 迈金: OTM token (JWT) =====
    fun saveMageneToken(token: String) {
        Log.d(TAG, "saveMageneToken: ${token.length}")
        prefs.edit().putString("magene_token", token).apply()
    }
    fun getMageneToken(): String? = prefs.getString("magene_token", null)
    fun saveMageneRefreshToken(token: String) {
        prefs.edit().putString("magene_refresh_token", token).apply()
    }
    fun getMageneRefreshToken(): String? = prefs.getString("magene_refresh_token", null)
    fun isMageneLoggedIn(): Boolean = !getMageneToken().isNullOrEmpty()

    // ===== 黑鸟单车: cookie =====
    fun saveBlackbirdCookie(cookie: String) {
        Log.d(TAG, "saveBlackbirdCookie: ${cookie.length}")
        prefs.edit().putString("blackbird_cookie", cookie).apply()
    }
    fun getBlackbirdCookie(): String? = prefs.getString("blackbird_cookie", null)
    fun isBlackbirdLoggedIn(): Boolean = !getBlackbirdCookie().isNullOrEmpty()

    // ===== 百锐腾: Meteor token + userId + cookie（v7.8.0 保留，下载开发中）=====
    fun saveBrytonCookie(cookie: String) {
        Log.d(TAG, "saveBrytonCookie: ${cookie.length}")
        prefs.edit().putString("bryton_cookie", cookie).apply()
    }
    fun getBrytonCookie(): String? = prefs.getString("bryton_cookie", null)
    fun saveBrytonToken(token: String) {
        Log.d(TAG, "saveBrytonToken: ${token.length}")
        prefs.edit().putString("bryton_token", token).apply()
    }
    fun getBrytonToken(): String? = prefs.getString("bryton_token", null)
    fun saveBrytonUserId(userId: String) {
        prefs.edit().putString("bryton_user_id", userId).apply()
    }
    fun getBrytonUserId(): String? = prefs.getString("bryton_user_id", null)
    fun isBrytonLoggedIn(): Boolean = !getBrytonToken().isNullOrEmpty() || !getBrytonCookie().isNullOrEmpty()

    // ===== 捷安特: user_token（v7.8.0 新增，纯API账号密码登录，仅上传）=====
    fun saveGiantToken(token: String) {
        Log.d(TAG, "saveGiantToken: ${token.length}")
        prefs.edit().putString("giant_token", token).apply()
    }
    fun getGiantToken(): String? = prefs.getString("giant_token", null)
    fun isGiantLoggedIn(): Boolean = !getGiantToken().isNullOrEmpty()
    fun saveGiantAccount(account: String) = prefs.edit().putString("giant_account", account).apply()
    fun getGiantAccount(): String? = prefs.getString("giant_account", null)

    // ===== Intervals.icu: API Key（v7.8.5 新增，仅上传）=====
    fun saveIntervalsIcuKey(key: String) {
        Log.d(TAG, "saveIntervalsIcuKey: ${key.length}")
        prefs.edit().putString("intervals_icu_key", key).apply()
    }
    fun getIntervalsIcuKey(): String? = prefs.getString("intervals_icu_key", null)
    fun isIntervalsIcuLoggedIn(): Boolean = !getIntervalsIcuKey().isNullOrEmpty()

    // ===== Outbase: sessionId + 网关cookie =====
    fun saveOutbaseSessionId(sid: String) {
        Log.d(TAG, "saveOutbaseSessionId: ${sid.length}")
        prefs.edit().putString("outbase_session_id", sid).apply()
    }
    fun getOutbaseSessionId(): String? = prefs.getString("outbase_session_id", null)
    fun saveGatewayCookies(cookies: String) {
        prefs.edit().putString("gateway_cookies", cookies).apply()
    }
    fun getGatewayCookies(): String? = prefs.getString("gateway_cookies", null)
    fun isOutbaseLoggedIn(): Boolean = !getOutbaseSessionId().isNullOrEmpty()

    // ===== v8.2.9: 两步路（WebView cookie） =====
    fun saveTwoBuluCookie(cookie: String) {
        Log.d(TAG, "saveTwoBuluCookie: ${cookie.length}")
        prefs.edit().putString("twobulu_cookie", cookie).apply()
    }
    fun getTwoBuluCookie(): String? = prefs.getString("twobulu_cookie", null)
    fun isTwoBuluLoggedIn(): Boolean = !getTwoBuluCookie().isNullOrEmpty()
    fun logoutTwoBulu() { saveTwoBuluCookie("") }

    // ===== v8.2.9: 开发者自填 OAuth 实验室平台（Strava/Polar/Fitbit/Withings/TrainingPeaks）=====
    fun labTokenKey(ds: com.jichi.ob.model.DataSource) = "lab_token_${ds.shortName}"
    fun labRefreshKey(ds: com.jichi.ob.model.DataSource) = "lab_refresh_${ds.shortName}"
    fun labClientIdKey(ds: com.jichi.ob.model.DataSource) = "lab_client_id_${ds.shortName}"
    fun labClientSecretKey(ds: com.jichi.ob.model.DataSource) = "lab_client_secret_${ds.shortName}"
    fun saveLabToken(ds: com.jichi.ob.model.DataSource, token: String, refresh: String = "") {
        Log.d(TAG, "saveLabToken ${ds.shortName}: ${token.length}")
        prefs.edit().putString(labTokenKey(ds), token).putString(labRefreshKey(ds), refresh).apply()
    }
    fun getLabToken(ds: com.jichi.ob.model.DataSource): String? = prefs.getString(labTokenKey(ds), null)
    fun getLabRefresh(ds: com.jichi.ob.model.DataSource): String? = prefs.getString(labRefreshKey(ds), null)
    fun saveLabClientId(ds: com.jichi.ob.model.DataSource, v: String) { prefs.edit().putString(labClientIdKey(ds), v).apply() }
    fun saveLabClientSecret(ds: com.jichi.ob.model.DataSource, v: String) { prefs.edit().putString(labClientSecretKey(ds), v).apply() }
    fun getLabClientId(ds: com.jichi.ob.model.DataSource): String? = prefs.getString(labClientIdKey(ds), null)
    fun getLabClientSecret(ds: com.jichi.ob.model.DataSource): String? = prefs.getString(labClientSecretKey(ds), null)
    fun isLabOAuthLoggedIn(ds: com.jichi.ob.model.DataSource): Boolean = !getLabToken(ds).isNullOrEmpty()
    fun clearLabOAuth(ds: com.jichi.ob.model.DataSource) {
        val e = prefs.edit()
        e.remove(labTokenKey(ds)); e.remove(labRefreshKey(ds))
        e.remove("username_${ds.shortName}")
        e.apply()
    }

    // ===== v6.5.0 新增：佳明(COM/CN) OAuth2 token + cookie =====
    fun saveGarminComToken(t: String) { prefs.edit().putString("garmin_com_token", t).apply() }
    fun getGarminComToken(): String? = prefs.getString("garmin_com_token", null)
    fun saveGarminComCookie(c: String) { prefs.edit().putString("garmin_com_cookie", c).apply() }
    fun getGarminComCookie(): String? = prefs.getString("garmin_com_cookie", null)
    fun isGarminComLoggedIn(): Boolean = !getGarminComToken().isNullOrEmpty()
    fun saveGarminCnToken(t: String) { prefs.edit().putString("garmin_cn_token", t).apply() }
    fun getGarminCnToken(): String? = prefs.getString("garmin_cn_token", null)
    fun saveGarminCnCookie(c: String) { prefs.edit().putString("garmin_cn_cookie", c).apply() }
    fun getGarminCnCookie(): String? = prefs.getString("garmin_cn_cookie", null)
    fun isGarminCnLoggedIn(): Boolean = !getGarminCnToken().isNullOrEmpty()

    // ===== 高驰 中国区(region 2, teamcnapi.coros.com): accessToken + regionId + cookie =====
    fun saveCorosCnToken(t: String) { prefs.edit().putString("coros_cn_token", t).apply() }
    fun getCorosCnToken(): String? = prefs.getString("coros_cn_token", null)
    fun saveCorosCnRegion(r: String) { prefs.edit().putString("coros_cn_region", r).apply() }
    fun getCorosCnRegion(): String = prefs.getString("coros_cn_region", "2") ?: "2"
    fun saveCorosCnCookie(c: String) { prefs.edit().putString("coros_cn_cookie", c).apply() }
    fun getCorosCnCookie(): String? = prefs.getString("coros_cn_cookie", null)
    fun isCorosCnLoggedIn(): Boolean = !getCorosCnToken().isNullOrEmpty()

    // ===== 高驰 国际/欧洲区(region 1/3, teamapi/teameuapi.coros.com) =====
    fun saveCorosIntToken(t: String) { prefs.edit().putString("coros_int_token", t).apply() }
    fun getCorosIntToken(): String? = prefs.getString("coros_int_token", null)
    fun saveCorosIntRegion(r: String) { prefs.edit().putString("coros_int_region", r).apply() }
    fun getCorosIntRegion(): String = prefs.getString("coros_int_region", "1") ?: "1"
    fun saveCorosIntCookie(c: String) { prefs.edit().putString("coros_int_cookie", c).apply() }
    fun getCorosIntCookie(): String? = prefs.getString("coros_int_cookie", null)
    fun isCorosIntLoggedIn(): Boolean = !getCorosIntToken().isNullOrEmpty()

    // ===== Wahoo: OAuth2 access/refresh token（需开发者app client_id/secret）=====
    fun saveWahooToken(t: String) { prefs.edit().putString("wahoo_token", t).apply() }
    fun getWahooToken(): String? = prefs.getString("wahoo_token", null)
    fun saveWahooRefresh(r: String) { prefs.edit().putString("wahoo_refresh", r).apply() }
    fun getWahooRefresh(): String? = prefs.getString("wahoo_refresh", null)
    fun saveWahooClientId(c: String) { prefs.edit().putString("wahoo_client_id", c).apply() }
    fun getWahooClientId(): String? = prefs.getString("wahoo_client_id", null)
    fun saveWahooClientSecret(c: String) { prefs.edit().putString("wahoo_client_secret", c).apply() }
    fun getWahooClientSecret(): String? = prefs.getString("wahoo_client_secret", null)
    fun saveWahooEmail(e: String) { prefs.edit().putString("wahoo_email", e).apply() }
    fun getWahooEmail(): String? = prefs.getString("wahoo_email", null)
    fun isWahooLoggedIn(): Boolean {
        // v7.3.0: 如果内置凭证已配置，只检查token即可（不需要用户手动配置Client ID）
        if (com.jichi.ob.api.WahooApi.isBuiltinConfigured()) {
            return !getWahooToken().isNullOrEmpty()
        }
        return !getWahooToken().isNullOrEmpty() && !getWahooClientId().isNullOrEmpty()
    }

    // ===== MyWhoosh: 纯API token（v7.8.4 新增，仅下载源）=====
    fun saveMywhooshToken(t: String) { prefs.edit().putString("mywhoosh_token", t).apply() }
    fun getMywhooshToken(): String? = prefs.getString("mywhoosh_token", null)
    fun saveMywhooshWhooshId(id: String) { prefs.edit().putString("mywhoosh_whoosh_id", id).apply() }
    fun getMywhooshWhooshId(): String? = prefs.getString("mywhoosh_whoosh_id", null)
    fun saveMywhooshRefreshToken(r: String) { prefs.edit().putString("mywhoosh_refresh", r).apply() }
    fun getMywhooshRefreshToken(): String? = prefs.getString("mywhoosh_refresh", null)
    fun saveMywhooshAccount(a: String) { prefs.edit().putString("mywhoosh_account", a).apply() }
    fun getMywhooshAccount(): String? = prefs.getString("mywhoosh_account", null)
    fun isMywhooshLoggedIn(): Boolean = !getMywhooshToken().isNullOrEmpty()

    // ===== Zwift: OAuth token（v7.8.4 新增，仅下载源）=====
    fun saveZwiftToken(t: String) { prefs.edit().putString("zwift_token", t).apply() }
    fun getZwiftToken(): String? = prefs.getString("zwift_token", null)
    fun saveZwiftRefreshToken(r: String) { prefs.edit().putString("zwift_refresh", r).apply() }
    fun getZwiftRefreshToken(): String? = prefs.getString("zwift_refresh", null)
    fun saveZwiftPlayerId(id: String) { prefs.edit().putString("zwift_player_id", id).apply() }
    fun getZwiftPlayerId(): String? = prefs.getString("zwift_player_id", null)
    fun saveZwiftAccount(a: String) { prefs.edit().putString("zwift_account", a).apply() }
    fun getZwiftAccount(): String? = prefs.getString("zwift_account", null)
    fun isZwiftLoggedIn(): Boolean = !getZwiftToken().isNullOrEmpty()

    // ===== Keep: 纯API token（v7.9.2 新增，仅下载源）=====
    fun saveKeepToken(t: String) { prefs.edit().putString("keep_token", t).apply() }
    fun getKeepToken(): String? = prefs.getString("keep_token", null)
    fun saveKeepAccount(a: String) { prefs.edit().putString("keep_account", a).apply() }
    fun getKeepAccount(): String? = prefs.getString("keep_account", null)
    fun isKeepLoggedIn(): Boolean = !getKeepToken().isNullOrEmpty()

    // ===== 咕咚 Codoon: 纯API token（v7.9.5 新增，仅下载源）=====
    fun saveCodoonToken(t: String) { prefs.edit().putString("codoon_token", t).apply() }
    fun getCodoonToken(): String? = prefs.getString("codoon_token", null)
    fun saveCodoonAccount(a: String) { prefs.edit().putString("codoon_account", a).apply() }
    fun getCodoonAccount(): String? = prefs.getString("codoon_account", null)
    fun saveCodoonUserId(uid: String) { prefs.edit().putString("codoon_user_id", uid).apply() }
    fun getCodoonUserId(): String? = prefs.getString("codoon_user_id", null)
    /** v8.1.1: 保存咕咚密码——token 失效后启动时用账号密码自动重登（咕咚无 refresh 端点） */
    fun saveCodoonPassword(p: String) { prefs.edit().putString("codoon_password", p).apply() }
    fun getCodoonPassword(): String? = prefs.getString("codoon_password", null)
    fun isCodoonLoggedIn(): Boolean = !getCodoonToken().isNullOrEmpty()
    /** v7.9.5: 咕咚轨迹坐标转换开关（默认关=WGS-84；若实测偏移可开启 GCJ-02→WGS-84） */
    fun isCodoonGcjConvertEnabled(): Boolean = prefs.getBoolean("codoon_gcj_convert", false)
    fun setCodoonGcjConvertEnabled(b: Boolean) = prefs.edit().putBoolean("codoon_gcj_convert", b).apply()

    // ===== Zepp 华米: 纯API app_token（v7.9.5 新增，仅下载源）=====
    fun saveZeppToken(t: String) { prefs.edit().putString("zepp_token", t).apply() }
    fun getZeppToken(): String? = prefs.getString("zepp_token", null)
    fun saveZeppAccount(a: String) { prefs.edit().putString("zepp_account", a).apply() }
    fun getZeppAccount(): String? = prefs.getString("zepp_account", null)
    fun saveZeppUserId(uid: String) { prefs.edit().putString("zepp_user_id", uid).apply() }
    fun getZeppUserId(): String? = prefs.getString("zepp_user_id", null)
    fun isZeppLoggedIn(): Boolean = !getZeppToken().isNullOrEmpty()
    /** v7.9.5: Zepp 轨迹坐标转换开关（默认关=WGS-84；若实测偏移可开启 GCJ-02→WGS-84） */
    fun isZeppGcjConvertEnabled(): Boolean = prefs.getBoolean("zepp_gcj_convert", false)
    fun setZeppGcjConvertEnabled(b: Boolean) = prefs.edit().putBoolean("zepp_gcj_convert", b).apply()

    // ===== Komoot: 纯API token（v7.9.6 新增，双向）=====
    fun saveKomootToken(t: String) { prefs.edit().putString("komoot_token", t).apply() }
    fun getKomootToken(): String? = prefs.getString("komoot_token", null)
    fun saveKomootAccount(a: String) { prefs.edit().putString("komoot_account", a).apply() }
    fun getKomootAccount(): String? = prefs.getString("komoot_account", null)
    fun isKomootLoggedIn(): Boolean = !getKomootToken().isNullOrEmpty()

    // ===== Suunto 松拓: OAuth2（v7.9.6 新增，双向；凭证三件套）=====
    fun saveSuuntoToken(t: String) { prefs.edit().putString("suunto_token", t).apply() }
    fun getSuuntoToken(): String? = prefs.getString("suunto_token", null)
    fun saveSuuntoRefresh(r: String) { prefs.edit().putString("suunto_refresh", r).apply() }
    fun getSuuntoRefresh(): String? = prefs.getString("suunto_refresh", null)
    fun saveSuuntoSubscriptionKey(k: String) { prefs.edit().putString("suunto_subscription_key", k).apply() }
    fun getSuuntoSubscriptionKey(): String? = prefs.getString("suunto_subscription_key", null)
    fun saveSuuntoClientId(id: String) { prefs.edit().putString("suunto_client_id", id).apply() }
    fun getSuuntoClientId(): String? = prefs.getString("suunto_client_id", null)
    fun saveSuuntoClientSecret(s: String) { prefs.edit().putString("suunto_client_secret", s).apply() }
    fun getSuuntoClientSecret(): String? = prefs.getString("suunto_client_secret", null)
    fun isSuuntoLoggedIn(): Boolean = !getSuuntoToken().isNullOrEmpty()

    // ===== 通用：按平台获取凭证 =====
    fun getCredential(ds: DataSource): String? = when (ds) {
        DataSource.IGPSPORT -> getIgpsportToken()
        DataSource.XINGZHE -> getXingzheSessionId()
        DataSource.MAGENE -> getMageneToken()
        DataSource.BLACKBIRD -> getBlackbirdCookie()
        DataSource.BRYTON -> getBrytonCookie()
        DataSource.GIANT -> getGiantToken()
        DataSource.OUTBASE -> getOutbaseSessionId()
        DataSource.GARMIN_COM -> getGarminComToken()
        DataSource.GARMIN_CN -> getGarminCnToken()
        DataSource.COROS_CN -> getCorosCnToken()
        DataSource.COROS_INT -> getCorosIntToken()
        DataSource.WAHOO -> getWahooToken()
        DataSource.MYWHOOSH -> getMywhooshToken()
        DataSource.ZWIFT -> getZwiftToken()
        DataSource.INTERVALS_ICU -> getIntervalsIcuKey()
        DataSource.KEEP -> getKeepToken()
        DataSource.CODOON -> getCodoonToken()
        DataSource.ZEPP -> getZeppToken()
        DataSource.KOMOT -> getKomootToken()
        DataSource.SUUNTO -> getSuuntoToken()
        DataSource.TWO_BULU -> getTwoBuluCookie()
        DataSource.STRAVA, DataSource.POLAR, DataSource.FITBIT, DataSource.WITHINGS, DataSource.TRAININGPEAKS -> getLabToken(ds)
    }
    /** v7.5.9: 保存平台凭证（启动登录检测刷新后更新用） */
    fun saveCredential(ds: DataSource, cred: String) {
        when (ds) {
            DataSource.IGPSPORT -> saveIgpsportToken(cred)
            DataSource.XINGZHE -> saveXingzheSessionId(cred)
            DataSource.MAGENE -> saveMageneToken(cred)
            DataSource.BLACKBIRD -> saveBlackbirdCookie(cred)
            DataSource.BRYTON -> saveBrytonCookie(cred)
            DataSource.GIANT -> saveGiantToken(cred)
            DataSource.OUTBASE -> saveOutbaseSessionId(cred)
            DataSource.GARMIN_COM -> saveGarminComToken(cred)
            DataSource.GARMIN_CN -> saveGarminCnToken(cred)
            DataSource.COROS_CN -> saveCorosCnToken(cred)
            DataSource.COROS_INT -> saveCorosIntToken(cred)
            DataSource.WAHOO -> saveWahooToken(cred)
            DataSource.MYWHOOSH -> saveMywhooshToken(cred)
            DataSource.ZWIFT -> saveZwiftToken(cred)
            DataSource.INTERVALS_ICU -> saveIntervalsIcuKey(cred)
            DataSource.KEEP -> saveKeepToken(cred)
            DataSource.CODOON -> saveCodoonToken(cred)
            DataSource.ZEPP -> saveZeppToken(cred)
            DataSource.KOMOT -> saveKomootToken(cred)
            DataSource.SUUNTO -> saveSuuntoToken(cred)
            DataSource.TWO_BULU -> saveTwoBuluCookie(cred)
            DataSource.STRAVA, DataSource.POLAR, DataSource.FITBIT, DataSource.WITHINGS, DataSource.TRAININGPEAKS -> saveLabToken(ds, cred)
        }
    }
    /** v7.5.9: 清除平台凭证（启动登录检测判定失效时用，UI显示未登录） */
    fun clearCredential(ds: DataSource) {
        val e = prefs.edit()
        when (ds) {
            DataSource.IGPSPORT -> e.remove("igpsport_token")
            DataSource.XINGZHE -> e.remove("xingzhe_session_id")
            DataSource.MAGENE -> { e.remove("magene_token"); e.remove("magene_refresh_token") }
            DataSource.BLACKBIRD -> e.remove("blackbird_cookie")
            DataSource.BRYTON -> { e.remove("bryton_cookie"); e.remove("bryton_token"); e.remove("bryton_user_id") }
            DataSource.GIANT -> e.remove("giant_token")
            DataSource.OUTBASE -> { e.remove("outbase_session_id"); e.remove("gateway_cookies") }
            DataSource.GARMIN_COM -> { e.remove("garmin_com_token"); e.remove("garmin_com_cookie") }
            DataSource.GARMIN_CN -> { e.remove("garmin_cn_token"); e.remove("garmin_cn_cookie") }
            DataSource.COROS_CN -> { e.remove("coros_cn_token"); e.remove("coros_cn_cookie"); e.remove("coros_cn_region") }
            DataSource.COROS_INT -> { e.remove("coros_int_token"); e.remove("coros_int_cookie"); e.remove("coros_int_region") }
            DataSource.WAHOO -> { e.remove("wahoo_token"); e.remove("wahoo_refresh"); e.remove("wahoo_email") }
            DataSource.MYWHOOSH -> { e.remove("mywhoosh_token"); e.remove("mywhoosh_whoosh_id"); e.remove("mywhoosh_refresh") }
            DataSource.ZWIFT -> { e.remove("zwift_token"); e.remove("zwift_refresh"); e.remove("zwift_player_id") }
            DataSource.INTERVALS_ICU -> e.remove("intervals_icu_key")
            DataSource.KEEP -> e.remove("keep_token")
            DataSource.CODOON -> { e.remove("codoon_token"); e.remove("codoon_account"); e.remove("codoon_user_id") }
            DataSource.ZEPP -> { e.remove("zepp_token"); e.remove("zepp_account"); e.remove("zepp_user_id") }
            DataSource.KOMOT -> { e.remove("komoot_token"); e.remove("komoot_account") }
            DataSource.SUUNTO -> { e.remove("suunto_token"); e.remove("suunto_refresh"); e.remove("suunto_subscription_key"); e.remove("suunto_client_id"); e.remove("suunto_client_secret") }
            DataSource.TWO_BULU -> { e.remove("twobulu_cookie") }
            DataSource.STRAVA, DataSource.POLAR, DataSource.FITBIT, DataSource.WITHINGS, DataSource.TRAININGPEAKS -> { clearLabOAuth(ds) }
        }
        e.remove("username_${ds.shortName}")
        e.apply()
    }
    fun isLoggedIn(ds: DataSource): Boolean = when (ds) {
        DataSource.IGPSPORT -> isIgpsportLoggedIn()
        DataSource.XINGZHE -> isXingzheLoggedIn()
        DataSource.MAGENE -> isMageneLoggedIn()
        DataSource.BLACKBIRD -> isBlackbirdLoggedIn()
        DataSource.BRYTON -> isBrytonLoggedIn()
        DataSource.GIANT -> isGiantLoggedIn()
        DataSource.OUTBASE -> isOutbaseLoggedIn()
        DataSource.GARMIN_COM -> isGarminComLoggedIn()
        DataSource.GARMIN_CN -> isGarminCnLoggedIn()
        DataSource.COROS_CN -> isCorosCnLoggedIn()
        DataSource.COROS_INT -> isCorosIntLoggedIn()
        DataSource.WAHOO -> isWahooLoggedIn()
        DataSource.MYWHOOSH -> isMywhooshLoggedIn()
        DataSource.ZWIFT -> isZwiftLoggedIn()
        DataSource.INTERVALS_ICU -> isIntervalsIcuLoggedIn()
        DataSource.KEEP -> isKeepLoggedIn()
        DataSource.CODOON -> isCodoonLoggedIn()
        DataSource.ZEPP -> isZeppLoggedIn()
        DataSource.KOMOT -> isKomootLoggedIn()
        DataSource.SUUNTO -> isSuuntoLoggedIn()
            DataSource.TWO_BULU -> isTwoBuluLoggedIn()
            DataSource.STRAVA, DataSource.POLAR, DataSource.FITBIT, DataSource.WITHINGS, DataSource.TRAININGPEAKS -> isLabOAuthLoggedIn(ds)
    }

    // ===== 用户名存储 =====
    fun saveUsername(ds: DataSource, name: String) {
        prefs.edit().putString("username_${ds.shortName}", name).apply()
    }
    fun getUsername(ds: DataSource): String? = prefs.getString("username_${ds.shortName}", null)

    // ===== 同步记忆（已同步记录ID）=====
    // 内存缓存，避免每次全量解析JSONArray导致卡顿
    private var syncedCache: MutableSet<String>? = null
    private fun getSyncedIdsInternal(): MutableSet<String> {
        syncedCache?.let { return it }
        val json = prefs.getString(KEY_SYNCED_IDS, null) ?: run {
            syncedCache = mutableSetOf()
            return syncedCache!!
        }
        syncedCache = try {
            val arr = JSONArray(json)
            val set = mutableSetOf<String>()
            for (i in 0 until arr.length()) set.add(arr.getString(i))
            set
        } catch (e: Exception) { mutableSetOf() }
        return syncedCache!!
    }
    fun getSyncedIds(): MutableSet<String> = getSyncedIdsInternal()
    fun addSyncedId(id: String) {
        val set = getSyncedIdsInternal()
        if (set.size >= 10000) {
            val iter = set.iterator()
            if (iter.hasNext()) { iter.next(); iter.remove() }
        }
        set.add(id)
        val arr = JSONArray(set.toList())
        prefs.edit().putString(KEY_SYNCED_IDS, arr.toString()).apply()
    }
    fun isSynced(id: String): Boolean = getSyncedIdsInternal().contains(id)
    fun getSyncedCount(): Int = getSyncedIdsInternal().size
    /** 清除全部上传记忆（同步记忆），用于频繁测试时重新全量同步 */
    fun clearSyncedIds() {
        syncedCache?.clear()
        syncedCache = mutableSetOf()
        prefs.edit().remove(KEY_SYNCED_IDS).apply()
    }

    // ===== v8.3.5: 增量游标（按源平台最后成功同步时间，失败不推进）=====
    fun getSyncCursor(sourceShort: String): Long = prefs.getLong("sync_cursor_$sourceShort", 0L)
    fun setSyncCursor(sourceShort: String, startTimeMs: Long) {
        prefs.edit().putLong("sync_cursor_$sourceShort", startTimeMs).apply()
    }

    // ===== v7.7.8: 累计统计（成功/跳过/失败，不清除记忆一直累加）=====
    private fun statKey(type: String): String = when (type) {
        "ok" -> KEY_STAT_OK
        "skip" -> KEY_STAT_SKIP
        else -> KEY_STAT_FAIL
    }
    fun addStat(type: String, delta: Int = 1) {
        val key = statKey(type)
        prefs.edit().putInt(key, prefs.getInt(key, 0) + delta).apply()
    }
    fun getStatOk(): Int = prefs.getInt(KEY_STAT_OK, 0)
    fun getStatSkip(): Int = prefs.getInt(KEY_STAT_SKIP, 0)
    fun getStatFail(): Int = prefs.getInt(KEY_STAT_FAIL, 0)
    fun resetStats() {
        prefs.edit().putInt(KEY_STAT_OK, 0).putInt(KEY_STAT_SKIP, 0).putInt(KEY_STAT_FAIL, 0).apply()
    }

    // ===== 设置记忆 =====
    fun getLastSource(): String = prefs.getString(KEY_LAST_SOURCE, DataSource.XINGZHE.shortName) ?: DataSource.XINGZHE.shortName
    fun setLastSource(s: String) = prefs.edit().putString(KEY_LAST_SOURCE, s).apply()
    fun getLastTarget(): String = prefs.getString(KEY_LAST_TARGET, DataSource.OUTBASE.shortName) ?: DataSource.OUTBASE.shortName
    /** v8.2.3.5: 原始目标记忆（无默认值，多对一恢复用——避免把 Outbase 误当用户选择） */
    fun getLastTargetRaw(): String = prefs.getString(KEY_LAST_TARGET, "") ?: ""
    fun setLastTarget(s: String) = prefs.edit().putString(KEY_LAST_TARGET, s).apply()
    // v7.6.7: 一对多同步 - 多个目标平台（逗号分隔），空时回退到旧单选
    fun getLastTargets(): List<String> {
        val raw = prefs.getString(KEY_LAST_TARGETS, "") ?: ""
        val list = raw.split(",").map { it.trim() }.filter { it.isNotEmpty() }
        return if (list.isNotEmpty()) list else {
            val single = getLastTarget()
            listOf(single).filter { it.isNotEmpty() }
        }
    }
    fun setLastTargets(targets: List<String>) {
        val s = targets.distinct().joinToString(",")
        prefs.edit().putString(KEY_LAST_TARGETS, s).apply()
        // 同步旧的单选字段（第一个目标），保持兼容
        if (targets.isNotEmpty()) setLastTarget(targets.first())
    }
    // v8.2.3.5: 多对一模式（任务级）——多来源记忆 + 模式开关持久化
    fun getLastSourceTags(): List<String> {
        val raw = prefs.getString(KEY_LAST_SOURCE_TAGS, "") ?: ""
        return raw.split(",").map { it.trim() }.filter { it.isNotEmpty() }
    }
    fun setLastSourceTags(tags: List<String>) {
        prefs.edit().putString(KEY_LAST_SOURCE_TAGS, tags.distinct().joinToString(",")).apply()
    }
    fun getTaskModeMulti(): Boolean = prefs.getBoolean(KEY_TASK_MODE_MULTI, false)
    fun setTaskModeMulti(b: Boolean) = prefs.edit().putBoolean(KEY_TASK_MODE_MULTI, b).apply()
    fun isAutoSync(): Boolean = prefs.getBoolean(KEY_AUTO_SYNC, false)
    fun setAutoSync(b: Boolean) = prefs.edit().putBoolean(KEY_AUTO_SYNC, b).apply()
    fun getAutoInterval(): Int = prefs.getInt(KEY_AUTO_INTERVAL, 300) // 默认5分钟
    fun setAutoInterval(sec: Int) = prefs.edit().putInt(KEY_AUTO_INTERVAL, sec).apply()
    // v7.5.6: 最近一次自动同步的时间和结果（用于状态栏显示）
    fun getLastAutoSyncTime(): Long = prefs.getLong(KEY_LAST_AUTO_SYNC_TIME, 0)
    fun setLastAutoSyncTime(t: Long) = prefs.edit().putLong(KEY_LAST_AUTO_SYNC_TIME, t).apply()
    fun getLastAutoSyncResult(): String = prefs.getString(KEY_LAST_AUTO_SYNC_RESULT, "尚未同步") ?: "尚未同步"
    fun setLastAutoSyncResult(s: String) = prefs.edit().putString(KEY_LAST_AUTO_SYNC_RESULT, s).apply()
    // v7.5.6: 最近一次检测到的源平台最新活动日期
    fun getLastDetectedDate(): String = prefs.getString(KEY_LAST_DETECTED_DATE, "") ?: ""
    fun setLastDetectedDate(s: String) = prefs.edit().putString(KEY_LAST_DETECTED_DATE, s).apply()
    fun isGcj02Convert(): Boolean = prefs.getBoolean(KEY_GCJ02_CONVERT, false)
    fun setGcj02Convert(b: Boolean) = prefs.edit().putBoolean(KEY_GCJ02_CONVERT, b).apply()
    fun isGarminWellnessSync(): Boolean = prefs.getBoolean(KEY_GARMIN_WELLNESS, false)
    fun setGarminWellnessSync(b: Boolean) = prefs.edit().putBoolean(KEY_GARMIN_WELLNESS, b).apply()
    fun getSaveDir(): String = prefs.getString(KEY_SAVE_DIR, "") ?: ""
    fun setSaveDir(d: String) = prefs.edit().putString(KEY_SAVE_DIR, d).apply()
    // v7.6.8: 忽略记忆，强制重传（1对1时用户自选；1对多时强制开启）
    fun isForceRetransmit(): Boolean = prefs.getBoolean(KEY_FORCE_RETRANSMIT, false)
    fun setForceRetransmit(b: Boolean) = prefs.edit().putBoolean(KEY_FORCE_RETRANSMIT, b).apply()
    // v7.7.5: 同步数量/跳过条数记忆（重启后保留上次设置）
    fun getSyncCount(): Int = prefs.getInt(KEY_SYNC_COUNT, 20)
    fun setSyncCount(n: Int) = prefs.edit().putInt(KEY_SYNC_COUNT, n).apply()
    fun getSkipCount(): Int = prefs.getInt(KEY_SKIP_COUNT, 0)
    fun setSkipCount(n: Int) = prefs.edit().putInt(KEY_SKIP_COUNT, n).apply()

    // ===== v7.6.9: 持久化日志（自动同步/手动同步写入，App重开仍可见）=====
    fun appendPersistLog(msg: String) {
        try {
            val ts = SimpleDateFormat("MM-dd HH:mm:ss", Locale.getDefault()).format(Date())
            val cur = prefs.getString(KEY_PERSIST_LOG, "") ?: ""
            val lines = (cur + "\n" + "[$ts] $msg").split("\n").takeLast(MAX_LOG_LINES)
            prefs.edit().putString(KEY_PERSIST_LOG, lines.joinToString("\n")).apply()
        } catch (_: Exception) {}
    }
    fun getPersistLogs(): List<String> {
        val cur = prefs.getString(KEY_PERSIST_LOG, "") ?: ""
        return cur.split("\n").filter { it.isNotBlank() }
    }
    fun clearPersistLogs() {
        try { prefs.edit().remove(KEY_PERSIST_LOG).apply() } catch (_: Exception) {}
    }

    // ===== v8.2.2: 同步任务持久化（JSON数组）=====
    fun getTasks(): List<com.jichi.ob.model.SyncTask> {
        val json = prefs.getString(KEY_TASKS, null) ?: return emptyList()
        return try {
            val arr = JSONArray(json)
            (0 until arr.length()).mapNotNull { i ->
                try { com.jichi.ob.model.SyncTask.fromJson(arr.getJSONObject(i)) } catch (_: Exception) { null }
            }
        } catch (_: Exception) { emptyList() }
    }
    fun saveTasks(tasks: List<com.jichi.ob.model.SyncTask>) {
        try {
            val arr = JSONArray()
            tasks.forEach { arr.put(it.toJson()) }
            prefs.edit().putString(KEY_TASKS, arr.toString()).apply()
        } catch (_: Exception) {}
    }
    fun upsertTask(task: com.jichi.ob.model.SyncTask) {
        val tasks = getTasks().toMutableList()
        val idx = tasks.indexOfFirst { it.id == task.id }
        if (idx >= 0) tasks[idx] = task else tasks.add(0, task)
        saveTasks(tasks)
    }
    fun deleteTask(id: String) {
        saveTasks(getTasks().filter { it.id != id })
    }
    /** v8.2.2: 下载并发数（v8.2.6: 与上传并发拆分，默认改为1=串行最稳） */
    fun getDownloadConcurrency(): Int = prefs.getInt(KEY_DL_CONCURRENCY, 1)
    fun setDownloadConcurrency(n: Int) = prefs.edit().putInt(KEY_DL_CONCURRENCY, n).apply()

    /** v8.2.6: 上传并发数（目标间并行上传，默认1=串行最稳；与下载并发独立） */
    fun getUploadConcurrency(): Int = prefs.getInt(KEY_UL_CONCURRENCY, 1)
    fun setUploadConcurrency(n: Int) = prefs.edit().putInt(KEY_UL_CONCURRENCY, n).apply()

    /** v8.2.3: 会话内自动检查登录态开关（默认开） */
    fun isAutoCheckLogin(): Boolean = prefs.getBoolean(KEY_AUTO_CHECK, true)
    fun setAutoCheckLogin(b: Boolean) = prefs.edit().putBoolean(KEY_AUTO_CHECK, b).apply()

    fun clearAll() = prefs.edit().clear().apply()
}

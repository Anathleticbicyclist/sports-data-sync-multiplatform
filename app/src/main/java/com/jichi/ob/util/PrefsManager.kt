package com.jichi.ob.util

import android.content.Context
import android.content.SharedPreferences
import android.util.Log
import com.jichi.ob.model.DataSource
import org.json.JSONArray
import org.json.JSONObject

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
        private const val KEY_AUTO_SYNC = "auto_sync"
        private const val KEY_AUTO_INTERVAL = "auto_interval"
        private const val KEY_GCJ02_CONVERT = "gcj02_convert"
        private const val KEY_SAVE_DIR = "save_dir"
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

    // ===== 百锐腾: Meteor token + userId + cookie =====
    fun saveBrytonCookie(cookie: String) {
        Log.d(TAG, "saveBrytonCookie: ${cookie.length}")
        prefs.edit().putString("bryton_cookie", cookie).apply()
    }
    fun getBrytonCookie(): String? = prefs.getString("bryton_cookie", null)
    /** v6.2.4: 百锐腾是Meteor应用，登录态主要存localStorage(Meteor.loginToken/Meteor.userId)，cookie仅辅助 */
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

    // ===== 通用：按平台获取凭证 =====
    fun getCredential(ds: DataSource): String? = when (ds) {
        DataSource.IGPSPORT -> getIgpsportToken()
        DataSource.XINGZHE -> getXingzheSessionId()
        DataSource.MAGENE -> getMageneToken()
        DataSource.BLACKBIRD -> getBlackbirdCookie()
        DataSource.BRYTON -> getBrytonCookie()
        DataSource.OUTBASE -> getOutbaseSessionId()
        DataSource.GARMIN_COM -> getGarminComToken()
        DataSource.GARMIN_CN -> getGarminCnToken()
        DataSource.COROS_CN -> getCorosCnToken()
        DataSource.COROS_INT -> getCorosIntToken()
        DataSource.WAHOO -> getWahooToken()
    }
    fun isLoggedIn(ds: DataSource): Boolean = when (ds) {
        DataSource.IGPSPORT -> isIgpsportLoggedIn()
        DataSource.XINGZHE -> isXingzheLoggedIn()
        DataSource.MAGENE -> isMageneLoggedIn()
        DataSource.BLACKBIRD -> isBlackbirdLoggedIn()
        DataSource.BRYTON -> isBrytonLoggedIn()
        DataSource.OUTBASE -> isOutbaseLoggedIn()
        DataSource.GARMIN_COM -> isGarminComLoggedIn()
        DataSource.GARMIN_CN -> isGarminCnLoggedIn()
        DataSource.COROS_CN -> isCorosCnLoggedIn()
        DataSource.COROS_INT -> isCorosIntLoggedIn()
        DataSource.WAHOO -> isWahooLoggedIn()
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

    // ===== 设置记忆 =====
    fun getLastSource(): String = prefs.getString(KEY_LAST_SOURCE, DataSource.XINGZHE.shortName) ?: DataSource.XINGZHE.shortName
    fun setLastSource(s: String) = prefs.edit().putString(KEY_LAST_SOURCE, s).apply()
    fun getLastTarget(): String = prefs.getString(KEY_LAST_TARGET, DataSource.OUTBASE.shortName) ?: DataSource.OUTBASE.shortName
    fun setLastTarget(s: String) = prefs.edit().putString(KEY_LAST_TARGET, s).apply()
    fun isAutoSync(): Boolean = prefs.getBoolean(KEY_AUTO_SYNC, false)
    fun setAutoSync(b: Boolean) = prefs.edit().putBoolean(KEY_AUTO_SYNC, b).apply()
    fun getAutoInterval(): Int = prefs.getInt(KEY_AUTO_INTERVAL, 300) // 默认5分钟
    fun setAutoInterval(sec: Int) = prefs.edit().putInt(KEY_AUTO_INTERVAL, sec).apply()
    fun isGcj02Convert(): Boolean = prefs.getBoolean(KEY_GCJ02_CONVERT, false)
    fun setGcj02Convert(b: Boolean) = prefs.edit().putBoolean(KEY_GCJ02_CONVERT, b).apply()
    fun getSaveDir(): String = prefs.getString(KEY_SAVE_DIR, "") ?: ""
    fun setSaveDir(d: String) = prefs.edit().putString(KEY_SAVE_DIR, d).apply()

    fun clearAll() = prefs.edit().clear().apply()
}

package com.jichi.ob.api

import android.content.Context
import com.jichi.ob.model.DataSource

/**
 * 佳明 429 风控冷却（24 小时）——从 GarminApi companion 抽出（verbatim 搬移，仅改必要前缀/可见性）。
 *
 * 关键不变量（勿改）：
 * - SharedPreferences 文件名与 key 生成规则（cooldownKey）与原来完全一致，
 *   已写入的冷却缓存继续有效；改 key 会导致旧冷却丢失、用户被重复限流。
 * - 对外入口仍是 GarminApi companion 的同名委托方法（isCooldown / writeCooldownFor /
 *   clearCooldownFor / clearAllCooldownFor / cooldownRemainMinutes / cooldownRemainAnyMinutes /
 *   isAllChannelsCooldown / setAppContext），调用方无需改动。
 * - loginMobile 仍直接用 GarminCooldown.SSO_CHANNELS_COM / SSO_CHANNELS_CN 轮换通道；
 *   loginMobile / loginOAuth1 / refreshDiToken 内部仍经 GarminApi companion 的私有
 *   writeCooldown / isCooldown 委托写入或查询冷却。
 * - 日志仍走 GarminApi.addDebugLog（debug 开关与日志列表仍归 GarminApi companion 管）。
 */
internal object GarminCooldown {
    // ===== v7.9.0: 佳明 429 风控冷却（24小时）=====
    // v7.9.1: 冷却按【clientId × email】组合维度——
    //   ① 换 clientId 登录不被拦（佳明限流实为 clientId×email 组合，换通道即可绕开"每天只能登一次"）
    //   ② 同一 clientId 下切换账号也不被拦（不同 email 互不影响）
    private const val COOLDOWN_MS = 24 * 60 * 60 * 1000L
    private const val PREFS_COOLDOWN = "garmin_cooldown"
    @Volatile private var appContext: Context? = null
    internal fun setAppContext(ctx: Context) { appContext = ctx.applicationContext }

    // 佳明 SSO 登录通道（clientId × serviceUrl）——实测多通道可绕开单通道429限流
    // 国际版：GCM_IOS_DARK(默认) / GCM_ANDROID_DARK / GCM_ANDROID_LIGHT / GarminConnect 均可登录
    internal data class SsoChannel(val clientId: String, val serviceUrl: String)
    internal val SSO_CHANNELS_COM = arrayOf(
        SsoChannel("GCM_IOS_DARK", "https://mobile.integration.garmin.com/gcm/ios"),
        SsoChannel("GCM_ANDROID_DARK", "https://mobile.integration.garmin.com/gcm/android"),
        SsoChannel("GCM_ANDROID_LIGHT", "https://mobile.integration.garmin.com/gcm/android"),
        SsoChannel("GarminConnect", "https://connect.garmin.com/modern/")
    )
    internal val SSO_CHANNELS_CN = arrayOf(
        SsoChannel("GCM_ANDROID_DARK", "https://mobile.integration.garmin.cn/gcm/android"),
        SsoChannel("GCM_IOS_DARK", "https://mobile.integration.garmin.cn/gcm/ios")
    )

    // 冷却key：clientId为空→区域维度；email为空→clientId维度；都有→clientId×email维度
    private fun cooldownKey(ds: DataSource, email: String?, clientId: String?) =
        if (!email.isNullOrBlank() && !clientId.isNullOrBlank()) {
            val tag = if (ds == DataSource.GARMIN_CN) "cn" else "com"
            "garmin_${tag}_cooldown_${clientId.hashCode()}_${email.hashCode()}"
        } else if (!clientId.isNullOrBlank()) {
            val tag = if (ds == DataSource.GARMIN_CN) "cn" else "com"
            "garmin_${tag}_cooldown_${clientId.hashCode()}"
        } else {
            if (ds == DataSource.GARMIN_CN) "garmin_cn_cooldown_until" else "garmin_com_cooldown_until"
        }
    private fun readCooldown(ds: DataSource, email: String?, clientId: String?): Long {
        val ctx = appContext ?: return 0
        return ctx.getSharedPreferences(PREFS_COOLDOWN, Context.MODE_PRIVATE).getLong(cooldownKey(ds, email, clientId), 0)
    }
    internal fun writeCooldown(ds: DataSource, email: String?, clientId: String?) {
        val ctx = appContext ?: return
        ctx.getSharedPreferences(PREFS_COOLDOWN, Context.MODE_PRIVATE)
            .edit().putLong(cooldownKey(ds, email, clientId), System.currentTimeMillis() + COOLDOWN_MS).apply()
    }
    /** 供外部写冷却（MainActivity中国区429路径用），按clientId×email记录。
     *  v8.2.1: 保留风控冷却（防封号），用户在"清除登录"时手动清缓存解除误拦截 */
    internal fun writeCooldownFor(ds: DataSource, email: String, clientId: String? = null) {
        writeCooldown(ds, email, clientId)
    }
    /** v8.1.9: 清除账号冷却缓存（登录成功后调用；覆盖安装保留的旧冷却缓存会导致"24小时后登录"误拦截，
     *  分身/新装无缓存可正常登录，说明服务端无硬限，本地缓存可安全清除） */
    internal fun clearCooldownFor(ds: DataSource, email: String) {
        try {
            val ctx = appContext ?: return
            val prefs = ctx.getSharedPreferences(PREFS_COOLDOWN, Context.MODE_PRIVATE)
            val ed = prefs.edit()
            ed.remove(cooldownKey(ds, null, null))            // 区域维度
            ed.remove(cooldownKey(ds, email, null))           // email维度
            ed.remove(cooldownKey(ds, email, "oauth1"))       // OAuth1通道
            SSO_CHANNELS_COM.forEach { ed.remove(cooldownKey(ds, email, it.clientId)) }
            SSO_CHANNELS_CN.forEach { ed.remove(cooldownKey(ds, email, it.clientId)) }
            ed.apply()
            GarminApi.addDebugLog("clearCooldownFor: 已清除账号[$email]冷却缓存")
        } catch (_: Exception) {}
    }
    /** v8.2.1: 手动清空该区域【全部】冷却缓存（不依赖登录态；未登录也能一键解除误拦截） */
    internal fun clearAllCooldownFor(ds: DataSource) {
        try {
            val ctx = appContext ?: return
            val prefs = ctx.getSharedPreferences(PREFS_COOLDOWN, Context.MODE_PRIVATE)
            val prefix = if (ds == DataSource.GARMIN_CN) "garmin_cn_" else "garmin_com_"
            val ed = prefs.edit()
            prefs.all.keys.filter { it.startsWith(prefix) }.forEach { ed.remove(it) }
            ed.apply()
            GarminApi.addDebugLog("clearAllCooldownFor: 已清空[${ds.shortName}]全部冷却缓存(${prefs.all.size} 键)")
        } catch (_: Exception) {}
    }
    /** 是否处于佳明429风控冷却期；email为空时回退区域维度，clientId为空时回退email维度 */
    internal fun isCooldown(ds: DataSource, email: String? = null, clientId: String? = null): Boolean =
        System.currentTimeMillis() < readCooldown(ds, email, clientId)
    /** 该账号在该区域【所有通道】是否都处于冷却（供UI提示：全冷却才提示，任一可用即放行） */
    internal fun isAllChannelsCooldown(ds: DataSource, email: String?): Boolean {
        val channels = if (ds == DataSource.GARMIN_CN) SSO_CHANNELS_CN else SSO_CHANNELS_COM
        return channels.all { isCooldown(ds, email, it.clientId) }
    }
    /** 冷却剩余时间（分钟），供UI提示 */
    internal fun cooldownRemainMinutes(ds: DataSource, email: String? = null, clientId: String? = null): Long {
        val remain = readCooldown(ds, email, clientId) - System.currentTimeMillis()
        return if (remain > 0) remain / 60000 else 0
    }
    /** 该账号在该区域任一通道的剩余冷却（用于提示最长冷却） */
    internal fun cooldownRemainAnyMinutes(ds: DataSource, email: String?): Long {
        val channels = if (ds == DataSource.GARMIN_CN) SSO_CHANNELS_CN else SSO_CHANNELS_COM
        return channels.maxOfOrNull { cooldownRemainMinutes(ds, email, it.clientId) } ?: 0
    }
}

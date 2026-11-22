package com.jichi.ob.coordinator

import android.util.Log
import android.widget.Toast
import androidx.lifecycle.lifecycleScope
import com.jichi.ob.MainActivity
import com.jichi.ob.model.ActivityRecord
import com.jichi.ob.model.DataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * P1 Step 1: 同步状态协调器——登录态检测/刷新、预加载、合并页拉取/下载。
 * 同步引擎本体（startSync / runTask / fetchActivities / downloadActivity）仍在 MainActivity，见 REFACTOR.md 第二步。
 */
class SyncCoordinator(private val activity: MainActivity) {

    companion object {
        private const val TAG = "JichiOB"
    }

    internal fun recordSync(ds: DataSource, type: String, okDelta: Int = 0, skipDelta: Int = 0, failDelta: Int = 0, msg: String = "") {
        try {
            val cache = com.jichi.ob.util.ActivityCache.get(activity)
            cache.addPlatformStat(ds.shortName, okDelta, skipDelta, failDelta, System.currentTimeMillis())
            if (msg.isNotEmpty()) cache.addPlatformLog(ds.shortName, type, msg)
        } catch (_: Exception) {}
    }

    internal fun initLoginStatesLight() {
        val logged = DataSource.sourcePlatforms().count { activity.prefs.isLoggedIn(it) }
        val cacheCount = try { com.jichi.ob.util.ActivityCache.get(activity).queryByPlatform("").size } catch (_: Exception) { 0 }
        activity.appLog.append("📊 启动登录检测: $logged 个平台凭证有效（网络检测请用登录页「一键检测」）")
        activity.runOnUiThread {
            activity.loginFragment.updateStatus()
            try { activity.settingsFragment?.refreshLoginState() } catch (_: Exception) {}
        }
    }

    /** v8.2.2: 一键检测——网络级登录态全量校验（登录页按钮触发；onDone 返回汇总） */

    internal fun checkAllLogins(onDone: ((valid: Int, refreshed: Int, invalid: Int) -> Unit)? = null) {
        activity.appLog.append("🔍 登录检测中...")
        activity.lifecycleScope.launch(Dispatchers.IO) {
            var valid = 0
            var refreshed = 0
            var invalid = 0
            val invalidList = ArrayList<DataSource>()
            val platforms = listOf(
                DataSource.IGPSPORT, DataSource.XINGZHE, DataSource.MAGENE, DataSource.BLACKBIRD,
                DataSource.BRYTON, DataSource.OUTBASE, DataSource.GARMIN_COM, DataSource.GARMIN_CN,
                DataSource.COROS_CN, DataSource.COROS_INT, DataSource.WAHOO, DataSource.GIANT,
                DataSource.MYWHOOSH, DataSource.ZWIFT, DataSource.INTERVALS_ICU, DataSource.KEEP,
                DataSource.CODOON, DataSource.ZEPP, DataSource.KOMOT, DataSource.SUUNTO
            )
            for (ds in platforms) {
                if (!activity.prefs.isLoggedIn(ds)) continue  // 未登录过的跳过，不发无用请求
                kotlinx.coroutines.delay(300)  // 间隔避免并发触发风控
                val cred = activity.prefs.getCredential(ds) ?: continue
                val username = try {
                    when (ds) {
                        DataSource.IGPSPORT -> activity.igpsportApi.getUsername(cred)
                        DataSource.IGPSPORT_INT -> activity.igpsportApi.getUsername(cred)
                        DataSource.XINGZHE -> activity.xingzheApi.getUsername(cred)
                        DataSource.MAGENE -> activity.mageneApi.getUsername(cred)
                        DataSource.BLACKBIRD -> activity.blackbirdApi.getUsername(cred)
                        DataSource.BRYTON -> activity.brytonApi.getUsername(cred)
                        DataSource.GIANT -> activity.giantApi.getUsername(cred)
                        DataSource.OUTBASE -> activity.outbaseApi.getUsername(cred)
                        DataSource.GARMIN_COM -> activity.garminApi.getUsername(ds, cred)
                        DataSource.GARMIN_CN -> activity.garminApi.getUsername(ds, cred)
                        DataSource.COROS_CN -> activity.corosApi.getUsername(cred)
                        DataSource.COROS_INT -> activity.corosApi.getUsername(cred)
                        DataSource.WAHOO -> activity.wahooApi.getUsername(cred)
                        DataSource.MYWHOOSH -> activity.mywhooshApi.getUsername(cred)
                        DataSource.ZWIFT -> {
                            val u = activity.zwiftApi.getUsername(cred)
                            if (u != null && activity.zwiftApi.isTrialAccount(cred)) {
                                activity.appLog.append("⚠️ Zwift 为试用订阅账号：可查看活动列表，但 Zwift 不提供 FIT 文件下载，需升级会员")
                            }
                            u
                        }
                        DataSource.KEEP -> activity.keepApi.getUsername(cred)
                        DataSource.CODOON -> activity.codoonApi.getUsername(cred, activity.prefs.getCodoonUserId())
                        DataSource.ZEPP -> activity.zeppApi.getUsername(cred)
                        DataSource.KOMOT -> {
                            val email = activity.prefs.getKomootAccount()
                            if (email.isNullOrEmpty()) null else activity.komootApi.getUsername(email, cred)
                        }
                        DataSource.SUUNTO -> {
                            val sk = activity.auth.suuntoSubscriptionKey()
                            if (sk.isNullOrEmpty()) null else activity.suuntoApi.getUsername(cred, sk)
                        }
                        DataSource.TWO_BULU -> "两步路用户"
                        DataSource.STRAVA -> "Strava用户"
                        DataSource.POLAR -> "Polar用户"
                        DataSource.FITBIT -> "Fitbit用户"
                        DataSource.WITHINGS -> "Withings用户"
                        DataSource.TRAININGPEAKS -> "TrainingPeaks用户"
                        DataSource.INTERVALS_ICU -> {
                            // v7.8.5: API Key 有效性即登录态
                            if (activity.intervalsIcuApi.validateKey(cred))
                                activity.prefs.getUsername(DataSource.INTERVALS_ICU) ?: "Intervals.icu用户"
                            else null
                        }
                    }
                } catch (e: Exception) {
                    Log.w(TAG, "启动登录检测 ${ds.displayName} 异常: ${e.message}")
                    null
                }
                if (!username.isNullOrBlank()) {
                    valid++
                    activity.prefs.saveUsername(ds, username)
                    // v7.6.9: 迈金JWT若快过期(<1小时)，后台主动刷新，避免同步时才401
                    if (ds == DataSource.MAGENE) {
                        try {
                            val expLeft = activity.mageneApi.getJwtExpRemainingSec(cred)
                            if (expLeft != null && expLeft < 3600) {
                                val refresh = activity.prefs.getMageneRefreshToken()
                                if (!refresh.isNullOrEmpty()) {
                                    val newTok = activity.mageneApi.refreshToken(refresh)
                                    if (newTok != null && newTok != cred) {
                                        activity.prefs.saveCredential(ds, newTok)
                                        activity.prefs.saveMageneRefreshToken(refresh)
                                        activity.runOnUiThread { activity.appLog.append("🔄 ${ds.displayName} token将过期，已后台提前刷新") }
                                    }
                                }
                            }
                        } catch (e: Exception) { Log.w(TAG, "迈金提前刷新异常: ${e.message}") }
                    }
                    activity.runOnUiThread { activity.appLog.append("✅ 登录有效: ${ds.displayName} ($username)") }
                    continue
                }
                // 登录态失效 → 尝试刷新
                val newCred = refreshCredentialOnStart(ds, cred)
                if (newCred != null && newCred != cred) {
                    refreshed++
                    activity.prefs.saveCredential(ds, newCred)
                    // v7.6.1: 刷新后校验新token是否真实可用，输出明确成功/失败日志
                    // v7.6.8: 迈金刷新成功即保存新token；校验失败不再提示"同步失败请重新登录"（新token已保存，
                    //         同步时若真失效会有明确的401报错兜底，避免刷新成功却误报需重登）
                    val verifyName = try {
                        when (ds) {
                            DataSource.MAGENE -> activity.mageneApi.getUsername(newCred)
                            DataSource.WAHOO -> activity.wahooApi.getUsername(newCred)
                            else -> null
                        }
                    } catch (e: Exception) { null }
                    val suffix = if (verifyName.isNullOrBlank())
                        "（已自动刷新，同步时将自动校验）"
                    else " ✅ 登录有效 ($verifyName)"
                    activity.runOnUiThread { activity.appLog.append("🔄 ${ds.displayName} 登录态失效，已自动刷新$suffix") }
                } else {
                    invalid++
                    invalidList.add(ds)
                    if (ds == DataSource.WAHOO || ds == DataSource.COROS_CN || ds == DataSource.COROS_INT
                        || ds == DataSource.GARMIN_COM || ds == DataSource.GARMIN_CN) {
                        // v7.6.8: Wahoo/高驰失效时【绝不】清除凭证！
                        // Wahoo: token/refresh_token有复用价值，清除会导致重登走完整OAuth新建token触发10枚上限
                        // 高驰: 凭证含regionId/cookie，保留后重登时WebView可复用cookie自动登录，无需重新选区域输账号
                        // v7.9.0: 佳明DI凭证含refresh_token，失效时同样保留——同步前会ensureValidToken静默刷新，
                        //         若refresh_token也失效（冷却期外），重登时WebView可复用cookie自动登录，无需重输账号密码
                        activity.runOnUiThread { activity.appLog.append("❌ ${ds.displayName} 登录失效，请重新登录（已保留令牌，重登时自动复用/刷新，不会新建令牌）") }
                    } else {
                        activity.prefs.clearCredential(ds)
                        activity.runOnUiThread { activity.appLog.append("❌ ${ds.displayName} 登录失效，请重新登录") }
                    }
                }
            }
            activity.runOnUiThread {
                activity.lastInvalidPlatforms = invalidList
                activity.loginFragment.updateStatus()
                activity.appLog.append("📊 登录检测完成: ${valid}有效 / ${refreshed}刷新成功 / ${invalid}失效")
                onDone?.invoke(valid, refreshed, invalid)
            }
        }
    }

    /**
     * v7.5.9: 启动检测时尝试刷新失效平台的登录态
     * 仅支持有刷新机制的平台；返回 null 表示无法刷新（需重新登录）
     */

    private suspend fun refreshCredentialOnStart(ds: DataSource, cred: String): String? = when (ds) {
        DataSource.CODOON -> {
            // v8.1.1: 咕咚无 refresh 端点，token 失效后用保存的账号密码自动重登（否则"登录状态记不住"）
            val account = activity.prefs.getCodoonAccount()
            val password = activity.prefs.getCodoonPassword()
            if (account.isNullOrEmpty() || password.isNullOrEmpty()) null
            else try {
                val r = activity.codoonApi.login(account, password)
                if (r != null) {
                    activity.prefs.saveCodoonToken(r.token)
                    activity.prefs.saveCodoonUserId(r.userId)
                    r.token
                } else null
            } catch (e: Exception) {
                Log.w(TAG, "咕咚自动重登异常: ${e.message}")
                null
            }
        }
        DataSource.MAGENE -> {
            val refresh = activity.prefs.getMageneRefreshToken()
            if (refresh.isNullOrEmpty()) null else activity.mageneApi.refreshToken(refresh)
        }
        DataSource.WAHOO -> {
            val refresh = activity.prefs.getWahooRefresh()
            val clientId = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured())
                com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_ID else activity.prefs.getWahooClientId()
            val clientSecret = if (com.jichi.ob.api.WahooApi.isBuiltinConfigured())
                com.jichi.ob.api.WahooApi.BUILTIN_CLIENT_SECRET else activity.prefs.getWahooClientSecret()
            if (refresh.isNullOrEmpty() || clientId.isNullOrEmpty() || clientSecret.isNullOrEmpty()) null
            else {
                // v7.6.0: 用getUsableTokenOrNull（先测token→失效则refresh→刷新后用新token验证撤销旧token）
                // 刷新成功必须同时保存新access_token和新refresh_token（refresh_token是轮换令牌，旧的作废）
                val usable = activity.wahooApi.getUsableTokenOrNull(cred, refresh, clientId, clientSecret)
                if (usable != null) {
                    activity.prefs.saveWahooToken(usable.first)
                    activity.prefs.saveWahooRefresh(usable.second)
                    usable.first
                } else null
            }
        }
        DataSource.GARMIN_COM, DataSource.GARMIN_CN -> {
            // v7.9.0: 佳明DI token静默刷新（用refresh_token，不重新SSO登录，避免撞429风控）
            // ensureValidToken内部判断：未过期→原样返回；过期且有refresh_token→刷新返回新凭证
            try {
                activity.garminApi.ensureValidToken(ds, cred)
            } catch (e: Exception) {
                Log.w(TAG, "佳明刷新异常: ${e.message}")
                null
            }
        }
        DataSource.ZWIFT -> {
            // v7.8.4: Zwift refresh_token 轮换刷新
            val refresh = activity.prefs.getZwiftRefreshToken()
            if (refresh.isNullOrEmpty()) null
            else {
                val fresh = activity.zwiftApi.refreshToken(refresh)
                if (fresh != null) {
                    activity.prefs.saveZwiftToken(fresh.first)
                    activity.prefs.saveZwiftRefreshToken(fresh.second)
                    fresh.first
                } else null
            }
        }
        DataSource.MYWHOOSH -> null  // MyWhoosh 无 refresh 端点，需重新登录
        DataSource.INTERVALS_ICU -> null  // Intervals.icu 无 refresh，需重新输入 API Key
        DataSource.KEEP -> null  // Keep 无 refresh 端点，需重新登录
        DataSource.CODOON -> null  // 咕咚无 refresh 端点，需重新登录
        DataSource.ZEPP -> null  // Zepp 无 refresh 端点，需重新登录
        DataSource.KOMOT -> {
            // v7.9.6: Komoot token 为长期令牌，失效时用内存中的最近账号密码自动重登
            try {
                val fresh = activity.komootApi.reLoginIfNeeded()
                fresh?.token
            } catch (e: Exception) { null }
        }
        DataSource.SUUNTO -> {
            // v7.9.6: Suunto 用 refresh_token 刷新（轮换令牌，成功后需同时保存新access+refresh）
            val refresh = activity.prefs.getSuuntoRefresh()
            val clientId = if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured()) com.jichi.ob.api.SuuntoApi.BUILTIN_CLIENT_ID else activity.prefs.getSuuntoClientId()
            val clientSecret = if (com.jichi.ob.api.SuuntoApi.isBuiltinConfigured()) com.jichi.ob.api.SuuntoApi.BUILTIN_CLIENT_SECRET else activity.prefs.getSuuntoClientSecret()
            val subKey = activity.auth.suuntoSubscriptionKey()
            if (refresh.isNullOrEmpty() || clientId.isNullOrEmpty() || clientSecret.isNullOrEmpty() || subKey.isNullOrEmpty()) null
            else {
                val fresh = activity.suuntoApi.refreshToken(refresh, clientId, clientSecret, subKey)
                if (fresh != null) {
                    activity.prefs.saveSuuntoToken(fresh.accessToken)
                    activity.prefs.saveSuuntoRefresh(fresh.refreshToken)
                    fresh.accessToken
                } else null
            }
        }
        else -> null
    }

    /** v7.9.6: Suunto Subscription Key（内置优先，其次用户配置） */

    internal fun normStartMs(ms: Long, timeStr: String, cache: com.jichi.ob.util.ActivityCache): Long {
        var t = ms
        if (t > 0 && t < 1_000_000_000_000L) t *= 1000L
        if (t <= 0) t = cache.parseStartTimeMs(timeStr)
        if (t > 0 && t < 1_000_000_000_000L) t *= 1000L
        return t
    }

    /** v8.2.5: 从平台 extra 提取干净运动类型（历史实现把 extra 原样塞进 type 列导致记录中心显示长串） */

    internal fun cleanCacheType(ds: com.jichi.ob.model.DataSource, extra: String?): String {
        val s = extra ?: return ""
        return when (ds) {
            com.jichi.ob.model.DataSource.KEEP -> {  // extra="id|type"
                val i = s.indexOf('|')
                val t = if (i >= 0) s.substring(i + 1) else ""
                when (t) { "running" -> "跑步"; "cycling" -> "骑行"; "hiking" -> "徒步"; "swimming" -> "游泳"; "other" -> "运动"; else -> t }
            }
            else -> ""  // 其余平台 extra 是下载凭证，无类型语义
        }
    }

    /** v8.2.3.9: 预拉取全部运动记录元数据入库（循环分页全量；上限=缓存库单平台2000条；后台IO不卡UI；失败可见反馈） */

    internal fun preloadRecent(ds: DataSource) {
        activity.lifecycleScope.launch(Dispatchers.IO) {
            val n = preloadAllOf(ds)
            if (n == 0) {
                activity.runOnUiThread {
                    Toast.makeText(activity, "${ds.displayName} 暂无运动记录", Toast.LENGTH_SHORT).show()
                    try { activity.loginFragment.updateStatus() } catch (_: Exception) {}
                }
            } else if (n > 0) {
                activity.runOnUiThread {
                    Toast.makeText(activity, "已拉取 $n 条 ${ds.displayName} 记录", Toast.LENGTH_LONG).show()
                }
            }
        }
    }

    /** v8.2.3.9: 登录页「拉取全部」——串行拉取所有已登录平台（防并发触发风控），汇总反馈 */

    internal fun preloadAll() {
        activity.lifecycleScope.launch(Dispatchers.IO) {
            val platforms = DataSource.entries.filter { it != DataSource.OUTBASE && activity.prefs.isLoggedIn(it) }
            if (platforms.isEmpty()) {
                activity.runOnUiThread { Toast.makeText(activity, "暂无已登录平台", Toast.LENGTH_SHORT).show() }
                return@launch
            }
            activity.appLog.append("🔄 手动拉取全部：${platforms.joinToString("、") { it.displayName }}")
            var okCount = 0
            var total = 0
            for (ds in platforms) {
                val n = try { preloadAllOf(ds) } catch (e: Exception) { -1 }
                if (n >= 0) { okCount++; total += n }
            }
            activity.appLog.append("✅ 拉取完成：$okCount 个平台共 $total 条")
            activity.runOnUiThread {
                Toast.makeText(activity, "拉取完成：$okCount 个平台共 $total 条记录", Toast.LENGTH_LONG).show()
                try { activity.loginFragment.updateStatus() } catch (_: Exception) {}
                try { activity.recordFragment.refresh() } catch (_: Exception) {}
            }
        }
    }

    /** 单平台全量拉取核心：返回入库条数（0=无记录，-1=失败）；日志逐批输出进度 */

    private suspend fun preloadAllOf(ds: DataSource): Int {
        try {
            activity.appLog.append("📥 ${ds.displayName} 预拉取全部运动记录...")
            val all = mutableListOf<ActivityRecord>()
            val seen = HashSet<String>()
            var skip = 0
            val BATCH = 200
            val MAX = 2000 // 与缓存库单平台上限一致
            var batches = 0
            // v8.2.3.9: 判据修正——只有「空返回」或「id 全重复（游标未动）」才算拉完；
            // 不再用 batch.size < BATCH（Keep 每页仅返回部分记录，不足一批不代表没有更多）
            while (all.size < MAX && batches < 60) {
                val batch = try {
                    activity.fetchActivities(ds, skip, BATCH)
                } catch (e: Exception) {
                    activity.appLog.append("⚠️ ${ds.displayName} 第 ${skip + 1} 条起拉取中断: ${e.message}")
                    break
                }
                if (batch.isEmpty()) break
                // 防死循环：本批 id 与已拉全部重复 → 平台游标未前进，收口
                val before = seen.size
                batch.forEach { seen.add(it.id) }
                if (seen.size == before) break
                all.addAll(batch)
                batches++
                activity.appLog.append("📥 ${ds.displayName} 已拉取 ${all.size} 条...")
                skip += batch.size
            }
            if (all.isEmpty()) {
                activity.appLog.append("⏳ ${ds.displayName} 暂无运动记录")
                return 0
            }
            // v8.2.6: igp 列表接口不带时间 → 对时间缺失记录下载 FIT 解析时间回填（限最近30条，避免全量下载过重）
            if (ds == com.jichi.ob.model.DataSource.IGPSPORT) {
                val missingCount = all.count { it.startTimeMs <= 0 }
                if (missingCount > 0) {
                    val token = activity.prefs.getIgpsportToken()
                    if (!token.isNullOrEmpty()) {
                        activity.appLog.append("⏳ iGPSPORT ${missingCount} 条无时间，下载 FIT 解析（限最近30条）...")
                        var fixed = 0
                        val fmt = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.getDefault())
                        for (rec in all.filter { it.startTimeMs <= 0 }.take(30)) {
                            try {
                                val fit = activity.igpsportApi.downloadFitFile(token, rec.id, rec.extra)
                                val ms = activity.igpsportApi.parseFitStartTimeMs(fit)
                                if (ms > 0) {
                                    rec.startTimeMs = ms
                                    val idx = all.indexOf(rec)
                                    if (idx >= 0) all[idx] = rec.copy(startTime = fmt.format(java.util.Date(ms)))
                                    fixed++
                                }
                            } catch (_: Exception) {}
                        }
                        activity.appLog.append("✅ iGPSPORT FIT 时间回填 ${fixed}/${minOf(missingCount, 30)} 条（未回填的可单点下载后自动补）")
                    }
                }
            }
            val cache = com.jichi.ob.util.ActivityCache.get(activity)
            cache.upsertBatch(ds.shortName, all.map {
                com.jichi.ob.util.ActivityCache.Entry(
                    id = it.id,
                    platform = ds.shortName,
                    startTime = normStartMs(it.startTimeMs, it.startTime, cache),
                    type = cleanCacheType(ds, it.extra),
                    title = it.title,
                    distanceKm = it.distance,
                    durationSec = it.duration,
                    filename = "",
                    extra = it.extra ?: ""
                )
            })
            // v8.2.3.10: 预拉取平台日志写入详情弹窗可见（导入/成功/失败）
            cache.addPlatformLog(ds.shortName, "导入", "预拉取 ${all.size} 条记录入库")
            activity.appLog.append("💾 ${ds.displayName} 已缓存 ${all.size} 条记录到记录中心")
            activity.runOnUiThread {
                try { activity.loginFragment.updateStatus() } catch (_: Exception) {}
                try { activity.recordFragment.refresh() } catch (_: Exception) {}
            }
            return all.size
        } catch (e: Exception) {
            activity.appLog.append("⚠️ ${ds.displayName} 预拉取失败: ${e.message}")
            return -1
        }
    }

    // v7.6.2: 日志/进度/同步态统一转发给SyncFragment
    // v8.1.3: Fragment detached 防御——后台同步/Worker 回调时页面可能已销毁，任何 UI 异常不允许冒泡崩溃

    internal fun isFit(bytes: ByteArray): Boolean = bytes.size >= 14 && bytes[8] == '.'.code.toByte() && bytes[9] == 'F'.code.toByte()

    /** 申请通知权限（Android 13+）*/

    internal suspend fun fetchMergeActivities(source: DataSource, fromDate: String? = null, toDate: String? = null, skipStart: Int = 0): MainActivity.MergeFetchPage = withContext(Dispatchers.IO) {
        val out = LinkedHashMap<String, ActivityRecord>()
        var skip = skipStart
        val page = 30
        val max = 500
        var fetched = 0
        var lastBatchFull = false
        try {
            while (fetched < max) {
                val batch = try {
                    activity.fetchActivities(source, skip, page)
                } catch (e: Exception) {
                    break
                }
                if (batch.isEmpty()) { lastBatchFull = false; break }
                lastBatchFull = batch.size >= page
                skip += batch.size; fetched += batch.size
                if (fromDate == null && toDate == null) {
                    for (r in batch) out[r.id] = r
                    // v7.9.11 秒开修复：无日期筛选时只拉最近 1 批（约 30 条）
                    break
                }
                for (r in batch) {
                    val d = recDay(r.startTime)
                    if ((fromDate == null || d >= fromDate) && (toDate == null || d <= toDate)) out[r.id] = r
                }
                if (batch.size < page) break
            }
        } catch (_: Exception) {}
        val list = out.values.toList()
        if (fromDate == null && toDate == null) return@withContext MainActivity.MergeFetchPage(list.take(page), lastBatchFull)
        // 有日期：拉到更早记录可能仍匹配 → hasMore=还有下一页可拉（未触上限且刚拉满页）
        MainActivity.MergeFetchPage(list, lastBatchFull && fetched >= max)
    }

    private fun recDay(startTime: String): String = startTime.take(10)

    /** 合并页：下载单条轨迹原始数据（FIT/GPX） */

    internal suspend fun downloadForMerge(source: DataSource, record: ActivityRecord): ByteArray? = withContext(Dispatchers.IO) {
        try {
            activity.downloadActivity(source, DataSource.OUTBASE, record)
        } catch (e: Exception) {
            null
        }
    }

}

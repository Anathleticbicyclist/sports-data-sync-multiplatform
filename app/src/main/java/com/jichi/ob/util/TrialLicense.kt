// 来源：jadx 1.5.2 反编译自开发版 v9.6.8 APK（com.jichi.ob.util.TrialLicense）。
// 原件为 Kotlin（@Metadata 完整保留原始签名与参数名）；jadx 输出无
// "Code decompiled incorrectly" 标记；已用 smali_source/com/jichi/ob/util/
// TrialLicense.smali 逐项核对常量与分支（SALT 除外，见下）。
//
// SALT 已填入 9.6.8 原值（取自开发版 v9.6.8 APK 的 smali 静态字段，与 9.6.8 一致）。
// 注意：SALT 编译进 APK，任何人反编译都能看到——体验码不是付费许可，不要当作防破解手段。
// 切勿把该值发到聊天、也不要把它写进任何文档或汇报。
package com.jichi.ob.util

import android.content.Context
import android.content.SharedPreferences
import android.provider.Settings
import androidx.core.os.EnvironmentCompat
import java.security.MessageDigest
import java.util.Calendar
import java.util.Locale

/**
 * 体验许可证：按设备 ID（android_id 的 MD5 前 8 位大写）+ 周期号发码。
 *
 * 周期：以 2026-09-01 为起点，每 14 天一个周期，编号 P001、P002…；
 * 当前周期号 = floor((今天 - 2026-09-01) / 14 天) + 1。
 * 体验码格式：`P<周期>-<6 位校验>` 或 `LIFE-<6 位校验>`，校验 = MD5(设备ID + 周期/LIFE + SALT)
 * 前 6 位十六进制（大写）。永久码存 `LIFE`，周期码存当期 `Pxxx`。
 *
 * 已知问题 / 存疑点（对照 smali 核对）：
 * 1. `TRIAL_DAYS = 14` 在原件里定义了但没有任何地方使用，周期长度 14 是
 *    在 getCurrentPeriod()/getLicenseExpiry() 里写死的 14。
 * 2. `markFirstUse()` 在整个 APK 里没有任何调用方；trial_start 只有
 *    verifyKey() 成功时才写入。因此 isFirstUse() 在首次验证成功前恒为 true，
 *    App 级门禁每次启动都会弹框，直到验证通过——这正是门禁想要的行为，
 *    但不要误以为“首次使用”有 14 天免费试用：原件没有免费试用期。
 * 3. isAllowed() 的判断是“已存周期号 >= 当前周期号”：未来周期的码也能通过；
 *    verifyKey() 则拒绝低于已存周期号的码（不允许降级续期）。
 * 4. getLicenseExpiry() 的到期日 = 起点 + 周期号 × 14 天（即当期结束日），
 *    不是“验证日起 + 14 天”。
 * 5. 校验只用 MD5 前 6 位十六进制（约 24 bit），且 SALT 编译进 APK，
 *    懂反编译的人能自己算出任意设备的码——这是体验码不是付费许可，
 *    不要把它当作防破解手段。
 */
class TrialLicense(private val ctx: Context) {

    private val prefs: SharedPreferences =
        ctx.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)

    /** 当前设备是否已持有有效许可（永久，或周期号未过期）。 */
    fun isAllowed(): Boolean {
        val period = prefs.getString(KEY_PERIOD, null) ?: return false
        if (period == LIFE_FLAG) return true
        val stored = period.substring(1).toIntOrNull() ?: return false
        val current = getCurrentPeriod().substring(1).toIntOrNull() ?: return false
        return stored >= current
    }

    /** 设备 ID：android_id 的 MD5 前 8 位大写，首次生成后存入 SharedPreferences。 */
    fun getDeviceId(): String {
        prefs.getString(KEY_DEVICE_ID, null)?.let { return it }
        val androidId = Settings.Secure.getString(ctx.contentResolver, Settings.Secure.ANDROID_ID)
            ?: EnvironmentCompat.MEDIA_UNKNOWN
        val id = md5(androidId).take(8).uppercase(Locale.ROOT)
        prefs.edit().putString(KEY_DEVICE_ID, id).apply()
        return id
    }

    /** 当前周期号，如 "P008"；2026-09-01 之前返回 "P001"。 */
    fun getCurrentPeriod(): String {
        val base = Calendar.getInstance().apply {
            set(BASE_DATE_YEAR, BASE_DATE_MONTH, BASE_DATE_DAY, 0, 0, 0)
            set(Calendar.MILLISECOND, 0)
        }
        val elapsed = System.currentTimeMillis() - base.timeInMillis
        if (elapsed < 0) return "P001"
        val period = (elapsed / 86_400_000L / TRIAL_DAYS + 1).toInt()
        return "P" + String.format(Locale.ROOT, "%03d", period)
    }

    /** 是否从未验证通过：非永久许可且 trial_start 从未写入。 */
    fun isFirstUse(): Boolean =
        prefs.getString(KEY_PERIOD, null) != LIFE_FLAG &&
            prefs.getLong(KEY_TRIAL_START, 0L) == 0L

    /** 标记首次使用时间（原件定义了但 APK 内无调用方，保留以备后用）。 */
    fun markFirstUse() {
        prefs.edit().putLong(KEY_TRIAL_START, System.currentTimeMillis()).apply()
    }

    /**
     * 验证体验码。接受 `Pxxx-XXXXXX`（周期码）与 `LIFE-XXXXXX`（永久码），
     * 输入去空格、转大写；已是永久许可时返回 false（无需重复验证）。
     * 成功后写入 license_period 与 trial_start，返回 true；失败不写盘。
     */
    fun verifyKey(input: String): Boolean {
        if (prefs.getString(KEY_PERIOD, null) == LIFE_FLAG) return false
        val key = input.trim().uppercase(Locale.ROOT).replace(" ", "")
        if (!key.contains("-")) return false
        val parts = key.split("-")
        if (parts.size != 2) return false
        val head = parts[0]
        val check = parts[1]
        if (check.length != 6) return false
        val deviceId = getDeviceId()
        if (head == LIFE_FLAG) {
            val expect = md5(deviceId + "LIFE" + SALT).take(6).uppercase(Locale.ROOT)
            if (check != expect) return false
            prefs.edit()
                .putString(KEY_PERIOD, LIFE_FLAG)
                .putLong(KEY_TRIAL_START, System.currentTimeMillis())
                .apply()
            return true
        }
        if (!Regex("^P\\d{3}$").matches(head)) return false
        val expect = md5(deviceId + head + SALT).take(6).uppercase(Locale.ROOT)
        if (check != expect) return false
        val newPeriod = head.substring(1).toIntOrNull() ?: return false
        val storedPeriod = (prefs.getString(KEY_PERIOD, "P000") ?: "P000")
            .substring(1).toIntOrNull() ?: 0
        if (newPeriod < storedPeriod) return false
        prefs.edit()
            .putString(KEY_PERIOD, head)
            .putLong(KEY_TRIAL_START, System.currentTimeMillis())
            .apply()
        return true
    }

    /** 许可类型文案：永久体验 / 体验许可（Pxxx）/ 未激活。 */
    fun getLicenseType(): String {
        if (prefs.getString(KEY_PERIOD, null) == LIFE_FLAG) return "永久体验"
        val period = prefs.getString(KEY_PERIOD, null)
        if (prefs.getLong(KEY_TRIAL_START, 0L) != 0L && period != null) {
            return "体验许可（$period）"
        }
        return "未激活"
    }

    /** 有效期至：永久 / 起点 + 周期号×14 天的日期 / 未激活。 */
    fun getLicenseExpiry(): String {
        if (prefs.getString(KEY_PERIOD, null) == LIFE_FLAG) return "永久有效"
        val period = prefs.getString(KEY_PERIOD, null) ?: return "未激活"
        if (!Regex("^P\\d{3}$").matches(period)) return "未激活"
        val num = period.substring(1).toInt()
        val cal = Calendar.getInstance().apply {
            set(BASE_DATE_YEAR, BASE_DATE_MONTH, BASE_DATE_DAY, 0, 0, 0)
            add(Calendar.DAY_OF_YEAR, num * TRIAL_DAYS)
        }
        return "%d-%02d-%02d".format(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH) + 1, cal.get(Calendar.DAY_OF_MONTH))
    }

    private fun md5(input: String): String {
        val digest = MessageDigest.getInstance("MD5").digest(input.toByteArray(Charsets.UTF_8))
        return digest.joinToString("") { "%02x".format(it) }
    }

    companion object {
        private const val BASE_DATE_DAY = 1
        private const val BASE_DATE_MONTH = 8 // Calendar 月份 0 起计，8 = 9 月
        private const val BASE_DATE_YEAR = 2026
        private const val KEY_DEVICE_ID = "device_id"
        private const val KEY_PERIOD = "license_period"
        private const val KEY_TRIAL_START = "trial_start_time"
        private const val LIFE_FLAG = "LIFE"
        private const val PREFS_NAME = "jichi_ob_trial"
        // SALT：9.6.8 原值（见文件头说明）。
        private const val SALT = "v2ayxaeva3r8i066gkvnxq8iq9iel2tf"
        private const val TAG = "TrialLicense"
        private const val TRIAL_DAYS = 14
    }
}

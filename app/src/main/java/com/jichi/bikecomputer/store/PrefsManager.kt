// 来源：jadx 反编译自 dev-9.6.8 APK（com.jichi.bikecomputer.store.PrefsManager）。
// 改写说明：Java 类改写为 Kotlin 类，SharedPreferences 键名与默认值原样保留，getAllBinds 改用 removePrefix。
// 已知问题：getMainDisplay/getBoundMac 在存过 null 值时返回 null（与原件一致），故返回类型为 String?；
// 原件无 @Metadata，smali .source 为 .java，说明原件为 Java，参数名按用法还原。
package com.jichi.bikecomputer.store

import android.content.Context
import android.content.SharedPreferences

class PrefsManager(context: Context) {

    companion object {
        const val BIND_PREFIX = "bind_"
        const val KEY_MAIN_DISPLAY = "main_display"
        const val KEY_SHOW_ALT = "show_alt"
        const val KEY_SHOW_ASCENT = "show_ascent"
        const val KEY_SHOW_AVG = "show_avg"
        const val KEY_SHOW_BARO = "show_baro"
        const val KEY_SHOW_CAD = "show_cad"
        const val KEY_SHOW_DIST = "show_dist"
        const val KEY_SHOW_GRADE = "show_grade"
        const val KEY_SHOW_HR = "show_hr"
        const val KEY_SHOW_MAX = "show_max"
        const val KEY_SHOW_POWER = "show_power"
        const val KEY_SHOW_TIME = "show_time"
        const val KEY_WHEEL_CM = "wheel_circumference_m"
        private const val PREF = "bike_prefs"
    }

    private val sp: SharedPreferences = context.getSharedPreferences(PREF, Context.MODE_PRIVATE)

    fun getMainDisplay(): String? = sp.getString(KEY_MAIN_DISPLAY, "speed")

    fun setMainDisplay(value: String?) {
        sp.edit().putString(KEY_MAIN_DISPLAY, value).apply()
    }

    fun isShow(key: String): Boolean = sp.getBoolean(key, true)

    fun setShow(key: String, show: Boolean) {
        sp.edit().putBoolean(key, show).apply()
    }

    fun getWheelCircumference(): Double =
        sp.getFloat(KEY_WHEEL_CM, 2.096f).toDouble()

    fun setWheelCircumference(circumferenceM: Double) {
        sp.edit().putFloat(KEY_WHEEL_CM, circumferenceM.toFloat()).apply()
    }

    fun bindSensor(type: String, mac: String?) {
        sp.edit().putString(BIND_PREFIX + type, mac).apply()
    }

    fun getBoundMac(type: String): String? = sp.getString(BIND_PREFIX + type, null)

    fun unbindSensor(type: String) {
        sp.edit().remove(BIND_PREFIX + type).apply()
    }

    /** 返回全部绑定：key 为设备类型名、value 为 MAC 地址（值可能为 null，与原件一致）。 */
    fun getAllBinds(): Map<String, String?> {
        val binds = HashMap<String, String?>()
        for (key in sp.all.keys) {
            if (key.startsWith(BIND_PREFIX)) {
                binds[key.removePrefix(BIND_PREFIX)] = sp.getString(key, null)
            }
        }
        return binds
    }
}

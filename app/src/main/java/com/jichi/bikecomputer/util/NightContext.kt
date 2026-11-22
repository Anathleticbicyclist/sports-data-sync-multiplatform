// 来源：jadx 反编译自 dev-9.6.8 APK（com.jichi.bikecomputer.util.NightContext）。
// 改写说明：Java 静态工具类改写为 Kotlin object，按 PrefsManager 的深色模式设置覆写 Configuration.uiMode。
// 已知问题：无。注意此处用的是 com.jichi.ob.util.PrefsManager，不是 bikecomputer.store.PrefsManager；
// 原件无 @Metadata，smali .source 为 .java，说明原件为 Java。
package com.jichi.bikecomputer.util

import android.content.Context
import android.content.res.Configuration
import com.jichi.ob.util.PrefsManager

object NightContext {
    @JvmStatic
    fun apply(context: Context): Context {
        try {
            val darkMode = PrefsManager(context).getDarkMode()
            val config = Configuration(context.resources.configuration)
            if (darkMode != null) {
                config.uiMode = when (darkMode) {
                    "dark" -> config.uiMode and Configuration.UI_MODE_NIGHT_MASK.inv() or
                        Configuration.UI_MODE_NIGHT_YES
                    "light" -> config.uiMode and Configuration.UI_MODE_NIGHT_MASK.inv() or
                        Configuration.UI_MODE_NIGHT_NO
                    else -> config.uiMode and Configuration.UI_MODE_NIGHT_MASK.inv()
                }
            }
            return context.createConfigurationContext(config)
        } catch (_: Throwable) {
            return context
        }
    }
}

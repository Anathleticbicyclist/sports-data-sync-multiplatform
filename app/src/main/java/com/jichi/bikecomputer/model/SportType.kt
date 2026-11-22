// 来源：jadx 反编译自 dev-9.6.8 APK（com.jichi.bikecomputer.model.SportType）。
// 改写说明：Java 枚举改写为 Kotlin 枚举类，fitSport/label 保持原样。
// 已知问题：无。smali 中无 @Metadata，.source 为 .java，说明原件为 Java，参数名按用法还原。
package com.jichi.bikecomputer.model

import java.io.Serializable

enum class SportType(@JvmField val fitSport: Int, @JvmField val label: String) : Serializable {
    CYCLING(2, "骑行"),
    RUNNING(1, "跑步"),
    WALKING(11, "徒步")
}

// 来源：jadx 反编译自 dev-9.6.8 APK（com.jichi.bikecomputer.BikeComputerEntryClick）。
// 改写说明：Java 的 View.OnClickListener 改写为 Kotlin 实现，试用拦截与失败 Toast 逻辑原样保留。
// 已知问题：无。原件无 @Metadata，smali .source 为 .java，说明原件为 Java。
package com.jichi.bikecomputer

import android.content.Intent
import android.view.View
import android.widget.Toast
import com.jichi.ob.MainActivity as ObMainActivity

class BikeComputerEntryClick : View.OnClickListener {
    override fun onClick(view: View) {
        try {
            val context = view.context
            val trialAllowed = context !is ObMainActivity || context.checkTrialFeature()
            if (trialAllowed) {
                context.startActivity(Intent(context, MainActivity::class.java))
            }
        } catch (e: Exception) {
            try {
                Toast.makeText(view.context, "打开临时码表失败: $e", Toast.LENGTH_LONG).show()
            } catch (_: Exception) {
            }
        }
    }
}

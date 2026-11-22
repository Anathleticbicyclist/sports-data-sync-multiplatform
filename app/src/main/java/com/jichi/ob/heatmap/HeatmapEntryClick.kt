package com.jichi.ob.heatmap

import android.content.Context
import android.content.Intent
import android.view.View
import android.widget.Toast
import com.jichi.ob.MainActivity

/**
 * 来源：jadx 反编译 `HeatmapEntryClick.java`（classes2.dex）改写为地道 Kotlin。
 * 行为原样保留：点入口时若当前是 MainActivity 且试用校验不通过则不跳转，
 * 否则打开 HeatmapActivity；异常时 Toast 提示“打开热力图失败: …”。
 */
class HeatmapEntryClick : View.OnClickListener {

    override fun onClick(view: View) {
        try {
            val context: Context = view.context
            if (context !is MainActivity || context.checkTrialFeature()) {
                val targetContext = view.context
                targetContext.startActivity(Intent(targetContext, HeatmapActivity::class.java))
            }
        } catch (e: Exception) {
            try {
                Toast.makeText(view.context, "打开热力图失败: $e", Toast.LENGTH_LONG).show()
            } catch (ignored: Exception) {
            }
        }
    }
}

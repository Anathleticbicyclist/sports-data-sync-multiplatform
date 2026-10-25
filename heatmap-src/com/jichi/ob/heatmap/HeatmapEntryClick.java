package com.jichi.ob.heatmap;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.Toast;

import com.jichi.ob.util.TrialLicense;

/**
 * 设置页「热力图」入口点击：开发体验校验 → 打开 HeatmapActivity
 * 不依赖 App 内部类型，由 AboutFragment smali 绑定
 * v9.3.1-fix3：
 *  1. 开发体验校验：无体验码/过期 → 弹窗提示激活体验码（与其他开发体验功能一致）
 *  2. 启动失败 catch(Throwable) 覆盖 VerifyError 等 Error，Toast 显示真实原因
 */
public class HeatmapEntryClick implements View.OnClickListener {

    @Override
    public void onClick(View v) {
        try {
            Context ctx = v.getContext();
            // 开发体验校验：热力图为开发体验功能，无体验码弹窗引导
            TrialLicense license = new TrialLicense(ctx);
            if (!license.isAllowed()) {
                new AlertDialog.Builder(ctx)
                        .setTitle("开发体验功能")
                        .setMessage("热力图为开发体验功能，请先在「关于」页激活体验码后使用。")
                        .setPositiveButton("知道了", null)
                        .show();
                return;
            }
            ctx.startActivity(new Intent(ctx, HeatmapActivity.class));
        } catch (Throwable e) {
            try {
                Toast.makeText(v.getContext(), "打开热力图失败: " + e, Toast.LENGTH_LONG).show();
            } catch (Throwable e2) {
                // 兜底
            }
        }
    }
}

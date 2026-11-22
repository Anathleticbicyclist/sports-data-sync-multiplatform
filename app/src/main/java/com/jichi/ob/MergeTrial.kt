package com.jichi.ob

/**
 * 轨迹合并功能的试用期判断 —— 已废弃。
 *
 * 废弃原因（用户 2026-11-20 决定）：不要日期限制，改为打开 App 就验证体验码。
 * 原逻辑：截止 2026-09-30 23:59:59（本地时区），过期后 openMerge() 弹
 * “限时体验已结束”。该日期已过，继续保留会导致合并功能永久不可用。
 *
 * 现状核对：
 * - 仓库 HEAD 的 MainActivity.openMerge() 是唯一调用方（见 MainActivityTrialGate.patch，
 *   该补丁已删掉此处拦截，改走体验码门禁）。
 * - 值得注意：v9.6.8 APK 里的 openMerge() 其实已经不调用 MergeTrial，
 *   而是走 checkTrialFeature() + pendingOpenAfterTrial（与新建任务、运行任务同一套），
 *   MergeTrial 在 APK 里是无人调用的死代码。仓库 HEAD 比 APK 旧了一步。
 *
 * 本文件只保留一个恒为 true 的兼容壳，防止其他分支/旧代码引用编译失败；
 * 放回仓库并确认无任何引用后可直接删除本文件。
 */
@Deprecated(
    message = "轨迹合并日期限制已废除：改走 App 级体验码门禁（TrialLicense），见 TRIAL-GATE.md。",
    replaceWith = ReplaceWith("true"),
    level = DeprecationLevel.WARNING
)
object MergeTrial {

    /** 恒为 true：合并不再按日期过期。 */
    fun isAvailable(): Boolean = true

    @Deprecated("不再有截止日，合并改走体验码有效期。", ReplaceWith("Int.MAX_VALUE"))
    fun remainingDays(): Int = Int.MAX_VALUE
}

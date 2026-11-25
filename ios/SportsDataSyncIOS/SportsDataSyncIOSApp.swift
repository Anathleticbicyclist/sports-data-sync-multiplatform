// 待真机验证
// SportsDataSyncIOSApp.swift
// 鸡翅幸哲迈进OB iOS 版 — App 入口
// 入口只有 ContentView 一个，底部四个 Tab（登录 / 同步 / 记录 / 关于）全在
// Views/ContentView.swift 里，别在这里再写一份 TabView，避免两份 Tab 漂移。
// 安卓还有个“数据同步设置”页，iOS 这边先并进同步页（SyncView 组负责），
// 记录中心、轨迹合并、热力图、临时码表从关于页进（AboutView 组负责接入口）。
//
// 后台自动同步：App 启动时调一次 BackgroundSync.registerAll() 登记后台任务
// （BGTaskScheduler 必须在启动早期登记，否则系统不唤醒）。注意这里用的引擎
// 实例只供后台唤醒时跑任务；前台同步页是 ContentView 自己建的另一台引擎，
// 两台共用同一份 TaskStore / UserDefaults / 本地文件，所以后台跑完的下载文件、
// 增量记忆、上次运行时间都会落盘，前台重开 App 就能看到；但前台当时正开着的
// 那台引擎内存里的日志和“上次运行”不会被后台这次运行刷新，要彻底合为一台
// 需改 ContentView（不在本组手里），暂留这个已知限制。

import SwiftUI

@main
struct SportsDataSyncIOSApp: App {
    /// 仅供后台任务使用的引擎实例（登记时传给 BackgroundSync）。
    private let backgroundEngine = SyncEngine()

    init() {
        // 启动时登记一次后台自动同步；排期本身只在总开关打开且当前已有
        // 自动任务时才排（registerAll 内部按 TaskStore 动态判断）。
        BackgroundSync.shared.registerAll(engine: backgroundEngine)
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// 待真机验证
// SportsDataSyncIOSApp.swift
// 鸡翅幸哲迈进OB iOS 版 — App 入口
// 入口只有 ContentView 一个，底部四个 Tab（登录 / 同步 / 记录 / 关于）全在
// Views/ContentView.swift 里，别在这里再写一份 TabView，避免两份 Tab 漂移。
// 安卓还有个“数据同步设置”页，iOS 这边先并进同步页（SyncView 组负责），
// 记录中心、轨迹合并、热力图、临时码表从关于页进（AboutView 组负责接入口）。

import SwiftUI

@main
struct SportsDataSyncIOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

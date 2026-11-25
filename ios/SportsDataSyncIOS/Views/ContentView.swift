// 待真机验证
// App 主界面：底部四个 Tab——登录 / 同步 / 记录 / 关于。
// 骨架组 App 入口引用 ContentView，Tab 结构以这个文件为准。
// 主色天蓝 #2B8CFF，四个页面风格统一，扁平清新。
//
// 注意：这里不做任何 App 级开屏门禁。体验码只在功能入口验（新建任务、轨迹合并、
// 一对多同步、一对多任务运行、热力图、临时码表），App 本身直接进得去，原 UI 不动。

import SwiftUI

extension Color {
    /// 主色：天蓝 #2B8CFF。
    static let brandBlue = Color(red: 0x2B / 255, green: 0x8C / 255, blue: 0xFF / 255)
}

struct ContentView: View {
    @StateObject private var engine = SyncEngine()
    @StateObject private var license = TrialLicense()
    @StateObject private var updateChecker = UpdateCheckerStore()
    @Environment(\.openURL) private var openURL

    var body: some View {
        TabView {
            NavigationStack {
                LoginView()
            }
            .tabItem { Label("登录", systemImage: "person.crop.circle") }
            .tag(0)

            NavigationStack {
                SyncView()
            }
            .tabItem { Label("同步", systemImage: "arrow.left.arrow.right.circle") }
            .tag(1)

            NavigationStack {
                RecordCenterView()
            }
            .tabItem { Label("记录", systemImage: "list.bullet.rectangle") }
            .tag(2)

            NavigationStack {
                AboutView()
            }
            .tabItem { Label("关于", systemImage: "info.circle") }
            .tag(3)
        }
        .tint(.brandBlue)
        .environmentObject(engine)
        .environmentObject(license)
        .environmentObject(updateChecker)
        // 体验码弹窗挂在根视图：只在功能入口验码时弹出，绝不在启动时弹。
        .trialDialog(license: license)
        // 启动时静默查一次更新：24 小时内同版本不重复打扰，只有新版才弹窗（安卓 MainActivity 同款）。
        .task {
            await updateChecker.check(force: false)
        }
        // 检查更新弹窗（手动检查和静默检查共用这一个）。
        .alert(item: $updateChecker.prompt) { prompt in
            switch prompt {
            case .message(let text):
                return Alert(
                    title: Text("检查更新"),
                    message: Text(text),
                    dismissButton: .cancel(Text("知道了"))
                )
            case .available(let version, let notes, let downloadURL):
                var text = "经检查更新，开源项目「鸡翅幸哲迈进OB(开发体验版)」最新版本为 \(version)\n你的当前版本为 v\(UpdateCheckerStore.currentVersion)\n\n检测到新版本，建议更新"
                if !notes.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                    text += "：\n\n更新内容：\n\(notes.trimmingCharacters(in: .whitespacesAndNewlines).prefix(400))"
                } else {
                    text += "。"
                }
                return Alert(
                    title: Text("发现新版本 \(version)"),
                    message: Text(text),
                    primaryButton: .default(Text("去更新")) {
                        if let url = URL(string: downloadURL) {
                            openURL(url)
                        }
                    },
                    secondaryButton: .cancel(Text("稍后"))
                )
            }
        }
    }
}

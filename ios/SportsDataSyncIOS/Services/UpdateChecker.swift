// 待真机验证
// 检查更新：对应安卓 util/UpdateChecker.kt（v7.7.6），按安卓原样搬过来。
//
// - 数据源：GitHub Release API（https://api.github.com/repos/Anathleticbicyclist/sports-data-sync-multiplatform/releases/latest），无需自建服务器。
// - 手动检查（force=true）：无新版也提示“已是最新”；失败提示网络原因。
// - 静默检查（force=false）：仅发现新版才弹窗，且 24 小时内同版本不重复打扰。
// - 版本号比较：支持 "7.7.10" > "7.7.9"，tag 前的 "v" 会去掉再比。
// - 当前版本读 App 自身的 CFBundleShortVersionString（Info.plist 里是 9.6.9），没读到才 fallback 到 "9.6.9"。
// - 弹窗由 ContentView 统一弹（.alert(item:)），AboutView 的按钮和 App 启动时的静默检查都调同一个 store。

import Foundation
import SwiftUI

/// 检查更新弹窗的两种状态（ContentView 用 .alert(item:) 弹）。
enum UpdatePrompt: Identifiable {
    case message(String)
    case available(version: String, notes: String, downloadURL: String)

    var id: String {
        switch self {
        case .message(let text):
            return "message-\(text)"
        case .available(let version, _, _):
            return "available-\(version)"
        }
    }
}

@MainActor
final class UpdateCheckerStore: ObservableObject {
    @Published var prompt: UpdatePrompt?
    @Published var isChecking = false

    private static let releasesLatestURL = URL(string: "https://api.github.com/repos/Anathleticbicyclist/sports-data-sync-multiplatform/releases/latest")!
    private static let releasesPageURL = "https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform/releases"
    private static let notifyKey = "update_check.last_notify"
    private static let notifyInterval: TimeInterval = 24 * 3600 // 24 小时内不重复打扰

    /// 当前版本（读 Info.plist，读不到 fallback 到 9.6.9）。
    static var currentVersion: String {
        (Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String) ?? "9.6.9"
    }

    /// 版本号比较：支持 "7.7.10" > "7.7.9"；返回 1 / 0 / -1。
    static func compareVersions(_ v1: String, _ v2: String) -> Int {
        func strip(_ s: String) -> [Int] {
            let t = s.trimmingCharacters(in: .whitespaces)
            let plain = t.hasPrefix("v") ? String(t.dropFirst()) : t
            return plain.split(separator: ".").compactMap { Int($0) }
        }
        let p1 = strip(v1)
        let p2 = strip(v2)
        for i in 0..<max(p1.count, p2.count) {
            let a = i < p1.count ? p1[i] : 0
            let b = i < p2.count ? p2[i] : 0
            if a != b { return a > b ? 1 : -1 }
        }
        return 0
    }

    /// 检查更新。force=true 是手动点按钮：无论结果都给明确提示；force=false 是静默：仅发现新版才弹窗。
    func check(force: Bool) async {
        guard !isChecking else { return }
        isChecking = true
        defer { isChecking = false }

        let current = Self.currentVersion
        var latestVer = ""
        var latestBody = ""
        var failed = false

        do {
            var request = URLRequest(url: Self.releasesLatestURL)
            request.setValue("application/vnd.github+json", forHTTPHeaderField: "Accept")
            request.setValue("jichi-ob", forHTTPHeaderField: "User-Agent")
            request.timeoutInterval = 8
            let (data, _) = try await URLSession.shared.data(for: request)
            let release = try JSONDecoder().decode(GitHubRelease.self, from: data)
            latestVer = release.tagName.trimmingCharacters(in: .whitespaces)
            latestBody = release.body ?? ""
        } catch {
            failed = true
        }

        let found = !latestVer.isEmpty && Self.compareVersions(latestVer, current) > 0

        // 手动模式：联网失败也要明确提示。
        if force && !found && failed {
            prompt = .message("检查更新失败：无法连接更新服务器，请检查网络")
            return
        }
        // 静默模式：没发现新版，或 24 小时内已提示过同版本，就不打扰。
        if !force && (!found || !shouldSilentNotify(version: latestVer)) {
            return
        }

        if found {
            // iOS 上“去更新”打开 Release 页（IPA 在那儿）；安卓原样是直链第一个附件，
            // 那是 APK，iOS 用户点了没用，所以这里按平台改成 Release 页。
            let url = Self.releasesPageURL
            prompt = .available(version: latestVer, notes: latestBody, downloadURL: url)
        } else if force {
            prompt = .message("经检查更新，开源项目「鸡翅幸哲迈进OB(开发体验版)」最新版本为 \(latestVer.isEmpty ? "未知" : latestVer)\n你的当前版本为 v\(current)\n\n当前已是最新版本，无需更新。")
        }
    }

    /// 静默提示去重：同版本 24 小时内只提示一次，返回 true 表示这次可以提示。
    private func shouldSilentNotify(version: String) -> Bool {
        let raw = UserDefaults.standard.string(forKey: Self.notifyKey) ?? ""
        let parts = raw.split(separator: "@", maxSplits: 1).map(String.init)
        let lastVersion = parts.first
        let lastTime = parts.count > 1 ? Double(parts[1]) : nil
        let now = Date().timeIntervalSince1970
        if lastVersion == version, let lastTime, now - lastTime < Self.notifyInterval {
            return false
        }
        UserDefaults.standard.set("\(version)@\(now)", forKey: Self.notifyKey)
        return true
    }
}

/// GitHub Release API 返回的最简结构（只取用到的字段）。
private struct GitHubRelease: Decodable {
    let tagName: String
    let body: String?

    private enum CodingKeys: String, CodingKey {
        case tagName = "tag_name"
        case body
    }
}

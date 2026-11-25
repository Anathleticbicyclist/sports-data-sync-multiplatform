// 待真机验证
// 检查更新：对应安卓 util/UpdateChecker.kt（v7.7.6），按安卓原样搬过来。
//
// - 数据源：GitHub Release API（https://api.github.com/repos/Anathleticbicyclist/sports-data-sync-multiplatform/releases/latest），无需自建服务器。
// - 手动检查（force=true）：无新版也提示“已是最新”；失败提示网络原因。
// - 静默检查（force=false）：仅发现新版才弹窗，且 24 小时内同版本不重复打扰。
// - 版本号比较：支持 "7.7.10" > "7.7.9"，tag 前的 "v" 会去掉再比。
// - iOS 误弹修正：版本和安卓共用一个号，安卓单独发版时版本号也会涨，但附件里
//   没有新 IPA。检查更新时除了比版本号，还要看对应 Release 的 assets 里有
//   没有 .ipa 文件（SportsDataSyncIOS-unsigned.ipa）；只有真有新 IPA 才弹
//   “发现新版本”。拿不到附件信息（断网、接口失败、assets 为空）时宁可不弹，
//   不要误弹；手动检查时给一句明确说明，不弹假的更新提示。
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
        var hasNewIPA = false

        do {
            var request = URLRequest(url: Self.releasesLatestURL)
            request.setValue("application/vnd.github+json", forHTTPHeaderField: "Accept")
            request.setValue("jichi-ob", forHTTPHeaderField: "User-Agent")
            request.timeoutInterval = 8
            let (data, _) = try await URLSession.shared.data(for: request)
            let release = try JSONDecoder().decode(GitHubRelease.self, from: data)
            latestVer = release.tagName.trimmingCharacters(in: .whitespaces)
            latestBody = release.body ?? ""
            // 附件里有没有 iOS 安装包：只要有一个 .ipa 文件就算有新 IPA
            // （正常是 SportsDataSyncIOS-unsigned.ipa）。assets 缺失或为空
            // 时当作“拿不到附件信息”，下面按宁可不弹处理。
            hasNewIPA = (release.assets ?? []).contains {
                $0.name.lowercased().hasSuffix(".ipa")
            }
        } catch {
            failed = true
        }

        let versionNewer = !latestVer.isEmpty && Self.compareVersions(latestVer, current) > 0
        // 只有“版本号更新 + 附件里真有新 IPA”才算发现新版本；版本号涨了但
        // 没新 IPA（安卓单独发版）不算，拿不到附件信息也不算。
        let found = versionNewer && hasNewIPA

        // 手动模式：联网失败也要明确提示。
        if force && !found && failed {
            prompt = .message("检查更新失败：无法连接更新服务器，请检查网络")
            return
        }
        // 手动模式：版本号涨了、但该版本没有 iOS 安装包——明确说明，不弹假更新。
        if force && versionNewer && !hasNewIPA {
            prompt = .message("最新版本为 \(latestVer)，但该版本没有发布 iOS 安装包（IPA），应为安卓单独发版。\n你的当前版本为 v\(current)\n\n当前 iOS 版已是最新，无需更新。")
            return
        }
        // 静默模式：没发现新版，或 24 小时内已提示过同版本，就不打扰。
        // （版本号涨了但没新 IPA、拿不到附件信息时也到这里，直接不弹。）
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

/// GitHub Release API 返回的最简结构（只取用到的字段：tag、说明、附件名）。
private struct GitHubRelease: Decodable {
    let tagName: String
    let body: String?
    let assets: [GitHubReleaseAsset]?

    private enum CodingKeys: String, CodingKey {
        case tagName = "tag_name"
        case body
        case assets
    }
}

/// Release 的一个附件：检查更新只看名字里有没有 .ipa，不下载附件本身。
private struct GitHubReleaseAsset: Decodable {
    let name: String
}

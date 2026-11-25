// 待真机验证
// 实验室登录页：独立页面，可返回；松拓 / Zepp / 百锐腾三个实验平台在此登录/注销，
// 登录后登录页和同步目标里才出现对应平台（未登录隐藏）。对应安卓 ui/LabLoginFragment.kt。
//
// - 松拓走 OAuth2，授权地址待 SuuntoAPI 落盘后在 WebLoginURL.oauthURL 里填，
//   现在平台文件尚未落盘，显示“待接入”；百锐腾同样待接入；Zepp 已接入，账号密码登录。
// - 安卓实验室还有两步路 / Strava / Polar / Fitbit / Withings / TrainingPeaks 六个动态平台，
//   iOS 没有这些平台（Strava 已在登录页主列表里），本页只列上面三个。
// - 登录复用登录页同一套 WebLoginSheet / NativeLoginSheet，不另写登录逻辑。
// - 注销同登录页：清钥匙串里的凭证（LoginStore.clearToken / clearCredentials）。
// - 进实验室不验体验码（安卓 AboutFragment 实验室入口也不验码）。

import SwiftUI

struct LabLoginView: View {
    @StateObject private var store = LoginPageStore()
    @State private var webLoginPlatform: DataSource?
    @State private var formLoginPlatform: DataSource?

    /// 实验室三个固定平台（安卓 LabLoginFragment 静态卡片）。
    private let labPlatforms: [DataSource] = [.suunto, .zepp, .bryton]

    var body: some View {
        List {
            ForEach(labPlatforms) { ds in
                LabPlatformCard(
                    platform: ds,
                    isLoggedIn: store.loggedIn[ds.rawValue] ?? false,
                    hasImplementation: store.platform(for: ds) != nil,
                    onWebLogin: { webLoginPlatform = ds },
                    onFormLogin: { formLoginPlatform = ds },
                    onLogout: { logout(ds) }
                )
            }
            Section {
                Text("实验室里的平台是实验性接入：登录后才会在登录页和同步目标里出现。松拓、百锐腾正在接入中。")
                    .font(.caption).foregroundStyle(.secondary)
            }
        }
        .navigationTitle("实验室")
        .navigationBarTitleDisplayMode(.inline)
        .task {
            await store.checkAll()
        }
        .sheet(isPresented: Binding(
            get: { webLoginPlatform != nil },
            set: { if !$0 { webLoginPlatform = nil } }
        )) {
            if let ds = webLoginPlatform {
                WebLoginSheet(platform: ds, store: store)
            }
        }
        .sheet(isPresented: Binding(
            get: { formLoginPlatform != nil },
            set: { if !$0 { formLoginPlatform = nil } }
        )) {
            if let ds = formLoginPlatform {
                NativeLoginSheet(platform: ds, store: store)
            }
        }
    }

    /// 退出登录：清掉钥匙串里的凭证（同登录页）。
    private func logout(_ ds: DataSource) {
        LoginStore.clearToken(for: ds)
        LoginStore.clearCredentials(for: ds)
        store.loggedIn[ds.rawValue] = false
    }
}

// MARK: - 实验室平台卡片（标题行：平台名 + 注销；状态行；登录按钮“登录X”；
// 安卓 LabLoginFragment.buildCard 同款结构）

private struct LabPlatformCard: View {
    let platform: DataSource
    let isLoggedIn: Bool
    let hasImplementation: Bool
    let onWebLogin: () -> Void
    let onFormLogin: () -> Void
    let onLogout: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(platform.displayName).font(.headline)
                Spacer()
                if isLoggedIn {
                    Button("注销", action: onLogout)
                        .font(.caption).foregroundStyle(.secondary)
                } else if !hasImplementation {
                    Text("待接入").font(.caption).foregroundStyle(.orange)
                }
            }
            if isLoggedIn {
                Text("✅ 已登录").font(.caption).foregroundStyle(.green)
                Button("重新登录", action: loginAction)
                    .font(.subheadline)
                    .buttonStyle(.bordered)
                    .tint(.brandBlue)
            } else if !hasImplementation {
                Text("未登录").font(.caption).foregroundStyle(.secondary)
                Text("该平台正在接入中，登录入口稍后开放。")
                    .font(.caption).foregroundStyle(.secondary)
            } else {
                Text("未登录").font(.caption).foregroundStyle(.secondary)
                HStack(spacing: 8) {
                    switch platform.loginMethod {
                    case .account, .apiKey:
                        Button("登录\(platform.displayName)", action: onFormLogin)
                        if WebLoginURL.url(for: platform) != nil {
                            Button("网页登录", action: onWebLogin)
                        }
                    case .web:
                        Button("网页登录", action: onWebLogin)
                        Button("账号密码", action: onFormLogin)
                    case .oauth2:
                        if WebLoginURL.oauthURL(for: platform) != nil {
                            Button("浏览器授权登录", action: onWebLogin)
                        } else {
                            Text("OAuth 授权地址待接入")
                                .font(.caption).foregroundStyle(.secondary)
                        }
                        Button("网页登录", action: onWebLogin)
                    case .smsCode:
                        Button("手机号验证码登录", action: onWebLogin)
                    }
                }
                .font(.subheadline)
                .buttonStyle(.bordered)
                .tint(.brandBlue)
            }
        }
    }

    private func loginAction() {
        switch platform.loginMethod {
        case .account, .apiKey: onFormLogin()
        default: onWebLogin()
        }
    }
}

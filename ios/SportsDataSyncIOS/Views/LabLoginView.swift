// 待真机验证
// 实验室登录页：独立页面，可返回；松拓 / Zepp / 百锐腾三个实验平台在此登录/注销。
// 各平台一直显示在登录页和同步目标里，不按登录状态隐藏；登上后才能同步对应平台的数据。
// 对应安卓 ui/LabLoginFragment.kt。
//
// - 松拓走 OAuth2（ASWebAuthenticationSession，回调 jichiob，见登录页的 OAuthLoginHelper），
//   clientId 为空时提示先去关于页开发者凭证里填；百锐腾走网页登录（登录页同一套
//   WebLoginSheet：localStorage 的 Meteor.loginToken / Meteor.userId + 完整 Cookie，
//   前者调 BrytonAPI.setMeteorSession、后者调 BrytonAPI.setCookie 写钥匙串）；
//   Zepp 已接入，账号密码登录。
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
    // 松拓 OAuth 共用流程（登录页的 OAuthLoginHelper）。
    @State private var oauthHelper = OAuthLoginHelper()

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
                    onOAuthLogin: { oauthHelper.start(for: ds, store: store) },
                    onLogout: { logout(ds) }
                )
            }
            Section {
                Text("实验室里的平台是实验性接入：松拓正在接入中；百锐腾已可网页登录。各平台一直显示在登录页和同步目标里，不按登录状态隐藏；登上后才能同步对应平台的数据。")
                    .font(.caption).foregroundStyle(.secondary)
            }
        }
        .navigationTitle("实验室")
        .navigationBarTitleDisplayMode(.inline)
        .task {
            await store.checkAll()
        }
        .alert("登录提示", isPresented: Binding(
            get: { store.oauthMessage != nil },
            set: { if !$0 { store.oauthMessage = nil } }
        )) {
            Button("知道了") { store.oauthMessage = nil }
        } message: {
            Text(store.oauthMessage ?? "")
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
    /// 百锐腾多清 Meteor 会话（与 BrytonAPI.logout() 同款），否则退出后移动端下载还能拿旧会话继续跑。
    private func logout(_ ds: DataSource) {
        LoginStore.clearToken(for: ds)
        LoginStore.clearCredentials(for: ds)
        if ds == .bryton {
            KeychainStore.delete("bryton_meteorLoginToken")
            KeychainStore.delete("bryton_meteorUserId")
        }
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
    let onOAuthLogin: () -> Void
    let onLogout: () -> Void

    /// 松拓的 OAuth 不走注册表（授权流程直接建平台实例换 token），
    /// 所以即使注册表还没接进来，卡片上也有浏览器授权入口。
    private var canLogin: Bool { hasImplementation || platform == .suunto }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(platform.displayName).font(.headline)
                Spacer()
                if isLoggedIn {
                    Button("注销", action: onLogout)
                        .font(.caption).foregroundStyle(.secondary)
                } else if !canLogin {
                    Text("待接入").font(.caption).foregroundStyle(.orange)
                }
            }
            if isLoggedIn {
                Text("✅ 已登录").font(.caption).foregroundStyle(.green)
                Button("重新登录", action: loginAction)
                    .font(.subheadline)
                    .buttonStyle(.bordered)
                    .tint(.brandBlue)
            } else if !canLogin {
                Text("未登录").font(.caption).foregroundStyle(.secondary)
                Text("该平台正在接入中，登录入口稍后开放。")
                    .font(.caption).foregroundStyle(.secondary)
            } else {
                Text("未登录").font(.caption).foregroundStyle(.secondary)
                HStack(spacing: 8) {
                    switch platform.loginMethod {
                    case .account, .apiKey:
                        // 百锐腾没有账号密码直登接口（BrytonAPI.login 直接抛错），
                        // 只给网页登录一个按钮，不摆一个点进去就报错的表单入口。
                        if platform == .bryton {
                            Button("网页登录", action: onWebLogin)
                        } else {
                            Button("登录\(platform.displayName)", action: onFormLogin)
                            // 与登录页同一口径：只给真能取到凭证的平台摆“网页登录”按钮。
                            if WebLoginURL.supportsWebLogin(platform) {
                                Button("网页登录", action: onWebLogin)
                            }
                        }
                    case .web:
                        Button("网页登录", action: onWebLogin)
                        Button("账号密码", action: onFormLogin)
                    case .oauth2:
                        if WebLoginURL.oauthURL(for: platform) != nil {
                            Button("浏览器授权登录", action: onOAuthLogin)
                        } else if let reason = WebLoginURL.oauthUnavailableReason(for: platform) {
                            Text(reason).font(.caption).foregroundStyle(.secondary)
                        } else {
                            Text("OAuth 授权地址待接入")
                                .font(.caption).foregroundStyle(.secondary)
                        }
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
        case .account, .apiKey: platform == .bryton ? onWebLogin() : onFormLogin()
        case .oauth2: onOAuthLogin()
        default: onWebLogin()
        }
    }
}

// 待真机验证
// 登录页：顶部品牌横幅；一键登录检测；Outbase 独立专区（手机号验证码，在 WebView 里完成）；
// 已登录平台卡片（条数与上下传统计、可重新登录）；WebView 登录 + 原生账号密码表单兜底；
// Suunto / Wahoo 等 OAuth 走系统浏览器（ASWebAuthenticationSession）。
//
// 接口说明（以骨架组 Core/Models.swift 为准）：
// - 登录方式按 DataSource.loginMethod 分流：.account 走原生表单调 platform.login；
//   .web 走 WKWebView 打开各平台文件里的 static loginURL；.smsCode（Outbase）在 WebView
//   里完成手机号验证码登录，登录后从页面取 Sessionid 调 OutbaseAPI.setSessionId 注入；
//   .apiKey（Intervals.icu）走原生表单，用户名固定 "API_KEY"，密码就是 Key；
//   .oauth2（松拓）走 ASWebAuthenticationSession，授权地址待 SuuntoAPI 落盘后填。
// - PlatformAPI 协议里没有 logout()：退出登录用骨架组 Core/Storage.swift 的
//   LoginStore.clearToken / clearCredentials（清钥匙串里的凭证）。
// - 登录成功后登录态由平台实现自己保存（钥匙串）；本页只做“登录后重新检测一次
//   isLoggedIn()，通过就刷新卡片”，不自己拼 token。
// - 没有对应实现的平台（PlatformRegistry 返回 nil：Strava、Wahoo、MyWhoosh、Zwift、
//   松拓、百锐腾、CyCity）显示“待接入”，不编造登录逻辑。

import AuthenticationServices
import SwiftUI
import WebKit

// MARK: - 网页登录地址（各平台文件里的 static loginURL，原样引用，不编造地址）

enum WebLoginURL {
    static func url(for source: DataSource) -> URL? {
        let string: String?
        switch source {
        case .igpsport, .igpsportIntl: string = IgpsportAPI.loginURL
        case .xingzhe: string = XingzheAPI.loginURL
        case .magene: string = MageneAPI.loginURL
        case .blackbird: string = BlackbirdAPI.loginURL
        case .giant: string = GiantAPI.loginURL
        case .outbase: string = OutbaseAPI.loginURL
        case .intervalsIcu: string = IntervalsIcuAPI.loginURL
        case .garminIntl: string = GarminIntlAPI.loginURL
        case .garminCN: string = GarminCNAPI.loginURL
        default: string = nil // 该平台文件没有公开网页登录地址，待平台组提供。
        }
        guard let string else { return nil }
        return URL(string: string)
    }

    /// OAuth 授权地址。松拓 SuuntoAPI 尚未落盘，这里先返回 nil（按钮显示“待接入”）；
    /// SuuntoAPI 落盘后在这里填它的授权地址，ASWebAuthenticationSession 的流程已写好。
    static func oauthURL(for source: DataSource) -> URL? {
        nil
    }
}

// MARK: - 登录状态（本页自己维护；名字特意不叫 LoginStore，避免与 Core/Storage.swift 的同名类型冲突）

final class LoginPageStore: ObservableObject {
    @Published var loggedIn: [String: Bool] = [:]
    @Published var checking: Bool = false
    @Published var lastCheckText = "尚未检测"
    @Published var autoCheck = UserDefaults.standard.bool(forKey: "login_auto_check")

    private let platformProvider: (DataSource) -> (any PlatformAPI)?

    init(platformProvider: @escaping (DataSource) -> (any PlatformAPI)? = PlatformRegistry.platform) {
        self.platformProvider = platformProvider
    }

    func platform(for ds: DataSource) -> (any PlatformAPI)? { platformProvider(ds) }

    /// 一键检测全部平台登录态。
    func checkAll() async {
        await MainActor.run { checking = true }
        var valid = 0, invalid = 0, pending = 0
        for ds in DataSource.allCases {
            guard let platform = platformProvider(ds) else {
                pending += 1
                await MainActor.run { loggedIn[ds.rawValue] = false }
                continue
            }
            let ok = await platform.isLoggedIn()
            await MainActor.run { loggedIn[ds.rawValue] = ok }
            if ok { valid += 1 } else { invalid += 1 }
        }
        let text = "已登录 \(valid) 个 · 未登录 \(invalid) 个 · 待接入 \(pending) 个"
        await MainActor.run {
            checking = false
            lastCheckText = text
        }
    }

    func setAutoCheck(_ value: Bool) {
        autoCheck = value
        UserDefaults.standard.set(value, forKey: "login_auto_check")
    }
}

// MARK: - 登录页

struct LoginView: View {
    @EnvironmentObject private var engine: SyncEngine
    @StateObject private var store = LoginPageStore()
    @State private var webLoginPlatform: DataSource?
    @State private var formLoginPlatform: DataSource?
    @State private var showOutbase = false

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                brandBanner
                checkCard
                outbaseSection
                platformCards
            }
            .padding()
        }
        .navigationTitle("登录")
        .navigationBarTitleDisplayMode(.inline)
        .task {
            if store.autoCheck {
                await store.checkAll()
            }
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

    // MARK: 顶部品牌横幅
    private var brandBanner: some View {
        VStack(spacing: 6) {
            Image(systemName: "bicycle.circle.fill")
                .font(.system(size: 56))
                .foregroundStyle(.brandBlue)
            Text("鸡翅幸哲迈进Ob")
                .font(.title2.bold())
            Text("21 个平台运动数据互传 · 免费开源")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 12)
        .background(Color.brandBlue.opacity(0.08))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    // MARK: 一键登录检测
    private var checkCard: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("登录检测").font(.headline)
                Spacer()
                Toggle("自动检查", isOn: Binding(
                    get: { store.autoCheck },
                    set: { store.setAutoCheck($0) }
                ))
                .labelsHidden()
                Text("自动检查").font(.caption).foregroundStyle(.secondary)
            }
            Button {
                Task { await store.checkAll() }
            } label: {
                HStack {
                    if store.checking { ProgressView().tint(.white) }
                    Text(store.checking ? "正在检测…" : "一键检测全部平台登录状态")
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
                .background(Color.brandBlue)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .disabled(store.checking)
            Text(store.lastCheckText).font(.caption).foregroundStyle(.secondary)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    // MARK: Outbase 独立专区（手机号验证码，在 WebView 里完成）
    private var outbaseSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Outbase 专区").font(.headline)
                Spacer()
                Text("手机号验证码登录").font(.caption).foregroundStyle(.secondary)
            }
            Text("Outbase 用手机号 + 短信验证码登录，在网页里完成，与其他平台的账号密码登录分开。登录成功后 App 会从页面取 Sessionid 保存。")
                .font(.caption)
                .foregroundStyle(.secondary)
            Button(showOutbase ? "收起" : "手机号验证码登录") {
                showOutbase.toggle()
            }
            .font(.subheadline.bold())
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
            .background(Color.brandBlue.opacity(0.12))
            .foregroundStyle(.brandBlue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            if showOutbase {
                Button("打开 Outbase 登录页") {
                    webLoginPlatform = .outbase
                }
                .font(.subheadline)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
                .background(Color.brandBlue)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                Text("在打开的网页里输入手机号、收短信验证码登录；登录成功后 App 自动保存登录态。")
                    .font(.caption2).foregroundStyle(.tertiary)
            }
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    // MARK: 平台卡片
    private var platformCards: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("全部平台").font(.headline)
            ForEach(DataSource.allCases) { ds in
                PlatformLoginCard(
                    platform: ds,
                    isLoggedIn: store.loggedIn[ds.rawValue] ?? false,
                    hasImplementation: store.platform(for: ds) != nil,
                    stats: engine.statsByPlatform[ds.rawValue] ?? PlatformStats(),
                    onWebLogin: { webLoginPlatform = ds },
                    onFormLogin: { formLoginPlatform = ds },
                    onOAuthLogin: { startOAuth(for: ds) },
                    onLogout: { logout(ds) }
                )
            }
        }
    }

    // MARK: OAuth（系统浏览器）
    private func startOAuth(for ds: DataSource) {
        guard let platform = store.platform(for: ds),
              let url = WebLoginURL.oauthURL(for: ds) else { return }
        let session = ASWebAuthenticationSession(
            url: url, callbackURLScheme: "jichiob") { _, _ in
            Task {
                let ok = await platform.isLoggedIn()
                await MainActor.run { store.loggedIn[ds.rawValue] = ok }
            }
        }
        session.presentationContextProvider = OAuthPresentationContext()
        session.prefersEphemeralWebBrowserSession = false
        session.start()
    }

    /// 退出登录：清掉钥匙串里的凭证（骨架组 Storage.swift 的 LoginStore）。
    private func logout(_ ds: DataSource) {
        LoginStore.clearToken(for: ds)
        LoginStore.clearCredentials(for: ds)
        store.loggedIn[ds.rawValue] = false
    }
}

// MARK: - 平台卡片（按钮按 DataSource.loginMethod 分流）

private struct PlatformLoginCard: View {
    let platform: DataSource
    let isLoggedIn: Bool
    let hasImplementation: Bool
    let stats: PlatformStats
    let onWebLogin: () -> Void
    let onFormLogin: () -> Void
    let onOAuthLogin: () -> Void
    let onLogout: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Circle()
                    .fill(isLoggedIn ? Color.green : (hasImplementation ? Color.gray : Color.orange))
                    .frame(width: 10, height: 10)
                Text(platform.displayName).font(.headline)
                Spacer()
                if !hasImplementation {
                    Text("待接入").font(.caption).foregroundStyle(.orange)
                } else if isLoggedIn {
                    Text("已登录").font(.caption).foregroundStyle(.green)
                } else {
                    Text("未登录").font(.caption).foregroundStyle(.secondary)
                }
            }
            Text("登录方式：\(platform.loginMethod.displayName)")
                .font(.caption).foregroundStyle(.secondary)
            if isLoggedIn {
                HStack(spacing: 16) {
                    Label("下载 \(stats.downloaded) 条", systemImage: "arrow.down.circle")
                    Label("上传 \(stats.uploaded) 条", systemImage: "arrow.up.circle")
                }
                .font(.caption)
                .foregroundStyle(.secondary)
            }
            HStack(spacing: 8) {
                if !hasImplementation {
                    Text("该平台正在接入中，登录入口稍后开放。")
                        .font(.caption).foregroundStyle(.secondary)
                } else if isLoggedIn {
                    Button("重新登录", action: loginAction)
                    Button("退出登录", action: onLogout)
                        .foregroundStyle(.red)
                } else {
                    switch platform.loginMethod {
                    case .account:
                        Button("账号密码登录", action: onFormLogin)
                        if WebLoginURL.url(for: platform) != nil {
                            Button("网页登录", action: onWebLogin)
                        }
                    case .web:
                        Button("网页登录", action: onWebLogin)
                        Button("账号密码", action: onFormLogin)
                    case .oauth2:
                        // 授权地址待 SuuntoAPI 落盘后在 WebLoginURL.oauthURL 里填；
                        // 流程（ASWebAuthenticationSession）已写好，地址一到就能用。
                        if WebLoginURL.oauthURL(for: platform) != nil {
                            Button("浏览器授权登录", action: onOAuthLogin)
                        } else {
                            Text("OAuth 授权地址待接入")
                                .font(.caption).foregroundStyle(.secondary)
                        }
                        Button("网页登录", action: onWebLogin)
                    case .smsCode:
                        Button("手机号验证码登录", action: onWebLogin)
                    case .apiKey:
                        Button("填写 API Key 登录", action: onFormLogin)
                    }
                }
            }
            .font(.subheadline)
            .buttonStyle(.bordered)
            .tint(.brandBlue)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    private func loginAction() {
        switch platform.loginMethod {
        case .account, .apiKey: onFormLogin()
        default: onWebLogin()
        }
    }
}

// MARK: - WebView 登录（登录成功自动保存登录态）

private struct WebLoginSheet: View {
    let platform: DataSource
    @ObservedObject var store: LoginPageStore
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            Group {
                if let url = WebLoginURL.url(for: platform) {
                    WebLoginWebView(url: url, platform: platform, store: store) {
                        dismiss()
                    }
                } else {
                    ContentUnavailableView(
                        "登录页待接入",
                        systemImage: "globe",
                        description: Text("\(platform.displayName) 的网页登录地址由平台组提供，接入后在这里打开。也可以先用“账号密码登录”。"))
                }
            }
            .navigationTitle("\(platform.displayName) 网页登录")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("关闭") { dismiss() }
                }
            }
        }
    }
}

/// WKWebView 包装：页面加载完成后检测一次登录态，通过即自动保存并关闭。
/// Outbase 额外处理：从页面 Cookie / localStorage 里取 Sessionid，
/// 调 OutbaseAPI.setSessionId 注入（OutbaseAPI.swift 注明“App 层登录页拿到
/// Sessionid 后调 setSessionId 注入”；Sessionid 实际存哪、取不取得到，待真机验证）。
private struct WebLoginWebView: UIViewRepresentable {
    let url: URL
    let platform: DataSource
    @ObservedObject var store: LoginPageStore
    let onSuccess: () -> Void

    func makeCoordinator() -> Coordinator { Coordinator(self) }

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}

    final class Coordinator: NSObject, WKNavigationDelegate {
        let parent: WebLoginWebView
        init(_ parent: WebLoginWebView) { self.parent = parent }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            Task {
                // Outbase：先试着从页面取 Sessionid 注入，再检测登录态。
                if parent.platform == .outbase,
                   let outbase = parent.store.platform(for: .outbase) as? OutbaseAPI {
                    if let sessionId = await self.extractSessionId(from: webView),
                       !sessionId.isEmpty {
                        outbase.setSessionId(sessionId)
                    }
                }
                guard let platform = parent.store.platform(for: parent.platform) else { return }
                if await platform.isLoggedIn() {
                    await MainActor.run {
                        parent.store.loggedIn[parent.platform.rawValue] = true
                        parent.onSuccess()
                    }
                }
            }
        }

        /// 从 Cookie / localStorage 里找 Sessionid。取不到返回 nil，不报错、不崩溃。
        private func extractSessionId(from webView: WKWebView) async -> String? {
            let scripts = [
                "document.cookie",
                "localStorage.getItem('Sessionid')",
                "sessionStorage.getItem('Sessionid')",
            ]
            for script in scripts {
                let value = try? await webView.evaluateJavaScript(script) as? String
                guard let value, !value.isEmpty else { continue }
                if let found = Self.sessionId(in: value) { return found }
            }
            return nil
        }

        private static func sessionId(in text: String) -> String? {
            // Cookie 形如 "Sessionid=xxx; ..."；localStorage 直接就是值本身。
            if text.contains("Sessionid=") {
                let parts = text.split(separator: ";")
                for part in parts {
                    let kv = part.trimmingCharacters(in: .whitespaces).split(separator: "=", maxSplits: 1)
                    if kv.count == 2, kv[0] == "Sessionid" { return String(kv[1]) }
                }
                return nil
            }
            return text.count > 8 ? text : nil
        }
    }
}

// MARK: - 原生账号密码表单（WebView 兜底；API Key 平台用户名固定 "API_KEY"）

private struct NativeLoginSheet: View {
    let platform: DataSource
    @ObservedObject var store: LoginPageStore
    @Environment(\.dismiss) private var dismiss
    @State private var username = ""
    @State private var password = ""
    @State private var message: String?
    @State private var busy = false

    private var isApiKey: Bool { platform.loginMethod == .apiKey }

    var body: some View {
        NavigationStack {
            Form {
                Section(isApiKey ? "\(platform.displayName) API Key 登录" : "\(platform.displayName) 账号登录") {
                    if isApiKey {
                        Text("用户名固定为 API_KEY，下面填你的 API Key（在 Intervals.icu 设置页底部复制）。")
                            .font(.caption).foregroundStyle(.secondary)
                        SecureField("API Key", text: $password)
                    } else {
                        TextField("账号 / 手机号 / 邮箱", text: $username)
                            .textInputAutocapitalization(.never)
                            .autocorrectionDisabled()
                        SecureField("密码", text: $password)
                    }
                }
                if let message {
                    Section { Text(message).font(.caption).foregroundStyle(.secondary) }
                }
                Section {
                    Button(busy ? "正在登录…" : "登录") { login() }
                        .disabled(busy || password.isEmpty || (!isApiKey && username.isEmpty))
                }
                Section {
                    Text("账号密码只发给 \(platform.displayName) 官方登录接口，保存在本机钥匙串，不上传到作者服务器。")
                        .font(.caption2).foregroundStyle(.tertiary)
                }
            }
            .navigationTitle("\(platform.displayName) 登录")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("取消") { dismiss() }
                }
            }
        }
    }

    private func login() {
        guard let platformImpl = store.platform(for: platform) else {
            message = "\(platform.displayName) 待接入"
            return
        }
        busy = true
        let user = isApiKey ? "API_KEY" : username
        Task {
            do {
                try await platformImpl.login(username: user, password: password)
                let ok = await platformImpl.isLoggedIn()
                await MainActor.run {
                    busy = false
                    store.loggedIn[platform.rawValue] = ok
                    if ok { dismiss() } else { message = "登录未成功，请检查账号密码" }
                }
            } catch {
                await MainActor.run {
                    busy = false
                    message = "登录失败：\(error.localizedDescription)"
                }
            }
        }
    }
}

// MARK: - ASWebAuthenticationSession 弹出锚点

private final class OAuthPresentationContext: NSObject, ASWebAuthenticationPresentationContextProviding {
    func presentationAnchor(for session: ASWebAuthenticationSession) -> ASPresentationAnchor {
        ASPresentationAnchor()
    }
}

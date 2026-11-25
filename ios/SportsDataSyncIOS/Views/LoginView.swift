// 待真机验证
// 登录页：顶部品牌横幅；一键登录检测；Outbase 独立专区（手机号验证码，在 WebView 里完成）；
// 已登录平台卡片（条数与上下传统计、可重新登录）；WebView 登录 + 原生账号密码表单兜底；
// 松拓 / Strava 走系统浏览器（ASWebAuthenticationSession，回调 jichiob）。
//
// 接口说明（以骨架组 Core/Models.swift 为准）：
// - 登录方式按 DataSource.loginMethod 分流：.account 走原生表单调 platform.login；
//   .web 走 WKWebView 打开各平台文件里的 static loginURL；.smsCode（Outbase）在 WebView
//   里完成手机号验证码登录，登录后从页面取 Sessionid 存 LoginStore；
//   .apiKey（Intervals.icu）走原生表单，用户名固定 "API_KEY"，密码就是 Key；
//   .oauth2（松拓）与 Strava 走 ASWebAuthenticationSession，回调拿到 code 后调平台的
//   handleAuthorizationCode 换 token（clientId 为空时提示先去关于页开发者凭证里填）。
// - 网页登录取凭证（iGPSPORT/行者/黑鸟/高驰/Outbase）：登录完成后从 WKWebView 的
//   Cookie / localStorage 里取对应平台的 token/sessionid/cookie，按各平台文件头注释
//   的名字取，存进 LoginStore.saveToken(_:for:)，再关弹窗、刷新卡片；取不到不静默关弹窗，
//   页内提示用户点“重新检测”，再取不到给明确文案。平台侧从 LoginStore 读凭证（高驰已是，
//   其余平台由平台组接；本页只负责存进 LoginStore、不往随手新建的平台实例上写）。
// - PlatformAPI 协议里没有 logout()：退出登录用骨架组 Core/Storage.swift 的
//   LoginStore.clearToken / clearCredentials（清钥匙串里的凭证）。
// - 一键检测：网页登录类平台以钥匙串登录态为准（平台实例是内存态，刚存的凭证它还不知道），
//   注册表未接入的平台同样以钥匙串为准，已登上的 OAuth 登录态不被检测抹掉。
// - 松拓 / Strava 的 OAuth 不依赖注册表：授权流程直接建平台实例换 token，所以卡片上有
//   浏览器授权入口；注册表补上后行为不变。

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
        case .corosCN: string = CorosCNAPI.loginURL
        case .corosIntl: string = CorosIntlAPI.loginURL
        default: string = nil // 该平台文件没有公开网页登录地址，待平台组提供。
        }
        guard let string else { return nil }
        return URL(string: string)
    }

    /// OAuth 授权地址（松拓 / Strava，走 ASWebAuthenticationSession，回调 jichiob）。
    /// 约定：SuuntoAPI / StravaAPI 的 authorizationURL(clientId:) 拼出的 redirect_uri
    /// 必须用 jichiob:// 回调（Info.plist 注册该 Scheme），否则授权完跳不回 App。
    /// clientId 为空时返回 nil——卡片上提示用户先去关于页开发者凭证里填，不打开空白授权页。
    static func oauthURL(for source: DataSource) -> URL? {
        let string: String
        switch source {
        case .suunto:
            let clientId = AppConfig.shared.suuntoClientId
            guard !clientId.isEmpty else { return nil }
            string = SuuntoAPI.authorizationURL(clientId: clientId)
        case .strava:
            let clientId = AppConfig.shared.stravaClientId
            guard !clientId.isEmpty else { return nil }
            string = StravaAPI.authorizationURL(clientId: clientId)
        default:
            return nil
        }
        return URL(string: string)
    }

    /// OAuth 按钮点不了时告诉用户缺什么（目前只缺 clientId 这一种情况）。
    static func oauthUnavailableReason(for source: DataSource) -> String? {
        switch source {
        case .suunto:
            return AppConfig.shared.suuntoClientId.isEmpty
                ? "松拓 Client ID 还没填：请先去关于页「开发者凭证」里填写，再回来授权登录。"
                : nil
        case .strava:
            return AppConfig.shared.stravaClientId.isEmpty
                ? "Strava Client ID 还没填：请先去关于页「开发者凭证」里填写，再回来授权登录。"
                : nil
        default:
            return nil
        }
    }
}

// MARK: - OAuth 登录共用流程（松拓 / Strava，登录页与实验室共用）

/// ASWebAuthenticationSession + jichiob 回调 + 授权码换 token。
/// 失败原因写进 store.oauthMessage，由调用方弹提示；成功直接把卡片置为已登录。
/// 注意：SuuntoAPI.authorizationURL / handleAuthorizationCode、StravaAPI 的
/// handleAuthorizationCode、AppConfig 的 stravaClientId/stravaClientSecret 由平台组/
/// 骨架组按约定提供；授权地址里的 redirect_uri 必须是 jichiob://，否则回调收不到。
final class OAuthLoginHelper: NSObject, ASWebAuthenticationPresentationContextProviding {
    private var session: ASWebAuthenticationSession?

    func presentationAnchor(for session: ASWebAuthenticationSession) -> ASPresentationAnchor {
        ASPresentationAnchor()
    }

    func start(for ds: DataSource, store: LoginPageStore) {
        guard let url = WebLoginURL.oauthURL(for: ds) else {
            store.oauthMessage = WebLoginURL.oauthUnavailableReason(for: ds)
                ?? "\(ds.displayName) 的授权地址暂不可用，请稍后再试。"
            return
        }
        // 会话和弹出锚点要由本对象持有：ASWebAuthenticationSession 的
        // presentationContextProvider 是弱引用，临时对象会立刻释放导致登录弹不出来，
        // 会话本身也必须留着，否则开始后就被释放。
        let session = ASWebAuthenticationSession(url: url, callbackURLScheme: "jichiob") { callbackURL, error in
            Task {
                if let error {
                    await MainActor.run {
                        store.oauthMessage = "授权未完成：\(error.localizedDescription)"
                    }
                    return
                }
                guard let callbackURL,
                      let code = URLComponents(url: callbackURL, resolvingAgainstBaseURL: false)?
                        .queryItems?.first(where: { $0.name == "code" })?.value,
                      !code.isEmpty else {
                    await MainActor.run {
                        store.oauthMessage = "授权回调里没有拿到授权码，请重试。"
                    }
                    return
                }
                do {
                    switch ds {
                    case .suunto:
                        try await SuuntoAPI().handleAuthorizationCode(code)
                    case .strava:
                        try await StravaAPI().handleAuthorizationCode(code)
                    default:
                        break
                    }
                    await MainActor.run { store.loggedIn[ds.rawValue] = true }
                } catch {
                    await MainActor.run {
                        store.oauthMessage = "\(ds.displayName) 换 token 失败：\(error.localizedDescription)"
                    }
                }
            }
        }
        session.presentationContextProvider = self
        session.prefersEphemeralWebBrowserSession = false
        self.session = session
        session.start()
    }
}

// MARK: - 登录状态（本页自己维护；名字特意不叫 LoginStore，避免与 Core/Storage.swift 的同名类型冲突）

final class LoginPageStore: ObservableObject {
    @Published var loggedIn: [String: Bool] = [:]
    @Published var checking: Bool = false
    @Published var lastCheckText = "尚未检测"
    @Published var oauthMessage: String?
    @Published var autoCheck = UserDefaults.standard.bool(forKey: "login_auto_check")

    private let platformProvider: (DataSource) -> (any PlatformAPI)?

    init(platformProvider: @escaping (DataSource) -> (any PlatformAPI)? = PlatformRegistry.platform) {
        self.platformProvider = platformProvider
    }

    func platform(for ds: DataSource) -> (any PlatformAPI)? { platformProvider(ds) }

    /// 网页登录类平台：凭证只放钥匙串（LoginStore），平台实例是内存态，刚存的凭证它
    /// 还不知道，所以检测时钥匙串有凭证就算已登录，不只看实例的 isLoggedIn()。
    private static let webCredentialPlatforms: Set<DataSource> = [
        .igpsport, .igpsportIntl, .xingzhe, .blackbird, .corosCN, .corosIntl, .outbase,
    ]

    /// 一键检测全部平台登录态。
    func checkAll() async {
        await MainActor.run { checking = true }
        var valid = 0, invalid = 0, pending = 0
        for ds in DataSource.allCases {
            guard let platform = platformProvider(ds) else {
                // 注册表未接入：以钥匙串登录态为准；已通过 OAuth 登上的不抹掉。
                let previous = await MainActor.run { loggedIn[ds.rawValue] ?? false }
                let ok = LoginStore.isLoggedIn(ds) || previous
                await MainActor.run { loggedIn[ds.rawValue] = ok }
                if ok { valid += 1 } else { pending += 1 }
                continue
            }
            let ok: Bool
            if Self.webCredentialPlatforms.contains(ds) {
                if LoginStore.isLoggedIn(ds) {
                    ok = true
                } else {
                    ok = await platform.isLoggedIn()
                }
            } else {
                ok = await platform.isLoggedIn()
            }
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
    // OAuth 登录共用流程（松拓 / Strava）：会话与锚点由 helper 持有，见文件上方。
    @State private var oauthHelper = OAuthLoginHelper()

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

    // MARK: 顶部品牌横幅
    private var brandBanner: some View {
        VStack(spacing: 6) {
            Image(systemName: "bicycle.circle.fill")
                .font(.system(size: 56))
                .foregroundStyle(Color.brandBlue)
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
            .foregroundStyle(Color.brandBlue)
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

    // MARK: OAuth（系统浏览器，松拓 / Strava）
    private func startOAuth(for ds: DataSource) {
        oauthHelper.start(for: ds, store: store)
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

    /// 松拓 / Strava 的 OAuth 不走注册表（授权流程直接建平台实例换 token），
    /// 所以即使注册表还没接进来，卡片上也有浏览器授权入口。
    private var canOAuthLogin: Bool { platform == .suunto || platform == .strava }
    private var canLogin: Bool { hasImplementation || canOAuthLogin }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Circle()
                    .fill(isLoggedIn ? Color.green : (canLogin ? Color.gray : Color.orange))
                    .frame(width: 10, height: 10)
                Text(platform.displayName).font(.headline)
                Spacer()
                if !canLogin {
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
                if !canLogin {
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
                        // 目前只有 Strava 是网页登录方式：走浏览器授权，不走 WKWebView。
                        if platform == .strava {
                            oauthButton
                        } else {
                            Button("网页登录", action: onWebLogin)
                            Button("账号密码", action: onFormLogin)
                        }
                    case .oauth2:
                        oauthButton
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

    /// 浏览器授权登录按钮：授权地址有了就显示按钮；缺 clientId 就告诉用户先去填，
    /// 不显示一句没头没尾的“待接入”。
    private var oauthButton: some View {
        Group {
            if WebLoginURL.oauthURL(for: platform) != nil {
                Button("浏览器授权登录", action: onOAuthLogin)
            } else if let reason = WebLoginURL.oauthUnavailableReason(for: platform) {
                Text(reason).font(.caption).foregroundStyle(.secondary)
            } else {
                Text("OAuth 授权地址待接入")
                    .font(.caption).foregroundStyle(.secondary)
            }
        }
    }

    private func loginAction() {
        switch platform.loginMethod {
        case .account, .apiKey: onFormLogin()
        case .oauth2: onOAuthLogin()
        case .web: platform == .strava ? onOAuthLogin() : onWebLogin()
        case .smsCode: onWebLogin()
        }
    }
}

// MARK: - WebView 登录（登录成功自动保存登录态）
// 内部可见：实验室页（LabLoginView）复用同一套登录弹窗，不另写登录逻辑。
struct WebLoginSheet: View {
    let platform: DataSource
    @ObservedObject var store: LoginPageStore
    @Environment(\.dismiss) private var dismiss
    @State private var notice: String?
    @State private var checkNonce = 0

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Group {
                    if let url = WebLoginURL.url(for: platform) {
                        WebLoginWebView(url: url, platform: platform, store: store,
                                        checkNonce: $checkNonce) {
                            dismiss()
                        } onFailure: { message in
                            notice = message
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    } else {
                        ContentUnavailableView(
                            "登录页待接入",
                            systemImage: "globe",
                            description: Text("\(platform.displayName) 的网页登录地址由平台组提供，接入后在这里打开。也可以先用“账号密码登录”。"))
                    }
                }
                if WebLoginURL.url(for: platform) != nil {
                    VStack(spacing: 8) {
                        Text(webLoginHint)
                            .font(.caption).foregroundStyle(.secondary)
                        if let notice {
                            Text(notice).font(.caption).foregroundStyle(.orange)
                        }
                        Button("我已在网页里登录，重新检测") { checkNonce += 1 }
                            .font(.subheadline.bold())
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(.secondarySystemBackground))
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

    /// 页内常驻提示：告诉用户登完 App 会自动取凭证关弹窗，取不到时点“重新检测”。
    private var webLoginHint: String {
        switch platform {
        case .igpsport, .igpsportIntl:
            return "在网页里登录 iGPSPORT 账号后，App 会自动从网页取 token 并关闭本页；如果登录后本页没有自动关闭，请点下方“重新检测”。"
        case .xingzhe:
            return "在网页里登录行者账号后，App 会自动从网页取 sessionid 并关闭本页；如果登录后本页没有自动关闭，请点下方“重新检测”。"
        case .blackbird:
            return "在网页里登录黑鸟账号后，App 会自动从网页取 Cookie 并关闭本页；如果登录后本页没有自动关闭，请点下方“重新检测”。"
        case .corosCN, .corosIntl:
            return "在网页里登录高驰账号后，App 会自动从网页取 CPL-coros-token 并关闭本页；如果登录后本页没有自动关闭，请点下方“重新检测”。"
        case .outbase:
            return "在网页里输入手机号、收短信验证码登录后，App 会自动取 Sessionid 并关闭本页；如果登录后本页没有自动关闭，请点下方“重新检测”。"
        default:
            return "在网页里登录成功后，App 会自动检测并关闭本页；如果登录后本页没有自动关闭，请点下方“重新检测”。"
        }
    }
}

/// WKWebView 包装：页面加载完成后从 Cookie / localStorage 取对应平台的凭证，
/// 存进 LoginStore（钥匙串），通过即自动保存并关闭。
/// 凭证名以各平台文件头注释为准：
/// - iGPSPORT：localStorage persist:app-store → global.token；
/// - 行者：Cookie sessionid；
/// - 黑鸟：完整 Cookie；
/// - 高驰：Cookie CPL-coros-token / CPL-coros-region，存成 "token;regionId;cookie" 串
///   （CorosAPI 的 CorosCredential 就是这个格式）；
/// - Outbase：Cookie / localStorage / sessionStorage 里的 Sessionid。
/// 取不到不静默关弹窗：只在用户点“重新检测”时才给明确提示，初次打开登录页时不报错。
private struct WebLoginWebView: UIViewRepresentable {
    let url: URL
    let platform: DataSource
    @ObservedObject var store: LoginPageStore
    @Binding var checkNonce: Int
    let onSuccess: () -> Void
    let onFailure: (String) -> Void

    func makeCoordinator() -> Coordinator { Coordinator(self) }

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        context.coordinator.webView = webView
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        // 每次刷新都同步最新的回调（sheet 里的 notice setter 不能用创建时的旧闭包）。
        context.coordinator.parent = self
        if checkNonce != context.coordinator.lastNonce {
            context.coordinator.lastNonce = checkNonce
            Task { await context.coordinator.checkNow(reportFailure: true) }
        }
    }

    final class Coordinator: NSObject, WKNavigationDelegate {
        var parent: WebLoginWebView
        var webView: WKWebView?
        var lastNonce = 0
        init(_ parent: WebLoginWebView) { self.parent = parent }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            self.webView = webView
            Task { await checkNow(reportFailure: false) }
        }

        /// 取凭证 → 存 LoginStore → 刷新卡片 → 关弹窗。
        /// 取不到时不关弹窗；reportFailure 为 true（用户点了“重新检测”）才给明确提示。
        func checkNow(reportFailure: Bool) async {
            guard let webView else { return }
            if let value = await extractCredential(from: webView), !value.isEmpty {
                LoginStore.saveToken(value, for: parent.platform)
                await MainActor.run {
                    parent.store.loggedIn[parent.platform.rawValue] = true
                    parent.onSuccess()
                }
                return
            }
            // 兜底：有些平台的实例自己能从钥匙串/内存认到登录态。
            if let platform = parent.store.platform(for: parent.platform),
               await platform.isLoggedIn() {
                await MainActor.run {
                    parent.store.loggedIn[parent.platform.rawValue] = true
                    parent.onSuccess()
                }
                return
            }
            if reportFailure {
                let message = "未取到\(parent.platform.displayName)的登录凭证。请确认已经在网页里登录成功（不要只打开登录页），再点一次“重新检测”；也可以直接关掉本页稍后再试。"
                await MainActor.run { parent.onFailure(message) }
            }
        }

        /// 按平台取凭证（存进 LoginStore 的那份值）。取不到返回 nil。
        private func extractCredential(from webView: WKWebView) async -> String? {
            switch parent.platform {
            case .igpsport, .igpsportIntl:
                return await igpsportToken(from: webView)
            case .xingzhe:
                let cookies = await cookies(suffix: "imxingzhe.com", from: webView)
                return cookies.first(where: { $0.name.lowercased() == "sessionid" })?.value
            case .blackbird:
                let cookies = await cookies(suffix: "blackbirdsport.com", from: webView)
                guard !cookies.isEmpty else { return nil }
                return cookies.map { "\($0.name)=\($0.value)" }.joined(separator: "; ")
            case .corosCN, .corosIntl:
                let cookies = await cookies(suffix: "coros.com", from: webView)
                guard let token = cookies.first(where: { $0.name == "CPL-coros-token" })?.value,
                      !token.isEmpty else { return nil }
                let region = cookies.first(where: { $0.name == "CPL-coros-region" })?.value
                let regionId = Int(region ?? "") ?? (parent.platform == .corosCN ? 2 : 1)
                let cookieString = cookies.map { "\($0.name)=\($0.value)" }.joined(separator: "; ")
                return "\(token);\(regionId);\(cookieString)"
            case .outbase:
                if let sessionId = await extractSessionId(from: webView) { return sessionId }
                let cookies = await cookies(suffix: "outbase.cn", from: webView)
                return cookies.first(where: { $0.name.lowercased() == "sessionid" })?.value
            default:
                return nil
            }
        }

        /// 本 WebView 自己的 Cookie 仓里取指定域名的 Cookie。
        private func cookies(suffix: String, from webView: WKWebView) async -> [HTTPCookie] {
            await withCheckedContinuation { continuation in
                webView.configuration.websiteDataStore.httpCookieStore.getAllCookies { all in
                    continuation.resume(returning: all.filter { $0.domain.hasSuffix(suffix) })
                }
            }
        }

        /// iGPSPORT：localStorage persist:app-store → global.token。
        private func igpsportToken(from webView: WKWebView) async -> String? {
            let scripts = [
                "(function(){try{var s=localStorage.getItem('persist:app-store');if(!s)return '';var o=JSON.parse(s);var g=o.global||{};return g.token||o.token||'';}catch(e){return '';}})()",
                "localStorage.getItem('token') || ''",
            ]
            for script in scripts {
                let value = (try? await webView.evaluateJavaScript(script)) as? String
                if let value, !value.isEmpty { return value }
            }
            return nil
        }

        /// 从 Cookie / localStorage 里找 Sessionid。取不到返回 nil，不报错、不崩溃。
        private func extractSessionId(from webView: WKWebView) async -> String? {
            let scripts = [
                "document.cookie",
                "localStorage.getItem('Sessionid')",
                "sessionStorage.getItem('Sessionid')",
            ]
            for script in scripts {
                let value = (try? await webView.evaluateJavaScript(script)) as? String
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
// 内部可见：实验室页（LabLoginView）复用同一套登录弹窗，不另写登录逻辑。
struct NativeLoginSheet: View {
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

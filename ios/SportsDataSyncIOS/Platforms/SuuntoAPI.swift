// 待真机验证
// SuuntoAPI.swift — Suunto（松拓）（对照安卓 SuuntoApi.kt v9.6.9 原样移植）
//
//  双向：下载源 + 上传目标（三步上传已接，待真机验证）。
// 登录：OAuth2 Authorization Code（账号密码直登不存在，login(username:password:) 因此抛 unsupported）。
//   需在 apizone.suunto.com 免费注册开发者应用，取 client_id / client_secret / subscription_key 三凭证
//   （安卓注释：个人申请约 3-4 周审批）。凭证在本文件留空占位，用户自己填。
//   授权页：https://cloudapi-oauth.suunto.com/oauth/authorize
//     ?response_type=code&client_id=..&redirect_uri=jichiob://suunto&state=jichiOB
//     （+ PKCE：clientSecret 为空时自动启用 code_challenge=S256，见 authorizeURL）
//   换 token：POST https://cloudapi-oauth.suunto.com/oauth/token
//     （Basic clientId:clientSecret，grant_type=authorization_code / refresh_token）
//     → access_token + refresh_token（expires_in=86400，24h）
//   业务请求两个头缺一不可：Authorization: Bearer {token} + Ocp-Apim-Subscription-Key: {key}
// 列表：GET https://cloudapi.suunto.com/v3/workouts/?filter-by-modification-time=false&limit=50&offset=0
//       → payload[]（workoutKey / startTime / sport / totalTime / totalDistance）
// 下载 FIT：GET https://cloudapi.suunto.com/v3/workouts/{workoutKey}/fit
// 下载 GPX：GET https://cloudapi.suunto.com/v2/workout/exportGpx/{workoutKey}
// 限流：429 / 5xx 需退避重试（安卓注释；本文件只报 429，不自动重试，待真机验证重试策略）。
// 坐标：Suunto 为国际平台，轨迹 WGS-84，无需坐标转换。
// sport 类型：running=跑步 cycling=骑行 hiking=徒步 swimming=游泳
//   mountaineering=登山 multisport=铁三 fitness=健身 indoor_cycling=室内骑行
// 密钥：client_id / client_secret / subscription_key 全部留空占位，用户自己填。
//       本文件不含任何真实凭证。

import Foundation
import CryptoKit

/// 松拓：仅下载，OAuth2 授权登录。
struct SuuntoAPI: PlatformAPI {
    let source: DataSource = .suunto

    static let apiBase = "https://cloudapi.suunto.com"
    static let authBase = "https://cloudapi-oauth.suunto.com/oauth"
    static let redirectURI = "jichiob://suunto"
    private static let userAgent = "jichi-ob/7.9.6 (Android)"

    /// 内置开发者凭证——默认取 BuiltinSecrets（仓库里是空占位；CI 配了 Secrets 的话，
    /// 编译机上重写过 BuiltinSecrets，取到的就是真实值）。用户在登录页填入后调
    /// setCredentials 注入的优先。
    /// 安卓 SuuntoApi.BUILTIN_CLIENT_ID / BUILTIN_CLIENT_SECRET / BUILTIN_SUBSCRIPTION_KEY 同款占位。
    /// 注意：下面三个 builtin 值只是回落；每次调用真正用的是 AppConfig.shared 里的值
    /// （用户在关于页填了就生效，见 liveClientId/liveClientSecret/liveSubscriptionKey），
    /// 不要直接读 builtin。
    static var builtinClientId = BuiltinSecrets.suuntoClientId
    static var builtinClientSecret = BuiltinSecrets.suuntoClientSecret
    static var builtinSubscriptionKey = BuiltinSecrets.suuntoSubscriptionKey

    /// 每次调用时读 AppConfig（关于页填的值实时生效）；AppConfig 为空才回落到 builtin 占位。
    private static func liveClientId() -> String {
        let v = AppConfig.shared.suuntoClientId
        return v.isEmpty ? builtinClientId : v
    }

    private static func liveClientSecret() -> String {
        let v = AppConfig.shared.suuntoClientSecret
        return v.isEmpty ? builtinClientSecret : v
    }

    private static func liveSubscriptionKey() -> String {
        let v = AppConfig.shared.suuntoSubscriptionKey
        return v.isEmpty ? builtinSubscriptionKey : v
    }

    private let session = SuuntoSession()

    // MARK: - PlatformAPI

    /// 只看钥匙串里有没有登录态，不发网络请求（协议口径）。
    /// 登录态以 JSON 存在 LoginStore（key 是 token_suunto），见 persistSession/restoreSession。
    func isLoggedIn() async -> Bool {
        restoreSession()
        return LoginStore.isLoggedIn(.suunto)
    }

    /// 退出登录：清掉钥匙串里的登录态（内存里的会话一并清掉）。
    func logout() {
        LoginStore.clearToken(for: .suunto)
        session.accessToken = nil
        session.refreshToken = nil
        session.expiresAt = 0
        session.codeVerifier = nil
    }

    /// Suunto 没有账号密码登录：必须走 OAuth2 授权码流程。
    /// App 层：authorizeURL(clientId:) 生成授权页地址 → 用户在网页里授权 → 回调拿到 code →
    /// exchangeCode(code:clientId:clientSecret:subscriptionKey:) 换 token。
    func login(username: String, password: String) async throws {
        throw PlatformError.unsupported(
            "松拓不支持账号密码登录。请先到 apizone.suunto.com 注册开发者应用拿到凭证，" +
            "再用 OAuth2 授权登录（本文件 authorizeURL / exchangeCode 方法）。"
        )
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        let token = try await usableToken()
        let key = try requireSubscriptionKey()
        var out: [ActivityRecord] = []
        var offset = 0
        while out.count < skip + limit {
            let url = URL(string: "\(Self.apiBase)/v3/workouts/?filter-by-modification-time=false&limit=50&offset=\(offset)")!
            let (data, http) = try await request(url: url, headers: apiHeaders(token: token, subscriptionKey: key))
            if http.statusCode == 401 { throw PlatformError.authFailed("松拓登录失效（401），请重新授权") }
            if http.statusCode == 429 { throw PlatformError.network("松拓请求被限流（429），请稍后再试") }
            guard http.statusCode == 200 else { break }
            guard let json = jsonObject(data),
                  let payload = json["payload"] as? [[String: Any]] else { break }
            if payload.isEmpty { break }
            for w in payload {
                guard let workoutKey = w["workoutKey"] as? String, !workoutKey.isEmpty else { continue }
                let startMs = int64Field(w, "startTime")
                let sport = (w["sport"] as? String) ?? ""
                out.append(ActivityRecord(
                    id: workoutKey,
                    source: .suunto,
                    title: sportToChinese(sport),
                    startDate: Date(timeIntervalSince1970: TimeInterval(startMs) / 1000),
                    distanceMeters: doubleField(w, "totalDistance"),
                    durationSeconds: Double(int64Field(w, "totalTime")),
                    elevationGainMeters: 0,
                    sportType: sport.isEmpty ? "other" : sport,
                    remoteId: workoutKey,
                    fileName: "suunto_\(workoutKey).fit"
                ))
            }
            offset += payload.count
            if payload.count < 50 { break }
        }
        var seen = Set<String>()
        let deduped = out.filter { seen.insert($0.id).inserted }
        return Array(deduped.dropFirst(skip).prefix(limit))
    }

    /// 下载一条活动的 FIT 字节（安卓 download 默认 gpx=false，即 FIT）。
    /// 要 GPX 改调 downloadGpx(_:)（/v2/workout/exportGpx/{key}）。
    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        let token = try await usableToken()
        let key = try requireSubscriptionKey()
        let workoutKey = activity.remoteId.isEmpty ? activity.id : activity.remoteId
        let url = URL(string: "\(Self.apiBase)/v3/workouts/\(formEncode(workoutKey))/fit")!
        let (data, http) = try await request(url: url, headers: apiHeaders(token: token, subscriptionKey: key), timeout: 120)
        if http.statusCode == 401 { throw PlatformError.authFailed("松拓登录失效（401），请重新授权") }
        if http.statusCode == 429 { throw PlatformError.network("松拓请求被限流（429）") }
        guard http.statusCode == 200 else {
            throw PlatformError.network("松拓下载失败（HTTP \(http.statusCode)）")
        }
        guard !data.isEmpty else { throw PlatformError.parse("松拓下载为空") }
        return data
    }

    /// 下载一条活动的 GPX 字节（GET /v2/workout/exportGpx/{workoutKey}）。
    func downloadGpx(_ activity: ActivityRecord) async throws -> Data {
        let token = try await usableToken()
        let key = try requireSubscriptionKey()
        let workoutKey = activity.remoteId.isEmpty ? activity.id : activity.remoteId
        let url = URL(string: "\(Self.apiBase)/v2/workout/exportGpx/\(formEncode(workoutKey))")!
        let (data, http) = try await request(url: url, headers: apiHeaders(token: token, subscriptionKey: key), timeout: 120)
        if http.statusCode == 401 { throw PlatformError.authFailed("松拓登录失效（401），请重新授权") }
        if http.statusCode == 429 { throw PlatformError.network("松拓请求被限流（429）") }
        guard http.statusCode == 200 else {
            throw PlatformError.network("松拓 GPX 下载失败（HTTP \(http.statusCode)）")
        }
        guard !data.isEmpty else { throw PlatformError.parse("松拓下载为空") }
        return data
    }

    /// 上传到松拓（三步，安卓 SuuntoApi.upload 原样移植）：
    /// ① POST /v2/upload → {uploadId, uploadUrl}
    /// ② PUT uploadUrl（body=文件字节，Content-Type: application/vnd.garmin.fit）
    /// ③ GET /v2/upload/{uploadId} 轮询至 PROCESSED（最多 15 次 × 2 秒）。
    /// 仅接受 FIT 文件：GPX 先用 GpxParser.gpxToFit 转 FIT 再传（安卓：GPX 由上层预转）。
    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        let token = try await usableToken()
        let key = try requireSubscriptionKey()
        let fitData = FitParser.isFit(data) ? data : try GpxParser.gpxToFit(data)
        _ = fileName // 上传文件名由服务端按 FIT 内容定，不用传文件名

        // ① 初始化上传
        let initBody: [String: Any] = [
            "description": activity.title,
            "comment": "jichiOB sync",
            "notifyUser": false,
            "privacy": "DEFAULT",
        ]
        guard let initData = try? JSONSerialization.data(withJSONObject: initBody) else {
            throw PlatformError.network("松拓上传失败：请求构造失败")
        }
        let (respData, resp) = try await request(
            url: URL(string: "\(Self.apiBase)/v2/upload")!, method: "POST",
            headers: apiHeaders(token: token, subscriptionKey: key),
            body: initData, contentType: "application/json")
        if resp.statusCode == 401 { throw PlatformError.authFailed("松拓登录失效（401），请重新授权") }
        guard resp.statusCode == 200 || resp.statusCode == 201 else {
            throw PlatformError.network("松拓上传失败：初始化 HTTP \(resp.statusCode)")
        }
        guard let initJson = jsonObject(respData),
              let uploadUrl = initJson["uploadUrl"] as? String, !uploadUrl.isEmpty,
              let uploadId = initJson["uploadId"] as? String, !uploadId.isEmpty else {
            throw PlatformError.network("松拓上传失败：响应里没有 uploadUrl/uploadId")
        }

        // ② PUT 文件字节到预签名地址（不带业务头，只带 Content-Type）
        guard let putURL = URL(string: uploadUrl) else {
            throw PlatformError.network("松拓上传失败：uploadUrl 无效")
        }
        let (_, putResp) = try await request(
            url: putURL, method: "PUT", headers: [:],
            body: fitData, contentType: "application/vnd.garmin.fit", timeout: 300)
        guard putResp.statusCode == 200 || putResp.statusCode == 201 else {
            throw PlatformError.network("松拓上传失败：文件上传 HTTP \(putResp.statusCode)")
        }

        // ③ 轮询状态（最多 15 次 × 2 秒 = 30 秒）
        for _ in 0..<15 {
            let (pollData, pollResp) = try await request(
                url: URL(string: "\(Self.apiBase)/v2/upload/\(formEncode(uploadId))")!,
                headers: apiHeaders(token: token, subscriptionKey: key))
            if pollResp.statusCode == 200, let pollJson = jsonObject(pollData) {
                let status = ((pollJson["status"] as? String) ?? "").uppercased()
                if status == "PROCESSED" || status == "COMPLETED" { return }
                if status == "FAILED" || status == "REJECTED" {
                    throw PlatformError.network("松拓上传失败：平台拒绝（\(status)）")
                }
            }
            try? await Task.sleep(nanoseconds: 2_000_000_000)
        }
        throw PlatformError.network("松拓上传超时（30 秒未处理完成），请在松拓 App 里确认是否已入库")
    }

    // MARK: - OAuth2（授权码 + PKCE）

    /// 构造授权 URL（打开网页让用户登录，redirect 捕获 code 后换 token）。
    /// PKCE：clientSecret 为空时自动启用（Suunto OAuth2 官方支持），
    /// verifier 暂存钥匙串（suunto_code_verifier），handleAuthorizationCode 时消费
    /// （安卓 authorizeUrl / newPkce 原样）。
    /// 竞态修复：这个方法是幂等的——钥匙串里已有 verifier 就复用它算 challenge，
    /// 没有才生成一次；登录页 body 里反复调用也不会改写钥匙串，URL 里的 challenge
    /// 与换 token 时用的 verifier 始终一致。真正开始一次新授权要调
    /// freshAuthorizationURL（OAuthLoginHelper.start 在用户点按钮时调），
    /// 只有那里才生成全新的 verifier。
    /// - Parameter clientId: 开发者应用的 client_id（空时用 AppConfig 里的值）。
    public static func authorizationURL(clientId: String) -> String {
        if liveClientSecret().isEmpty {
            let verifier = ensureCodeVerifier()
            return authorizationURLString(clientId: clientId, challenge: pkceChallenge(for: verifier))
        }
        KeychainStore.delete(codeVerifierKey)
        return authorizationURLString(clientId: clientId, challenge: nil)
    }

    /// 真正开始一次新授权时调这个：生成全新的 PKCE 校验码并覆盖钥匙串，
    /// 返回带新 challenge 的授权 URL。只能由 OAuthLoginHelper.start 在用户点
    /// “浏览器授权登录”时调；不要在 body / 按钮显隐判断里调（那里调
    /// authorizationURL，它是幂等的，不会改写校验码）。
    public static func freshAuthorizationURL(clientId: String) -> String {
        if liveClientSecret().isEmpty {
            let (verifier, challenge) = newPKCE()
            KeychainStore.set(verifier, for: codeVerifierKey)
            return authorizationURLString(clientId: clientId, challenge: challenge)
        }
        KeychainStore.delete(codeVerifierKey)
        return authorizationURLString(clientId: clientId, challenge: nil)
    }

    /// 拼授权 URL（不碰钥匙串、不生成校验码）：challenge 由调用方给，
    /// 没 PKCE（clientSecret 非空）时传 nil。
    private static func authorizationURLString(clientId: String, challenge: String?) -> String {
        let cid = clientId.isEmpty ? liveClientId() : clientId
        var url = "\(authBase)/authorize?response_type=code&client_id=\(formEncode(cid))"
        url += "&redirect_uri=\(formEncode(redirectURI))"
        url += "&state=jichiOB"
        if let challenge {
            url += "&code_challenge=\(challenge)&code_challenge_method=S256"
        }
        return url
    }

    /// 钥匙串里已有校验码就复用，没有才生成一次并存好。反复调用返回同一个值，
    /// 所以登录页 body 里调 authorizationURL 再多次也不会改写它。
    private static func ensureCodeVerifier() -> String {
        if let stored = KeychainStore.get(codeVerifierKey), !stored.isEmpty { return stored }
        let (verifier, _) = newPKCE()
        KeychainStore.set(verifier, for: codeVerifierKey)
        return verifier
    }

    /// PKCE 校验码在钥匙串里的 key（全文件共用这一个常量，别手写字符串）。
    private static let codeVerifierKey = "suunto_code_verifier"

    /// 旧的实例方法（兼容保留）：与静态 authorizationURL 同一个地址，
    /// 并把 PKCE verifier 同步到本实例的 session，供 exchangeCode 消费。
    /// authorizationURL 现在是幂等的，这里读到的就是授权页里 challenge 对应的那份。
    func authorizeURL(clientId: String) -> String {
        let url = Self.authorizationURL(clientId: clientId)
        session.codeVerifier = KeychainStore.get(Self.codeVerifierKey)
        return url
    }

    /// OAuth 回调拿到 code 后调这个换 token、存钥匙串（C 组登录页调用）。
    /// clientId/secret/subscriptionKey 每次调用时读 AppConfig.shared（关于页填了就生效）；
    /// 为空时回落到内置值（见 exchangeCode）。
    /// 失败抛 PlatformError.authFailed（不要静默返回 false，调用方要给用户报错）。
    func handleAuthorizationCode(_ code: String) async throws {
        if session.codeVerifier == nil {
            session.codeVerifier = KeychainStore.get(Self.codeVerifierKey)
        }
        try await exchangeCode(
            code: code,
            clientId: AppConfig.shared.suuntoClientId,
            clientSecret: AppConfig.shared.suuntoClientSecret,
            subscriptionKey: AppConfig.shared.suuntoSubscriptionKey)
    }

    /// 用授权码换 token（有 verifier 走 PKCE 免 secret，否则 Basic clientId:clientSecret）。
    /// 凭证留空时默认用 AppConfig 里的值（每次调用时读，关于页填了就生效）；
    /// App 层也可直接传用户填的值。成功后 token 与凭证存钥匙串。
    func exchangeCode(code: String, clientId: String = "", clientSecret: String = "", subscriptionKey: String = "") async throws {
        let cid = clientId.isEmpty ? Self.liveClientId() : clientId
        let secret = clientSecret.isEmpty ? Self.liveClientSecret() : clientSecret
        let key = subscriptionKey.isEmpty ? Self.liveSubscriptionKey() : subscriptionKey
        session.clientId = cid
        session.clientSecret = secret
        session.subscriptionKey = key
        var fields: [(String, String)] = [
            ("grant_type", "authorization_code"),
            ("code", code),
            ("redirect_uri", Self.redirectURI),
        ]
        var headers: [String: String] = ["Content-Type": "application/x-www-form-urlencoded"]
        if let verifier = session.codeVerifier, secret.isEmpty {
            // PKCE：code_verifier 换 token，无需 Authorization 头。
            fields.append(("client_id", cid))
            fields.append(("code_verifier", verifier))
            session.codeVerifier = nil
        } else {
            session.codeVerifier = nil
            headers["Authorization"] = "Basic " + Data("\(cid):\(secret)".utf8).base64EncodedString()
        }
        let url = URL(string: "\(Self.authBase)/token")!
        let (data, http) = try await request(url: url, method: "POST", headers: headers,
                                              body: formData(fields), contentType: "application/x-www-form-urlencoded")
        guard http.statusCode == 200 else {
            throw PlatformError.authFailed("松拓换 token 失败（HTTP \(http.statusCode)）")
        }
        guard let json = jsonObject(data),
              let access = json["access_token"] as? String, !access.isEmpty else {
            throw PlatformError.authFailed("松拓换 token 失败：响应里没有 access_token")
        }
        session.accessToken = access
        session.refreshToken = json["refresh_token"] as? String ?? ""
        let expiresIn = doubleField(json, "expires_in")
        session.expiresAt = Date().timeIntervalSince1970 + (expiresIn > 0 ? expiresIn : 86400)
        KeychainStore.delete(Self.codeVerifierKey)
        persistSession()
    }

    /// 用 refresh_token 换新 token（secret 为空时用 client_id 参数代替 Basic）。
    /// 凭证每次调用时读 AppConfig（关于页填了就生效）；成功后存钥匙串。
    /// 开头先 restoreSession()：新建实例单独调 refreshToken() 时内存还是空的，
    /// 不先恢复就会误判“没有 refresh_token、登录已过期”，即使钥匙串里明明有。
    func refreshToken() async throws {
        restoreSession()
        guard let rt = session.refreshToken, !rt.isEmpty else {
            throw PlatformError.authFailed("松拓登录已过期，请重新授权")
        }
        let cid = Self.liveClientId()
        let secret = Self.liveClientSecret()
        let key = Self.liveSubscriptionKey()
        var fields: [(String, String)] = [
            ("grant_type", "refresh_token"),
            ("refresh_token", rt),
        ]
        if secret.isEmpty { fields.append(("client_id", cid)) }
        var headers: [String: String] = ["Content-Type": "application/x-www-form-urlencoded"]
        if !secret.isEmpty {
            headers["Authorization"] = "Basic " + Data("\(cid):\(secret)".utf8).base64EncodedString()
        }
        let url = URL(string: "\(Self.authBase)/token")!
        let (data, http) = try await request(url: url, method: "POST", headers: headers,
                                              body: formData(fields), contentType: "application/x-www-form-urlencoded")
        guard http.statusCode == 200 else {
            throw PlatformError.authFailed("松拓刷新 token 失败（HTTP \(http.statusCode)），请重新授权")
        }
        guard let json = jsonObject(data),
              let access = json["access_token"] as? String, !access.isEmpty else {
            throw PlatformError.authFailed("松拓刷新 token 失败：响应里没有 access_token")
        }
        session.accessToken = access
        session.refreshToken = (json["refresh_token"] as? String).flatMap { $0.isEmpty ? nil : $0 } ?? rt
        let expiresIn = doubleField(json, "expires_in")
        session.expiresAt = Date().timeIntervalSince1970 + (expiresIn > 0 ? expiresIn : 86400)
        session.clientId = cid
        session.clientSecret = secret
        session.subscriptionKey = key
        persistSession()
    }

    /// App 层直接注入已有的 token 与凭证（比如从 Keychain 恢复后），不用重新走授权页。
    /// 注入后立即存钥匙串。
    func setCredentials(accessToken: String, refreshToken: String, expiresAt: TimeInterval,
                        clientId: String, clientSecret: String, subscriptionKey: String) {
        session.accessToken = accessToken
        session.refreshToken = refreshToken
        session.expiresAt = expiresAt
        session.clientId = clientId
        session.clientSecret = clientSecret
        session.subscriptionKey = subscriptionKey
        persistSession()
    }

    // MARK: - 登录态落钥匙串

    /// 把当前会话（token + 刷新 token + 过期时间 + 三个开发者凭证）以 JSON 存进
    /// LoginStore（key 是 token_suunto），新建实例也能读到。
    private func persistSession() {
        guard let access = session.accessToken, !access.isEmpty else { return }
        let obj: [String: Any] = [
            "access_token": access,
            "refresh_token": session.refreshToken ?? "",
            "expires_at": session.expiresAt,
            "client_id": session.clientId ?? "",
            "client_secret": session.clientSecret ?? "",
            "subscription_key": session.subscriptionKey ?? "",
        ]
        if let data = try? JSONSerialization.data(withJSONObject: obj),
           let json = String(data: data, encoding: .utf8) {
            LoginStore.saveToken(json, for: .suunto)
        }
    }

    /// 从钥匙串恢复会话（本实例内存还是空时才恢复；已有内存会话不动）。
    private func restoreSession() {
        guard session.accessToken == nil || session.accessToken?.isEmpty == true,
              let stored = LoginStore.token(for: .suunto),
              let data = stored.data(using: .utf8),
              let obj = jsonObject(data) else { return }
        let access = obj["access_token"] as? String ?? ""
        guard !access.isEmpty else { return }
        session.accessToken = access
        session.refreshToken = (obj["refresh_token"] as? String).flatMap { $0.isEmpty ? nil : $0 }
        session.expiresAt = (obj["expires_at"] as? NSNumber)?.doubleValue ?? 0
        session.clientId = (obj["client_id"] as? String).flatMap { $0.isEmpty ? nil : $0 }
        session.clientSecret = (obj["client_secret"] as? String).flatMap { $0.isEmpty ? nil : $0 }
        session.subscriptionKey = (obj["subscription_key"] as? String).flatMap { $0.isEmpty ? nil : $0 }
    }

    // MARK: - 登录态

    /// 校验 access_token 是否可用：未过期直接用；过期且可刷新则自动刷新；否则抛错。
    /// 安卓 getUsableTokenOrNull 原样。先从钥匙串恢复会话（新建实例也能用）。
    private func usableToken() async throws -> String {
        restoreSession()
        guard let access = session.accessToken, !access.isEmpty else { throw PlatformError.notLoggedIn }
        if Date().timeIntervalSince1970 < session.expiresAt { return access }
        if let rt = session.refreshToken, !rt.isEmpty {
            try await refreshToken()
            if let fresh = session.accessToken, !fresh.isEmpty { return fresh }
        }
        throw PlatformError.authFailed("松拓登录已过期，请重新授权")
    }

    private func requireSubscriptionKey() throws -> String {
        if let key = session.subscriptionKey, !key.isEmpty { return key }
        // 会话里没有：每次调用时读 AppConfig（关于页填了就生效），再记回会话。
        let live = Self.liveSubscriptionKey()
        guard !live.isEmpty else {
            throw PlatformError.authFailed("松拓缺少 subscription_key，请先填入开发者凭证")
        }
        session.subscriptionKey = live
        return live
    }

    private func apiHeaders(token: String, subscriptionKey: String) -> [String: String] {
        [
            "Authorization": "Bearer \(token)",
            "Ocp-Apim-Subscription-Key": subscriptionKey,
            "Accept": "application/json",
            "User-Agent": Self.userAgent,
        ]
    }

    /// 生成 PKCE verifier（43–128 位 url-safe）与 S256 challenge（安卓 newPkce 原样）。
    /// 静态方法：静态 authorizationURL 也要用（实例 session 拿不到）。
    private static func newPKCE() -> (verifier: String, challenge: String) {
        var bytes = [UInt8](repeating: 0, count: 64)
        _ = SecRandomCopyBytes(kSecRandomDefault, bytes.count, &bytes)
        let verifier = base64URL(Data(bytes))
        return (verifier, pkceChallenge(for: verifier))
    }

    /// 由 verifier 算 S256 challenge（与 newPKCE 里同一算法；复用已有 verifier
    /// 拼授权 URL 时也走这里，保证 challenge 与钥匙串里的 verifier 配对）。
    private static func pkceChallenge(for verifier: String) -> String {
        let digest = SHA256.hash(data: Data(verifier.utf8))
        return base64URL(Data(digest))
    }

    private static func base64URL(_ data: Data) -> String {
        data.base64EncodedString()
            .replacingOccurrences(of: "+", with: "-")
            .replacingOccurrences(of: "/", with: "_")
            .replacingOccurrences(of: "=", with: "")
    }

    /// 本文件专用的请求方法：要看 HTTP 状态码（401 / 429），走 HTTPClient.shared.requestRaw
    ///（非 2xx 不抛错，状态码和响应体都返回给调用方判断）。
    /// 注意：安卓 Suunto 用 120 秒读超时 / 300 秒写超时；HTTPClient 默认请求 120 秒 / 资源 300 秒，
    /// 大文件下载也可能超时，待真机验证再定。
    private func request(
        url: URL, method: String = "GET", headers: [String: String] = [:],
        body: Data? = nil, contentType: String? = nil, timeout: TimeInterval = 60
    ) async throws -> (Data, HTTPURLResponse) {
        var req = URLRequest(url: url)
        req.httpMethod = method
        req.timeoutInterval = timeout
        for (k, v) in headers { req.setValue(v, forHTTPHeaderField: k) }
        if let body = body {
            req.httpBody = body
            if let ct = contentType { req.setValue(ct, forHTTPHeaderField: "Content-Type") }
        }
        do {
            let (data, http) = try await HTTPClient.shared.requestRaw(req)
            return (data, http)
        } catch let e as PlatformError { throw e }
        catch { throw PlatformError.network(error.localizedDescription) }
    }

    // MARK: - 运动类型

    /// Suunto sport 枚举 → 中文名（安卓 sportToChinese 原样）。
    private func sportToChinese(_ sport: String) -> String {
        switch sport {
        case "running": return "跑步"
        case "cycling", "road_biking", "mtb", "gravel": return "骑行"
        case "indoor_cycling", "spinning": return "室内骑行"
        case "hiking": return "徒步"
        case "swimming", "pool_swimming", "open_water_swimming": return "游泳"
        case "mountaineering": return "登山"
        case "multisport", "triathlon": return "铁人三项"
        case "fitness", "strength", "gym": return "健身"
        case "skiing", "nordic_skiing": return "滑雪"
        case "snowboarding": return "单板滑雪"
        case "other": return "其他"
        default: return "运动"
        }
    }
}

// MARK: - 登录态（只放内存；落盘由 App 层负责）

private final class SuuntoSession {
    var accessToken: String?
    var refreshToken: String?
    var expiresAt: TimeInterval = 0
    var clientId: String?
    var clientSecret: String?
    var subscriptionKey: String?
    var codeVerifier: String?
}

// MARK: - 本文件内的小工具（不碰共享类型）

private func formEncode(_ s: String) -> String {
    s.addingPercentEncoding(withAllowedCharacters: .suuntoFormAllowed) ?? s
}

private extension CharacterSet {
    static let suuntoFormAllowed = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~")
}

private func formData(_ fields: [(String, String)]) -> Data {
    let encoded = fields.map { "\($0.0)=\(formEncode($0.1))" }.joined(separator: "&")
    return Data(encoded.utf8)
}

private func jsonObject(_ data: Data) -> [String: Any]? {
    (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
}

private func doubleField(_ dict: [String: Any], _ key: String) -> Double {
    if let n = dict[key] as? NSNumber { return n.doubleValue }
    if let s = dict[key] as? String, let v = Double(s) { return v }
    return 0
}

private func int64Field(_ dict: [String: Any], _ key: String) -> Int64 {
    if let n = dict[key] as? NSNumber { return n.int64Value }
    if let s = dict[key] as? String, let v = Int64(s) { return v }
    return 0
}

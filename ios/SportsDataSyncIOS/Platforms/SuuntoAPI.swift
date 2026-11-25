// 待真机验证
// SuuntoAPI.swift — Suunto（松拓）（对照安卓 SuuntoApi.kt v9.6.9 原样移植）
//
// 仅下载（本组方向；安卓 SuuntoApi 另有三步上传，见文件底说明，暂不接）。
// 登录：OAuth2 Authorization Code（账号密码直登不存在，login(username:password:) 因此抛 unsupported）。
//   需在 apizone.suunto.com 免费注册开发者应用，取 client_id / client_secret / subscription_key 三凭证
//   （安卓注释：个人申请约 3-4 周审批）。凭证在本文件留空占位，用户自己填。
//   授权页：https://cloudapi-oauth.suunto.com/oauth/authorize
//     ?response_type=code&client_id=..&redirect_uri=https://localhost:8080/suunto-callback&state=jichiOB
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
    static let redirectURI = "https://localhost:8080/suunto-callback"
    private static let userAgent = "jichi-ob/7.9.6 (Android)"

    /// 内置开发者凭证——默认取 BuiltinSecrets（仓库里是空占位；CI 配了 Secrets 的话，
    /// 编译机上重写过 BuiltinSecrets，取到的就是真实值）。用户在登录页填入后调
    /// setCredentials 注入的优先。
    /// 安卓 SuuntoApi.BUILTIN_CLIENT_ID / BUILTIN_CLIENT_SECRET / BUILTIN_SUBSCRIPTION_KEY 同款占位。
    static var builtinClientId = BuiltinSecrets.suuntoClientId
    static var builtinClientSecret = BuiltinSecrets.suuntoClientSecret
    static var builtinSubscriptionKey = BuiltinSecrets.suuntoSubscriptionKey

    private let session = SuuntoSession()

    // MARK: - PlatformAPI

    func isLoggedIn() async -> Bool {
        guard let token = session.accessToken, !token.isEmpty,
              let key = session.subscriptionKey, !key.isEmpty else { return false }
        do {
            let (_, http) = try await request(
                url: URL(string: "\(Self.apiBase)/v3/workouts/?filter-by-modification-time=false&limit=1&offset=0")!,
                headers: apiHeaders(token: token, subscriptionKey: key)
            )
            return http.statusCode == 200
        } catch {
            return false
        }
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

    /// 本组只做下载方向，上传暂不接。
    /// 安卓 SuuntoApi.upload 是存在的（三步：POST /v2/upload → {uploadId, uploadUrl} →
    /// PUT uploadUrl（body=文件字节）→ GET /v2/upload/{uploadId} 轮询至 PROCESSED；
    /// 仅接受 FIT 文件，GPX 需上层先转 FIT），
    /// 但 Models.swift 已把松拓改为双向（与安卓 README 一致），本文件上传接口尚未接（见上），
    /// 等汇总人跟用户确认后再决定接不接——现在不要假装能传。
    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        throw PlatformError.unsupported("松拓在 iOS 版只作下载数据源，暂不支持上传（等确认后再接）")
    }

    // MARK: - OAuth2（授权码 + PKCE）

    /// 构造授权 URL（打开网页让用户登录，redirect 捕获 code 后换 token）。
    /// PKCE：clientSecret 为空时自动启用（Suunto OAuth2 官方支持），
    /// verifier 暂存，exchangeCode 时消费（安卓 authorizeUrl / newPkce 原样）。
    /// - Parameter clientId: 开发者应用的 client_id（空时用 builtinClientId 占位值）。
    func authorizeURL(clientId: String) -> String {
        let cid = clientId.isEmpty ? Self.builtinClientId : clientId
        var url = "\(Self.authBase)/authorize?response_type=code&client_id=\(formEncode(cid))"
        url += "&redirect_uri=\(formEncode(Self.redirectURI))"
        url += "&state=jichiOB"
        if Self.builtinClientSecret.isEmpty {
            let (verifier, challenge) = newPKCE()
            session.codeVerifier = verifier
            url += "&code_challenge=\(challenge)&code_challenge_method=S256"
        } else {
            session.codeVerifier = nil
        }
        return url
    }

    /// 用授权码换 token（有 verifier 走 PKCE 免 secret，否则 Basic clientId:clientSecret）。
    /// 凭证留空时默认用 builtin 占位值；App 层也可直接传用户填的值。
    func exchangeCode(code: String, clientId: String = "", clientSecret: String = "", subscriptionKey: String = "") async throws {
        let cid = clientId.isEmpty ? Self.builtinClientId : clientId
        let secret = clientSecret.isEmpty ? Self.builtinClientSecret : clientSecret
        let key = subscriptionKey.isEmpty ? Self.builtinSubscriptionKey : subscriptionKey
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
    }

    /// 用 refresh_token 换新 token（secret 为空时用 client_id 参数代替 Basic）。
    func refreshToken() async throws {
        guard let rt = session.refreshToken, !rt.isEmpty else {
            throw PlatformError.authFailed("松拓登录已过期，请重新授权")
        }
        let cid = session.clientId ?? Self.builtinClientId
        let secret = session.clientSecret ?? Self.builtinClientSecret
        let key = session.subscriptionKey ?? Self.builtinSubscriptionKey
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
    }

    /// App 层直接注入已有的 token 与凭证（比如从 Keychain 恢复后），不用重新走授权页。
    func setCredentials(accessToken: String, refreshToken: String, expiresAt: TimeInterval,
                        clientId: String, clientSecret: String, subscriptionKey: String) {
        session.accessToken = accessToken
        session.refreshToken = refreshToken
        session.expiresAt = expiresAt
        session.clientId = clientId
        session.clientSecret = clientSecret
        session.subscriptionKey = subscriptionKey
    }

    // MARK: - 登录态

    /// 校验 access_token 是否可用：未过期直接用；过期且可刷新则自动刷新；否则抛错。
    /// 安卓 getUsableTokenOrNull 原样。
    private func usableToken() async throws -> String {
        guard let access = session.accessToken, !access.isEmpty else { throw PlatformError.notLoggedIn }
        if Date().timeIntervalSince1970 < session.expiresAt { return access }
        if let rt = session.refreshToken, !rt.isEmpty {
            try await refreshToken()
            if let fresh = session.accessToken, !fresh.isEmpty { return fresh }
        }
        throw PlatformError.authFailed("松拓登录已过期，请重新授权")
    }

    private func requireSubscriptionKey() throws -> String {
        guard let key = session.subscriptionKey, !key.isEmpty else {
            throw PlatformError.authFailed("松拓缺少 subscription_key，请先填入开发者凭证")
        }
        return key
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
    private func newPKCE() -> (verifier: String, challenge: String) {
        var bytes = [UInt8](repeating: 0, count: 64)
        _ = SecRandomCopyBytes(kSecRandomDefault, bytes.count, &bytes)
        let verifier = base64URL(Data(bytes))
        let digest = SHA256.hash(data: Data(verifier.utf8))
        return (verifier, base64URL(Data(digest)))
    }

    private func base64URL(_ data: Data) -> String {
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

// 待真机验证
// StravaAPI.swift
// Strava — 对照安卓 DevOAuth2Api.kt（Strava 部分）/ MainActivity.kt（v9.6.9）原样移植
//
// 方向：仅上传目标。下载抛 unsupported。
//   注意：DevOAuth2Api.kt 里其实实现了 fetchStrava（GET /api/v3/athlete/activities），
//   但产品口径（README、Models.swift 的 supportsDownload）是 Strava 只当上传目标、
//   来源下载列表里隐藏，所以本文件 fetchActivities / downloadActivity 一律抛 unsupported。
// 登录：OAuth2 网页授权（实验室平台：用户自己申请开发者凭证后自填）。
//   1) 打开授权页（登录页组在 WebView 里开）：
//      https://www.strava.com/oauth/authorize?client_id={自填}&response_type=code
//      &redirect_uri=http://localhost:8080/callback&scope=activity:read_all,activity:write
//      &approval_prompt=auto
//   2) 用户在 Strava 网页上同意后回调 http://localhost:8080/callback?code=xxx，
//      登录页组拿到 code 调本文件的 exchangeCode(_:) 换 token，存钥匙串。
//   Strava 没有账号密码直登接口，所以 login(username:password:) 抛 unsupported。
//   凭证（client id / secret）存在钥匙串，key 是 config_stravaClientId /
//   config_stravaClientSecret（与 AppConfig 的 config_* 命名一致）；
//   注意：骨架的 AppConfig 里目前没有 Strava 字段，关于页组接填入口时需用这两个 key，
//   或在 AppConfig 里补字段后改这里——不要把真实值写进代码。
// 上传：POST https://www.strava.com/api/v3/uploads，multipart 表单：
//   data_type=fit/gpx/tcx（按文件扩展名）、name=文件名（去扩展名）、file=文件内容
//   （application/octet-stream），头 Authorization: Bearer {token}。
//   2xx 即已接收（Strava 侧异步处理）；失败时错误里带状态码与响应体。

import Foundation

// MARK: - 小工具（本文件内用）

private func stravaJSONDict(_ data: Data) -> [String: Any]? {
    (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
}

private func stravaFormEncode(_ s: String) -> String {
    let allowed = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~")
    return s.addingPercentEncoding(withAllowedCharacters: allowed) ?? s
}

private struct StravaTokenPair {
    var accessToken: String
    var refreshToken: String

    func toJSON() -> String {
        let obj: [String: Any] = ["access_token": accessToken, "refresh_token": refreshToken]
        guard let data = try? JSONSerialization.data(withJSONObject: obj),
              let s = String(data: data, encoding: .utf8) else { return "" }
        return s
    }

    static func fromJSON(_ s: String) -> StravaTokenPair? {
        guard let data = s.data(using: .utf8), let obj = stravaJSONDict(data) else { return nil }
        let access = obj["access_token"] as? String ?? ""
        guard !access.isEmpty else { return nil }
        return StravaTokenPair(accessToken: access, refreshToken: obj["refresh_token"] as? String ?? "")
    }
}

// MARK: - 引擎

private final class StravaEngine {
    static let authURL = "https://www.strava.com/oauth/authorize"
    static let tokenURL = "https://www.strava.com/oauth/token"
    static let uploadURL = "https://www.strava.com/api/v3/uploads"
    static let redirectURI = "http://localhost:8080/callback"
    static let scope = "activity:read_all,activity:write"
    static let ua = "OBA-Sync/8.2.9"

    // 开发者凭证 key（钥匙串，与 AppConfig 的 config_* 命名一致；AppConfig 目前没有 Strava 字段）
    private static let clientIdKey = "config_stravaClientId"
    private static let clientSecretKey = "config_stravaClientSecret"

    static func clientCredentials() -> (clientId: String, clientSecret: String) {
        (KeychainStore.get(clientIdKey) ?? "", KeychainStore.get(clientSecretKey) ?? "")
    }

    static func saveClientCredentials(clientId: String, clientSecret: String) {
        KeychainStore.set(clientId, for: clientIdKey)
        KeychainStore.set(clientSecret, for: clientSecretKey)
    }

    /// 授权 URL（登录页组在 WebView 里打开）。
    static func authorizationURL(clientId: String) -> String {
        "\(authURL)?client_id=\(clientId)&response_type=code&redirect_uri=\(redirectURI)&scope=\(scope)&approval_prompt=auto"
    }

    func loadTokens() -> StravaTokenPair? {
        guard let stored = LoginStore.token(for: .strava) else { return nil }
        return StravaTokenPair.fromJSON(stored)
    }

    func saveTokens(_ pair: StravaTokenPair) {
        LoginStore.saveToken(pair.toJSON(), for: .strava)
    }

    func clearTokens() { LoginStore.clearToken(for: .strava) }

    /// 授权码换 token（DevOAuth2Api.exchangeCode 的 Strava 分支）。
    /// 成功存钥匙串并返回 true；失败返回 false。
    func exchangeCode(_ code: String) async -> Bool {
        let (clientId, clientSecret) = Self.clientCredentials()
        guard !clientId.isEmpty, !clientSecret.isEmpty else { return false }
        guard let url = URL(string: Self.tokenURL) else { return false }
        let fields: [(String, String)] = [
            ("client_id", clientId),
            ("client_secret", clientSecret),
            ("code", code),
            ("grant_type", "authorization_code"),
            ("redirect_uri", Self.redirectURI),
        ]
        let bodyString = fields.map { "\(stravaFormEncode($0.0))=\(stravaFormEncode($0.1))" }.joined(separator: "&")
        do {
            var req = URLRequest(url: url)
            req.httpMethod = "POST"
            req.timeoutInterval = 30
            req.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            req.setValue(Self.ua, forHTTPHeaderField: "User-Agent")
            req.httpBody = Data(bodyString.utf8)
            let (data, resp) = try await HTTPClient.shared.requestRaw(req)
            guard (200...299).contains(resp.statusCode),
                  let json = stravaJSONDict(data) else { return false }
            let access = json["access_token"] as? String ?? ""
            let refresh = json["refresh_token"] as? String ?? ""
            guard !access.isEmpty else { return false }
            saveTokens(StravaTokenPair(accessToken: access, refreshToken: refresh))
            return true
        } catch {
            return false
        }
    }

    /// 上传文件（DevOAuth2Api.uploadFile 的 Strava 分支）。
    /// 2xx 即已接收；失败抛 PlatformError（带状态码与响应体）。
    func uploadFile(data: Data, fileName: String) async throws {
        guard let tokens = loadTokens(), !tokens.accessToken.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        guard let url = URL(string: Self.uploadURL) else {
            throw PlatformError.network("Strava 上传地址无效")
        }
        let ext = fileName.split(separator: ".").last.map(String.init)?.lowercased() ?? "fit"
        let dataType: String
        switch ext {
        case "fit": dataType = "fit"
        case "gpx": dataType = "gpx"
        case "tcx": dataType = "tcx"
        default: dataType = "fit"
        }
        let name = fileName.split(separator: ".").dropLast().joined(separator: ".")
        let boundary = "Boundary-\(UUID().uuidString)"
        var body = Data()
        func appendField(_ name: String, _ value: String) {
            body.append("--\(boundary)\r\n".data(using: .utf8)!)
            body.append("Content-Disposition: form-data; name=\"\(name)\"\r\n\r\n".data(using: .utf8)!)
            body.append("\(value)\r\n".data(using: .utf8)!)
        }
        appendField("data_type", dataType)
        appendField("name", name.isEmpty ? fileName : name)
        body.append("--\(boundary)\r\n".data(using: .utf8)!)
        body.append("Content-Disposition: form-data; name=\"file\"; filename=\"\(fileName)\"\r\n".data(using: .utf8)!)
        body.append("Content-Type: application/octet-stream\r\n\r\n".data(using: .utf8)!)
        body.append(data)
        body.append("\r\n--\(boundary)--\r\n".data(using: .utf8)!)
        var req = URLRequest(url: url)
        req.httpMethod = "POST"
        req.timeoutInterval = 120
        req.setValue("Bearer \(tokens.accessToken)", forHTTPHeaderField: "Authorization")
        req.setValue(Self.ua, forHTTPHeaderField: "User-Agent")
        req.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        req.httpBody = body
        let (respData, resp) = try await HTTPClient.shared.requestRaw(req)
        guard (200...299).contains(resp.statusCode) else {
            let text = String(data: respData, encoding: .utf8) ?? ""
            throw PlatformError.network("Strava 上传失败 HTTP \(resp.statusCode)：\(text.prefix(200))")
        }
    }
}

// MARK: - 对外接口

/// Strava，仅上传目标。登录方式：OAuth2 网页授权（见文件头）。
public struct StravaAPI: PlatformAPI {
    public let source: DataSource = .strava

    private let engine = StravaEngine()

    public init() {}

    /// 本地有没有凭证（不发网络请求）。
    public func isLoggedIn() async -> Bool { LoginStore.isLoggedIn(.strava) }

    public func login(username: String, password: String) async throws {
        // Strava 没有账号密码直登接口，只能走 OAuth2 网页授权。
        throw PlatformError.unsupported("Strava 不支持账号密码直登，请在网页上完成 Strava 授权（需先填入自己申请的开发者凭证）")
    }

    public func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        // 产品口径：Strava 只当上传目标，不当下载来源（虽然接口上有列表 API）。
        throw PlatformError.unsupported("Strava 仅作上传目标，不能从 Strava 下载活动")
    }

    public func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        throw PlatformError.unsupported("Strava 仅作上传目标，不能从 Strava 下载活动")
    }

    public func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        try await engine.uploadFile(data: data, fileName: fileName)
    }

    /// 授权 URL（登录页组在 WebView 里打开；clientId 用用户自己填的）。
    public static func authorizationURL(clientId: String) -> String {
        StravaEngine.authorizationURL(clientId: clientId)
    }

    /// OAuth 回调地址（固定值，申请开发者应用时 redirect_uri 就填这个）。
    public static var redirectURI: String { StravaEngine.redirectURI }

    /// 用户自己申请的开发者凭证（client id / secret），存钥匙串，不进代码。
    public static func saveClientCredentials(clientId: String, clientSecret: String) {
        StravaEngine.saveClientCredentials(clientId: clientId, clientSecret: clientSecret)
    }

    /// WebView 拿到授权码（回调 http://localhost:8080/callback?code=xxx）后，调这个换 token。
    /// 成功返回 true，token 已存钥匙串。
    public func exchangeCode(_ code: String) async -> Bool {
        await engine.exchangeCode(code)
    }

    /// 退出登录：清掉本平台凭证。
    public func logout() { engine.clearTokens() }
}

// TODO（待真机验证）：
// 1. 上传接口本身（POST /api/v3/uploads，multipart 字段名与 data_type 取值）是按
//    DevOAuth2Api.kt 移植的，Strava 侧是异步处理，2xx 只代表已接收，不代表已入库；
//    上传后是否入库、重名/重复文件如何处理，需真机验证。
// 2. token 刷新：安卓 DevOAuth2Api.kt 里没有实现 Strava 刷新（只存了 refresh_token），
//    本文件同样没实现；token 过期后上传会失败，需重新走网页授权。标准刷新接口是
//    同一 /oauth/token（grant_type=refresh_token），待真机验证后再补，不要直接猜。
// 3. AppConfig 里目前没有 Strava 字段，本文件用的钥匙串 key 是
//    config_stravaClientId / config_stravaClientSecret；关于页组接填入口时注意对齐。

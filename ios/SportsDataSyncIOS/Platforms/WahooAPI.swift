// 待真机验证
// WahooAPI.swift
// Wahoo — 对照安卓 WahooApi.kt / WahooOAuth2Service.kt / DevOAuth2Api.kt（v9.6.9）原样移植
//
// 登录：OAuth2，但用户填的是账号密码（Models.swift 按账号登录显示）。
//   流程（WahooOAuth2Service.login，OkHttp 模拟浏览器完成 SAML 登录 + OAuth2 授权全流程）：
//   1) PKCE：code_verifier（32 随机字节 base64url）+ code_challenge = base64url(SHA256(verifier))，S256；
//   2) GET https://api.wahooligan.com/oauth/authorize?client_id=&redirect_uri=https://localhost:8080/
//      &scope=workouts_read%20workouts_write%20offline_data%20user_read&response_type=code
//      &code_challenge=&code_challenge_method=S256（跟随重定向，cookie 靠共享 cookie 存储）；
//   3) 解析登录表单（第一个 <form>），POST 账号密码 + 全部隐藏字段；
//   4) 解析 SAMLResponse 表单（只取 hidden 字段），POST 回调，期望 302；
//   5) GET 302 的 Location（授权确认页），找 commit=Authorize/授权/Allow/同意 的表单
//      （排除 Cancel/取消/Deny/拒绝），POST，期望 302；
//   6) 从最终重定向 URL 取 code=，POST https://api.wahooligan.com/oauth/token
//      （grant_type=authorization_code，带 code_verifier）换 access_token + refresh_token。
//   安卓用 Jsoup 解析表单，iOS 没有 Jsoup，本文件用正则解析 <form>/<input>，行为与安卓一致。
// 令牌复用/刷新（v7.5.4/v7.6.0）：登录前先复用已存 token（调 GET /v1/user 验证），
//   无效再用 refresh_token 刷新；刷新后必须用新 token 调一次 API 验证——Wahoo 规则是
//   “刷新后新 token 成功调 API，旧 token 才被撤销”，不验证旧 token 会一直累积。
//   每个用户最多 10 枚未撤销令牌（"Too many unrevoked access tokens"），超限时登录会失败，
//   需用户去 Wahoo 官方 App → 设置 → 已授权应用 → 撤销本应用授权（或调本文件的 deauthorize()，
//   DELETE /v1/permissions），释放名额后再登。
// 列表：GET https://api.wahooligan.com/v1/workouts?page=&per_page=30（安卓只拉一页，
//   本文件为满足 limit 循环翻页，见 TODO）。
// 下载：GET /v1/workouts/{id} 拿 workout_summary.file.url，再 GET CDN 直链（免认证）。
// 上传：POST /v1/workout_file_uploads，表单 workout_file_upload[file]=
//   "data:application/vnd.fit;base64,{base64}"、workout_file_upload[filename]=文件名，
//   返回 token 后每 2 秒轮询 GET /v1/workout_file_uploads/{token}，最多 15 次（30 秒），
//   status=complete 成功、error 失败。
// 已知问题（README）：部分 iGPSPORT 导出的 FIT 时间戳溢出（接近 2^32），字符串字段混入二进制数据，
//   会导致 Wahoo 服务器解析失败（invalid ASCII control character / Mysql2::Error），
//   这类文件上传成功率约 50%–80%，格式正常的文件可正常上传；备选方案是 FIT 转 GPX
//   （会丢失功率、心率、踏频等传感器数据）。
// 限流：沙箱 25 req/5min、100/hr、250/day（安卓注释，需节流）。
// 密钥：client id/secret 一律留空占位，从 AppConfig.shared（关于页用户自己填，存钥匙串）读取，
//   本文件绝不写真实值。没填就登不上 Wahoo，App 其他功能照常能用。
// DNS：安卓 v8.3.0 有 DoH 兜底（阿里 223.5.5.5，绕过运营商 DNS 污染）；iOS URLSession
//   用系统 DNS，本文件未移植 DoH，解析失败时提示用户切换网络，见 TODO。

import Foundation
import CryptoKit

// MARK: - 小工具（本文件内用）

private func wahooJSONDict(_ data: Data) -> [String: Any]? {
    (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
}

private func wahooParseDate(_ s: String) -> Date {
    if s.isEmpty { return Date(timeIntervalSince1970: 0) }
    let iso = ISO8601DateFormatter()
    if let d = iso.date(from: s) { return d }
    let f = DateFormatter()
    f.locale = Locale(identifier: "en_US_POSIX")
    for format in ["yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd'T'HH:mm:ss", "yyyy/MM/dd HH:mm:ss", "yyyy-MM-dd"] {
        f.dateFormat = format
        if let d = f.date(from: s) { return d }
    }
    if let v = Double(s) {
        return Date(timeIntervalSince1970: v > 1_000_000_000_000 ? v / 1000 : v)
    }
    return Date(timeIntervalSince1970: 0)
}

/// OAuth/表单风格的百分号编码（只留 A-Z a-z 0-9 - . _ ~ 不编码）。
private func wahooFormEncode(_ s: String) -> String {
    let allowed = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~")
    return s.addingPercentEncoding(withAllowedCharacters: allowed) ?? s
}

private func wahooFormBody(_ fields: [(String, String)]) -> Data {
    let body = fields.map { "\(wahooFormEncode($0.0))=\(wahooFormEncode($0.1))" }.joined(separator: "&")
    return Data(body.utf8)
}

private func wahooDecodeHtmlEntities(_ s: String) -> String {
    s.replacingOccurrences(of: "&amp;", with: "&")
        .replacingOccurrences(of: "&lt;", with: "<")
        .replacingOccurrences(of: "&gt;", with: ">")
        .replacingOccurrences(of: "&quot;", with: "\"")
        .replacingOccurrences(of: "&#39;", with: "'")
}

// MARK: - HTML 表单解析（安卓用 Jsoup，本文件用正则，行为对齐）

private struct WahooHTMLForm {
    var action: String
    /// name -> value（checkbox/submit 除外，由调用方按需过滤）
    var inputs: [(name: String, value: String, type: String)]
}

private func wahooAttr(_ tag: String, _ attr: String) -> String? {
    let pattern = "\(attr)\\s*=\\s*\"([^\"]*)\"|\(attr)\\s*=\\s*'([^']*)'"
    guard let re = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive),
          let m = re.firstMatch(in: tag, range: NSRange(tag.startIndex..., in: tag)) else { return nil }
    for i in 1..<m.numberOfRanges {
        if let r = Range(m.range(at: i), in: tag) { return String(tag[r]) }
    }
    return nil
}

/// 解析 HTML 里全部 <form>（按出现顺序）。action 为空时返回 ""，由调用方按当前 URL 补全。
private func wahooParseForms(_ html: String) -> [WahooHTMLForm] {
    var out: [WahooHTMLForm] = []
    guard let formRe = try? NSRegularExpression(
        pattern: "<form\\b[^>]*>(.*?)</form>",
        options: [.caseInsensitive, .dotMatchesLineSeparators]
    ) else { return out }
    let fullRange = NSRange(html.startIndex..., in: html)
    for formMatch in formRe.matches(in: html, range: fullRange) {
        guard let formRange = Range(formMatch.range, in: html),
              let bodyRange = Range(formMatch.range(at: 1), in: html) else { continue }
        let formTag = String(html[formRange])
        let formBody = String(html[bodyRange])
        let action = wahooAttr(formTag, "action") ?? ""
        var inputs: [(name: String, value: String, type: String)] = []
        if let inputRe = try? NSRegularExpression(pattern: "<input\\b[^>]*>", options: .caseInsensitive) {
            for inputMatch in inputRe.matches(in: formBody, range: NSRange(formBody.startIndex..., in: formBody)) {
                guard let r = Range(inputMatch.range, in: formBody) else { continue }
                let tag = String(formBody[r])
                guard let name = wahooAttr(tag, "name"), !name.isEmpty else { continue }
                let value = wahooAttr(tag, "value") ?? ""
                let type = (wahooAttr(tag, "type") ?? "").lowercased()
                inputs.append((name: name, value: value, type: type))
            }
        }
        out.append(WahooHTMLForm(action: action, inputs: inputs))
    }
    return out
}

// MARK: - 不跟随重定向的 URLSession（SAML 流程要读 302 的 Location）

private final class WahooNoRedirectDelegate: NSObject, URLSessionTaskDelegate {
    func urlSession(
        _ session: URLSession, task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse, newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void
    ) {
        completionHandler(nil) // 不跟随，让调用方自己读 Location
    }
}

private struct WahooTokenPair {
    var accessToken: String
    var refreshToken: String

    func toJSON() -> String {
        let obj: [String: Any] = ["access_token": accessToken, "refresh_token": refreshToken]
        guard let data = try? JSONSerialization.data(withJSONObject: obj),
              let s = String(data: data, encoding: .utf8) else { return "" }
        return s
    }

    static func fromJSON(_ s: String) -> WahooTokenPair? {
        guard let data = s.data(using: .utf8), let obj = wahooJSONDict(data) else { return nil }
        let access = obj["access_token"] as? String ?? ""
        guard !access.isEmpty else { return nil }
        return WahooTokenPair(accessToken: access, refreshToken: obj["refresh_token"] as? String ?? "")
    }
}

// MARK: - 引擎

private final class WahooEngine {
    let source: DataSource = .wahoo

    static let apiBase = "https://api.wahooligan.com"
    static let authorizeURL = "https://api.wahooligan.com/oauth/authorize"
    static let tokenURL = "https://api.wahooligan.com/oauth/token"
    static let redirectURI = "https://localhost:8080/"
    static let scopes = "workouts_read workouts_write offline_data user_read"
    static let apiUA = "jichi-ob/6.5.1 (Android)"
    static let browserUA = "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    /// 最近一次换 token 的错误响应体（定位“token 数量超限”等问题用）。
    var lastExchangeError: String?
    /// 最近一次登录失败是否因为令牌数量超限。
    var lastErrorTokenLimit = false

    private let noRedirectDelegate = WahooNoRedirectDelegate()
    private lazy var noRedirectSession: URLSession = {
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = 30
        config.timeoutIntervalForResource = 30
        config.httpCookieStorage = HTTPCookieStorage.shared
        config.httpShouldSetCookies = true
        config.httpCookieAcceptPolicy = .always
        return URLSession(configuration: config, delegate: noRedirectDelegate, delegateQueue: nil)
    }()

    // MARK: 凭证（LoginStore 存 {"access_token":...,"refresh_token":...}）

    func loadTokens() -> WahooTokenPair? {
        guard let stored = LoginStore.token(for: .wahoo) else { return nil }
        return WahooTokenPair.fromJSON(stored)
    }

    func saveTokens(_ pair: WahooTokenPair) {
        LoginStore.saveToken(pair.toJSON(), for: .wahoo)
    }

    func clearTokens() { LoginStore.clearToken(for: .wahoo) }

    /// 开发者凭证：只从 AppConfig 读用户自己填的值，绝不写真实值。
    func clientCredentials() -> (clientId: String, clientSecret: String) {
        (AppConfig.shared.wahooClientId, AppConfig.shared.wahooClientSecret)
    }

    // MARK: 原始请求

    /// 用指定 session 发请求，返回响应体 + 状态码（不跟随重定向的 session 会返回 302 本身）。
    private func rawRequest(
        session: URLSession, url: URL, method: String,
        headers: [String: String] = [:], body: Data? = nil, contentType: String? = nil
    ) async throws -> (Data, HTTPURLResponse) {
        var req = URLRequest(url: url)
        req.httpMethod = method
        req.timeoutInterval = 30
        for (k, v) in headers { req.setValue(v, forHTTPHeaderField: k) }
        if let contentType { req.setValue(contentType, forHTTPHeaderField: "Content-Type") }
        req.httpBody = body
        let (data, resp) = try await session.data(for: req)
        guard let http = resp as? HTTPURLResponse else {
            throw PlatformError.network("Wahoo 服务器没有返回有效的 HTTP 响应")
        }
        return (data, http)
    }

    private func authHeaders(token: String) -> [String: String] {
        ["Authorization": "Bearer \(token)", "Accept": "application/json", "User-Agent": Self.apiUA]
    }

    // MARK: PKCE

    /// 生成 PKCE code_verifier（43–128 字符随机串）与 code_challenge = base64url(SHA256(verifier))。
    static func makePKCE() -> (verifier: String, challenge: String) {
        var bytes = [UInt8](repeating: 0, count: 32)
        for i in 0..<32 { bytes[i] = UInt8.random(in: 0...255) }
        let verifier = Data(bytes).base64EncodedString()
            .replacingOccurrences(of: "+", with: "-")
            .replacingOccurrences(of: "/", with: "_")
            .replacingOccurrences(of: "=", with: "")
        let digest = SHA256.hash(data: Data(verifier.utf8))
        let challenge = Data(digest).base64EncodedString()
            .replacingOccurrences(of: "+", with: "-")
            .replacingOccurrences(of: "/", with: "_")
            .replacingOccurrences(of: "=", with: "")
        return (verifier, challenge)
    }

    /// 授权 URL（登录页组在 WebView 里打开这个地址；code 回调到 redirect_uri）。
    static func authorizationURL(clientId: String, codeChallenge: String) -> String {
        let scope = scopes.replacingOccurrences(of: " ", with: "%20")
        return "\(authorizeURL)?client_id=\(clientId)&redirect_uri=\(redirectURI.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? redirectURI)&scope=\(scope)&response_type=code&code_challenge=\(codeChallenge)&code_challenge_method=S256"
    }

    // MARK: token 换取 / 刷新 / 验证

    /// 用授权码换 token（带 PKCE code_verifier）。失败时把响应体记在 lastExchangeError。
    func exchangeToken(code: String, clientId: String, clientSecret: String, codeVerifier: String) async -> WahooTokenPair? {
        guard let url = URL(string: Self.tokenURL) else { return nil }
        var fields: [(String, String)] = [
            ("grant_type", "authorization_code"),
            ("code", code),
            ("client_id", clientId),
            ("client_secret", clientSecret),
            ("redirect_uri", Self.redirectURI),
        ]
        if !codeVerifier.isEmpty { fields.append(("code_verifier", codeVerifier)) }
        do {
            let (data, resp) = try await rawRequest(
                session: URLSession.shared, url: url, method: "POST",
                body: wahooFormBody(fields), contentType: "application/x-www-form-urlencoded"
            )
            let body = String(data: data, encoding: .utf8) ?? ""
            guard resp.statusCode == 200 else {
                lastExchangeError = body
                return nil
            }
            guard let json = wahooJSONDict(data) else { return nil }
            let access = json["access_token"] as? String ?? ""
            let refresh = json["refresh_token"] as? String ?? ""
            guard !access.isEmpty else { return nil }
            return WahooTokenPair(accessToken: access, refreshToken: refresh)
        } catch {
            return nil
        }
    }

    /// 刷新 token（grant_type=refresh_token）。
    func refreshAccessToken(refresh: String, clientId: String, clientSecret: String) async -> WahooTokenPair? {
        guard let url = URL(string: Self.tokenURL) else { return nil }
        let fields: [(String, String)] = [
            ("grant_type", "refresh_token"),
            ("refresh_token", refresh),
            ("client_id", clientId),
            ("client_secret", clientSecret),
        ]
        do {
            let (data, resp) = try await rawRequest(
                session: URLSession.shared, url: url, method: "POST",
                body: wahooFormBody(fields), contentType: "application/x-www-form-urlencoded"
            )
            guard resp.statusCode == 200, let json = wahooJSONDict(data) else { return nil }
            let access = json["access_token"] as? String ?? ""
            let newRefresh = json["refresh_token"] as? String ?? refresh
            guard !access.isEmpty else { return nil }
            return WahooTokenPair(accessToken: access, refreshToken: newRefresh)
        } catch {
            return nil
        }
    }

    /// 用 token 调 GET /v1/user 验证有效性（v7.6.0：刷新后用新 token 成功调 API，旧 token 才被撤销）。
    func verifyToken(_ token: String) async -> Bool {
        guard let url = URL(string: "\(Self.apiBase)/v1/user") else { return false }
        do {
            let data = try await HTTPClient.shared.get(url: url, headers: authHeaders(token: token))
            _ = data
            return true
        } catch {
            return false
        }
    }

    /// 确保 token 有效，过期则刷新（WahooApi.ensureValidToken）。
    /// 返回有效的 access_token；刷不动返回原 token。
    func ensureValidToken(currentToken: String, refreshToken: String?, clientId: String, clientSecret: String) async -> String {
        guard let refresh = refreshToken, !refresh.isEmpty, !clientId.isEmpty, !clientSecret.isEmpty else {
            return currentToken
        }
        if await verifyToken(currentToken) { return currentToken }
        if let fresh = await refreshAccessToken(refresh: refresh, clientId: clientId, clientSecret: clientSecret),
           await verifyToken(fresh.accessToken) {
            saveTokens(fresh)
            return fresh.accessToken
        }
        return currentToken
    }

    /// 复用已有 token：有效直接用；无效用 refresh_token 刷新；都失败返回 nil。
    /// 登录前先调这个，避免每次重新授权产生新 token（防 10 枚上限）。
    func getUsableTokenOrNull(clientId: String, clientSecret: String) async -> WahooTokenPair? {
        guard let stored = loadTokens() else { return nil }
        if stored.accessToken.isEmpty {
            if stored.refreshToken.isEmpty { return nil }
            return await refreshAndVerify(refresh: stored.refreshToken, clientId: clientId, clientSecret: clientSecret)
        }
        if await verifyToken(stored.accessToken) { return stored }
        if !stored.refreshToken.isEmpty {
            return await refreshAndVerify(refresh: stored.refreshToken, clientId: clientId, clientSecret: clientSecret)
        }
        return nil
    }

    private func refreshAndVerify(refresh: String, clientId: String, clientSecret: String) async -> WahooTokenPair? {
        guard let fresh = await refreshAccessToken(refresh: refresh, clientId: clientId, clientSecret: clientSecret) else { return nil }
        return await verifyToken(fresh.accessToken) ? fresh : nil
    }

    /// 撤销当前应用的全部授权（DELETE /v1/permissions），释放 token 名额。成功返回 true。
    func deauthorize(token: String) async -> Bool {
        guard let url = URL(string: "\(Self.apiBase)/v1/permissions") else { return false }
        do {
            let (_, resp) = try await rawRequest(session: URLSession.shared, url: url, method: "DELETE", headers: authHeaders(token: token))
            return resp.statusCode == 204 || resp.statusCode == 200
        } catch {
            return false
        }
    }

    // MARK: 登录（SAML + OAuth2 全流程）

    /// 账号密码登录。先复用/刷新已存 token，都不行再走完整 SAML + OAuth2 授权流程。
    func login(username: String, password: String) async throws {
        lastExchangeError = nil
        lastErrorTokenLimit = false
        let (clientId, clientSecret) = clientCredentials()
        guard !clientId.isEmpty, !clientSecret.isEmpty else {
            throw PlatformError.authFailed("Wahoo 开发者凭证还没填：请先在关于页填入自己的 Wahoo client id / client secret，再登录")
        }
        // 先复用已有 token，避免每次重新授权产生新 token
        if let usable = await getUsableTokenOrNull(clientId: clientId, clientSecret: clientSecret) {
            saveTokens(usable)
            return
        }
        guard let pair = await samlLogin(email: username, password: password, clientId: clientId, clientSecret: clientSecret) else {
            if lastErrorTokenLimit {
                throw PlatformError.authFailed("Wahoo 令牌数量超限：该账号下未撤销的 token 已达 10 枚上限。请打开 Wahoo 官方 App → 设置 → 已授权应用 → 找到本应用 → 撤销授权，再回来重新登录")
            }
            throw PlatformError.authFailed(lastExchangeError.map { "Wahoo 登录失败：\($0.prefix(200))" } ?? "Wahoo 登录失败，请检查账号密码后重试")
        }
        saveTokens(pair)
    }

    /// SAML 登录全流程（WahooOAuth2Service.login）。成功返回 token 对，失败返回 nil。
    private func samlLogin(email: String, password: String, clientId: String, clientSecret: String) async -> WahooTokenPair? {
        let (verifier, challenge) = Self.makePKCE()
        let authURLString = Self.authorizationURL(clientId: clientId, codeChallenge: challenge)
        guard let authURL = URL(string: authURLString) else { return nil }

        // Step 1：访问授权 URL（跟随重定向），拿到登录页 HTML 与最终 URL
        let loginHtml: String
        let currentURL: URL
        do {
            var req = URLRequest(url: authURL)
            req.httpMethod = "GET"
            req.timeoutInterval = 30
            req.setValue(Self.browserUA, forHTTPHeaderField: "User-Agent")
            req.setValue("text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8", forHTTPHeaderField: "Accept")
            req.setValue("zh-CN,zh;q=0.9,en;q=0.8", forHTTPHeaderField: "Accept-Language")
            let (data, resp) = try await HTTPClient.shared.requestRaw(req)
            loginHtml = String(data: data, encoding: .utf8) ?? ""
            currentURL = resp.url ?? authURL
        } catch {
            return nil
        }
        guard !loginHtml.isEmpty else { return nil }

        // Step 2：解析 SAML 登录表单（第一个 <form>），提交账号密码
        guard let loginForm = wahooParseForms(loginHtml).first else { return nil }
        let loginAction = resolveURL(base: currentURL, relative: wahooDecodeHtmlEntities(loginForm.action))
        var loginFields: [(String, String)] = []
        for input in loginForm.inputs where input.type != "checkbox" && input.type != "submit" {
            loginFields.append((input.name, input.value))
        }
        loginFields.append(("email", email))
        loginFields.append(("password", password))
        guard let loginActionURL = URL(string: loginAction) else { return nil }
        let samlResp: (data: Data, resp: HTTPURLResponse)
        do {
            samlResp = try await postFormNoRedirect(url: loginActionURL, fields: loginFields)
        } catch {
            return nil
        }
        guard samlResp.resp.statusCode == 200 else { return nil }
        let samlBody = String(data: samlResp.data, encoding: .utf8) ?? ""

        // Step 4：解析 SAMLResponse 表单（只取 hidden 字段），提交
        guard let samlForm = wahooParseForms(samlBody).first else { return nil }
        let samlAction = resolveURL(base: loginActionURL, relative: wahooDecodeHtmlEntities(samlForm.action))
        var samlFields: [(String, String)] = []
        for input in samlForm.inputs where input.type == "hidden" {
            samlFields.append((input.name, input.value))
        }
        guard let samlActionURL = URL(string: samlAction) else { return nil }
        let callbackResp: (data: Data, resp: HTTPURLResponse)
        do {
            callbackResp = try await postFormNoRedirect(url: samlActionURL, fields: samlFields)
        } catch {
            return nil
        }
        guard callbackResp.resp.statusCode == 302,
              let callbackLocation = callbackResp.resp.value(forHTTPHeaderField: "Location"),
              !callbackLocation.isEmpty else { return nil }

        // Step 6：获取授权确认页面
        let authorizePageURLString = resolveURL(base: samlActionURL, relative: wahooDecodeHtmlEntities(callbackLocation))
        guard let authorizePageURL = URL(string: authorizePageURLString) else { return nil }
        let authorizePage: (data: Data, resp: HTTPURLResponse)
        do {
            authorizePage = try await rawRequest(session: noRedirectSession, url: authorizePageURL, method: "GET", headers: [
                "User-Agent": Self.browserUA,
                "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
                "Accept-Language": "zh-CN,zh;q=0.9,en;q=0.8",
            ])
        } catch {
            return nil
        }
        guard authorizePage.resp.statusCode == 200 else { return nil }
        let authorizeHtml = String(data: authorizePage.data, encoding: .utf8) ?? ""

        // Step 7：找 Authorize 表单（commit=Authorize/授权/Allow/同意，排除 Cancel/取消/Deny/拒绝）
        var authorizeForm: WahooHTMLForm?
        for form in wahooParseForms(authorizeHtml) {
            let commit = form.inputs.first { $0.name == "commit" }?.value ?? ""
            let hasAuthorize = commit.equalsIgnoreCase("Authorize") || commit == "授权"
                || commit.equalsIgnoreCase("Allow") || commit == "同意"
            let isCancel = commit.equalsIgnoreCase("Cancel") || commit == "取消"
                || commit.equalsIgnoreCase("Deny") || commit == "拒绝"
            if hasAuthorize, !isCancel { authorizeForm = form; break }
        }
        guard let authorizeForm else { return nil }
        let authorizeAction = resolveURL(base: authorizePageURL, relative: wahooDecodeHtmlEntities(authorizeForm.action))
        var authorizeFields: [(String, String)] = []
        for input in authorizeForm.inputs where input.type != "checkbox" && input.type != "submit" {
            authorizeFields.append((input.name, input.value))
        }
        if !authorizeFields.contains(where: { $0.0 == "commit" }) {
            authorizeFields.append(("commit", "Authorize"))
        }
        guard let authorizeActionURL = URL(string: authorizeAction) else { return nil }

        // Step 8：提交 Authorize 表单，期望 302，Location 里带 code=
        let finalResp: (data: Data, resp: HTTPURLResponse)
        do {
            finalResp = try await postFormNoRedirect(url: authorizeActionURL, fields: authorizeFields)
        } catch {
            return nil
        }
        guard finalResp.resp.statusCode == 302,
              let finalLocation = finalResp.resp.value(forHTTPHeaderField: "Location"),
              finalLocation.contains("code=") else { return nil }
        guard let code = finalLocation.components(separatedBy: "code=").last?.components(separatedBy: "&").first,
              !code.isEmpty else { return nil }

        // Step 10：换取 access_token（带 PKCE code_verifier）
        guard let pair = await exchangeToken(code: code, clientId: clientId, clientSecret: clientSecret, codeVerifier: verifier) else {
            if let err = lastExchangeError, err.contains("Too many unrevoked access tokens") {
                lastErrorTokenLimit = true
            }
            return nil
        }
        return pair
    }

    private func postFormNoRedirect(url: URL, fields: [(String, String)]) async throws -> (data: Data, resp: HTTPURLResponse) {
        try await rawRequest(
            session: noRedirectSession, url: url, method: "POST",
            headers: [
                "User-Agent": Self.browserUA,
                "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
                "Accept-Language": "zh-CN,zh;q=0.9,en;q=0.8",
                "Referer": url.absoluteString,
            ],
            body: wahooFormBody(fields), contentType: "application/x-www-form-urlencoded"
        )
    }

    private func resolveURL(base: URL, relative: String) -> String {
        if relative.isEmpty { return base.absoluteString }
        if let resolved = URL(string: relative, relativeTo: base)?.absoluteString { return resolved }
        if relative.hasPrefix("http") { return relative }
        return "https://api.wahooligan.com\(relative.hasPrefix("/") ? relative : "/\(relative)")"
    }

    // MARK: 用户名 / 列表 / 下载 / 上传

    /// GET /v1/user → first_name + last_name（没设姓名用 email/id 兜底）。
    func getUsername(token: String) async -> String? {
        guard let url = URL(string: "\(Self.apiBase)/v1/user") else { return nil }
        do {
            let data = try await HTTPClient.shared.get(url: url, headers: authHeaders(token: token))
            guard let json = wahooJSONDict(data) else { return nil }
            let name = ((json["first_name"] as? String ?? "") + " " + (json["last_name"] as? String ?? "")).trimmingCharacters(in: .whitespaces)
            if !name.isEmpty { return name }
            let email = json["email"] as? String ?? ""
            if !email.isEmpty { return email }
            let id = json["id"] as? String ?? ""
            return id.isEmpty ? "Wahoo用户" : id
        } catch {
            return nil
        }
    }

    /// GET /v1/workouts?page=&per_page=30。安卓只拉一页，本文件为满足 limit 循环翻页。
    func getActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        guard let tokens = loadTokens(), !tokens.accessToken.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        let (clientId, clientSecret) = clientCredentials()
        let token = await ensureValidToken(
            currentToken: tokens.accessToken,
            refreshToken: tokens.refreshToken.isEmpty ? nil : tokens.refreshToken,
            clientId: clientId, clientSecret: clientSecret
        )
        let perPage = 30
        var out: [ActivityRecord] = []
        var page = (skip / perPage) + 1
        var skipped = skip - (page - 1) * perPage
        while out.count < limit {
            guard let url = URL(string: "\(Self.apiBase)/v1/workouts?page=\(page)&per_page=\(perPage)") else { break }
            let data: Data
            do {
                data = try await HTTPClient.shared.get(url: url, headers: authHeaders(token: token))
            } catch {
                break // 安卓同款：请求失败返回已拉到的部分
            }
            guard let json = wahooJSONDict(data),
                  let arr = json["workouts"] as? [[String: Any]] else { break }
            if arr.isEmpty { break }
            for item in arr {
                if skipped > 0 { skipped -= 1; continue }
                if out.count >= limit { break }
                let id = (item["id"] as? NSNumber)?.int64Value ?? 0
                if id == 0 { continue }
                let title = item["name"] as? String ?? ""
                let startTime = item["starts"] as? String ?? ""
                // 距离多键探测（distanceKm/totalDistance/distance_km；≥1000 视为米）
                var dist = -1.0
                for key in ["distance", "distanceKm", "totalDistance", "distance_km"] {
                    if let v = (item[key] as? NSNumber)?.doubleValue { dist = v; break }
                }
                let distanceKm: Double
                if dist < 0 { distanceKm = 0 } else if dist >= 1000 { distanceKm = dist / 1000.0 } else { distanceKm = dist }
                var duration = (item["duration"] as? NSNumber)?.doubleValue ?? 0
                if duration <= 0 { duration = (item["durationSec"] as? NSNumber)?.doubleValue ?? 0 }
                if duration <= 0 { duration = (item["totalTime"] as? NSNumber)?.doubleValue ?? 0 }
                out.append(ActivityRecord(
                    id: "\(id)",
                    source: .wahoo,
                    title: title.isEmpty ? "Wahoo骑行" : title,
                    startDate: wahooParseDate(startTime),
                    distanceMeters: distanceKm * 1000,
                    durationSeconds: duration,
                    elevationGainMeters: 0,
                    sportType: "",
                    remoteId: "\(id)",
                    fileName: "\(id).fit"
                ))
            }
            if arr.count < perPage { break }
            page += 1
        }
        return out
    }

    /// 下载 FIT：先 GET /v1/workouts/{id} 拿 workout_summary.file.url，再 GET CDN 直链（免认证）。
    func downloadFit(activity: ActivityRecord) async throws -> Data {
        guard let tokens = loadTokens(), !tokens.accessToken.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        let (clientId, clientSecret) = clientCredentials()
        let token = await ensureValidToken(
            currentToken: tokens.accessToken,
            refreshToken: tokens.refreshToken.isEmpty ? nil : tokens.refreshToken,
            clientId: clientId, clientSecret: clientSecret
        )
        let workoutId = activity.remoteId.isEmpty ? activity.id : activity.remoteId
        guard let detailURL = URL(string: "\(Self.apiBase)/v1/workouts/\(workoutId)") else {
            throw PlatformError.network("Wahoo 下载地址无效")
        }
        let detailData = try await HTTPClient.shared.get(url: detailURL, headers: authHeaders(token: token))
        guard let json = wahooJSONDict(detailData),
              let fileUrl = ((json["workout_summary"] as? [String: Any])?["file"] as? [String: Any])?["url"] as? String,
              !fileUrl.isEmpty,
              let fileURL = URL(string: fileUrl) else {
            throw PlatformError.network("Wahoo 下载失败：该活动没有可下载的文件地址")
        }
        return try await HTTPClient.shared.get(url: fileURL, headers: ["User-Agent": Self.apiUA])
    }

    /// 上传 FIT（WahooApi.uploadFit）：POST /v1/workout_file_uploads（base64）→ 轮询状态。
    /// 注意：部分 iGPSPORT 导出的 FIT 时间戳溢出（接近 2^32）、字符串字段混入二进制数据，
    /// 会导致 Wahoo 解析失败（invalid ASCII control character / Mysql2::Error），
    /// 这类文件成功率约 50%–80%，不是本文件能修的，见文件头。
    func uploadFit(data: Data, fileName: String) async throws {
        guard let tokens = loadTokens(), !tokens.accessToken.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        let (clientId, clientSecret) = clientCredentials()
        let token = await ensureValidToken(
            currentToken: tokens.accessToken,
            refreshToken: tokens.refreshToken.isEmpty ? nil : tokens.refreshToken,
            clientId: clientId, clientSecret: clientSecret
        )
        let base64Fit = data.base64EncodedString()
        guard let url = URL(string: "\(Self.apiBase)/v1/workout_file_uploads") else {
            throw PlatformError.network("Wahoo 上传地址无效")
        }
        let fields: [(String, String)] = [
            ("workout_file_upload[file]", "data:application/vnd.fit;base64,\(base64Fit)"),
            ("workout_file_upload[filename]", fileName),
        ]
        let (respData, resp) = try await rawRequest(
            session: URLSession.shared, url: url, method: "POST",
            headers: authHeaders(token: token),
            body: wahooFormBody(fields), contentType: "application/x-www-form-urlencoded"
        )
        let body = String(data: respData, encoding: .utf8) ?? ""
        guard resp.statusCode == 200 || resp.statusCode == 201 else {
            throw PlatformError.network("Wahoo 上传失败 HTTP \(resp.statusCode)：\(body.prefix(200))")
        }
        // 解析返回的 token；解析失败可能是直接返回了 workout_summary，即已完成
        guard let json = wahooJSONDict(respData),
              let uploadToken = json["token"] as? String, !uploadToken.isEmpty else {
            return
        }
        // 轮询状态（最多 30 秒，每 2 秒一次）
        for _ in 1...15 {
            try? await Task.sleep(nanoseconds: 2_000_000_000)
            guard let statusURL = URL(string: "\(Self.apiBase)/v1/workout_file_uploads/\(uploadToken)") else { break }
            do {
                let statusData = try await HTTPClient.shared.get(url: statusURL, headers: authHeaders(token: token))
                guard let statusJson = wahooJSONDict(statusData) else { continue }
                let status = statusJson["status"] as? String ?? "unknown"
                switch status {
                case "complete":
                    return
                case "error":
                    let msg = statusJson["error"] as? String ?? "未知错误"
                    throw PlatformError.network("Wahoo 上传失败：\(msg)")
                default:
                    continue
                }
            } catch let e as PlatformError {
                throw e
            } catch {
                continue
            }
        }
        throw PlatformError.network("Wahoo 上传超时（30 秒未完成）")
    }
}

private extension String {
    func equalsIgnoreCase(_ other: String) -> Bool {
        self.compare(other, options: .caseInsensitive) == .orderedSame
    }
}

// MARK: - 对外接口

/// Wahoo。登录方式：账号密码（底层走 OAuth2 + SAML 授权流程，见文件头）。
/// 开发者凭证从 AppConfig.shared 读（关于页用户自己填），本文件不含任何真实值。
public struct WahooAPI: PlatformAPI {
    public let source: DataSource = .wahoo

    private let engine = WahooEngine()

    public init() {}

    /// 本地有没有凭证（不发网络请求）。
    public func isLoggedIn() async -> Bool { LoginStore.isLoggedIn(.wahoo) }

    public func login(username: String, password: String) async throws {
        try await engine.login(username: username, password: password)
    }

    public func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        try await engine.getActivities(limit: limit, skip: skip)
    }

    public func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        try await engine.downloadFit(activity: activity)
    }

    public func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        try await engine.uploadFit(data: data, fileName: fileName)
    }

    /// 授权 URL（登录页组在 WebView 里打开；PKCE challenge 由调用方用 makePKCE 生成后传进来）。
    public static func authorizationURL(clientId: String, codeChallenge: String) -> String {
        WahooEngine.authorizationURL(clientId: clientId, codeChallenge: codeChallenge)
    }

    /// 生成 PKCE（verifier 留着换 token 时用，challenge 放授权 URL 里）。
    public static func makePKCE() -> (verifier: String, challenge: String) {
        WahooEngine.makePKCE()
    }

    /// WebView 拿到授权码后，调这个换 token（带 PKCE code_verifier）。
    /// 换不到返回 false；token 数量超限时 lastErrorTokenLimit 为 true。
    public func exchangeCode(_ code: String, codeVerifier: String) async -> Bool {
        let (clientId, clientSecret) = engine.clientCredentials()
        guard !clientId.isEmpty, !clientSecret.isEmpty else { return false }
        guard let pair = await engine.exchangeToken(code: code, clientId: clientId, clientSecret: clientSecret, codeVerifier: codeVerifier) else {
            return false
        }
        engine.saveTokens(pair)
        return true
    }

    /// 最近一次换 token 的错误响应体（定位“token 数量超限”等问题用）。
    public var lastExchangeError: String? { engine.lastExchangeError }

    /// 最近一次登录失败是否因为令牌数量超限（10 枚上限）。
    public var lastErrorTokenLimit: Bool { engine.lastErrorTokenLimit }

    /// 撤销当前应用的全部授权（DELETE /v1/permissions），释放 token 名额。成功返回 true。
    public func deauthorize() async -> Bool {
        guard let tokens = engine.loadTokens(), !tokens.accessToken.isEmpty else { return false }
        return await engine.deauthorize(token: tokens.accessToken)
    }

    /// 用户名（调 GET /v1/user），登录失效返回 nil。
    public func getUsername() async -> String? {
        guard let tokens = engine.loadTokens(), !tokens.accessToken.isEmpty else { return nil }
        return await engine.getUsername(token: tokens.accessToken)
    }

    /// 退出登录：清掉本平台凭证。
    public func logout() { engine.clearTokens() }
}

// TODO（待真机验证）：
// 1. SAML 登录全流程（表单解析、302 跳转、Authorize 确认、PKCE 换 token）是按
//    WahooOAuth2Service.kt 逐字移植的，但 Wahoo 的登录页/SAML IdP 随时可能改版，
//    必须真机走一遍；其中 HTML 表单解析从 Jsoup 换成了正则，同样待真机验证。
// 2. 安卓 v8.3.0 的 DoH 兜底（阿里 223.5.5.5，绕过运营商 DNS 污染）未移植；
//    若 api.wahooligan.com 在某些网络下解析失败，提示用户切换网络（WiFi/流量）后重试。
// 3. getActivities 安卓只拉一页（per_page=30），本文件为满足 limit 循环翻页，
//    多页行为待真机验证（Wahoo 列表接口是否支持 page>1 与 per_page=30 以外的取值）。
// 4. 上传轮询 15 次×2 秒=30 秒超时、以及 base64 表单的编码方式，待真机验证。
// 5. iGPSPORT 导出 FIT 的时间戳溢出导致 Wahoo 解析失败，是服务端已知问题，
//    本文件只在注释里写明，不做格式修复；FIT 转 GPX 备选方案未实现。

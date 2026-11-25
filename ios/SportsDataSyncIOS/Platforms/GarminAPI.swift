// 待真机验证
// GarminAPI.swift
// 佳明国际 + 佳明中国 — 对照安卓 GarminApi.kt / GarminOAuthHelper.kt /
// GarminWellnessApi.kt / GarminWellnessSync.kt / GarminCooldown.kt / api/GARMIN_SPLIT.md（v9.6.9）原样移植
//
// 登录：mobile SSO + DI Token 直连 connectapi（中国区 v7.9.0 起同样走 DI 直连，不走 WebView 慢路径）。
//   国际区顺序（LoginWebActivity.kt:343-347）：先 OAuth1 老表单直连，失败再 mobile SSO；
//   中国区顺序：先 mobile SSO，失败再 OAuth1。密码错 / 两步验证 / 429 都是账号级致命错误，
//   一出现就停，不再换通道（v8.3.4，换通道只会污染更多通道触发 24H 风控）。
//   mobile SSO：POST {sso}/mobile/api/login?clientId=&locale=&service= 取 serviceTicketId，
//   再 POST {diauth}/di-oauth2-service/oauth/token 换 DI token（Basic base64("clientId:")）。
//   OAuth1：GET {sso}/sso/signin 拿 _csrf → POST 表单拿 ticket → GET {connect}/modern/?ticket= 拿
//   session cookie → GET /oauth-service/oauth/exchange/user/2.0 拿 oauth_token →
//   GET /oauth-service/oauth/preauthorized 拿 oauth_token_secret；exchange 端点 2026 实测已 404，
//   失败时自动降级 ticket 换 DI token，再不行就返回带 SESSION/CASTGC 的 cookie 凭证走 gc-api。
//   不支持 MFA（两步验证）：服务端一报 MFA_REQUIRED 就直接停，提示用户先在佳明 App 里关掉两步验证。
// 列表/下载/上传：优先 DI/OAuth1 直连 {connectapi}/…（connectapi.garmin.com / .cn），
//   无 token 时回退 gc-api + cookie（{connect}.garmin.com/gc-api）。WebView 回退链在安卓里是
//   fetchViaWebView / uploadViaWebView，iOS 这边没有现成 WebView 桥，先不搬，TODO 待 UI 组接 WKWebView。
// 列表：GET {host}/activitylist-service/activities/search/activities?start=&limit=
// 下载：GET {host}/download-service/files/activity/{id}，返回 zip，解出第一个 .fit（裸 FIT 兜底）。
// 上传：POST {connectapi}/upload-service/upload（无尾斜杠），gc-api 是 …/upload-service/upload/
//   （带尾斜杠，别写错）；multipart 字段名 file，application/octet-stream；
//   200/201/202 成功，409 Duplicate Activity 是重复，400/415 是文件被拒；只有连接层错误重试 3 次。
// 健康数据（v8.3.5）：GET {host}/download-service/files/wellness/{yyyy-MM-dd} 下载 zip；
//   上传复用同一 upload-service/upload，419 = 目标账号未绑定健康设备。
// 密钥：OAuth1 consumer KEY 是 garminglobal6、SECRET 是空串（GarminApi.kt 自 v8.1.9 起就这样，
//   原样照搬，不编造）。GarminOAuthHelper.kt 里另一套 consumer（ticket→OAuth1→OAuth2 链路）
//   是 garth 共享 S3 桶的真实密钥，按任务要求不写真实值，本文件不搬那条链路，见 TODO。
// 风控冷却：429 后按 clientId×email 写 24 小时冷却（UserDefaults，key 规则照 GarminCooldown.kt，
//   Java hashCode 口径），冷却期内不再试该通道；登录成功后清掉该账号冷却。
// 超时：中国区慢，上传约 30–60 秒，本文件上传用 300 秒、下载/列表 120 秒；
//   状态敏感的调用（登录要读响应体判 MFA/密码错、上传要区分 409/400/415）走
//   HTTPClient.shared.requestRaw（非 2xx 不抛错，响应体和状态码都返回，超时走请求自带的值）；
//   简单的 GET（列表/下载/用户名）用 HTTPClient.shared。

import Foundation
import CryptoKit
import Compression

// MARK: - 小工具（本文件内用）

/// Java String.hashCode() 口径（冷却 key 用；Swift 的 hashValue 每次运行都变，不能用来持久化）。
private func garminJavaHash(_ s: String) -> Int32 {
    var h: Int32 = 0
    for scalar in s.unicodeScalars {
        h = h &* 31 &+ Int32(bitPattern: scalar.value)
    }
    return h
}

/// OAuth1 风格的百分号编码（RFC 3986，只留 A-Z a-z 0-9 - . _ ~ 不编码）。
private func garminOAuthEncode(_ s: String) -> String {
    let allowed = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~")
    return s.addingPercentEncoding(withAllowedCharacters: allowed) ?? s
}

/// 表单编码（application/x-www-form-urlencoded，空格编成 %20）。
private func garminFormEncode(_ fields: [(String, String)]) -> Data {
    let body = fields.map { k, v in "\(garminOAuthEncode(k))=\(garminOAuthEncode(v))" }.joined(separator: "&")
    return Data(body.utf8)
}

private func garminJSONDict(_ data: Data) -> [String: Any]? {
    (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
}

private func garminJSONArray(_ data: Data) -> [[String: Any]]? {
    (try? JSONSerialization.jsonObject(with: data)) as? [[String: Any]]
}

/// 解析 "yyyy-MM-dd HH:mm:ss" / ISO8601 等字符串时间为 Date，失败返回 1970。
private func garminParseDate(_ s: String) -> Date {
    if s.isEmpty { return Date(timeIntervalSince1970: 0) }
    let iso = ISO8601DateFormatter()
    if let d = iso.date(from: s) { return d }
    let f = DateFormatter()
    f.locale = Locale(identifier: "en_US_POSIX")
    for format in ["yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd'T'HH:mm:ss", "yyyy-MM-dd'T'HH:mm:ss.SSSZ", "yyyy/MM/dd HH:mm:ss", "yyyy-MM-dd"] {
        f.dateFormat = format
        if let d = f.date(from: s) { return d }
    }
    if let v = Double(s) {
        return Date(timeIntervalSince1970: v > 1_000_000_000_000 ? v / 1000 : v)
    }
    return Date(timeIntervalSince1970: 0)
}

private func garminFirstMatch(pattern: String, in text: String) -> String? {
    guard let re = try? NSRegularExpression(pattern: pattern),
          let m = re.firstMatch(in: text, range: NSRange(text.startIndex..., in: text)),
          m.numberOfRanges > 1,
          let r = Range(m.range(at: 1), in: text) else { return nil }
    return String(text[r])
}

/// HMAC-SHA1，返回 base64（OAuth1 签名用）。
private func garminHmacSHA1Base64(key: String, data: String) -> String {
    let mac = HMAC<Insecure.SHA1>.authenticationCode(
        for: Data(data.utf8),
        using: SymmetricKey(data: Data(key.utf8))
    )
    return Data(mac).base64EncodedString()
}

// MARK: - ZIP 解压（download-service 返回 zip，里面装一个 .fit）

/// 取 zip 里第一个 .fit；不是 zip 而是裸 FIT（第 8、9 字节是 ".F"）就原样返回。
/// deflate 解压说明：ZIP 存的是 raw DEFLATE，Compression 的 COMPRESSION_ZLIB 要 zlib 头，
/// 这里补 0x78 0x9C 头 + 4 字节 Adler 占位——TODO 待真机验证，若解不出请改接 SSZipArchive/minizip。
private func garminUnzipFirstFit(_ zipBytes: Data) -> Data? {
    if zipBytes.count >= 14, zipBytes[8] == UInt8(ascii: "."), zipBytes[9] == UInt8(ascii: "F") {
        return zipBytes
    }
    let bytes = [UInt8](zipBytes)
    func u16(_ o: Int) -> UInt16 { UInt16(bytes[o]) | (UInt16(bytes[o + 1]) << 8) }
    func u32(_ o: Int) -> UInt32 {
        UInt32(bytes[o]) | (UInt32(bytes[o + 1]) << 8) | (UInt32(bytes[o + 2]) << 16) | (UInt32(bytes[o + 3]) << 24)
    }
    var offset = 0
    while offset + 30 <= bytes.count {
        guard bytes[offset] == 0x50, bytes[offset + 1] == 0x4B, bytes[offset + 2] == 0x03, bytes[offset + 3] == 0x04 else { break }
        let method = u16(offset + 8)
        let compSize = Int(u32(offset + 18))
        let nameLen = Int(u16(offset + 26))
        let extraLen = Int(u16(offset + 28))
        let nameStart = offset + 30
        let nameEnd = nameStart + nameLen
        guard nameEnd <= bytes.count else { break }
        let name = String(bytes: bytes[nameStart..<nameEnd], encoding: .utf8) ?? ""
        let dataStart = nameEnd + extraLen
        let dataEnd = dataStart + compSize
        guard dataEnd <= bytes.count else { break }
        if name.lowercased().hasSuffix(".fit") {
            let comp = Data(bytes[dataStart..<dataEnd])
            if method == 0 { return comp }
            if method == 8 { return garminInflateRawDeflate(comp) }
            return nil
        }
        offset = dataEnd
    }
    return nil
}

private func garminInflateRawDeflate(_ raw: Data) -> Data? {
    var wrapped = Data([0x78, 0x9C])
    wrapped.append(raw)
    wrapped.append(Data([0, 0, 0, 0]))
    var dstSize = max(raw.count * 4, 4096)
    for _ in 0..<8 {
        var dst = Data(count: dstSize)
        let decoded = wrapped.withUnsafeBytes { src in
            dst.withUnsafeMutableBytes { d in
                compression_decode_buffer(
                    d.baseAddress!.assumingMemoryBound(to: UInt8.self), dstSize,
                    src.baseAddress!.assumingMemoryBound(to: UInt8.self), wrapped.count,
                    nil, COMPRESSION_ZLIB
                )
            }
        }
        if decoded > 0, decoded < dstSize { return dst.prefix(decoded) }
        if decoded == dstSize { dstSize *= 2; continue }
        return nil
    }
    return nil
}

// MARK: - 凭证（与安卓 GarminSession 的 JSON 字段一一对应）

private struct GarminCredential {
    var cookies = ""
    var csrf = ""
    var diToken = ""
    var diRefreshToken = ""
    var diClientId = ""
    var diExpiresAt: Int64 = 0
    var email = ""
    var oauthToken = ""
    var oauthTokenSecret = ""

    var hasDiToken: Bool { !diToken.isEmpty }
    var hasOAuth1: Bool { !oauthToken.isEmpty }
    var diExpired: Bool {
        diExpiresAt <= 0 || Int64(Date().timeIntervalSince1970) >= diExpiresAt - 60
    }

    init() {}
    init?(jsonString: String) {
        guard let data = jsonString.data(using: .utf8),
              let obj = garminJSONDict(data) else { return nil }
        // 兼容两种存法：完整凭证 JSON，或 WebView 登录后只存了 jwt_web/session 的旧格式
        let jwtWeb = obj["jwt_web"] as? String ?? ""
        let sessionCookie = obj["session"] as? String ?? ""
        let savedCookies = obj["cookies"] as? String ?? ""
        if !savedCookies.isEmpty {
            cookies = savedCookies
        } else if !jwtWeb.isEmpty, !sessionCookie.isEmpty {
            cookies = "JWT_WEB=\(jwtWeb); session=\(sessionCookie)"
        } else {
            cookies = ""
        }
        csrf = obj["csrf"] as? String ?? ""
        diToken = obj["di_token"] as? String ?? ""
        diRefreshToken = obj["di_refresh_token"] as? String ?? ""
        diClientId = obj["di_client_id"] as? String ?? ""
        diExpiresAt = (obj["di_expires_at"] as? NSNumber)?.int64Value ?? 0
        email = obj["email"] as? String ?? ""
        oauthToken = obj["oauth_token"] as? String ?? ""
        oauthTokenSecret = obj["oauth_token_secret"] as? String ?? ""
        guard !cookies.isEmpty || !diToken.isEmpty || !oauthToken.isEmpty else { return nil }
    }

    func toJSON() -> String {
        var obj: [String: Any] = ["cookies": cookies, "csrf": csrf]
        if !diToken.isEmpty { obj["di_token"] = diToken }
        if !diRefreshToken.isEmpty { obj["di_refresh_token"] = diRefreshToken }
        if !diClientId.isEmpty { obj["di_client_id"] = diClientId }
        if diExpiresAt > 0 { obj["di_expires_at"] = diExpiresAt }
        if !email.isEmpty { obj["email"] = email }
        if !oauthToken.isEmpty { obj["oauth_token"] = oauthToken }
        if !oauthTokenSecret.isEmpty { obj["oauth_token_secret"] = oauthTokenSecret }
        guard let data = try? JSONSerialization.data(withJSONObject: obj),
              let s = String(data: data, encoding: .utf8) else { return "" }
        return s
    }
}

// MARK: - 429 风控冷却（GarminCooldown.kt：24 小时，clientId×email 维度）

private enum GarminCooldownStore {
    private static let cooldownMs: Int64 = 24 * 60 * 60 * 1000
    private static let prefix = "garmin_cooldown"

    private static func key(source: DataSource, email: String?, clientId: String?) -> String {
        let tag = source == .garminCN ? "cn" : "com"
        if let email, !email.isEmpty, let clientId, !clientId.isEmpty {
            return "garmin_\(tag)_cooldown_\(garminJavaHash(clientId))_\(garminJavaHash(email))"
        } else if let clientId, !clientId.isEmpty {
            return "garmin_\(tag)_cooldown_\(garminJavaHash(clientId))"
        } else {
            return "garmin_\(tag)_cooldown_until"
        }
    }

    static func isCooldown(source: DataSource, email: String?, clientId: String?) -> Bool {
        let until = UserDefaults.standard.object(forKey: "\(prefix)_\(key(source: source, email: email, clientId: clientId))") as? Int64 ?? 0
        return Int64(Date().timeIntervalSince1970 * 1000) < until
    }

    static func writeCooldown(source: DataSource, email: String?, clientId: String?) {
        let until = Int64(Date().timeIntervalSince1970 * 1000) + cooldownMs
        UserDefaults.standard.set(until, forKey: "\(prefix)_\(key(source: source, email: email, clientId: clientId))")
    }

    static func remainMinutes(source: DataSource, email: String?, clientId: String?) -> Int64 {
        let until = UserDefaults.standard.object(forKey: "\(prefix)_\(key(source: source, email: email, clientId: clientId))") as? Int64 ?? 0
        let remain = until - Int64(Date().timeIntervalSince1970 * 1000)
        return remain > 0 ? remain / 60000 : 0
    }

    /// 登录成功后清掉该账号的冷却（覆盖安装残留的旧冷却会误拦“24 小时后登录”，服务端并无硬限）。
    static func clearCooldown(source: DataSource, email: String, channels: [(String, String)]) {
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: "\(prefix)_\(key(source: source, email: nil, clientId: nil))")
        defaults.removeObject(forKey: "\(prefix)_\(key(source: source, email: email, clientId: nil))")
        defaults.removeObject(forKey: "\(prefix)_\(key(source: source, email: email, clientId: "oauth1"))")
        for (clientId, _) in channels {
            defaults.removeObject(forKey: "\(prefix)_\(key(source: source, email: email, clientId: clientId))")
        }
    }
}

// MARK: - 引擎（国际/中国共用，isCN 区分）

private final class GarminEngine {
    let source: DataSource
    let isCN: Bool

    // 最近一次登录的致命错误：密码错误 / 两步验证 / 风控限流（GarminApi.lastGarminAuthError）。
    var lastAuthError: String?

    // SSO 通道（GarminCooldown.kt）：clientId × serviceUrl
    private var ssoChannels: [(clientId: String, serviceUrl: String)] {
        isCN
            ? [("GCM_ANDROID_DARK", "https://mobile.integration.garmin.cn/gcm/android"),
               ("GCM_IOS_DARK", "https://mobile.integration.garmin.cn/gcm/ios")]
            : [("GCM_IOS_DARK", "https://mobile.integration.garmin.com/gcm/ios"),
               ("GCM_ANDROID_DARK", "https://mobile.integration.garmin.com/gcm/android"),
               ("GCM_ANDROID_LIGHT", "https://mobile.integration.garmin.com/gcm/android"),
               ("GarminConnect", "https://connect.garmin.com/modern/")]
    }

    private var ssoOrigin: String { isCN ? "https://sso.garmin.cn" : "https://sso.garmin.com" }
    private var ssoLoginURL: String { isCN ? "https://sso.garmin.cn/mobile/api/login" : "https://sso.garmin.com/mobile/api/login" }
    private var diTokenURL: String { isCN ? "https://diauth.garmin.cn/di-oauth2-service/oauth/token" : "https://diauth.garmin.com/di-oauth2-service/oauth/token" }
    private var diGrantType: String {
        isCN ? "https://connectapi.garmin.cn/di-oauth2-service/oauth/grant/service_ticket"
             : "https://connectapi.garmin.com/di-oauth2-service/oauth/grant/service_ticket"
    }
    private var connectApiHost: String { isCN ? "https://connectapi.garmin.cn" : "https://connectapi.garmin.com" }
    private var gcApiHost: String { isCN ? "https://connect.garmin.cn/gc-api" : "https://connect.garmin.com/gc-api" }
    private var ssoSignin: String { isCN ? "https://sso.garmin.cn/sso/signin" : "https://sso.garmin.com/sso/signin" }
    private var oauth1Base: String { isCN ? "https://connect.garmin.cn" : "https://connect.garmin.com" }
    private var oauth1Service: String { isCN ? "https://connect.garmin.cn/modern/" : "https://connect.garmin.com/modern/" }
    private var locale: String { isCN ? "zh-CN" : "en-US" }
    private var lang: String { isCN ? "zh-CN" : "en" }

    // DI token 交换时轮换的 clientId（GarminApi.kt DI_CLIENT_IDS）
    private let diClientIds = [
        "GARMIN_CONNECT_MOBILE_ANDROID_DI_2025Q2",
        "GARMIN_CONNECT_MOBILE_ANDROID_DI_2024Q4",
        "GARMIN_CONNECT_MOBILE_ANDROID_DI",
        "GARMIN_CONNECT_MOBILE_IOS_DI",
    ]

    // OAuth1（GarminApi.kt，v8.1.9 起）：KEY 是 garminglobal6，SECRET 是空串，原样照搬。
    private static let oauth1ConsumerKey = "garminglobal6"
    private static let oauth1ConsumerSecret = ""

    private static let iosLoginUA = "Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148"
    private static let nativeApiUA = "GCM-Android-5.23"
    private static let nativeXGarminUA = "com.garmin.android.apps.connectmobile/5.23; ; Google/sdk_gphone64_arm64/google; Android/33; Dalvik/2.1.0"
    private static let browserUA = "Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.230 Mobile Safari/537.36"

    init(source: DataSource) {
        self.source = source
        self.isCN = source == .garminCN
    }

    // MARK: 凭证存取（钥匙串，LoginStore；存的是 GarminSession JSON 串）

    func loadCredential() -> GarminCredential? {
        guard let json = LoginStore.token(for: source) else { return nil }
        return GarminCredential(jsonString: json)
    }

    func saveCredential(_ cred: GarminCredential) {
        LoginStore.saveToken(cred.toJSON(), for: source)
    }

    func clearCredential() {
        LoginStore.clearToken(for: source)
    }

    // MARK: 原始请求（状态敏感的调用走这里，返回响应体 + 状态码）

    private func rawRequest(
        url: URL, method: String, headers: [String: String] = [:],
        body: Data? = nil, contentType: String? = nil, timeout: TimeInterval = 30
    ) async throws -> (Data, HTTPURLResponse) {
        var req = URLRequest(url: url)
        req.httpMethod = method
        req.timeoutInterval = timeout
        for (k, v) in headers { req.setValue(v, forHTTPHeaderField: k) }
        if let contentType { req.setValue(contentType, forHTTPHeaderField: "Content-Type") }
        req.httpBody = body
        let (data, http) = try await HTTPClient.shared.requestRaw(req)
        return (data, http)
    }

    private func cookiesString(for url: URL, jar: inout [String: String]) {
        if let cookies = HTTPCookieStorage.shared.cookies(for: url) {
            for c in cookies { jar[c.name] = c.value }
        }
    }

    // MARK: 登录

    /// 对外登录入口。顺序照 LoginWebActivity.kt：国际先 OAuth1 再 mobile SSO，中国先 mobile SSO 再 OAuth1。
    /// 致命错误（密码错/两步验证/429）出现即停，不再换通道。
    func login(username: String, password: String) async throws {
        lastAuthError = nil
        if isCN {
            if let cred = await loginMobile(email: username, password: password) {
                saveCredential(cred)
                GarminCooldownStore.clearCooldown(source: source, email: username, channels: ssoChannels)
                return
            }
            if lastAuthError != nil { throw PlatformError.authFailed(lastAuthError!) }
            if let cred = await loginOAuth1(email: username, password: password) {
                saveCredential(cred)
                GarminCooldownStore.clearCooldown(source: source, email: username, channels: ssoChannels)
                return
            }
        } else {
            if let cred = await loginOAuth1(email: username, password: password) {
                saveCredential(cred)
                GarminCooldownStore.clearCooldown(source: source, email: username, channels: ssoChannels)
                return
            }
            if lastAuthError != nil { throw PlatformError.authFailed(lastAuthError!) }
            if let cred = await loginMobile(email: username, password: password) {
                saveCredential(cred)
                GarminCooldownStore.clearCooldown(source: source, email: username, channels: ssoChannels)
                return
            }
        }
        throw PlatformError.authFailed(lastAuthError ?? "佳明登录失败，请检查账号密码后重试")
    }

    /// mobile SSO 登录 + DI token 交换（GarminApi.loginMobile）。
    /// 返回完整凭证 JSON 对应的 GarminCredential，失败返回 nil（致命错误写 lastAuthError）。
    private func loginMobile(email: String, password: String) async -> GarminCredential? {
        let available = ssoChannels.filter { !GarminCooldownStore.isCooldown(source: source, email: email, clientId: $0.clientId) }
        if available.isEmpty {
            let remain = ssoChannels.map { GarminCooldownStore.remainMinutes(source: source, email: email, clientId: $0.clientId) }.max() ?? 0
            lastAuthError = "风控限流：该账号所有登录通道都在冷却中，约 \(remain) 分钟后再试"
            return nil
        }
        for ch in available {
            let query = "clientId=\(garminOAuthEncode(ch.clientId))&locale=\(locale)&service=\(garminOAuthEncode(ch.serviceUrl))"
            guard let url = URL(string: "\(ssoLoginURL)?\(query)") else { continue }
            let payload: [String: Any] = ["username": email, "password": password, "rememberMe": true, "captchaToken": ""]
            guard let body = try? JSONSerialization.data(withJSONObject: payload) else { continue }
            let headers = [
                "User-Agent": Self.iosLoginUA,
                "Accept": "application/json, text/plain, */*",
                "Origin": ssoOrigin,
            ]
            do {
                let (data, resp) = try await rawRequest(url: url, method: "POST", headers: headers, body: body, contentType: "application/json")
                let text = String(data: data, encoding: .utf8) ?? ""
                if resp.statusCode == 429 {
                    // v8.3.4：429 是账号级信号，第一通道即停，不再试后续通道
                    GarminCooldownStore.writeCooldown(source: source, email: email, clientId: ch.clientId)
                    lastAuthError = "风控限流"
                    return nil
                }
                guard resp.statusCode == 200 else {
                    if let err = fatalErrorType(in: text) { lastAuthError = err; return nil }
                    continue
                }
                guard let json = garminJSONDict(data) else { continue }
                let respType = (json["responseStatus"] as? [String: Any])?["type"] as? String ?? ""
                if respType == "MFA_REQUIRED" {
                    lastAuthError = "两步验证"
                    return nil
                }
                guard respType == "SUCCESSFUL",
                      let ticket = json["serviceTicketId"] as? String, !ticket.isEmpty else {
                    lastAuthError = "密码错误"
                    return nil
                }
                if let cred = await exchangeDiToken(ticket: ticket, email: email, serviceUrl: ch.serviceUrl) {
                    return cred
                }
            } catch {
                continue
            }
        }
        return nil
    }

    /// 从登录失败响应里识别账号级致命错误（MFA / 密码错），返回中文原因；不是致命错误返回 nil。
    private func fatalErrorType(in body: String) -> String? {
        guard let json = body.data(using: .utf8).flatMap(garminJSONDict),
              let type = (json["responseStatus"] as? [String: Any])?["type"] as? String else { return nil }
        if type == "MFA_REQUIRED" { return "两步验证" }
        if type == "INVALID_USERNAME_PASSWORD" || type == "INVALID_PASSWORD"
            || type.contains("INVALID") || type.contains("PASSWORD") { return "密码错误" }
        return nil
    }

    /// OAuth1 老表单直连登录（GarminApi.loginOAuth1，佳速通/garth 同款流程）。
    private func loginOAuth1(email: String, password: String) async -> GarminCredential? {
        // 国际版双通道：GarminConnect、garminglobal6；中国版单通道 GarminConnect
        let clientIds: [String] = isCN ? ["GarminConnect"] : ["GarminConnect", "garminglobal6"]
        for oauth1ClientId in clientIds {
            do {
                var jar: [String: String] = [:]
                // ① GET 登录页拿 _csrf
                let signinURLString = "\(ssoSignin)/signin?clientId=\(oauth1ClientId)&service=\(garminOAuthEncode(oauth1Service))&embed=false"
                guard let signinURL = URL(string: signinURLString) else { continue }
                let pageHeaders = [
                    "User-Agent": Self.browserUA,
                    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
                ]
                let (pageData, _) = try await rawRequest(url: signinURL, method: "GET", headers: pageHeaders)
                cookiesString(for: signinURL, jar: &jar)
                let pageHtml = String(data: pageData, encoding: .utf8) ?? ""
                guard let csrf = garminFirstMatch(pattern: #"name=["']_csrf["'][^>]*value=["']([^"']+)"#, in: pageHtml)
                        ?? garminFirstMatch(pattern: #"value=["']([^"']+)["'][^>]*name=["']_csrf["']"#, in: pageHtml) else {
                    continue // 登录页无 _csrf，页面可能被风控/改版，换通道
                }
                // ② POST 账号密码 → 提取 service ticket
                let form = garminFormEncode([
                    ("username", email), ("password", password), ("embed", "false"),
                    ("_csrf", csrf), ("clientId", oauth1ClientId), ("service", oauth1Service), ("locale", locale),
                ])
                let postHeaders = [
                    "User-Agent": Self.browserUA,
                    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
                    "Origin": ssoOrigin,
                    "Referer": signinURLString,
                ]
                let (postData, postResp) = try await rawRequest(url: signinURL, method: "POST", headers: postHeaders, body: form, contentType: "application/x-www-form-urlencoded")
                cookiesString(for: signinURL, jar: &jar)
                let postBody = String(data: postData, encoding: .utf8) ?? ""
                var ticket: String?
                if let loc = postResp.allHeaderFields.first(where: { ($0.key as? String)?.lowercased() == "location" })?.value as? String {
                    ticket = garminFirstMatch(pattern: #"[?&]ticket=([^&]+)"#, in: loc)
                }
                ticket = ticket ?? garminFirstMatch(pattern: #"[?&]ticket=([^&]+)"#, in: postBody)
                guard let ticket else {
                    if postResp.statusCode == 429 {
                        GarminCooldownStore.writeCooldown(source: source, email: email, clientId: "oauth1")
                        lastAuthError = "风控限流"
                        return nil
                    }
                    if postBody.localizedCaseInsensitiveContains("Invalid Credentials")
                        || postBody.localizedCaseInsensitiveContains("invalid_username")
                        || postBody.localizedCaseInsensitiveContains("incorrect username or password") {
                        lastAuthError = "密码错误"
                    } else if postBody.localizedCaseInsensitiveContains("two-step")
                        || postBody.localizedCaseInsensitiveContains("two step")
                        || postBody.localizedCaseInsensitiveContains("verification")
                        || postBody.localizedCaseInsensitiveContains("MFA")
                        || postBody.localizedCaseInsensitiveContains("security code") {
                        lastAuthError = "两步验证"
                    }
                    return nil // 密码错/两步验证/验证码等，停整个登录流程
                }
                // ③ 消费 ticket 拿 session cookie
                if let ticketURL = URL(string: "\(oauth1Base)/modern/?ticket=\(garminOAuthEncode(ticket))") {
                    let (_, _) = try await rawRequest(url: ticketURL, method: "GET", headers: ["User-Agent": Self.browserUA])
                    cookiesString(for: ticketURL, jar: &jar)
                }
                // ④ ticket → OAuth1 token（2026 实测该端点已 404，失败自动降级 DI）
                if let oauthToken = await oauth1ExchangeToken(ticket: ticket),
                   let tokenSecret = await oauth1Preauthorized(token: oauthToken) {
                    var sess = GarminCredential()
                    sess.cookies = jar.map { "\($0.key)=\($0.value)" }.joined(separator: "; ")
                    sess.email = email
                    sess.oauthToken = oauthToken
                    sess.oauthTokenSecret = tokenSecret
                    return sess
                }
                // ⑤ 降级：ticket → DI token（service_url 必须与登录时用的 service 一致）
                if let cred = await exchangeDiToken(ticket: ticket, email: email, serviceUrl: oauth1Service) {
                    return cred
                }
                // 最终保底：带 SESSION/CASTGC 的 cookie 凭证，走 gc-api
                let cookieStr = jar.map { "\($0.key)=\($0.value)" }.joined(separator: "; ")
                if cookieStr.contains("SESSION") || cookieStr.contains("CASTGC") {
                    var sess = GarminCredential()
                    sess.cookies = cookieStr
                    sess.email = email
                    return sess
                }
                return nil
            } catch {
                continue // 换下一个 clientId 通道重试
            }
        }
        return nil
    }

    /// OAuth1：GET /oauth-service/oauth/exchange/user/2.0?ticket= → oauth_token。
    private func oauth1ExchangeToken(ticket: String) async -> String? {
        guard let url = URL(string: "\(oauth1Base)/oauth-service/oauth/exchange/user/2.0?ticket=\(garminOAuthEncode(ticket))") else { return nil }
        let auth = oauth1AuthHeader(method: "GET", url: url.absoluteString, token: "", tokenSecret: "")
        do {
            let (data, resp) = try await rawRequest(url: url, method: "GET", headers: ["Authorization": auth, "User-Agent": "Garth-3.0.1"])
            guard resp.statusCode == 200 else { return nil }
            let body = String(data: data, encoding: .utf8) ?? ""
            if let token = garminFirstMatch(pattern: "<oauth_token>([^<]+)", in: body)
                ?? garminFirstMatch(pattern: #"oauth_token["']?\s*[:=]\s*["']([^"']+)"#, in: body) {
                return token
            }
            let trimmed = body.trimmingCharacters(in: .whitespacesAndNewlines)
            if trimmed.hasPrefix("oauth_token=") {
                return String(trimmed.dropFirst("oauth_token=".count)).trimmingCharacters(in: .whitespacesAndNewlines).nilIfEmpty()
            }
            return nil
        } catch { return nil }
    }

    /// OAuth1：GET /oauth-service/oauth/preauthorized → oauth_token_secret。
    private func oauth1Preauthorized(token: String) async -> String? {
        guard let url = URL(string: "\(oauth1Base)/oauth-service/oauth/preauthorized") else { return nil }
        let auth = oauth1AuthHeader(method: "GET", url: url.absoluteString, token: token, tokenSecret: "")
        do {
            let (data, resp) = try await rawRequest(url: url, method: "GET", headers: ["Authorization": auth, "User-Agent": "Garth-3.0.1"])
            guard resp.statusCode == 200 else { return nil }
            let body = String(data: data, encoding: .utf8) ?? ""
            return garminFirstMatch(pattern: "<oauth_token_secret>([^<]+)", in: body)
                ?? garminFirstMatch(pattern: #"oauth_token_secret["']?\s*[:=]\s*["']([^"']+)"#, in: body)
        } catch { return nil }
    }

    /// OAuth1 Authorization 头（HMAC-SHA1，consumer=garminglobal6，secret 为空串）。
    private func oauth1AuthHeader(method: String, url: String, token: String, tokenSecret: String) -> String {
        let ts = String(Int(Date().timeIntervalSince1970))
        let nonce = UUID().uuidString.replacingOccurrences(of: "-", with: "")
        var params: [String: String] = [
            "oauth_consumer_key": Self.oauth1ConsumerKey,
            "oauth_nonce": nonce,
            "oauth_signature_method": "HMAC-SHA1",
            "oauth_timestamp": ts,
            "oauth_version": "1.0",
        ]
        if !token.isEmpty { params["oauth_token"] = token }
        // 签名 base string 需包含 URL query 参数
        guard let comps = URLComponents(string: url) else { return "" }
        var all = params
        for item in comps.queryItems ?? [] {
            if let v = item.value { all[item.name] = v }
        }
        let paramString = all.sorted { $0.key < $1.key }
            .map { "\(garminOAuthEncode($0.key))=\(garminOAuthEncode($0.value))" }.joined(separator: "&")
        var baseURL = "\(comps.scheme ?? "https")://\(comps.host ?? "")"
        if let port = comps.port { baseURL += ":\(port)" }
        baseURL += comps.path
        let baseString = "\(method)&\(garminOAuthEncode(baseURL))&\(garminOAuthEncode(paramString))"
        let signingKey = "\(garminOAuthEncode(Self.oauth1ConsumerSecret))&\(garminOAuthEncode(tokenSecret))"
        let signature = garminHmacSHA1Base64(key: signingKey, data: baseString)
        var headerParams: [String: String] = [
            "oauth_consumer_key": Self.oauth1ConsumerKey,
            "oauth_nonce": nonce,
            "oauth_signature": signature,
            "oauth_signature_method": "HMAC-SHA1",
            "oauth_timestamp": ts,
            "oauth_version": "1.0",
        ]
        if !token.isEmpty { headerParams["oauth_token"] = token }
        let header = headerParams.sorted { $0.key < $1.key }
            .map { "\($0.key)=\"\(garminOAuthEncode($0.value))\"" }.joined(separator: ", ")
        return "OAuth \(header)"
    }

    /// serviceTicket → DI token（GarminApi.exchangeDiToken），轮换 DI_CLIENT_IDS。
    private func exchangeDiToken(ticket: String, email: String, serviceUrl: String) async -> GarminCredential? {
        guard let url = URL(string: diTokenURL) else { return nil }
        for clientId in diClientIds {
            let basic = "Basic " + Data("\(clientId):".utf8).base64EncodedString()
            let body = garminFormEncode([
                ("client_id", clientId),
                ("service_ticket", ticket),
                ("grant_type", diGrantType),
                ("service_url", serviceUrl),
            ])
            let headers = [
                "Authorization": basic,
                "User-Agent": Self.nativeApiUA,
                "X-Garmin-User-Agent": Self.nativeXGarminUA,
                "X-Garmin-Paired-App-Version": "10861",
                "X-Garmin-Client-Platform": "Android",
                "X-App-Ver": "10861",
                "X-Lang": lang,
                "X-GCExperience": "GC5",
                "Accept": "application/json,text/html;q=0.9,*/*;q=0.8",
                "Cache-Control": "no-cache",
            ]
            do {
                let (data, resp) = try await rawRequest(url: url, method: "POST", headers: headers, body: body, contentType: "application/x-www-form-urlencoded")
                guard resp.statusCode == 200, let json = garminJSONDict(data) else { continue }
                let accessToken = json["access_token"] as? String ?? ""
                guard !accessToken.isEmpty else { continue }
                var cred = GarminCredential()
                cred.diToken = accessToken
                cred.diRefreshToken = json["refresh_token"] as? String ?? ""
                cred.diClientId = clientId
                let expiresIn = (json["expires_in"] as? NSNumber)?.int64Value ?? 3600
                cred.diExpiresAt = Int64(Date().timeIntervalSince1970) + expiresIn
                cred.email = email
                return cred
            } catch {
                continue
            }
        }
        return nil
    }

    /// 用 refresh_token 静默刷新 DI token（GarminApi.refreshDiToken），不重新 SSO 登录，避免撞 429。
    private func refreshDiToken(cred: GarminCredential) async -> GarminCredential? {
        guard !cred.diRefreshToken.isEmpty, !cred.diClientId.isEmpty else { return nil }
        if GarminCooldownStore.isCooldown(source: source, email: cred.email, clientId: cred.diClientId) { return nil }
        guard let url = URL(string: diTokenURL) else { return nil }
        let basic = "Basic " + Data("\(cred.diClientId):".utf8).base64EncodedString()
        let body = garminFormEncode([
            ("grant_type", "refresh_token"),
            ("refresh_token", cred.diRefreshToken),
            ("client_id", cred.diClientId),
        ])
        let headers = [
            "Authorization": basic,
            "User-Agent": Self.nativeApiUA,
            "X-Garmin-User-Agent": Self.nativeXGarminUA,
            "X-Garmin-Paired-App-Version": "10861",
            "X-Garmin-Client-Platform": "Android",
            "X-App-Ver": "10861",
            "X-Lang": lang,
            "X-GCExperience": "GC5",
            "Accept": "application/json,text/html;q=0.9,*/*;q=0.8",
        ]
        do {
            let (data, resp) = try await rawRequest(url: url, method: "POST", headers: headers, body: body, contentType: "application/x-www-form-urlencoded")
            if resp.statusCode == 429 {
                GarminCooldownStore.writeCooldown(source: source, email: cred.email, clientId: cred.diClientId)
                return nil
            }
            guard resp.statusCode == 200, let json = garminJSONDict(data) else { return nil }
            let accessToken = json["access_token"] as? String ?? ""
            guard !accessToken.isEmpty else { return nil }
            var newCred = cred
            newCred.diToken = accessToken
            newCred.diRefreshToken = json["refresh_token"] as? String ?? cred.diRefreshToken
            let expiresIn = (json["expires_in"] as? NSNumber)?.int64Value ?? 3600
            newCred.diExpiresAt = Int64(Date().timeIntervalSince1970) + expiresIn
            return newCred
        } catch { return nil }
    }

    /// 同步前校验/静默刷新（GarminApi.ensureValidToken）：没过期原样返回，过期就刷新，刷不动原样返回。
    private func ensureValidToken() async -> GarminCredential? {
        guard var cred = loadCredential() else { return nil }
        guard cred.hasDiToken else { return cred } // 无 DI token（旧 WebView 凭证），不刷新
        guard cred.diExpired else { return cred }
        if let refreshed = await refreshDiToken(cred: cred) {
            cred = refreshed
            saveCredential(cred)
        }
        return cred
    }

    // MARK: 请求头

    /// gc-api 的 cookie 头（apiHeaders）。
    private func apiHeaders(cred: GarminCredential) -> [String: String] {
        var h: [String: String] = [
            "User-Agent": "Mozilla/5.0 (Linux; Android 14; Pixel 8 Build/UQ1A.240205.004; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/120.0.6099.230 Mobile Safari/537.36",
            "Accept": "application/json",
            "Referer": isCN ? "https://connect.garmin.cn/app/home" : "https://connect.garmin.com/app/home",
            "Origin": isCN ? "https://connect.garmin.cn" : "https://connect.garmin.com",
        ]
        if !cred.cookies.isEmpty { h["Cookie"] = cred.cookies }
        if !cred.csrf.isEmpty { h["connect-csrf-token"] = cred.csrf }
        return h
    }

    /// connectapi 直连头（connectHeaders）：OAuth1 优先，其次 DI Bearer。
    private func connectHeaders(cred: GarminCredential, url: String, method: String = "GET") -> [String: String] {
        if cred.hasOAuth1 {
            return [
                "Authorization": oauth1AuthHeader(method: method, url: url, token: cred.oauthToken, tokenSecret: cred.oauthTokenSecret),
                "User-Agent": "Garth-3.0.1",
                "Accept": "application/json",
                "X-app-ver": "10861",
                "X-lang": lang,
                "X-GCExperience": "GC5",
                "DI-Backend": isCN ? "connectapi.garmin.cn" : "connectapi.garmin.com",
            ]
        }
        return [
            "Authorization": "Bearer \(cred.diToken)",
            "User-Agent": Self.nativeApiUA,
            "X-Garmin-User-Agent": Self.nativeXGarminUA,
            "X-Garmin-Paired-App-Version": "10861",
            "X-Garmin-Client-Platform": "Android",
            "X-App-Ver": "10861",
            "X-Lang": lang,
            "X-GCExperience": "GC5",
            "DI-Backend": isCN ? "connectapi.garmin.cn" : "connectapi.garmin.com",
            "Accept-Language": isCN ? "zh-CN,zh;q=0.9" : "en-US,en;q=0.9",
        ]
    }

    // MARK: 用户名 / 列表

    /// GET {host}/userprofile-service/socialProfile → displayName。
    func getUsername() async -> String? {
        guard let cred = await ensureValidToken() else { return nil }
        if cred.hasOAuth1 || cred.hasDiToken {
            let urlString = "\(connectApiHost)/userprofile-service/socialProfile"
            if let url = URL(string: urlString),
               let data = try? await HTTPClient.shared.get(url: url, headers: connectHeaders(cred: cred, url: urlString)),
               let json = garminJSONDict(data) {
                let name = json["displayName"] as? String ?? ""
                if !name.isEmpty { return name }
            }
            return nil
        }
        let urlString = "\(gcApiHost)/userprofile-service/socialProfile"
        guard let url = URL(string: urlString),
              let data = try? await HTTPClient.shared.get(url: url, headers: apiHeaders(cred: cred)),
              let json = garminJSONDict(data) else { return nil }
        let name = json["displayName"] as? String ?? ""
        return name.isEmpty ? nil : name
    }

    /// GET {host}/activitylist-service/activities/search/activities?start=&limit=。
    /// 优先 DI/OAuth1 直连 connectapi，无 token 回退 gc-api + cookie。
    /// TODO：安卓还有一层 WebView 兜底（prepareWebView + fetchViaWebView），iOS 需 UI 组接 WKWebView 后再补。
    func getActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        guard let cred = await ensureValidToken() else { throw PlatformError.notLoggedIn }
        if cred.hasOAuth1 || cred.hasDiToken {
            let urlString = "\(connectApiHost)/activitylist-service/activities/search/activities?start=\(skip)&limit=\(limit)"
            guard let url = URL(string: urlString) else { return [] }
            do {
                let data = try await HTTPClient.shared.get(url: url, headers: connectHeaders(cred: cred, url: urlString))
                return parseActivityList(data: data)
            } catch {
                return [] // 安卓同款：DI 失败返回空列表，不抛错
            }
        }
        let urlString = "\(gcApiHost)/activitylist-service/activities/search/activities?start=\(skip)&limit=\(limit)"
        guard let url = URL(string: urlString) else { return [] }
        do {
            let data = try await HTTPClient.shared.get(url: url, headers: apiHeaders(cred: cred))
            return parseActivityList(data: data)
        } catch {
            return []
        }
    }

    private func parseActivityList(data: Data) -> [ActivityRecord] {
        guard let arr = garminJSONArray(data) else { return [] }
        var out: [ActivityRecord] = []
        for item in arr {
            let id = item["activityId"] as? String ?? ""
            if id.isEmpty { continue }
            let name = item["activityName"] as? String ?? ""
            let startLocal = item["startTimeLocal"] as? String ?? ""
            let start = startLocal.isEmpty ? (item["startTimeGMT"] as? String ?? "") : startLocal
            let distanceM = (item["distance"] as? NSNumber)?.doubleValue ?? 0 // 接口单位是米
            let duration = (item["duration"] as? NSNumber)?.doubleValue ?? 0 // 秒
            out.append(ActivityRecord(
                id: id,
                source: source,
                title: name.isEmpty ? "佳明活动" : name,
                startDate: garminParseDate(start),
                distanceMeters: distanceM,
                durationSeconds: duration,
                elevationGainMeters: 0,
                sportType: "",
                remoteId: id,
                fileName: "\(id).fit"
            ))
        }
        return out
    }

    // MARK: 下载（连接层错误重试 3 次，业务失败不重试）

    /// GET {host}/download-service/files/activity/{id} → zip → 解出 .fit。
    func downloadFit(activityId: String) async throws -> Data {
        guard let cred = await ensureValidToken() else { throw PlatformError.notLoggedIn }
        var lastConnectionError: Error?
        for attempt in 0..<3 {
            do {
                if let data = try await downloadFitOnce(cred: cred, activityId: activityId) {
                    return data
                }
                throw PlatformError.network("佳明下载失败（活动 \(activityId) 无数据）")
            } catch let e as URLError {
                lastConnectionError = e
                if attempt < 2 { try? await Task.sleep(nanoseconds: 1_000_000_000) }
            } catch let e as PlatformError {
                throw e
            } catch {
                lastConnectionError = error
                if attempt < 2 { try? await Task.sleep(nanoseconds: 1_000_000_000) }
            }
        }
        throw lastConnectionError.map { PlatformError.network("佳明下载连接失败：\($0.localizedDescription)") }
            ?? PlatformError.network("佳明下载失败")
    }

    /// 单次下载。优先 DI/OAuth1 直连 connectapi，否则 gc-api + cookie。
    /// 用 rawRequest（不要用 HTTPClient）：连接层 URLError 要抛给外层重试，业务失败返回 nil 不重试。
    /// TODO：安卓无 DI 时还有 WebView 下载分支（WebMessageListener 一次性回传），iOS 需 UI 组接 WKWebView 后再补。
    private func downloadFitOnce(cred: GarminCredential, activityId: String) async throws -> Data? {
        let urlString: String
        var headers: [String: String]
        if cred.hasOAuth1 || cred.hasDiToken {
            urlString = "\(connectApiHost)/download-service/files/activity/\(activityId)"
            headers = connectHeaders(cred: cred, url: urlString)
        } else {
            urlString = "\(gcApiHost)/download-service/files/activity/\(activityId)"
            headers = apiHeaders(cred: cred)
        }
        headers["Accept"] = "*/*"
        guard let url = URL(string: urlString) else { return nil }
        let (data, resp) = try await rawRequest(url: url, method: "GET", headers: headers, timeout: 120)
        guard resp.statusCode == 200 else { return nil }
        return garminUnzipFirstFit(data)
    }

    // MARK: 上传（连接层错误重试 3 次，业务失败不重试；返回 nil=成功，否则为错误文案）

    /// POST {connectapi}/upload-service/upload（无尾斜杠）或 {gc-api}/upload-service/upload/（有尾斜杠），
    /// multipart 字段名 file，application/octet-stream。中国区上传约 30–60 秒，超时放宽到 300 秒。
    func uploadActivity(data: Data, fileName: String) async throws {
        guard let cred = await ensureValidToken() else { throw PlatformError.notLoggedIn }
        var lastError: String?
        for attempt in 0..<3 {
            if let err = await uploadActivityOnce(cred: cred, data: data, fileName: fileName) {
                if err.hasPrefix("佳明上传异常(连接错误)") {
                    lastError = err
                    if attempt < 2 { try? await Task.sleep(nanoseconds: 1_000_000_000) }
                    continue
                }
                throw PlatformError.network(err)
            }
            return // 成功
        }
        throw PlatformError.network(lastError ?? "佳明上传失败")
    }

    private func uploadActivityOnce(cred: GarminCredential, data: Data, fileName: String) async -> String? {
        do {
            if cred.hasOAuth1 || cred.hasDiToken {
                let urlString = "\(connectApiHost)/upload-service/upload"
                guard let url = URL(string: urlString) else { return "佳明上传异常：地址无效" }
                var headers = connectHeaders(cred: cred, url: urlString, method: "POST")
                headers["Accept"] = "application/json"
                let (respData, resp) = try await rawRequest(
                    url: url, method: "POST", headers: headers,
                    body: garminMultipartBody(data: data, fileName: fileName),
                    contentType: "multipart/form-data; boundary=\(garminMultipartBoundary)",
                    timeout: 300
                )
                return garminUploadResult(code: resp.statusCode, body: String(data: respData, encoding: .utf8) ?? "")
            }
            let urlString = "\(gcApiHost)/upload-service/upload/"
            guard let url = URL(string: urlString) else { return "佳明上传异常：地址无效" }
            var headers = apiHeaders(cred: cred)
            headers["Accept"] = "application/json"
            let (respData, resp) = try await rawRequest(
                url: url, method: "POST", headers: headers,
                body: garminMultipartBody(data: data, fileName: fileName),
                contentType: "multipart/form-data; boundary=\(garminMultipartBoundary)",
                timeout: 300
            )
            return garminUploadResult(code: resp.statusCode, body: String(data: respData, encoding: .utf8) ?? "")
        } catch let e as URLError {
            return "佳明上传异常(连接错误): \(e.localizedDescription)"
        } catch {
            return "佳明上传异常: \(error.localizedDescription)"
        }
    }

    private func garminUploadResult(code: Int, body: String) -> String? {
        switch code {
        case 200, 201, 202:
            return nil
        case 409:
            return body.localizedCaseInsensitiveContains("Duplicate Activity")
                ? "重复活动(已在佳明存在)" : "佳明上传冲突 HTTP 409: \(body.prefix(100))"
        case 400, 415:
            return "佳明拒绝该文件(HTTP \(code)): \(body.prefix(150))"
        default:
            return "佳明上传失败 HTTP \(code): \(body.prefix(100))"
        }
    }

    // MARK: 健康数据（GarminWellnessApi.kt / GarminWellnessSync.kt，v8.3.5）

    /// 下载指定日期的 wellness 原始 zip：GET {host}/download-service/files/wellness/{yyyy-MM-dd}。
    func downloadWellnessZip(date: String) async -> Data? {
        guard let cred = await ensureValidToken() else { return nil }
        if cred.hasOAuth1 || cred.hasDiToken {
            let urlString = "\(connectApiHost)/download-service/files/wellness/\(date)"
            guard let url = URL(string: urlString) else { return nil }
            var headers = connectHeaders(cred: cred, url: urlString)
            headers["Accept"] = "*/*"
            return try? await HTTPClient.shared.get(url: url, headers: headers)
        }
        let urlString = "\(gcApiHost)/download-service/files/wellness/\(date)"
        guard let url = URL(string: urlString) else { return nil }
        var headers = apiHeaders(cred: cred)
        headers["Accept"] = "*/*"
        return try? await HTTPClient.shared.get(url: url, headers: headers)
    }

    /// 上传健康 FIT。返回 nil=成功；"重复(已在佳明存在)"；"需绑定健康设备(419)"；其他错误文案。
    func uploadWellnessFit(data: Data, fileName: String) async -> String? {
        guard let cred = await ensureValidToken() else { return "佳明未登录" }
        let urlString: String
        var headers: [String: String]
        if cred.hasOAuth1 || cred.hasDiToken {
            urlString = "\(connectApiHost)/upload-service/upload"
            headers = connectHeaders(cred: cred, url: urlString, method: "POST")
        } else {
            urlString = "\(gcApiHost)/upload-service/upload/"
            headers = apiHeaders(cred: cred)
        }
        headers["Accept"] = "application/json"
        guard let url = URL(string: urlString) else { return "佳明健康上传异常：地址无效" }
        do {
            let (respData, resp) = try await rawRequest(
                url: url, method: "POST", headers: headers,
                body: garminMultipartBody(data: data, fileName: fileName),
                contentType: "multipart/form-data; boundary=\(garminMultipartBoundary)",
                timeout: 300
            )
            let body = String(data: respData, encoding: .utf8) ?? ""
            switch resp.statusCode {
            case 200, 201, 202: return nil
            case 409:
                return (body.localizedCaseInsensitiveContains("Duplicate Wellness") || body.localizedCaseInsensitiveContains("Duplicate Activity"))
                    ? "重复(已在佳明存在)" : "佳明健康上传冲突 HTTP 409: \(body.prefix(100))"
            case 419: return "需绑定健康设备(419)"
            case 400, 415: return "佳明拒绝该文件(HTTP \(resp.statusCode)): \(body.prefix(150))"
            default: return "佳明健康上传失败 HTTP \(resp.statusCode): \(body.prefix(100))"
            }
        } catch let e as URLError {
            return "佳明健康上传异常(连接错误): \(e.localizedDescription)"
        } catch {
            return "佳明健康上传异常: \(error.localizedDescription)"
        }
    }
}

// MARK: - multipart（字段名 file；boundary 由调用方在 Content-Type 里写同一个）

private let garminMultipartBoundary = "Boundary-\(UUID().uuidString)"

private func garminMultipartBody(data: Data, fileName: String) -> Data {
    var body = Data()
    body.append("--\(garminMultipartBoundary)\r\n".data(using: .utf8)!)
    body.append("Content-Disposition: form-data; name=\"file\"; filename=\"\(fileName)\"\r\n".data(using: .utf8)!)
    body.append("Content-Type: application/octet-stream\r\n\r\n".data(using: .utf8)!)
    body.append(data)
    body.append("\r\n--\(garminMultipartBoundary)--\r\n".data(using: .utf8)!)
    return body
}

private extension String {
    func nilIfEmpty() -> String? { isEmpty ? nil : self }
}

// MARK: - 对外接口

/// 佳明国际。登录方式：账号密码（mobile SSO + DI Token，兜底 OAuth1 老表单直连）。
/// 网页登录页（登录页组用）：LOGIN_URL_COM。
public struct GarminIntlAPI: PlatformAPI {
    public let source: DataSource = .garminIntl
    public static let loginURL = "https://sso.garmin.com/sso/signin?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.com%2Fmodern%2F"

    private let engine: GarminEngine

    public init() { self.engine = GarminEngine(source: .garminIntl) }

    /// 本地有没有凭证（不发网络请求）。
    public func isLoggedIn() async -> Bool { LoginStore.isLoggedIn(.garminIntl) }

    public func login(username: String, password: String) async throws {
        try await engine.login(username: username, password: password)
    }

    public func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        try await engine.getActivities(limit: limit, skip: skip)
    }

    public func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        try await engine.downloadFit(activityId: activity.remoteId.isEmpty ? activity.id : activity.remoteId)
    }

    public func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        try await engine.uploadActivity(data: data, fileName: fileName)
    }

    /// 网页登录成功后，把拿到的凭证 JSON 串（DI token / cookie / OAuth1）交给本实例。
    public func saveCredentialJSON(_ json: String) {
        if let cred = GarminCredential(jsonString: json) { engine.saveCredential(cred) }
    }

    /// 退出登录：清掉本平台凭证。
    public func logout() { engine.clearCredential() }

    /// 最近一次登录的致命错误（密码错误 / 两步验证 / 风控限流），登录成功后为空。
    public var lastAuthError: String? { engine.lastAuthError }

    /// 用户名（调 socialProfile），登录失效返回 nil。
    public func getUsername() async -> String? { await engine.getUsername() }

    /// 健康数据：下载指定日期的 wellness zip（yyyy-MM-dd），无数据返回 nil。
    public func downloadWellnessZip(date: String) async -> Data? { await engine.downloadWellnessZip(date: date) }

    /// 健康数据：上传健康 FIT，nil=成功，其他为错误文案（419=目标账号未绑定健康设备）。
    public func uploadWellnessFit(data: Data, fileName: String) async -> String? {
        await engine.uploadWellnessFit(data: data, fileName: fileName)
    }
}

/// 佳明中国。登录方式与国际版相同（mobile SSO + DI Token 直连 connectapi.garmin.cn，v7.9.0 起
/// 中国区也不走 WebView 慢路径）；中国区速度慢、上传约 30–60 秒，超时已放宽到 300 秒。
/// 网页登录页（登录页组用）：LOGIN_URL_CN。
public struct GarminCNAPI: PlatformAPI {
    public let source: DataSource = .garminCN
    public static let loginURL = "https://sso.garmin.cn/portal/sso/zh-CN/sign-in?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.cn%2Fapp"

    private let engine: GarminEngine

    public init() { self.engine = GarminEngine(source: .garminCN) }

    /// 本地有没有凭证（不发网络请求）。
    public func isLoggedIn() async -> Bool { LoginStore.isLoggedIn(.garminCN) }

    public func login(username: String, password: String) async throws {
        try await engine.login(username: username, password: password)
    }

    public func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        try await engine.getActivities(limit: limit, skip: skip)
    }

    public func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        try await engine.downloadFit(activityId: activity.remoteId.isEmpty ? activity.id : activity.remoteId)
    }

    public func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        try await engine.uploadActivity(data: data, fileName: fileName)
    }

    /// 网页登录成功后，把拿到的凭证 JSON 串（DI token / cookie / OAuth1）交给本实例。
    public func saveCredentialJSON(_ json: String) {
        if let cred = GarminCredential(jsonString: json) { engine.saveCredential(cred) }
    }

    /// 退出登录：清掉本平台凭证。
    public func logout() { engine.clearCredential() }

    /// 最近一次登录的致命错误（密码错误 / 两步验证 / 风控限流），登录成功后为空。
    public var lastAuthError: String? { engine.lastAuthError }

    /// 用户名（调 socialProfile），登录失效返回 nil。
    public func getUsername() async -> String? { await engine.getUsername() }

    /// 健康数据：下载指定日期的 wellness zip（yyyy-MM-dd），无数据返回 nil。
    public func downloadWellnessZip(date: String) async -> Data? { await engine.downloadWellnessZip(date: date) }

    /// 健康数据：上传健康 FIT，nil=成功，其他为错误文案（419=目标账号未绑定健康设备）。
    public func uploadWellnessFit(data: Data, fileName: String) async -> String? {
        await engine.uploadWellnessFit(data: data, fileName: fileName)
    }
}

// TODO（待真机验证）：
// 1. GarminOAuthHelper.kt 的 ticket→OAuth1→OAuth2 链路（loginWithTicket / loginWithCredentialsCn，
//    另一套 consumer）未搬：那套 consumer secret 是真实共享密钥，按任务要求不写真实值；
//    如需启用，由用户在 AppConfig 填入 garminConsumerKey/garminSecret 后再补实现。
// 2. 安卓 WebView 兜底链（prepareWebView / fetchViaWebView / uploadViaWebView / downloadViaWebView）
//    在 iOS 没有现成桥，本文件无 token 时只走 gc-api + cookie 的 OkHttp 分支；WKWebView 桥接由 UI 组补。
// 3. ZIP 里 deflate 解压用的 zlib 头补丁（garminInflateRawDeflate）未经真机验证；
//    若解不出请改接 SSZipArchive/minizip。
// 4. OAuth1 exchange 端点 2026 年实测已 404，本文件已按安卓做降级（ticket 换 DI token），
//    降级链路本身也待真机验证。
// 5. 中国区上传 30–60 秒是安卓实测经验值，iOS 超时已放宽到 300 秒，仍需真机验证。

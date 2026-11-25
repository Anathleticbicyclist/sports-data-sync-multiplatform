// 待真机验证
// ZwiftAPI.swift
// Zwift — 对照安卓 ZwiftApi.kt（v9.6.9）原样移植
//
// 方向：仅下载数据源。上传抛 unsupported（官方无上传接口）。
// 登录：OAuth2 password grant（官方服务端，2026 年仍可用）。
//   POST https://secure.zwift.com/auth/realms/zwift/tokens/access/codes
//   表单 {grant_type:password, username, password, client_id:"Zwift_Mobile_Link"}
//   → {access_token, refresh_token, expires_in, refresh_expires_in}
// 刷新：grant_type=refresh_token，提前 30 秒刷新（轮换令牌）。
// 列表：GET {BASE}/api/profiles/{playerId}/activities?start=&limit=（Bearer），
//   playerId 先 GET /api/profiles/me 解析（缓存）。
//   limit 上限 50（>50 返回 400 limit.too.large），要更多就由本文件循环翻页。
//   API host 是地区性动态域名，做多 host 候选 + 失败轮换：
//   https://us-or-rly101.zwift.com、https://us.zwift.com、https://secure.zwift.com。
// 下载：链路 1 是 S3 直链 https://{fitFileBucket}.s3.amazonaws.com/{fitFileKey}（公开 S3，
//   无需 token）；链路 2 是 API 鉴权下载（Bearer，多端点兜底）。
//   试用订阅账号没有 FIT 下载权限：详情接口 fitnessData.status == "NOT_AVAILABLE" 时
//   直接报“请升级 Zwift 会员后重试”，不要反复重试。
// 证书问题（v8.3.4）：SSL 证书链失败多为网络中间层/代理瞬时问题，同 host 自动重试一次，
//   仍失败换下一个 host；最后报中文友好提示（请切换网络 WiFi/流量后重试）。

import Foundation

// MARK: - 小工具（本文件内用）

private func zwiftJSONDict(_ data: Data) -> [String: Any]? {
    (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
}

private func zwiftParseDate(_ s: String) -> Date {
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

private func zwiftFormEncode(_ s: String) -> String {
    let allowed = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~")
    return s.addingPercentEncoding(withAllowedCharacters: allowed) ?? s
}

private func zwiftFormBody(_ fields: [(String, String)]) -> Data {
    let body = fields.map { "\(zwiftFormEncode($0.0))=\(zwiftFormEncode($0.1))" }.joined(separator: "&")
    return Data(body.utf8)
}

/// 是否 SSL/证书类错误（用于同 host 重试一次 + 中文友好提示）。
private func zwiftIsSSLError(_ error: Error) -> Bool {
    guard let urlError = error as? URLError else {
        return error.localizedDescription.localizedCaseInsensitiveContains("SSL")
            || error.localizedDescription.localizedCaseInsensitiveContains("certificate")
    }
    switch urlError.code {
    case .serverCertificateHasBadDate, .serverCertificateUntrusted,
         .serverCertificateHasUnknownRoot, .serverCertificateNotYetValid,
         .secureConnectionFailed, .clientCertificateRejected, .clientCertificateRequired:
        return true
    default:
        return false
    }
}

private struct ZwiftSession {
    var accessToken = ""
    var refreshToken = ""
    var expiresAt: Int64 = 0 // Unix 秒
    var playerId = ""

    var needsRefresh: Bool {
        // 提前 30 秒刷新（TOKEN_EXPIRY_BUFFER_SEC）
        accessToken.isEmpty || expiresAt <= 0
            || Int64(Date().timeIntervalSince1970) >= expiresAt - 30
    }

    func toJSON() -> String {
        let obj: [String: Any] = [
            "access_token": accessToken,
            "refresh_token": refreshToken,
            "expires_at": expiresAt,
            "player_id": playerId,
        ]
        guard let data = try? JSONSerialization.data(withJSONObject: obj),
              let s = String(data: data, encoding: .utf8) else { return "" }
        return s
    }

    static func fromJSON(_ s: String) -> ZwiftSession? {
        guard let data = s.data(using: .utf8), let obj = zwiftJSONDict(data) else { return nil }
        let access = obj["access_token"] as? String ?? ""
        guard !access.isEmpty else { return nil }
        var session = ZwiftSession()
        session.accessToken = access
        session.refreshToken = obj["refresh_token"] as? String ?? ""
        session.expiresAt = (obj["expires_at"] as? NSNumber)?.int64Value ?? 0
        session.playerId = obj["player_id"] as? String ?? ""
        return session
    }
}

// MARK: - 引擎

private final class ZwiftEngine {
    static let authURL = "https://secure.zwift.com/auth/realms/zwift/tokens/access/codes"
    static let clientId = "Zwift_Mobile_Link"
    static let ua = "Zwift/115 CFNetwork/758.0.2 Darwin/15.0.0"
    static let baseHosts = [
        "https://us-or-rly101.zwift.com",
        "https://us.zwift.com",
        "https://secure.zwift.com",
    ]
    static let maxListLimit = 50

    func loadSession() -> ZwiftSession? {
        guard let stored = LoginStore.token(for: .zwift) else { return nil }
        return ZwiftSession.fromJSON(stored)
    }

    func saveSession(_ session: ZwiftSession) {
        LoginStore.saveToken(session.toJSON(), for: .zwift)
    }

    func clearSession() { LoginStore.clearToken(for: .zwift) }

    // MARK: 原始请求

    private func rawRequest(
        url: URL, method: String, headers: [String: String] = [:],
        body: Data? = nil, contentType: String? = nil
    ) async throws -> (Data, HTTPURLResponse) {
        var req = URLRequest(url: url)
        req.httpMethod = method
        req.timeoutInterval = 60
        for (k, v) in headers { req.setValue(v, forHTTPHeaderField: k) }
        if let contentType { req.setValue(contentType, forHTTPHeaderField: "Content-Type") }
        req.httpBody = body
        let (data, resp) = try await HTTPClient.shared.requestRaw(req)
        return (data, resp)
    }

    private func authHeaders(token: String) -> [String: String] {
        [
            "Accept": "application/json",
            "Authorization": "Bearer \(token)",
            "User-Agent": Self.ua,
        ]
    }

    // MARK: 登录 / 刷新

    /// 账号密码登录（ZwiftApi.login），返回 token+refresh_token，playerId 另外解析。
    func login(username: String, password: String) async throws {
        guard let url = URL(string: Self.authURL) else {
            throw PlatformError.network("Zwift 登录地址无效")
        }
        let fields: [(String, String)] = [
            ("grant_type", "password"),
            ("username", username),
            ("password", password),
            ("client_id", Self.clientId),
        ]
        do {
            let (data, resp) = try await rawRequest(
                url: url, method: "POST", headers: ["User-Agent": Self.ua],
                body: zwiftFormBody(fields), contentType: "application/x-www-form-urlencoded"
            )
            guard resp.statusCode == 200, let json = zwiftJSONDict(data) else {
                throw PlatformError.authFailed("Zwift 登录失败 HTTP \(resp.statusCode)，请检查账号密码")
            }
            let token = json["access_token"] as? String ?? ""
            guard !token.isEmpty else {
                throw PlatformError.authFailed("Zwift 登录失败：没有拿到 access_token")
            }
            var session = ZwiftSession()
            session.accessToken = token
            session.refreshToken = json["refresh_token"] as? String ?? ""
            let expiresIn = (json["expires_in"] as? NSNumber)?.int64Value ?? 3600
            session.expiresAt = Int64(Date().timeIntervalSince1970) + expiresIn
            saveSession(session)
        } catch let e as PlatformError {
            throw e
        } catch {
            if zwiftIsSSLError(error) {
                throw PlatformError.network("Zwift 登录证书校验失败，请切换网络后重试")
            }
            throw PlatformError.network("Zwift 登录失败：\(error.localizedDescription)")
        }
    }

    /// refresh_token 刷新（轮换令牌），成功返回新 (access_token, refresh_token)。
    func refreshToken(_ refresh: String) async -> (access: String, refresh: String)? {
        guard let url = URL(string: Self.authURL) else { return nil }
        let fields: [(String, String)] = [
            ("grant_type", "refresh_token"),
            ("refresh_token", refresh),
            ("client_id", Self.clientId),
        ]
        do {
            let (data, resp) = try await rawRequest(
                url: url, method: "POST", headers: ["User-Agent": Self.ua],
                body: zwiftFormBody(fields), contentType: "application/x-www-form-urlencoded"
            )
            guard resp.statusCode == 200, let json = zwiftJSONDict(data) else { return nil }
            let access = json["access_token"] as? String ?? ""
            guard !access.isEmpty else { return nil }
            return (access, json["refresh_token"] as? String ?? refresh)
        } catch {
            return nil
        }
    }

    /// 同步前确保 token 有效（过期前 30 秒就刷新）。
    func ensureValidSession() async throws -> ZwiftSession {
        guard var session = loadSession(), !session.accessToken.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        if session.needsRefresh, !session.refreshToken.isEmpty {
            if let fresh = await refreshToken(session.refreshToken) {
                session.accessToken = fresh.access
                session.refreshToken = fresh.refresh
                // 新 token 的 expires_in 在刷新响应里没单独取，这里保守按 1 小时计，
                // 下次调用会在过期前 30 秒再次刷新；TODO 待真机验证刷新响应的 expires_in。
                session.expiresAt = Int64(Date().timeIntervalSince1970) + 3600
                saveSession(session)
            }
        }
        return session
    }

    // MARK: playerId

    /// 解析 playerId（GET /api/profiles/me），多 host 轮换，失败返回 nil。
    func getProfileId(token: String) async -> String? {
        for base in Self.baseHosts {
            guard let url = URL(string: "\(base)/api/profiles/me") else { continue }
            do {
                let (data, resp) = try await rawRequest(url: url, method: "GET", headers: authHeaders(token: token))
                guard resp.statusCode == 200, let json = zwiftJSONDict(data) else { continue }
                if let id = json["id"] {
                    let idString = "\(id)"
                    if !idString.isEmpty { return idString }
                }
            } catch {
                continue
            }
        }
        return nil
    }

    /// 校验 token：解析 playerId，成功返回 true。
    func validateToken(token: String) async -> Bool {
        await getProfileId(token: token) != nil
    }

    /// token 有效返回 "Zwift用户"，否则 nil。
    func getUsername() async -> String? {
        guard let session = loadSession(), !session.accessToken.isEmpty else { return nil }
        return await validateToken(token: session.accessToken) ? "Zwift用户" : nil
    }

    /// 解析 JWT 的 realm_access.roles，判断是否为试用订阅（无 FIT 下载权限）。
    static func isTrialAccount(token: String) -> Bool {
        let parts = token.split(separator: ".")
        guard parts.count >= 2 else { return false }
        var segment = String(parts[1])
        let remainder = segment.count % 4
        if remainder != 0 { segment += String(repeating: "=", count: 4 - remainder) }
        guard let data = Data(base64Encoded: segment.replacingOccurrences(of: "-", with: "+").replacingOccurrences(of: "_", with: "/")),
              let json = zwiftJSONDict(data),
              let roles = (json["realm_access"] as? [String: Any])?["roles"] as? [String] else { return false }
        return roles.contains("trial-subscriber")
    }

    // MARK: 活动列表（循环翻页，每页 ≤50）

    /// GET {base}/api/profiles/{playerId}/activities?start=&limit=，多 host 轮换，
    /// SSL 异常同 host 重试一次，401 直接抛登录过期。
    func getActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        var session = try await ensureValidSession()
        if session.playerId.isEmpty {
            guard let pid = await getProfileId(token: session.accessToken) else {
                throw PlatformError.network("Zwift 无法解析玩家 ID")
            }
            session.playerId = pid
            saveSession(session)
        }
        var out: [ActivityRecord] = []
        var start = skip
        var lastError: Error?
        while out.count < limit {
            let useLimit = max(1, min(limit - out.count, Self.maxListLimit))
            var pageRecords: [ActivityRecord]? = nil
            var pageFailed401 = false
            for base in Self.baseHosts {
                guard let url = URL(string: "\(base)/api/profiles/\(session.playerId)/activities?start=\(start)&limit=\(useLimit)") else { continue }
                do {
                    let (data, resp) = try await rawRequest(url: url, method: "GET", headers: authHeaders(token: session.accessToken))
                    if resp.statusCode == 401 { pageFailed401 = true; break }
                    guard resp.statusCode == 200 else {
                        throw PlatformError.network("Zwift HTTP \(resp.statusCode)")
                    }
                    pageRecords = parseActivities(data: data)
                    break
                } catch {
                    if zwiftIsSSLError(error) {
                        // 同 host 重试一次
                        do {
                            let (data, resp) = try await rawRequest(url: url, method: "GET", headers: authHeaders(token: session.accessToken))
                            if resp.statusCode == 401 { pageFailed401 = true; break }
                            guard resp.statusCode == 200 else {
                                throw PlatformError.network("Zwift HTTP \(resp.statusCode)")
                            }
                            pageRecords = parseActivities(data: data)
                            break
                        } catch {
                            lastError = error
                            continue
                        }
                    }
                    lastError = error
                    continue
                }
            }
            if pageFailed401 {
                throw PlatformError.authFailed("Zwift 登录已过期，请重新登录")
            }
            guard let records = pageRecords else {
                if let err = lastError, zwiftIsSSLError(err) {
                    throw PlatformError.network("Zwift 证书校验失败：当前网络可能受限，请切换网络（WiFi/流量）后重试")
                }
                throw lastError.map { PlatformError.network("Zwift 列表拉取失败：\($0.localizedDescription)") }
                    ?? PlatformError.network("Zwift 所有 host 请求失败")
            }
            if records.isEmpty { break }
            out.append(contentsOf: records)
            if records.count < useLimit { break }
            start += records.count
        }
        return out
    }

    private func parseActivities(data: Data) -> [ActivityRecord] {
        var arr: [[String: Any]]?
        if let json = zwiftJSONDict(data) {
            arr = json["activities"] as? [[String: Any]]
        }
        if arr == nil {
            arr = (try? JSONSerialization.jsonObject(with: data)) as? [[String: Any]]
        }
        guard let list = arr else { return [] }
        var out: [ActivityRecord] = []
        for item in list {
            let id: String
            if let v = item["id"] { id = "\(v)" } else if let v = item["activityId"] { id = "\(v)" } else { continue }
            if id.isEmpty { continue }
            let bucket = (item["fitFileBucket"] as? String).flatMap { $0.isEmpty ? nil : $0 }
            let key = (item["fitFileKey"] as? String).flatMap { $0.isEmpty ? nil : $0 }
            guard let bucket, let key else { continue }
            let title = (item["name"] as? String).flatMap { $0.isEmpty ? nil : $0 }
                ?? (item["title"] as? String).flatMap { $0.isEmpty ? nil : $0 }
                ?? "Zwift骑行"
            let start = (item["start_date_local"] as? String).flatMap { $0.isEmpty ? nil : $0 }
                ?? (item["startDate"] as? String).flatMap { $0.isEmpty ? nil : $0 }
                ?? (item["createdAt"] as? String).flatMap { $0.isEmpty ? nil : $0 }
                ?? ""
            // 距离单位米 → 公里（distance / distanceInMeters）
            var distM = -1.0
            if let v = (item["distance"] as? NSNumber)?.doubleValue, v >= 0 { distM = v }
            else if let v = (item["distanceInMeters"] as? NSNumber)?.doubleValue, v >= 0 { distM = v }
            if distM < 0 { distM = 0 }
            var dur = (item["duration"] as? NSNumber)?.doubleValue ?? 0
            if dur <= 0 { dur = (item["durationInSeconds"] as? NSNumber)?.doubleValue ?? 0 }
            out.append(ActivityRecord(
                id: id,
                source: .zwift,
                title: title,
                startDate: zwiftParseDate(start),
                distanceMeters: distM,
                durationSeconds: dur,
                elevationGainMeters: 0,
                sportType: "",
                remoteId: "\(bucket)|\(key)",
                fileName: "\(id).fit"
            ))
        }
        return out
    }

    // MARK: 下载 FIT（S3 直链 → API 鉴权下载）

    /// 下载 FIT（ZwiftApi.downloadFit）。
    /// 链路 1：S3 直链；链路 2：详情预检（fitnessData.fullDataUrl 优先，
    /// NOT_AVAILABLE=试用账号无下载权限）+ 三个鉴权下载端点兜底。
    func downloadFit(activity: ActivityRecord) async throws -> Data {
        let session = try await ensureValidSession()
        let extra = activity.remoteId
        let parts = extra.split(separator: "|", omittingEmptySubsequences: false).map(String.init)
        // —— 链路 1：S3 直链 ——
        if parts.count >= 2, !parts[0].isEmpty, !parts[1].isEmpty {
            let key: String
            if parts[1].hasPrefix("http") {
                key = parts[1]
            } else {
                // 注意：安卓 v8.3.3 的替换顺序是先换空格再换 %，会把刚生成的 %20 又编成 %2520
                // （疑似 bug）；本文件先换 % 再换其他字符，保留 / 分隔符。待真机验证。
                let k = parts[1]
                    .replacingOccurrences(of: "%", with: "%25")
                    .replacingOccurrences(of: " ", with: "%20")
                    .replacingOccurrences(of: "+", with: "%2B")
                    .replacingOccurrences(of: "#", with: "%23")
                    .replacingOccurrences(of: "?", with: "%3F")
                    .replacingOccurrences(of: "&", with: "%26")
                    .replacingOccurrences(of: "=", with: "%3D")
                key = "https://\(parts[0]).s3.amazonaws.com/\(k)"
            }
            if let bytes = await getBytes(urlString: key, token: nil), !bytes.isEmpty {
                return bytes
            }
        }
        // —— 链路 2：详情预检 + 鉴权下载端点 ——
        let activityId = activity.id
        for base in Self.baseHosts {
            // 详情预检
            if let detailURL = URL(string: "\(base)/api/activities/\(activityId)") {
                if let (data, resp) = try? await rawRequest(url: detailURL, method: "GET", headers: authHeaders(token: session.accessToken)),
                   resp.statusCode == 200, let det = zwiftJSONDict(data),
                   let fitnessData = det["fitnessData"] as? [String: Any] {
                    let status = fitnessData["status"] as? String ?? ""
                    if let fullUrl = (fitnessData["fullDataUrl"] as? String).flatMap({ $0.isEmpty ? nil : $0 }) {
                        if let bytes = await getBytes(urlString: fullUrl, token: nil), bytes.count > 100 {
                            return bytes
                        }
                    }
                    if status == "NOT_AVAILABLE" {
                        throw PlatformError.unsupported("Zwift 账号（试用订阅）暂无 FIT 下载权限（fitnessData=NOT_AVAILABLE），请升级 Zwift 会员后重试")
                    }
                }
            }
            // 常规鉴权下载端点兜底
            for path in [
                "\(base)/api/activities/\(activityId)/fit",
                "\(base)/api/rides/\(activityId)/fit",
                "\(base)/api/activities/\(activityId)/download?format=fit",
            ] {
                if let bytes = await getBytes(urlString: path, token: session.accessToken), bytes.count > 100 {
                    return bytes
                }
            }
        }
        throw PlatformError.network("Zwift 文件下载失败（S3 直链与 API 均不可用）")
    }

    /// GET 取字节：200 且非空才返回，否则 nil。S3 直链不带 token，API 端点带 Bearer。
    private func getBytes(urlString: String, token: String?) async -> Data? {
        guard let url = URL(string: urlString) else { return nil }
        var headers: [String: String] = [
            "User-Agent": Self.ua,
            "Accept": "application/octet-stream, application/json",
        ]
        if let token { headers["Authorization"] = "Bearer \(token)" }
        do {
            let (data, resp) = try await rawRequest(url: url, method: "GET", headers: headers)
            guard resp.statusCode == 200, !data.isEmpty else { return nil }
            return data
        } catch {
            return nil
        }
    }
}

// MARK: - 对外接口

/// Zwift，仅下载数据源。登录方式：账号密码（OAuth2 password grant）。
public struct ZwiftAPI: PlatformAPI {
    public let source: DataSource = .zwift

    private let engine = ZwiftEngine()

    public init() {}

    /// 本地有没有凭证（不发网络请求）。
    public func isLoggedIn() async -> Bool { LoginStore.isLoggedIn(.zwift) }

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
        // Zwift 仅作下载数据源，官方无上传接口。
        throw PlatformError.unsupported("Zwift 仅作下载数据源，没有上传接口")
    }

    /// 用户名校验（能解析 playerId 返回 "Zwift用户"，否则 nil）。
    public func getUsername() async -> String? { await engine.getUsername() }

    /// 当前 token 对应的账号是否为试用订阅（无 FIT 下载权限）。token 为空返回 false。
    public func isTrialAccount() -> Bool {
        guard let session = engine.loadSession() else { return false }
        return ZwiftEngine.isTrialAccount(token: session.accessToken)
    }

    /// 退出登录：清掉本平台凭证。
    public func logout() { engine.clearSession() }
}

// TODO（待真机验证）：
// 1. 多 host 轮换（us-or-rly101 / us / secure）与 SSL 同 host 重试一次，是按安卓逐字移植的，
//    实际哪个 host 在国内网络下可用、证书问题是否还存在，待真机验证。
// 2. S3 key 转义：安卓的替换顺序会把 %20 二次编码成 %2520（疑似 bug），本文件改成先换 %，
//    待真机验证哪种顺序能下到文件。
// 3. 刷新 token 后新 token 的 expires_in：安卓 refreshToken 只取了新 token，没更新过期时间；
//    本文件刷新后保守按 1 小时计，下次调用会在过期前 30 秒再次刷新——刷新响应的
//    expires_in 字段待真机验证后改成实测值。
// 4. 列表 limit 上限 50（>50 返回 400 limit.too.large）是安卓 v8.3.3 的实测结论，
//    本文件循环翻页每次最多取 50 条，待真机验证。
// 5. 链路 2 的三个鉴权下载端点（/fit、/rides//fit、/download?format=fit）与
//    fitnessData.fullDataUrl / NOT_AVAILABLE 的处理，按安卓原样保留，待真机验证。

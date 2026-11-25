// 待真机验证
// BrytonAPI.swift — 百锐腾（对照安卓 BrytonApi.kt + BrytonWebApi.kt + BrytonWebUploader.kt v9.6.9）
//
// 下载方向（README：百锐腾已支持下载）。
// 登录：没有账号密码直登接口。安卓登录在 WebView 里完成，登录态是 cookie / Meteor 会话：
//   localStorage 里 Meteor.loginToken / Meteor.userId（见 BrytonWebApi / BrytonWebUploader）。
//   本文件 login(username:password:) 因此抛 unsupported；
//   App 层在 WebView 登录后调 setCookie(_:) 或 setMeteorSession(loginToken:userId:) 注入登录态。
// 列表（REST，BrytonApi.kt）：GET https://active.brytonsport.com/api/activity/list?page=N&limit=20
//       头：Cookie + UA（Chrome 131）+ Referer https://active.brytonsport.com/ + Accept application/json
//       → data[] / activities[] / data.list[]：id / name / startTime / distance（米）/ duration。
//       注意：BrytonWebApi.kt 注释说 /api/activity/list 返回的是 SPA HTML、
//       列表实际走 WebView 读 Meteor collection userActivities——两处说法矛盾，
//       REST 先行，返回 HTML 时再走 WebView 兜底（见 TODO）。
// 下载 FIT：GET https://active.brytonsport.com/api/activity/{id}/fit（同款头，FIT 须 ≥14 字节）。
// 下载 GPX（回退）：GET https://active.brytonsport.com/api/activity/{id}/gpx（200 且 >100 字节才算成功）。
// 上传：安卓 BrytonApi.kt 有 POST https://active.brytonsport.com/api/activity/upload（multipart file 字段），
//       但 UploadSupport 里 BRYTON 是“开发中”、不可上传；
//       真正验证过的上传是 WebView 方式（BrytonWebUploader：/activities 页右上角 + → 文件选择 →
//       轮询 userActivities collection 确认落库）。本组只做下载，uploadActivity 抛 unsupported。
// MOBILE_API_KEY：下方留空占位，绝不写真实值。
//   注意：安卓 Kotlin 参考树（app/src/main/java）里搜不到 MOBILE_API_KEY 的任何引用，
//   它的用途未经证实——可能是正式版 / 哇哇叫另一路的密钥。先占位，待真机验证再定用不用。
// 本文件不含任何真实凭证。

import Foundation

/// 百锐腾：下载方向；登录靠 WebView 注入 cookie，上传靠 WebView（均不在本文件内实现）。
struct BrytonAPI: PlatformAPI {
    let source: DataSource = .bryton

    static let loginURL = "https://active.brytonsport.com"
    private static let base = "https://active.brytonsport.com/api"
    private static let perPage = 20
    private static let userAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"

    // MOBILE_API_KEY：每次调用时读 AppConfig.shared（用户在关于页填了就生效）；
    // AppConfig 为空时回落到 BuiltinSecrets 的占位值，绝不写真实值。
    // 注意：安卓 Kotlin 参考树（app/src/main/java）里搜不到 MOBILE_API_KEY 的任何引用，
    // 它的用途未经证实——可能是正式版 / 哇哇叫另一路的密钥；安卓 BrytonApi.kt 的
    // 列表/下载/上传请求头里也没有这个 key，所以这里不编造一个请求头硬塞进去，
    // 只保证取值是实时读的，等真机验证确认用途后再接线。
    static var mobileAPIKey: String {
        let v = AppConfig.shared.brytonMobileApiKey
        return v.isEmpty ? BuiltinSecrets.brytonMobileApiKey : v
    }

    private let session = BrytonSession()

    // MARK: - PlatformAPI

    /// 只看钥匙串里有没有 Cookie，不发网络请求（协议口径）。
    /// 安卓 getUsername：先从 cookie 里解析 uid/email/username，解析到即算登录；
    /// 解析不到再调 /api/users/me（200 即有效）。
    /// 注意：isLoggedIn() 是本地判断；cookie 解析不到时不发网络请求（协议口径只看本地），
    /// 如需实测校验另调 getUsername 思路的接口。
    func isLoggedIn() async -> Bool {
        LoginStore.isLoggedIn(.bryton)
    }

    /// 退出登录：清掉钥匙串里的 Cookie 与 Meteor 会话。
    func logout() {
        LoginStore.clearToken(for: .bryton)
        KeychainStore.delete("bryton_meteorLoginToken")
        KeychainStore.delete("bryton_meteorUserId")
        session.meteorLoginToken = nil
        session.meteorUserId = nil
    }

    /// 百锐腾没有账号密码直登接口：登录在 WebView 里完成（见文件头），
    /// 登录完调 setCookie(_:) 或 setMeteorSession(loginToken:userId:) 注入。
    func login(username: String, password: String) async throws {
        throw PlatformError.unsupported(
            "百锐腾不支持账号密码直登。请在网页登录页（\(Self.loginURL)）登录后，" +
            "由 App 把 cookie 注入本平台（setCookie 方法）。"
        )
    }

    /// WebView 登录后把完整 cookie 交给本实例（直接存钥匙串，见 LoginStore）。
    /// 安卓登录态就是这串 cookie（BrytonApi 全程只带 Cookie 头）。
    func setCookie(_ cookie: String) {
        LoginStore.saveToken(cookie, for: .bryton)
        session.cookie = cookie
    }

    /// WebView 登录后把 Meteor 会话交给本实例（localStorage 的 Meteor.loginToken / Meteor.userId）。
    /// REST 接口目前用不到这两个值，先存着：列表 REST 返回 HTML 时，
    /// 兜底的 WebView 通道（BrytonWebApi.kt）要用它们注入 localStorage 再读 userActivities。
    /// 存钥匙串（bryton_meteorLoginToken / bryton_meteorUserId），新建实例也能读到。
    func setMeteorSession(loginToken: String, userId: String) {
        session.meteorLoginToken = loginToken
        session.meteorUserId = userId
        KeychainStore.set(loginToken, for: "bryton_meteorLoginToken")
        KeychainStore.set(userId, for: "bryton_meteorUserId")
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        let cookie = try requireCookie()
        var result: [ActivityRecord] = []
        var page = skip / Self.perPage + 1
        var skipLeft = skip % Self.perPage
        while result.count < limit {
            let url = URL(string: "\(Self.base)/activity/list?page=\(page)&limit=\(Self.perPage)")!
            let (data, http) = try await request(url: url, headers: authHeaders(cookie: cookie))
            if (401...403).contains(http.statusCode) {
                throw PlatformError.authFailed("百锐腾登录已过期，请重新登录")
            }
            guard http.statusCode == 200 else {
                throw PlatformError.network("百锐腾列表 HTTP \(http.statusCode)")
            }
            // TODO: 待真机验证 — BrytonWebApi.kt 注释说这个接口返回 SPA HTML 而非 JSON。
            // 如果真机上这里拿到的是 HTML，REST 列表不可用，要改走 WebView 读 Meteor
            // collection userActivities（BrytonWebApi.kt 的做法），本文件届时再补。
            guard let json = jsonObject(data) else {
                throw PlatformError.parse("百锐腾列表不是 JSON（可能是 SPA HTML，见文件头 TODO）")
            }
            var rows: [[String: Any]]?
            if let a = json["data"] as? [[String: Any]] { rows = a }
            else if let a = json["activities"] as? [[String: Any]] { rows = a }
            else if let d = json["data"] as? [String: Any] { rows = d["list"] as? [[String: Any]] }
            guard let rows = rows, !rows.isEmpty else { break }
            for item in rows {
                if skipLeft > 0 { skipLeft -= 1; continue }
                let id = int64Field(item, "id", default: int64Field(item, "activityId"))
                guard id > 0 else { continue }
                let startRaw = stringField(item, "startTime", default: stringField(item, "start_time"))
                result.append(ActivityRecord(
                    id: String(id),
                    source: .bryton,
                    title: stringField(item, "name", default: stringField(item, "title", default: "骑行")),
                    startDate: parseStartDate(startRaw),
                    distanceMeters: doubleField(item, "distance"),
                    durationSeconds: Double(int64Field(item, "duration", default: int64Field(item, "elapsedTime"))),
                    elevationGainMeters: 0,
                    sportType: "cycling",
                    remoteId: String(id),
                    fileName: "bryton_\(id).fit"
                ))
                if result.count >= limit { break }
            }
            if rows.count < Self.perPage { break }
            page += 1
            try await Task.sleep(nanoseconds: 200_000_000) // 安卓每页间隔 200ms。
        }
        return result
    }

    /// 下载一条活动的 FIT 字节；FIT 失败时回退 GPX（安卓 downloadFit / downloadGpx 同款）。
    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        let cookie = try requireCookie()
        let activityId = activity.remoteId.isEmpty ? activity.id : activity.remoteId
        // 1) FIT（须 ≥14 字节）。
        let fitURL = URL(string: "\(Self.base)/activity/\(activityId)/fit")!
        let (fitData, fitHttp) = try await request(url: fitURL, headers: authHeaders(cookie: cookie), timeout: 120)
        if fitHttp.statusCode == 200, fitData.count >= 14 {
            return fitData
        }
        if (401...403).contains(fitHttp.statusCode) {
            throw PlatformError.authFailed("百锐腾登录已过期，请重新登录")
        }
        // 2) 回退 GPX（200 且 >100 字节才算成功）。
        let gpxURL = URL(string: "\(Self.base)/activity/\(activityId)/gpx")!
        let (gpxData, gpxHttp) = try await request(url: gpxURL, headers: authHeaders(cookie: cookie), timeout: 120)
        if gpxHttp.statusCode == 200, gpxData.count > 100 {
            return gpxData
        }
        throw PlatformError.network("百锐腾下载失败（FIT HTTP \(fitHttp.statusCode)，GPX HTTP \(gpxHttp.statusCode)）")
    }

    /// 本组只做下载方向，上传暂不接。
    /// 安卓 BrytonApi.kt 虽有 POST /api/activity/upload（multipart file 字段，200 + code 0/200/success 即成功），
    /// 但 UploadSupport 里 BRYTON 是“开发中”不可上传；真正验证过的上传是 WebView 方式
    ///（BrytonWebUploader：/activities 页右上角 + → 文件选择 → 轮询 userActivities collection 确认落库），
    /// 纯 HTTP 上传未经验证——不要假装能传，待真机验证后再接。
    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        throw PlatformError.unsupported("百锐腾在 iOS 版只作下载数据源，上传需走网页端文件上传，暂不支持（等真机验证后再接）")
    }

    // MARK: - 登录态

    private func requireCookie() throws -> String {
        if let cookie = LoginStore.token(for: .bryton), !cookie.isEmpty {
            session.cookie = cookie
            return cookie
        }
        guard let cookie = session.cookie, !cookie.isEmpty else { throw PlatformError.notLoggedIn }
        return cookie
    }

    private func authHeaders(cookie: String) -> [String: String] {
        [
            "Cookie": cookie,
            "User-Agent": Self.userAgent,
            "Referer": "https://active.brytonsport.com/",
            "Accept": "application/json, text/plain, */*",
        ]
    }

    /// 从 cookie 里解析可能的用户标识（安卓 getUsername 第 1 步原样）：
    /// 键名含 uid / user_id / member / account，且值非空、不含 "{"。
    private func cookieUserId(_ cookie: String) -> String? {
        for pair in cookie.split(separator: ";") {
            let kv = pair.split(separator: "=", maxSplits: 1).map { $0.trimmingCharacters(in: .whitespaces) }
            guard kv.count == 2 else { continue }
            let k = kv[0].lowercased()
            let v = kv[1]
            if (k.contains("uid") || k.contains("user_id") || k.contains("member") || k.contains("account")),
               !v.isEmpty, !v.contains("{") {
                return v
            }
        }
        return nil
    }

    /// 本文件专用的请求方法：要看 HTTP 状态码（401/403、FIT/GPX 回退），走 HTTPClient.shared.requestRaw
    ///（非 2xx 不抛错，状态码和响应体都返回给调用方判断）。
    /// 注意：HTTPClient 走系统共享 cookie 存储；但百锐腾登录态是 App 显式传的 Cookie 头，
    /// 不依赖系统 cookie jar。
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

    // MARK: - 时间解析

    /// startTime 字段格式安卓没写死（startTime / start_time 原样透传），
    /// 这里按常见格式尽力解析，解析失败回 1970。
    /// TODO: 待真机验证 — startTime 到底是什么格式（ISO8601？毫秒时间戳？）。
    private func parseStartDate(_ raw: String) -> Date {
        guard !raw.isEmpty else { return Date(timeIntervalSince1970: 0) }
        if let ms = Int64(raw), ms > 1_000_000_000 {
            return Date(timeIntervalSince1970: TimeInterval(ms > 1_000_000_000_000 ? ms : ms * 1000) / 1000)
        }
        let f = DateFormatter()
        f.locale = Locale(identifier: "en_US_POSIX")
        for format in ["yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd'T'HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy/MM/dd HH:mm:ss", "yyyy-MM-dd"] {
            f.dateFormat = format
            if let d = f.date(from: raw) { return d }
        }
        let iso = ISO8601DateFormatter()
        if let d = iso.date(from: raw) { return d }
        return Date(timeIntervalSince1970: 0)
    }
}

// MARK: - 登录态（只放内存；落盘由 App 层负责）

private final class BrytonSession {
    var cookie: String?
    var meteorLoginToken: String?
    var meteorUserId: String?
}

// MARK: - 本文件内的小工具（不碰共享类型）

private func jsonObject(_ data: Data) -> [String: Any]? {
    (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
}

private func stringField(_ dict: [String: Any], _ key: String, default defaultValue: String = "") -> String {
    if let s = dict[key] as? String, !s.isEmpty { return s }
    if let n = dict[key] as? NSNumber { return n.stringValue }
    return defaultValue
}

private func doubleField(_ dict: [String: Any], _ key: String) -> Double {
    if let n = dict[key] as? NSNumber { return n.doubleValue }
    if let s = dict[key] as? String, let v = Double(s) { return v }
    return 0
}

private func int64Field(_ dict: [String: Any], _ key: String, default defaultValue: Int64 = 0) -> Int64 {
    if let n = dict[key] as? NSNumber { return n.int64Value }
    if let s = dict[key] as? String, let v = Int64(s) { return v }
    return defaultValue
}

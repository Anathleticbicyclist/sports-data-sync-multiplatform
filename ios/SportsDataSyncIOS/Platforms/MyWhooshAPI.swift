// 待真机验证
// MyWhooshAPI.swift
// MyWhoosh — 对照安卓 MyWhooshApi.kt（v9.6.9）原样移植
//
// 方向：仅下载数据源。上传抛 unsupported（官方无上传接口）。
// 登录：账号密码纯 API 登录，无需浏览器。
//   POST https://services.mywhoosh.com/http-service/api/login
//   JSON {Username, Password, Platform:"Android", Action:1001,
//         CorrelationId:uuid, DeviceId:uuid, Authorization:""}
//   → {Success, AccessToken, WhooshId, RefreshToken, Message?}
//   注意：没有官方 refresh_token 端点，401 时用保存的账号密码重新登录兜底
//   （账号密码存钥匙串，见 LoginStore.saveCredentials）。
// 列表：POST https://service14.mywhoosh.com/v2/rider/profile/activities
//   （Bearer，JSON {page, limit, sortDate:"DESC"/"ASC"}），每页 50 条循环翻页
//   拉到 skip+limit 为止（v8.2.3.9 已修只拉一页、最多 200 条的问题），页间隔 150ms。
//   返回结构兼容多种写法：data.results / data[] / activities / results / rides /
//   rideHistory / 顶层数组。没有 activityFileId 的记录无法下载，直接跳过。
// 下载：POST .../download-activity-file，JSON {key:WhooshId, fileId:activityFileId}
//   → data 为 S3 预签名 URL → GET 直下。
//   注意：安卓注释说“校验 .FIT magic bytes”，但代码里实际没校验，本文件同样只原样返回字节，
//   校验逻辑待真机验证后再补，不要当成已实现。
// 距离单位待确认：安卓把 distanceKm / distance / totalDistance 的原始值直接当公里存，
//   没做换算；如果服务端对 "distance" 返回的是米，距离会差 1000 倍，待真机验证。

import Foundation

// MARK: - 小工具（本文件内用）

private func myWhooshJSONDict(_ data: Data) -> [String: Any]? {
    (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
}

private func myWhooshParseDate(_ s: String) -> Date {
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

private func myWhooshJSONBody(_ obj: [String: Any]) -> Data? {
    try? JSONSerialization.data(withJSONObject: obj)
}

private struct MyWhooshSession {
    var token = ""
    var whooshId = ""
    var refreshToken = ""

    func toJSON() -> String {
        let obj: [String: Any] = ["AccessToken": token, "WhooshId": whooshId, "RefreshToken": refreshToken]
        guard let data = try? JSONSerialization.data(withJSONObject: obj),
              let s = String(data: data, encoding: .utf8) else { return "" }
        return s
    }

    static func fromJSON(_ s: String) -> MyWhooshSession? {
        guard let data = s.data(using: .utf8), let obj = myWhooshJSONDict(data) else { return nil }
        let token = obj["AccessToken"] as? String ?? ""
        guard !token.isEmpty else { return nil }
        var session = MyWhooshSession()
        session.token = token
        session.whooshId = obj["WhooshId"] as? String ?? ""
        session.refreshToken = obj["RefreshToken"] as? String ?? ""
        return session
    }
}

// MARK: - 引擎

private final class MyWhooshEngine {
    static let loginURL = "https://services.mywhoosh.com/http-service/api/login"
    static let apiBase = "https://service14.mywhoosh.com/v2/rider/profile"
    static let jsonMedia = "application/json; charset=utf-8"
    static let ua = "MyWhoosh-Python-Client/1.0"

    func loadSession() -> MyWhooshSession? {
        guard let stored = LoginStore.token(for: .myWhoosh) else { return nil }
        return MyWhooshSession.fromJSON(stored)
    }

    func saveSession(_ session: MyWhooshSession) {
        LoginStore.saveToken(session.toJSON(), for: .myWhoosh)
    }

    func clearSession() {
        LoginStore.clearToken(for: .myWhoosh)
        LoginStore.clearCredentials(for: .myWhoosh)
    }

    private func authHeaders(token: String) -> [String: String] {
        [
            "Authorization": "Bearer \(token)",
            "Content-Type": Self.jsonMedia,
            "User-Agent": Self.ua,
        ]
    }

    /// 原始 POST（需要区分 401 的调用走这里；走 HTTPClient.shared.requestRaw，非 2xx 也返回响应体和状态码，由调用方自己判断）。
    private func rawPost(url: URL, token: String, json: [String: Any]) async throws -> (Data, HTTPURLResponse) {
        var req = URLRequest(url: url)
        req.httpMethod = "POST"
        req.timeoutInterval = 60
        for (k, v) in authHeaders(token: token) { req.setValue(v, forHTTPHeaderField: k) }
        req.httpBody = myWhooshJSONBody(json)
        let (data, resp) = try await HTTPClient.shared.requestRaw(req)
        return (data, resp)
    }

    // MARK: 登录

    /// 账号密码登录（MyWhooshApi.login）。成功存 token+WhooshId+refreshToken，并留存账号密码供 401 重登。
    func login(username: String, password: String) async throws {
        guard let url = URL(string: Self.loginURL) else {
            throw PlatformError.network("MyWhoosh 登录地址无效")
        }
        let payload: [String: Any] = [
            "Username": username,
            "Password": password,
            "Platform": "Android",
            "Action": 1001,
            "CorrelationId": UUID().uuidString,
            "DeviceId": UUID().uuidString,
            "Authorization": "",
        ]
        var req = URLRequest(url: url)
        req.httpMethod = "POST"
        req.timeoutInterval = 60
        req.setValue(Self.jsonMedia, forHTTPHeaderField: "Content-Type")
        req.setValue("application/json", forHTTPHeaderField: "Accept")
        req.setValue(Self.ua, forHTTPHeaderField: "User-Agent")
        req.httpBody = myWhooshJSONBody(payload)
        let (data, resp) = try await HTTPClient.shared.requestRaw(req)
        guard resp.statusCode == 200,
              let json = myWhooshJSONDict(data),
              json["Success"] as? Bool == true else {
            let message = (try? myWhooshJSONDict(data))?["Message"] as? String ?? ""
            throw PlatformError.authFailed(message.isEmpty ? "MyWhoosh 登录失败，请检查账号密码" : "MyWhoosh 登录失败：\(message)")
        }
        let token = json["AccessToken"] as? String ?? ""
        guard !token.isEmpty else {
            throw PlatformError.authFailed("MyWhoosh 登录失败：没有拿到 AccessToken")
        }
        var session = MyWhooshSession()
        session.token = token
        session.whooshId = json["WhooshId"] as? String ?? ""
        session.refreshToken = json["RefreshToken"] as? String ?? ""
        saveSession(session)
        // 401 重登兜底用（只存本机钥匙串，不上传）
        LoginStore.saveCredentials(username: username, password: password, for: .myWhoosh)
    }

    /// 401 时用留存的账号密码重新登录（内存/钥匙串兜底），成功返回新 session。
    func reLoginIfNeeded() async -> MyWhooshSession? {
        guard let username = LoginStore.username(for: .myWhoosh),
              let password = LoginStore.password(for: .myWhoosh) else { return nil }
        do {
            try await login(username: username, password: password)
            return loadSession()
        } catch {
            return nil
        }
    }

    /// 校验 token：调一次活动列表（limit=1），200 即有效。
    func validateToken(token: String) async -> Bool {
        guard let url = URL(string: "\(Self.apiBase)/activities") else { return false }
        do {
            let (_, resp) = try await rawPost(url: url, token: token, json: ["page": 1, "limit": 1, "sortDate": "DESC"])
            return resp.statusCode == 200
        } catch {
            return false
        }
    }

    /// token 有效返回 "MyWhoosh用户"，无效返回 nil。
    func getUsername() async -> String? {
        guard let session = loadSession(), !session.token.isEmpty else { return nil }
        return await validateToken(token: session.token) ? "MyWhoosh用户" : nil
    }

    // MARK: 活动列表（循环翻页）

    /// POST {apiBase}/activities，循环翻页拉到 skip+limit 为止，去重后截取。
    /// 401 时自动用留存账号密码重登一次再重试。
    func getActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        guard var session = loadSession(), !session.token.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        var out: [ActivityRecord] = []
        var page = 1
        var retried401 = false
        while out.count < skip + limit {
            guard let url = URL(string: "\(Self.apiBase)/activities") else { break }
            let (data, resp): (Data, HTTPURLResponse)
            do {
                (data, resp) = try await rawPost(url: url, token: session.token, json: ["page": page, "limit": 50, "sortDate": "DESC"])
            } catch {
                break // 安卓同款：请求失败返回已拉到的部分
            }
            if resp.statusCode == 401, !retried401 {
                retried401 = true
                if let fresh = await reLoginIfNeeded() {
                    session = fresh
                    continue
                }
                throw PlatformError.authFailed("MyWhoosh 登录已过期，请重新登录")
            }
            guard resp.statusCode == 200 else { break }
            let batch = parseActivities(data: data)
            if batch.isEmpty { break }
            out.append(contentsOf: batch)
            if batch.count < 50 { break }
            page += 1
            try? await Task.sleep(nanoseconds: 150_000_000)
        }
        // 去重（按 id），再按 skip/limit 截取
        var seen = Set<String>()
        var deduped: [ActivityRecord] = []
        for record in out where seen.insert(record.id).inserted {
            deduped.append(record)
        }
        let end = min(skip + limit, deduped.count)
        guard skip < end else { return [] }
        return Array(deduped[skip..<end])
    }

    /// 解析列表响应，兼容 data.results / data[] / activities / results / rides / rideHistory / 顶层数组。
    private func parseActivities(data: Data) -> [ActivityRecord] {
        guard let json = myWhooshJSONDict(data) else {
            // 顶层直接是数组的情况
            if let arr = (try? JSONSerialization.jsonObject(with: data)) as? [[String: Any]] {
                return parseActivityArray(arr)
            }
            return []
        }
        var arr: [[String: Any]]?
        if let dataObj = json["data"] as? [String: Any] {
            arr = dataObj["results"] as? [[String: Any]]
        } else if let dataArr = json["data"] as? [[String: Any]] {
            arr = dataArr
        }
        if arr == nil {
            for key in ["activities", "results", "rides", "rideHistory"] {
                if let a = json[key] as? [[String: Any]] { arr = a; break }
            }
        }
        if arr == nil {
            if let direct = (try? JSONSerialization.jsonObject(with: data)) as? [[String: Any]] {
                arr = direct
            }
        }
        guard let list = arr else { return [] }
        return parseActivityArray(list)
    }

    private func parseActivityArray(_ arr: [[String: Any]]) -> [ActivityRecord] {
        var out: [ActivityRecord] = []
        for item in arr {
            let id: String
            if let v = item["id"] { id = "\(v)" } else if let v = item["_id"] { id = "\(v)" } else { continue }
            if id.isEmpty { continue }
            // 无文件 ID 无法下载，跳过
            let fileId = item["activityFileId"] as? String ?? ""
            if fileId.isEmpty { continue }
            let title = (item["name"] as? String).flatMap { $0.isEmpty ? nil : $0 }
                ?? (item["title"] as? String).flatMap { $0.isEmpty ? nil : $0 }
                ?? "MyWhoosh骑行"
            let start = (item["date"] as? String).flatMap { $0.isEmpty ? nil : $0 }
                ?? (item["startTime"] as? String).flatMap { $0.isEmpty ? nil : $0 }
                ?? (item["createdAt"] as? String).flatMap { $0.isEmpty ? nil : $0 }
                ?? ""
            // TODO：距离单位待真机验证——安卓把 distanceKm/distance/totalDistance 的原始值直接当公里存，
            //   如果服务端对 "distance" 返回的是米，距离会差 1000 倍。
            let dist = doubleField(item, keys: ["distanceKm", "distance", "totalDistance"]) ?? 0
            let dur = (doubleField(item, keys: ["duration", "durationSeconds", "totalTime"]) ?? 0)
            out.append(ActivityRecord(
                id: id,
                source: .myWhoosh,
                title: title,
                startDate: myWhooshParseDate(start),
                distanceMeters: dist * 1000,
                durationSeconds: dur,
                elevationGainMeters: 0,
                sportType: "",
                remoteId: fileId,
                fileName: "\(id).fit"
            ))
        }
        return out
    }

    private func doubleField(_ item: [String: Any], keys: [String]) -> Double? {
        for key in keys {
            if let number = item[key] as? NSNumber { return number.doubleValue }
            if let string = item[key] as? String, let value = Double(string) { return value }
        }
        return nil
    }

    // MARK: 下载 FIT

    /// POST {apiBase}/download-activity-file {key:WhooshId, fileId} → data(S3 预签名 URL) → GET 直下。
    /// 401 时自动用留存账号密码重登一次再重试。
    func downloadFit(activity: ActivityRecord) async throws -> Data {
        guard var session = loadSession(), !session.token.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        let fileId = activity.remoteId.isEmpty ? activity.id : activity.remoteId
        guard let url = URL(string: "\(Self.apiBase)/download-activity-file") else {
            throw PlatformError.network("MyWhoosh 下载地址无效")
        }
        var retried401 = false
        while true {
            let (data, resp) = try await rawPost(url: url, token: session.token, json: ["key": session.whooshId, "fileId": fileId])
            if resp.statusCode == 401, !retried401 {
                retried401 = true
                if let fresh = await reLoginIfNeeded() {
                    session = fresh
                    continue
                }
                throw PlatformError.authFailed("MyWhoosh 登录已过期，请重新登录")
            }
            guard resp.statusCode == 200 else {
                throw PlatformError.network("MyWhoosh 获取下载地址失败 HTTP \(resp.statusCode)")
            }
            guard let json = myWhooshJSONDict(data) else {
                throw PlatformError.network("MyWhoosh 下载地址响应解析失败")
            }
            if let isError = json["error"] as? Bool, isError {
                throw PlatformError.network("MyWhoosh 下载地址错误：\(json["message"] as? String ?? "")")
            }
            let downloadURLString = json["data"] as? String ?? ""
            guard downloadURLString.hasPrefix("http"),
                  let downloadURL = URL(string: downloadURLString) else {
                throw PlatformError.network("MyWhoosh 下载地址无效：\(downloadURLString.prefix(80))")
            }
            return try await HTTPClient.shared.get(url: downloadURL, headers: [:])
        }
    }
}

// MARK: - 对外接口

/// MyWhoosh，仅下载数据源。登录方式：账号密码纯 API 登录。
public struct MyWhooshAPI: PlatformAPI {
    public let source: DataSource = .myWhoosh

    private let engine = MyWhooshEngine()

    public init() {}

    /// 本地有没有凭证（不发网络请求）。
    public func isLoggedIn() async -> Bool { LoginStore.isLoggedIn(.myWhoosh) }

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
        // MyWhoosh 仅作下载数据源，官方无上传接口。
        throw PlatformError.unsupported("MyWhoosh 仅作下载数据源，没有上传接口")
    }

    /// 用户名校验（token 有效返回 "MyWhoosh用户"，否则 nil）。
    public func getUsername() async -> String? { await engine.getUsername() }

    /// 退出登录：清掉本平台凭证与留存的账号密码。
    public func logout() { engine.clearSession() }
}

// TODO（待真机验证）：
// 1. 列表返回的距离单位（distanceKm/distance/totalDistance 到底是公里还是米），
//    安卓直接当公里存，本文件同款处理，待真机用一条已知距离的活动核对。
// 2. 401 自动重登依赖登录时留存的账号密码（钥匙串）；若用户在别处改了密码，
//    重登失败会抛“登录已过期”，需用户手动重新登录。
// 3. 安卓注释说的“.FIT magic bytes 校验”代码里实际没有，本文件同样没做；
//    如需校验，在 downloadFit 返回前检查第 8、9 字节是否为 ".F"。
// 4. 列表返回结构的多种兼容写法（data.results / data[] / activities 等）是按安卓
//    逐一保留的，实际服务端返回哪种结构待真机验证。

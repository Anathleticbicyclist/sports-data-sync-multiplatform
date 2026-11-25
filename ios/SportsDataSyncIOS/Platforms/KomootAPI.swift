// 待真机验证
// KomootAPI.swift — Komoot（对照安卓 KomootApi.kt v9.6.9 原样移植）
//
// 双向：下载源 + 上传目标（上传按安卓 KomootApi.upload 移植：POST /v007/tours/?data_type=fit|gpx，
//   Basic email:token，body=文件字节，201 新建 / 202 重复已存在算成功；GPX 需显式指定 sport）。
// 登录：邮箱 + 密码，官方内部 API 纯 HTTP（Kompy 社区方案，无需 OAuth / 开发者合同，个人账号即可用）
//   GET https://api.komoot.de/v006/account/email/{email}/
//   头：Authorization: Basic(email:password)
//   → 响应 JSON 的 password 字段即认证 token（后续请求用 Basic(email:token)，不是 Bearer）。
// 列表：GET https://api.komoot.de/v007/users/{email}/tours/?limit=50&page=0
//       （Basic email:token）→ _embedded.tours[]（id / name / date / distance / duration / sport），
//       page.totalPages 分页（page 从 0 起）。
// 下载：GET https://api.komoot.de/v007/tours/{id}.gpx（GPX；.fit 仅 planned 可用）
//       （Basic email:token）→ 直接返回 GPX 字节。
// 坐标：Komoot 为国际平台，轨迹 WGS-84，无需坐标转换。
// sport 类型：骑行=racebike（公路）/ touringbicycle（旅行）/ mtb（山地）/ citybike（城市），
//             跑步=jogging，徒步=hike，越野跑=trail，其他=other。
// 密钥：无固定密钥，token 全部运行时注入，本文件不含任何真实凭证。

import Foundation

/// Komoot：双向（下载 + 上传，安卓 KomootApi 原样移植；上传待真机验证）。
struct KomootAPI: PlatformAPI {
    let source: DataSource = .komoot

    private static let api = "https://api.komoot.de"
    private static let loginURL = api + "/v006/account/email"
    private static let listTours = api + "/v007/users"
    private static let tourURL = api + "/v007/tours"
    private static let uploadURL = api + "/v007/tours"
    private static let userAgent = "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"
    private static let appUserAgent = "jichiOb/7.9.6 (鸡翅幸哲迈进OB)"

    private let session = KomootSession()

    // MARK: - PlatformAPI

    func isLoggedIn() async -> Bool {
        LoginStore.isLoggedIn(source)
    }

    /// 退出登录：清掉钥匙串里的 token 与账号密码。
    func logout() {
        LoginStore.clearToken(for: source)
        LoginStore.clearCredentials(for: source)
    }

    /// 邮箱 + 密码登录。成功返回 token（响应 JSON 的 password 字段）与 username，失败抛 authFailed。
    /// 注意：Komoot 的 v006/v007 内部 API 用 HTTP Basic（email:token）认证，非 Bearer。
    func login(username: String, password: String) async throws {
        session.email = username
        session.password = password
        let url = URL(string: "\(Self.loginURL)/\(formEncode(username))/")!
        let (data, http) = try await request(url: url, headers: [
            "Authorization": basicAuth(user: username, pass: password),
            "User-Agent": Self.userAgent,
        ])
        if http.statusCode == 403 {
            throw PlatformError.authFailed("Komoot 登录失败：邮箱或密码错误（403）")
        }
        guard http.statusCode == 200 else {
            throw PlatformError.authFailed("Komoot 登录失败（HTTP \(http.statusCode)）")
        }
        guard let json = jsonObject(data),
              let token = json["password"] as? String, !token.isEmpty else {
            throw PlatformError.authFailed("Komoot 登录失败：响应里没有 token")
        }
        session.token = token
        session.username = (json["username"] as? String).flatMap { $0.isEmpty ? nil : $0 } ?? username
        LoginStore.saveToken(token, for: source)
        LoginStore.saveCredentials(username: username, password: password, for: source)
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        let email = try requireEmail()
        let token = try requireToken()
        var out: [ActivityRecord] = []
        var page = 0
        var totalPages = 1
        while page < totalPages {
            let url = URL(string: "\(Self.listTours)/\(formEncode(email))/tours/?limit=50&page=\(page)")!
            let (data, http) = try await request(url: url, headers: authHeaders(email: email, token: token))
            if http.statusCode == 401 || http.statusCode == 403 {
                // token 失效时用最近一次邮箱密码重登一次再试（安卓 reLoginIfNeeded）。
                try await relogin()
                return try await fetchActivities(limit: limit, skip: skip)
            }
            guard http.statusCode == 200 else { break }
            guard let json = jsonObject(data),
                  let embedded = json["_embedded"] as? [String: Any],
                  let tours = embedded["tours"] as? [[String: Any]] else { break }
            totalPages = (json["page"] as? [String: Any])?["totalPages"] as? Int ?? 1
            for t in tours {
                guard let id = t["id"] as? String, !id.isEmpty else { continue }
                let sport = (t["sport"] as? String) ?? ""
                let name = (t["name"] as? String).flatMap { $0.isEmpty ? nil : $0 } ?? sportToChinese(sport)
                let dateStr = (t["date"] as? String) ?? ""
                let startDate = parseISODate(dateStr)
                let title = "\(name) \(sportToChinese(sport))".trimmingCharacters(in: .whitespaces)
                out.append(ActivityRecord(
                    id: id,
                    source: .komoot,
                    title: title,
                    startDate: startDate,
                    distanceMeters: doubleField(t, "distance"),
                    durationSeconds: Double(int64Field(t, "duration")),
                    elevationGainMeters: 0,
                    sportType: sport.isEmpty ? "other" : sport,
                    remoteId: id,
                    fileName: "komoot_\(id).gpx"
                ))
            }
            page += 1
            if out.count >= skip + limit { break }
        }
        var seen = Set<String>()
        let deduped = out.filter { seen.insert($0.id).inserted }
        return Array(deduped.dropFirst(skip).prefix(limit))
    }

    /// 下载一条活动的 GPX 字节（Komoot 支持 .gpx 下载，recorded / planned 均可）。
    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        let email = try requireEmail()
        let token = try requireToken()
        let tourId = activity.remoteId.isEmpty ? activity.id : activity.remoteId
        let url = URL(string: "\(Self.tourURL)/\(formEncode(tourId)).gpx")!
        let (data, http) = try await request(url: url, headers: [
            "Authorization": basicAuth(user: email, pass: token),
            "User-Agent": Self.userAgent,
            "Accept": "application/gpx+xml",
        ])
        if http.statusCode == 401 || http.statusCode == 403 {
            throw PlatformError.authFailed("Komoot 登录失效（HTTP \(http.statusCode)），请重新登录")
        }
        guard http.statusCode == 200 else {
            throw PlatformError.network("Komoot 下载失败（HTTP \(http.statusCode)）")
        }
        guard !data.isEmpty else { throw PlatformError.parse("Komoot 轨迹为空") }
        return data
    }

    /// 上传活动到 Komoot（安卓 KomootApi.upload 原样移植：GPX 或 FIT 都能传）。
    /// - GPX：data_type=gpx&sport={sport}&name={name}（GPX 需显式指定 sport）；
    /// - FIT：data_type=fit&name={name}（FIT 内嵌运动类型）。
    /// 201=新建，202=重复已存在（都算成功）；400=文件格式不被接受；401/403=登录失效。
    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        let email = try requireEmail()
        let token = try requireToken()
        let isFit = FitParser.isFit(data)
        let name = activity.title.isEmpty ? "jichiOB sync" : activity.title
        let urlString: String
        if isFit {
            urlString = "\(Self.uploadURL)/?data_type=fit&name=\(formEncode(name))"
        } else {
            urlString = "\(Self.uploadURL)/?data_type=gpx&sport=\(formEncode(mapToKomootSport(activity)))&name=\(formEncode(name))"
        }
        let url = URL(string: urlString)!
        let (respData, http) = try await request(
            url: url, method: "POST",
            headers: [
                "Authorization": basicAuth(user: email, pass: token),
                "User-Agent": Self.appUserAgent,
            ],
            body: data
        )
        switch http.statusCode {
        case 201, 202:
            return
        case 400:
            throw PlatformError.network("Komoot 上传失败：文件格式不被接受（400）")
        case 401, 403:
            throw PlatformError.authFailed("Komoot 登录失效（HTTP \(http.statusCode)），请重新登录")
        default:
            let body = String(data: respData, encoding: .utf8) ?? ""
            throw PlatformError.network("Komoot 上传失败：HTTP \(http.statusCode)\(body.isEmpty ? "" : " \(body.prefix(100))")")
        }
    }

    /// 上传时把通用运动类型映射为 Komoot sport 枚举（安卓 mapToKomootSport 原样，按标题判断）。
    private func mapToKomootSport(_ record: ActivityRecord) -> String {
        if record.title.contains("骑") { return "racebike" }
        if record.title.contains("跑") { return "jogging" }
        if record.title.contains("徒步") { return "hike" }
        if record.title.contains("越野") { return "mtb_easy" }
        if record.title.contains("游泳") { return "other" }
        if record.title.contains("健走") || record.title.contains("快走") { return "nordicwalking" }
        return "other"
    }

    // MARK: - 登录态

    private func requireEmail() throws -> String {
        if let email = LoginStore.username(for: source) ?? session.email, !email.isEmpty {
            return email
        }
        throw PlatformError.notLoggedIn
    }

    private func requireToken() throws -> String {
        if let token = LoginStore.token(for: source) ?? session.token, !token.isEmpty {
            return token
        }
        throw PlatformError.notLoggedIn
    }

    private func relogin() async throws {
        let email = LoginStore.username(for: source) ?? session.email
        let password = LoginStore.password(for: source) ?? session.password
        guard let email, let password else {
            throw PlatformError.authFailed("Komoot 登录失效，请重新登录")
        }
        try await login(username: email, password: password)
    }

    private func authHeaders(email: String, token: String) -> [String: String] {
        ["Authorization": basicAuth(user: email, pass: token), "User-Agent": Self.userAgent]
    }

    private func basicAuth(user: String, pass: String) -> String {
        "Basic " + Data("\(user):\(pass)".utf8).base64EncodedString()
    }

    /// 本文件专用的请求方法：要看 HTTP 状态码（401/403 重登、403 区分密码错），走 HTTPClient.shared.requestRaw
    ///（非 2xx 不抛错，状态码和响应体都返回给调用方判断）。
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

    // MARK: - 运动类型与时间

    /// Komoot sport 枚举 → 中文名（安卓 sportToChinese 原样）。
    private func sportToChinese(_ sport: String) -> String {
        switch sport {
        case "racebike", "e_racebike": return "公路骑行"
        case "touringbicycle", "e_touringbicycle": return "旅行骑行"
        case "mtb", "e_mtb": return "山地骑行"
        case "mtb_easy", "e_mtb_easy": return "越野骑行"
        case "mtb_advanced", "e_mtb_advanced": return "耐力骑行"
        case "citybike": return "城市骑行"
        case "downhillbike": return "速降"
        case "jogging": return "跑步"
        case "trail": return "越野跑"
        case "hike": return "徒步"
        case "mountaineering": return "登山"
        case "nordic": return "越野滑雪"
        case "nordicwalking": return "北欧徒步"
        case "skialpin": return "高山滑雪"
        case "skitour": return "滑雪旅行"
        case "snowboard": return "单板滑雪"
        case "snowshoe": return "雪鞋徒步"
        case "sled": return "雪橇"
        case "skaten": return "轮滑"
        case "climbing": return "攀岩"
        case "unicycle": return "独轮车"
        case "other": return "其他"
        default: return "运动"
        }
    }

    /// Komoot date 为 ISO8601（如 2026-09-13T08:30:00.000Z），转本地 Date；解析失败回 1970。
    /// TODO: 待真机验证 — date 字段是否总带时区、是否还有别的格式。
    private func parseISODate(_ iso: String) -> Date {
        guard !iso.isEmpty else { return Date(timeIntervalSince1970: 0) }
        let f = ISO8601DateFormatter()
        f.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        if let d = f.date(from: iso) { return d }
        let f2 = ISO8601DateFormatter()
        if let d = f2.date(from: iso) { return d }
        return Date(timeIntervalSince1970: 0)
    }
}

// MARK: - 登录态（token 与账号密码存钥匙串 LoginStore；session 只留本实例内的缓存，供重登兜底）

private final class KomootSession {
    var email: String?
    var password: String?
    var token: String?
    var username: String?
}

// MARK: - 本文件内的小工具（不碰共享类型）

private func formEncode(_ s: String) -> String {
    s.addingPercentEncoding(withAllowedCharacters: .komootFormAllowed) ?? s
}

private extension CharacterSet {
    static let komootFormAllowed = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~")
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

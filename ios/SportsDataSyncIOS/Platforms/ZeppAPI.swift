// 待真机验证
// ZeppAPI.swift — Zepp（华米 / 小米运动）（对照安卓 ZeppApi.kt v9.6.9 原样移植）
//
// 仅下载数据源。华米官方无公开云数据 API，本实现参考社区逆向方案
// （rolandsz/Mi-Fit-and-Zepp-workout-exporter + CSDN 逆向文章）。
// 登录（三步，邮箱 / 手机号 + 密码纯 API）：
//  ① POST https://api-user.huami.com/registrations/{账号}/tokens
//     form: client_id=HuaMi / password（明文）/ redirect_uri=successsignin.html /
//           token=access / state=REDIRECTION / json_response=true / country_code=CN
//     → JSON {"access": ...}（access code）；旧实现走 302 Location 取 access=，已改为 JSON 优先。
//  ② POST https://account.huami.com/v2/client/login
//     form: app_name=com.xiaomi.hm.health / dn=... / code={access code} / grant_type=access_token /
//           third_name=email(邮箱)/huami_phone(手机号) / device_id / device_model=phone /
//           country_code=CN / app_version=6.5.5 / lang=zh_CN
//     → token_info.login_token + user_id
//     （安卓当前参数：app_version 6.12.0 / device_model android_phone / allow_registration=false / source）
//  ③ GET https://account-cn.huami.com/v1/client/app_tokens?login_token=..
//     → token_info.app_token
// 历史：GET https://api-mifit-de2.huami.com/v1/sport/run/history.json?source=run.mifit.huami.com
//       头：apptoken / appPlatform=web / appname=com.xiaomi.hm.health
//       → data.summary[]（trackid=epoch 秒 / dis(km) / run_time(秒) / type / sport_mode / end_time…）
//       data.next 分页（-1 结束）
// 详情：GET https://api-mifit-de2.huami.com/v1/sport/run/detail.json?trackid={id}&source={src}
//       → data.longitude_latitude（"lat,lon;…"，相对插值、lat 在前、÷1e8）、
//         data.altitude（绝对厘米，缺省 -2000000）、data.time（相对秒，需累加）、
//         data.heart_rate（"time,hr;…"，安卓下载时未用，只列在这里）。
//       绝对坐标 = 累加（相对值）；点时间 = trackid（epoch 秒）+ 累加（time）。
// 运动类型：1=running 6=walking 8=treadmill_running 9=cycling
//           10=indoor_cycling 16=other 23=indoor_rowing 92=badminton
// 坐标：华米 / Zepp 设备 GPS 原始坐标 = WGS-84，默认不转换；若实测偏移，把 gcjConvertEnabled 置 true。
// 手机号登录必须带 +86 国家码（华米服务端校验，否则 401）。
// 密钥：无固定密钥，token 全部运行时注入，本文件不含任何真实凭证。

import Foundation

/// Zepp：仅下载。上传抛 unsupported（官方无上传 API，安卓 UploadSupport 也是“仅下载”）。
struct ZeppAPI: PlatformAPI {
    let source: DataSource = .zepp

    private static let appName = "com.xiaomi.hm.health"
    private static let appPlatform = "web"
    private static let apiHost = "https://api-mifit-de2.huami.com"
    private static let userAgent = "Dalvik/2.1.0 (Linux; U; Android 9; MI 6 MIUI/20.6.18)"
    private static let noValue: Int64 = -2_000_000

    private static let typeNames: [Int: String] = [
        1: "running", 6: "walking", 8: "treadmill_running", 9: "cycling",
        10: "indoor_cycling", 16: "other", 23: "indoor_rowing", 92: "badminton",
    ]
    private static let typeTitles: [Int: String] = [
        1: "跑步", 6: "健走", 8: "跑步机", 9: "骑行",
        10: "室内骑行", 16: "其他", 23: "划船机", 92: "羽毛球",
    ]

    /// 轨迹坐标转换开关（默认关 = WGS-84；若实测偏移由 App 层打开，走 GCJ-02→WGS-84）。
    /// 安卓同款开关（ZeppApi.gcjConvertEnabled，默认 false）。
    var gcjConvertEnabled = false

    private let session = ZeppSession()
    /// 第 ① 步专用：不跟随 302（需从 Location 取 access code 兜底；安卓 loginClient 同款）。
    private let noRedirectSession: URLSession

    init() {
        let config = URLSessionConfiguration.default
        config.httpCookieStorage = HTTPCookieStorage.shared
        self.noRedirectSession = URLSession(configuration: config, delegate: ZeppNoRedirectDelegate(), delegateQueue: nil)
    }

    // MARK: - PlatformAPI

    func isLoggedIn() async -> Bool {
        guard let token = session.appToken, !token.isEmpty else { return false }
        do {
            let (_, http) = try await apiGet(pathQuery: "/v1/sport/run/history.json?source=run.mifit.huami.com", token: token)
            return http.statusCode == 200
        } catch {
            return false
        }
    }

    /// 邮箱 / 手机号 + 密码登录（三步流程，见文件头）。
    func login(username: String, password: String) async throws {
        session.account = username
        session.password = password
        let raw = username.trimmingCharacters(in: .whitespaces)
        let isEmail = raw.contains("@")
        // 手机号登录必须带 +86 国家码（华米服务端校验，否则 401）。
        let userName = isEmail ? raw : "+86\(raw)"

        // ① 获取 access code。
        guard let accessCode = try await fetchAccessCode(userName: userName, password: password) else {
            throw PlatformError.authFailed("Zepp 登录失败：账号或密码错误，或已被华米风控，请稍后再试")
        }

        // ② 换取 login_token（参数对齐安卓最新实现）。
        let loginForm = [
            ("app_name", Self.appName),
            ("country_code", "CN"),
            ("code", accessCode),
            ("device_id", "02:00:00:00:00:00"),
            ("device_model", "android_phone"),
            ("app_version", "6.12.0"),
            ("grant_type", "access_token"),
            ("allow_registration", "false"),
            ("source", Self.appName),
            ("third_name", isEmail ? "huami" : "huami_phone"),
        ]
        let loginURL = URL(string: "https://account.huami.com/v2/client/login")!
        let (body2, http2) = try await request(url: loginURL, method: "POST", headers: ["User-Agent": Self.userAgent],
                                                body: formData(loginForm), contentType: "application/x-www-form-urlencoded")
        guard http2.statusCode == 200 else {
            if http2.statusCode == 429 { throw PlatformError.authFailed("请求过于频繁，已被华米风控，请稍等几分钟再试") }
            if http2.statusCode == 401 || http2.statusCode == 403 { throw PlatformError.authFailed("账号或密码错误，请重新输入") }
            throw PlatformError.authFailed("登录失败（HTTP \(http2.statusCode)），请稍后再试")
        }
        guard let j2 = jsonObject(body2),
              let tokenInfo = j2["token_info"] as? [String: Any],
              let loginToken = tokenInfo["login_token"] as? String, !loginToken.isEmpty else {
            throw PlatformError.authFailed("登录响应异常，请稍后再试")
        }
        let userId = tokenInfo["user_id"] as? String ?? ""

        // ③ 换取 app_token（简版：仅 login_token 参数，社区最新实现验证可用）。
        let appTokenURL = URL(string: "https://account-cn.huami.com/v1/client/app_tokens?login_token=\(formEncode(loginToken))")!
        let (body3, http3) = try await request(url: appTokenURL, headers: ["User-Agent": Self.userAgent])
        guard http3.statusCode == 200 else {
            if http3.statusCode == 429 { throw PlatformError.authFailed("请求过于频繁，已被华米风控，请稍等几分钟再试") }
            if http3.statusCode == 401 || http3.statusCode == 403 { throw PlatformError.authFailed("登录凭证已失效或被风控，请重新登录") }
            throw PlatformError.authFailed("登录失败（HTTP \(http3.statusCode)），请稍后再试")
        }
        guard let j3 = jsonObject(body3) else {
            throw PlatformError.authFailed("登录响应异常，请稍后再试")
        }
        let t3 = (j3["token_info"] as? [String: Any]) ?? j3
        guard let appToken = t3["app_token"] as? String, !appToken.isEmpty else {
            throw PlatformError.authFailed("登录响应缺少令牌，请稍后再试")
        }
        session.appToken = appToken
        session.userId = userId
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        let token = try requireToken()
        var out: [ActivityRecord] = []
        var nextId: String?
        while true {
            let q: String
            if let next = nextId { q = "source=run.mifit.huami.com&trackid=\(next)" }
            else { q = "source=run.mifit.huami.com" }
            let (data, http) = try await apiGet(pathQuery: "/v1/sport/run/history.json?\(q)", token: token)
            if http.statusCode == 401 {
                // 401 时用最近一次账号密码重登一次再试（安卓 reLoginIfNeeded）。
                try await relogin()
                return try await fetchActivities(limit: limit, skip: skip)
            }
            guard http.statusCode == 200 else { break }
            guard let json = jsonObject(data),
                  let dataObj = json["data"] as? [String: Any] else { break }
            if let summary = dataObj["summary"] as? [[String: Any]] {
                for item in summary {
                    let trackId = stringField(item, "trackid")
                    guard !trackId.isEmpty else { continue }
                    let type = intField(item, "type", default: 16)
                    let distKm = doubleField(item, "dis")
                    let dur = doubleField(item, "run_time")
                    let startSec = Int64(trackId) ?? 0
                    let source = stringField(item, "source", default: "run.mifit.huami.com")
                    out.append(ActivityRecord(
                        id: trackId,
                        source: .zepp,
                        title: Self.typeTitles[type] ?? "运动",
                        startDate: Date(timeIntervalSince1970: TimeInterval(startSec)),
                        distanceMeters: distKm * 1000,
                        durationSeconds: dur,
                        elevationGainMeters: 0,
                        sportType: Self.typeNames[type] ?? "other",
                        // remoteId 存 "trackid|source"：下载详情时 source 要原样带上（安卓 extra 同款）。
                        remoteId: "\(trackId)|\(source)",
                        fileName: "zepp_\(trackId).gpx"
                    ))
                }
            }
            let nxt = stringField(dataObj, "next", default: "-1")
            if nxt == "-1" || nxt.isEmpty { break }
            nextId = nxt
            if out.count >= (skip + limit) * 3 { break }
        }
        var seen = Set<String>()
        let deduped = out.filter { seen.insert($0.id).inserted }
        return Array(deduped.dropFirst(skip).prefix(limit))
    }

    /// 下载一条活动的 GPX 字节（按 trackid + source 查详情，累加相对插值坐标后构建 GPX）。
    /// 无轨迹点也生成合法 GPX（收不收由平台决定，安卓同款）。
    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        let token = try requireToken()
        var trackId = activity.remoteId.isEmpty ? activity.id : activity.remoteId
        var source = "run.mifit.huami.com"
        if let bar = trackId.firstIndex(of: "|") {
            source = String(trackId[trackId.index(after: bar)...])
            trackId = String(trackId[..<bar])
        }
        let q = "trackid=\(trackId)&source=\(formEncode(source))"
        let (data, http) = try await apiGet(pathQuery: "/v1/sport/run/detail.json?\(q)", token: token)
        if http.statusCode == 401 { throw PlatformError.authFailed("Zepp 登录已过期（401），请重新登录") }
        guard http.statusCode == 200 else {
            throw PlatformError.network("Zepp 详情 HTTP \(http.statusCode)")
        }
        guard let json = jsonObject(data),
              let detail = json["data"] as? [String: Any] else {
            throw PlatformError.parse("Zepp 详情解析失败")
        }
        let startEpochSec = Int64(trackId) ?? 0

        // 各列都是相对插值：time（相对秒）、longitude_latitude（"lat,lon"，lat 在前，相对值 ÷1e8）、
        // altitude（绝对厘米，缺省 -2000000）；绝对值 = 逐项累加。
        let relTimes = parseLongList(detail["time"] as? String ?? "")
        let llSegments = (detail["longitude_latitude"] as? String ?? "").split(separator: ";").filter { !$0.isEmpty }
        let latRaw = llSegments.compactMap { seg in seg.split(separator: ",").first.flatMap { Int64(String($0).trimmingCharacters(in: .whitespaces)) } }
        let lonRaw = llSegments.compactMap { seg in seg.split(separator: ",").dropFirst().first.flatMap { Int64(String($0).trimmingCharacters(in: .whitespaces)) } }
        let altRaw = parseLongList(detail["altitude"] as? String ?? "")
        let times = accumulate(relTimes)
        let lats = accumulate(latRaw)
        let lons = accumulate(lonRaw)

        let n = min(times.count, lats.count, lons.count)
        var points: [ZeppPoint] = []
        for i in 0..<n {
            let lat = Double(lats[i]) / 1e8
            let lon = Double(lons[i]) / 1e8
            if lat == 0 && lon == 0 { continue }
            let epochMs = (startEpochSec + times[i]) * 1000
            let alt: Double
            if i < altRaw.count {
                alt = altRaw[i] != Self.noValue ? Double(altRaw[i]) / 100.0 : .nan
            } else { alt = .nan }
            points.append(ZeppPoint(lat: lat, lon: lon, timestampMs: Double(epochMs), altitude: alt))
        }
        if !points.isEmpty && gcjConvertEnabled {
            points = points.map { p in
                let c = GeoUtils.gcj02ToWgs84(lat: p.lat, lon: p.lon)
                return ZeppPoint(lat: c.lat, lon: c.lon, timestampMs: p.timestampMs, altitude: p.altitude)
            }
        }
        // 运动类型：详情里拿不到 type，用 history 的映射；兜底 running。
        // TODO: 待真机验证 — 详情 data.sport_type 字段是否存在、取值是否与 history 的 type 一致。
        let sport = (detail["sport_type"] as? String).flatMap { $0.isEmpty ? nil : $0 } ?? "running"
        return buildGpx(points: points, sport: sport)
    }

    /// Zepp 仅下载，无上传 API。
    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        throw PlatformError.unsupported("Zepp 只支持下载，不支持上传（官方无上传 API）")
    }

    // MARK: - 登录第 ① 步

    /// POST registrations/tokens 拿 access code：优先 JSON 响应（json_response=true 时服务端直接返回 {"access": ...}），
    /// 兜底 302 Location 里提取 access=，再兜底响应体里的 access_token。
    /// TODO: 待真机验证 — 华米是否仍返回 JSON；429 风控与 401 账号密码错误的区分是否还准。
    private func fetchAccessCode(userName: String, password: String) async throws -> String? {
        let form = [
            ("client_id", "HuaMi"),
            ("country_code", "CN"),
            ("json_response", "true"),
            ("name", userName),
            ("password", password),
            ("redirect_uri", "https://s3-us-west-2.amazonaws.com/hm-registration/successsignin.html"),
            ("state", "REDIRECTION"),
            ("token", "access"),
        ]
        let encodedName = formEncode(userName)
        let url = URL(string: "https://api-user.huami.com/registrations/\(encodedName)/tokens")!
        var req = URLRequest(url: url)
        req.httpMethod = "POST"
        req.timeoutInterval = 60
        req.setValue(Self.userAgent, forHTTPHeaderField: "User-Agent")
        req.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        req.httpBody = formData(form)
        let (data, resp) = try await noRedirectSession.data(for: req)
        let http = resp as? HTTPURLResponse
        let body = String(data: data, encoding: .utf8) ?? ""
        // ① JSON 响应。
        if let json = jsonObject(data), let access = json["access"] as? String, !access.isEmpty {
            return access
        }
        // ② 302 Location 里提取 access=（兼容服务端仍走重定向）。
        if let location = http?.value(forHTTPHeaderField: "Location") ?? http?.value(forHTTPHeaderField: "location"),
           let range = location.range(of: "[?&]access=([^&]*)", options: .regularExpression) {
            let value = String(location[range]).split(separator: "=", maxSplits: 1).last.map(String.init) ?? ""
            if !value.isEmpty { return value }
        }
        // ③ 响应体里直接有 access_token。
        if let range = body.range(of: #"access_token[=:]\s*"?([A-Za-z0-9._-]+)"#, options: .regularExpression) {
            let m = String(body[range])
            let value = m.split(separator: "=", maxSplits: 1).last?.trimmingCharacters(in: CharacterSet(charactersIn: "\" ")) ?? ""
            if !value.isEmpty { return value }
        }
        return nil
    }

    // MARK: - 通用 GET（带 apptoken）

    private func apiGet(pathQuery: String, token: String) async throws -> (Data, HTTPURLResponse) {
        let url = URL(string: Self.apiHost + pathQuery)!
        return try await request(url: url, headers: [
            "User-Agent": Self.userAgent,
            "apptoken": token,
            "appPlatform": Self.appPlatform,
            "appname": Self.appName,
        ])
    }

    /// 本文件专用的请求方法：要看 HTTP 状态码（401 重登、429 风控），走 HTTPClient.shared.requestRaw
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

    // MARK: - 登录态

    private func requireToken() throws -> String {
        guard let token = session.appToken, !token.isEmpty else { throw PlatformError.notLoggedIn }
        return token
    }

    private func relogin() async throws {
        guard let account = session.account, let password = session.password else {
            throw PlatformError.authFailed("Zepp 登录已过期，请重新登录")
        }
        try await login(username: account, password: password)
    }

    // MARK: - 解析工具

    private func parseLongList(_ raw: String) -> [Int64] {
        guard !raw.isEmpty else { return [] }
        return raw.split(separator: ";").filter { !$0.isEmpty }.compactMap { Int64(String($0).trimmingCharacters(in: .whitespaces)) }
    }

    private func accumulate(_ list: [Int64]) -> [Int64] {
        var out: [Int64] = []
        var sum: Int64 = 0
        for v in list { sum += v; out.append(sum) }
        return out
    }

    // MARK: - GPX 构建（安卓 buildGpx 原样）

    private func buildGpx(points: [ZeppPoint], sport: String) -> Data {
        let sportLower = sport.lowercased()
        var sb = ""
        sb += "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
        sb += "<gpx creator=\"jichiOB\" version=\"1.1\" xmlns=\"http://www.topografix.com/GPX/1/1\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\">\n"
        sb += "  <trk><name>from zepp - \(sportLower)</name><type>\(sportLower)</type><trkseg>\n"
        for p in points {
            let time = p.timestampMs > 0 ? gpxTime(ms: Int64(p.timestampMs)) : ""
            sb += "    <trkpt lat=\"\(fmt6(p.lat))\" lon=\"\(fmt6(p.lon))\">"
            if !time.isEmpty { sb += "<time>\(time)</time>" }
            if !p.altitude.isNaN { sb += "<ele>\(fmt2(p.altitude))</ele>" }
            sb += "</trkpt>\n"
        }
        sb += "  </trkseg></trk>\n</gpx>\n"
        return Data(sb.utf8)
    }

    private func gpxTime(ms: Int64) -> String {
        let f = DateFormatter()
        f.locale = Locale(identifier: "en_US_POSIX")
        f.timeZone = TimeZone(secondsFromGMT: 0)
        f.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
        return f.string(from: Date(timeIntervalSince1970: TimeInterval(ms) / 1000))
    }
}

// MARK: - 登录态（只放内存；落盘由 App 层负责）

private final class ZeppSession {
    var appToken: String?
    var userId: String = ""
    var account: String?
    var password: String?
}

private struct ZeppPoint {
    var lat: Double
    var lon: Double
    var timestampMs: Double
    var altitude: Double
}

/// 拦截 302：不跟随重定向，让调用方自己读 Location（安卓 loginClient followRedirects=false 同款）。
private final class ZeppNoRedirectDelegate: NSObject, URLSessionTaskDelegate {
    func urlSession(
        _ session: URLSession, task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse, newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void
    ) {
        completionHandler(nil)
    }
}

// MARK: - 本文件内的小工具（不碰共享类型）

private func formEncode(_ s: String) -> String {
    s.addingPercentEncoding(withAllowedCharacters: .zeppFormAllowed) ?? s
}

private extension CharacterSet {
    static let zeppFormAllowed = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~")
}

private func formData(_ fields: [(String, String)]) -> Data {
    let encoded = fields.map { "\($0.0)=\(formEncode($0.1))" }.joined(separator: "&")
    return Data(encoded.utf8)
}

private func jsonObject(_ data: Data) -> [String: Any]? {
    (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
}

private func stringField(_ dict: [String: Any], _ key: String, default defaultValue: String = "") -> String {
    if let s = dict[key] as? String { return s }
    if let n = dict[key] as? NSNumber { return n.stringValue }
    return defaultValue
}

private func doubleField(_ dict: [String: Any], _ key: String) -> Double {
    if let n = dict[key] as? NSNumber { return n.doubleValue }
    if let s = dict[key] as? String, let v = Double(s) { return v }
    return 0
}

private func intField(_ dict: [String: Any], _ key: String, default defaultValue: Int = 0) -> Int {
    if let n = dict[key] as? NSNumber { return n.intValue }
    if let s = dict[key] as? String, let v = Int(s) { return v }
    return defaultValue
}

private func fmt2(_ v: Double) -> String { String(format: "%.2f", locale: Locale(identifier: "en_US_POSIX"), v) }
private func fmt6(_ v: Double) -> String { String(format: "%.6f", locale: Locale(identifier: "en_US_POSIX"), v) }

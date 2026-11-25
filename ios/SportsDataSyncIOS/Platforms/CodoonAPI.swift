// 待真机验证
// CodoonAPI.swift — 咕咚（对照安卓 CodoonApi.kt v9.6.9 原样移植）
//
// 仅下载数据源（官方 OpenAPI 已于 2018-06-01 关闭，个人拿不到 key；
// 安卓实现参考 running_page 的 codoon_sync.py 逆向方案）。
// 登录：手机号 + 密码纯 API
//   GET https://api.codoon.com/token
//     ?client_id=..&email={手机号}&grant_type=password&password=..&scope=user
//   头：Basic auth + timestamp=0 + signature（HMAC-SHA1，见下方签名算法）
//   → 顶层 JSON：access_token / refresh_token / user_id
// 列表：POST https://api.codoon.com/api/get_old_route_log
//       JSON 体 {"limit": 500, "page": N, "user_id": ...}
//       → data.log_list[] + data.has_more；
//       log_id / route_id / sports_type（0=Hike 1=Run 2=Ride）
// 下载：POST https://api.codoon.com/api/get_single_log
//       JSON 体 {"route_id": ...}
//       → data.points[]（latitude / longitude / elevation / time_stamp），
//       另含 start_time / total_length（米）/ total_time（秒）/ sports_type。
// 签名算法（安卓注释：来自 libencrypt.so Java_com_codoon_jni_JNIUtils_encryptHttpSignature）：
//   pre_string = "Authorization={auth}&Davinci=0&Did={did}&Timestamp={ts}|path={path}|body={body}|{query}"
//   signature = base64(HMAC-SHA1(key=签名密钥, pre_string))
//   GET：timestamp=0，authorization="Basic {basic_auth}"，body 为空，query 需 URL-decode 后参与签名；
//   POST：timestamp=当前秒，authorization="Bearer {token}"，body=json.dumps(payload)。
//   签名 body 必须与 Python json.dumps 逐字一致（键序 + 冒号后空格 + 逗号后空格），否则服务端校验失败。
// 坐标：咕咚云端存原始 WGS-84（安卓注释），默认不转换；若实测偏移，把 gcjConvertEnabled 置 true。
// 密钥：client_id / Basic 凭证 / 签名密钥 / did 在下方留空占位（值见安卓 CodoonApi.kt，
//       未填时登录签名算不出，登录、列表、下载全都不可用）。
//       本文件不含任何真实凭证。

import Foundation
import CryptoKit

/// 咕咚：仅下载。上传抛 unsupported（官方无上传 API，安卓 UploadSupport 也是“仅下载”）。
struct CodoonAPI: PlatformAPI {
    let source: DataSource = .codoon

    private static let baseURL = "https://api.codoon.com"
    private static let userAgent = "CodoonSport(8.9.0 1170;Android 7;Sony XZ1)"
    private static let davinci = "0"

    // TODO: 待真机验证 — 以下四个值留空占位（值见安卓 CodoonApi.kt / running_page codoon_sync.py）。
    // 注意：did 参与 HMAC 签名且服务端校验设备合法性，安卓注释强调必须用社区验证可用的合法 did，
    // 否则登录返回 HTTP 400。
    private static let clientId = ""
    private static let basicAuth = ""
    private static let signKey = ""
    private static let did = ""

    private static let typeNames: [Int: String] = [0: "Hike", 1: "Run", 2: "Ride"]
    private static let typeTitles: [Int: String] = [0: "徒步", 1: "跑步", 2: "骑行"]

    /// 轨迹坐标转换开关（默认关 = WGS-84；若实测偏移由 App 层打开，走 GCJ-02→WGS-84）。
    /// 安卓同款开关（CodoonApi.gcjConvertEnabled，默认 false）。
    var gcjConvertEnabled = false

    private let session = CodoonSession()

    // MARK: - PlatformAPI

    func isLoggedIn() async -> Bool {
        guard let token = session.token, !token.isEmpty else { return false }
        do {
            // 安卓 validateToken：用真实 userId 拉一次列表（limit=1），200 即有效。
            // 绝不能用 "0"（服务端返回 200 + 空列表，造成假阳性“有效”）。
            let uid = session.userId
            guard !uid.isEmpty, uid != "0" else { return false }
            let (_, http) = try await postJson(token: token, path: "/api/get_old_route_log",
                                                fields: [("limit", 1), ("page", 1), ("user_id", uid)])
            return http.statusCode == 200
        } catch {
            return false
        }
    }

    /// 手机号 + 密码登录（GET /token，Basic + timestamp=0 + signature）。
    func login(username: String, password: String) async throws {
        session.mobile = username
        session.password = password
        // query 发请求时编码；签名时 signPreString 内部再 URL-decode 还原原文（安卓同款）。
        let encodedQuery = [
            "client_id": Self.clientId, "email": username,
            "grant_type": "password", "password": password, "scope": "user",
        ].map { "\($0.key)=\(formEncode($0.value))" }.joined(separator: "&")
        let pathWithQuery = "/token?\(encodedQuery)"
        let auth = "Basic \(Self.basicAuth)"
        let headers = deviceHeaders(authorization: auth, timestamp: 0, body: "", pathWithQuery: pathWithQuery, contentType: nil)
        let url = URL(string: Self.baseURL + pathWithQuery)!
        let (data, http) = try await request(url: url, headers: headers)
        guard http.statusCode == 200 else {
            throw PlatformError.authFailed("咕咚登录失败（HTTP \(http.statusCode)）")
        }
        guard let json = jsonObject(data),
              let access = json["access_token"] as? String, !access.isEmpty else {
            throw PlatformError.authFailed("咕咚登录失败：账号或密码错误")
        }
        session.token = access
        session.refreshToken = json["refresh_token"] as? String ?? ""
        session.userId = json["user_id"] as? String ?? ""
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        let token = try requireToken()
        let uid = try requireUserId()
        do {
            return try await fetchPage(token: token, userId: uid, skip: skip, limit: limit)
        } catch let e as PlatformError {
            // 安卓 v8.1.1：401 时自动用最近账号密码重登一次并重拉。
            if case .authFailed(let msg) = e, msg.contains("401") {
                try await relogin()
                return try await fetchPage(token: requireToken(), userId: requireUserId(), skip: skip, limit: limit)
            }
            throw e
        }
    }

    /// 下载一条活动的 GPX 字节（按 route_id 查详情 → points 构建 GPX）。
    /// 无轨迹点也生成合法 GPX（收不收由平台决定，安卓同款）。
    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        let token = try requireToken()
        let routeId = activity.remoteId.isEmpty ? activity.id : activity.remoteId
        let (data, http) = try await postJson(token: token, path: "/api/get_single_log",
                                               fields: [("route_id", routeId)])
        if http.statusCode == 401 { throw PlatformError.authFailed("咕咚登录已过期（401），请重新登录") }
        guard http.statusCode == 200 else {
            throw PlatformError.network("咕咚详情 HTTP \(http.statusCode)")
        }
        guard let json = jsonObject(data),
              let detail = json["data"] as? [String: Any] else {
            throw PlatformError.parse("咕咚详情解析失败")
        }
        let sportType = intField(detail, "sports_type", default: 1)
        let sport = Self.typeNames[sportType] ?? "Run"
        let startMs = parseStartTimeMs(detail["start_time"] as? String ?? "")
        var points: [CodoonPoint] = []
        if let ptsArr = detail["points"] as? [[String: Any]] {
            for (i, p) in ptsArr.enumerated() {
                guard let lat = p["latitude"] as? NSNumber,
                      let lon = p["longitude"] as? NSNumber else { continue }
                let latV = lat.doubleValue, lonV = lon.doubleValue
                if latV == 0 && lonV == 0 { continue }
                let ts = parsePointTimeMs(p["time_stamp"] as? String ?? "", startMs: startMs, index: i)
                let alt: Double
                if let e = p["elevation"] as? NSNumber { alt = e.doubleValue } else { alt = .nan }
                points.append(CodoonPoint(lat: latV, lon: lonV, timestampMs: ts, altitude: alt))
            }
        }
        if !points.isEmpty && gcjConvertEnabled {
            points = points.map { p in
                let c = GeoUtils.gcj02ToWgs84(lat: p.lat, lon: p.lon)
                return CodoonPoint(lat: c.lat, lon: c.lon, timestampMs: p.timestampMs, altitude: p.altitude)
            }
        }
        return buildGpx(points: points, sportType: sport)
    }

    /// 咕咚仅下载，无上传 API。
    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        throw PlatformError.unsupported("咕咚只支持下载，不支持上传（官方无上传 API）")
    }

    // MARK: - 列表（分页，每页 500）

    private func fetchPage(token: String, userId: String, skip: Int, limit: Int) async throws -> [ActivityRecord] {
        var out: [ActivityRecord] = []
        var page = 1
        while true {
            let (data, http) = try await postJson(token: token, path: "/api/get_old_route_log",
                                                   fields: [("limit", 500), ("page", page), ("user_id", userId)])
            if http.statusCode == 401 { throw PlatformError.authFailed("咕咚登录已过期（401）") }
            guard http.statusCode == 200 else {
                throw PlatformError.network("咕咚列表 HTTP \(http.statusCode)")
            }
            guard let json = jsonObject(data),
                  let dataObj = json["data"] as? [String: Any],
                  let logList = dataObj["log_list"] as? [[String: Any]] else {
                throw PlatformError.parse("咕咚列表解析失败")
            }
            for item in logList {
                guard let logId = item["log_id"] as? String, !logId.isEmpty,
                      let routeId = item["route_id"] as? String, !routeId.isEmpty else { continue }
                let sportType = intField(item, "sports_type", default: 1)
                let start = (item["start_time"] as? String ?? "").replacingOccurrences(of: "T", with: " ").prefix(19)
                // 室内跑（跑步机 is_in_room=1）无 GPS 轨迹：安卓把它记在 extra 里供列表提示；
                // iOS 没有 extra 字段，记在 fileName 后缀里太脏——这里直接忽略标记，待汇总人确认放哪。
                // TODO: 待真机验证 — is_in_room=1 的记录在 iOS 列表里怎么提示。
                out.append(ActivityRecord(
                    id: logId,
                    source: .codoon,
                    title: Self.typeTitles[sportType] ?? "运动",
                    startDate: Date(timeIntervalSince1970: TimeInterval(parseStartTimeMs(String(start))) / 1000),
                    distanceMeters: doubleField(item, "total_length"),
                    durationSeconds: Double(int64Field(item, "total_time")),
                    elevationGainMeters: 0,
                    sportType: Self.typeNames[sportType] ?? "Run",
                    remoteId: routeId,
                    fileName: "codoon_\(routeId).gpx"
                ))
            }
            let hasMore = dataObj["has_more"] as? Bool ?? false
            if !hasMore { break }
            page += 1
            // 足够返回即停（安卓：out.size >= (skip+limit)*3 时停，避免翻太多页）。
            if out.count >= (skip + limit) * 3 { break }
        }
        var seen = Set<String>()
        let deduped = out.filter { seen.insert($0.id).inserted }
        return Array(deduped.dropFirst(skip).prefix(limit))
    }

    // MARK: - 签名与请求

    /// 构造签名 pre_string 并返回 signature。
    /// pathWithQuery：完整 path+query（如 /token?client_id=..&email=..），query 需 URL-decode 后参与签名。
    private func signPreString(authorization: String, pathWithQuery: String, body: String, timestamp: Int64) -> String {
        var path = pathWithQuery
        var query = ""
        if let qIdx = pathWithQuery.firstIndex(of: "?") {
            query = String(pathWithQuery[pathWithQuery.index(after: qIdx)...])
            path = String(pathWithQuery[..<qIdx])
        }
        // Python urllib.parse.unquote：还原 %XX → 原文。
        query = query.removingPercentEncoding ?? query
        let pre = "Authorization=\(authorization)&Davinci=\(Self.davinci)&Did=\(Self.did)&Timestamp=\(timestamp)|path=\(path)|body=\(body)|\(query)"
        let key = SymmetricKey(data: Data(Self.signKey.utf8))
        let mac = HMAC<Insecure.SHA1>.authenticationCode(for: Data(pre.utf8), using: key)
        return Data(mac).base64EncodedString()
    }

    /// Python json.dumps 兼容格式（键序保持 + 冒号后空格 + 逗号后空格），保证签名一致。
    private func jsonDumps(_ fields: [(String, Any)]) -> String {
        let parts = fields.map { (k, v) -> String in
            if let s = v as? String { return "\"\(k)\": \"\(s)\"" }
            return "\"\(k)\": \(v)"
        }
        return "{\(parts.joined(separator: ", "))}"
    }

    private func deviceHeaders(authorization: String, timestamp: Int64, body: String, pathWithQuery: String, contentType: String?) -> [String: String] {
        let sign = signPreString(authorization: authorization, pathWithQuery: pathWithQuery, body: body, timestamp: timestamp)
        var headers: [String: String] = [
            "User-Agent": Self.userAgent,
            "did": Self.did,
            "davinci": Self.davinci,
            "authorization": authorization,
            "timestamp": String(timestamp),
            "signature": sign,
        ]
        // 安卓 v8.1.1：不要手动设 accept-encoding: gzip，否则大响应返回 gzip 原始字节导致 JSON 乱码。
        if let ct = contentType { headers["Content-Type"] = ct }
        return headers
    }

    /// 通用 POST（带 Bearer 签名），返回原始数据与状态码（401 要单独处理，所以这里不抛错）。
    private func postJson(token: String, path: String, fields: [(String, Any)]) async throws -> (Data, HTTPURLResponse) {
        let bodyStr = jsonDumps(fields)
        let ts = Int64(Date().timeIntervalSince1970)
        let headers = deviceHeaders(authorization: "Bearer \(token)", timestamp: ts, body: bodyStr, pathWithQuery: path, contentType: "application/json; charset=utf-8")
        return try await request(url: URL(string: Self.baseURL + path)!, method: "POST", headers: headers,
                                 body: bodyStr.data(using: .utf8), contentType: "application/json; charset=utf-8")
    }

    /// 本文件专用的请求方法：要看 HTTP 状态码（401 重登），走 HTTPClient.shared.requestRaw
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
        guard let token = session.token, !token.isEmpty else { throw PlatformError.notLoggedIn }
        return token
    }

    private func requireUserId() throws -> String {
        // 脏 userId（空 / "0"）用最近登录的真实 uid 兜底（"0" 会让服务端返回 200 + 空列表）。
        let uid = session.userId
        guard !uid.isEmpty, uid != "0" else { throw PlatformError.notLoggedIn }
        return uid
    }

    private func relogin() async throws {
        guard let mobile = session.mobile, let password = session.password else {
            throw PlatformError.authFailed("咕咚登录已过期，请重新登录")
        }
        try await login(username: mobile, password: password)
    }

    // MARK: - 时间解析

    /// "2022-08-14T22:22:16" 或空 → 毫秒（Asia/Shanghai，安卓同款）。
    private func parseStartTimeMs(_ s: String) -> Int64 {
        guard !s.isEmpty else { return 0 }
        let f = DateFormatter()
        f.locale = Locale(identifier: "en_US_POSIX")
        f.timeZone = TimeZone(identifier: "Asia/Shanghai")
        f.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let cleaned = String(s.replacingOccurrences(of: "T", with: " ").prefix(19))
        return Int64((f.date(from: cleaned)?.timeIntervalSince1970 ?? 0) * 1000)
    }

    /// time_stamp 可能为完整字符串、epoch 秒或空；缺省时用 startMs 按索引每秒递增推算。
    private func parsePointTimeMs(_ tsStr: String, startMs: Int64, index: Int) -> Double {
        if !tsStr.isEmpty {
            if let v = Int64(tsStr) {
                return Double(v < 100_000_000_000 ? v * 1000 : v)
            }
            let f = DateFormatter()
            f.locale = Locale(identifier: "en_US_POSIX")
            f.timeZone = TimeZone(identifier: "Asia/Shanghai")
            f.dateFormat = "yyyy-MM-dd HH:mm:ss"
            if let d = f.date(from: String(tsStr.replacingOccurrences(of: "T", with: " ").prefix(19))) {
                return d.timeIntervalSince1970 * 1000
            }
        }
        return startMs > 0 ? Double(startMs + Int64(index) * 1000) : 0
    }

    // MARK: - GPX 构建（安卓 buildGpx 原样）

    private func buildGpx(points: [CodoonPoint], sportType: String) -> Data {
        let sportLower = sportType.lowercased()
        var sb = ""
        sb += "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
        sb += "<gpx creator=\"jichiOB\" version=\"1.1\" xmlns=\"http://www.topografix.com/GPX/1/1\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\">\n"
        sb += "  <trk><name>from codoon - \(sportLower)</name><type>\(sportLower)</type><trkseg>\n"
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

private final class CodoonSession {
    var token: String?
    var refreshToken: String?
    var userId: String = ""
    var mobile: String?
    var password: String?
}

private struct CodoonPoint {
    var lat: Double
    var lon: Double
    var timestampMs: Double
    var altitude: Double
}

// MARK: - 本文件内的小工具（不碰共享类型）

private func formEncode(_ s: String) -> String {
    s.addingPercentEncoding(withAllowedCharacters: .codoonFormAllowed) ?? s
}

private extension CharacterSet {
    static let codoonFormAllowed = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~")
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

private func intField(_ dict: [String: Any], _ key: String, default defaultValue: Int = 0) -> Int {
    if let n = dict[key] as? NSNumber { return n.intValue }
    if let s = dict[key] as? String, let v = Int(s) { return v }
    return defaultValue
}

private func fmt2(_ v: Double) -> String { String(format: "%.2f", locale: Locale(identifier: "en_US_POSIX"), v) }
private func fmt6(_ v: Double) -> String { String(format: "%.6f", locale: Locale(identifier: "en_US_POSIX"), v) }

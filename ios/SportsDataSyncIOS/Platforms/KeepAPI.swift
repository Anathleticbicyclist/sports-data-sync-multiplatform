// 待真机验证
// KeepAPI.swift — Keep（对照安卓 KeepApi.kt v9.6.9 原样移植）
//
// 登录：手机号 + 密码纯 API 登录
//   POST https://api.gotokeep.com/v1.1/users/login
//   form: mobile + password → data.token（Bearer）
// 列表：GET https://api.gotokeep.com/pd/v3/stats/detail?dateUnit=all&type=running|cycling&lastDate={lastDate}
//       （Bearer）→ data.records[].logs[0].stats.id，分页靠 data.lastTimestamp；
//       三类各翻 2 页（running / cycling / hiking），按时间倒序取。
// 下载：GET https://api.gotokeep.com/pd/v3/{runninglog|cyclinglog|hikinglog}/{id}（Bearer）
//       → data.geoPoints（AES-128-CBC + gzip，骑行/徒步首选）或 data.rawDataURL
//       （gzip + base64 压缩轨迹）；无轨迹用 region 中心坐标单点兜底；
//       轨迹是 GCJ-02，统一转 WGS-84（用 Core/GeoUtils.swift，不另写）。
//       下载返回 GPX 字节（带逐点心率/步频、详情元数据扩展），供上传端转 FIT。
// 上传：Keep 无官方上传 API，uploadActivity 抛 unsupported，
//       引导用户在 Keep App 内手动导入（运动 → 数据同步 → 运动数据文件去导入）。
// 密钥：geoPoints AES 密钥/IV 已按安卓公开源码 KeepApi.kt 填好（公开开源项目 running_page 同款值，
//       见下方 geoKey/geoIV）。登录 token 存钥匙串（LoginStore），本文件不含任何真实凭证。

import Foundation
import CommonCrypto
import Compression

/// Keep：下载作数据源；上传只做半自动引导导入。
struct KeepAPI: PlatformAPI {
    let source: DataSource = .keep

    private static let loginURL = "https://api.gotokeep.com/v1.1/users/login"
    private static let listAPI = "https://api.gotokeep.com/pd/v3/stats/detail"
    private static let runningLogAPI = "https://api.gotokeep.com/pd/v3/runninglog"
    private static let cyclingLogAPI = "https://api.gotokeep.com/pd/v3/cyclinglog"
    private static let hikingLogAPI = "https://api.gotokeep.com/pd/v3/hikinglog"
    private static let userAgent = "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"
    private static let formMedia = "application/x-www-form-urlencoded;charset=utf-8"
    private static let keepTypes = ["running", "cycling", "hiking"]

    // geoPoints AES-128-CBC 密钥/IV（来自安卓公开源码 KeepApi.kt，注明来自公开开源项目 running_page：
    // key = base64("NTZmZTU5OzgyZzpkODczYw==") = "56fe59;82g:d873c"，
    // iv = base64("MjM0Njg5MjQzMjkyMDMwMA==") = "2346892432920300"，各 16 字节）。
    // 填上后 cycling/hiking 的 geoPoints 能本地解开，不再只剩 rawDataURL / 单点兜底。
    private static let geoKey = "56fe59;82g:d873c"
    private static let geoIV = "2346892432920300"

    private let session = KeepSession()

    // MARK: - PlatformAPI

    func isLoggedIn() async -> Bool {
        LoginStore.isLoggedIn(source)
    }

    /// 退出登录：清掉钥匙串里的 token 与账号密码。
    func logout() {
        LoginStore.clearToken(for: source)
        LoginStore.clearCredentials(for: source)
    }

    /// 手机号 + 密码登录（安卓 KeepApi.login 原样）。成功存 token 到钥匙串，失败抛 authFailed。
    func login(username: String, password: String) async throws {
        session.mobile = username
        session.password = password
        let bodyString = "mobile=\(formEncode(username))&password=\(formEncode(password))"
        let url = URL(string: Self.loginURL)!
        let (data, http) = try await request(
            url: url, method: "POST",
            headers: ["User-Agent": Self.userAgent],
            body: bodyString.data(using: .utf8),
            contentType: Self.formMedia
        )
        guard http.statusCode == 200 else {
            throw PlatformError.authFailed("Keep 登录失败（HTTP \(http.statusCode)）")
        }
        guard let json = jsonObject(data),
              json["ok"] as? Bool == true,
              let dataObj = json["data"] as? [String: Any],
              let token = dataObj["token"] as? String, !token.isEmpty else {
            let text = (jsonObject(data)?["text"] as? String) ?? ""
            throw PlatformError.authFailed("Keep 登录失败：\(text.isEmpty ? "账号或密码错误" : text)")
        }
        session.token = token
        LoginStore.saveToken(token, for: source)
        LoginStore.saveCredentials(username: username, password: password, for: source)
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        let token = try requireToken()
        var out: [ActivityRecord] = []
        // 安卓：running / cycling / hiking 三类各翻 2 页（lastDate=0 起始才是最新）。
        for type in Self.keepTypes {
            var lastDate: Int64 = 0
            var pages = 0
            while true {
                let url = URL(string: "\(Self.listAPI)?dateUnit=all&type=\(type)&lastDate=\(lastDate)")!
                let (data, http) = try await request(url: url, headers: authHeaders(token: token))
                if http.statusCode == 401 {
                    // 401 时用最近一次账号密码重登一次再试（安卓 reLoginIfNeeded）。
                    try await relogin()
                    return try await fetchActivities(limit: limit, skip: skip)
                }
                guard http.statusCode == 200 else { break }
                guard let json = jsonObject(data),
                      let dataObj = json["data"] as? [String: Any],
                      let records = dataObj["records"] as? [[String: Any]] else { break }
                for rec in records {
                    guard let logs = rec["logs"] as? [[String: Any]],
                          let stats = logs.first?["stats"] as? [String: Any],
                          let id = stats["id"] as? String, !id.isEmpty else { continue }
                    let startMs = int64Field(stats, "startTime")
                    let title: String
                    switch type {
                    case "running": title = "跑步"
                    case "cycling": title = "骑行"
                    default: title = "徒步"
                    }
                    out.append(ActivityRecord(
                        id: id,
                        source: .keep,
                        title: title,
                        startDate: Date(timeIntervalSince1970: TimeInterval(startMs) / 1000),
                        distanceMeters: doubleField(stats, "distance"),
                        durationSeconds: Double(int64Field(stats, "duration")),
                        elevationGainMeters: 0,
                        sportType: type,
                        // remoteId 存 "id|type"：下载时按列表的权威运动类型先选详情接口（安卓同款）。
                        remoteId: "\(id)|\(type)",
                        fileName: "keep_\(id).gpx"
                    ))
                }
                let next = int64Field(dataObj, "lastTimestamp")
                pages += 1
                if next <= 0 || next == lastDate { break }
                lastDate = next
                if pages % 2 == 0 { break }
            }
        }
        // 安卓：按时间降序排、去重后再截取，否则取到的是最早的运动。
        var seen = Set<String>()
        let sorted = out.sorted { $0.startDate > $1.startDate }.filter { seen.insert($0.id).inserted }
        return Array(sorted.dropFirst(skip).prefix(limit))
    }

    /// 下载一条活动的 GPX 字节（安卓 KeepApi.downloadGpx 原样）。
    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        let token = try requireToken()
        var runId = activity.remoteId.isEmpty ? activity.id : activity.remoteId
        var typeHint = ""
        if let bar = runId.firstIndex(of: "|") {
            typeHint = String(runId[runId.index(after: bar)...])
            runId = String(runId[..<bar])
        }
        let suffix: String?
        if runId.hasSuffix("_cy") { suffix = "cycling" }
        else if runId.hasSuffix("_hk") { suffix = "hiking" }
        else if runId.hasSuffix("_rn") { suffix = "running" }
        else { suffix = nil }
        // 候选详情接口（去重，按优先级）：typeHint（列表权威）> 后缀判定 > 三接口全试。
        var candidates: [String] = []
        for t in [typeHint, suffix ?? "", "cycling", "running", "hiking"] where Self.keepTypes.contains(t) && !candidates.contains(t) {
            candidates.append(t)
        }
        var chosenSport = suffix ?? (typeHint.isEmpty ? "running" : typeHint)
        var detail: [String: Any]?
        for apiType in candidates {
            let logAPI: String
            switch apiType {
            case "cycling": logAPI = Self.cyclingLogAPI
            case "hiking": logAPI = Self.hikingLogAPI
            default: logAPI = Self.runningLogAPI
            }
            let url = URL(string: "\(logAPI)/\(runId)")!
            let (data, http) = try await request(url: url, headers: authHeaders(token: token))
            if http.statusCode == 401 { throw PlatformError.authFailed("Keep 登录已过期（401），请重新登录") }
            guard http.statusCode == 200,
                  let json = jsonObject(data),
                  let d = json["data"] as? [String: Any] else { continue }
            chosenSport = apiType
            detail = d
            break
        }
        guard let detail = detail else {
            throw PlatformError.parse("Keep 详情解析失败（三个详情接口均无 data）")
        }

        let startMs = int64Field(detail, "startTime")
        let metaDistance = doubleField(detail, "distance")          // 米
        let metaDuration = int64Field(detail, "duration")           // 秒
        let metaCalorie = doubleField(detail, "calorie")            // 千卡
        let metaSteps = int64Field(detail, "totalSteps")
        let metaUplift = doubleField(detail, "accumulativeUpliftedHeight")
        let metaClimbDist = doubleField(detail, "accumulativeClimbingDistance")
        let metaAvgPace = int64Field(detail, "averagePace")        // 秒/公里
        let metaAvgSpeed = doubleField(detail, "averageSpeed")      // km/h
        let heartRate = detail["heartRate"] as? [String: Any]
        let metaAvgHr = int64Field(heartRate ?? [:], "averageHeartRate")
        let metaMaxHr = int64Field(heartRate ?? [:], "maxHeartRate")
        let hrCurve = decodeHeartRateCurve(heartRate?["heartRates"] as? String ?? "")
        let avgStepFreq = doubleField(detail, "averageStepFrequency")
        let cadenceCurve = decodeStepPoints(detail["stepPoints"] as? String ?? "", startTimeMs: startMs)

        // 轨迹获取顺序（安卓 v8.1.6）：geoPoints 优先，rawDataURL 次之，region 单点兜底。
        var points: [KeepPoint] = []
        var usedFallback = false
        let rawURL = (detail["rawDataURL"] as? String).flatMap { $0.isEmpty ? nil : $0 }
        let geo = (detail["geoPoints"] as? String).flatMap { $0.isEmpty ? nil : $0 }
        if let geo = geo {
            points = decodeGeoPoints(geo)
        }
        if points.isEmpty, let rawURL = rawURL, let rawText = try? await fetchRawText(urlString: rawURL) {
            points = decodeRunmap(rawText)
        }
        if points.isEmpty {
            usedFallback = true
            if let region = detail["region"] as? [String: Any] {
                let cLat = doubleField(region, "latitude")
                let cLon = doubleField(region, "longitude")
                if cLat != 0 || cLon != 0 {
                    points = [KeepPoint(lat: cLat, lon: cLon, timestampMs: Double(startMs), altitude: .nan)]
                }
            }
        }
        // Keep 轨迹为 GCJ-02，统一转 WGS-84（安卓同款，含 region 兜底坐标）。
        points = points.map { p in
            let c = GeoUtils.gcj02ToWgs84(lat: p.lat, lon: p.lon)
            return KeepPoint(lat: c.lat, lon: c.lon, timestampMs: p.timestampMs, altitude: p.altitude)
        }
        _ = usedFallback

        let detailDataType = (detail["dataType"] as? String).flatMap { $0.isEmpty ? nil : $0 } ?? chosenSport
        return buildGpx(
            points: points, startTimeMs: startMs, sportType: chosenSport,
            metaDistance: metaDistance, metaDuration: metaDuration, metaCalorie: metaCalorie,
            metaAvgHr: Int(metaAvgHr), metaMaxHr: Int(metaMaxHr), dataType: detailDataType,
            hrCurve: hrCurve, cadenceCurve: cadenceCurve, avgStepFreq: avgStepFreq,
            metaSteps: metaSteps, metaUplift: metaUplift, metaClimbDist: metaClimbDist,
            metaAvgPace: Int(metaAvgPace), metaAvgSpeed: metaAvgSpeed
        )
    }

    /// Keep 无官方上传 API：不要假装直传成功，抛 unsupported 带手动导入引导。
    /// 安卓注释：App 生成 FIT 后提示用户在 Keep App 内手动导入
    /// （运动 → 数据同步 → 运动数据文件去导入）。
    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        throw PlatformError.unsupported(
            "Keep 没有官方上传接口，传不上去。请先把 \(fileName) 保存到手机，再打开 Keep App 手动导入：" +
            "运动 → 数据同步 → 运动数据文件去导入。"
        )
    }

    // MARK: - 登录态

    private func requireToken() throws -> String {
        guard let token = LoginStore.token(for: source) ?? session.token, !token.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        return token
    }

    private func relogin() async throws {
        let mobile = LoginStore.username(for: source) ?? session.mobile
        let password = LoginStore.password(for: source) ?? session.password
        guard let mobile, let password else {
            throw PlatformError.authFailed("Keep 登录已过期，请重新登录")
        }
        try await login(username: mobile, password: password)
    }

    private func authHeaders(token: String) -> [String: String] {
        ["Authorization": "Bearer \(token)", "User-Agent": Self.userAgent]
    }

    /// 本文件专用的请求方法：要看 HTTP 状态码（401 重登、403 区分），走 HTTPClient.shared.requestRaw
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

    private func fetchRawText(urlString: String) async throws -> String {
        guard let url = URL(string: urlString) else { throw PlatformError.parse("Keep rawDataURL 非法") }
        // 安卓：rawDataURL 请求只带 UA，不带 Bearer（实测带 token 也常 403）。
        let (data, http) = try await request(url: url, headers: ["User-Agent": Self.userAgent])
        guard http.statusCode == 200 else {
            throw PlatformError.network("Keep 轨迹链接 HTTP \(http.statusCode)")
        }
        return String(data: data, encoding: .utf8) ?? ""
    }

    // MARK: - 轨迹解码

    /// geoPoints：base64 → AES-128-CBC 解密 → gzip 解压（失败回退 zlib raw）→ 轨迹点数组。
    private func decodeGeoPoints(_ text: String) -> [KeepPoint] {
        guard let keyData = Self.geoKey.data(using: .utf8), keyData.count == 16,
              let ivData = Self.geoIV.data(using: .utf8), ivData.count == 16,
              let raw = Data(base64Encoded: text.trimmingCharacters(in: .whitespacesAndNewlines), options: .ignoreUnknownCharacters),
              let plain = aes128CBCDecrypt(raw, key: keyData, iv: ivData) else { return [] }
        // 安卓：先按 gzip 解压（实测多为 gzip 魔数 1f8b），失败回退 zlib raw。
        if let unzipped = gunzip(plain) { return parsePoints(String(data: unzipped, encoding: .utf8) ?? "") }
        if let inflated = rawInflate(plain) { return parsePoints(String(data: inflated, encoding: .utf8) ?? "") }
        return []
    }

    /// rawDataURL：base64 编码的 GZIP 压缩 JSON（H4sI 开头 = gzip 魔数）。
    /// 安卓三层兜底：GZIP → zlib raw → JSON 包裹 {"data":"H4sI..."} / 未压缩数组直读。
    private func decodeRunmap(_ text: String) -> [KeepPoint] {
        let b64 = text.trimmingCharacters(in: .whitespacesAndNewlines)
            .split(separator: "\n").joined()
        guard let raw = Data(base64Encoded: b64, options: .ignoreUnknownCharacters) else { return [] }
        if let unzipped = gunzip(raw) {
            let pts = parsePoints(String(data: unzipped, encoding: .utf8) ?? "")
            if !pts.isEmpty { return pts }
        }
        if let inflated = rawInflate(raw) {
            let pts = parsePoints(String(data: inflated, encoding: .utf8) ?? "")
            if !pts.isEmpty { return pts }
        }
        if let json = jsonObject(b64.data(using: .utf8) ?? Data()) {
            if let inner = json["data"] as? String, !inner.isEmpty,
               let innerRaw = Data(base64Encoded: inner.trimmingCharacters(in: .whitespacesAndNewlines), options: .ignoreUnknownCharacters),
               let innerOut = gunzip(innerRaw) {
                let pts = parsePoints(String(data: innerOut, encoding: .utf8) ?? "")
                if !pts.isEmpty { return pts }
            }
            let direct = parsePoints(b64)
            if !direct.isEmpty { return direct }
        }
        return []
    }

    /// 兼容 Keep 两种轨迹 JSON 结构：顶层 JSONArray，或 JSONObject 内含 points/data/runmap/tracks 数组；
    /// 坐标字段兼容 lat/lon 与 latitude/longitude；时间优先 unixTimestamp（绝对毫秒）。
    private func parsePoints(_ jsonStr: String) -> [KeepPoint] {
        guard !jsonStr.isEmpty, let data = jsonStr.data(using: .utf8) else { return [] }
        var arr: [[String: Any]]?
        if let obj = try? JSONSerialization.jsonObject(with: data) as? [String: Any] {
            for key in ["points", "data", "runmap", "tracks"] {
                if let a = obj[key] as? [[String: Any]] { arr = a; break }
            }
        } else if let a = try? JSONSerialization.jsonObject(with: data) as? [[String: Any]] {
            arr = a
        }
        guard let arr = arr else { return [] }
        var points: [KeepPoint] = []
        for p in arr {
            let lat: Double
            if let v = p["lat"] as? NSNumber { lat = v.doubleValue }
            else if let v = p["latitude"] as? NSNumber { lat = v.doubleValue }
            else { continue }
            let lon: Double
            if let v = p["lon"] as? NSNumber { lon = v.doubleValue }
            else if let v = p["longitude"] as? NSNumber { lon = v.doubleValue }
            else { continue }
            if lat.isNaN || lon.isNaN { continue }
            let ts: Double
            if let v = p["unixTimestamp"] as? NSNumber { ts = v.doubleValue }
            else if let v = p["timestamp"] as? NSNumber { ts = v.doubleValue }
            else { ts = 0 }
            let alt: Double
            if let v = p["altitude"] as? NSNumber { alt = v.doubleValue } else { alt = .nan }
            points.append(KeepPoint(lat: lat, lon: lon, timestampMs: ts, altitude: alt))
        }
        return points
    }

    /// 心率曲线：gzip + base64 → [{"timestamp":相对秒,"beatsPerMinute":82,"pause":false}, ...]，每 10 秒一个点。
    private func decodeHeartRateCurve(_ b64: String) -> [(relSeconds: Int64, bpm: Int)] {
        guard !b64.isEmpty,
              let raw = Data(base64Encoded: b64.trimmingCharacters(in: .whitespacesAndNewlines), options: .ignoreUnknownCharacters),
              let unzipped = gunzip(raw),
              let arr = try? JSONSerialization.jsonObject(with: unzipped) as? [[String: Any]] else { return [] }
        var result: [(Int64, Int)] = []
        for o in arr {
            let bpm = int64Field(o, "beatsPerMinute")
            if bpm > 0 { result.append((int64Field(o, "timestamp"), Int(bpm))) }
        }
        return result
    }

    /// 步频曲线：stepPoints 为 gzip + base64 压缩 JSON，点含 currentTotalSteps 与 unixTimestamp；
    /// 相邻点步数差 / 时间差算逐点步频（SPM），只保留 30…250 的合理值。
    private func decodeStepPoints(_ b64: String, startTimeMs: Int64) -> [(relSeconds: Int64, spm: Int)] {
        guard !b64.isEmpty,
              let raw = Data(base64Encoded: b64.trimmingCharacters(in: .whitespacesAndNewlines), options: .ignoreUnknownCharacters),
              let unzipped = gunzip(raw),
              let arr = try? JSONSerialization.jsonObject(with: unzipped) as? [[String: Any]] else { return [] }
        var pts: [(ts: Int64, steps: Int)] = []
        for o in arr {
            let ts = int64Field(o, "unixTimestamp")
            let steps = Int(int64Field(o, "currentTotalSteps"))
            if ts > 0 && steps > 0 { pts.append((ts, steps)) }
        }
        guard pts.count >= 2 else { return [] }
        var result: [(Int64, Int)] = []
        for i in 1..<pts.count {
            let dtMs = pts[i].ts - pts[i - 1].ts
            guard dtMs > 0 else { continue }
            let dSteps = pts[i].steps - pts[i - 1].steps
            guard dSteps > 0 else { continue }
            let spm = Int(Double(dSteps) * 60000.0 / Double(dtMs))
            if (30...250).contains(spm) {
                result.append(((pts[i].ts - startTimeMs) / 1000, spm))
            }
        }
        return result
    }

    /// 二分找最近邻采样点（安卓 findHrAt / findCadAt 原样）。
    private func nearestValue(_ curve: [(Int64, Int)], relSeconds: Int64) -> Int {
        guard !curve.isEmpty, relSeconds >= 0 else { return 0 }
        var lo = 0, hi = curve.count - 1
        while lo < hi {
            let mid = (lo + hi) / 2
            if curve[mid].0 < relSeconds { lo = mid + 1 } else { hi = mid }
        }
        var best = curve[lo]
        if lo > 0 {
            let prev = curve[lo - 1]
            if abs(prev.0 - relSeconds) < abs(best.0 - relSeconds) { best = prev }
        }
        return best.1
    }

    // MARK: - GPX 构建（安卓 buildGpx 原样）

    private func buildGpx(
        points: [KeepPoint], startTimeMs: Int64, sportType: String,
        metaDistance: Double, metaDuration: Int64, metaCalorie: Double,
        metaAvgHr: Int, metaMaxHr: Int, dataType: String,
        hrCurve: [(relSeconds: Int64, bpm: Int)],
        cadenceCurve: [(relSeconds: Int64, spm: Int)],
        avgStepFreq: Double, metaSteps: Int64, metaUplift: Double,
        metaClimbDist: Double, metaAvgPace: Int, metaAvgSpeed: Double
    ) -> Data {
        var sb = ""
        sb += "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
        sb += "<gpx creator=\"jichiOB\" version=\"1.1\" xmlns=\"http://www.topografix.com/GPX/1/1\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\" xmlns:gpxtrkx=\"http://www.garmin.com/xmlschemas/TrackStatsExtension/v1\" xmlns:jichi=\"http://jichi.ob\">\n"
        let precise = dataType.isEmpty ? sportType : dataType
        sb += "  <trk><name>from keep - \(precise)</name><type>\(sportType)</type><trkseg>\n"
        for p in points {
            // 时间换算（安卓 v8.1.3）：绝对毫秒直接用；相对毫秒（>=1e8）起算；相对秒（<1e8）×1000。
            let ts = Int64(p.timestampMs)
            let absMs: Int64
            if ts <= 0 { absMs = 0 }
            else if ts >= 100_000_000_000 { absMs = ts }
            else if ts >= 100_000_000 { absMs = startTimeMs + ts }
            else { absMs = startTimeMs + ts * 1000 }
            let time = absMs > 0 ? gpxTime(ms: absMs) : ""
            let relSec: Int64 = absMs > 0 ? (absMs - startTimeMs) / 1000 : 0
            let hr = hrCurve.isEmpty ? 0 : nearestValue(hrCurve.map { ($0.relSeconds, $0.bpm) }, relSeconds: relSec)
            let cad = cadenceCurve.isEmpty ? 0 : nearestValue(cadenceCurve.map { ($0.relSeconds, $0.spm) }, relSeconds: relSec)
            sb += "    <trkpt lat=\"\(fmt6(p.lat))\" lon=\"\(fmt6(p.lon))\">"
            if !time.isEmpty { sb += "<time>\(time)</time>" }
            if !p.altitude.isNaN { sb += "<ele>\(fmt2(p.altitude))</ele>" }
            if hr > 0 || cad > 0 {
                sb += "<extensions><gpxtpx:TrackPointExtension>"
                if hr > 0 { sb += "<gpxtpx:hr>\(hr)</gpxtpx:hr>" }
                if cad > 0 { sb += "<gpxtpx:cad>\(cad)</gpxtpx:cad>" }
                sb += "</gpxtpx:TrackPointExtension></extensions>"
            }
            sb += "</trkpt>\n"
        }
        sb += "  </trkseg>\n"
        if metaDistance > 0 || metaDuration > 0 {
            sb += "  <extensions>"
            sb += "<gpxtrkx:TrackStatsExtension>"
            if metaDistance > 0 { sb += "<gpxtrkx:Distance>\(fmt1(metaDistance))</gpxtrkx:Distance>" }
            if metaDuration > 0 { sb += "<gpxtrkx:TotalTime>\(metaDuration)</gpxtrkx:TotalTime>" }
            if metaCalorie > 0 { sb += "<gpxtrkx:Calories>\(Int(metaCalorie))</gpxtrkx:Calories>" }
            if metaAvgHr > 0 { sb += "<gpxtrkx:AvgHeartRate>\(metaAvgHr)</gpxtrkx:AvgHeartRate>" }
            if metaMaxHr > 0 { sb += "<gpxtrkx:MaxHeartRate>\(metaMaxHr)</gpxtrkx:MaxHeartRate>" }
            sb += "</gpxtrkx:TrackStatsExtension>"
            sb += "<jichi:distance>\(fmt1(metaDistance))</jichi:distance>"
            sb += "<jichi:duration>\(metaDuration)</jichi:duration>"
            if metaCalorie > 0 { sb += "<jichi:calorie>\(Int(metaCalorie))</jichi:calorie>" }
            if metaAvgHr > 0 { sb += "<jichi:avgHr>\(metaAvgHr)</jichi:avgHr>" }
            if metaMaxHr > 0 { sb += "<jichi:maxHr>\(metaMaxHr)</jichi:maxHr>" }
            if avgStepFreq > 0 { sb += "<jichi:avgCadence>\(String(format: "%.0f", avgStepFreq))</jichi:avgCadence>" }
            if metaSteps > 0 { sb += "<jichi:steps>\(metaSteps)</jichi:steps>" }
            if metaUplift > 0 { sb += "<jichi:totalAscent>\(fmt1(metaUplift))</jichi:totalAscent>" }
            if metaClimbDist > 0 { sb += "<jichi:totalClimbDistance>\(fmt1(metaClimbDist))</jichi:totalClimbDistance>" }
            if metaAvgPace > 0 { sb += "<jichi:avgPaceSecPerKm>\(metaAvgPace)</jichi:avgPaceSecPerKm>" }
            if metaAvgSpeed > 0 { sb += "<jichi:avgSpeedKph>\(fmt2(metaAvgSpeed))</jichi:avgSpeedKph>" }
            sb += "</extensions>\n"
        }
        sb += "  </trk>\n</gpx>\n"
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

// MARK: - 登录态（token 存钥匙串 LoginStore；session 只留本实例内的账号密码缓存，供重登兜底）

private final class KeepSession {
    var token: String?
    var mobile: String?
    var password: String?
}

/// 轨迹点：[纬度, 经度, 时间戳（绝对毫秒或相对值）, 海拔]，与安卓 doubleArrayOf 对应。
private struct KeepPoint {
    var lat: Double
    var lon: Double
    var timestampMs: Double
    var altitude: Double
}

// MARK: - 本文件内的小工具（不碰共享类型）

private func formEncode(_ s: String) -> String {
    s.addingPercentEncoding(withAllowedCharacters: .keepFormAllowed) ?? s
}

private extension CharacterSet {
    /// 表单/路径段编码：只保留不编码的安全字符，其余全部百分号编码（安卓 Uri.encode 同款思路）。
    static let keepFormAllowed = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~")
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

private func fmt1(_ v: Double) -> String { String(format: "%.1f", locale: Locale(identifier: "en_US_POSIX"), v) }
private func fmt2(_ v: Double) -> String { String(format: "%.2f", locale: Locale(identifier: "en_US_POSIX"), v) }
private func fmt6(_ v: Double) -> String { String(format: "%.6f", locale: Locale(identifier: "en_US_POSIX"), v) }

/// AES-128-CBC 解密（PKCS7）。CommonCrypto 只在 Apple 平台有，iOS 可用。
private func aes128CBCDecrypt(_ data: Data, key: Data, iv: Data) -> Data? {
    guard key.count == 16, iv.count == 16 else { return nil }
    var out = Data(count: data.count + Int(kCCBlockSizeAES128))
    var outLen = 0
    let outCount = out.count
    let status = out.withUnsafeMutableBytes { outPtr in
        data.withUnsafeBytes { dataPtr in
            key.withUnsafeBytes { keyPtr in
                iv.withUnsafeBytes { ivPtr in
                    CCCrypt(
                        CCOperation(kCCDecrypt), CCAlgorithm(kCCAlgorithmAES128), CCOptions(kCCOptionPKCS7Padding),
                        keyPtr.baseAddress, key.count, ivPtr.baseAddress,
                        dataPtr.baseAddress, data.count,
                        outPtr.baseAddress, outCount, &outLen
                    )
                }
            }
        }
    }
    guard status == kCCSuccess else { return nil }
    out.count = outLen
    return out
}

/// gzip 解压：剥掉 gzip 头（10 字节起，按 FLG 处理扩展字段）与尾（8 字节 CRC + 长度），
/// 剩下的 raw deflate 前补一个合法 zlib 头（0x78 0x01）再按 zlib 解。失败返回 nil。
/// 安卓用 GZIPInputStream，失败回退 zlib raw；这里两种都包在这一个函数里试。
private func gunzip(_ data: Data) -> Data? {
    guard data.count > 18, data[0] == 0x1F, data[1] == 0x8B, data[2] == 8 else { return nil }
    var pos = 10
    let flg = data[3]
    if flg & 0x04 != 0 { // FEXTRA
        guard pos + 2 <= data.count else { return nil }
        let xlen = Int(data[pos]) | (Int(data[pos + 1]) << 8)
        pos += 2 + xlen
    }
    if flg & 0x08 != 0 { // FNAME
        while pos < data.count && data[pos] != 0 { pos += 1 }
        pos += 1
    }
    if flg & 0x10 != 0 { // FCOMMENT
        while pos < data.count && data[pos] != 0 { pos += 1 }
        pos += 1
    }
    if flg & 0x02 != 0 { pos += 2 } // FHCRC
    guard pos < data.count - 8 else { return nil }
    let body = data[pos..<(data.count - 8)]
    return rawInflate(Data(body))
}

/// zlib 包裹的 deflate 解压（Compression 框架）。
private func zlibDecompress(_ data: Data) -> Data? {
    guard !data.isEmpty else { return nil }
    var stream = compression_stream(dst_ptr: UnsafeMutablePointer<UInt8>(bitPattern: 0)!, dst_size: 0, src_ptr: UnsafePointer<UInt8>(bitPattern: 0)!, src_size: 0, state: nil)
    guard compression_stream_init(&stream, COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB) == COMPRESSION_STATUS_OK else { return nil }
    defer { compression_stream_destroy(&stream) }
    var out = Data()
    let chunk = 65536
    var buf = [UInt8](repeating: 0, count: chunk)
    var iterations = 0
    data.withUnsafeBytes { (src: UnsafeRawBufferPointer) in
        stream.src_ptr = src.baseAddress!.assumingMemoryBound(to: UInt8.self)
        stream.src_size = data.count
        while iterations < 10000 {
            iterations += 1
            var status: compression_status = COMPRESSION_STATUS_OK
            var produced = 0
            // dst_ptr 只在本次 withUnsafeMutableBytes 闭包内有效，process 调用必须在闭包里完成。
            buf.withUnsafeMutableBytes { (dst: UnsafeMutableRawBufferPointer) in
                stream.dst_ptr = dst.baseAddress!.assumingMemoryBound(to: UInt8.self)
                stream.dst_size = chunk
                status = compression_stream_process(&stream, 0)
                produced = chunk - stream.dst_size
            }
            if produced > 0 { out.append(contentsOf: buf[0..<produced]) }
            if status == COMPRESSION_STATUS_END { break }
            if status != COMPRESSION_STATUS_OK { break }
            if produced == 0 && stream.src_size == 0 { break }
        }
    }
    return out.isEmpty ? nil : out
}

/// raw deflate 解压：前面补一个合法 zlib 头（0x78 0x01，校验和能过）再按 zlib 解。
/// 对应安卓的 Inflater(true) 兜底。
private func rawInflate(_ data: Data) -> Data? {
    var wrapped = Data([0x78, 0x01])
    wrapped.append(data)
    return zlibDecompress(wrapped)
}

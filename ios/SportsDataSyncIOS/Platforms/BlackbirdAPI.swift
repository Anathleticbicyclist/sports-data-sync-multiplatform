// 待真机验证
// 黑鸟单车 — 对照安卓 BlackbirdApi.kt（v9.6.9）原样移植；
//   FIT/GPX 生成走 Core 共用件：FitBuilder / GpxBuilder / GeoUtils / FitParser。
//
// 登录：安卓无账号密码直登接口，登录在 WebView 里完成
//   （https://www.blackbirdsport.com/login），取完整 Cookie。
//   本文件 login(username:password:) 因此抛 unsupported，App 层登录页拿到 Cookie 后
//   调 setCookie(_:) 注入；登录页地址见 static let loginURL。
// 认证：Cookie: 完整 Cookie；User-Agent 浏览器 UA；Referer https://www.blackbirdsport.com/。
// 列表：GET https://www.blackbirdsport.com/api/records?lastRecordId=0&pageSize=100，
//   游标翻页（lastRecordId=上一页最后一条的 recordId；v8.2.3.9：offset 跳过前必须先更新
//   游标，否则 offset≥单页条数时死循环反复拉第一页）。返回 {"status":"ok","content":[...]}，
//   字段 recordId/title/startTime（毫秒）/distance（米）/duration（秒）。
//   用户校验：GET /api/user → status=="ok" 时 content.nickname。
// 下载：GET /api/records/{recordId}/data：
//   ① 有 fitUrl/fit_url/downloadUrl/fileUrl 等字段时直接下载 FIT（带 Cookie+Referer，校验 ".FIT" 文件头）；
//   ② 无 FIT 地址时解析 content.track 字符串，用 Core FitBuilder 生成标准 FIT
//      （record 含累计 distance，目标平台直接读不重算；体积约为 GPX 的 1/10），失败回退 GPX；
//   ③ track 为 JSONArray 旧格式时用 Core GpxBuilder 生成 GPX。
//   track 字符串固定 9 字段（v6.3.16，实测+第三方脚本双重验证）：
//     [0]lat(GCJ-02) [1]lon(GCJ-02) [2]ele 海拔(米) [3]power 功率(0.01W)
//     [4]hr 心率(bpm) [5]cad 踏频(rpm) [6]speed 速度(0.1km/h)
//     [7]相对 startTime 的秒偏移 [8]保留(恒 0)。
//   坐标：黑鸟固定 GCJ-02，本文件默认经 Core GeoUtils 转 WGS-84；
//   功率：[3]/100 后 ×0.78 校准（安卓 v7.6.6：黑鸟 API 功率偏高约 28%）；
//   距离：接口返回活动总距离时按时间比例分配到每点（GPS 信号弱时也准确），否则由
//   FitBuilder 按坐标 Haversine 累加；瞬时速度 >70m/s 的漂移点直接丢弃（安卓同款阈值）。
//   移动时间（15 秒滑动平均速度 + 0.7m/s 暂停阈值，<5 秒短暂停合并计入，>30 秒间隔不计）
//   与平滑后爬升/下降（5 点加权 + 0.3m 阈值）随 FitBuildOptions 传入。
// 上传：POST /api/records/upload，multipart 字段 file；只接受 FIT。
//   错误翻译（2026-08-27 实测）：DUPLICATE=重复；010001=无有效 GPS 轨迹或格式不认；
//   FIT_FILE_ERROR=黑鸟解析器较旧拒收（含大量开发者字段的 FIT、室内无 GPS 的 FIT 必被拒）；
//   301-308 重定向 / 401-403 = 登录失效。
// 网络：状态敏感调用走 HTTPClient.shared.requestRaw（非 2xx 不抛错，返回原始响应供调用方
//   按状态码区分 401/重定向/重复上传，传大文件超时走共用 session）。
// 密钥：无固定密钥，Cookie 全部运行时注入，本文件不含任何真实凭证。

import Foundation

struct BlackbirdAPI: PlatformAPI {
    let source: DataSource = .blackbird

    static let loginURL = "https://www.blackbirdsport.com/login"

    private static let base = "https://www.blackbirdsport.com/api"
    private static let perPage = 100

    private let cookieStore = BlackbirdCookieStore()

    /// WebView 登录后把完整 Cookie 交给本实例（Keychain 落盘由 App 层负责）。
    func setCookie(_ cookie: String) { cookieStore.cookie = cookie }

    /// 只看本地有没有 Cookie，不发网络请求（协议口径）。
    func isLoggedIn() async -> Bool {
        guard let cookie = cookieStore.cookie, !cookie.isEmpty else { return false }
        return true
    }

    func login(username: String, password: String) async throws {
        // 安卓无账号密码直登接口；黑鸟只能在登录页（见 loginURL）登录后取完整 Cookie。
        throw PlatformError.unsupported("黑鸟不支持账号密码直登，请在登录页登录后由 App 注入 Cookie")
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        let cookie = try requireCookie()
        var result: [ActivityRecord] = []
        var lastRecordId: Int64 = 0
        var fetched = 0
        while result.count < limit {
            let url = URL(string: "\(Self.base)/records?lastRecordId=\(lastRecordId)&pageSize=\(Self.perPage)")!
            let (data, http) = try await get(url: url, cookie: cookie)
            if (401...403).contains(http.statusCode) {
                throw PlatformError.authFailed("黑鸟登录已过期，请重新登录")
            }
            guard http.statusCode == 200 else {
                throw PlatformError.network("黑鸟 HTTP \(http.statusCode)：\(String(data: data, encoding: .utf8)?.prefix(200) ?? "")")
            }
            guard let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                throw PlatformError.parse("黑鸟列表解析失败")
            }
            let rows = (json["content"] as? [[String: Any]])
                ?? (json["data"] as? [[String: Any]])
                ?? (json["records"] as? [[String: Any]])
                ?? []
            if rows.isEmpty { break }
            for item in rows {
                let id = (item["recordId"] as? NSNumber)?.int64Value
                    ?? (item["id"] as? NSNumber)?.int64Value ?? 0
                if id <= 0 { continue }
                // v8.2.3.9：lastRecordId 必须在 offset 跳过之前更新，否则死循环
                lastRecordId = id
                fetched += 1
                if fetched <= skip { continue }
                let title = (item["title"] as? String).flatMap { $0.isEmpty || $0 == "null" ? nil : $0 } ?? "骑行"
                let startMs = (item["startTime"] as? NSNumber)?.int64Value ?? 0
                result.append(ActivityRecord(
                    id: String(id),
                    source: source,
                    title: title,
                    startDate: startMs > 0 ? Date(timeIntervalSince1970: TimeInterval(startMs) / 1000) : Date(timeIntervalSince1970: 0),
                    distanceMeters: (item["distance"] as? NSNumber)?.doubleValue ?? 0,
                    durationSeconds: Double((item["duration"] as? NSNumber)?.intValue ?? 0),
                    elevationGainMeters: 0,
                    sportType: "cycling",
                    remoteId: String(id),
                    fileName: ""
                ))
                if result.count >= limit { break }
            }
            if rows.count < Self.perPage { break }
            try await Task.sleep(nanoseconds: 200_000_000)
        }
        return result
    }

    /// 下载：FIT 直链优先 → track 字符串构建标准 FIT（含累计 distance）→ GPX 回退。
    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        let cookie = try requireCookie()
        let url = URL(string: "\(Self.base)/records/\(activity.id)/data")!
        let (data, http) = try await get(url: url, cookie: cookie)
        guard http.statusCode == 200 else {
            throw PlatformError.network("黑鸟数据 HTTP \(http.statusCode)")
        }
        guard let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
            throw PlatformError.parse("黑鸟数据解析失败 (recordId=\(activity.id))")
        }
        let content = (json["content"] as? [String: Any])
            ?? (json["data"] as? [String: Any])
            ?? json

        // ① FIT 直链（字段名多版本探测）
        let fitUrl = ["fitUrl", "fit_url", "downloadUrl", "download_url", "fileUrl",
                      "file_url", "fitFileUrl", "fit_file_url", "fitDownloadUrl", "fit_download_url"]
            .compactMap { content[$0] as? String }
            .first { !$0.isEmpty && $0.hasPrefix("http") } ?? ""
        if !fitUrl.isEmpty {
            if let bytes = try? await downloadFitFile(urlString: fitUrl, recordId: activity.id, cookie: cookie),
               FitParser.isFit(bytes) {
                return bytes
            }
            // FIT 下载返回非 FIT 数据，回退 track 构建
        }

        // 开始时间（毫秒或秒，自适应；支持字符串/数字+多字段名）
        let startTimeSec = resolveStartTimeSec(content)
        let trackStr = (content["track"] as? String) ?? (content["points"] as? String) ?? ""
        // 活动总距离（米），用于按时间比例分配 record 距离（GPS 信号弱时也准确）
        let totalDistanceM = totalDistanceMeters(content)

        // ② track 为 JSONArray 旧格式 → 直接构建 GPX
        if let trackArr = (content["track"] as? [[String: Any]]) ?? (content["points"] as? [[String: Any]]),
           !trackArr.isEmpty {
            let points = parseTrackArray(trackArr, startTimeSec: startTimeSec)
            if !points.isEmpty {
                return Data(GpxBuilder.build(points: points, title: "黑鸟骑行 \(activity.id)").utf8)
            }
        }

        // ③ track 字符串 → 优先构建标准 FIT，失败回退 GPX
        if !trackStr.isEmpty {
            let points = parseTrackString(trackStr, startTimeSec: startTimeSec, totalDistanceM: totalDistanceM)
            if !points.isEmpty {
                var options = FitBuildOptions()
                options.manufacturer = 146 // 黑鸟
                options.product = 16 // BB16
                if totalDistanceM > 0 {
                    options.overrideDistanceMeters = totalDistanceM
                }
                let (ascent, descent) = smoothedAscentDescent(points)
                options.overrideAscentMeters = ascent
                options.overrideDescentMeters = descent
                options.timerSeconds = Int64(movingTimeSeconds(points))
                let fit = FitBuilder.build(points: points, sport: .cycling, subSport: .generic,
                                           startUnix: TimeInterval(startTimeSec), options: options)
                if FitParser.isFit(fit) {
                    return fit
                }
                return Data(GpxBuilder.build(points: points, title: "黑鸟骑行 \(activity.id)").utf8)
            }
        }

        throw PlatformError.network("无法获取活动数据 (recordId=\(activity.id))")
    }

    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        let cookie = try requireCookie()
        // 黑鸟只接受 FIT（安卓 v6.3.5：GPX 源须先转 FIT；自研转换器生成的 FIT 黑鸟无法解析，
        // 须用 Outbase 官方 gpx2fit 转换——iOS 转换器待接入，本文件遇到非 FIT 直接抛错）。
        guard FitParser.isFit(data) else {
            throw PlatformError.unsupported("黑鸟只接收 FIT 文件，GPX 需先转 FIT；iOS 转换器待接入")
        }
        let boundary = "Boundary-\(UUID().uuidString)"
        var body = Data()
        body.appendMultipartFile(field: "file", fileName: fileName, mimeType: "application/octet-stream", fileData: data, boundary: boundary)
        body.append("--\(boundary)--\r\n".data(using: .utf8)!)

        var request = URLRequest(url: URL(string: "\(Self.base)/records/upload")!)
        request.httpMethod = "POST"
        request.timeoutInterval = 300
        request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        request.setValue(cookie, forHTTPHeaderField: "Cookie")
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        request.httpBody = body

        let (respData, resp) = try await HTTPClient.shared.requestRaw(request)
        let httpCode = resp.statusCode
        let bodyStr = String(data: respData, encoding: .utf8) ?? ""
        if (301...308).contains(httpCode) {
            throw PlatformError.authFailed("黑鸟上传失败：登录已失效（被重定向），请重新登录黑鸟")
        }
        if (401...403).contains(httpCode) {
            throw PlatformError.authFailed("黑鸟上传失败：登录已过期 (HTTP \(httpCode))，请重新登录黑鸟")
        }
        if bodyStr.contains("FIT_FILE_ERROR") || bodyStr.contains("FIT file integrity") {
            throw PlatformError.network("黑鸟拒绝该 FIT（FIT_FILE_ERROR）：黑鸟解析器较旧，无法解析含大量开发者字段的 FIT；室内无 GPS 的 FIT 必被拒。建议用 iGPSPORT/行者记录或户外含 GPS 数据")
        }
        let ok = httpCode == 200 && (bodyStr.contains("\"status\":\"ok\"") || bodyStr.contains("\"code\":0")
            || bodyStr.contains("\"code\":200") || bodyStr.contains("success"))
        if ok { return }
        throw PlatformError.network(translateUploadError(bodyStr, httpCode: httpCode))
    }

    // MARK: - 请求小工具

    private func requireCookie() throws -> String {
        guard let cookie = cookieStore.cookie, !cookie.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        return cookie
    }

    private func authHeaders(cookie: String) -> [String: String] {
        [
            "Cookie": cookie,
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36",
            "Referer": "https://www.blackbirdsport.com/",
            "Accept": "application/json, text/plain, */*",
        ]
    }

    private func get(url: URL, cookie: String) async throws -> (Data, HTTPURLResponse) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.timeoutInterval = 120
        for (key, value) in authHeaders(cookie: cookie) {
            request.setValue(value, forHTTPHeaderField: key)
        }
        let (data, http) = try await HTTPClient.shared.requestRaw(request)
        return (data, http)
    }

    private func downloadFitFile(urlString: String, recordId: String, cookie: String) async throws -> Data {
        var request = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = "GET"
        request.timeoutInterval = 120
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        request.setValue("\(Self.base)/records/\(recordId)", forHTTPHeaderField: "Referer")
        for (key, value) in authHeaders(cookie: cookie) {
            request.setValue(value, forHTTPHeaderField: key)
        }
        let (data, response) = try await HTTPClient.shared.requestRaw(request)
        guard response.statusCode == 200 else {
            throw PlatformError.network("黑鸟 FIT 下载失败 HTTP \(response.statusCode)")
        }
        return data
    }

    private func resolveStartTimeSec(_ content: [String: Any]) -> Int64 {
        let keys = ["startTime", "start_time", "beginTime", "begin_time", "startDate", "start_date",
                    "date", "time", "startTimestamp", "start_timestamp"]
        var value: Int64 = 0
        for key in keys {
            if let string = content[key] as? String, !string.isEmpty,
               let num = Int64(string) ?? Int64(Double(string) ?? 0), num > 0 {
                value = num
                break
            }
        }
        if value == 0 {
            for key in keys {
                if let num = (content[key] as? NSNumber)?.int64Value, num > 0 {
                    value = num
                    break
                }
            }
        }
        // 毫秒（13 位）或秒（10 位）自适应
        return value > 1_000_000_000_000 ? value / 1000 : value
    }

    private func totalDistanceMeters(_ content: [String: Any]) -> Double {
        let keys = ["distance", "totalDistance", "total_distance", "dist", "mileage"]
        for key in keys {
            if let string = content[key] as? String, let num = Double(string), num > 0 { return num }
            if let num = (content[key] as? NSNumber)?.doubleValue, num > 0 { return num }
        }
        return 0
    }

    private func translateUploadError(_ bodyStr: String, httpCode: Int) -> String {
        if bodyStr.contains("DUPLICATE") {
            return "黑鸟提示该记录已存在（重复上传）：此活动之前已同步过黑鸟，跳过即可"
        }
        if bodyStr.contains("010001") {
            return "黑鸟无法入库该活动（010001）：多为该 FIT 无有效 GPS 轨迹（如 0km 空活动/室内骑行）或格式黑鸟不认。真实户外骑行记录可正常上传"
        }
        if bodyStr.contains("errorCode") || bodyStr.contains("\"status\":\"error\"") {
            return "黑鸟上传被拒：\(extractUploadMessage(bodyStr))"
        }
        return "黑鸟上传失败 (HTTP \(httpCode))：\(bodyStr.prefix(160))"
    }

    private func extractUploadMessage(_ bodyStr: String) -> String {
        guard let data = bodyStr.data(using: .utf8),
              let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else {
            return String(bodyStr.prefix(80))
        }
        let code = (json["errorCode"] as? String) ?? ""
        let msg = (json["msg"] as? String) ?? ""
        if !code.isEmpty && !msg.isEmpty { return "\(code)(\(msg))" }
        if !code.isEmpty { return code }
        return msg.isEmpty ? String(bodyStr.prefix(80)) : msg
    }

    // MARK: - track 解析 → Core TrackPoint

    /// track 字符串固定 9 字段：
    /// [0]lat [1]lon [2]ele [3]power(0.01W) [4]hr [5]cad [6]speed(0.1km/h) [7]秒偏移 [8]保留。
    /// 坐标经 GeoUtils 转 WGS-84；功率 [3]/100 后 ×0.78 校准；瞬时速度 >70m/s 的漂移点丢弃；
    /// 接口给了活动总距离时，按时间比例把累计里程写进每点的 distanceMeters（FitBuilder 优先用它）。
    private func parseTrackString(_ trackStr: String, startTimeSec: Int64, totalDistanceM: Double) -> [TrackPoint] {
        // 先解析出带偏移的原始点，再算总时长，最后分配累计里程
        struct RawPoint {
            let lat: Double
            let lon: Double
            let ele: Double
            let speedMs: Double
            let hr: Int
            let cad: Int
            let power: Int
            let offsetSec: Double
        }
        var raw: [RawPoint] = []
        for segment in trackStr.split(separator: ";") {
            let f = segment.split(separator: ",", omittingEmptySubsequences: false).map { $0.trimmingCharacters(in: .whitespaces) }
            guard f.count >= 3,
                  let gcjLat = Double(f[0]), let gcjLon = Double(f[1]),
                  gcjLat != 0, gcjLon != 0 else {
                continue // 过滤坐标为 0 的无效点（GPS 信号丢失）
            }
            let ele = Double(f[2]) ?? 0
            let converted = GeoUtils.gcj02ToWgs84(lat: gcjLat, lon: gcjLon)
            let offsetSec = (f.count >= 8 ? Double(f[7]) : Double(f[f.count - 1])) ?? 0
            let powerRaw = f.count >= 4 ? (Double(f[3]) ?? 0) : 0
            let power = Int((powerRaw / 100.0 * 0.78).rounded()) // →瓦，再 ×0.78 校准
            let hr = f.count >= 5 ? Int(Double(f[4]) ?? 0) : 0
            let cad = f.count >= 6 ? Int(Double(f[5]) ?? 0) : 0
            let speedDeciKmh = f.count >= 7 ? (Double(f[6]) ?? 0) : 0
            let speedMs = speedDeciKmh > 0 ? speedDeciKmh / 36.0 : 0
            raw.append(RawPoint(lat: converted.lat, lon: converted.lon, ele: ele, speedMs: speedMs,
                                hr: hr, cad: cad, power: power, offsetSec: offsetSec))
        }
        guard !raw.isEmpty else { return [] }
        let totalTimeSec = raw.map { $0.offsetSec }.max() ?? 0
        let useApiDistance = totalDistanceM > 0 && totalTimeSec > 0
        var points: [TrackPoint] = []
        var prevKept: RawPoint?
        for p in raw {
            // 漂移过滤：相对上一个保留点的瞬时速度 >70m/s（252km/h）即丢弃
            if let prev = prevKept {
                let seg = GeoUtils.haversineMeters(lat1: prev.lat, lon1: prev.lon, lat2: p.lat, lon2: p.lon)
                let dt = p.offsetSec - prev.offsetSec
                if dt > 0 && seg / dt > 70.0 { continue }
            }
            prevKept = p
            let distanceMeters = useApiDistance ? totalDistanceM * (p.offsetSec / totalTimeSec) : -1
            points.append(TrackPoint(
                lat: p.lat, lon: p.lon, ele: p.ele,
                timestamp: TimeInterval(startTimeSec) + p.offsetSec,
                heartRate: p.hr, cadence: p.cad, power: p.power,
                distanceMeters: distanceMeters,
                speedMetersPerSecond: p.speedMs
            ))
        }
        return points
    }

    /// JSONArray 旧格式：每点含 lat/lng、ele、time/timestamp 或 offset、心率/功率/踏频。
    private func parseTrackArray(_ track: [[String: Any]], startTimeSec: Int64) -> [TrackPoint] {
        var points: [TrackPoint] = []
        for (i, pt) in track.enumerated() {
            let gcjLat = (pt["lat"] as? NSNumber)?.doubleValue ?? (pt["latitude"] as? NSNumber)?.doubleValue ?? 0
            let gcjLon = (pt["lng"] as? NSNumber)?.doubleValue ?? (pt["longitude"] as? NSNumber)?.doubleValue ?? 0
            guard gcjLat != 0, gcjLon != 0 else { continue }
            let converted = GeoUtils.gcj02ToWgs84(lat: gcjLat, lon: gcjLon)
            let ele = (pt["ele"] as? NSNumber)?.doubleValue ?? (pt["altitude"] as? NSNumber)?.doubleValue ?? 0
            let timestamp: TimeInterval
            if let time = (pt["time"] as? String) ?? (pt["timestamp"] as? String), !time.isEmpty,
               let date = ISO8601DateFormatter().date(from: time) {
                timestamp = date.timeIntervalSince1970
            } else {
                let offset = (pt["offset"] as? NSNumber)?.doubleValue
                    ?? (pt["time_offset"] as? NSNumber)?.doubleValue ?? Double(i)
                timestamp = TimeInterval(startTimeSec) + offset
            }
            let hr = (pt["hr"] as? NSNumber)?.intValue ?? (pt["heartRate"] as? NSNumber)?.intValue ?? (pt["heart_rate"] as? NSNumber)?.intValue ?? 0
            let power = (pt["power"] as? NSNumber)?.intValue ?? (pt["watts"] as? NSNumber)?.intValue ?? 0
            let cad = (pt["cad"] as? NSNumber)?.intValue ?? (pt["cadence"] as? NSNumber)?.intValue ?? 0
            points.append(TrackPoint(
                lat: converted.lat, lon: converted.lon, ele: ele,
                timestamp: timestamp, heartRate: hr, cadence: cad, power: power
            ))
        }
        return points
    }

    /// 移动时间（秒）：15 秒滑动平均速度 + 0.7m/s 暂停阈值判断，<5 秒短暂停合并计入，
    /// >30 秒间隔不计入骑行时间（安卓 v7.6.5 口径）。
    private func movingTimeSeconds(_ points: [TrackPoint]) -> Double {
        guard points.count > 1 else { return 0 }
        let pauseSpeed = 0.7
        var moveSpeeds: [Double] = []
        var window: [(offset: Double, speed: Double)] = []
        for (idx, p) in points.enumerated() {
            let deltaSec = idx > 0 && p.timestamp > points[idx - 1].timestamp ? p.timestamp - points[idx - 1].timestamp : 1.0
            let rawSeg = idx > 0 ? GeoUtils.haversineMeters(lat1: points[idx - 1].lat, lon1: points[idx - 1].lon, lat2: p.lat, lon2: p.lon) : 0
            let sp = deltaSec > 0 ? rawSeg / deltaSec : 0
            window.append((p.timestamp, sp))
            while let first = window.first, p.timestamp - first.offset > 15.0 { window.removeFirst() }
            moveSpeeds.append(window.isEmpty ? 0 : window.map { $0.speed }.reduce(0, +) / Double(window.count))
        }
        var isMoving = moveSpeeds.map { $0 > pauseSpeed }
        var i = 1
        while i < points.count - 1 {
            if !isMoving[i] && isMoving[i - 1] {
                var j = i
                while j < points.count && !isMoving[j] { j += 1 }
                let pauseDur = j < points.count ? points[j].timestamp - points[i].timestamp : 999.0
                if pauseDur < 5.0 && j < points.count && isMoving[j] {
                    for k in i..<j { isMoving[k] = true }
                }
                i = j
            } else {
                i += 1
            }
        }
        var moving = 0.0
        for idx in 1..<points.count {
            let deltaSec = points[idx].timestamp - points[idx - 1].timestamp
            if isMoving[idx] && deltaSec > 0 && deltaSec <= 30.0 {
                moving += deltaSec
            }
        }
        return moving
    }

    /// 爬升/下降（米）：海拔 5 点加权平滑（权重 1,2,3,2,1）+ 0.3m 阈值（安卓 v7.6.5/v7.6.6 口径）。
    private func smoothedAscentDescent(_ points: [TrackPoint]) -> (ascent: Double, descent: Double) {
        guard points.count >= 5 else { return (0, 0) }
        let weights = [1.0, 2.0, 3.0, 2.0, 1.0]
        var smoothed: [Double] = []
        for i in points.indices {
            var sum = 0.0
            var wsum = 0.0
            for j in -2...2 {
                let idx = i + j
                if idx >= 0 && idx < points.count {
                    let w = weights[j + 2]
                    sum += points[idx].ele * w
                    wsum += w
                }
            }
            smoothed.append(sum / wsum)
        }
        var ascent = 0.0
        var descent = 0.0
        var lastAlt = smoothed[0]
        for i in 1..<points.count {
            let a = smoothed[i]
            if a > lastAlt + 0.3 { ascent += a - lastAlt }
            else if a < lastAlt - 0.3 { descent += lastAlt - a }
            lastAlt = a
        }
        return (ascent, descent)
    }
}

/// 黑鸟 Cookie 只放内存；Keychain 落盘与恢复由 App 层负责。
final class BlackbirdCookieStore {
    var cookie: String?
}

// 待真机验证
// 行者 — 对照安卓 XingzheApi.kt + UploadEngine.kt uploadToXingzhe（v9.6.9）原样移植
//
// 登录：安卓无账号密码直登接口，登录在 WebView 里完成
//   （https://www.imxingzhe.com/login），从 Cookie 取 sessionid。
//   本文件 login(username:password:) 因此抛 unsupported，App 层登录页拿到 sessionid 后
//   调 setSessionId(_:) 注入；登录页地址见 static let loginURL。
// 认证：Cookie: sessionid=xxx（Bearer 无效）。
// 列表：GET https://www.imxingzhe.com/api/v1/pgworkout/?offset=N&limit=M（limit=100，本文件每页 100）。
// 下载：FIT 优先，失败回退 GPX（安卓默认策略；preferGpx=true 时反过来，行者→iGPSPORT 用 GPX
//   优先可避免 8 小时时差，见 README Q&A）。
//   FIT：GET /api/v1/workout/{id}/fit/（多数记录 400/404）；
//   GPX：GET /api/v1/pgworkout/{id}/gpx/（稳定，注意必须带尾斜杠，否则 Django 返回 401）。
// 上传：POST https://www.imxingzhe.com/api/v1/fit/upload/
//   multipart 字段 fit_file + md5（文件 MD5）；头 Cookie: sessionid=xxx（+ csrftoken 如有）、
//   Referer https://www.imxingzhe.com/upload/fit、X-CSRFToken（如有）。
//   返回 code==0 且 data.workout_id>0 才算入库成功；code 9006 /“文件已上传”为重复跳过。
//   行者只收 FIT：GPX 先用 Core 的 GpxParser.gpxToFit 转 FIT 再传（安卓用官方 gpx2fit.js /
//   自研 GpxToFitConverter 转换；iOS 转换器已接线，见 uploadActivity）。
//
// 注意（README 原文）：行者手机 App 记录导出的 FIT 格式不标准（data_size、CRC、时间戳等存在
//   非标准写法），上传到解析严格的平台（如迈金/顽鹿 OTM）可能入库失败——上传成功但列表无数据
//   或显示异常；Outbase 对行者 FIT 兼容性良好，可正常解析显示。行者手机记录用户同步目标
//   优先选 Outbase。另外行者会对传入的 FIT/GPX 做一次完整解析与重新标准化，可作“清洗”中转。
// 密钥：无固定密钥，sessionid 全部运行时注入，本文件不含任何真实凭证。

import CryptoKit
import Foundation

struct XingzheAPI: PlatformAPI {
    let source: DataSource = .xingzhe

    static let loginURL = "https://www.imxingzhe.com/login"

    private static let base = "https://www.imxingzhe.com/api/v1"
    private static let perPage = 100

    private let sessionStore = XingzheSessionStore()

    /// WebView 登录后把 sessionid 交给本实例（直接存钥匙串，见 LoginStore）。
    func setSessionId(_ sessionId: String) { LoginStore.saveToken(sessionId, for: .xingzhe) }

    /// 可选：登录页同时拿到 csrftoken 时一并注入，上传时随 Cookie 与 X-CSRFToken 附带。
    /// csrf 只放内存（随登录会话失效），不进钥匙串。
    func setCsrfToken(_ csrf: String) { sessionStore.csrf = csrf }

    /// 只看钥匙串里有没有 sessionid，不发网络请求（协议口径）。
    /// 安卓曾用 user_info 实测校验，如需实测校验由 App 层另调 fetchActivities(limit: 1)。
    func isLoggedIn() async -> Bool {
        LoginStore.isLoggedIn(.xingzhe)
    }

    /// 退出登录：清掉钥匙串里的 sessionid（内存里的 csrf 一并清掉）。
    func logout() {
        LoginStore.clearToken(for: .xingzhe)
        sessionStore.csrf = nil
    }

    func login(username: String, password: String) async throws {
        // 安卓无账号密码直登接口；行者只能在登录页（见 loginURL）登录后取 Cookie sessionid。
        throw PlatformError.unsupported("行者不支持账号密码直登，请在登录页登录后由 App 注入 sessionid")
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        let sessionId = try requireSessionId()
        var result: [ActivityRecord] = []
        var currentOffset = skip
        while result.count < limit {
            let take = min(Self.perPage, limit - result.count)
            let url = URL(string: "\(Self.base)/pgworkout/?offset=\(currentOffset)&limit=\(take)")!
            let (data, http) = try await get(url: url, sessionId: sessionId)
            if http.statusCode == 401 || http.statusCode == 403 {
                throw PlatformError.authFailed("行者登录已过期，请重新登录")
            }
            guard http.statusCode == 200 else {
                throw PlatformError.network("行者 HTTP \(http.statusCode)：\(String(String(data: data, encoding: .utf8)?.prefix(200) ?? ""))")
            }
            guard let json = try JSONSerialization.jsonObject(with: data) as? [String: Any],
                  (json["code"] as? Int) == 0 else {
                let message = (try? JSONSerialization.jsonObject(with: data) as? [String: Any])?["msg"] as? String ?? ""
                throw PlatformError.network("行者 API error：\(message)")
            }
            let rows = ((json["data"] as? [String: Any])?["data"] as? [[String: Any]]) ?? []
            if rows.isEmpty { break }
            for item in rows {
                let id = (item["id"] as? NSNumber)?.int64Value ?? 0
                if id <= 0 { continue }
                // 安卓直接 new Date(startTs)（毫秒）；本文件按毫秒/秒自适应：大于 1e12 视为毫秒，否则视为秒
                let startTs = (item["start_time"] as? NSNumber)?.int64Value ?? 0
                let startMs = startTs > 1_000_000_000_000 ? startTs : startTs * 1000
                // 列表不给爬升与运动类型：爬升记 0，类型默认骑行（下载后由 FitParser 解析补全）。
                result.append(ActivityRecord(
                    id: String(id),
                    source: source,
                    title: (item["title"] as? String)?.isEmpty == false ? (item["title"] as? String)! : "运动 \(id)",
                    startDate: startMs > 0 ? Date(timeIntervalSince1970: TimeInterval(startMs) / 1000) : Date(timeIntervalSince1970: 0),
                    // distance 单位为米
                    distanceMeters: (item["distance"] as? NSNumber)?.doubleValue ?? 0,
                    durationSeconds: Double((item["duration"] as? NSNumber)?.intValue ?? 0),
                    elevationGainMeters: 0,
                    sportType: "cycling",
                    remoteId: String(id),
                    fileName: ""
                ))
            }
            if rows.count < take { break }
            currentOffset += rows.count
            try await Task.sleep(nanoseconds: 150_000_000)
        }
        return result
    }

    /// 默认 FIT 优先、失败回退 GPX（安卓默认策略）。
    /// 返回的 Data 可能是 FIT 或 GPX：调用方按文件头判断（FIT 在 offset 8-9 处为 ".F"，
    /// GPX 以 "<?xml" / "<gpx" 开头）。
    /// 行者 FIT 的时间戳是北京时间（UTC+8），不是标准 UTC：FIT 下回来先减 8 小时
    /// （FitParser.shiftTimestamps，移植自 FitTimeFixer.fixXingzheFitTime），
    /// 再保存/上传，记录中心和目标平台显示的时间才跟行者 App 里一致。
    /// 行者 GPX 的 <time> 同样是北京时间标 Z：下回来先减 8 小时
    /// （GpxParser.fixXingzheGpx，移植自安卓 GpxTimeFixer.fixXingzheGpx），再保存/上传；
    /// 上传到 iGPSPORT 前引擎会再加 8 小时回去（安卓 UploadEngine 两步法），
    /// 因为 iGPSPORT 按北京时间显示 GPX 时间。FIT 那条路不动。
    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        try await downloadActivity(activity, preferGpx: false)
    }

    /// preferGpx=true 时 GPX 优先（行者→iGPSPORT 用 GPX 优先可避免 8 小时时差，安卓 v7.5.2）。
    func downloadActivity(_ activity: ActivityRecord, preferGpx: Bool) async throws -> Data {
        let sessionId = try requireSessionId()
        if preferGpx {
            if let gpx = try? await downloadGpx(sessionId: sessionId, workoutId: activity.id) {
                // GPX 的 <time> 是北京时间标 Z：减 8 小时归一化为 UTC 再返回。
                return GpxParser.fixXingzheGpx(gpx)
            }
            // GPX 不可用，回退 FIT（安卓同款）
        }
        // 方式 1：FIT（优先）——原生支持功率/心率/踏频等扩展数据
        if let fit = try? await downloadFit(sessionId: sessionId, workoutId: activity.id) {
            return FitParser.shiftTimestamps(fit, bySeconds: -8 * 3600)
        }
        // 方式 2：GPX（回退）——注意必须带尾斜杠，否则 Django 返回 401；可能丢失功率等扩展数据
        if let gpx = try? await downloadGpx(sessionId: sessionId, workoutId: activity.id) {
            // GPX 的 <time> 是北京时间标 Z：减 8 小时归一化为 UTC 再返回。
            return GpxParser.fixXingzheGpx(gpx)
        }
        throw PlatformError.network("GPX/FIT 均下载失败 (id=\(activity.id))")
    }

    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        let sessionId = try requireSessionId()
        // 行者只收 FIT：GPX 先用已有的转换器转 FIT 再传（GpxParser.gpxToFit），
        // 不再抛“转换器待接入”。
        let fitData: Data
        let fitFileName: String
        if isFit(data) {
            fitData = data
            fitFileName = fileName
        } else {
            fitData = try GpxParser.gpxToFit(data)
            fitFileName = fileName.lowercased().hasSuffix(".gpx")
                ? String(fileName.dropLast(4)) + ".fit" : fileName
        }
        let md5 = md5Hex(fitData)
        let boundary = "Boundary-\(UUID().uuidString)"
        var body = Data()
        body.appendMultipartFile(field: "fit_file", fileName: fitFileName, mimeType: "application/octet-stream", fileData: fitData, boundary: boundary)
        body.appendMultipartField(name: "md5", value: md5, boundary: boundary)
        body.append("--\(boundary)--\r\n".data(using: .utf8)!)

        var request = URLRequest(url: URL(string: "https://www.imxingzhe.com/api/v1/fit/upload/")!)
        request.httpMethod = "POST"
        request.timeoutInterval = 300
        request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        let csrf = sessionStore.csrf ?? ""
        var cookie = "sessionid=\(sessionId)"
        if !csrf.isEmpty {
            cookie += "; csrftoken=\(csrf)"
            request.setValue(csrf, forHTTPHeaderField: "X-CSRFToken")
        }
        request.setValue(cookie, forHTTPHeaderField: "Cookie")
        request.setValue("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36", forHTTPHeaderField: "User-Agent")
        request.setValue("https://www.imxingzhe.com/upload/fit", forHTTPHeaderField: "Referer")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.httpBody = body

        let (respData, resp) = try await HTTPClient.shared.requestRaw(request)
        let httpCode = resp.statusCode
        let text = String(data: respData, encoding: .utf8) ?? ""
        // 认证失败特征：HTTP 401/403，或 body 含 Authentication credentials，或 body.code == 401
        // （安卓：曾出现 HTTP 200 + code:401 的情况）
        let json = try? JSONSerialization.jsonObject(with: respData) as? [String: Any]
        let bodyCode = json?["code"] as? Int ?? -1
        let authFail = httpCode == 401 || httpCode == 403
            || text.contains("Authentication credentials")
            || text.contains("credentials were not provided")
            || text.contains("not provided")
            || bodyCode == 401
        if authFail {
            throw PlatformError.authFailed("行者上传失败：行者登录已过期或失效，请重新登录行者")
        }
        if httpCode == 200 {
            let workoutId = ((json?["data"] as? [String: Any])?["workout_id"] as? NSNumber)?.int64Value ?? 0
            if bodyCode == 0 && workoutId > 0 {
                return // 上传成功
            }
            if text.contains("文件已上传") || text.contains("9006") {
                // 重复文件：安卓归为“跳过”而非失败；本协议无跳过返回值，视为成功返回
                return
            }
            let message = (json?["msg"] as? String) ?? String(text.prefix(100))
            throw PlatformError.network("行者上传失败：\(message)")
        }
        if httpCode == 400 && (text.contains("9006") || text.contains("文件已上传")) {
            return // 重复文件，跳过
        }
        throw PlatformError.network("行者上传失败：HTTP \(httpCode) \(text.prefix(100))")
    }

    // MARK: - 内部

    private func requireSessionId() throws -> String {
        guard let sessionId = LoginStore.token(for: .xingzhe), !sessionId.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        return sessionId
    }

    private func authHeaders(sessionId: String) -> [String: String] {
        [
            "Cookie": "sessionid=\(sessionId)",
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36",
            "Referer": "https://www.imxingzhe.com/xingzhe/workouts/list",
            "Accept": "application/json, text/plain, */*",
        ]
    }

    private func get(url: URL, sessionId: String) async throws -> (Data, HTTPURLResponse) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.timeoutInterval = 120
        for (key, value) in authHeaders(sessionId: sessionId) {
            request.setValue(value, forHTTPHeaderField: key)
        }
        let (data, http) = try await HTTPClient.shared.requestRaw(request)
        return (data, http)
    }

    /// GET /api/v1/workout/{id}/fit/ —— 多数记录 400/404；仅 Content-Type 非 json/html/xml
    /// 且文件头为 ".FIT" 才算拿到真 FIT。
    private func downloadFit(sessionId: String, workoutId: String) async throws -> Data {
        let url = URL(string: "\(Self.base)/workout/\(workoutId)/fit/")!
        let (data, http) = try await get(url: url, sessionId: sessionId)
        guard http.statusCode == 200 else {
            throw PlatformError.network("FIT 不可用 (HTTP \(http.statusCode))")
        }
        let contentType = (http.value(forHTTPHeaderField: "Content-Type") ?? "").lowercased()
        guard !contentType.contains("json"), !contentType.contains("html"), !contentType.contains("xml"),
              isFit(data) else {
            throw PlatformError.parse("FIT 返回非 FIT 数据")
        }
        return data
    }

    /// GET /api/v1/pgworkout/{id}/gpx/ —— 必须带尾斜杠；正文以 "<?xml" 或 "<gpx" 开头才算真 GPX。
    private func downloadGpx(sessionId: String, workoutId: String) async throws -> Data {
        let url = URL(string: "\(Self.base)/pgworkout/\(workoutId)/gpx/")!
        let (data, http) = try await get(url: url, sessionId: sessionId)
        guard http.statusCode == 200, data.count > 100 else {
            throw PlatformError.network("GPX 不可用 (HTTP \(http.statusCode))")
        }
        let head = String(data: data.prefix(60), encoding: .utf8) ?? ""
        guard head.contains("<?xml") || head.contains("<gpx") else {
            throw PlatformError.parse("GPX 返回非 GPX 数据")
        }
        return data
    }

    private func isFit(_ data: Data) -> Bool {
        data.count >= 14 && data[8] == UInt8(ascii: ".") && data[9] == UInt8(ascii: "F")
    }

    private func md5Hex(_ data: Data) -> String {
        Insecure.MD5.hash(data: data).map { String(format: "%02x", $0) }.joined()
    }
}

/// 行者 sessionid 不再放内存（走 LoginStore 钥匙串）；csrf 仍只放内存，随会话失效。
final class XingzheSessionStore {
    var csrf: String?
}

// MARK: - multipart 小工具

extension Data {
    mutating func appendMultipartField(name: String, value: String, boundary: String) {
        append("--\(boundary)\r\n".data(using: .utf8)!)
        append("Content-Disposition: form-data; name=\"\(name)\"\r\n\r\n".data(using: .utf8)!)
        append("\(value)\r\n".data(using: .utf8)!)
    }

    mutating func appendMultipartFile(field: String, fileName: String, mimeType: String, fileData: Data, boundary: String) {
        append("--\(boundary)\r\n".data(using: .utf8)!)
        append("Content-Disposition: form-data; name=\"\(field)\"; filename=\"\(fileName)\"\r\n".data(using: .utf8)!)
        append("Content-Type: \(mimeType)\r\n\r\n".data(using: .utf8)!)
        append(fileData)
        append("\r\n".data(using: .utf8)!)
    }
}

// 待真机验证
// iGPSPORT（国内 + 国际）— 对照安卓 IgpsportApi.kt（v9.6.9）原样移植
//
// 登录：安卓无账号密码直登接口，登录在 WebView 里完成
//   （https://login.passport.igpsport.cn/login?lang=zh-Hans），
//   从 WebView localStorage persist:app-store → global.token 取 Bearer token。
//   本文件 login(username:password:) 因此抛 unsupported，App 层登录页拿到 token 后
//   调 setToken(_:) 注入；登录页地址见 static let loginURL。
// 列表：GET https://prod.zh.igpsport.com/service/web-gateway/web-analyze/activity/queryMyActivity
//       ?pageNo=&pageSize=20&reqType=0&sort=1，头 Authorization: Bearer {token}，业务码 code==0。
//       服务端不支持 offset：拉 offset+limit 条再丢弃前 offset 条（安卓同款做法）。
// 下载：列表里如有 DownloadUrl/FileUrl 直接下载；否则
//       GET .../web-analyze/activity/getDownloadUrl/{rideId} 取直链再下载。
// 上传：三步 OSS 直传（见 UploadEngine.kt uploadToIgpsport）：
//       1) GET .../sportg/third-party-server/oss/getSignedUrl?fileExtension=.fit/.gpx
//       2) PUT 文件到 signedUrl（不带 Content-Type，403/400 时再试带 application/octet-stream）
//       3) POST .../web-gateway/web-analyze/activity/uploadByOss {fileName, ossName, title, name, activityName}
//       上传是异步解析，code∈{200,0} 即已入队，不代表已入库。
// 国际版：安卓源码里 IGPSPORT_INT 与国内共用同一套 prod.zh.igpsport.com 域名与同一登录页
//   （AuthCoordinator 共用 LOGIN_URL，UploadSupport 共用同一上传通道），源码中没有出现过
//   单独的国际域名。IgpsportIntlAPI 因此先复用同一 BASE，待真机验证国际账号是否走同一域名。
// 密钥：无固定密钥，token 全部运行时注入，本文件不含任何真实凭证。
// 网络：状态敏感调用走 HTTPClient.shared.requestRaw（非 2xx 不抛错，返回原始响应供调用方按状态码处理）。

import Foundation

/// iGPSPORT 国内
struct IgpsportAPI: PlatformAPI {
    let source: DataSource = .igpsport

    static let loginURL = "https://login.passport.igpsport.cn/login?lang=zh-Hans"
    static let appOrigin = "https://app.igpsport.cn"

    // 与 IgpsportIntlAPI 共用的实现（同一套接口，只是 source 不同）
    let impl: IgpsportCore

    init() { self.impl = IgpsportCore(source: .igpsport) }
    init(shared impl: IgpsportCore) { self.impl = impl }

    /// WebView 登录后把 Bearer token 交给本实例（Keychain 落盘由 App 层负责）。
    func setToken(_ token: String) { impl.setToken(token) }

    func isLoggedIn() async -> Bool { await impl.isLoggedIn() }

    func login(username: String, password: String) async throws {
        // 安卓无账号密码直登接口；iGPSPORT 只能在登录页（见 loginURL）登录后取 token。
        throw PlatformError.unsupported("iGPSPORT 不支持账号密码直登，请在登录页登录后由 App 注入 token")
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        try await impl.fetchActivities(limit: limit, skip: skip)
    }

    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        try await impl.downloadActivity(activity)
    }

    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        try await impl.uploadActivity(data: data, fileName: fileName, activity: activity)
    }
}

/// iGPSPORT 国际 — 接口与国内共用同一域名（见文件头说明），待真机验证
struct IgpsportIntlAPI: PlatformAPI {
    let source: DataSource = .igpsportIntl

    static let loginURL = IgpsportAPI.loginURL

    let impl: IgpsportCore

    init() { self.impl = IgpsportCore(source: .igpsportIntl) }
    init(shared impl: IgpsportCore) { self.impl = impl }

    /// WebView 登录后把 Bearer token 交给本实例（Keychain 落盘由 App 层负责）。
    func setToken(_ token: String) { impl.setToken(token) }

    func isLoggedIn() async -> Bool { await impl.isLoggedIn() }

    func login(username: String, password: String) async throws {
        // TODO: 待真机验证 — 国际账号是否可用同一登录页、同一套接口；如走单独域名，需在此改 BASE。
        throw PlatformError.unsupported("iGPSPORT 国际不支持账号密码直登，请在登录页登录后由 App 注入 token")
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        try await impl.fetchActivities(limit: limit, skip: skip)
    }

    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        try await impl.downloadActivity(activity)
    }

    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        try await impl.uploadActivity(data: data, fileName: fileName, activity: activity)
    }
}

// MARK: - 共用实现（国内/国际同一套接口）

/// iGPSPORT 列表/下载/上传的实际实现。国内与国际两个 struct 共用。
final class IgpsportCore {
    let source: DataSource

    private static let base = "https://prod.zh.igpsport.com/service"
    private static let activityURL = base + "/web-gateway/web-analyze/activity/queryMyActivity"
    private static let downloadURL = base + "/web-gateway/web-analyze/activity/getDownloadUrl"
    private static let signedURL = base + "/sportg/third-party-server/oss/getSignedUrl"
    private static let uploadByOssURL = base + "/web-gateway/web-analyze/activity/uploadByOss"
    private static let perPage = 20

    private let tokenStore = IgpsportTokenStore()
    /// 列表里拿到的直链下载地址（ActivityRecord 没有 extra 字段，暂存这里供下载用）。
    private var downloadUrlCache: [String: String] = [:]

    init(source: DataSource) { self.source = source }

    func setToken(_ token: String) { tokenStore.token = token }

    private func requireToken() throws -> String {
        guard let token = tokenStore.token, !token.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        return token
    }

    private func authHeaders(token: String) -> [String: String] {
        [
            "Authorization": "Bearer \(token)",
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0",
            "Accept": "application/json, text/plain, */*",
            "Accept-Language": "zh-CN,zh;q=0.9",
            "Origin": "https://app.igpsport.cn",
            "Referer": "https://app.igpsport.cn/",
        ]
    }

    private func get(url: URL, headers: [String: String]) async throws -> (Data, HTTPURLResponse) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.timeoutInterval = 120
        for (key, value) in headers { request.setValue(value, forHTTPHeaderField: key) }
        let (data, http) = try await HTTPClient.shared.requestRaw(request)
        return (data, http)
    }

    /// 只看本地有没有 token，不发网络请求（协议口径）。
    /// 安卓曾用 queryMyActivity 实测校验 token，如需实测校验由 App 层另调 fetchActivities(limit: 1)。
    func isLoggedIn() async -> Bool {
        guard let token = tokenStore.token, !token.isEmpty else { return false }
        return true
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        let token = try requireToken()
        let need = skip + limit
        var result: [ActivityRecord] = []
        var currentPage = 1
        var fetched = 0
        while fetched < need {
            let url = URL(string: "\(Self.activityURL)?pageNo=\(currentPage)&pageSize=\(Self.perPage)&reqType=0&sort=1")!
            let (data, http) = try await get(url: url, headers: authHeaders(token: token))
            if http.statusCode == 401 {
                throw PlatformError.authFailed("iGPSPORT 登录已过期，请重新登录")
            }
            guard http.statusCode == 200 else {
                throw PlatformError.network("iGPSPORT HTTP \(http.statusCode)：\(String(data: data, encoding: .utf8)?.prefix(200) ?? "")")
            }
            guard let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                throw PlatformError.parse("iGPSPORT 列表解析失败")
            }
            let apiCode = json["code"] as? Int ?? -1
            if apiCode != 0 {
                let message = (json["message"] as? String) ?? (json["data"] as? String) ?? "Unknown"
                if message.localizedCaseInsensitiveContains("token") || message.contains("登录") {
                    throw PlatformError.authFailed("iGPSPORT 登录已过期，请重新登录")
                }
                throw PlatformError.network("iGPSPORT API error：\(message) (code=\(apiCode))")
            }
            let dataObj = (json["data"] as? [String: Any]) ?? json
            let rows = (dataObj["rows"] as? [[String: Any]]) ?? (dataObj["list"] as? [[String: Any]]) ?? []
            if rows.isEmpty { break }
            for item in rows {
                fetched += 1
                if fetched <= skip { continue }
                let rideId = stringField(item, keys: ["RideId", "rideId", "id"])
                if rideId.isEmpty { continue }
                let downloadUrl = stringField(item, keys: ["DownloadUrl", "downloadUrl", "FileUrl", "fileUrl"])
                // 距离：>=1000 视为米，否则视为公里（安卓同款探测）
                var dist = doubleField(item, keys: ["Distance", "distance"], default: -1)
                if dist < 0 { dist = doubleField(item, keys: ["sportDistance"], default: 0) }
                let distKm = dist >= 1000 ? dist / 1000.0 : dist
                let startMs = resolveStartTimeMs(item: item, rideId: rideId)
                let title = stringField(item, keys: ["Title", "title", "name"], default: "骑行")
                // 列表不给爬升与运动类型：爬升记 0，类型默认骑行（下载后由 FitParser 解析补全）。
                if !downloadUrl.isEmpty { downloadUrlCache[rideId] = downloadUrl }
                result.append(ActivityRecord(
                    id: rideId,
                    source: source,
                    title: title,
                    startDate: startMs > 0 ? Date(timeIntervalSince1970: TimeInterval(startMs) / 1000) : Date(timeIntervalSince1970: 0),
                    distanceMeters: distKm * 1000,
                    durationSeconds: Double(intField(item, keys: ["Duration", "duration", "movingTime"])),
                    elevationGainMeters: 0,
                    sportType: "cycling",
                    remoteId: rideId,
                    fileName: ""
                ))
                if result.count >= limit { break }
            }
            if result.count >= limit || rows.count < Self.perPage { break }
            currentPage += 1
            try await Task.sleep(nanoseconds: 200_000_000)
        }
        return result
    }

    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        let token = try requireToken()
        let downloadUrl: String
        if let cached = downloadUrlCache[activity.id], !cached.isEmpty {
            downloadUrl = cached
        } else {
            let url = URL(string: "\(Self.downloadURL)/\(activity.id)")!
            let (data, _) = try await get(url: url, headers: authHeaders(token: token))
            guard let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                throw PlatformError.parse("下载地址解析失败 (rideId=\(activity.id))")
            }
            if let dataString = json["data"] as? String {
                downloadUrl = dataString
            } else if let dataObj = json["data"] as? [String: Any] {
                downloadUrl = (dataObj["url"] as? String) ?? (dataObj["downloadUrl"] as? String) ?? ""
            } else {
                downloadUrl = (json["url"] as? String) ?? (json["downloadUrl"] as? String) ?? ""
            }
            if downloadUrl.isEmpty {
                throw PlatformError.network("无下载地址 (rideId=\(activity.id))")
            }
        }
        var request = URLRequest(url: URL(string: downloadUrl)!)
        request.httpMethod = "GET"
        request.timeoutInterval = 120
        request.setValue("Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0", forHTTPHeaderField: "User-Agent")
        request.setValue("*/*", forHTTPHeaderField: "Accept")
        request.setValue("https://app.igpsport.cn/", forHTTPHeaderField: "Referer")
        let (bytes, http) = try await HTTPClient.shared.requestRaw(request)
        guard http.statusCode == 200 else {
            throw PlatformError.network("iGPSPORT FIT 下载失败 HTTP \(http.statusCode)")
        }
        return bytes
    }

    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        let token = try requireToken()
        // 按文件头判断真实类型：FIT 在 offset 8-9 处为 ".F"；否则按 GPX 传（安卓 v6.2.3：扩展名须与类型一致）
        let isFitFile = data.count >= 14 && data[8] == UInt8(ascii: ".") && data[9] == UInt8(ascii: "F")
        let ext = isFitFile ? "fit" : "gpx"
        let headers = authHeaders(token: token)

        // 1) 取 OSS 签名地址
        let signedUrlString = "\(Self.signedURL)?fileExtension=.\(ext)"
        let (signedData, signedHttp) = try await get(url: URL(string: signedUrlString)!, headers: headers)
        if signedHttp.statusCode == 401 || signedHttp.statusCode == 403 {
            throw PlatformError.authFailed("iGPSPORT 上传失败：登录已过期 (HTTP \(signedHttp.statusCode))，请重新登录")
        }
        guard signedHttp.statusCode == 200 else {
            throw PlatformError.network("iGPSPORT 上传失败：获取上传地址 HTTP \(signedHttp.statusCode)")
        }
        guard let signedJson = try JSONSerialization.jsonObject(with: signedData) as? [String: Any],
              let dataObj = signedJson["data"] as? [String: Any],
              let signedUrl = dataObj["signedUrl"] as? String, !signedUrl.isEmpty,
              let ossId = dataObj["ossId"] as? String else {
            throw PlatformError.parse("iGPSPORT 上传失败：未获取到上传地址")
        }

        // 2) PUT 文件到 OSS：先不带 Content-Type（签名绑定校验，带了会 403），403/400 时再试带上
        var putRequest = URLRequest(url: URL(string: signedUrl)!)
        putRequest.httpMethod = "PUT"
        putRequest.timeoutInterval = 300
        putRequest.httpBody = data
        var (_, putHttp) = try await HTTPClient.shared.requestRaw(putRequest)
        var putCode = putHttp.statusCode
        if !(200...299).contains(putCode), putCode == 403 || putCode == 400 {
            var retryRequest = URLRequest(url: URL(string: signedUrl)!)
            retryRequest.httpMethod = "PUT"
            retryRequest.timeoutInterval = 300
            retryRequest.setValue("application/octet-stream", forHTTPHeaderField: "Content-Type")
            retryRequest.httpBody = data
            (_, putHttp) = try await HTTPClient.shared.requestRaw(retryRequest)
            putCode = putHttp.statusCode
        }
        guard (200...299).contains(putCode) else {
            throw PlatformError.network("iGPSPORT 上传失败：OSS 上传 HTTP \(putCode)")
        }

        // 3) 通知 iGPSPORT 解析入库（异步解析，code∈{200,0} 即已入队）
        let title = activity.title.isEmpty ? "骑行" : activity.title
        let body: [String: Any] = [
            "fileName": fileName,
            "ossName": ossId,
            "title": title,
            "name": title,
            "activityName": title,
        ]
        var notifyRequest = URLRequest(url: URL(string: Self.uploadByOssURL)!)
        notifyRequest.httpMethod = "POST"
        notifyRequest.timeoutInterval = 120
        notifyRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        for (key, value) in headers { notifyRequest.setValue(value, forHTTPHeaderField: key) }
        notifyRequest.httpBody = try JSONSerialization.data(withJSONObject: body)
        let (notifyData, notifyHttp) = try await HTTPClient.shared.requestRaw(notifyRequest)
        let notifyCode = notifyHttp.statusCode
        let notifyText = String(data: notifyData, encoding: .utf8) ?? ""
        if notifyCode == 200 {
            if let json = try? JSONSerialization.jsonObject(with: notifyData) as? [String: Any],
               let code = json["code"] as? Int, code == 200 || code == 0 {
                return // 已接收，异步解析中
            }
            throw PlatformError.network("iGPSPORT 上传失败：\(notifyText.prefix(150))")
        }
        if notifyCode == 401 || notifyCode == 403 {
            throw PlatformError.authFailed("iGPSPORT 上传失败：登录已过期 (HTTP \(notifyCode))")
        }
        throw PlatformError.network("iGPSPORT 上传失败：HTTP \(notifyCode) \(notifyText.prefix(100))")
    }

    // MARK: - 时间字段探测（安卓 probeTimeField + v8.2.5 三重兜底）

    private static let timeStringKeys = [
        "StartTime", "startTime", "start_time", "RideDate", "rideDate", "ride_date",
        "SportTime", "sportTime", "BeginTime", "beginTime", "RideTime", "rideTime",
        "createTime", "CreateTime", "start_date", "startDate", "Date", "date", "Time", "time",
        "StartTimeStr", "startTimeStr", "StartDate",
    ]

    private func probeTimeField(_ item: [String: Any]) -> String {
        for key in Self.timeStringKeys {
            if let value = item[key] as? String, !value.isEmpty { return value }
        }
        return ""
    }

    private func resolveStartTimeMs(item: [String: Any], rideId: String) -> Int {
        // ① 数字时间戳字段（13 位毫秒 / 10 位秒）
        let tsKeys = ["StartTime", "startTime", "start_time", "RideDate", "rideDate", "BeginTime", "beginTime",
                      "createTime", "CreateTime", "RideTime", "rideTime", "start_date", "startDate", "Date", "date"]
        for key in tsKeys {
            var value: Int64 = 0
            if let number = item[key] as? NSNumber { value = number.int64Value }
            else if let string = item[key] as? String { value = Int64(string) ?? 0 }
            if value > 1_000_000_000 {
                return Int(value > 1_000_000_000_000 ? value : value * 1000)
            }
        }
        // ② 字符串时间字段解析
        let startTime = probeTimeField(item)
        if !startTime.isEmpty, let ms = IgpsportCore.parseStartTimeMs(startTime) {
            return ms
        }
        // ③ id/title 内嵌 yyyyMMdd_HHmmss（如 kp_20200804_082017_running_...）
        let title = (item["Title"] as? String) ?? (item["title"] as? String) ?? ""
        let combined = "\(rideId)|\(title)"
        if let match = combined.range(of: #"\d{4}\d{2}\d{2}_\d{2}\d{2}\d{2}"#, options: .regularExpression) {
            let digits = combined[match].replacingOccurrences(of: "_", with: "")
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyyMMddHHmmss"
            formatter.timeZone = TimeZone.current
            if let date = formatter.date(from: String(digits)) {
                return Int(date.timeIntervalSince1970 * 1000)
            }
        }
        return 0
    }

    /// 解析 "yyyy-MM-dd HH:mm:ss" / ISO8601 等常见字符串时间为 Unix 毫秒；解析失败返回 nil。
    static func parseStartTimeMs(_ string: String) -> Int? {
        let iso = ISO8601DateFormatter()
        if let date = iso.date(from: string) {
            return Int(date.timeIntervalSince1970 * 1000)
        }
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        for format in ["yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd'T'HH:mm:ss", "yyyy/MM/dd HH:mm:ss", "yyyy-MM-dd"] {
            formatter.dateFormat = format
            if let date = formatter.date(from: string) {
                return Int(date.timeIntervalSince1970 * 1000)
            }
        }
        // 纯数字字符串当时间戳处理
        if let value = Int64(string), value > 1_000_000_000 {
            return Int(value > 1_000_000_000_000 ? value : value * 1000)
        }
        return nil
    }

    // MARK: - JSON 小工具

    private func stringField(_ item: [String: Any], keys: [String], default defaultValue: String = "") -> String {
        for key in keys {
            if let value = item[key] as? String, !value.isEmpty { return value }
            if let number = item[key] as? NSNumber { return number.stringValue }
        }
        return defaultValue
    }

    private func doubleField(_ item: [String: Any], keys: [String], default defaultValue: Double = 0) -> Double {
        for key in keys {
            if let number = item[key] as? NSNumber { return number.doubleValue }
            if let string = item[key] as? String, let value = Double(string) { return value }
        }
        return defaultValue
    }

    private func intField(_ item: [String: Any], keys: [String], default defaultValue: Int = 0) -> Int {
        for key in keys {
            if let number = item[key] as? NSNumber { return number.intValue }
            if let string = item[key] as? String, let value = Int(string) { return value }
        }
        return defaultValue
    }
}

/// iGPSPORT token 只放内存；Keychain 落盘与恢复由 App 层负责（登录页注入时一并保存）。
final class IgpsportTokenStore {
    var token: String?
}

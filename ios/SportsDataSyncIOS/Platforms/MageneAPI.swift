// 待真机验证
// 迈金 / 顽鹿 OTM — 对照安卓 MageneApi.kt + UploadEngine.kt uploadToMagene
//   + MageneWebUploader.kt（v9.6.9）原样移植
//
// 登录：POST https://otm.onelap.cn/api/login {"account":手机号,"password":MD5(密码)}
//   → data[0].token（JWT，裸用，不加 Bearer 前缀）+ refresh_token。
//   刷新：POST /api/token {"token":refresh_token,"from":"web","to":"web"}。
// 列表：POST /api/otm/ride_record/list {"page":n,"limit":20} + Authorization: {token}，
//   业务码 code==200，data.list，翻页看 data.pagination.has_more。
// 下载：GET /api/otm/ride_record/analysis/{id} → data.ridingRecord.durl / fitUrl：
//   ① durl 七牛签名直链（老记录，WGS84，无需转换）；
//   ② 回退 fit_content/{base64(fitUrl)}（官方网页端同款，新记录必用，GCJ-02，需转换）。
//   注意：2025-10 后新记录未上传七牛，durl 常为空；无 fitUrl 的记录（如虚拟路线）无 FIT 文件。
// 上传：POST /api/otm/ride_record/upload/fit，multipart 字段名必须是 jilu0
//   （网页 JS 里是 jilu，程序化上传需 jilu0），鉴权 Authorization 直接带登录 token，
//   Origin/Referer 为 https://otm.onelap.cn；返回 code==200 且 data.success_count>=1
//   即接收成功（异步入库，约 15-20 秒后出现在列表）。
//   历史背景：程序化构造的 File 曾一律返回 422 {"code":422,"message":"没有上传文件"}，
//   唯一成功路径是 WebView 真实文件选择（见 MageneWebUploader.kt）；2026-09 实测
//   jilu0 新接口可直传，本文件走新接口，不走 WebView。
//   迈金只收 FIT：GPX 必须先转 FIT（安卓用自研 GpxToFitConverter 完整消息流；官方
//   gpx2fit.js 只生成 file_id+record，缺 session/lap/activity，迈金异步入库时丢弃）。
//   iOS 转换器尚未接入，本文件遇到非 FIT 直接抛错，见 uploadActivity。
// 坐标：fit_content 来源的 FIT 为 GCJ-02，用 Core FitParser.convertGcj02ToWgs84InFit
//   转 WGS-84（参考安卓 FitGcj02Fixer.kt；七牛直链来源为 WGS84，不转换）。
// 密钥：无固定密钥，token 全部运行时注入，本文件不含任何真实凭证。
// 网络：状态敏感调用走 HTTPClient.shared.requestRaw（非 2xx 不抛错，返回原始响应供调用方按状态码处理）。

import CryptoKit
import Foundation

struct MageneAPI: PlatformAPI {
    let source: DataSource = .magene

    static let loginURL = "https://otm.onelap.cn/login"

    private static let base = "https://otm.onelap.cn"
    private static let perPage = 20

    private let credentialStore = MageneCredentialStore()

    /// 当前 access token（登录后由 login 写入；App 层也可直接注入已保存的 token）。
    func setToken(_ token: String, refreshToken: String? = nil) {
        credentialStore.token = token
        if let refreshToken { credentialStore.refreshToken = refreshToken }
    }

    /// 只看本地有没有 token，不发网络请求（协议口径）。
    /// 安卓曾校验 JWT exp 并用列表接口实测，如需实测校验由 App 层另调 fetchActivities(limit: 1)。
    func isLoggedIn() async -> Bool {
        guard let token = credentialStore.token, !token.isEmpty else { return false }
        return true
    }

    /// 账号密码登录：密码取 MD5（安卓同款）。成功返回时 token 已写入本实例。
    func login(username: String, password: String) async throws {
        let body: [String: Any] = ["account": username, "password": md5Hex(password)]
        var request = URLRequest(url: URL(string: "\(Self.base)/api/login")!)
        request.httpMethod = "POST"
        request.timeoutInterval = 30
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0", forHTTPHeaderField: "User-Agent")
        request.setValue(Self.base, forHTTPHeaderField: "Origin")
        request.setValue("\(Self.base)/login", forHTTPHeaderField: "Referer")
        request.httpBody = try JSONSerialization.data(withJSONObject: body)
        let (data, _) = try await HTTPClient.shared.requestRaw(request)
        guard let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
            throw PlatformError.parse("迈金登录失败：响应解析失败")
        }
        let code = json["code"] as? Int ?? -1
        guard code == 200 else {
            let message: String
            if let err = json["error"] as? String {
                message = err
            } else if let body = String(data: data, encoding: .utf8) {
                message = String(body.prefix(100))
            } else {
                message = ""
            }
            throw PlatformError.authFailed("迈金登录失败：\(message)")
        }
        guard let array = json["data"] as? [[String: Any]] else {
            throw PlatformError.parse("迈金登录失败：登录响应无 data")
        }
        var token = ""
        var refresh = ""
        for item in array where item["token"] != nil {
            token = (item["token"] as? String) ?? ""
            refresh = (item["refresh_token"] as? String) ?? ""
            break
        }
        guard !token.isEmpty else {
            throw PlatformError.parse("迈金登录失败：登录响应无 token")
        }
        credentialStore.token = token
        credentialStore.refreshToken = refresh
    }

    /// POST /api/token {"token":refresh_token,"from":"web","to":"web"}，换不到返回 nil。
    func refreshToken(_ refreshToken: String) async throws -> String? {
        let body: [String: Any] = ["token": refreshToken, "from": "web", "to": "web"]
        var request = URLRequest(url: URL(string: "\(Self.base)/api/token")!)
        request.httpMethod = "POST"
        request.timeoutInterval = 30
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        request.httpBody = try JSONSerialization.data(withJSONObject: body)
        let (data, _) = try await HTTPClient.shared.requestRaw(request)
        guard let json = try JSONSerialization.jsonObject(with: data) as? [String: Any],
              let token = (json["data"] as? [String: Any])?["token"] as? String,
              !token.isEmpty else {
            return nil
        }
        return token
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        let token = try requireToken()
        var result: [ActivityRecord] = []
        var page = skip / Self.perPage + 1
        var skipLeft = skip % Self.perPage
        while result.count < limit {
            let body: [String: Any] = ["page": page, "limit": Self.perPage]
            let (data, http) = try await postJSON(
                url: URL(string: "\(Self.base)/api/otm/ride_record/list")!,
                jsonBody: body, token: token
            )
            if http.statusCode == 401 {
                throw PlatformError.authFailed("迈金登录已过期，请重新登录")
            }
            guard let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                throw PlatformError.parse("迈金列表解析失败")
            }
            let code = json["code"] as? Int ?? -1
            if code == 401 {
                throw PlatformError.authFailed("迈金登录已过期，请重新登录")
            }
            guard code == 200 else {
                let message: String
                if let err = json["error"] as? String {
                    message = err
                } else if let body = String(data: data, encoding: .utf8) {
                    message = String(body.prefix(100))
                } else {
                    message = ""
                }
                throw PlatformError.network("迈金列表错误：\(message)")
            }
            guard let dataObj = json["data"] as? [String: Any],
                  let rows = dataObj["list"] as? [[String: Any]], !rows.isEmpty else {
                break
            }
            for item in rows {
                if skipLeft > 0 { skipLeft -= 1; continue }
                let id = (item["id"] as? String) ?? ""
                if id.isEmpty { continue }
                let startTime = (item["start_riding_time"] as? String) ?? ""
                let startRaw = (item["start_riding_time"] as? NSNumber)?.int64Value ?? 0
                let startMs = startRaw > 1_000_000_000
                    ? (startRaw > 1_000_000_000_000 ? startRaw : startRaw * 1000) : 0
                var name = (item["name"] as? String) ?? ""
                if name == "null" { name = "" }
                let title = name.isEmpty
                    ? (String(startTime.prefix(10)).isEmpty ? "骑行 \(id.prefix(8))" : "\(startTime.prefix(10)) 骑行")
                    : name
                // 列表不给爬升与运动类型：爬升记 0，类型默认骑行（下载后由 FitParser 解析补全）。
                result.append(ActivityRecord(
                    id: id,
                    source: source,
                    title: title,
                    startDate: startMs > 0 ? Date(timeIntervalSince1970: TimeInterval(startMs) / 1000) : Date(timeIntervalSince1970: 0),
                    distanceMeters: ((item["distance_km"] as? NSNumber)?.doubleValue ?? 0) * 1000,
                    durationSeconds: Double((item["time_seconds"] as? NSNumber)?.intValue ?? 0),
                    elevationGainMeters: 0,
                    sportType: "cycling",
                    remoteId: id,
                    fileName: ""
                ))
                if result.count >= limit { break }
            }
            let hasMore = ((json["data"] as? [String: Any])?["pagination"] as? [String: Any])?["has_more"] as? Bool ?? false
            if !hasMore || rows.count < Self.perPage { break }
            page += 1
            try await Task.sleep(nanoseconds: 150_000_000)
        }
        return result
    }

    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        let token = try requireToken()
        var request = URLRequest(url: URL(string: "\(Self.base)/api/otm/ride_record/analysis/\(activity.id)")!)
        request.httpMethod = "GET"
        request.timeoutInterval = 120
        request.setValue(token, forHTTPHeaderField: "Authorization")
        request.setValue("Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0", forHTTPHeaderField: "User-Agent")
        request.setValue(Self.base, forHTTPHeaderField: "Origin")
        request.setValue("\(Self.base)/calendar", forHTTPHeaderField: "Referer")
        let (data, http) = try await HTTPClient.shared.requestRaw(request)
        if http.statusCode == 401 {
            throw PlatformError.authFailed("迈金登录已过期，请重新登录")
        }
        guard let json = try JSONSerialization.jsonObject(with: data) as? [String: Any],
              (json["code"] as? Int) == 200 else {
            throw PlatformError.network("迈金详情错误：\(String(String(data: data, encoding: .utf8)?.prefix(100) ?? ""))")
        }
        let riding = ((json["data"] as? [String: Any])?["ridingRecord"] as? [String: Any]) ?? [:]
        let durl = (riding["durl"] as? String) ?? ""
        let fitUrl = (riding["fitUrl"] as? String) ?? ""

        // ① durl 七牛直链（老记录，WGS84，无需转换）
        if !durl.isEmpty {
            if let bytes = try? await downloadFile(urlString: durl), isFit(bytes) {
                return bytes
            }
            // durl 不可用（新记录常 404），回退 fit_content
        }

        // ② fit_content/{base64(fitUrl)} —— 官方网页端同款，全格式通用；返回的 FIT 为 GCJ-02
        guard !fitUrl.isEmpty else {
            throw PlatformError.network("该记录无 FIT 文件（fitUrl 为空，可能是虚拟路线）")
        }
        let b64 = Data(fitUrl.utf8).base64EncodedString()
        var fcRequest = URLRequest(url: URL(string: "\(Self.base)/api/otm/ride_record/analysis/fit_content/\(b64)")!)
        fcRequest.httpMethod = "GET"
        fcRequest.timeoutInterval = 120
        fcRequest.setValue(token, forHTTPHeaderField: "Authorization")
        fcRequest.setValue("Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0", forHTTPHeaderField: "User-Agent")
        fcRequest.setValue(Self.base, forHTTPHeaderField: "Origin")
        fcRequest.setValue("\(Self.base)/calendar", forHTTPHeaderField: "Referer")
        let (fcBytes, fcHttp) = try await HTTPClient.shared.requestRaw(fcRequest)
        let fcCode = fcHttp.statusCode
        guard fcCode == 200, isFit(fcBytes) else {
            throw PlatformError.network("FIT 获取失败（fit_content HTTP \(fcCode)，size=\(fcBytes.count)）")
        }
        // GCJ-02 → WGS-84（Core FitParser 内建转换；失败时原样返回原数据，不丢记录）
        return FitParser.convertGcj02ToWgs84InFit(fcBytes) ?? fcBytes
    }

    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        let token = try requireToken()
        // 迈金只收 FIT；GPX 必须先转 FIT（安卓自研 GpxToFitConverter 完整消息流）。
        // TODO: 待接入 GPX→FIT 转换器（官方 gpx2fit.js 不可用：只生成 file_id+record，
        //   缺 session/lap/activity，迈金异步入库时丢弃）。
        guard isFit(data) else {
            throw PlatformError.unsupported("迈金只接收 FIT 文件，GPX 需先转 FIT；iOS 转换器待接入")
        }
        let boundary = "Boundary-\(UUID().uuidString)"
        var body = Data()
        body.appendMultipartFile(field: "jilu0", fileName: fileName, mimeType: "application/octet-stream", fileData: data, boundary: boundary)
        body.append("--\(boundary)--\r\n".data(using: .utf8)!)

        var request = URLRequest(url: URL(string: "\(Self.base)/api/otm/ride_record/upload/fit")!)
        request.httpMethod = "POST"
        request.timeoutInterval = 300
        request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        request.setValue("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36", forHTTPHeaderField: "User-Agent")
        request.setValue(token, forHTTPHeaderField: "Authorization")
        request.setValue(Self.base, forHTTPHeaderField: "Origin")
        request.setValue("\(Self.base)/analysis", forHTTPHeaderField: "Referer")
        request.httpBody = body

        let (respData, resp) = try await HTTPClient.shared.requestRaw(request)
        let httpCode = resp.statusCode
        let text = String(data: respData, encoding: .utf8) ?? ""
        guard httpCode == 200,
              let json = try? JSONSerialization.jsonObject(with: respData) as? [String: Any],
              (json["code"] as? Int) == 200,
              ((json["data"] as? [String: Any])?["success_count"] as? Int ?? 0) >= 1 else {
            throw PlatformError.network("迈金上传失败：HTTP \(httpCode) \(text.prefix(100))")
        }
        // 成功仅表示已接收；异步入库，约 15-20 秒后出现在列表
    }

    // MARK: - 内部

    private func requireToken() throws -> String {
        guard let token = credentialStore.token, !token.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        return token
    }

    private func postJSON(url: URL, jsonBody: [String: Any], token: String) async throws -> (Data, HTTPURLResponse) {
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.timeoutInterval = 120
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue(token, forHTTPHeaderField: "Authorization")
        request.setValue("Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0", forHTTPHeaderField: "User-Agent")
        request.setValue(Self.base, forHTTPHeaderField: "Origin")
        request.setValue("\(Self.base)/calendar", forHTTPHeaderField: "Referer")
        request.httpBody = try JSONSerialization.data(withJSONObject: jsonBody)
        let (data, http) = try await HTTPClient.shared.requestRaw(request)
        return (data, http)
    }

    private func downloadFile(urlString: String) async throws -> Data {
        var request = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = "GET"
        request.timeoutInterval = 120
        request.setValue("Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0", forHTTPHeaderField: "User-Agent")
        let (data, response) = try await HTTPClient.shared.requestRaw(request)
        guard response.statusCode == 200 else {
            throw PlatformError.network("文件下载失败 HTTP \(response.statusCode)")
        }
        return data
    }

    private func isFit(_ data: Data) -> Bool {
        data.count >= 14 && data[8] == UInt8(ascii: ".") && data[9] == UInt8(ascii: "F")
    }

    private func md5Hex(_ string: String) -> String {
        Insecure.MD5.hash(data: Data(string.utf8)).map { String(format: "%02x", $0) }.joined()
    }
}

/// 迈金 token / refresh_token 只放内存；Keychain 落盘与恢复由 App 层负责。
final class MageneCredentialStore {
    var token: String?
    var refreshToken: String?
}

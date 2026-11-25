// 待真机验证
// 捷安特骑行 Giant — 对照安卓 GiantApi.kt（v9.6.9）原样移植，纯 API 直传，无需浏览器
//
// 登录：POST https://ridelife.giant.com.cn/index.php/api/login
//   form 表单 username + password（明文，不加密）
//   → {status:1, user:{nickname, userId, ...}, user_token}。
// 校验：POST /index.php/api/fit_list，form 字段 token，status==1 即 token 有效。
// 上传：POST /index.php/api/upload_fit，multipart 字段：
//   token + device=bike_computer + brand=giant + files[]
//   → {status:1, msg:文件上传成功}。
// 下载/列表：安卓 GiantApi.kt 只有登录、校验 token、上传三个方法，没有拉取活动列表、
//   没有下载 FIT 的接口；fit_list 只用来校验 token，从未解析成活动列表。
//   因此本文件 fetchActivities 与 downloadActivity 抛 unsupported（安卓同样不支持）。
// 密钥：无固定密钥，user_token 全部运行时注入，本文件不含任何真实凭证。
// 登录态：user_token 存钥匙串（LoginStore，key 为 token_giant），实例无状态，每次从钥匙串读。
// 网络：状态敏感调用走 HTTPClient.shared.requestRaw（非 2xx 不抛错，返回原始响应供调用方按状态码处理）。

import Foundation

struct GiantAPI: PlatformAPI {
    let source: DataSource = .giant

    static let loginURL = "https://ridelife.giant.com.cn"

    private static let base = "https://ridelife.giant.com.cn/index.php/api"
    private static let device = "bike_computer"
    private static let brand = "giant"

    /// 当前 user_token（登录后由 login 写入钥匙串；App 层也可直接注入已保存的 token）。
    func setToken(_ token: String) { LoginStore.saveToken(token, for: source) }

    /// 只看钥匙串里有没有 user_token，不发网络请求（协议口径）。
    /// 如需实测校验 token，另调 validateToken(_:)。
    func isLoggedIn() async -> Bool {
        LoginStore.isLoggedIn(source)
    }

    /// 退出登录：清掉钥匙串里的 token 与账号密码。
    func logout() {
        LoginStore.clearToken(for: source)
        LoginStore.clearCredentials(for: source)
    }

    /// 账号密码登录（form 表单，明文）。成功时 token 已写入钥匙串。
    func login(username: String, password: String) async throws {
        var request = URLRequest(url: URL(string: "\(Self.base)/login")!)
        request.httpMethod = "POST"
        request.timeoutInterval = 30
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.setValue("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36", forHTTPHeaderField: "User-Agent")
        request.setValue(Self.loginURL, forHTTPHeaderField: "Referer")
        request.httpBody = formBody(["username": username, "password": password])
        let (data, response) = try await HTTPClient.shared.requestRaw(request)
        guard response.statusCode == 200,
              let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
            throw PlatformError.network("捷安特登录失败：HTTP \(response.statusCode)")
        }
        guard (json["status"] as? Int) == 1 else {
            let message = (json["msg"] as? String) ?? ""
            throw PlatformError.authFailed("捷安特登录失败：\(message)")
        }
        guard let token = json["user_token"] as? String, !token.isEmpty else {
            throw PlatformError.parse("捷安特登录失败：响应无 user_token")
        }
        LoginStore.saveToken(token, for: source)
        LoginStore.saveCredentials(username: username, password: password, for: source)
    }

    /// 校验 token：POST /index.php/api/fit_list，form 字段 token，status==1 即有效。
    func validateToken(_ token: String) async -> Bool {
        do {
            var request = URLRequest(url: URL(string: "\(Self.base)/fit_list")!)
            request.httpMethod = "POST"
            request.timeoutInterval = 30
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.setValue("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36", forHTTPHeaderField: "User-Agent")
            request.setValue(Self.loginURL, forHTTPHeaderField: "Referer")
            request.httpBody = formBody(["token": token])
            let (data, response) = try await HTTPClient.shared.requestRaw(request)
            guard response.statusCode == 200,
                  let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                return false
            }
            return (json["status"] as? Int) == 1
        } catch {
            return false
        }
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        // 安卓 GiantApi.kt 没有拉取活动列表的接口（fit_list 只用来校验 token）。
        throw PlatformError.unsupported("捷安特官方 API 没有活动列表接口，无法作为下载来源；仅支持上传")
    }

    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        // 安卓 GiantApi.kt 没有下载 FIT 的接口。
        throw PlatformError.unsupported("捷安特官方 API 没有下载接口，无法作为下载来源；仅支持上传")
    }

    /// 上传 FIT 到捷安特。multipart：token / device=bike_computer / brand=giant / files[]。
    /// GPX 先用已有的 GpxParser.gpxToFit 转 FIT 再传（安卓只传过 FIT；GPX 是否被服务端直接
    /// 接受未知，所以一律先转，不赌服务端）。
    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        guard let token = LoginStore.token(for: source), !token.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        let fitData: Data
        let fitFileName: String
        if isFit(data) {
            fitData = data
            fitFileName = fileName
        } else {
            do {
                fitData = try GpxParser.gpxToFit(data)
            } catch {
                throw PlatformError.unsupported("捷安特只接收 FIT 文件，GPX 转 FIT 失败：\(error.localizedDescription)")
            }
            let lower = fileName.lowercased()
            if lower.hasSuffix(".gpx") { fitFileName = String(fileName.dropLast(4)) + ".fit" }
            else if lower.hasSuffix(".fit") { fitFileName = fileName }
            else { fitFileName = fileName + ".fit" }
        }
        let boundary = "Boundary-\(UUID().uuidString)"
        var body = Data()
        body.appendMultipartField(name: "token", value: token, boundary: boundary)
        body.appendMultipartField(name: "device", value: Self.device, boundary: boundary)
        body.appendMultipartField(name: "brand", value: Self.brand, boundary: boundary)
        body.appendMultipartFile(field: "files[]", fileName: fitFileName, mimeType: "application/octet-stream", fileData: fitData, boundary: boundary)
        body.append("--\(boundary)--\r\n".data(using: .utf8)!)

        var request = URLRequest(url: URL(string: "\(Self.base)/upload_fit")!)
        request.httpMethod = "POST"
        request.timeoutInterval = 300
        request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        request.setValue("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36", forHTTPHeaderField: "User-Agent")
        request.setValue(Self.loginURL, forHTTPHeaderField: "Referer")
        request.httpBody = body

        let (respData, resp) = try await HTTPClient.shared.requestRaw(request)
        let httpCode = resp.statusCode
        let text = String(data: respData, encoding: .utf8) ?? ""
        if httpCode == 401 || httpCode == 403 {
            throw PlatformError.authFailed("捷安特上传失败：登录已过期 (HTTP \(httpCode))，请重新登录捷安特")
        }
        guard httpCode == 200 else {
            throw PlatformError.network("捷安特上传失败：HTTP \(httpCode) \(text.prefix(100))")
        }
        guard let json = try? JSONSerialization.jsonObject(with: respData) as? [String: Any],
              (json["status"] as? Int) == 1 else {
            let message = (try? JSONSerialization.jsonObject(with: respData) as? [String: Any])?["msg"] as? String
            if let message, !message.isEmpty {
                throw PlatformError.network("捷安特上传失败：\(message)")
            }
            throw PlatformError.network("捷安特上传失败：\(text.prefix(120))")
        }
    }

    // MARK: - 内部

    private func isFit(_ data: Data) -> Bool {
        data.count >= 14 && data[8] == UInt8(ascii: ".") && data[9] == UInt8(ascii: "F")
    }

    private func formBody(_ fields: [String: String]) -> Data {
        // application/x-www-form-urlencoded：+ & = 等字符必须转义，不能用 urlQueryAllowed
        let allowed = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~")
        let encoded = fields.map { key, value in
            let keyEncoded = key.addingPercentEncoding(withAllowedCharacters: allowed) ?? key
            let valueEncoded = value.addingPercentEncoding(withAllowedCharacters: allowed) ?? value
            return "\(keyEncoded)=\(valueEncoded)"
        }.joined(separator: "&")
        return Data(encoded.utf8)
    }
}

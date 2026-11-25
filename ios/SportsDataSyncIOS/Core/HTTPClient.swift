// 待真机验证
// HTTPClient.swift
// 鸡翅幸哲迈进OB iOS 版 — 全工程共用的网络请求
// 各平台文件都调这里发请求，不要自己再建 URLSession。
// 登录态靠系统的 cookie 存（HTTPCookieStorage.shared），App 重启后还在，
// 跟安卓那边“登录完 cookie 留着，下次直接用”是一个意思。

import Foundation

/// 请求体三种写法：JSON、表单、原始二进制（传 FIT / GPX 文件用二进制）。
public enum HTTPBody {
    /// JSON 数据，已经编好码的直接传。
    case json(Data)
    /// 表单：username=xxx&password=yyy 这种，内部自动做 URL 编码。
    case form([String: String])
    /// 原始二进制，比如 FIT 文件内容；contentType 自己填，如 application/octet-stream。
    case binary(Data, contentType: String)

    var contentType: String {
        switch self {
        case .json: return "application/json"
        case .form: return "application/x-www-form-urlencoded"
        case .binary(_, let contentType): return contentType
        }
    }

    var data: Data? {
        switch self {
        case .json(let data):
            return data
        case .form(let fields):
            let encoded = fields.map { key, value in
                let k = key.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? key
                let v = value.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? value
                return "\(k)=\(v)"
            }.joined(separator: "&")
            return encoded.data(using: .utf8)
        case .binary(let data, _):
            return data
        }
    }
}

/// 全工程唯一的网络入口。
public final class HTTPClient {
    public static let shared = HTTPClient()

    /// 默认 UA：装成 iPhone 上的 Safari，有些平台只认浏览器 UA，不认 App 的默认 UA。
    public static let defaultUserAgent =
        "Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1"

    private let session: URLSession

    private init() {
        let config = URLSessionConfiguration.default
        // 超时：请求 120 秒、资源 300 秒。大文件上传（FIT 动辄几 MB）和部分平台服务器慢，
        // 30 秒根本不够用；单个请求仍可通过 requestRaw/request 的 timeout 参数单独收紧或放宽。
        config.timeoutIntervalForRequest = 120
        config.timeoutIntervalForResource = 300
        // cookie 存在系统共享的地方，App 重启、杀进程后登录态还在。
        config.httpCookieStorage = HTTPCookieStorage.shared
        config.httpShouldSetCookies = true
        config.httpCookieAcceptPolicy = .always
        // 有些平台的服务器只认 HTTP/1.1，HTTP/2 握手会抽风（安卓那边佳明中国就吃过这个亏），
        // 这里先不强制，将来哪个平台出问题再单独处理。
        session = URLSession(configuration: config)
    }

    // MARK: - 通用请求

    /// 原始请求：返回响应体和响应对象，状态码不是 2xx 也不抛错，由调用方自己判断。
    /// 各平台凡是“要看状态码、要读错误正文”的调用（登录失败原因、403 续签、OSS 上传重试等）
    /// 都走这个方法，不要再绕过 HTTPClient 直接用 URLSession.shared。
    /// - body 为 nil 时不设 Content-Type（有些 OSS 签名 PUT 要求不带 Content-Type，
    ///   带了会 403）；body 不为空且 headers 里没写 Content-Type 时才用 body 的类型。
    /// - timeout 不传时用 URLRequest 自带的超时（调用方在 request 上设过就按它的），
    ///   传了就覆盖。
    public func requestRaw(
        url: URL,
        method: String = "GET",
        headers: [String: String] = [:],
        body: HTTPBody? = nil,
        timeout: TimeInterval? = nil
    ) async throws -> (Data, HTTPURLResponse) {
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method
        urlRequest.setValue(Self.defaultUserAgent, forHTTPHeaderField: "User-Agent")
        for (key, value) in headers {
            urlRequest.setValue(value, forHTTPHeaderField: key)
        }
        if let body = body, !body.contentType.isEmpty,
           headers.keys.first(where: { $0.lowercased() == "content-type" }) == nil {
            urlRequest.setValue(body.contentType, forHTTPHeaderField: "Content-Type")
        }
        if let body = body {
            urlRequest.httpBody = body.data
        }
        if let timeout = timeout {
            urlRequest.timeoutInterval = timeout
        }
        return try await requestRaw(urlRequest)
    }

    /// 原始请求（已拼好的 URLRequest 版）：按调用方给的请求原样发，不补任何头、
    /// 不改 Content-Type、不改超时（除非传了 timeout），只保证走共用 cookie 的 session。
    /// 适用：OSS 签名 PUT（第一次不带 Content-Type、403/400 再带上重试）、multipart 手工拼装等。
    /// 不跟随重定向的特殊 session（Wahoo SAML、Zepp 登录）不走这里，仍用各自的自定义 session。
    public func requestRaw(
        _ urlRequest: URLRequest,
        timeout: TimeInterval? = nil
    ) async throws -> (Data, HTTPURLResponse) {
        var request = urlRequest
        if let timeout = timeout {
            request.timeoutInterval = timeout
        }
        let data: Data
        let response: URLResponse
        do {
            (data, response) = try await session.data(for: request)
        } catch {
            throw mapToPlatformError(error)
        }
        guard let httpResponse = response as? HTTPURLResponse else {
            throw PlatformError.network("服务器没有返回有效的 HTTP 响应")
        }
        return (data, httpResponse)
    }

    /// 最底层的方法，GET / POST / PUT 都走这里。返回原始数据和响应，调用方自己解析。
    /// 状态码不是 2xx 就按网络错报出来。只需要“成功拿到数据”的调用走这里；
    /// 要看状态码/错误正文的走上面的 requestRaw。
    public func request(
        url: URL,
        method: String = "GET",
        headers: [String: String] = [:],
        body: HTTPBody? = nil,
        timeout: TimeInterval? = nil
    ) async throws -> (Data, HTTPURLResponse) {
        let (data, httpResponse) = try await requestRaw(
            url: url, method: method, headers: headers, body: body, timeout: timeout
        )
        guard (200...299).contains(httpResponse.statusCode) else {
            throw PlatformError.network("HTTP \(httpResponse.statusCode)：\(url.host ?? "")")
        }
        return (data, httpResponse)
    }

    // MARK: - 常用封装

    /// GET，返回原始数据。
    public func get(url: URL, headers: [String: String] = [:], timeout: TimeInterval? = nil) async throws -> Data {
        let (data, _) = try await request(url: url, method: "GET", headers: headers, timeout: timeout)
        return data
    }

    /// GET，直接按 JSON 解成想要的类型。解析失败报 parse 错。
    public func getJSON<T: Decodable>(url: URL, headers: [String: String] = [:], timeout: TimeInterval? = nil) async throws -> T {
        let data = try await get(url: url, headers: headers, timeout: timeout)
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            throw PlatformError.parse("解析 \(url.host ?? "") 返回的数据失败：\(error.localizedDescription)")
        }
    }

    /// POST，body 三种写法都能传，返回原始数据。
    public func post(url: URL, headers: [String: String] = [:], body: HTTPBody? = nil, timeout: TimeInterval? = nil) async throws -> Data {
        let (data, _) = try await request(url: url, method: "POST", headers: headers, body: body, timeout: timeout)
        return data
    }

    /// POST，直接按 JSON 解成想要的类型。
    public func postJSON<T: Decodable>(url: URL, headers: [String: String] = [:], body: HTTPBody? = nil, timeout: TimeInterval? = nil) async throws -> T {
        let data = try await post(url: url, headers: headers, body: body, timeout: timeout)
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            throw PlatformError.parse("解析 \(url.host ?? "") 返回的数据失败：\(error.localizedDescription)")
        }
    }

    /// 上传文件（二进制 body）：传 FIT / GPX 文件用这个。
    /// fileName 只用来拼 multipart 时用，裸二进制上传时可以不传。
    public func upload(
        url: URL,
        data: Data,
        fileName: String,
        contentType: String = "application/octet-stream",
        headers: [String: String] = [:]
    ) async throws -> Data {
        let (result, _) = try await request(
            url: url,
            method: "POST",
            headers: headers,
            body: .binary(data, contentType: contentType)
        )
        return result
    }

    /// 上传 multipart 表单：有些平台要求文件放在表单字段里（比如 field 名叫 file），用这个。
    /// fieldName 是表单里的字段名，fileName 是文件名。
    public func uploadMultipart(
        url: URL,
        data: Data,
        fieldName: String,
        fileName: String,
        contentType: String = "application/octet-stream",
        extraFields: [String: String] = [:],
        headers: [String: String] = [:]
    ) async throws -> Data {
        let boundary = "Boundary-\(UUID().uuidString)"
        var body = Data()
        for (key, value) in extraFields {
            body.append("--\(boundary)\r\n".data(using: .utf8)!)
            body.append("Content-Disposition: form-data; name=\"\(key)\"\r\n\r\n".data(using: .utf8)!)
            body.append("\(value)\r\n".data(using: .utf8)!)
        }
        body.append("--\(boundary)\r\n".data(using: .utf8)!)
        body.append("Content-Disposition: form-data; name=\"\(fieldName)\"; filename=\"\(fileName)\"\r\n".data(using: .utf8)!)
        body.append("Content-Type: \(contentType)\r\n\r\n".data(using: .utf8)!)
        body.append(data)
        body.append("\r\n--\(boundary)--\r\n".data(using: .utf8)!)
        var allHeaders = headers
        allHeaders["Content-Type"] = "multipart/form-data; boundary=\(boundary)"
        let (result, _) = try await request(url: url, method: "POST", headers: allHeaders, body: .binary(body, contentType: allHeaders["Content-Type"]!))
        return result
    }

    // MARK: - 错误转换

    /// 系统网络错统一转成 PlatformError，界面上直接显示中文。
    private func mapToPlatformError(_ error: Error) -> PlatformError {
        if let platformError = error as? PlatformError {
            return platformError
        }
        if let urlError = error as? URLError {
            switch urlError.code {
            case .notConnectedToInternet, .networkConnectionLost:
                return .network("没网或网络断了，请检查网络后重试")
            case .timedOut:
                return .network("请求超时没回音，平台服务器可能比较慢或文件太大，请重试")
            case .cancelled:
                return .network("请求被取消了")
            default:
                return .network(urlError.localizedDescription)
            }
        }
        return .network(error.localizedDescription)
    }
}

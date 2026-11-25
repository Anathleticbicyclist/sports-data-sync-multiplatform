// 待真机验证
// Outbase — 对照安卓 OutbaseApi.kt（v9.6.9）原样移植，仅支持上传
//
// 登录：手机号验证码登录，在 WebView 里完成
//   （https://outbase.cn/zeusfit/official-website/login.html），取 Sessionid。
//   本文件 login(username:password:) 因此抛 unsupported，App 层登录页拿到 Sessionid 后
//   调 setSessionId(_:) 注入；登录页地址见 static let loginURL。
// 校验：POST https://melon-gateway.immomo.com/zeusfit/api/h5/sport/upload/list
//   {"index":0,"count":20} + Sessionid 头，ec==0 即有效（warmUp；安卓 getUsername 先试
//   GET /api/h5/user/info 拿昵称，拿不到再回退 warmUp；网络异常时保守判定有效，避免误清凭证）。
// 上传（两步，2026-08-11 用户 HAR 抓包确认）：
//   1) CDN：POST https://melon-gateway.immomo.com/zeusfit/resource/h5/upload
//      ?source=zeusfit&id={guid}{yyyymmdd}&uri=/resource/{guid前2}/{guid第3-4位}/{guid}{yyyymmdd}.fit&momoid=0&
//      multipart 字段 file；浏览器 UA + Origin/Referer https://outbase.cn，无需 Sessionid；
//      返回 message=="SUCCESS" 即成功。旧端点 /zeusfit/resource/upload 已加鉴权（ec=1044），不用。
//   2) 注册：POST https://melon-gateway.immomo.com/zeusfit/api/h5/sport/upload/fit
//      {"fitGuid":"{guid}{yyyymmdd}","sign":MD5(文件),"fileName":...,"fileSize":...}
//      + Sessionid 头 + Uagent 头（浏览器 UA + " PCAgent/1.0.0"）；
//      ec==0 成功；ec==503 或 em 含“已存在/相同时间/重复”为重复跳过；
//      ec==410001 或 em 含 log in/登录为登录态失效。
//   安卓还有 WebView 内 fetch 回退通道（CDN 直连失败时在 Outbase 页面里再传一次）；
//   iOS 本文件只实现直连通道，WebView 回退需 App 层 WKWebView 配合，见 TODO。
// 下载/列表：安卓 OutbaseApi.kt 没有拉取活动列表、没有下载 FIT 的接口（upload/list 只
//   用来校验会话）。因此本文件 fetchActivities 与 downloadActivity 抛 unsupported。
// 密钥：无固定密钥，Sessionid 全部运行时注入，本文件不含任何真实凭证。
// 网络：状态敏感调用走 HTTPClient.shared.requestRaw（非 2xx 不抛错，返回原始响应供调用方按状态码处理）。

import CryptoKit
import Foundation

struct OutbaseAPI: PlatformAPI {
    let source: DataSource = .outbase

    static let loginURL = "https://outbase.cn/zeusfit/official-website/login.html"

    private static let cdnUpload = "https://melon-gateway.immomo.com/zeusfit/resource/h5/upload"
    private static let registerURL = "https://melon-gateway.immomo.com/zeusfit/api/h5/sport/upload/fit"
    private static let uploadListURL = "https://melon-gateway.immomo.com/zeusfit/api/h5/sport/upload/list"
    private static let userInfoURL = "https://melon-gateway.immomo.com/zeusfit/api/h5/user/info"
    private static let browserUA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
    private static let uagent = browserUA + " PCAgent/1.0.0"

    /// WebView 登录后把 Sessionid 交给本实例（直接存钥匙串，见 LoginStore；
    /// 登录页取到 Sessionid 后调这里，和登录页直接写 LoginStore 用的是同一个 key）。
    func setSessionId(_ sessionId: String) { LoginStore.saveToken(sessionId, for: .outbase) }

    /// 只看钥匙串里有没有 Sessionid，不发网络请求（协议口径）。
    /// 如需实测校验会话，另调 warmUp(_:)；安卓曾先试 user/info 拿昵称再回退 warmUp，
    /// 网络异常时保守判定有效，避免误清凭证。
    func isLoggedIn() async -> Bool {
        LoginStore.isLoggedIn(.outbase)
    }

    /// 退出登录：清掉钥匙串里的 Sessionid。
    func logout() { LoginStore.clearToken(for: .outbase) }

    /// 会话校验：POST upload/list {"index":0,"count":20}，ec==0 即有效。
    func warmUp(_ sessionId: String) async -> Bool {
        do {
            var request = URLRequest(url: URL(string: Self.uploadListURL)!)
            request.httpMethod = "POST"
            request.timeoutInterval = 30
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.setValue(sessionId, forHTTPHeaderField: "Sessionid")
            request.setValue(Self.uagent, forHTTPHeaderField: "Uagent")
            request.setValue(Self.browserUA, forHTTPHeaderField: "User-Agent")
            request.setValue("https://outbase.cn", forHTTPHeaderField: "Origin")
            request.setValue("https://outbase.cn/", forHTTPHeaderField: "Referer")
            request.httpBody = try JSONSerialization.data(withJSONObject: ["index": 0, "count": 20])
            let (data, _) = try await HTTPClient.shared.requestRaw(request)
            guard let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                return false
            }
            return (json["ec"] as? Int) == 0
        } catch {
            return false
        }
    }

    func login(username: String, password: String) async throws {
        // Outbase 是手机号验证码登录，没有账号密码接口；须在登录页（见 loginURL）完成验证后注入 Sessionid。
        throw PlatformError.unsupported("Outbase 不支持账号密码登录，请用手机号验证码在登录页登录后由 App 注入 Sessionid")
    }

    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        // 安卓 OutbaseApi.kt 没有拉取活动列表的接口（upload/list 只用来校验会话）。
        throw PlatformError.unsupported("Outbase 没有活动列表接口，无法作为下载来源；仅支持上传")
    }

    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        // 安卓 OutbaseApi.kt 没有下载 FIT 的接口。
        throw PlatformError.unsupported("Outbase 没有下载接口，无法作为下载来源；仅支持上传")
    }

    /// 上传 FIT 到 Outbase：CDN h5 直传 + 注册两步。
    /// TODO: 待真机验证 — 安卓 CDN 直连失败时有 WebView 内 fetch 回退通道；iOS 如需同款回退，
    ///   须 App 层用 WKWebView 打开 Outbase 页面再发请求，本文件暂只实现直连通道。
    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        guard let sessionId = LoginStore.token(for: .outbase), !sessionId.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        let fitGuid = UUID().uuidString
        let date = dateTag()
        let idParam = "\(fitGuid)\(date)"
        let guidHex = fitGuid.replacingOccurrences(of: "-", with: "")
        let prefix = "\(guidHex.prefix(2))/\(guidHex.dropFirst(2).prefix(2))"
        let uriPath = "/resource/\(prefix)/\(fitGuid)\(date).fit"
        let cdnUrl = "\(Self.cdnUpload)?source=zeusfit&id=\(idParam)&uri=\(uriPath)&momoid=0&"

        // ===== 1) CDN 直传（h5 端点，浏览器风格请求，无需鉴权头）=====
        let boundary = "Boundary-\(UUID().uuidString)"
        var cdnBody = Data()
        cdnBody.appendMultipartFile(field: "file", fileName: fileName, mimeType: "application/octet-stream", fileData: data, boundary: boundary)
        cdnBody.append("--\(boundary)--\r\n".data(using: .utf8)!)

        var cdnRequest = URLRequest(url: URL(string: cdnUrl)!)
        cdnRequest.httpMethod = "POST"
        cdnRequest.timeoutInterval = 300
        cdnRequest.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        cdnRequest.setValue(Self.browserUA, forHTTPHeaderField: "User-Agent")
        cdnRequest.setValue("*/*", forHTTPHeaderField: "Accept")
        cdnRequest.setValue("https://outbase.cn", forHTTPHeaderField: "Origin")
        cdnRequest.setValue("https://outbase.cn/", forHTTPHeaderField: "Referer")
        cdnRequest.httpBody = cdnBody

        var cdnOk = false
        var lastDetail = ""
        do {
            let (cdnData, _) = try await HTTPClient.shared.requestRaw(cdnRequest)
            if let json = try? JSONSerialization.jsonObject(with: cdnData) as? [String: Any],
               (json["message"] as? String) == "SUCCESS" {
                cdnOk = true
            } else {
                let em: String
                if let emValue = (try? JSONSerialization.jsonObject(with: cdnData) as? [String: Any])?["em"] as? String {
                    em = emValue
                } else if let body = String(data: cdnData, encoding: .utf8) {
                    em = String(body.prefix(80))
                } else {
                    em = ""
                }
                lastDetail = "CDN 直连失败：\(em)"
            }
        } catch {
            lastDetail = "CDN 直连异常：\(error.localizedDescription)"
        }
        guard cdnOk else {
            // TODO: WebView 回退通道（安卓 OutbaseApi.upload 的 bridge.uploadViaOutbasePage），需 App 层 WKWebView 配合
            throw PlatformError.network("CDN 上传失败 [\(lastDetail)]")
        }

        // ===== 2) 注册 =====
        let regBody: [String: Any] = [
            "fitGuid": idParam,
            "sign": md5Hex(data),
            "fileName": fileName,
            "fileSize": data.count,
        ]
        var regRequest = URLRequest(url: URL(string: Self.registerURL)!)
        regRequest.httpMethod = "POST"
        regRequest.timeoutInterval = 120
        regRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        regRequest.setValue(sessionId, forHTTPHeaderField: "Sessionid")
        regRequest.setValue(Self.uagent, forHTTPHeaderField: "Uagent")
        regRequest.setValue(Self.browserUA, forHTTPHeaderField: "User-Agent")
        regRequest.setValue("application/json, text/plain, */*", forHTTPHeaderField: "Accept")
        regRequest.setValue("https://outbase.cn", forHTTPHeaderField: "Origin")
        regRequest.setValue("https://outbase.cn/", forHTTPHeaderField: "Referer")
        regRequest.httpBody = try JSONSerialization.data(withJSONObject: regBody)

        let (regData, _) = try await HTTPClient.shared.requestRaw(regRequest)
        let regText = String(data: regData, encoding: .utf8) ?? ""
        guard let regJson = try? JSONSerialization.jsonObject(with: regData) as? [String: Any] else {
            throw PlatformError.parse("注册解析失败：\(regText.prefix(100))")
        }
        let ec = regJson["ec"] as? Int ?? -1
        let em = (regJson["em"] as? String) ?? ""
        if ec == 0 {
            return // 上传成功
        }
        if ec == 503 || em.contains("已存在") || em.contains("相同时间") || em.contains("重复") {
            return // 已存在，安卓归为“跳过”；本协议无跳过返回值，视为成功返回
        }
        if ec == 410001 || em.localizedCaseInsensitiveContains("log in") || em.contains("登录") {
            throw PlatformError.authFailed("Outbase 登录态失效 (em=\(em))")
        }
        throw PlatformError.network("注册失败：ec=\(ec) em=\(em) \(regText.prefix(100))")
    }

    // MARK: - 内部

    /// 当天日期 yyyymmdd（安卓 dateTag：Calendar 年月日）。
    private func dateTag() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter.string(from: Date())
    }

    private func md5Hex(_ data: Data) -> String {
        Insecure.MD5.hash(data: data).map { String(format: "%02x", $0) }.joined()
    }
}

/// Outbase Sessionid 不再单独放内存：setSessionId/isLoggedIn/uploadActivity 一律走 LoginStore（钥匙串）。

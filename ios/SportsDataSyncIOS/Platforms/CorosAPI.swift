// 待真机验证
// CorosAPI.swift
// 高驰中国 + 高驰国际 — 对照安卓 CorosApi.kt（v9.6.9）原样移植
//
// 登录：安卓没有账号密码直登接口，登录在 WebView 里完成
//   （中国区 https://trainingcn.coros.com/，国际区 https://training.coros.com/login），
//   从 CPL-coros-token / CPL-coros-region 两个 cookie 取凭证，格式为 token;regionId;cookie。
//   本文件 login(username:password:) 因此抛 unsupported，登录页组拿到凭证后调
//   saveCredential(token:regionId:cookie:) 注入；登录页地址见各 struct 的 loginURL。
// 区域：regionId 1=国际（teamapi.coros.com，AWS coros-s3）/ 2=中国（teamcnapi.coros.com，
//   阿里云 coros-oss）/ 3=欧洲（teameuapi.coros.com，AWS eu-coros）。本次任务只做中国+国际，
//   欧洲区配置照安卓原样保留在 REGION 配置里备用，未单独出 struct。
// 列表：GET {teamapi}/activity/query?modeList=&pageNumber=&size=200，result=="0000" 才有效。
//   每页 200 条上限的坑（v7.6.4 已修）：循环翻页拉到 limit 为止，不要只拉第一页。
// 下载：POST {teamapi}/activity/detail/download?labelId=&sportType=&fileType=4（空表单）
//   → data.fileUrl → GET 直链下载。fileType=4 是 FIT。
// 上传：1) FIT 打包成 ZIP（ZIP 里装一个 .fit，只接受 .zip，传裸 .fit 会 status=-1 解析失败）；
//   2) GET faq.coros.com/openapi/oss/sts 换 OSS 临时凭证；
//   3) PUT ZIP 到 OSS，object key = fit_zip/{userId}/{zipMd5}.zip；
//   4) POST {teamapi}/activity/fit/import 注册（表单 jsonParameter，只传元数据不传文件）。
//   成功标志：result=="0000" 且 data.status==2。result=1019 或 "Access token is invalid" 是登录过期。
// 注意：高驰单设备登录，同步期间不要开高驰网页/App，否则会把这边顶掉。
// 密钥：本文件不含用户密钥。STS 的 app_id / sign / salt 是安卓源码里公开的配置常量
//   （来自开源逆向项目 garmin-sync-coros 的 sts_config.py），原样照搬，不是用户私密凭证。

import Foundation
import CryptoKit
import Compression

// MARK: - 小工具（本文件内用）

private func corosJSONDict(_ data: Data) -> [String: Any]? {
    (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
}

private func corosParseDate(_ s: String) -> Date {
    if s.isEmpty { return Date(timeIntervalSince1970: 0) }
    let iso = ISO8601DateFormatter()
    if let d = iso.date(from: s) { return d }
    let f = DateFormatter()
    f.locale = Locale(identifier: "en_US_POSIX")
    for format in ["yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd'T'HH:mm:ss", "yyyy/MM/dd HH:mm:ss", "yyyy-MM-dd"] {
        f.dateFormat = format
        if let d = f.date(from: s) { return d }
    }
    if let v = Double(s) {
        return Date(timeIntervalSince1970: v > 1_000_000_000_000 ? v / 1000 : v)
    }
    return Date(timeIntervalSince1970: 0)
}

private func corosMD5Hex(_ data: Data) -> String {
    Insecure.MD5.hash(data: data).map { String(format: "%02x", $0) }.joined()
}

private func corosSHA256Hex(_ data: Data) -> String {
    SHA256.hash(data: data).map { String(format: "%02x", $0) }.joined()
}

private func corosHmacSHA1Base64(key: String, data: String) -> String {
    let mac = HMAC<Insecure.SHA1>.authenticationCode(for: Data(data.utf8), using: SymmetricKey(data: Data(key.utf8)))
    return Data(mac).base64EncodedString()
}

private func corosHmacSHA256(key: Data, data: String) -> Data {
    let mac = HMAC<SHA256>.authenticationCode(for: Data(data.utf8), using: SymmetricKey(data: key))
    return Data(mac)
}

/// CRC32（ZIP 头用，标准 IEEE 多项式表驱动）。
private func corosCRC32(_ data: Data) -> UInt32 {
    var table = [UInt32](repeating: 0, count: 256)
    for i in 0..<256 {
        var c = UInt32(i)
        for _ in 0..<8 { c = (c & 1) != 0 ? (0xEDB88320 ^ (c >> 1)) : (c >> 1) }
        table[i] = c
    }
    var crc: UInt32 = 0xFFFFFFFF
    for b in data { crc = table[Int((crc ^ UInt32(b)) & 0xFF)] ^ (crc >> 8) }
    return crc ^ 0xFFFFFFFF
}

/// raw DEFLATE 压缩（ZIP entry 用）：Compression 只出 zlib 包裹格式，去掉头 2 字节和尾 4 字节 Adler。
private func corosDeflateRaw(_ data: Data) -> Data? {
    guard !data.isEmpty else { return nil }
    let srcSize = data.count
    var dst = Data(count: srcSize + 64)
    let dstCount = dst.count
    let encoded = data.withUnsafeBytes { src in
        dst.withUnsafeMutableBytes { d in
            compression_encode_buffer(
                d.baseAddress!.assumingMemoryBound(to: UInt8.self), dstCount,
                src.baseAddress!.assumingMemoryBound(to: UInt8.self), srcSize,
                nil, COMPRESSION_ZLIB
            )
        }
    }
    guard encoded > 6 else { return nil }
    return dst.prefix(encoded).dropFirst(2).dropLast(4)
}

/// 把一个 FIT 打成只含一个文件的 ZIP（方法 8 deflate，带中央目录；与安卓 ZipOutputStream 同款结构）。
private func corosZipFitData(_ fitData: Data, fitName: String) -> Data {
    let deflatedOpt = corosDeflateRaw(fitData)
    let deflated = deflatedOpt ?? fitData
    let method: UInt16 = deflatedOpt == nil ? 0 : 8
    let crc = corosCRC32(fitData)
    let nameData = Data(fitName.utf8)
    // DOS 时间（当前时间）
    let now = Date()
    let cal = Calendar.current
    let comps = cal.dateComponents([.year, .month, .day, .hour, .minute, .second], from: now)
    let hour = comps.hour ?? 0
    let minute = comps.minute ?? 0
    let second = comps.second ?? 0
    let dosTime = UInt16((hour << 11) | (minute << 5) | (second / 2))
    let year = comps.year ?? 1980
    let month = comps.month ?? 1
    let day = comps.day ?? 1
    let dosDate = UInt16(((year - 1980) << 9) | (month << 5) | day)
    func u16(_ v: UInt16) -> Data { Data([UInt8(v & 0xFF), UInt8((v >> 8) & 0xFF)]) }
    func u32(_ v: UInt32) -> Data {
        Data([UInt8(v & 0xFF), UInt8((v >> 8) & 0xFF), UInt8((v >> 16) & 0xFF), UInt8((v >> 24) & 0xFF)])
    }
    var out = Data()
    // Local file header
    out.append(u32(0x04034B50))
    out.append(u16(20)) // version needed
    out.append(u16(0)) // flags
    out.append(u16(method))
    out.append(u16(dosTime))
    out.append(u16(dosDate))
    out.append(u32(crc))
    out.append(u32(UInt32(deflated.count)))
    out.append(u32(UInt32(fitData.count)))
    out.append(u16(UInt16(nameData.count)))
    out.append(u16(0)) // extra length
    out.append(nameData)
    out.append(deflated)
    // Central directory header
    let centralOffset = out.count
    out.append(u32(0x02014B50))
    out.append(u16(20)) // version made by
    out.append(u16(20)) // version needed
    out.append(u16(0))
    out.append(u16(method))
    out.append(u16(dosTime))
    out.append(u16(dosDate))
    out.append(u32(crc))
    out.append(u32(UInt32(deflated.count)))
    out.append(u32(UInt32(fitData.count)))
    out.append(u16(UInt16(nameData.count)))
    out.append(u16(0)) // extra
    out.append(u16(0)) // comment
    out.append(u16(0)) // disk
    out.append(u16(0)) // internal attrs
    out.append(u32(0)) // external attrs
    out.append(u32(0)) // local header offset
    out.append(nameData)
    // End of central directory
    let centralSize = out.count - centralOffset
    out.append(u32(0x06054B50))
    out.append(u16(0))
    out.append(u16(0))
    out.append(u16(1))
    out.append(u16(1))
    out.append(u32(UInt32(centralSize)))
    out.append(u32(UInt32(centralOffset)))
    out.append(u16(0))
    return out
}

// MARK: - 凭证（LoginStore 里存 "token;regionId;cookie" 串，与安卓 parseCredential 同款格式）

private struct CorosCredential {
    var token = ""
    var regionId = 2
    var cookie = ""

    init() {}
    init?(stored: String) {
        let parts = stored.split(separator: ";", omittingEmptySubsequences: false).map(String.init)
        guard let first = parts.first, !first.isEmpty else { return nil }
        token = first
        regionId = parts.count > 1 ? (Int(parts[1]) ?? 2) : 2
        cookie = parts.count > 2 ? parts.dropFirst(2).joined(separator: ";") : ""
    }

    func storedString() -> String { "\(token);\(regionId);\(cookie)" }
}

// MARK: - 引擎（中国/国际共用，regionId 区分）

private final class CorosEngine {
    let source: DataSource
    let regionId: Int

    private struct Region { let teamapi: String; let host: String }
    private struct Sts { let bucket: String; let service: String; let sign: String }

    // 区域配置（CorosApi.kt REGIONCONFIG）
    private static let regions: [Int: Region] = [
        1: Region(teamapi: "https://teamapi.coros.com", host: "https://training.coros.com"),
        2: Region(teamapi: "https://teamcnapi.coros.com", host: "https://trainingcn.coros.com"),
        3: Region(teamapi: "https://teameuapi.coros.com", host: "https://trainingeu.coros.com"),
    ]
    // STS 配置（CorosApi.kt STS_CONFIG）
    private static let stsConfigs: [Int: Sts] = [
        1: Sts(bucket: "coros-s3", service: "aws", sign: "877571111A1EE5316E4B590103D4B5B3"),
        2: Sts(bucket: "coros-oss", service: "aliyun", sign: "9AD4AA35AAFEE6BB1E847A76848D58DF"),
        3: Sts(bucket: "eu-coros", service: "aws", sign: "877571111A1EE5316E4B590103D4B5B3"),
    ]
    private static let stsAppId = "1660188068672619112"
    private static let stsVersion = "2"
    private static let stsSalt = "9y78gpoERW4lBNYL"
    private static let ua = "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36"

    init(source: DataSource, regionId: Int) {
        self.source = source
        self.regionId = regionId
    }

    private func teamApi() -> String { Self.regions[regionId]?.teamapi ?? "https://teamcnapi.coros.com" }
    private func host() -> String { Self.regions[regionId]?.host ?? "https://trainingcn.coros.com" }

    private func authHeaders(token: String) -> [String: String] {
        [
            "Accept": "application/json, text/plain, */*",
            "accesstoken": token,
            "Cookie": "CPL-coros-region=\(regionId); CPL-coros-token=\(token)",
            "User-Agent": Self.ua,
        ]
    }

    func loadCredential() -> CorosCredential? {
        guard let stored = LoginStore.token(for: source) else { return nil }
        var cred = CorosCredential(stored: stored)
        // 强制以本 struct 的 regionId 为准（中国/国际两个入口各存各的）
        cred?.regionId = regionId
        return cred
    }

    func saveCredential(_ cred: CorosCredential) {
        var c = cred
        c.regionId = regionId
        LoginStore.saveToken(c.storedString(), for: source)
    }

    func clearCredential() { LoginStore.clearToken(for: source) }

    private func requireCredential() throws -> CorosCredential {
        guard let cred = loadCredential(), !cred.token.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        return cred
    }

    // MARK: 用户名校验（getUsername：调 activity/query size=1，result=="0000" 即 token 有效）

    /// token 有效返回 "高驰用户"，无效返回 nil。
    func getUsername() async -> String? {
        guard let cred = loadCredential(), !cred.token.isEmpty else { return nil }
        guard let url = URL(string: "\(teamApi())/activity/query?modeList=&pageNumber=1&size=1") else { return nil }
        do {
            let data = try await HTTPClient.shared.get(url: url, headers: authHeaders(token: cred.token))
            guard let json = corosJSONDict(data), json["result"] as? String == "0000" else { return nil }
            return "高驰用户"
        } catch {
            return nil
        }
    }

    // MARK: 活动列表（循环翻页，每页 200 条）

    /// GET {teamapi}/activity/query?modeList=&pageNumber=&size=200，循环翻页拉到 limit 为止。
    func getActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        let cred = try requireCredential()
        var out: [ActivityRecord] = []
        var currentOffset = skip
        // v7.6.4：循环翻页，修复此前只拉一页（最多 200 条）的问题
        while out.count < limit {
            let page = (currentOffset / 200) + 1
            guard let url = URL(string: "\(teamApi())/activity/query?modeList=&pageNumber=\(page)&size=200") else { break }
            let data: Data
            do {
                data = try await HTTPClient.shared.get(url: url, headers: authHeaders(token: cred.token))
            } catch {
                break // 安卓同款：请求失败返回已拉到的部分
            }
            guard let json = corosJSONDict(data), json["result"] as? String == "0000" else { break }
            let list = ((json["data"] as? [String: Any])?["dataList"] as? [[String: Any]]) ?? []
            if list.isEmpty { break }
            var skipInPage = currentOffset - (page - 1) * 200
            for item in list {
                if skipInPage > 0 { skipInPage -= 1; continue }
                if out.count >= limit { break }
                let labelId = item["labelId"] as? String ?? ""
                if labelId.isEmpty { continue }
                let sportType = (item["sportType"] as? NSNumber)?.intValue ?? 0
                let title = item["name"] as? String ?? ""
                let startTime = item["startTime"] as? String ?? ""
                let distanceM = (item["distance"] as? NSNumber)?.doubleValue ?? 0 // 接口单位是米
                let duration = (item["duration"] as? NSNumber)?.doubleValue ?? 0 // 秒
                out.append(ActivityRecord(
                    id: labelId,
                    source: source,
                    title: title.isEmpty ? "高驰运动" : title,
                    startDate: corosParseDate(startTime),
                    distanceMeters: distanceM,
                    durationSeconds: duration,
                    elevationGainMeters: 0,
                    sportType: "\(sportType)",
                    remoteId: labelId,
                    fileName: "\(labelId).fit"
                ))
            }
            if list.count < 200 { break } // 最后一页，没有更多数据
            currentOffset = page * 200
        }
        return out
    }

    // MARK: 下载 FIT

    /// POST {teamapi}/activity/detail/download?labelId=&sportType=&fileType=4 → data.fileUrl → GET 直链。
    /// sportType 从 ActivityRecord.sportType 取（列表里存的就是这个数字字符串）。
    func downloadFit(activity: ActivityRecord) async throws -> Data {
        let cred = try requireCredential()
        let recordId = activity.remoteId.isEmpty ? activity.id : activity.remoteId
        let sportType = Int(activity.sportType) ?? 1
        guard let url = URL(string: "\(teamApi())/activity/detail/download?labelId=\(recordId)&sportType=\(sportType)&fileType=4") else {
            throw PlatformError.network("高驰下载地址无效")
        }
        let data = try await HTTPClient.shared.post(url: url, headers: authHeaders(token: cred.token), body: .form([:]))
        guard let json = corosJSONDict(data),
              let fileUrl = (json["data"] as? [String: Any])?["fileUrl"] as? String,
              !fileUrl.isEmpty,
              let fileURL = URL(string: fileUrl) else {
            throw PlatformError.network("高驰下载失败：没有拿到文件地址")
        }
        return try await HTTPClient.shared.get(url: fileURL, headers: ["User-Agent": Self.ua])
    }

    // MARK: 上传 FIT

    /// 上传流程（CorosApi.uploadFit）：FIT→ZIP → STS 换 OSS 凭证 → PUT 到 OSS → fit/import 注册。
    /// 成功不抛错；失败抛 PlatformError（文案照安卓原样）。
    func uploadFit(data: Data, fileName: String, activity: ActivityRecord) async throws {
        let cred = try requireCredential()
        let sts = Self.stsConfigs[regionId] ?? Self.stsConfigs[2]!
        let activityId = activity.remoteId.isEmpty ? activity.id : activity.remoteId
        let fitName = activityId.isEmpty
            ? fileName.split(separator: "/").last.map { $0.hasSuffix(".fit") ? String($0) : "\($0).fit" } ?? "activity.fit"
            : "\(activityId).fit"
        let zipData = corosZipFitData(data, fitName: fitName)
        let md5 = corosMD5Hex(zipData)
        let size = zipData.count
        let userId = await getUserId(cred: cred)
        let objectKey = "fit_zip/\(userId)/\(md5).zip"
        let zipFileName = activityId.isEmpty
            ? (fileName.split(separator: "/").last.map(String.init) ?? "activity").replacingOccurrences(of: ".fit", with: "") + ".zip"
            : "\(activityId).zip"

        // 1) STS 凭证
        let stsURLString = "https://faq.coros.com/openapi/oss/sts?bucket=\(sts.bucket)&service=\(sts.service)&app_id=\(Self.stsAppId)&sign=\(sts.sign)&v=\(Self.stsVersion)"
        guard let stsURL = URL(string: stsURLString) else {
            throw PlatformError.network("高驰 OSS STS 地址无效")
        }
        let stsData = try await HTTPClient.shared.get(url: stsURL, headers: ["User-Agent": Self.ua])
        guard let stsJson = corosJSONDict(stsData) else {
            throw PlatformError.network("高驰 OSS STS 获取失败：响应解析失败")
        }
        let stsOk = (stsJson["code"] as? NSNumber)?.intValue == 200
            || (stsJson["code"] as? String) == "200"
            || (stsJson["result"] as? String) == "0000"
            || (stsJson["status"] as? String) == "ok"
        guard stsOk else {
            throw PlatformError.network("高驰 OSS STS 失败：\(String(String(data: stsData, encoding: .utf8)?.prefix(150) ?? ""))")
        }
        let dataObj = stsJson["data"] as? [String: Any]
        guard let enc = dataObj?["credentials"] as? String ?? dataObj?["credential"] as? String ?? stsJson["credentials"] as? String else {
            throw PlatformError.network("高驰 OSS STS 无凭证")
        }
        // STS credentials 解码：去掉盐 + base64
        let cleaned = enc.replacingOccurrences(of: Self.stsSalt, with: "")
        guard let decodedData = Data(base64Encoded: cleaned),
              let decodedString = String(data: decodedData, encoding: .utf8),
              let ossCred = corosJSONDict(Data(decodedString.utf8)) else {
            throw PlatformError.network("高驰 OSS STS 凭证解码失败")
        }

        // 2) PUT ZIP 到 OSS
        let uploaded: Bool
        if sts.service == "aliyun" {
            uploaded = await uploadAliyunOss(bucket: sts.bucket, key: objectKey, data: zipData, cred: ossCred)
        } else {
            uploaded = await uploadAwsS3(bucket: sts.bucket, key: objectKey, data: zipData, cred: ossCred)
        }
        guard uploaded else {
            throw PlatformError.network("高驰 OSS 上传失败")
        }

        // 3) fit/import 注册（元数据调用，不传文件）
        let importBody: [String: Any] = [
            "source": 1,
            "timezone": 32,
            "bucket": sts.bucket,
            "md5": md5,
            "size": size,
            "object": objectKey,
            "serviceName": sts.service,
            "oriFileName": zipFileName,
        ]
        guard let importJsonData = try? JSONSerialization.data(withJSONObject: importBody),
              let importJsonString = String(data: importJsonData, encoding: .utf8),
              let importURL = URL(string: "\(teamApi())/activity/fit/import") else {
            throw PlatformError.network("高驰 fit/import 请求构造失败")
        }
        var headers = authHeaders(token: cred.token)
        headers["Origin"] = host()
        headers["Referer"] = "\(host())/"
        let respData: Data
        do {
            respData = try await HTTPClient.shared.post(url: importURL, headers: headers, body: .form(["jsonParameter": importJsonString]))
        } catch {
            throw PlatformError.network("高驰 fit/import 请求失败：\(error.localizedDescription)")
        }
        guard let json = corosJSONDict(respData) else {
            throw PlatformError.network("高驰 fit/import 响应解析失败")
        }
        let result = json["result"] as? String ?? ""
        let message = json["message"] as? String ?? ""
        let apiCode = json["apiCode"] as? String ?? ""
        let status = (json["data"] as? [String: Any])?["status"] as? Int ?? 0
        // token 过期检测（result=1019 或 message 含 Access token invalid）
        if result == "1019" || message.localizedCaseInsensitiveContains("Access token is invalid")
            || (message.localizedCaseInsensitiveContains("token") && message.localizedCaseInsensitiveContains("invalid")) {
            throw PlatformError.authFailed("高驰登录已过期，请重新登录高驰")
        }
        guard result == "0000", status == 2 else {
            throw PlatformError.network("高驰 fit/import 失败(result=\(result), status=\(status), apiCode=\(apiCode), msg=\(message))")
        }
    }

    /// userId：先 GET /account，失败从活动列表第一条取，都失败用 token 的 MD5 前 16 位兜底。
    private func getUserId(cred: CorosCredential) async -> String {
        if let url = URL(string: "\(teamApi())/account") {
            if let data = try? await HTTPClient.shared.get(url: url, headers: authHeaders(token: cred.token)),
               let json = corosJSONDict(data),
               json["result"] as? String == "0000" {
                let dataObj = json["data"] as? [String: Any]
                let uid = dataObj?["userId"] as? String ?? dataObj?["id"] as? String ?? ""
                if !uid.isEmpty { return uid }
            }
        }
        if let url = URL(string: "\(teamApi())/activity/query?modeList=&pageNumber=1&size=1") {
            if let data = try? await HTTPClient.shared.get(url: url, headers: authHeaders(token: cred.token)),
               let json = corosJSONDict(data),
               json["result"] as? String == "0000" {
                let dataObj = json["data"] as? [String: Any]
                if let list = dataObj?["dataList"] as? [[String: Any]], let first = list.first {
                    let uid = first["userId"] as? String ?? first["uid"] as? String ?? ""
                    if !uid.isEmpty { return uid }
                }
                let uid = dataObj?["userId"] as? String ?? dataObj?["uid"] as? String ?? ""
                if !uid.isEmpty { return uid }
            }
        }
        return String(corosMD5Hex(Data(cred.token.utf8)).prefix(16))
    }

    /// 阿里云 OSS PUT（OSS V1 签名），成功返回 true。
    private func uploadAliyunOss(bucket: String, key: String, data: Data, cred: [String: Any]) async -> Bool {
        guard let ak = cred["AccessKeyId"] as? String,
              let sk = cred["AccessKeySecret"] as? String,
              let token = cred["SecurityToken"] as? String,
              let url = URL(string: "https://\(bucket).oss-cn-beijing.aliyuncs.com/\(key)") else { return false }
        let f = DateFormatter()
        f.locale = Locale(identifier: "en_US_POSIX")
        f.dateFormat = "EEE, dd MMM yyyy HH:mm:ss 'GMT'"
        f.timeZone = TimeZone(secondsFromGMT: 0)
        let date = f.string(from: Date())
        let contentType = "application/octet-stream"
        let stringToSign = "PUT\n\n\(contentType)\n\(date)\nx-oss-security-token:\(token)\n/\(bucket)/\(key)"
        let signature = corosHmacSHA1Base64(key: sk, data: stringToSign)
        do {
            _ = try await HTTPClient.shared.request(
                url: url, method: "PUT",
                headers: [
                    "Authorization": "OSS \(ak):\(signature)",
                    "Date": date,
                    "Content-Type": contentType,
                    "x-oss-security-token": token,
                ],
                body: .binary(data, contentType: contentType)
            )
            return true
        } catch {
            return false
        }
    }

    /// AWS S3 PUT（SigV4 签名），成功返回 true。regionId 3 走 eu-central-1，其余 us-east-1。
    private func uploadAwsS3(bucket: String, key: String, data: Data, cred: [String: Any]) async -> Bool {
        guard let ak = cred["AccessKeyId"] as? String,
              let sk = cred["AccessKeySecret"] as? String,
              let token = cred["SecurityToken"] as? String,
              let url = URL(string: "https://\(bucket).s3.\(regionId == 3 ? "eu-central-1" : "us-east-1").amazonaws.com/\(key)") else { return false }
        let region = regionId == 3 ? "eu-central-1" : "us-east-1"
        let f = DateFormatter()
        f.locale = Locale(identifier: "en_US_POSIX")
        f.dateFormat = "yyyyMMdd'T'HHmmss'Z'"
        f.timeZone = TimeZone(secondsFromGMT: 0)
        let amzDate = f.string(from: Date())
        let dateStamp = String(amzDate.prefix(8))
        let payloadHash = corosSHA256Hex(data)
        let host = "\(bucket).s3.\(region).amazonaws.com"
        let canonicalHeaders = "host:\(host)\nx-amz-content-sha256:\(payloadHash)\nx-amz-date:\(amzDate)\nx-amz-security-token:\(token)\n"
        let canonicalRequest = "PUT\n/\(key)\n\n\(canonicalHeaders)\nhost;x-amz-content-sha256;x-amz-date;x-amz-security-token\n\(payloadHash)"
        let scope = "\(dateStamp)/\(region)/s3/aws4_request"
        let stringToSign = "AWS4-HMAC-SHA256\n\(amzDate)\n\(scope)\n\(corosSHA256Hex(Data(canonicalRequest.utf8)))"
        let kDate = corosHmacSHA256(key: Data(("AWS4" + sk).utf8), data: dateStamp)
        let kRegion = corosHmacSHA256(key: kDate, data: region)
        let kService = corosHmacSHA256(key: kRegion, data: "s3")
        let kSigning = corosHmacSHA256(key: kService, data: "aws4_request")
        let signature = corosHmacSHA256(key: kSigning, data: stringToSign).map { String(format: "%02x", $0) }.joined()
        do {
            _ = try await HTTPClient.shared.request(
                url: url, method: "PUT",
                headers: [
                    "Authorization": "AWS4-HMAC-SHA256 Credential=\(ak)/\(scope), SignedHeaders=host;x-amz-content-sha256;x-amz-date;x-amz-security-token, Signature=\(signature)",
                    "x-amz-date": amzDate,
                    "x-amz-content-sha256": payloadHash,
                    "x-amz-security-token": token,
                ],
                body: .binary(data, contentType: "application/octet-stream")
            )
            return true
        } catch {
            return false
        }
    }
}

// MARK: - 对外接口

/// 高驰中国（regionId 2，teamcnapi.coros.com，阿里云 OSS）。
/// 登录方式：网页登录（trainingcn.coros.com），本文件 login 抛 unsupported，见文件头。
public struct CorosCNAPI: PlatformAPI {
    public let source: DataSource = .corosCN
    public static let loginURL = "https://trainingcn.coros.com/"

    private let engine: CorosEngine

    public init() { self.engine = CorosEngine(source: .corosCN, regionId: 2) }

    /// 本地有没有凭证（不发网络请求）。
    public func isLoggedIn() async -> Bool { LoginStore.isLoggedIn(.corosCN) }

    public func login(username: String, password: String) async throws {
        // 安卓没有账号密码直登接口，高驰只能在网页登录后取 CPL-coros-token / CPL-coros-region。
        throw PlatformError.unsupported("高驰不支持账号密码直登，请在网页登录后由 App 注入凭证（见 saveCredential）")
    }

    /// 网页登录后，把 CPL-coros-token / CPL-coros-region 交给本实例（存钥匙串）。
    public func saveCredential(token: String, regionId: Int = 2, cookie: String = "") {
        var cred = CorosCredential()
        cred.token = token
        cred.regionId = regionId
        cred.cookie = cookie
        engine.saveCredential(cred)
    }

    /// 退出登录：清掉本平台凭证。
    public func logout() { engine.clearCredential() }

    /// 用户名校验（调 activity/query，token 有效返回 "高驰用户"，否则 nil）。
    public func getUsername() async -> String? { await engine.getUsername() }

    public func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        try await engine.getActivities(limit: limit, skip: skip)
    }

    public func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        try await engine.downloadFit(activity: activity)
    }

    public func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        try await engine.uploadFit(data: data, fileName: fileName, activity: activity)
    }
}

/// 高驰国际（regionId 1，teamapi.coros.com，AWS S3）。
/// 登录方式：网页登录（training.coros.com/login），本文件 login 抛 unsupported，见文件头。
public struct CorosIntlAPI: PlatformAPI {
    public let source: DataSource = .corosIntl
    public static let loginURL = "https://training.coros.com/login"

    private let engine: CorosEngine

    public init() { self.engine = CorosEngine(source: .corosIntl, regionId: 1) }

    /// 本地有没有凭证（不发网络请求）。
    public func isLoggedIn() async -> Bool { LoginStore.isLoggedIn(.corosIntl) }

    public func login(username: String, password: String) async throws {
        // 安卓没有账号密码直登接口，高驰只能在网页登录后取 CPL-coros-token / CPL-coros-region。
        throw PlatformError.unsupported("高驰不支持账号密码直登，请在网页登录后由 App 注入凭证（见 saveCredential）")
    }

    /// 网页登录后，把 CPL-coros-token / CPL-coros-region 交给本实例（存钥匙串）。
    public func saveCredential(token: String, regionId: Int = 1, cookie: String = "") {
        var cred = CorosCredential()
        cred.token = token
        cred.regionId = regionId
        cred.cookie = cookie
        engine.saveCredential(cred)
    }

    /// 退出登录：清掉本平台凭证。
    public func logout() { engine.clearCredential() }

    /// 用户名校验（调 activity/query，token 有效返回 "高驰用户"，否则 nil）。
    public func getUsername() async -> String? { await engine.getUsername() }

    public func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        try await engine.getActivities(limit: limit, skip: skip)
    }

    public func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        try await engine.downloadFit(activity: activity)
    }

    public func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        try await engine.uploadFit(data: data, fileName: fileName, activity: activity)
    }
}

// TODO（待真机验证）：
// 1. 国际区 regionId 3（欧洲，teameuapi.coros.com）只保留了配置，未单独出 struct；
//    如需欧洲入口，照 CorosIntlAPI 再包一个 regionId=3 的 struct 即可。
// 2. ZIP 打包用 raw DEFLATE（Compression 去 zlib 头尾），与安卓 ZipOutputStream 的输出是否
//    被高驰服务端同等接受，待真机验证；若失败，改用存储（method 0）或系统压缩库重试。
// 3. 阿里云 OSS 与 AWS S3 的 PUT 签名是按安卓代码逐字移植的，未经真机验证。
// 4. fit/import 的 timezone=32、source=1 是安卓写死的值，原样照搬，含义待确认。

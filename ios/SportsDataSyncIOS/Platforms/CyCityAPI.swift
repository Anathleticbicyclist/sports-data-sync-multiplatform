// 待真机验证
// CyCityAPI.swift — CyCity（对照安卓真机出包源码 smali_source 的 CyCityApi 移植）
//
//
// 任务让先确认 TwoBuluApi.kt 是不是 CyCity 的安卓实现——不是：
// TwoBuluApi.kt 文件头写明是“两步路 (2bulu)”，包名 com.jichi.ob.api，
// 域名是 https://www.2bulu.com，走 WebView 登录 + cookie，上传/下载接口都未确认，
// 数据源是 DataSource.TWO_BULU（两步路），跟 CyCity 没有任何关系。
// CyCity 的安卓实现在 Kotlin 参考树（app/src/main/java）里根本没有，只有真机出包源码
// smali_source/com/jichi/ob/api/CyCityApi*.smali 里有，域名是 https://cycity.cc。
// 本文件全部按 smali 里的 CyCityApi 移植，域名和接口以 smali 为准，没有猜的部分。
// 另：Kotlin 参考树的 model/Activity.kt 里也没有 DataSource.CYCITY，
// 但 smali 里 DataSource.CYCITY 是真实存在的（getActivities 构造记录时直接引用），
// 说明参考树比出包源码旧了一版；iOS 的 DataSource.cycity 与 smali 一致。
// 骨架 Models.swift 里 cycity 的 loginMethod 写的是.web 并注释“安卓源码里没有叫 CyCity 的平台”——
// 这句注释是错的：CyCity 有手机号 + 密码纯 API 登录（见下），应为.account，等汇总人改。
//
// 登录：手机号 + 密码纯 API
// POST https://cycity.cc/api/auth/mobile/login
// JSON 体 {"phonenumber":.., "password":.., "grantType": "password"}
// 头：User-Agent（Chrome 131）+ Origin: http://app.cycity.cc
// → HTTP 200 且 JSON code==200 → data.access_token + data.userId（nickname 固定 "CyCity用户"）。
// 列表：GET https://cycity.cc/api/mobile/cycling/rideRecordsPage?pageNum={skip/limit+1}&pageSize={limit}
// 头：Bearer + UA → code==200 → rows[]：id / startTime / movingDistance / movingDuration。
// 下载 FIT：POST https://cycity.cc/api/mobile/cycling/exportFitFile?rideId={id}（空 body）
// 头：Bearer + UA → HTTP 200，字节数 ≥100 才算成功，直接返回 FIT 文件。
// 上传 FIT（两步，smali uploadFit 原样）：
// ① POST https://cycity.cc/api/mobile/cycling/import
// multipart，字段名 file，文件名原样，Content-Type application/octet-stream，头 Bearer + UA
// → JSON code==200 → 取 data 对象；
// ② POST https://cycity.cc/api/mobile/cycling/uploadImportData
// JSON 体就是第 ① 步返回的 data 对象原样序列化，Content-Type application/json，头 Bearer + UA
// → code==200 即成功（"CyCity upload success"）。
// 密钥：无固定密钥，token 全部运行时注入，本文件不含任何真实凭证。

import Foundation

/// CyCity：双向（下载 + 上传），手机号 + 密码纯 API 登录。
struct CyCityAPI: PlatformAPI {
let source: DataSource =.cycity

private static let base = "https://cycity.cc/api"
private static let loginURL = base + "/auth/mobile/login"
private static let listURL = base + "/mobile/cycling/rideRecordsPage"
private static let exportFitURL = base + "/mobile/cycling/exportFitFile"
private static let importURL = base + "/mobile/cycling/import"
private static let uploadImportDataURL = base + "/mobile/cycling/uploadImportData"
private static let userAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
private static let origin = "http://app.cycity.cc"

private let session = CyCitySession()

// MARK: - PlatformAPI

func isLoggedIn() async -> Bool {
guard let token = session.token,!token.isEmpty else { return false}
do {
// 安卓 getUsername：列表接口 pageNum=1&pageSize=1，code==200 即有效。
let url = URL(string: "\(Self.listURL)?pageNum=1&pageSize=1")!
let (data, http) = try await request(url: url, headers: authHeaders(token: token))
guard http.statusCode == 200,
let json = jsonObject(data),
(json["code"] as? Int) == 200 else { return false}
return true
} catch {
return false
}
}

/// 手机号 + 密码登录（smali login 原样）。
func login(username: String, password: String) async throws {
session.phone = username
session.password = password
let body: [String: Any] = [
"phonenumber": username,
"password": password,
"grantType": "password",
]
let bodyData = try JSONSerialization.data(withJSONObject: body)
let (data, http) = try await request(
url: URL(string: Self.loginURL)!, method: "POST",
headers: ["User-Agent": Self.userAgent, "Origin": Self.origin],
body: bodyData, contentType: "application/json"
)
guard http.statusCode == 200 else {
throw PlatformError.authFailed("CyCity 登录失败（HTTP \(http.statusCode)）")
}
guard let json = jsonObject(data),
(json["code"] as? Int) == 200,
let dataObj = json["data"] as? [String: Any],
let token = dataObj["access_token"] as? String,!token.isEmpty else {
throw PlatformError.authFailed("CyCity 登录失败：账号或密码错误")
}
session.token = token
session.userId = dataObj["userId"] as? String?? ""
}

func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
let token = try requireToken()
let pageSize = max(limit, 1)
// 安卓：pageNum = skip/limit + 1，只拉一页。
let pageNum = skip / pageSize + 1
let url = URL(string: "\(Self.listURL)?pageNum=\(pageNum)&pageSize=\(pageSize)")!
let (data, http) = try await request(url: url, headers: authHeaders(token: token))
guard http.statusCode == 200 else {
throw PlatformError.network("CyCity 列表 HTTP \(http.statusCode)")
}
guard let json = jsonObject(data),
(json["code"] as? Int) == 200,
let rows = json["rows"] as? [[String: Any]] else {
throw PlatformError.parse("CyCity 列表解析失败")
}
var out: [ActivityRecord] = []
for row in rows {
guard let id = row["id"] as? String,!id.isEmpty else { continue}
let startRaw = (row["startTime"] as? String)?? ""
out.append(ActivityRecord(
id: id,
source:.cycity,
title: "CyCity骑行",
startDate: parseStartDate(startRaw),
// TODO: 待真机验证 — movingDistance 的单位。
// smali 把 movingDistance 的原始值直接当距离传进 ActivityRecord（安卓那边单位是公里），
// 字段名与 movingDuration（秒）并列，看着像米；iOS 这边 distanceMeters 用的就是米，
// 所以这里原样传；如果真机上里程差了 1000 倍，说明服务端给的是公里，届时 ×1000。
distanceMeters: doubleField(row, "movingDistance"),
durationSeconds: Double(int64Field(row, "movingDuration")),
elevationGainMeters: 0,
sportType: "cycling",
remoteId: id,
fileName: "cycity_\(id).fit"
))
}
// 安卓只拉一页、不做 skip/limit 截取；iOS 协议要求 skip/limit，这里按页内偏移补上。
// TODO: 待真机验证 — skip 跨页时是否要多拉几页（安卓只拉 skip/limit+1 那一页）。
let skipInPage = skip % pageSize
return Array(out.dropFirst(skipInPage).prefix(limit))
}

/// 下载一条活动的 FIT 字节（POST 空 body 到 exportFitFile，smali downloadFit 原样）。
func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
let token = try requireToken()
let rideId = activity.remoteId.isEmpty? activity.id: activity.remoteId
let url = URL(string: "\(Self.exportFitURL)?rideId=\(formEncode(rideId))")!
// 安卓：POST 空字节 body（不是 GET）。
let (data, http) = try await request(url: url, method: "POST", headers: authHeaders(token: token),
body: Data(), contentType: "application/octet-stream")
guard http.statusCode == 200 else {
throw PlatformError.network("CyCity 下载失败（HTTP \(http.statusCode)）")
}
// 安卓：返回字节 <100 即判定失败（"downloadFit too small"）。
guard data.count >= 100 else {
throw PlatformError.parse("CyCity 下载的文件过小（\(data.count) 字节），可能不是 FIT 文件")
}
return data
}

/// 上传 FIT 文件（两步，smali uploadFit 原样）。
func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
let token = try requireToken()
// ① multipart 上传到 /import，取回 data 对象。
let importData = try await uploadMultipart(
url: URL(string: Self.importURL)!,
data: data, fieldName: "file", fileName: fileName,
contentType: "application/octet-stream",
headers: authHeaders(token: token)
)
guard let importJson = jsonObject(importData),
(importJson["code"] as? Int) == 200 else {
let msg = (jsonObject(importData)?["msg"] as? String)?? ""
throw PlatformError.network("CyCity 上传失败（import 步骤）：\(msg.isEmpty? "HTTP 响应异常": msg)")
}
guard let importPayload = importJson["data"] as? [String: Any] else {
throw PlatformError.parse("CyCity 上传失败：import 响应里没有 data")
}
// ② 把第 ① 步的 data 对象原样序列化成 JSON，POST 到 /uploadImportData 确认入库。
let confirmBody = try JSONSerialization.data(withJSONObject: importPayload)
let (confirmData, confirmHttp) = try await request(
url: URL(string: Self.uploadImportDataURL)!, method: "POST",
headers: authHeaders(token: token),
body: confirmBody, contentType: "application/json"
)
guard confirmHttp.statusCode == 200 else {
throw PlatformError.network("CyCity 上传失败（确认步骤 HTTP \(confirmHttp.statusCode)）")
}
guard let confirmJson = jsonObject(confirmData),
(confirmJson["code"] as? Int) == 200 else {
let msg = (jsonObject(confirmData)?["msg"] as? String)?? ""
throw PlatformError.network("CyCity 上传失败（确认步骤）：\(msg.isEmpty? "服务端未确认入库": msg)")
}
// code==200 即成功（smali："CyCity upload success"）。
}

// MARK: - 登录态

private func requireToken() throws -> String {
guard let token = session.token,!token.isEmpty else { throw PlatformError.notLoggedIn}
return token
}

private func authHeaders(token: String) -> [String: String] {
["User-Agent": Self.userAgent, "Authorization": "Bearer \(token)"]
}

/// 本文件专用的请求方法：要看 HTTP 状态码与业务码（code==200），走 HTTPClient.shared.requestRaw
///（非 2xx 不抛错，状态码和响应体都返回给调用方判断）。
private func request(
url: URL, method: String = "GET", headers: [String: String] = [:],
body: Data? = nil, contentType: String? = nil, timeout: TimeInterval = 60
) async throws -> (Data, HTTPURLResponse) {
var req = URLRequest(url: url)
req.httpMethod = method
req.timeoutInterval = timeout
for (k, v) in headers { req.setValue(v, forHTTPHeaderField: k)}
if let body = body {
req.httpBody = body
if let ct = contentType { req.setValue(ct, forHTTPHeaderField: "Content-Type")}
}
do {
let (data, http) = try await HTTPClient.shared.requestRaw(req)
return (data, http)
} catch let e as PlatformError { throw e}
catch { throw PlatformError.network(error.localizedDescription)}
}

/// multipart 上传（字段 file + 文件名 + application/octet-stream，smali 用 MultipartBody.FORM 同款）。
private func uploadMultipart(
url: URL, data: Data, fieldName: String, fileName: String,
contentType: String, headers: [String: String]
) async throws -> Data {
let boundary = "Boundary-\(UUID().uuidString)"
var body = Data()
body.append("--\(boundary)\r\n".data(using:.utf8)!)
body.append("Content-Disposition: form-data; name=\"\(fieldName)\"; filename=\"\(fileName)\"\r\n".data(using:.utf8)!)
body.append("Content-Type: \(contentType)\r\n\r\n".data(using:.utf8)!)
body.append(data)
body.append("\r\n--\(boundary)--\r\n".data(using:.utf8)!)
var allHeaders = headers
allHeaders["Content-Type"] = "multipart/form-data; boundary=\(boundary)"
let (result, http) = try await request(url: url, method: "POST", headers: allHeaders, body: body, timeout: 120)
guard http.statusCode == 200 else {
throw PlatformError.network("CyCity 上传失败（HTTP \(http.statusCode)）")
}
return result
}

// MARK: - 时间解析

/// startTime 字段格式 smali 没写死（原样透传进记录），这里按常见格式尽力解析，失败回 1970。
/// TODO: 待真机验证 — startTime 到底是什么格式（"yyyy-MM-dd HH:mm:ss"？ISO8601？毫秒时间戳？）。
private func parseStartDate(_ raw: String) -> Date {
guard!raw.isEmpty else { return Date(timeIntervalSince1970: 0)}
if let ms = Int64(raw), ms > 1_000_000_000 {
return Date(timeIntervalSince1970: TimeInterval(ms > 1_000_000_000_000? ms: ms * 1000) / 1000)
}
let f = DateFormatter()
f.locale = Locale(identifier: "en_US_POSIX")
for format in ["yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd'T'HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy/MM/dd HH:mm:ss", "yyyy-MM-dd"] {
f.dateFormat = format
if let d = f.date(from: raw) { return d}
}
let iso = ISO8601DateFormatter()
if let d = iso.date(from: raw) { return d}
return Date(timeIntervalSince1970: 0)
}
}

// MARK: - 登录态（只放内存；落盘由 App 层负责）

private final class CyCitySession {
var token: String?
var userId: String = ""
var phone: String?
var password: String?
}

// MARK: - 本文件内的小工具（不碰共享类型）

private func formEncode(_ s: String) -> String {
s.addingPercentEncoding(withAllowedCharacters:.cyCityFormAllowed)?? s
}

private extension CharacterSet {
static let cyCityFormAllowed = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~")
}

private func jsonObject(_ data: Data) -> [String: Any]? {
(try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
}

private func doubleField(_ dict: [String: Any], _ key: String) -> Double {
if let n = dict[key] as? NSNumber { return n.doubleValue}
if let s = dict[key] as? String, let v = Double(s) { return v}
return 0
}

private func int64Field(_ dict: [String: Any], _ key: String) -> Int64 {
if let n = dict[key] as? NSNumber { return n.int64Value}
if let s = dict[key] as? String, let v = Int64(s) { return v}
return 0
}

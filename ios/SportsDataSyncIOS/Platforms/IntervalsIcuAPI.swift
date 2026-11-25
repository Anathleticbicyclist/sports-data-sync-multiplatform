// 待真机验证
// Intervals.icu — 对照安卓 IntervalsIcuApi.kt（v9.6.9）原样移植
//
// 登录：个人 API Key（在 intervals.icu 设置页底部复制），Basic auth——
//   用户名固定为字面 "API_KEY"，密码为真实 Key：
//   Authorization: Basic base64("API_KEY:{key}")。
//   参考官方 Cookbook：
//   curl -F file=@x.fit 'https://intervals.icu/api/v1/athlete/0/activities' -u API_KEY:<key>
// 校验：GET /api/v1/athlete/0/activities?oldest=...&newest=...（200=Key 有效，401=无效）。
//   本文件 login(username:password:) 把 password 当 API Key 用（username 忽略，安卓同款：
//   用户名固定 "API_KEY"），随后调当日窗口接口校验一次。
// 上传：POST /api/v1/athlete/0/activities?external_id={活动ID}
//   multipart 字段 file，支持 .fit/.tcx/.gpx/.zip/.gz；
//   external_id 用于去重/幂等（同一 external_id 重复上传会更新而非新增）。
// 列表：安卓 IntervalsIcuApi.kt 没有拉取活动列表的方法，只有 validateKey 用当日窗口
//   调一次列表接口校验 Key。本文件 fetchActivities 复用同一接口，窗口取最近 365 天
//   （oldest=今天-365天，newest=今天），再在客户端按 skip/limit 切片；
//   TODO: 待真机验证 — 安卓从未实现列表拉取，365 天窗口与字段映射（id/name/
//   start_date_local/distance 米/moving_time 秒）均以官方接口实际返回为准。
// 下载单个活动 FIT：安卓源码里没有对应端点，本文件 downloadActivity 抛 unsupported，
//   不编造接口地址；TODO: 待真机验证官方活动下载端点后再接。
// 课表下载：README 称“Intervals.icu 支持课表下载+推送到 iGPSPORT/百锐腾”，但安卓全仓
//   库 grep 不到任何课表（workout）下载端点与实现。本文件 fetchWorkouts() 抛 unsupported
//   并留 TODO，不编造端点；待真机验证官方课表接口后再接。
// 密钥：API Key 全部运行时注入，本文件不含任何真实 Key；Key 只保存在本机。
// 网络：状态敏感的调用走 HTTPClient.shared.requestRaw（非 2xx 不抛错，状态码和正文都返回；
//   超时走请求自带的值，上传 300 秒）。

import Foundation

struct IntervalsIcuAPI: PlatformAPI {
    let source: DataSource = .intervalsIcu

    static let loginURL = "https://intervals.icu/settings"

    private static let base = "https://intervals.icu/api/v1"
    private static let apiKeyUser = "API_KEY"

    private let keyStore = IntervalsIcuKeyStore()

    /// 当前 API Key（登录后由 login 写入；App 层也可直接注入已保存的 Key）。
    func setApiKey(_ apiKey: String) { keyStore.apiKey = apiKey }

    /// 只看本地有没有 API Key，不发网络请求（协议口径）。
    /// 如需实测校验 Key，另调 validateKey(_:)。
    func isLoggedIn() async -> Bool {
        guard let apiKey = keyStore.apiKey, !apiKey.isEmpty else { return false }
        return true
    }

    func login(username: String, password: String) async throws {
        // 协议口径：API Key 登录不在这个方法里，请调 login(apiKey:)（password 即 API Key 也可走那里）。
        throw PlatformError.unsupported("Intervals.icu 用个人 API Key 登录（设置页底部复制），请调 login(apiKey:)")
    }

    /// API Key 登录：password 即 API Key（Basic auth 用户名固定为字面 "API_KEY"）。
    /// 登录成功后调当日窗口接口校验一次 Key 是否有效。
    func login(apiKey: String) async throws {
        let key = apiKey.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !key.isEmpty else {
            throw PlatformError.authFailed("请输入 Intervals.icu 的 API Key（设置页底部复制）")
        }
        guard await validateKey(key) else {
            throw PlatformError.authFailed("Intervals.icu API Key 无效或已失效，请重新登录")
        }
        keyStore.apiKey = key
    }

    /// 校验 API Key：拉取当日活动列表，200=有效。
    func validateKey(_ apiKey: String) async -> Bool {
        do {
            let today = dateString(Date())
            var request = URLRequest(url: URL(string: "\(Self.base)/athlete/0/activities?oldest=\(today)&newest=\(today)")!)
            request.httpMethod = "GET"
            request.timeoutInterval = 30
            request.setValue(basicAuth(apiKey), forHTTPHeaderField: "Authorization")
            let (_, response) = try await HTTPClient.shared.requestRaw(request)
            return response.statusCode == 200
        } catch {
            return false
        }
    }

    /// 列表：复用校验接口，窗口取最近 365 天，再在客户端按 skip/limit 切片。
    /// TODO: 待真机验证 — 安卓从未实现列表拉取，窗口与字段映射以官方接口实际返回为准。
    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord] {
        let apiKey = try requireApiKey()
        let calendar = Calendar.current
        let newest = dateString(Date())
        let oldestDate = calendar.date(byAdding: .day, value: -365, to: Date()) ?? Date()
        let oldest = dateString(oldestDate)
        var request = URLRequest(url: URL(string: "\(Self.base)/athlete/0/activities?oldest=\(oldest)&newest=\(newest)")!)
        request.httpMethod = "GET"
        request.timeoutInterval = 120
        request.setValue(basicAuth(apiKey), forHTTPHeaderField: "Authorization")
        let (data, response) = try await HTTPClient.shared.requestRaw(request)
        let httpCode = response.statusCode
        if httpCode == 401 {
            throw PlatformError.authFailed("Intervals.icu API Key 无效或已失效，请重新登录")
        }
        guard httpCode == 200 else {
            throw PlatformError.network("Intervals.icu 列表失败 HTTP \(httpCode)")
        }
        guard let rows = try JSONSerialization.jsonObject(with: data) as? [[String: Any]] else {
            throw PlatformError.parse("Intervals.icu 列表解析失败")
        }
        var result: [ActivityRecord] = []
        for item in rows {
            let id = (item["id"] as? NSNumber)?.int64Value ?? 0
            if id <= 0 { continue }
            let name = (item["name"] as? String) ?? ""
            let startDateLocal = (item["start_date_local"] as? String) ?? ""
            let startMs = parseDateMs(startDateLocal)
            // 列表不给爬升：爬升记 0，类型默认骑行（下载后由 FitParser 解析补全）。
            result.append(ActivityRecord(
                id: String(id),
                source: source,
                title: name.isEmpty ? "运动 \(id)" : name,
                startDate: startMs > 0 ? Date(timeIntervalSince1970: TimeInterval(startMs) / 1000) : Date(timeIntervalSince1970: 0),
                // distance 单位为米
                distanceMeters: (item["distance"] as? NSNumber)?.doubleValue ?? 0,
                durationSeconds: Double((item["moving_time"] as? NSNumber)?.intValue
                    ?? (item["elapsed_time"] as? NSNumber)?.intValue ?? 0),
                elevationGainMeters: 0,
                sportType: "cycling",
                remoteId: String(id),
                fileName: ""
            ))
        }
        // 官方返回按时间倒序；按 skip/limit 切片
        let start = min(skip, result.count)
        let end = min(skip + limit, result.count)
        guard start < end else { return [] }
        return Array(result[start..<end])
    }

    func downloadActivity(_ activity: ActivityRecord) async throws -> Data {
        // 安卓源码里没有下载单个活动 FIT 的端点，不编造接口地址。
        // TODO: 待真机验证官方活动下载端点（疑似 /api/v1/activity/{id}/...，需实测确认）后再接。
        throw PlatformError.unsupported("Intervals.icu 下载单个活动文件的接口在安卓源码中没有，待真机验证官方端点后再接")
    }

    /// 上传活动文件（.fit/.tcx/.gpx/.zip/.gz）；external_id 取活动 id，用于去重/幂等。
    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws {
        let apiKey = try requireApiKey()
        let boundary = "Boundary-\(UUID().uuidString)"
        var body = Data()
        body.appendMultipartFile(field: "file", fileName: fileName, mimeType: "application/octet-stream", fileData: data, boundary: boundary)
        body.append("--\(boundary)--\r\n".data(using: .utf8)!)

        var urlString = "\(Self.base)/athlete/0/activities"
        if !activity.id.isEmpty, let encoded = activity.id.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
            urlString += "?external_id=\(encoded)"
        }
        var request = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = "POST"
        request.timeoutInterval = 300
        request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        request.setValue(basicAuth(apiKey), forHTTPHeaderField: "Authorization")
        request.httpBody = body

        let (respData, resp) = try await HTTPClient.shared.requestRaw(request)
        let httpCode = resp.statusCode
        let text = String(data: respData, encoding: .utf8) ?? ""
        switch httpCode {
        case 200...299:
            return
        case 401:
            throw PlatformError.authFailed("Intervals.icu API Key 无效或已失效，请重新登录")
        case 429:
            throw PlatformError.network("Intervals.icu 接口限流，请稍后重试")
        default:
            throw PlatformError.network("Intervals.icu 上传失败 HTTP \(httpCode)：\(text.prefix(300))")
        }
    }

    /// 课表下载：README 称支持，但安卓全仓库无课表下载端点与实现，不编造。
    /// TODO: 待真机验证官方课表接口（路径、鉴权、返回格式）后再接；接通后供“推送到 iGPSPORT/百锐腾”使用。
    func fetchWorkouts() async throws -> Data {
        throw PlatformError.unsupported("Intervals.icu 课表下载接口在安卓源码中没有，待真机验证官方端点后再接")
    }

    // MARK: - 内部

    private func requireApiKey() throws -> String {
        guard let apiKey = keyStore.apiKey, !apiKey.isEmpty else {
            throw PlatformError.notLoggedIn
        }
        return apiKey
    }

    /// Basic auth：用户名固定为字面 "API_KEY"，密码为真实 Key。
    private func basicAuth(_ apiKey: String) -> String {
        let credentials = "\(Self.apiKeyUser):\(apiKey)"
        return "Basic " + Data(credentials.utf8).base64EncodedString()
    }

    private func dateString(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter.string(from: date)
    }

    private func parseDateMs(_ string: String) -> Int {
        if string.isEmpty { return 0 }
        let iso = ISO8601DateFormatter()
        if let date = iso.date(from: string) {
            return Int(date.timeIntervalSince1970 * 1000)
        }
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        for format in ["yyyy-MM-dd'T'HH:mm:ss", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd"] {
            formatter.dateFormat = format
            if let date = formatter.date(from: string) {
                return Int(date.timeIntervalSince1970 * 1000)
            }
        }
        return 0
    }
}

/// Intervals.icu API Key 只放内存；Keychain 落盘与恢复由 App 层负责。
final class IntervalsIcuKeyStore {
    var apiKey: String?
}

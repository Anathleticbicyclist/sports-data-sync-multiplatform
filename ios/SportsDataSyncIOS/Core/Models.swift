// 待真机验证
// Models.swift
// 鸡翅幸哲迈进OB iOS 版 — 共享数据模型
// 这里只定义全工程共用的类型，其他组都按这个来，不许重定义。
// 各平台自己的登录/接口细节（短信码、API Key、OAuth 等）写在各自的 Platforms/*.swift 里，
// 需要特殊登录方法时在平台文件里另加方法，不要改下面的 PlatformAPI 协议。

import Foundation

// MARK: - 平台

/// 登录方式：用户在登录页看到的那种。
public enum LoginMethod: String, Codable, CaseIterable {
    /// 账号 + 密码
    case account
    /// OAuth2 授权（跳网页授权，回来带 token）
    case oauth2
    /// 手机号 + 短信验证码
    case smsCode
    /// 粘贴个人 API Key
    case apiKey
    /// 在网页里登录，登录完自动保存登录态
    case web

    public var displayName: String {
        switch self {
        case .account: return "账号登录"
        case .oauth2: return "OAuth2 授权"
        case .smsCode: return "手机号验证码"
        case .apiKey: return "API Key"
        case .web: return "网页登录"
        }
    }
}

/// 21 个平台。iGPSPORT 国内/国际、佳明国内/国际、高驰国内/国际各算两个入口，
/// 但 iGPSPORT 共用一个 IgpsportAPI.swift，佳明共用 GarminAPI.swift（分 GarminIntlAPI / GarminCNAPI 两个文件只是为了把国内国外分开写），
/// 高驰共用一个 CorosAPI.swift——加起来正好 21 个平台文件。
public enum DataSource: String, CaseIterable, Identifiable, Codable {
    case igpsport
    case igpsportIntl
    case xingzhe
    case magene
    case blackbird
    case giant
    case outbase
    case intervalsIcu
    case garminIntl
    case garminCN
    case corosCN
    case corosIntl
    case strava
    case wahoo
    case myWhoosh
    case zwift
    case keep
    case codoon
    case zepp
    case komoot
    case suunto
    case bryton
    case cycity

    public var id: String { rawValue }

    /// 中文名，界面上显示这个。
    public var displayName: String {
        switch self {
        case .igpsport: return "iGPSPORT"
        case .igpsportIntl: return "iGPSPORT国际"
        case .xingzhe: return "行者"
        case .magene: return "迈金"
        case .blackbird: return "黑鸟单车"
        case .giant: return "捷安特"
        case .outbase: return "Outbase"
        case .intervalsIcu: return "Intervals.icu"
        case .garminIntl: return "佳明国际"
        case .garminCN: return "佳明中国"
        case .corosCN: return "高驰中国"
        case .corosIntl: return "高驰国际"
        case .strava: return "Strava"
        case .wahoo: return "Wahoo"
        case .myWhoosh: return "MyWhoosh"
        case .zwift: return "Zwift"
        case .keep: return "Keep"
        case .codoon: return "咕咚"
        case .zepp: return "Zepp"
        case .komoot: return "Komoot"
        case .suunto: return "松拓"
        case .bryton: return "百锐腾"
        case .cycity: return "CyCity"
        }
    }

    /// 能不能从这个平台下载（当数据源）。
    /// 以安卓代码 + 安卓 README 的平台表为准（2026-11-25 已核对）：
    /// 不能下载的是 Outbase、Strava（只当上传目标）、捷安特（只上传，安卓 GiantApi.kt
    /// 只有登录/校验/上传，没有列表和下载）、Intervals.icu（只上传，安卓
    /// IntervalsIcuApi.kt 只有校验 Key 和上传 FIT，没有列表/下载；课表下载端点安卓全仓库
    /// 也没有，不编造）。其余都能下载。
    public var supportsDownload: Bool {
        switch self {
        case .outbase, .strava, .giant, .intervalsIcu:
            return false
        default:
            return true
        }
    }

    /// 能不能往这个平台上传（当同步目标）。
    /// 以安卓代码 + 安卓 README 的平台表为准（2026-11-25 已核对）：
    /// Komoot、松拓是双向（安卓 KomootApi.kt 有 upload、SuuntoApi.kt 有 upload 三步上传，
    /// README 表也是 ✅/✅）；只下载不上传的是 MyWhoosh、Zwift、咕咚、Zepp、百锐腾
    /// （上传还在开发中）。Keep 上传是半自动引导，见 isSemiAutoUpload。
    public var supportsUpload: Bool {
        switch self {
        case .myWhoosh, .zwift, .codoon, .zepp, .bryton:
            return false
        default:
            return true
        }
    }

    /// Keep 的上传是半自动的：软件生成 FIT 文件存在本地，用户自己在 Keep App 里手动导入，
    /// 不是软件直接传上去。界面上要写清楚，别让用户以为点一下就传完了。
    public var isSemiAutoUpload: Bool { self == .keep }

    /// 这个平台怎么登录。按安卓 README 的登录表写。
    public var loginMethod: LoginMethod {
        switch self {
        case .outbase:
            return .smsCode
        case .intervalsIcu:
            return .apiKey
        case .strava:
            return .web
        case .suunto:
            return .oauth2
        case .cycity:
            // CyCity：手机号 + 密码纯 API 登录（域名 cycity.cc，对照安卓出包源码 smali 的
            // CyCityApi，不是两步路 TwoBulu——TwoBulu 是 2bulu.com 的另一个平台）。
            return .account
        default:
            // 账号登录：iGPSPORT（国内/国际）、行者、迈金、黑鸟、捷安特、佳明（国内/国际）、
            // 高驰（国内/国际）、Wahoo、MyWhoosh、Zwift、Keep（手机号+密码）、咕咚（手机号+密码）、
            // Zepp（邮箱/手机号+密码）、Komoot（邮箱+密码）、百锐腾。
            // 其中 Wahoo 底层走的是 OAuth2 授权流程，但用户填的是账号密码，界面上按账号登录显示。
            return .account
        }
    }
}

// MARK: - 活动记录

/// 一条运动记录，全平台通用。距离用米、时长用秒，跟安卓那边“距离用公里、时长用 Int 秒”不一样，
/// iOS 这边统一按这个来，平台文件里从接口拿回来自己换算。
public struct ActivityRecord: Identifiable, Codable {
    public var id: String
    public var source: DataSource
    public var title: String
    public var startDate: Date
    public var distanceMeters: Double
    public var durationSeconds: Double
    public var elevationGainMeters: Double
    public var sportType: String
    public var remoteId: String
    public var fileName: String

    public init(
        id: String,
        source: DataSource,
        title: String,
        startDate: Date,
        distanceMeters: Double,
        durationSeconds: Double,
        elevationGainMeters: Double,
        sportType: String,
        remoteId: String,
        fileName: String
    ) {
        self.id = id
        self.source = source
        self.title = title
        self.startDate = startDate
        self.distanceMeters = distanceMeters
        self.durationSeconds = durationSeconds
        self.elevationGainMeters = elevationGainMeters
        self.sportType = sportType
        self.remoteId = remoteId
        self.fileName = fileName
    }
}

// MARK: - 同步任务

/// 一个同步任务：一个来源，往多个目标传。
/// 注意：安卓的任务模型是“多来源 × 多目标”还带增量、强制重传、坐标转换等一堆字段，
/// iOS 骨架这里先按最简单的样子定（同步引擎组如果需要更多字段，找汇总人商量再一起改这个文件，
/// 不要各写各的）。
public struct SyncTask: Identifiable, Codable {
    public var id: UUID
    public var name: String
    public var source: DataSource
    public var targets: [DataSource]
    public var syncCount: Int
    public var skipCount: Int
    public var enabled: Bool
    public var lastRun: Date?

    public init(
        id: UUID = UUID(),
        name: String,
        source: DataSource,
        targets: [DataSource],
        syncCount: Int,
        skipCount: Int,
        enabled: Bool,
        lastRun: Date? = nil
    ) {
        self.id = id
        self.name = name
        self.source = source
        self.targets = targets
        self.syncCount = syncCount
        self.skipCount = skipCount
        self.enabled = enabled
        self.lastRun = lastRun
    }
}

// MARK: - 错误

/// 平台接口统一报错。界面上直接显示 localizedDescription 里的中文就行。
public enum PlatformError: Error {
    case notLoggedIn
    case unsupported(String)
    case network(String)
    case parse(String)
    case authFailed(String)
}

extension PlatformError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .notLoggedIn:
            return "还没登录这个平台，请先去登录页登录"
        case .unsupported(let message):
            return message
        case .network(let message):
            return "网络请求失败：\(message)"
        case .parse(let message):
            return "数据解析失败：\(message)"
        case .authFailed(let message):
            return "登录失败：\(message)"
        }
    }
}

// MARK: - 平台接口协议

/// 每个平台文件都要实现这个协议。方法名、参数、返回值全工程统一，别自己另起一套。
/// 特殊登录（短信验证码、API Key、OAuth）在各平台文件里另加方法，不改这个协议。
public protocol PlatformAPI {
    var source: DataSource { get }

    /// 当前有没有登录态（本地凭证还在不在，不发网络请求）。
    func isLoggedIn() async -> Bool

    /// 账号 + 密码登录。短信码、API Key、OAuth 的平台在这个方法之外另写自己的登录方法。
    func login(username: String, password: String) async throws

    /// 拉活动列表。limit 是要几条，skip 是跳过最近的几条（增量同步用）。
    func fetchActivities(limit: Int, skip: Int) async throws -> [ActivityRecord]

    /// 下载一条活动的 FIT / GPX 文件内容。
    func downloadActivity(_ activity: ActivityRecord) async throws -> Data

    /// 把 FIT / GPX 文件内容上传到这个平台。
    func uploadActivity(data: Data, fileName: String, activity: ActivityRecord) async throws
}

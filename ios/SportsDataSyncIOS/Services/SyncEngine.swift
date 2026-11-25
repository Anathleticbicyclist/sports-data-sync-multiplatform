// 待真机验证
// 同步引擎：下载 → 保存本地 → 上传到多目标。对应安卓 SyncCoordinator + UploadEngine + MainActivity.startSync/runTask。
//
// 共享类型以骨架组 Core/Models.swift 为准（本文件不重定义，只用它）：
// DataSource（23 个 case，rawValue 做键；displayName、supportsDownload、supportsUpload、
// isSemiAutoUpload、loginMethod 都在 Models.swift 里）、ActivityRecord（距离米、时长秒、
// startDate: Date、elevationGainMeters、sportType、remoteId、fileName）、SyncTask
// （id: UUID、name、source 单选、targets 多选、syncCount、skipCount、enabled、lastRun）、
// PlatformError、PlatformAPI（isLoggedIn / login / fetchActivities(limit:skip:) /
// downloadActivity / uploadActivity(data:fileName:activity:)）。
// 注意：Models.swift 的 SyncTask 没有 incremental / coordinateConvert / autoSync 字段，
// 这三个任务级开关由本引擎自己用 TaskOptions（按任务 id 存 UserDefaults）补，不改共享类型。
// 平台实现由平台组在 Platforms/*.swift 提供；PlatformRegistry 按 DataSource 取实例，
// 21 个平台全部已接线（Strava、Wahoo、MyWhoosh、Zwift、松拓、百锐腾、CyCity 均为已落盘文件）。
// 不要用安卓 WorkManager：iOS 后台同步见 Services/BackgroundSync.swift。

import Combine
import Foundation

// MARK: - 平台注册表（21 个平台全部已接线；实例无状态，登录态在钥匙串里）

/// 坐标转换开关：下载的轨迹是 GCJ-02 时按此开关决定转不转 WGS-84。
/// 遵从它的平台：迈金、咕咚、Zepp（Keep 无开关，始终转换，不接这个协议）。
/// 引擎在下载前按任务开关设置该属性；平台内部只读这一个属性，绝不重复转换。
protocol CoordinateConvertible: PlatformAPI {
    var coordinateConvertEnabled: Bool { get set }
}

enum PlatformRegistry {
    /// 按平台取实现。实例是无状态 struct，每次取新的即可；登录态存在钥匙串里，不在实例里。
    static func platform(for source: DataSource) -> (any PlatformAPI)? {
        switch source {
        case .igpsport: return IgpsportAPI()
        case .igpsportIntl: return IgpsportIntlAPI()
        case .xingzhe: return XingzheAPI()
        case .magene: return MageneAPI()
        case .blackbird: return BlackbirdAPI()
        case .giant: return GiantAPI()
        case .outbase: return OutbaseAPI()
        case .intervalsIcu: return IntervalsIcuAPI()
        case .garminIntl: return GarminIntlAPI()
        case .garminCN: return GarminCNAPI()
        case .corosCN: return CorosCNAPI()
        case .corosIntl: return CorosIntlAPI()
        case .codoon: return CodoonAPI()
        case .zepp: return ZeppAPI()
        case .komoot: return KomootAPI()
        case .keep: return KeepAPI()
        case .strava: return StravaAPI()
        case .wahoo: return WahooAPI()
        case .myWhoosh: return MyWhooshAPI()
        case .zwift: return ZwiftAPI()
        case .suunto: return SuuntoAPI()
        case .bryton: return BrytonAPI()
        case .cycity: return CyCityAPI()
        }
    }
}

// MARK: - 任务级开关（Models.swift 的 SyncTask 没有这三个字段，引擎自己补）

struct TaskOptions: Codable {
    /// 增量：跳过已同步过的（来源活动 + 目标）组合。默认开。
    var incremental: Bool = true
    /// 迈金坐标转换（GCJ-02 → WGS-84）。默认关，与安卓一致。
    /// 安卓 PrefsManager.isGcj02Convert 默认 false（PrefsManager.kt:516），
    /// MainActivity:1266 只在开关开时才转。
    var coordinateConvert: Bool = false
    /// 咕咚坐标转换（GCJ-02 → WGS-84）。默认关，与安卓一致。
    /// 安卓 PrefsManager.isCodoonGcjConvertEnabled 默认 false（PrefsManager.kt:260），
    /// CodoonApi.gcjConvertEnabled 默认 false（CodoonApi.kt:65），下载时只在开关开时转（:337）。
    var codoonCoordinateConvert: Bool = false
    /// Zepp 坐标转换（GCJ-02 → WGS-84）。默认关，与安卓一致。
    /// 安卓 PrefsManager.isZeppGcjConvertEnabled 默认 false（PrefsManager.kt:272），
    /// ZeppApi.gcjConvertEnabled 默认 false（ZeppApi.kt:73），下载时只在开关开时转（:402）。
    var zeppCoordinateConvert: Bool = false
    /// 自动同步（后台跑本任务）。默认关。
    var autoSync: Bool = false
}

// MARK: - 运行日志

enum SyncLogLevel: String, Codable {
    case info, success, skip, fail
}

struct SyncLogEntry: Identifiable, Codable {
    let id: UUID
    let time: Date
    let level: SyncLogLevel
    let message: String

    init(level: SyncLogLevel, message: String) {
        self.id = UUID()
        self.time = Date()
        self.level = level
        self.message = message
    }
}

// MARK: - 本地已下载活动（对应安卓 ActivityCache.Entry）

struct DownloadedActivity: Identifiable, Codable {
    let id: String
    /// 平台 rawValue（DataSource 没有 shortName，用 rawValue 做键）。
    let platformRawValue: String
    let title: String
    let sportType: String
    let startTimeMs: Int64
    let distanceKm: Double
    let durationSec: Int
    let fileName: String
    var elevationGainM: Double?
    var avgSpeedKmh: Double?

    var startDate: Date { Date(timeIntervalSince1970: TimeInterval(startTimeMs) / 1000) }
    var platformDisplayName: String {
        DataSource(rawValue: platformRawValue)?.displayName ?? platformRawValue
    }
}

// MARK: - 平台上下传统计（登录页卡片用）

struct PlatformStats: Codable {
    var downloaded: Int = 0
    var uploaded: Int = 0
}

// MARK: - 任务上次运行结果（不改 SyncTask 本身，引擎自己记）

struct TaskLastRun: Codable {
    var time: Date?
    var ok: Int = 0
    var skip: Int = 0
    var fail: Int = 0
    var detail: String = ""
}

// MARK: - 同步引擎

/// 同步引擎：一次同步 = 从来源拉取活动列表 → 逐条下载文件存本地 → 逐个上传到多目标。
/// 增量记忆：已同步过的（来源活动 + 目标）组合跳过，不重复上传；失败重试一次。
/// Keep 目标是半自动导入（DataSource.isSemiAutoUpload）：不直接上传，导出文件后请用户
/// 在 Keep App 内手动导入。
final class SyncEngine: ObservableObject {

    // MARK: 注入
    /// 按平台取实现，默认走 PlatformRegistry；测试时可注入假实现。
    private let platformProvider: (DataSource) -> (any PlatformAPI)?

    init(platformProvider: @escaping (DataSource) -> (any PlatformAPI)? = PlatformRegistry.platform) {
        self.platformProvider = platformProvider
        loadPersistedState()
    }

    // MARK: 发布状态
    @Published private(set) var tasks: [SyncTask] = []
    @Published private(set) var logs: [SyncLogEntry] = []
    @Published private(set) var isRunning = false
    @Published private(set) var runningTaskName: String?
    @Published private(set) var progressText = ""
    @Published private(set) var downloadedActivities: [DownloadedActivity] = []
    @Published private(set) var statsByPlatform: [String: PlatformStats] = [:]
    @Published private(set) var lastRuns: [UUID: TaskLastRun] = [:]
    @Published private(set) var totalOk = 0
    @Published private(set) var totalSkip = 0
    @Published private(set) var totalFail = 0
    /// Keep 半自动导出待分享的 FIT 文件：引擎生成后追加到这里，SyncView 接这个数组弹分享；
    /// 分享完调 consumeKeepExport(_:) 去掉并记已同步。没分享前不算同步成功。
    @Published var keepExportURLs: [URL] = []

    /// 每份待分享 Keep 文件对应的增量记忆键（"来源_活动id->keep"）：导出时与 URL 一起记，
    /// 分享确认后 consumeKeepExport 按这个键记已同步，下次增量不再重复导出同一条。
    /// "已分享"是用户自述，引擎无法核实文件是否真的进了 Keep App，按"用户确认即记"的口径做。
    private var keepExportSyncKeys: [URL: String] = [:]

    /// 分享完成（或用户取消分享后点了"已分享"）后：把该文件从待分享列表里去掉，
    /// 并按导出时记的键把这条活动记为"已同步到 Keep"，下次增量同步不再重复导出。
    func consumeKeepExport(_ url: URL) {
        keepExportURLs.removeAll { $0 == url }
        if let key = keepExportSyncKeys.removeValue(forKey: url) {
            var keys = syncedKeys
            keys.insert(key)
            syncedKeys = keys
        }
    }

    private var runTask: Task<Void, Never>?
    private var stopped = false

    // MARK: 持久化键
    private static let syncedKeysKey = "synced_keys_v1"
    private static let statsKey = "sync_stats_by_platform_v1"
    private static let lastRunsKey = "sync_last_runs_v1"
    private static let taskOptionsKey = "sync_task_options_v1"
    private static let indexFileName = "activities-index.json"

    /// 任务级开关（按任务 id 存）。Models.swift 的 SyncTask 没有这些字段，这里补。
    private var taskOptions: [String: TaskOptions] = [:]

    func options(for task: SyncTask) -> TaskOptions {
        taskOptions[task.id.uuidString] ?? TaskOptions()
    }

    func setOptions(_ options: TaskOptions, for task: SyncTask) {
        taskOptions[task.id.uuidString] = options
        saveTaskOptions()
    }

    func isAutoSync(_ task: SyncTask) -> Bool {
        task.enabled && options(for: task).autoSync
    }

    /// 已同步记忆：键 = "来源rawValue_活动id->目标rawValue"，存在即跳过。
    private var syncedKeys: Set<String> {
        get { Set(UserDefaults.standard.stringArray(forKey: Self.syncedKeysKey) ?? []) }
        set { UserDefaults.standard.set(Array(newValue), forKey: Self.syncedKeysKey) }
    }

    // MARK: 日志
    func log(_ message: String, level: SyncLogLevel = .info) {
        let entry = SyncLogEntry(level: level, message: message)
        logs.append(entry)
        if logs.count > 200 { logs.removeFirst(logs.count - 200) }
    }

    func clearLogs() { logs.removeAll() }

    // MARK: 任务管理（任务列表本身用骨架组 TaskStore 存，避免两处存两份）
    func addTask(_ task: SyncTask, options: TaskOptions = TaskOptions()) {
        TaskStore.add(task)
        taskOptions[task.id.uuidString] = options
        saveTaskOptions()
        tasks = TaskStore.tasks
        log("已新建任务「\(task.name)」")
    }

    func updateTask(_ task: SyncTask) {
        TaskStore.update(task)
        tasks = TaskStore.tasks
    }

    func deleteTask(_ task: SyncTask) {
        TaskStore.remove(task)
        taskOptions.removeValue(forKey: task.id.uuidString)
        saveTaskOptions()
        tasks = TaskStore.tasks
        log("已删除任务「\(task.name)」")
    }

    /// 复制任务：新 id、新名字“原名 副本”，其他配置与开关照搬。
    func duplicateTask(_ task: SyncTask) -> SyncTask {
        var copy = task
        copy.id = UUID()
        copy.name = task.name + " 副本"
        copy.lastRun = nil
        let opts = options(for: task)
        TaskStore.add(copy)
        taskOptions[copy.id.uuidString] = opts
        saveTaskOptions()
        tasks = TaskStore.tasks
        log("已复制任务「\(task.name)」")
        return copy
    }

    /// 测试任务：只检查来源登录态并拉 1 条，不下载不上传。
    func testTask(_ task: SyncTask) async -> String {
        guard let platform = platformProvider(task.source) else {
            return "\(task.source.displayName) 待接入，无法测试"
        }
        do {
            guard await platform.isLoggedIn() else {
                return "请先登录\(task.source.displayName)"
            }
            let list = try await platform.fetchActivities(limit: 1, skip: 0)
            return list.isEmpty
                ? "\(task.source.displayName) 已登录，但最近没有活动"
                : "测试通过：\(task.source.displayName) 最近有活动「\(list[0].title)」"
        } catch {
            return "测试失败：\(error.localizedDescription)"
        }
    }

    // MARK: 开始 / 停止
    /// 开始同步一个任务。调用方负责体验码门禁（一对多目标才验，一对一不验，见 TrialLicense）。
    func run(task: SyncTask) {
        guard !isRunning else { log("已有同步在运行", level: .fail); return }
        stopped = false
        isRunning = true
        runningTaskName = task.name
        runTask = Task { await self.execute(task: task) }
    }

    /// 一对一快速同步（不建任务）：来源单选、目标多选，数量与跳过数由调用方传入。
    /// 只建一个临时 SyncTask 跑 execute，不调 addTask、不进任务列表。
    func runQuick(source: DataSource, targets: [DataSource], count: Int, skip: Int,
                  coordinateConvert: Bool, codoonCoordinateConvert: Bool = false,
                  zeppCoordinateConvert: Bool = false) {
        let task = SyncTask(
            name: "\(source.displayName)→\(targets.map(\.displayName).joined(separator: "、"))",
            source: source, targets: targets,
            syncCount: count, skipCount: skip, enabled: true)
        var opts = TaskOptions()
        opts.coordinateConvert = coordinateConvert
        opts.codoonCoordinateConvert = codoonCoordinateConvert
        opts.zeppCoordinateConvert = zeppCoordinateConvert
        // 临时任务的开关只放内存，不写持久化 taskOptions：以前每次快速同步都
        // saveTaskOptions()，临时 UUID 的记录越积越多；跑完由 execute 的 defer 清掉。
        taskOptions[task.id.uuidString] = opts
        run(task: task)
    }

    func stop() {
        stopped = true
        runTask?.cancel()
        isRunning = false
        runningTaskName = nil
        progressText = ""
        log("已停止同步", level: .skip)
    }

    // MARK: GPX 时区适配

    /// 行者 GPX 上传到 iGPSPORT 前的时区补偿（对照安卓 UploadEngine.kt:113-124 两步法）：
    /// 行者 GPX 下载时已归一化为 UTC（GpxParser.fixXingzheGpx 减 8 小时）；但 iGPSPORT
    /// 按北京时间显示 GPX 时间（安卓实测：B 类国产直传 GPX 平台 UTC+8），上传前要加 8 小时回去。
    /// 只针对行者来源的 GPX、目标为 iGPSPORT 国内/国际（国际与国内共用同一后端域名，同一套解析）；
    /// FIT 不受影响（FIT 时间戳是标准 UTC）；迈金不用补偿（上传前 GPX 已转 FIT）。
    /// 注意：只在主同步循环用（数据是刚下载的、已归一化）；记录中心“重新上传”不用——
    /// 本地存的文件可能是修正前下载的（仍是北京时间标 Z），加 8 会错上加错，保持原样。
    private func adaptGpxForTarget(_ data: Data, source: DataSource, target: DataSource) -> Data {
        guard source == .xingzhe, (target == .igpsport || target == .igpsportIntl),
              !FitParser.isFit(data) else { return data }
        return GpxParser.fixGpxTime(data, offsetHours: -8)
    }

    // MARK: 执行
    private func execute(task: SyncTask) async {
        defer {
            Task { @MainActor in
                self.isRunning = false
                self.runningTaskName = nil
                self.progressText = ""
                // 临时任务（不在任务列表里的快速同步）跑完清掉它的内存开关记录，
                // 不留持久化残留；正常任务的开关不动。
                if !TaskStore.tasks.contains(where: { $0.id == task.id }) {
                    self.taskOptions.removeValue(forKey: task.id.uuidString)
                    self.saveTaskOptions()
                }
            }
        }
        let opts = options(for: task)
        let targets = task.targets.filter { $0 != task.source }
        guard !targets.isEmpty else {
            log("任务「\(task.name)」没有同步目标", level: .fail)
            return
        }
        guard var sourcePlatform = platformProvider(task.source) else {
            log("\(task.source.displayName) 待接入，无法同步", level: .fail)
            return
        }
        // 坐标转换开关真正生效：下载前按来源和任务开关设置平台属性（只设一次，不重复转换）。
        // Keep 无开关，始终转换，不走这里。
        if var convertible = sourcePlatform as? any CoordinateConvertible {
            switch task.source {
            case .magene: convertible.coordinateConvertEnabled = opts.coordinateConvert
            case .codoon: convertible.coordinateConvertEnabled = opts.codoonCoordinateConvert
            case .zepp: convertible.coordinateConvertEnabled = opts.zeppCoordinateConvert
            default: break
            }
            sourcePlatform = convertible
        }
        do {
            guard await sourcePlatform.isLoggedIn() else {
                log("请先登录\(task.source.displayName)", level: .fail)
                return
            }
            await MainActor.run {
                self.log("━━━━━━━━━━━━━━━━━━━━━━")
                self.log("🚀 开始同步：\(task.source.displayName) → \(targets.map(\.displayName).joined(separator: "、"))（跳过\(task.skipCount)，同步\(task.syncCount)条）")
            }
            let records = try await sourcePlatform.fetchActivities(limit: task.syncCount, skip: task.skipCount)
            var ok = 0, skipped = 0, failed = 0
            for record in records {
                if stopped || Task.isCancelled { break }
                await MainActor.run { self.progressText = "正在处理「\(record.title)」" }
                // 增量：该活动已同步到全部目标就整条跳过。
                if opts.incremental, targets.allSatisfy({ isSynced(record: record, target: $0) }) {
                    skipped += 1
                    await MainActor.run { self.log("⏭️ 跳过已同步：\(record.title)", level: .skip) }
                    continue
                }
                do {
                    let data = try await sourcePlatform.downloadActivity(record)
                    // Keep 轨迹解密失败时给用户可见提示（否则只会静默滑向单点兜底）：
                    // KeepAPI 只置位、不记密钥/IV；fallback 链路本身不受影响。
                    if task.source == .keep && KeepAPI.lastGeoDecryptFailed {
                        await MainActor.run {
                            self.log("⚠️ Keep 轨迹解密失败，已用备用方式：「\(record.title)」的轨迹可能只有一个点（里程与时长不受影响）", level: .info)
                        }
                    }
                    let savedURL: URL? = await MainActor.run { self.saveLocally(record: record, data: data) }
                    for target in targets {
                        if stopped || Task.isCancelled { break }
                        if opts.incremental, isSynced(record: record, target: target) { continue }
                        // Keep 是半自动导入：不调上传接口。真的把 FIT 文件落到本地 Activities 目录
                        //（已是 FIT 就用刚保存的文件；GPX 先转 FIT 再落盘），文件 URL 追加进
                        // keepExportURLs，等用户在 SyncView 分享后去 Keep App 内手动导入。
                        // 没分享前不记成功、不记已同步、不计上传数。
                        if target.isSemiAutoUpload {
                            if let exportURL = keepExportFileURL(record: record, data: data, savedURL: savedURL) {
                                await MainActor.run {
                                    self.keepExportURLs.append(exportURL)
                                    self.keepExportSyncKeys[exportURL] = self.syncKey(record: record, target: target)
                                }
                                await MainActor.run {
                                    self.log("📲 Keep 半自动导入：已生成 FIT 文件，请分享后在 Keep App 内手动导入「\(record.title)」", level: .info)
                                }
                            } else {
                                failed += 1
                                await MainActor.run {
                                    self.log("❌ Keep 导出失败：没能生成 FIT 文件「\(record.title)」", level: .fail)
                                }
                            }
                            continue
                        }
                        guard let targetPlatform = platformProvider(target) else {
                            failed += 1
                            await MainActor.run { self.log("❌ \(target.displayName) 待接入：「\(record.title)」未上传", level: .fail) }
                            continue
                        }
                        guard await targetPlatform.isLoggedIn() else {
                            failed += 1
                            await MainActor.run { self.log("❌ 请先登录\(target.displayName)", level: .fail) }
                            continue
                        }
                        // 失败重试一次。
                        var uploaded = false
                        var lastError: Error?
                        // 行者 GPX → iGPSPORT 时区补偿（见 adaptGpxForTarget）：重试共用同一份已适配的数据。
                        let uploadData = adaptGpxForTarget(data, source: task.source, target: target)
                        for _ in 0..<2 {
                            do {
                                try await targetPlatform.uploadActivity(
                                    data: uploadData, fileName: record.fileName, activity: record)
                                uploaded = true
                                break
                            } catch {
                                lastError = error
                            }
                        }
                        if uploaded {
                            markSynced(record: record, target: target)
                            ok += 1
                            await MainActor.run {
                                self.log("✅ 已同步到\(target.displayName)：\(record.title)", level: .success)
                                self.recordUpload(platformRawValue: target.rawValue)
                            }
                        } else {
                            failed += 1
                            await MainActor.run {
                                self.log("❌ 上传到\(target.displayName)失败：\(record.title)（\(lastError?.localizedDescription ?? "未知错误")）", level: .fail)
                            }
                        }
                    }
                } catch {
                    failed += 1
                    await MainActor.run { self.log("❌ 下载失败：\(record.title)（\(error.localizedDescription)）", level: .fail) }
                }
            }
            let detail = "\(task.source.displayName)→\(targets.map(\.displayName).joined(separator: "、")) 成功 \(ok) · 跳过 \(skipped) · 失败 \(failed)"
            await MainActor.run {
                self.totalOk += ok
                self.totalSkip += skipped
                self.totalFail += failed
                var last = self.lastRuns[task.id] ?? TaskLastRun()
                last.time = Date()
                last.ok = ok
                last.skip = skipped
                last.fail = failed
                last.detail = detail
                self.lastRuns[task.id] = last
                self.saveLastRuns()
                var updated = task
                updated.lastRun = Date()
                TaskStore.update(updated)
                self.tasks = TaskStore.tasks
                self.log("🏁 任务「\(task.name)」完成：成功 \(ok) · 跳过 \(skipped) · 失败 \(failed)", level: failed == 0 ? .success : .info)
            }
        } catch {
            await MainActor.run { self.log("❌ 拉取活动列表失败：\(error.localizedDescription)", level: .fail) }
        }
    }

    // MARK: 增量记忆
    private func syncKey(record: ActivityRecord, target: DataSource) -> String {
        "\(record.source.rawValue)_\(record.id)->\(target.rawValue)"
    }

    private func isSynced(record: ActivityRecord, target: DataSource) -> Bool {
        syncedKeys.contains(syncKey(record: record, target: target))
    }

    private func markSynced(record: ActivityRecord, target: DataSource) {
        var keys = syncedKeys
        keys.insert(syncKey(record: record, target: target))
        syncedKeys = keys
    }

    /// 忽略记忆强制重传一条（记录中心“重新上传”用）。
    func reupload(activity: DownloadedActivity, to targets: [DataSource]) async {
        guard let data = localFileData(for: activity) else {
            log("本地文件已丢失，无法重新上传「\(activity.title)」", level: .fail)
            return
        }
        let record = ActivityRecord(
            id: activity.id,
            source: DataSource(rawValue: activity.platformRawValue) ?? .igpsport,
            title: activity.title,
            startDate: activity.startDate,
            distanceMeters: activity.distanceKm * 1000,
            durationSeconds: Double(activity.durationSec),
            elevationGainMeters: activity.elevationGainM ?? 0,
            sportType: activity.sportType,
            remoteId: activity.id,
            fileName: activity.fileName)
        for target in targets {
            guard let platform = platformProvider(target) else {
                log("❌ \(target.displayName) 待接入", level: .fail)
                continue
            }
            // 失败重试一次，与主同步 execute() 里 `for _ in 0..<2` 同口径。
            // 只记一行结果日志（成功/失败各一条），记录中心按"本次新增日志里提到该目标的那一条"取结果，行数不能变多。
            var uploaded = false
            var lastError: Error?
            for _ in 0..<2 {
                do {
                    try await platform.uploadActivity(data: data, fileName: activity.fileName, activity: record)
                    uploaded = true
                    break
                } catch {
                    lastError = error
                }
            }
            if uploaded {
                var keys = syncedKeys
                keys.insert("\(activity.platformRawValue)_\(activity.id)->\(target.rawValue)")
                syncedKeys = keys
                log("✅ 已重新上传到\(target.displayName)：\(activity.title)", level: .success)
                recordUpload(platformRawValue: target.rawValue)
            } else {
                log("❌ 重新上传到\(target.displayName)失败：\(lastError?.localizedDescription ?? "未知错误")", level: .fail)
            }
        }
    }

    // MARK: 本地存储（下载的文件 + 索引）
    var activitiesDirectory: URL {
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            .appendingPathComponent("Activities", isDirectory: true)
        try? FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        return dir
    }

    private func fileExtension(for data: Data) -> String {
        if FitParser.isFit(data) { return "fit" }
        return "gpx"
    }

    /// Keep 半自动导出要交到用户手里的 FIT 文件 URL：已是 FIT 就用刚保存的本地文件；
    /// GPX 先转 FIT 再落盘（文件名与 saveLocally 同格式）。转不出或落不了盘返回 nil。
    private func keepExportFileURL(record: ActivityRecord, data: Data, savedURL: URL?) -> URL? {
        if FitParser.isFit(data) { return savedURL }
        do {
            let fit = try GpxParser.gpxToFit(data)
            let fitName = "\(record.source.rawValue)_\(record.id).fit"
            let fitURL = activitiesDirectory.appendingPathComponent(fitName)
            try fit.write(to: fitURL)
            return fitURL
        } catch {
            return nil
        }
    }

    /// 临时码表录完的文件进记录中心（E 组调）：把外部文件拷进 Activities 目录、按现有格式命名、
    /// 生成一条 DownloadedActivity 记进索引，记录中心能正常显示、删除、重新上传。
    /// 失败只记日志，不抛错（码表页不因入库失败而丢掉刚录的文件）。
    /// 每次导出都调：同一录制先导 GPX 后导 FIT 时，activityId 相同就更新同一条索引
    /// （换成新文件、删掉旧文件），不另建一条；不传 activityId 时仍按新建处理（兼容旧调用）。
    func importLocalActivity(fileURL: URL, title: String, sportType: String, startDate: Date,
                             distanceMeters: Double, durationSeconds: Double,
                             elevationGainMeters: Double, activityId: String? = nil) {
        guard let data = try? Data(contentsOf: fileURL), !data.isEmpty else {
            log("码表记录入库失败：读不到文件「\(title)」", level: .fail)
            return
        }
        let ext = FitParser.isFit(data) ? "fit" : "gpx"
        let id = activityId ?? UUID().uuidString
        let fileName = "bikeComputer_\(id).\(ext)"
        let destURL = activitiesDirectory.appendingPathComponent(fileName)
        do {
            try data.write(to: destURL)
        } catch {
            log("码表记录入库失败：写文件失败「\(title)」", level: .fail)
            return
        }
        let distanceKm = distanceMeters / 1000
        let avgSpeed: Double? = durationSeconds > 0 ? distanceKm / (durationSeconds / 3600) : nil
        let entry = DownloadedActivity(
            id: id, platformRawValue: "bikeComputer",
            title: title.isEmpty ? "码表记录" : title,
            sportType: sportType,
            startTimeMs: Int64(startDate.timeIntervalSince1970 * 1000),
            distanceKm: distanceKm, durationSec: Int(durationSeconds),
            fileName: fileName,
            elevationGainM: elevationGainMeters > 0 ? elevationGainMeters : nil,
            avgSpeedKmh: avgSpeed)
        if let existingIndex = downloadedActivities.firstIndex(where: {
            $0.id == id && $0.platformRawValue == "bikeComputer"
        }) {
            // 同一次录制的第二次导出：更新同一条索引，不重复建两条；
            // 旧格式文件删掉，免得 Activities 目录留孤儿文件。
            let oldFileName = downloadedActivities[existingIndex].fileName
            if oldFileName != fileName {
                try? FileManager.default.removeItem(at: activitiesDirectory.appendingPathComponent(oldFileName))
            }
            downloadedActivities[existingIndex] = entry
            downloadedActivities.sort { $0.startTimeMs > $1.startTimeMs }
            saveDownloadedIndex()
            log("码表记录已更新进记录中心「\(entry.title)」")
            return
        }
        downloadedActivities.insert(entry, at: 0)
        downloadedActivities.sort { $0.startTimeMs > $1.startTimeMs }
        saveDownloadedIndex()
        log("码表记录已进记录中心「\(entry.title)」")
    }

    @discardableResult
    private func saveLocally(record: ActivityRecord, data: Data) -> URL? {
        let ext = fileExtension(for: data)
        let fileName = "\(record.source.rawValue)_\(record.id).\(ext)"
        let url = activitiesDirectory.appendingPathComponent(fileName)
        do {
            try data.write(to: url)
        } catch {
            log("本地保存失败：\(record.title)（\(error.localizedDescription)）", level: .fail)
            return nil
        }
        if downloadedActivities.contains(where: { $0.id == record.id && $0.platformRawValue == record.source.rawValue }) {
            return url
        }
        let distanceKm = record.distanceMeters / 1000
        let avgSpeed: Double? = record.durationSeconds > 0
            ? distanceKm / (record.durationSeconds / 3600) : nil
        let entry = DownloadedActivity(
            id: record.id, platformRawValue: record.source.rawValue,
            title: record.title.isEmpty ? "未命名活动" : record.title,
            sportType: record.sportType,
            startTimeMs: Int64(record.startDate.timeIntervalSince1970 * 1000),
            distanceKm: distanceKm, durationSec: Int(record.durationSeconds),
            fileName: fileName,
            elevationGainM: record.elevationGainMeters > 0 ? record.elevationGainMeters : nil,
            avgSpeedKmh: avgSpeed)
        downloadedActivities.insert(entry, at: 0)
        downloadedActivities.sort { $0.startTimeMs > $1.startTimeMs }
        saveDownloadedIndex()
        var stats = statsByPlatform[record.source.rawValue] ?? PlatformStats()
        stats.downloaded += 1
        statsByPlatform[record.source.rawValue] = stats
        saveStats()
        return url
    }

    func localFileData(for activity: DownloadedActivity) -> Data? {
        try? Data(contentsOf: activitiesDirectory.appendingPathComponent(activity.fileName))
    }

    func localFileURL(for activity: DownloadedActivity) -> URL {
        activitiesDirectory.appendingPathComponent(activity.fileName)
    }

    /// 删除本地活动（含文件）。不删云端数据。
    func deleteLocal(activity: DownloadedActivity) {
        try? FileManager.default.removeItem(at: localFileURL(for: activity))
        downloadedActivities.removeAll { $0.id == activity.id }
        saveDownloadedIndex()
        log("已删除本地活动「\(activity.title)」")
    }

    private func recordUpload(platformRawValue: String) {
        var stats = statsByPlatform[platformRawValue] ?? PlatformStats()
        stats.uploaded += 1
        statsByPlatform[platformRawValue] = stats
        saveStats()
    }

    // MARK: 持久化
    private func loadPersistedState() {
        tasks = TaskStore.tasks
        if let data = UserDefaults.standard.data(forKey: Self.statsKey),
           let decoded = try? JSONDecoder().decode([String: PlatformStats].self, from: data) {
            statsByPlatform = decoded
        }
        if let data = UserDefaults.standard.data(forKey: Self.lastRunsKey),
           let decoded = try? JSONDecoder().decode([UUID: TaskLastRun].self, from: data) {
            lastRuns = decoded
        }
        if let data = UserDefaults.standard.data(forKey: Self.taskOptionsKey),
           let decoded = try? JSONDecoder().decode([String: TaskOptions].self, from: data) {
            taskOptions = decoded
            // 顺带清掉旧版本快速同步积存的临时任务开关：任务列表里没有的 id 一律丢掉，
            // 只留正常任务的持久化开关。
            taskOptions = taskOptions.filter { entry in
                TaskStore.tasks.contains { $0.id.uuidString == entry.key }
            }
            saveTaskOptions()
        }
        let indexURL = activitiesDirectory.appendingPathComponent(Self.indexFileName)
        if let data = try? Data(contentsOf: indexURL),
           let decoded = try? JSONDecoder().decode([DownloadedActivity].self, from: data) {
            downloadedActivities = decoded.sorted { $0.startTimeMs > $1.startTimeMs }
        }
    }

    private func saveStats() {
        if let data = try? JSONEncoder().encode(statsByPlatform) {
            UserDefaults.standard.set(data, forKey: Self.statsKey)
        }
    }

    private func saveLastRuns() {
        if let data = try? JSONEncoder().encode(lastRuns) {
            UserDefaults.standard.set(data, forKey: Self.lastRunsKey)
        }
    }

    private func saveTaskOptions() {
        if let data = try? JSONEncoder().encode(taskOptions) {
            UserDefaults.standard.set(data, forKey: Self.taskOptionsKey)
        }
    }

    private func saveDownloadedIndex() {
        let indexURL = activitiesDirectory.appendingPathComponent(Self.indexFileName)
        if let data = try? JSONEncoder().encode(downloadedActivities) {
            try? data.write(to: indexURL)
        }
    }
}

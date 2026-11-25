// 待真机验证
// iOS 后台同步：BGTaskScheduler（BGAppRefreshTask + BGProcessingTask）。
// 对应安卓的 AutoSyncService / AutoSyncWorker（WorkManager），iOS 没有 WorkManager，
// 只能用系统后台任务代替，而且远不如安卓自由——限制见下方注释，界面文案也要写清楚。
//
// iOS 后台限制（必须如实告诉用户）：
// 1. 系统说了算：BGAppRefreshTask 由系统按电量、联网、使用频率自行调度，15 分钟只是
//    “最早可以跑的时间”，不是“每 15 分钟一定跑”。实际可能几小时才跑一次，低电量/省电
//    模式下更少；用户长期不用 App，系统会越排越少。
// 2. 每次运行时间有限：BGAppRefreshTask 一般只有几十秒，超时会被系统杀掉；耗时同步
//    用 BGProcessingTask（充电 + Wi-Fi 时才容易排到），同样不保证准时。
// 3. 杀掉 App 不等于后台全停：已登记的任务在 App 被划掉后仍可由系统唤醒，但如果用户
//    在设置里关了“后台 App 刷新”，或系统判定耗电，就不再唤醒。
// 4. 跨重启恢复：任务登记本身随 App 安装保留，但“哪些任务要自动跑”存在 UserDefaults，
//    重启后 App 第一次启动（或系统唤醒）时重新登记并按记录恢复排期；
//    手机重启后、App 一次都没启动过之前，系统一般不会唤醒后台任务。
// 5. 不要承诺安卓那样的“15 分钟准时自动同步”：界面只写“后台自动同步（iOS 系统调度，
//    时间不保证）”，并保留手动“开始同步”作为可靠入口。
// 实现要点：两个任务标识必须同步写进 Info.plist 的 BGTaskSchedulerPermittedIdentifiers，
// 否则登记直接失败；App 启动时调 registerAll()，并在每次任务结束时重新排下一次。

import BackgroundTasks
import Foundation

/// 后台自动同步（iOS 版）。只负责“到点叫醒 App 跑一次已开启自动同步的任务”，
/// 真正的下载/上传仍走 SyncEngine。叫醒后跑不完、没排到，都是 iOS 系统行为，不是 Bug。
final class BackgroundSync {

    static let shared = BackgroundSync()

    /// 轻量刷新任务：到点叫醒，跑一次自动同步（15 分钟是最早间隔，不保证准时）。
    static let refreshTaskId = "com.jichi.ob.refresh"
    /// 耗时处理任务：充电 + Wi-Fi 时跑大批量同步。
    static let processingTaskId = "com.jichi.ob.processing"

    /// 界面展示用：如实说明 iOS 后台限制，别让用户以为和安卓一样准时。
    static let backgroundLimitNotice =
        "iOS 后台由系统调度：15 分钟只是最早间隔，不保证准时，低电量或长期不用 App 时会更少。" +
        "手机重启后需打开一次 App 才能恢复后台排期。如需马上同步，请在同步页手动开始。"

    private init() {}

    // MARK: UserDefaults 记录（跨重启恢复用）
    private static let autoTaskIdsKey = "background_auto_task_ids"
    private static let lastBackgroundRunKey = "background_last_run"
    private static let backgroundEnabledKey = "background_sync_enabled"

    /// 后台自动同步总开关（默认关，用户在同步页打开）。
    var isEnabled: Bool {
        get { UserDefaults.standard.bool(forKey: Self.backgroundEnabledKey) }
        set { UserDefaults.standard.set(newValue, forKey: Self.backgroundEnabledKey) }
    }

    /// 记下要后台跑的任务 id（任务级 autoSync 开启的任务）。重启后按这份名单恢复。
    /// 注意：这份快照只是兼容旧版同步页开关写入的记录，不再作为“跑哪些任务”的依据——
    /// 后台触发时以 TaskStore.tasks 的当前列表为准（见 runAutoTasks），之后新建的
    /// 自动任务不用等开关重开就能跑。
    var autoTaskIds: [String] {
        get { UserDefaults.standard.stringArray(forKey: Self.autoTaskIdsKey) ?? [] }
        set { UserDefaults.standard.set(newValue, forKey: Self.autoTaskIdsKey) }
    }

    var lastBackgroundRun: Date? {
        get { UserDefaults.standard.object(forKey: Self.lastBackgroundRunKey) as? Date }
        set { UserDefaults.standard.set(newValue, forKey: Self.lastBackgroundRunKey) }
    }

    // MARK: 登记（App 启动时调一次）
    /// 在 App 入口（App 结构体 init 或 scenePhase 首次 active）调用。
    /// 两个任务标识必须已写进 Info.plist 的 BGTaskSchedulerPermittedIdentifiers。
    func registerAll(engine: SyncEngine) {
        BGTaskScheduler.shared.register(
            forTaskWithIdentifier: Self.refreshTaskId, using: nil) { task in
            self.handleRefresh(task: task as! BGAppRefreshTask, engine: engine)
        }
        BGTaskScheduler.shared.register(
            forTaskWithIdentifier: Self.processingTaskId, using: nil) { task in
            self.handleProcessing(task: task as! BGProcessingTask, engine: engine)
        }
        // 跨重启恢复：按当前任务列表（动态读 TaskStore.tasks）判断有没有自动任务，
        // 有才重新排期；不要只看打开开关那一刻的快照。
        if isEnabled, TaskStore.tasks.contains(where: { engine.isAutoSync($0) }) {
            scheduleRefresh()
            scheduleProcessing()
        }
    }

    // MARK: 排期
    /// 安排下一次轻量刷新：最早 15 分钟后。系统实际何时跑，由系统决定。
    func scheduleRefresh() {
        guard isEnabled else { return }
        let request = BGAppRefreshTaskRequest(identifier: Self.refreshTaskId)
        request.earliestBeginDate = Date(timeIntervalSinceNow: 15 * 60)
        do {
            try BGTaskScheduler.shared.submit(request)
        } catch {
            // 标识没写进 Info.plist、或系统拒绝排期时到这里；记日志，不崩溃。
            print("[BackgroundSync] 排期轻量刷新失败：\(error.localizedDescription)")
        }
    }

    /// 安排下一次耗时处理：充电 + Wi-Fi 时才容易排到，用于大批量同步。
    func scheduleProcessing() {
        guard isEnabled else { return }
        let request = BGProcessingTaskRequest(identifier: Self.processingTaskId)
        request.requiresNetworkConnectivity = true
        request.requiresExternalPower = true
        request.earliestBeginDate = Date(timeIntervalSinceNow: 15 * 60)
        do {
            try BGTaskScheduler.shared.submit(request)
        } catch {
            print("[BackgroundSync] 排期耗时处理失败：\(error.localizedDescription)")
        }
    }

    /// 取消全部后台排期（用户关闭后台自动同步时调）。
    func cancelAll() {
        BGTaskScheduler.shared.cancel(taskRequestWithIdentifier: Self.refreshTaskId)
        BGTaskScheduler.shared.cancel(taskRequestWithIdentifier: Self.processingTaskId)
    }

    // MARK: 执行
    private func handleRefresh(task: BGAppRefreshTask, engine: SyncEngine) {
        // 先排下一次，再跑这一次——否则这次跑完排期就断了。
        scheduleRefresh()
        runAutoTasks(engine: engine) {
            task.setTaskCompleted(success: true)
        }
        // 超时保护：系统要收回时间时，尽快收尾，别被强杀。
        task.expirationHandler = {
            task.setTaskCompleted(success: false)
        }
    }

    private func handleProcessing(task: BGProcessingTask, engine: SyncEngine) {
        scheduleProcessing()
        runAutoTasks(engine: engine) {
            task.setTaskCompleted(success: true)
        }
        task.expirationHandler = {
            task.setTaskCompleted(success: false)
        }
    }

    /// 跑一遍所有开启了自动同步的任务（只跑当前列表里开了自动同步且启用的任务，
    /// 跑完即停，不过夜挂起）。
    /// 任务名单在后台触发这一刻动态读 TaskStore.tasks，不读打开开关那一刻的快照，
    /// 所以之后新建的自动任务也能跑。
    private func runAutoTasks(engine: SyncEngine, completion: @escaping () -> Void) {
        let autoTasks = TaskStore.tasks.filter { engine.isAutoSync($0) }
        guard !autoTasks.isEmpty else {
            completion()
            return
        }
        lastBackgroundRun = Date()
        engine.log("🌙 后台自动同步开始（\(autoTasks.count) 个任务）")
        Task {
            for task in autoTasks {
                // 多目标任务先验体验码（和同步页“运行一对多任务前”同一个口径）：
                // 后台弹不了框，只做静默判断——TrialLicense.isAllowed 是现成的
                // “是否有效”判断，没码就不跑并记一条日志；一对一不验。
                if task.targets.count > 1, !TrialLicense().isAllowed {
                    engine.log("🌙 后台自动同步跳过「\(task.name)」：多目标任务需体验码，请在 App 内验证体验码后再开自动同步", level: .skip)
                    continue
                }
                // 后台时间有限：一次只跑一个任务，跑完下一个；中途被系统收回就停。
                await withCheckedContinuation { (cont: CheckedContinuation<Void, Never>) in
                    engine.run(task: task)
                    // 轮询等引擎跑完（引擎跑完后 isRunning 变 false）。
                    Task {
                        while engine.isRunning {
                            try? await Task.sleep(nanoseconds: 500_000_000)
                        }
                        cont.resume()
                    }
                }
            }
            engine.log("🌙 后台自动同步结束")
            completion()
        }
    }
}

// 待真机验证
// 同步页：数据来源单选网格、同步目标多选网格（Keep 标注半自动导入）、
// 同步数量与跳过条数滑块、同步任务卡片（可运行、增量自动）、
// 新建任务、统计卡片（成功/跳过/失败）、开始同步/停止、运行日志、
// 迈金坐标 GCJ-02→WGS-84 三开关（按安卓设置页原样保留）。
//
// 体验码门禁（只在原来那几个入口验，其他地方不验）：
// - 新建任务：验码，通过才打开新建表单；
// - 开始同步 / 运行任务：一对多目标（目标数 > 1）才验，一对一不验；
//   没验过弹框并返回，验证成功后自动重跑（TrialLicense.checkTrialAndRun）。
// - 一对一同步、查看任务、看日志都不验码。
//
// 目标可选规则（按骨架组 Models.swift 的 DataSource 能力字段）：
// - 来源：supportsDownload 为 true 的平台（Outbase、Strava 只上传，不能当来源）；
// - 目标：supportsUpload 为 true 的平台；Keep 是半自动导入（isSemiAutoUpload），
//   始终可选，文件导出后请在 Keep App 内手动导入，无需 Keep 登录态；
// - 目标不能与来源相同；未接入的平台显示“待接入”，不可选。
// 注意：Models.swift 的口径与安卓有两处不一致（已在 Models.swift 里注明，
// 等汇总人确认）：捷安特/Intervals.icu 在安卓是只上传，骨架按双向；
// Komoot/松拓在安卓是双向，骨架按仅下载。这里先按骨架口径写。

import SwiftUI

struct SyncView: View {
    @EnvironmentObject private var engine: SyncEngine
    @EnvironmentObject private var license: TrialLicense

    @State private var selectedSource: DataSource?
    @State private var selectedTargets: Set<String> = []
    @State private var count = 10
    @State private var skip = 0
    @State private var showNewTask = false
    @State private var showFullLog = false
    @State private var showBackgroundInfo = false

    // 三开关：按安卓 PrefsManager 原样保留（键名与安卓一致）。
    // 迈金 FIT 坐标为 GCJ-02（高德系），默认开，转为 WGS-84 后上传国际平台。
    @AppStorage("gcj02_convert") private var mageneConvert = true
    // 咕咚默认关 = WGS-84；若实测偏移可开启 GCJ-02→WGS-84。
    @AppStorage("codoon_gcj_convert") private var codoonConvert = false
    // Zepp 原始坐标即 WGS-84，默认不转换；若实测偏移可开启。
    @AppStorage("zepp_gcj_convert") private var zeppConvert = false

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                sourceGrid
                targetGrid
                countSkipSliders
                coordinateSection
                quickSyncButtons
                statsCards
                taskCards
                logSection
                backgroundSection
            }
            .padding()
        }
        .navigationTitle("同步")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $showNewTask) {
            NewTaskSheet { task, options in
                engine.addTask(task, options: options)
            }
        }
        .sheet(isPresented: $showFullLog) {
            FullLogSheet(engine: engine)
        }
    }

    // MARK: 数据来源单选网格
    private var sourceGrid: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("数据来源（单选）").font(.headline)
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 96))], spacing: 8) {
                ForEach(DataSource.allCases) { ds in
                    let downloadable = ds.supportsDownload
                    let selected = selectedSource == ds
                    Button {
                        selectedSource = ds
                    } label: {
                        VStack(spacing: 2) {
                            Text(ds.displayName).font(.subheadline)
                            if !downloadable {
                                Text("仅上传").font(.caption2).foregroundStyle(.secondary)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 8)
                        .background(selected ? Color.brandBlue : Color(.secondarySystemBackground))
                        .foregroundStyle(selected ? .white : .primary)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .opacity(downloadable ? 1 : 0.45)
                    }
                    .disabled(!downloadable)
                }
            }
        }
    }

    // MARK: 同步目标多选网格
    private var targetGrid: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("同步目标（多选）").font(.headline)
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 96))], spacing: 8) {
                ForEach(DataSource.allCases) { ds in
                    let isTarget = ds.supportsUpload
                    let isKeep = ds.isSemiAutoUpload
                    let selected = selectedTargets.contains(ds.rawValue)
                    let disabled = !isTarget || ds == selectedSource
                    Button {
                        if selected {
                            selectedTargets.remove(ds.rawValue)
                        } else {
                            selectedTargets.insert(ds.rawValue)
                        }
                    } label: {
                        VStack(spacing: 2) {
                            Text(ds.displayName).font(.subheadline)
                            if isKeep {
                                Text("半自动导入").font(.caption2).foregroundStyle(.orange)
                            } else if !isTarget {
                                Text("仅下载").font(.caption2).foregroundStyle(.secondary)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 8)
                        .background(selected ? Color.brandBlue
                                    : Color(.secondarySystemBackground))
                        .foregroundStyle(selected ? .white : .primary)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .opacity(disabled ? 0.45 : 1)
                    }
                    .disabled(disabled)
                }
            }
            Text("Keep 为半自动导入目标：文件导出后请在 Keep App 内手动导入，无需 Keep 登录态。目标不能与来源相同。")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }

    // MARK: 数量 / 跳过滑块
    private var countSkipSliders: some View {
        VStack(spacing: 14) {
            HStack {
                Text("同步数量").font(.subheadline)
                Spacer()
                Text("\(count) 条").font(.subheadline.bold())
            }
            Slider(value: Binding(
                get: { Double(count) },
                set: { count = Int($0) }
            ), in: 1...50, step: 1)
            HStack {
                Text("跳过条数").font(.subheadline)
                Spacer()
                Text("跳过前 \(skip) 条").font(.subheadline.bold())
            }
            Slider(value: Binding(
                get: { Double(skip) },
                set: { skip = Int($0) }
            ), in: 0...50, step: 1)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    // MARK: 坐标转换三开关
    private var coordinateSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("坐标转换（GCJ-02 → WGS-84）").font(.headline)
            Toggle("迈金坐标转换（GCJ-02 → WGS-84）", isOn: $mageneConvert)
            Text("迈金 FIT 坐标为 GCJ-02（高德系），建议开启转为 WGS-84 后上传国际平台。")
                .font(.caption).foregroundStyle(.secondary)
            Toggle("咕咚坐标转换（GCJ-02 → WGS-84）", isOn: $codoonConvert)
            Toggle("Zepp 坐标转换（GCJ-02 → WGS-84）", isOn: $zeppConvert)
            Text("咕咚、Zepp 默认不转换（原始坐标即 WGS-84）；若实测轨迹偏移再开启。")
                .font(.caption).foregroundStyle(.secondary)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    // MARK: 开始同步 / 停止
    private var quickSyncButtons: some View {
        VStack(spacing: 10) {
            Button {
                startQuickSync()
            } label: {
                HStack {
                    if engine.isRunning { ProgressView().tint(.white) }
                    Text(engine.isRunning ? "同步进行中…" : "开始同步")
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(canQuickSync ? Color.brandBlue : Color.gray)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .disabled(!canQuickSync || engine.isRunning)
            if engine.isRunning {
                Button("停止同步") { engine.stop() }
                    .foregroundStyle(.red)
            }
            if !engine.progressText.isEmpty {
                Text(engine.progressText).font(.caption).foregroundStyle(.secondary)
            }
            if selectedSource == nil || selectedTargets.isEmpty {
                Text("请先选一个数据来源和至少一个同步目标。")
                    .font(.caption).foregroundStyle(.secondary)
            }
        }
    }

    private var canQuickSync: Bool {
        selectedSource != nil && !selectedTargets.isEmpty
    }

    /// 开始同步：一对多目标（目标数 > 1）先验体验码，一对一直接跑。
    private func startQuickSync() {
        guard let source = selectedSource else { return }
        let targets = DataSource.allCases.filter { selectedTargets.contains($0.rawValue) }
        let run = {
            engine.runQuick(source: source, targets: targets, count: count,
                            skip: skip, coordinateConvert: mageneConvert)
        }
        if targets.count > 1 {
            license.checkTrialAndRun(run)
        } else {
            run()
        }
    }

    // MARK: 统计卡片
    private var statsCards: some View {
        HStack(spacing: 10) {
            statCard(title: "成功", value: engine.totalOk, color: .green)
            statCard(title: "跳过", value: engine.totalSkip, color: .orange)
            statCard(title: "失败", value: engine.totalFail, color: .red)
        }
    }

    private func statCard(title: String, value: Int, color: Color) -> some View {
        VStack(spacing: 4) {
            Text("\(value)").font(.title2.bold()).foregroundStyle(color)
            Text(title).font(.caption).foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 12)
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }

    // MARK: 同步任务卡片
    private var taskCards: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("同步任务").font(.headline)
                Spacer()
                // 新建任务是体验码入口：验码通过才打开新建表单。
                Button {
                    license.checkTrialAndRun { showNewTask = true }
                } label: {
                    Label("新建任务", systemImage: "plus")
                }
                .font(.subheadline.bold())
            }
            if engine.tasks.isEmpty {
                Text("还没有同步任务。点右上角“新建任务”，配好来源、目标和数量就能反复跑；增量同步会自动跳过已同步过的活动。")
                    .font(.caption).foregroundStyle(.secondary)
            }
            ForEach(engine.tasks) { task in
                SyncTaskCard(task: task, engine: engine, license: license)
            }
        }
    }

    // MARK: 运行日志
    private var logSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("运行日志").font(.headline)
                Spacer()
                Button("完整日志") { showFullLog = true }
                    .font(.subheadline)
            }
            ForEach(engine.logs.suffix(3)) { entry in
                logLine(entry)
            }
            if engine.logs.isEmpty {
                Text("暂无日志。开始同步后这里会显示每一步的结果。")
                    .font(.caption).foregroundStyle(.secondary)
            }
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    private func logLine(_ entry: SyncLogEntry) -> some View {
        HStack(alignment: .top, spacing: 6) {
            Text(entry.time, style: .time).font(.caption2).foregroundStyle(.tertiary)
            Text(entry.message).font(.caption)
        }
    }

    // MARK: 后台自动同步说明
    private var backgroundSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("后台自动同步").font(.headline)
                Spacer()
                Button("说明") { showBackgroundInfo.toggle() }
                    .font(.subheadline)
            }
            if showBackgroundInfo {
                Text(BackgroundSync.backgroundLimitNotice)
                    .font(.caption).foregroundStyle(.secondary)
            }
            Toggle("开启后台自动同步（任务级自动同步开启的任务才会跑）",
                   isOn: Binding(
                    get: { BackgroundSync.shared.isEnabled },
                    set: { value in
                        BackgroundSync.shared.isEnabled = value
                        if value {
                            BackgroundSync.shared.autoTaskIds = engine.tasks
                                .filter { engine.isAutoSync($0) }.map { $0.id.uuidString }
                            BackgroundSync.shared.scheduleRefresh()
                        } else {
                            BackgroundSync.shared.cancelAll()
                        }
                    }))
            Text("iOS 后台由系统调度，不如安卓自由：15 分钟只是最早间隔，不保证准时。")
                .font(.caption).foregroundStyle(.secondary)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

// MARK: - 同步任务卡片

private struct SyncTaskCard: View {
    let task: SyncTask
    @ObservedObject var engine: SyncEngine
    @ObservedObject var license: TrialLicense

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(task.name).font(.headline)
                Spacer()
                if engine.isAutoSync(task) {
                    Text("自动").font(.caption2)
                        .padding(.horizontal, 6).padding(.vertical, 2)
                        .background(Color.brandBlue.opacity(0.12))
                        .foregroundStyle(Color.brandBlue)
                        .clipShape(Capsule())
                }
            }
            Text("\(task.source.displayName) → \(task.targets.map(\.displayName).joined(separator: "、"))")
                .font(.subheadline)
            Text("同步 \(task.syncCount) 条 · 跳过前 \(task.skipCount) 条 · 增量自动跳过已同步")
                .font(.caption).foregroundStyle(.secondary)
            if let last = engine.lastRuns[task.id], let time = last.time {
                Text("上次：\(time, style: .date) \(time, style: .time) 成功 \(last.ok) · 跳过 \(last.skip) · 失败 \(last.fail)")
                    .font(.caption).foregroundStyle(.secondary)
            } else if let lastRun = task.lastRun {
                Text("上次运行：\(lastRun, style: .date) \(lastRun, style: .time)")
                    .font(.caption).foregroundStyle(.secondary)
            }
            HStack(spacing: 8) {
                Button(engine.isRunning ? "运行中…" : "运行") { runTask() }
                    .disabled(engine.isRunning || !task.enabled)
                Button("复制") { _ = engine.duplicateTask(task) }
                Button("测试") {
                    Task {
                        let result = await engine.testTask(task)
                        engine.log(result)
                    }
                }
                Button("删除") { engine.deleteTask(task) }
                    .foregroundStyle(.red)
            }
            .font(.subheadline)
            .buttonStyle(.bordered)
            .tint(.brandBlue)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    /// 运行任务：一对多目标（目标数 > 1）先验体验码，一对一直接跑；验证成功后自动重跑。
    private func runTask() {
        let run = { engine.run(task: task) }
        if task.targets.count > 1 {
            license.checkTrialAndRun(run)
        } else {
            run()
        }
    }
}

// MARK: - 新建任务表单

private struct NewTaskSheet: View {
    @Environment(\.dismiss) private var dismiss
    @State private var name = ""
    @State private var source: DataSource?
    @State private var targets: Set<String> = []
    @State private var count = 10
    @State private var skip = 0
    @State private var incremental = true
    @State private var coordinateConvert = true
    @State private var autoSync = false
    let onSave: (SyncTask, TaskOptions) -> Void

    var body: some View {
        NavigationStack {
            Form {
                Section("任务名称") {
                    TextField("例如：行者 → 佳明中国", text: $name)
                }
                Section("数据来源（单选）") {
                    Picker("来源", selection: $source) {
                        Text("请选择").tag(nil as DataSource?)
                        ForEach(DataSource.allCases.filter(\.supportsDownload)) { ds in
                            Text(ds.displayName).tag(ds as DataSource?)
                        }
                    }
                }
                Section("同步目标（多选）") {
                    ForEach(DataSource.allCases.filter(\.supportsUpload)) { ds in
                        Toggle(ds.displayName + (ds.isSemiAutoUpload ? "（半自动导入）" : ""),
                               isOn: Binding(
                                get: { targets.contains(ds.rawValue) },
                                set: { if $0 { targets.insert(ds.rawValue) } else { targets.remove(ds.rawValue) } }))
                    }
                }
                Section("数量") {
                    Stepper("同步数量：\(count) 条（1–50）", value: $count, in: 1...50)
                    Stepper("跳过条数：\(skip) 条", value: $skip, in: 0...50)
                    Toggle("增量同步（自动跳过已同步过的活动）", isOn: $incremental)
                    Toggle("迈金坐标转换（GCJ-02 → WGS-84）", isOn: $coordinateConvert)
                    Toggle("自动同步（后台，iOS 系统调度，不保证准时）", isOn: $autoSync)
                }
            }
            .navigationTitle("新建同步任务")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("取消") { dismiss() }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("保存") {
                        guard let source else { return }
                        let task = SyncTask(
                            name: name.isEmpty ? "\(source.displayName)→\(targets.count) 个目标" : name,
                            source: source,
                            targets: DataSource.allCases.filter { targets.contains($0.rawValue) },
                            syncCount: count, skipCount: skip, enabled: true)
                        var options = TaskOptions()
                        options.incremental = incremental
                        options.coordinateConvert = coordinateConvert
                        options.autoSync = autoSync
                        onSave(task, options)
                        dismiss()
                    }
                    .disabled(source == nil || targets.isEmpty)
                }
            }
        }
    }
}

// MARK: - 完整日志（暂停滚动 / 清空 / 复制）

private struct FullLogSheet: View {
    @ObservedObject var engine: SyncEngine
    @Environment(\.dismiss) private var dismiss
    @State private var pauseScroll = false
    @State private var copied = false

    var body: some View {
        NavigationStack {
            VStack {
                ScrollViewReader { proxy in
                    ScrollView {
                        LazyVStack(alignment: .leading, spacing: 6) {
                            ForEach(engine.logs) { entry in
                                HStack(alignment: .top, spacing: 6) {
                                    Text(entry.time, style: .time)
                                        .font(.caption2).foregroundStyle(.tertiary)
                                    Text(entry.message).font(.caption)
                                }
                                .id(entry.id)
                            }
                        }
                        .padding()
                    }
                    .onChange(of: engine.logs.count) { _, _ in
                        guard !pauseScroll, let last = engine.logs.last else { return }
                        withAnimation { proxy.scrollTo(last.id, anchor: .bottom) }
                    }
                }
                HStack(spacing: 12) {
                    Toggle("暂停滚动", isOn: $pauseScroll)
                    Spacer()
                    Button(copied ? "已复制" : "复制日志") {
                        UIPasteboard.general.string = engine.logs
                            .map { "\($0.time) \($0.message)" }.joined(separator: "\n")
                        copied = true
                    }
                    Button("清空") { engine.clearLogs() }
                        .foregroundStyle(.red)
                }
                .font(.subheadline)
                .padding()
            }
            .navigationTitle("完整日志")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("关闭") { dismiss() }
                }
            }
        }
    }
}

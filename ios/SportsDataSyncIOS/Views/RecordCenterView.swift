// 待真机验证
// 记录中心：本地已下载活动列表、按平台/日期筛选、查看详情（距离/时长/爬升/均速）、
// 删除、重新上传。对应安卓 ui/RecordCenterFragment.kt。
//
// 数据来源：SyncEngine 保存到本地的活动（Documents/Activities + 索引）。
// 爬升与均速：FIT/GPX 解析后才有；解析器（Core/FitParser.swift、GpxParser.swift）
// 尚未落盘时显示“—”，不编造数字。删除只删本地文件，不删云端数据。

import SwiftUI

struct RecordCenterView: View {
    @EnvironmentObject private var engine: SyncEngine
    @State private var selectedPlatform: String? = nil
    @State private var selectedDate: DateFilter = .all
    @State private var searchText = ""
    @State private var detailActivity: DownloadedActivity?
    @State private var reuploadActivity: DownloadedActivity?
    @State private var showDeleteConfirm = false
    @State private var pendingDelete: DownloadedActivity?

    enum DateFilter: String, CaseIterable {
        case all = "全部"
        case today = "今天"
        case week = "近 7 天"
        case month = "近 30 天"
    }

    private var filtered: [DownloadedActivity] {
        engine.downloadedActivities.filter { activity in
            if let selectedPlatform, activity.platformRawValue != selectedPlatform { return false }
            switch selectedDate {
            case .today:
                guard Calendar.current.isDateInToday(activity.startDate) else { return false }
            case .week:
                guard activity.startDate > Date(timeIntervalSinceNow: -7 * 86_400) else { return false }
            case .month:
                guard activity.startDate > Date(timeIntervalSinceNow: -30 * 86_400) else { return false }
            case .all:
                break
            }
            if !searchText.isEmpty,
               !activity.title.localizedCaseInsensitiveContains(searchText) { return false }
            return true
        }
    }

    private var platforms: [String] {
        Array(Set(engine.downloadedActivities.map(\.platformRawValue))).sorted()
    }

    var body: some View {
        VStack(spacing: 0) {
            filterBar
            if filtered.isEmpty {
                ContentUnavailableView(
                    "还没有本地活动",
                    systemImage: "tray",
                    description: Text("在同步页同步一次，下载的活动就会出现在这里。"))
            } else {
                List(filtered) { activity in
                    activityRow(activity)
                        .contentShape(Rectangle())
                        .onTapGesture { detailActivity = activity }
                        .swipeActions(edge: .trailing) {
                            Button("删除", role: .destructive) {
                                pendingDelete = activity
                                showDeleteConfirm = true
                            }
                            Button("重新上传") { reuploadActivity = activity }
                                .tint(.brandBlue)
                        }
                }
                .listStyle(.plain)
            }
        }
        .navigationTitle("记录中心")
        .navigationBarTitleDisplayMode(.inline)
        .searchable(text: $searchText, prompt: "搜索活动标题")
        .sheet(item: $detailActivity) { activity in
            ActivityDetailSheet(activity: activity, engine: engine)
        }
        .sheet(item: $reuploadActivity) { activity in
            ReuploadSheet(activity: activity, engine: engine)
        }
        .alert("删除本地活动？", isPresented: $showDeleteConfirm) {
            Button("删除", role: .destructive) {
                if let pendingDelete { engine.deleteLocal(activity: pendingDelete) }
            }
            Button("取消", role: .cancel) {}
        } message: {
            Text("只删除本机保存的文件，不会删除各平台云端的数据。")
        }
    }

    // MARK: 筛选栏
    private var filterBar: some View {
        VStack(alignment: .leading, spacing: 8) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    filterChip(label: "全部平台", selected: selectedPlatform == nil) {
                        selectedPlatform = nil
                    }
                    ForEach(platforms, id: \.self) { shortName in
                        let name = DataSource.allCases.first { $0.rawValue == shortName }?.displayName ?? shortName
                        filterChip(label: name, selected: selectedPlatform == shortName) {
                            selectedPlatform = shortName
                        }
                    }
                }
                .padding(.horizontal)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(DateFilter.allCases, id: \.rawValue) { filter in
                        filterChip(label: filter.rawValue, selected: selectedDate == filter) {
                            selectedDate = filter
                        }
                    }
                }
                .padding(.horizontal)
            }
            Text("共 \(filtered.count) 条本地活动")
                .font(.caption).foregroundStyle(.secondary)
                .padding(.horizontal)
        }
        .padding(.vertical, 8)
        .background(Color(.systemBackground))
    }

    private func filterChip(label: String, selected: Bool, action: @escaping () -> Void) -> some View {
        Button(label, action: action)
            .font(.subheadline)
            .padding(.horizontal, 12).padding(.vertical, 6)
            .background(selected ? Color.brandBlue : Color(.secondarySystemBackground))
            .foregroundStyle(selected ? .white : .primary)
            .clipShape(Capsule())
    }

    // MARK: 列表行
    private func activityRow(_ activity: DownloadedActivity) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(activity.title).font(.headline).lineLimit(1)
                Spacer()
                Text(activity.platformDisplayName)
                    .font(.caption2)
                    .padding(.horizontal, 6).padding(.vertical, 2)
                    .background(Color.brandBlue.opacity(0.12))
                    .foregroundStyle(Color.brandBlue)
                    .clipShape(Capsule())
            }
            Text("\(activity.startDate, style: .date) \(activity.startDate, style: .time) · \(activity.sportType)")
                .font(.caption).foregroundStyle(.secondary)
            Text("\(String(format: "%.2f", activity.distanceKm)) 公里 · \(formattedDuration(activity.durationSec))")
                .font(.caption).foregroundStyle(.secondary)
        }
        .padding(.vertical, 4)
    }

    private func formattedDuration(_ seconds: Int) -> String {
        let h = seconds / 3600, m = (seconds % 3600) / 60, s = seconds % 60
        if h > 0 { return String(format: "%d小时%02d分", h, m) }
        if m > 0 { return String(format: "%d分%02d秒", m, s) }
        return "\(s) 秒"
    }
}

// MARK: - 活动详情

private struct ActivityDetailSheet: View {
    let activity: DownloadedActivity
    @ObservedObject var engine: SyncEngine
    @Environment(\.dismiss) private var dismiss
    @State private var showReupload = false

    var body: some View {
        NavigationStack {
            List {
                Section("基本信息") {
                    detailRow("标题", activity.title)
                    detailRow("平台", activity.platformDisplayName)
                    detailRow("开始时间", activity.startDate.formatted(date: .abbreviated, time: .shortened))
                    detailRow("运动类型", activity.sportType)
                    detailRow("本地文件", activity.fileName)
                }
                Section("数据") {
                    detailRow("距离", String(format: "%.2f 公里", activity.distanceKm))
                    detailRow("时长", formattedDuration(activity.durationSec))
                    // 爬升与均速来自 FIT/GPX 解析；解析器未落盘前显示“—”，不编数字。
                    detailRow("爬升", activity.elevationGainM.map { String(format: "%.0f 米", $0) } ?? "—")
                    detailRow("均速", activity.avgSpeedKmh.map { String(format: "%.1f 公里/小时", $0) } ?? "—")
                }
                Section("导出 / 分享") {
                    // 复用合并页 / 码表页的系统分享写法：把本地 FIT/GPX 文件
                    // 分享出去，或存到文件 App（需 Info.plist 开文件共享才能
                    // 在文件 App 里直接找到 Documents/Activities）。
                    if FileManager.default.fileExists(atPath: engine.localFileURL(for: activity).path) {
                        ShareLink(item: engine.localFileURL(for: activity),
                                  preview: SharePreview(activity.fileName, image: Image(systemName: "map"))) {
                            Label("分享 / 保存本地文件（\(activity.fileName))", systemImage: "square.and.arrow.up")
                        }
                        .font(.subheadline)
                        Text("可发送给别人，或存到文件 App 里再导入其他 App。")
                            .font(.caption).foregroundStyle(.secondary)
                    } else {
                        Text("本地文件已丢失，无法分享。")
                            .font(.subheadline).foregroundStyle(.secondary)
                    }
                }
                Section {
                    Button("重新上传到其他平台") { showReupload = true }
                    Button("删除本地活动", role: .destructive) {
                        engine.deleteLocal(activity: activity)
                        dismiss()
                    }
                }
            }
            .navigationTitle("活动详情")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("关闭") { dismiss() }
                }
            }
            .sheet(isPresented: $showReupload) {
                ReuploadSheet(activity: activity, engine: engine)
            }
        }
    }

    private func detailRow(_ label: String, _ value: String) -> some View {
        HStack {
            Text(label).foregroundStyle(.secondary)
            Spacer()
            Text(value)
        }
        .font(.subheadline)
    }

    private func formattedDuration(_ seconds: Int) -> String {
        let h = seconds / 3600, m = (seconds % 3600) / 60, s = seconds % 60
        if h > 0 { return String(format: "%d小时%02d分%02d秒", h, m, s) }
        if m > 0 { return String(format: "%d分%02d秒", m, s) }
        return "\(s) 秒"
    }
}

// MARK: - 重新上传

/// 重新上传：目标只列能上传且注册表能返回实例的平台；多目标先验体验码
/// （和同步页一个口径）；上传前逐个验登录态；上传完逐条显示成功/失败，
/// 不再静默关弹窗。
/// Keep 不列在这里（半自动导入、没有上传接口，选了必败）：详情页已有导出/分享入口，
/// Keep 手动导入走那条路。
/// 验码提示挂在本 sheet 自身的 alert 上，不走根 TabView 的体验码 sheet（见 startReupload）。
private struct ReuploadSheet: View {
    let activity: DownloadedActivity
    @ObservedObject var engine: SyncEngine
    @EnvironmentObject private var license: TrialLicense
    @Environment(\.dismiss) private var dismiss
    @State private var selectedTargets: Set<String> = []
    @State private var busy = false
    @State private var results: [ReuploadResult] = []
    @State private var finished = false
    // 体验码本地验码（多目标重传用）：不走根 TabView 的体验码 sheet。
    // pendingTargets 是等验码通过后要接着传的目标；trialError 是上次输码失败的提示，
    // 存在时显示在 alert 文案里。
    @State private var showTrialAlert = false
    @State private var trialCode = ""
    @State private var trialError: String?
    @State private var pendingTargets: [DataSource] = []

    private struct ReuploadResult: Identifiable {
        let id = UUID()
        let name: String
        let ok: Bool
        let message: String
    }

    /// 能重新上传的目标：能上传（supportsUpload）且注册表能返回实例。
    /// 只下载的（MyWhoosh、Zwift、咕咚、Zepp、百锐腾，supportsUpload 为 false）
    /// 和未接入的（注册表返回 nil，如 Strava、Wahoo、松拓）都不列出来；
    /// 也不列活动本身的来源平台（“重新上传到其他平台”）。
    /// Keep 也不列：Keep 是半自动导入、uploadActivity 直接抛 unsupported，
    /// 列出来点上去必败；详情页已有导出/分享入口，Keep 手动导入走那条路。
    private var uploadableTargets: [DataSource] {
        let source = DataSource(rawValue: activity.platformRawValue)
        return DataSource.allCases.filter { ds in
            ds != source && ds.supportsUpload && !ds.isSemiAutoUpload && PlatformRegistry.platform(for: ds) != nil
        }
    }

    var body: some View {
        NavigationStack {
            Form {
                Section("重新上传「\(activity.title)」") {
                    Text("忽略增量记忆，强制再传一次。只列出能上传且已接入的平台；Keep 是半自动导入，不在这里重传，请回详情页用导出 / 分享手动导入。")
                        .font(.caption).foregroundStyle(.secondary)
                    if uploadableTargets.isEmpty {
                        Text("没有能上传的目标平台。")
                            .font(.subheadline).foregroundStyle(.secondary)
                    }
                    ForEach(uploadableTargets, id: \.rawValue) { ds in
                        Toggle(ds.displayName + (ds.isSemiAutoUpload ? "（半自动导入）" : ""), isOn: Binding(
                            get: { selectedTargets.contains(ds.rawValue) },
                            set: { if $0 { selectedTargets.insert(ds.rawValue) } else { selectedTargets.remove(ds.rawValue) } }))
                    }
                }
                if finished {
                    Section("上传结果") {
                        ForEach(results) { result in
                            VStack(alignment: .leading, spacing: 2) {
                                HStack {
                                    Text(result.ok ? "✅" : "❌")
                                    Text(result.name).font(.subheadline.bold())
                                    Spacer()
                                    Text(result.ok ? "成功" : "失败")
                                        .font(.caption)
                                        .foregroundStyle(result.ok ? .green : .red)
                                }
                                Text(result.message)
                                    .font(.caption).foregroundStyle(.secondary)
                            }
                        }
                        if results.isEmpty {
                            Text("没有上传任何目标。")
                                .font(.caption).foregroundStyle(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("重新上传")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("取消") { dismiss() }
                }
                ToolbarItem(placement: .confirmationAction) {
                    if finished {
                        Button("完成") { dismiss() }
                    } else {
                        Button(busy ? "上传中…" : "上传") { startReupload() }
                            .disabled(selectedTargets.isEmpty || busy)
                    }
                }
            }
            // 体验码提示挂在本 sheet 自身的 alert 上（UIAlertController 层，能盖在 sheet 之上），
            // 不走根 TabView 的体验码 sheet：重传本身已是 sheet（详情页 sheet 里再弹本 sheet，
            // 双层 sheet 之上再挂第三层 sheet 可能弹不出）。alert 里直接输码验证，
            // 通过后自动继续上传；一对一不走这里。
            .alert("多目标重新上传需要体验码", isPresented: $showTrialAlert) {
                TextField("P008-XXXXXX 或 LIFE-XXXXXX", text: $trialCode)
                    .textInputAutocapitalization(.characters)
                    .autocorrectionDisabled()
                Button("验证并继续") {
                    if license.verifyKey(trialCode) {
                        let pending = pendingTargets
                        pendingTargets = []
                        trialCode = ""
                        trialError = nil
                        Task { await performReupload(targets: pending) }
                    } else {
                        trialError = "体验码错误或已过期，请核对后重试"
                        // 点按钮后 alert 会先关掉，下一轮把它重新弹回来，用户才能看到错误再输一次。
                        DispatchQueue.main.async { showTrialAlert = true }
                    }
                }
                Button("暂不使用", role: .cancel) {
                    pendingTargets = []
                    trialCode = ""
                    trialError = nil
                }
            } message: {
                if let trialError {
                    Text("\(trialError)\n设备ID：\(license.deviceId)，复制设备ID到抖音群获取体验码。")
                } else {
                    Text("设备ID：\(license.deviceId)\n复制设备ID，到抖音「多吃两口」主页抖音群获取体验码，验证通过后自动继续上传。")
                }
            }
        }
    }

    /// 点"上传"：多目标（目标数 > 1）先验体验码，和同步页一个口径；
    /// 一对一不验，直接跑。
    /// 不调 license.checkTrialAndRun：它会把体验码弹窗挂到根 TabView 的 sheet 上，
    /// 重传本身已是双层 sheet，第三层 sheet 可能弹不出，没码点上传会无任何反应。
    /// 这里先同步判断 license.isAllowed：有码直接跑；没码弹本 sheet 自身的 alert 输码，
    /// 验证通过后自动继续上传。
    private func startReupload() {
        let targets = uploadableTargets.filter { selectedTargets.contains($0.rawValue) }
        guard !targets.isEmpty else { return }
        if targets.count <= 1 || license.isAllowed {
            Task { await performReupload(targets: targets) }
            return
        }
        pendingTargets = targets
        trialCode = ""
        trialError = nil
        showTrialAlert = true
    }

    /// 逐个目标重新上传：先验登录态，没登录的先提示去登录、不发请求；
    /// 每传完一个就按引擎刚记的日志逐条记结果（成功/失败 + 原因），
    /// 最后统一显示，不静默关弹窗。
    private func performReupload(targets: [DataSource]) async {
        await MainActor.run { busy = true; results = []; finished = false }
        guard engine.localFileData(for: activity) != nil else {
            await MainActor.run {
                results = [ReuploadResult(name: "本地文件", ok: false,
                                          message: "本地文件已丢失，无法重新上传「\(activity.title)」")]
                busy = false
                finished = true
            }
            return
        }
        var out: [ReuploadResult] = []
        for target in targets {
            guard let platform = PlatformRegistry.platform(for: target) else {
                out.append(ReuploadResult(name: target.displayName, ok: false,
                                          message: "\(target.displayName)待接入，无法上传"))
                continue
            }
            guard await platform.isLoggedIn() else {
                out.append(ReuploadResult(name: target.displayName, ok: false,
                                          message: "未登录，请先去登录页登录\(target.displayName)，再回来重新上传"))
                continue
            }
            // 引擎的 reupload 不返回值，只记日志：取本次调用新增的日志里
            // 提到该目标的那一条当结果（成功“✅ 已重新上传到…”/失败“❌ …”）。
            let beforeCount = engine.logs.count
            await engine.reupload(activity: activity, to: [target])
            let newLogs = Array(engine.logs.dropFirst(beforeCount))
            if let line = newLogs.last(where: { $0.message.contains(target.displayName) }) {
                out.append(ReuploadResult(name: target.displayName,
                                          ok: line.level == .success,
                                          message: line.message))
            } else {
                out.append(ReuploadResult(name: target.displayName, ok: false,
                                          message: "上传结束，但没有收到明确结果，请去同步页查看运行日志"))
            }
        }
        await MainActor.run {
            results = out
            busy = false
            finished = true
        }
    }
}

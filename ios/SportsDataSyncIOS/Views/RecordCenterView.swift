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

private struct ReuploadSheet: View {
    let activity: DownloadedActivity
    @ObservedObject var engine: SyncEngine
    @Environment(\.dismiss) private var dismiss
    @State private var selectedTargets: Set<String> = []
    @State private var busy = false

    var body: some View {
        NavigationStack {
            Form {
                Section("重新上传「\(activity.title)」") {
                    Text("忽略增量记忆，强制再传一次。")
                        .font(.caption).foregroundStyle(.secondary)
                    ForEach(DataSource.allCases, id: \.rawValue) { ds in
                        Toggle(ds.displayName, isOn: Binding(
                            get: { selectedTargets.contains(ds.rawValue) },
                            set: { if $0 { selectedTargets.insert(ds.rawValue) } else { selectedTargets.remove(ds.rawValue) } }))
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
                    Button(busy ? "上传中…" : "上传") {
                        busy = true
                        let targets = DataSource.allCases.filter { selectedTargets.contains($0.rawValue) }
                        Task {
                            await engine.reupload(activity: activity, to: targets)
                            await MainActor.run { dismiss() }
                        }
                    }
                    .disabled(selectedTargets.isEmpty || busy)
                }
            }
        }
    }
}

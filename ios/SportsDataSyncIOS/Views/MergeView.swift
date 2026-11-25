// 待真机验证
// 轨迹合并：多选本地活动，合并成一条；透明贴纸导出占位。对应安卓 ui/MergeFragment +
// merge/TrackMerger.java + StickerCore.java。
//
// 体验码门禁：入口在关于页，点入口时先验码（TrialLicense.checkTrialAndRun），
// 有码才进本页；本页内部不再重复验码。
//
// 合并实现（用骨架组 Core 的真实工具，不自己拼字符串）：
// - GPX 文件：GpxParser.parse 取轨迹点；
// - FIT 文件：FitParser.parse（经 GpxParser.fitToTrackPoints）取轨迹点；
// - 合并后按时间排序，输出两份：GPX（GpxBuilder.buildData）与 FIT
//   （FitBuilder.build），都可分享/保存。时间缺失的点按原顺序排在最后。
// - 贴纸导出：用 SwiftUI + ImageRenderer 画一张透明底小卡片（距离/时长/日期），
//   导出 PNG 分享；样式是占位，待美术定稿。

import SwiftUI

struct MergeView: View {
    @EnvironmentObject private var engine: SyncEngine
    @State private var selectedIds: Set<String> = []
    @State private var mergedResult: String?
    @State private var mergedGPXURL: URL?
    @State private var mergedFITURL: URL?
    @State private var stickerImage: UIImage?
    @State private var busy = false

    private var selectedActivities: [DownloadedActivity] {
        engine.downloadedActivities
            .filter { selectedIds.contains($0.id) }
            .sorted { $0.startTimeMs < $1.startTimeMs }
    }

    var body: some View {
        VStack(spacing: 0) {
            if engine.downloadedActivities.isEmpty {
                ContentUnavailableView(
                    "还没有本地活动",
                    systemImage: "square.stack.3d.up",
                    description: Text("先在同步页同步几条活动，再回来选它们合并。"))
            } else {
                List(engine.downloadedActivities) { activity in
                    HStack {
                        Image(systemName: selectedIds.contains(activity.id)
                              ? "checkmark.circle.fill" : "circle")
                            .foregroundStyle(selectedIds.contains(activity.id) ? Color.brandBlue : Color.gray)
                        VStack(alignment: .leading, spacing: 2) {
                            Text(activity.title).font(.headline).lineLimit(1)
                            Text("\(activity.platformDisplayName) · \(activity.startDate, style: .date) · \(String(format: "%.2f", activity.distanceKm)) 公里 · \(activity.fileName.hasSuffix(".fit") ? "FIT" : "GPX")")
                                .font(.caption).foregroundStyle(.secondary)
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        if selectedIds.contains(activity.id) {
                            selectedIds.remove(activity.id)
                        } else {
                            selectedIds.insert(activity.id)
                        }
                    }
                }
                .listStyle(.plain)
            }

            VStack(spacing: 10) {
                Text("已选 \(selectedIds.count) 条（至少选 2 条）")
                    .font(.caption).foregroundStyle(.secondary)
                Button(busy ? "正在合并…" : "合并成一条") { merge() }
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(selectedIds.count >= 2 ? Color.brandBlue : Color.gray)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .disabled(selectedIds.count < 2 || busy)
                if let mergedResult {
                    Text(mergedResult)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                if let mergedGPXURL {
                    ShareLink(item: mergedGPXURL, preview: SharePreview("合并后的轨迹（GPX）", image: Image(systemName: "map"))) {
                        Label("分享 / 保存合并后的 GPX 文件", systemImage: "square.and.arrow.up")
                    }
                    .font(.subheadline)
                }
                if let mergedFITURL {
                    ShareLink(item: mergedFITURL, preview: SharePreview("合并后的轨迹（FIT）", image: Image(systemName: "map"))) {
                        Label("分享 / 保存合并后的 FIT 文件", systemImage: "square.and.arrow.up")
                    }
                    .font(.subheadline)
                }
                if let stickerImage {
                    ShareLink(item: Image(uiImage: stickerImage),
                              preview: SharePreview("轨迹贴纸", image: Image(uiImage: stickerImage))) {
                        Label("分享透明贴纸（PNG）", systemImage: "square.and.arrow.up")
                    }
                    .font(.subheadline)
                }
            }
            .padding()
            .background(Color(.secondarySystemBackground))
        }
        .navigationTitle("轨迹合并")
        .navigationBarTitleDisplayMode(.inline)
    }

    // MARK: 合并
    private func merge() {
        busy = true
        mergedResult = nil
        mergedGPXURL = nil
        mergedFITURL = nil
        stickerImage = nil
        Task {
            var points: [TrackPoint] = []
            var skippedNotes: [String] = []
            for activity in selectedActivities {
                guard let data = engine.localFileData(for: activity) else {
                    skippedNotes.append("「\(activity.title)」文件读不出来，已跳过")
                    continue
                }
                do {
                    if FitParser.isFit(data) {
                        let result = try GpxParser.fitToTrackPoints(data)
                        points.append(contentsOf: result.points)
                    } else {
                        let result = try GpxParser.parse(data)
                        points.append(contentsOf: result.points)
                    }
                } catch {
                    skippedNotes.append("「\(activity.title)」解析失败，已跳过（\(error.localizedDescription)）")
                }
            }
            guard !points.isEmpty else {
                await MainActor.run {
                    busy = false
                    mergedResult = "没有可合并的轨迹点。" + skippedNotes.joined(separator: "；")
                }
                return
            }
            // 按时间排序（时间缺失的点 timestamp 为 0，排在最后，保持原顺序）。
            let sorted = points.sorted {
                if $0.timestamp == 0 || $1.timestamp == 0 { return $0.timestamp > $1.timestamp }
                return $0.timestamp < $1.timestamp
            }
            let totalDistance = selectedActivities.reduce(0) { $0 + $1.distanceKm }
            let totalDuration = selectedActivities.reduce(0) { $0 + $1.durationSec }
            let stamp = Int(Date().timeIntervalSince1970)
            let gpxURL = engine.activitiesDirectory.appendingPathComponent("merged_\(stamp).gpx")
            let fitURL = engine.activitiesDirectory.appendingPathComponent("merged_\(stamp).fit")
            do {
                try GpxBuilder.buildData(points: sorted, title: "合并轨迹").write(to: gpxURL)
                let fitData = FitBuilder.build(points: sorted, sport: .cycling, subSport: .generic, options: FitBuildOptions())
                try fitData.write(to: fitURL)
            } catch {
                await MainActor.run {
                    busy = false
                    mergedResult = "保存合并文件失败：\(error.localizedDescription)"
                }
                return
            }
            // 透明贴纸：距离 / 时长 / 日期，占位样式。
            let sticker = StickerCardView(
                distanceKm: totalDistance, durationSec: totalDuration,
                date: selectedActivities.first?.startDate ?? Date(),
                activityCount: selectedActivities.count)
            let renderedSticker = await MainActor.run { sticker.renderedImage() }
            await MainActor.run {
                busy = false
                stickerImage = renderedSticker
                mergedGPXURL = gpxURL
                mergedFITURL = fitURL
                var text = "已合并 \(sorted.count) 个轨迹点，总距离 \(String(format: "%.2f", totalDistance)) 公里，总时长 \(formattedDuration(totalDuration))。"
                if !skippedNotes.isEmpty { text += "\n" + skippedNotes.joined(separator: "\n") }
                mergedResult = text
                engine.log("已合并 \(selectedActivities.count) 条活动为一条（\(sorted.count) 个轨迹点）", level: .success)
            }
        }
    }

    private func formattedDuration(_ seconds: Int) -> String {
        let h = seconds / 3600, m = (seconds % 3600) / 60
        if h > 0 { return "\(h)小时\(m)分" }
        return "\(m)分"
    }
}

// MARK: - 透明贴纸卡片（占位样式，待美术定稿）

private struct StickerCardView: View {
    let distanceKm: Double
    let durationSec: Int
    let date: Date
    let activityCount: Int

    var body: some View {
        VStack(spacing: 4) {
            Text("🚴 合并骑行").font(.headline)
            Text(String(format: "%.2f 公里", distanceKm))
                .font(.system(size: 34, weight: .bold))
            Text("\(formattedDuration(durationSec)) · \(activityCount) 条活动合并")
                .font(.caption)
            Text(date, style: .date).font(.caption2)
            Text("鸡翅幸哲迈进Ob").font(.caption2)
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        .background(Color.white.opacity(0.85))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(8)
    }

    private func formattedDuration(_ seconds: Int) -> String {
        let h = seconds / 3600, m = (seconds % 3600) / 60
        if h > 0 { return "\(h)小时\(m)分" }
        return "\(m)分钟"
    }

    /// 渲染为透明底 PNG（ImageRenderer，iOS 16+）。
    @MainActor
    func renderedImage() -> UIImage? {
        let renderer = ImageRenderer(content: body)
        renderer.scale = 3
        return renderer.uiImage
    }
}

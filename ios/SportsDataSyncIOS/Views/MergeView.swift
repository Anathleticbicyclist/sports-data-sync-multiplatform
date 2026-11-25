// 待真机验证
// 轨迹合并：多选本地活动，合并成一条；透明贴纸导出。对应安卓 ui/MergeFragment +
// merge/TrackMerger.java + StickerCore.java。
//
// 体验码门禁：入口在关于页，点入口时先验码（TrialLicense.checkTrialAndRun），
// 有码才进本页；本页内部不再重复验码。
//
// 合并实现（与安卓 v9.6.9 TrackMerger.mergePointGroups / mergeSegments 同款口径）：
// - 每段的里程 / 计时 / 爬升 / 下降 / 卡路里取各段码表原值求和，不现算：
//   FIT 段取 session 的 total_distance / total_timer_time / 爬升 / 卡路里 / file_id
//   （FitParser 的 FitSummary）；GPX 段取记录中心的距离/时长，爬升取记录中心原值，
//   没有才按 8 米基准法从轨迹点算（安卓 TrackMerger 同款去噪口径）。
// - 运动类型跟着原活动走：取时间最早那段的 sport（FIT session sport / GPX <name>/<type> 猜，
//   猜不到看记录中心 sportType），跑步合并出来就是跑步 FIT，sub_sport 骑行 7 / 跑步 2 / 徒步 3。
// - 按天自动分圈：每段开头必是圈起点，一天内跨过午夜也切圈；lap 起点下标 + 每圈爬升/下降
//   传给 FitBuilder（FitBuildOptions.lapStarts/lapAscents/lapDescents）。
// - 保留原始时间戳，不做时间压缩；无时间戳的点按上一毫秒 +1 补，时间不单调递增的点丢弃
//   （安卓 mergeSegments 同款）。
// - 贴纸导出：SwiftUI + ImageRenderer 画一张真透明底小卡片（不画任何底色），导出 PNG 分享。

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

    // MARK: 合并（安卓 TrackMerger 口径）

    /// 一段待合并的活动：轨迹点 + 各段码表原值（里程/计时/爬升/下降/卡路里/file_id）。
    private struct SegmentData {
        var points: [TrackPoint]
        var sport: FitSport
        var subSport: FitSport.SubSport
        var distanceMeters: Double
        var timerSeconds: Int64
        var calories: Int
        var ascentMeters: Double
        var descentMeters: Double
        var manufacturer: Int
        var product: Int
        var serialNumber: UInt32
        var firstTimestamp: TimeInterval
    }

    private func merge() {
        busy = true
        mergedResult = nil
        mergedGPXURL = nil
        mergedFITURL = nil
        stickerImage = nil
        Task {
            var segments: [SegmentData] = []
            var skippedNotes: [String] = []
            for activity in selectedActivities {
                guard let data = engine.localFileData(for: activity) else {
                    skippedNotes.append("「\(activity.title)」文件读不出来，已跳过")
                    continue
                }
                do {
                    if FitParser.isFit(data) {
                        let fit = try FitParser.parse(data)
                        let s = fit.summary
                        let sport = sportOf(summarySport: s.sport, title: activity.title, sportType: activity.sportType)
                        // 爬升/下降取 session 原值；原值是 0 时才按 8 米基准法从点列算（安卓同款去噪）。
                        let computed = ascentDescent(points: fit.points)
                        segments.append(SegmentData(
                            points: fit.points, sport: sport, subSport: subSportOf(sport),
                            distanceMeters: s.totalDistanceMeters > 0 ? s.totalDistanceMeters : activity.distanceKm * 1000,
                            timerSeconds: s.timerSeconds > 0 ? s.timerSeconds : Int64(activity.durationSec),
                            calories: s.totalCalories,
                            ascentMeters: s.ascentMeters > 0 ? Double(s.ascentMeters) : computed.ascent,
                            descentMeters: s.descentMeters > 0 ? Double(s.descentMeters) : computed.descent,
                            manufacturer: s.manufacturer, product: s.product, serialNumber: s.serialNumber,
                            firstTimestamp: fit.points.first(where: { $0.timestamp > 0 })?.timestamp ?? 0))
                    } else {
                        let gpx = try GpxParser.parse(data)
                        let sport = gpx.sport ?? sportOf(summarySport: -1, title: activity.title, sportType: activity.sportType)
                        let computed = ascentDescent(points: gpx.points)
                        segments.append(SegmentData(
                            points: gpx.points, sport: sport, subSport: subSportOf(sport),
                            distanceMeters: activity.distanceKm * 1000,
                            timerSeconds: Int64(activity.durationSec),
                            calories: gpx.meta.calories,
                            ascentMeters: (activity.elevationGainM ?? 0) > 0 ? (activity.elevationGainM ?? 0) : computed.ascent,
                            descentMeters: computed.descent,
                            manufacturer: 255, product: 1, serialNumber: 0,
                            firstTimestamp: gpx.points.first(where: { $0.timestamp > 0 })?.timestamp ?? 0))
                    }
                } catch {
                    skippedNotes.append("「\(activity.title)」解析失败，已跳过（\(error.localizedDescription)）")
                }
            }
            // 段按开始时间排序（无时间的段排最后），空段丢掉。
            segments = segments.filter { !$0.points.isEmpty }.sorted {
                if $0.firstTimestamp == 0 || $1.firstTimestamp == 0 { return $0.firstTimestamp > $1.firstTimestamp }
                return $0.firstTimestamp < $1.firstTimestamp
            }
            guard !segments.isEmpty else {
                await MainActor.run {
                    busy = false
                    mergedResult = "没有可合并的轨迹点。" + skippedNotes.joined(separator: "；")
                }
                return
            }
            // 拼点列：保留原始时间戳；无时间戳的点按上一毫秒 +1 补；时间不单调递增的点丢弃。
            // lap 起点：每段开头必是圈起点；同一段内跨过午夜（本地日期变了）也切一圈。
            var points: [TrackPoint] = []
            var lapStarts: [Int] = [0]
            var keptSegments: [SegmentData] = []
            var lastTs: TimeInterval = -1
            var lastDay: DateComponents?
            let calendar = Calendar.current
            for segment in segments {
                var firstInSegment = true
                for var point in segment.points {
                    let newTs: TimeInterval
                    if point.timestamp > 0 {
                        newTs = point.timestamp
                    } else {
                        newTs = lastTs < 0 ? 1 : lastTs + 1
                    }
                    guard newTs > lastTs else { continue }
                    let day = calendar.dateComponents([.year, .month, .day], from: Date(timeIntervalSince1970: newTs))
                    if firstInSegment {
                        if !points.isEmpty { lapStarts.append(points.count) }
                        keptSegments.append(segment)
                        firstInSegment = false
                    } else if let prev = lastDay, prev != day {
                        lapStarts.append(points.count)
                    }
                    lastDay = day
                    point.timestamp = newTs
                    points.append(point)
                    lastTs = newTs
                }
            }
            guard !points.isEmpty else {
                await MainActor.run {
                    busy = false
                    mergedResult = "合并后没有有效轨迹点。" + skippedNotes.joined(separator: "；")
                }
                return
            }
            // 总量全部取各段码表原值求和（不是现算的）。
            let totalDistanceM = keptSegments.reduce(0) { $0 + $1.distanceMeters }
            let totalTimerSec = keptSegments.reduce(Int64(0)) { $0 + $1.timerSeconds }
            let totalCalories = keptSegments.reduce(0) { $0 + $1.calories }
            let totalAscent = keptSegments.reduce(0) { $0 + $1.ascentMeters }
            let totalDescent = keptSegments.reduce(0) { $0 + $1.descentMeters }
            // 运动类型跟着原活动走：时间最早且实际贡献了点的那段。
            let firstSegment = keptSegments.first ?? segments[0]
            let sport = firstSegment.sport
            let subSport = firstSegment.subSport
            // 每圈爬升/下降（8 米基准法，圈内重算，与各段原值口径一致）。
            let lapRanges: [Range<Int>] = lapStarts.enumerated().map { idx, s in
                s..<(idx + 1 < lapStarts.count ? lapStarts[idx + 1] : points.count)
            }
            var lapAscents: [Double] = []
            var lapDescents: [Double] = []
            for range in lapRanges {
                let stat = ascentDescent(points: Array(points[range]))
                lapAscents.append(stat.ascent)
                lapDescents.append(stat.descent)
            }
            let stamp = Int(Date().timeIntervalSince1970)
            let gpxURL = engine.activitiesDirectory.appendingPathComponent("merged_\(stamp).gpx")
            let fitURL = engine.activitiesDirectory.appendingPathComponent("merged_\(stamp).fit")
            do {
                try GpxBuilder.buildData(points: points, title: "合并轨迹", sport: sport).write(to: gpxURL)
                var options = FitBuildOptions()
                options.manufacturer = firstSegment.manufacturer
                options.product = firstSegment.product
                options.serialNumber = firstSegment.serialNumber
                options.timerSeconds = totalTimerSec
                options.totalCalories = totalCalories
                options.overrideDistanceMeters = totalDistanceM
                options.overrideAscentMeters = totalAscent
                options.overrideDescentMeters = totalDescent
                options.lapStarts = lapStarts
                options.lapAscents = lapAscents
                options.lapDescents = lapDescents
                let fitData = FitBuilder.build(points: points, sport: sport, subSport: subSport, options: options)
                try fitData.write(to: fitURL)
            } catch {
                await MainActor.run {
                    busy = false
                    mergedResult = "保存合并文件失败：\(error.localizedDescription)"
                }
                return
            }
            // 真透明贴纸：不画任何底色，运动类型跟着原活动走。
            let sportNameCN = sport == .running ? "跑步" : sport == .hiking ? "徒步" : "骑行"
            let sticker = StickerCardView(
                distanceKm: totalDistanceM / 1000, durationSec: Int(totalTimerSec),
                date: selectedActivities.first?.startDate ?? Date(),
                activityCount: keptSegments.count, sportName: sportNameCN,
                lapCount: lapRanges.count)
            let renderedSticker = await MainActor.run { sticker.renderedImage() }
            await MainActor.run {
                busy = false
                stickerImage = renderedSticker
                mergedGPXURL = gpxURL
                mergedFITURL = fitURL
                var text = "已合并 \(keptSegments.count) 条\(sportNameCN)活动（\(points.count) 个轨迹点），按天分了 \(lapRanges.count) 圈；总距离 \(String(format: "%.2f", totalDistanceM / 1000)) 公里，总计时 \(formattedDuration(Int(totalTimerSec)))，爬升 \(String(format: "%.0f", totalAscent)) 米，卡路里 \(totalCalories) 千卡（各段码表原值求和）。"
                if !skippedNotes.isEmpty { text += "\n" + skippedNotes.joined(separator: "\n") }
                mergedResult = text
                engine.log("已合并 \(keptSegments.count) 条\(sportNameCN)活动为一条（\(points.count) 个轨迹点，分 \(lapRanges.count) 圈）", level: .success)
            }
        }
    }

    private func formattedDuration(_ seconds: Int) -> String {
        let h = seconds / 3600, m = (seconds % 3600) / 60
        if h > 0 { return "\(h)小时\(m)分" }
        return "\(m)分"
    }

    /// FIT session sport → FitSport；未知时从标题 / 记录中心 sportType 猜，猜不到按骑行兜底。
    private func sportOf(summarySport: Int, title: String, sportType: String) -> FitSport {
        if let sport = FitSport(rawValue: summarySport) { return sport }
        if let detected = FitSport.detect(fromName: title) { return detected.sport }
        if let detected = FitSport.detect(fromName: sportType) { return detected.sport }
        switch sportType.lowercased() {
        case "running": return .running
        case "hiking": return .hiking
        case "walking": return .walking
        case "swimming": return .swimming
        default: return .cycling
        }
    }

    /// 安卓 saveMerge 同款 sub_sport：骑行 7（road）、跑步 2（street）、徒步 3（trail）。
    private func subSportOf(_ sport: FitSport) -> FitSport.SubSport {
        switch sport {
        case .cycling: return .road
        case .running: return .street
        case .hiking: return .trail
        default: return .generic
        }
    }

    /// 爬升/下降：海拔基准只在单点变化 ≥8 米时更新（安卓 TrackMerger 同款去噪口径）。
    private func ascentDescent(points: [TrackPoint]) -> (ascent: Double, descent: Double) {
        var ascent = 0.0, descent = 0.0
        var base: Double?
        for point in points where point.ele > 0 {
            guard let b = base else { base = point.ele; continue }
            let delta = point.ele - b
            if delta >= 8 {
                ascent += delta
                base = point.ele
            } else if delta <= -8 {
                descent += -delta
                base = point.ele
            }
        }
        return (ascent, descent)
    }
}

// MARK: - 真透明贴纸卡片

/// 贴纸不画任何底色（之前是 85% 不透明白底卡片）；ImageRenderer 设为不透明 = false，
/// 导出的 PNG 背景就是透明的，贴到照片上不会盖住一块白底。
private struct StickerCardView: View {
    let distanceKm: Double
    let durationSec: Int
    let date: Date
    let activityCount: Int
    let sportName: String
    let lapCount: Int

    var body: some View {
        VStack(spacing: 4) {
            Text("合并\(sportName)").font(.headline)
            Text(String(format: "%.2f 公里", distanceKm))
                .font(.system(size: 34, weight: .bold))
            Text("\(formattedDuration(durationSec)) · \(activityCount) 条活动合并 · \(lapCount) 圈")
                .font(.caption)
            Text(date, style: .date).font(.caption2)
            Text("鸡翅幸哲迈进Ob").font(.caption2)
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        // 注意：这里故意不加 .background，透明底就靠这个。
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
        renderer.isOpaque = false
        renderer.scale = 3
        return renderer.uiImage
    }
}

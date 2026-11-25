// 待真机验证
// 热力图：把本地轨迹画成热力图，线宽 1–5 可调。
// 对应安卓 heatmap/HeatmapActivity + HeatmapView（安卓热力图线宽固定 2dp，
// 1–5 档细线是遗留未做的需求，iOS 版在这里做掉：滑块 1–5，默认 2，线越小越细）。
//
// 体验码门禁：入口在关于页，点入口时先验码（TrialLicense.checkTrialAndRun），
// 有码才进本页；本页内部不再重复验码。
//
// 画法说明：
// - 轨迹点从本地文件里取：GPX 用 GpxParser.parse，FIT 用 FitParser.parse，
//   都是骨架组 Core 的真实解析器。
// - 热度用叠加画法：同一段路被多条轨迹走过，颜色越深（蓝 → 绿 → 黄 → 红）；
//   安卓是用地图瓦片底图 + 热力 bitmap，iOS 版第一版是无底图的纯轨迹画布，
//   底图（MapKit）待后续接，不编造成品地图。
// - 线宽档位 1–5 映射到画布线宽：档位越小线越细；缩放不改变线宽档位。

import SwiftUI

struct HeatmapView: View {
    @EnvironmentObject private var engine: SyncEngine
    @State private var lineWidth: Double = 2
    @State private var tracks: [[TrackPoint]] = []
    @State private var loadNote = ""

    var body: some View {
        VStack(spacing: 12) {
            heatmapCanvas
            controls
            Text(loadNote).font(.caption).foregroundStyle(.secondary)
        }
        .padding()
        .navigationTitle("热力图")
        .navigationBarTitleDisplayMode(.inline)
        .task { loadTracks() }
    }

    // MARK: 画布
    private var heatmapCanvas: some View {
        GeometryReader { geometry in
            Canvas { context, size in
                guard !tracks.isEmpty else { return }
                let all = tracks.flatMap { $0 }
                guard let minLat = all.map(\.lat).min(),
                      let maxLat = all.map(\.lat).max(),
                      let minLon = all.map(\.lon).min(),
                      let maxLon = all.map(\.lon).max(),
                      maxLat > minLat, maxLon > minLon else { return }
                let padding: CGFloat = 16
                let scaleX = (size.width - padding * 2) / CGFloat(maxLon - minLon)
                let scaleY = (size.height - padding * 2) / CGFloat(maxLat - minLat)
                let scale = min(scaleX, scaleY)
                func point(_ p: TrackPoint) -> CGPoint {
                    CGPoint(
                        x: padding + CGFloat(p.lon - minLon) * scale,
                        // 纬度越大越靠上：y 翻转。
                        y: size.height - padding - CGFloat(p.lat - minLat) * scale)
                }
                // 热度叠加：每条轨迹画一遍，半透明，重复路段自然变深。
                // 颜色按轨迹序号轮换蓝→绿→黄→红，线宽按滑块档位。
                let palette: [Color] = [.blue, .green, .orange, .red, .purple]
                for (index, track) in tracks.enumerated() {
                    guard track.count > 1 else { continue }
                    var path = Path()
                    path.move(to: point(track[0]))
                    for p in track.dropFirst() { path.addLine(to: point(p)) }
                    context.stroke(
                        path,
                        with: .color(palette[index % palette.count].opacity(0.45)),
                        lineWidth: CGFloat(lineWidth))
                }
            }
            .background(Color(.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 16))
        }
        .frame(maxWidth: .infinity, minHeight: 320)
        .overlay {
            if tracks.isEmpty {
                Text("暂无可显示的轨迹\n先同步几条活动")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
            }
        }
    }

    // MARK: 线宽滑块（1–5，默认 2）
    private var controls: some View {
        VStack(spacing: 8) {
            HStack {
                Text("线宽").font(.subheadline)
                Spacer()
                Text("\(Int(lineWidth))（1 最细，5 最粗）")
                    .font(.subheadline.bold())
            }
            Slider(value: $lineWidth, in: 1...5, step: 1)
            HStack(spacing: 16) {
                legendDot(.blue, "少")
                legendDot(.green, "")
                legendDot(.orange, "")
                legendDot(.red, "多")
                Spacer()
                Text("颜色越深，走过的次数越多")
                    .font(.caption).foregroundStyle(.secondary)
            }
            Text("GPX 与 FIT 轨迹都显示。暂无地图底图，轨迹按真实经纬比例画。")
                .font(.caption).foregroundStyle(.secondary)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    private func legendDot(_ color: Color, _ label: String) -> some View {
        HStack(spacing: 4) {
            Circle().fill(color).frame(width: 10, height: 10)
            if !label.isEmpty { Text(label).font(.caption) }
        }
    }

    // MARK: 读本地轨迹（Core 的真实解析器）
    private func loadTracks() {
        var loaded: [[TrackPoint]] = []
        var failed = 0
        for activity in engine.downloadedActivities {
            guard let data = engine.localFileData(for: activity) else { continue }
            do {
                let points: [TrackPoint]
                if FitParser.isFit(data) {
                    points = try GpxParser.fitToTrackPoints(data).points
                } else {
                    points = try GpxParser.parse(data).points
                }
                if points.count > 1 { loaded.append(points) }
            } catch {
                failed += 1
            }
        }
        tracks = loaded
        loadNote = "已加载 \(loaded.count) 条轨迹" + (failed > 0 ? "；\(failed) 条解析失败" : "")
    }
}

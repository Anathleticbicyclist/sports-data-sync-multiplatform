// 待真机验证
// 热力图：把本地轨迹画在 MapKit 地图底图上，颜色按重叠次数算，线宽 1–5 可调。
// 对应安卓 heatmap/HeatmapActivity + HeatmapEngine（地图瓦片底图 + 按次数叠加热力）。
//
// 体验码门禁：入口在关于页，点入口时先验码（TrialLicense.checkTrialAndRun），
// 有码才进本页；本页内部不再重复验码。
//
// 画法说明：
// - 轨迹点从本地文件里取：GPX 用 GpxParser.parse，FIT 用 FitParser.parse，
//   都是骨架组 Core 的真实解析器。
// - 底图是 MapKit（MKMapView，系统地图瓦片），轨迹按真实经纬度画在地图上，
//   地图自己处理经纬比例，不再用灰底画布自己换算。
// - 颜色按重叠次数算：把地图切成约 100 米一格的格子，数每个格子被几条不同轨迹
//   走过；每段路的颜色取它两端格子的最大次数——1 次蓝、2 次绿、3 次黄、4 次橙、
//   5 次及以上红（与下方图例一一对应）。同一段路被走得越多，颜色越深。
// - 线宽档位 1–5 映射到地图上线宽：档位越小线越细；缩放不改变线宽档位。

import MapKit
import SwiftUI

struct HeatmapView: View {
    @EnvironmentObject private var engine: SyncEngine
    @State private var lineWidth: Double = 2
    @State private var tracks: [[TrackPoint]] = []
    @State private var segments: [HeatSegment] = []
    @State private var region: MKCoordinateRegion?
    @State private var loadNote = ""

    var body: some View {
        VStack(spacing: 12) {
            heatmapMap
            controls
            Text(loadNote).font(.caption).foregroundStyle(.secondary)
        }
        .padding()
        .navigationTitle("热力图")
        .navigationBarTitleDisplayMode(.inline)
        .task { loadTracks() }
    }

    // MARK: 地图底图 + 热力轨迹
    private var heatmapMap: some View {
        HeatmapMapView(segments: segments, lineWidth: CGFloat(lineWidth), region: region)
            .clipShape(RoundedRectangle(cornerRadius: 16))
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

    // MARK: 线宽滑块（1–5，默认 2）+ 图例
    private var controls: some View {
        VStack(spacing: 8) {
            HStack {
                Text("线宽").font(.subheadline)
                Spacer()
                Text("\(Int(lineWidth))（1 最细，5 最粗）")
                    .font(.subheadline.bold())
            }
            Slider(value: $lineWidth, in: 1...5, step: 1)
            HStack(spacing: 12) {
                legendDot(.blue, "1次")
                legendDot(.green, "2次")
                legendDot(.yellow, "3次")
                legendDot(.orange, "4次")
                legendDot(.red, "5次及以上")
                Spacer()
            }
            Text("颜色越深，走过的次数越多")
                .font(.caption).foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("地图底图为 MapKit；GPX 与 FIT 轨迹都显示，轨迹按真实经纬比例画在地图上。")
                .font(.caption).foregroundStyle(.secondary)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    private func legendDot(_ color: Color, _ label: String) -> some View {
        HStack(spacing: 4) {
            Circle().fill(color).frame(width: 10, height: 10)
            Text(label).font(.caption)
        }
    }

    // MARK: 读本地轨迹（Core 的真实解析器）+ 按重叠次数分段
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
        segments = HeatSegment.build(from: loaded)
        region = HeatSegment.region(for: loaded)
        loadNote = "已加载 \(loaded.count) 条轨迹" + (failed > 0 ? "；\(failed) 条解析失败" : "")
    }
}

// MARK: - 按重叠次数分段

/// 一段同色轨迹：连续若干个点，同属一个重叠次数档位，画成一条 MKPolyline。
struct HeatSegment: Equatable {
    var coordinates: [CLLocationCoordinate2D]
    var overlapCount: Int

    /// 重叠次数 → 颜色（与图例一一对应：1 蓝、2 绿、3 黄、4 橙、5+ 红）。
    var color: UIColor {
        switch overlapCount {
        case 1: return .systemBlue
        case 2: return .systemGreen
        case 3: return .systemYellow
        case 4: return .systemOrange
        default: return .systemRed
        }
    }

    static func == (lhs: HeatSegment, rhs: HeatSegment) -> Bool {
        lhs.overlapCount == rhs.overlapCount
            && lhs.coordinates.count == rhs.coordinates.count
            && zip(lhs.coordinates, rhs.coordinates).allSatisfy { $0.latitude == $1.latitude && $0.longitude == $1.longitude }
    }

    /// 格子边长（度）：约 0.001° ≈ 100 米。同一格子被几条不同轨迹走过，就是重叠次数。
    private static let cellSize = 0.001

    private static func cellKey(lat: Double, lon: Double) -> String {
        "\(Int(floor(lat / cellSize))):\(Int(floor(lon / cellSize)))"
    }

    /// 把每条轨迹按重叠次数切成同色小段：连续同档位的点并成一条线，减少地图覆盖物数量。
    static func build(from tracks: [[TrackPoint]]) -> [HeatSegment] {
        // 每条轨迹走过哪些格子（一条轨迹在同一个格子里只算一次）。
        var cellTrackCount: [String: Int] = [:]
        var trackCells: [Set<String>] = []
        for track in tracks {
            var cells = Set<String>()
            for point in track { cells.insert(cellKey(lat: point.lat, lon: point.lon)) }
            trackCells.append(cells)
            for cell in cells { cellTrackCount[cell, default: 0] += 1 }
        }
        var segments: [HeatSegment] = []
        for (trackIndex, track) in tracks.enumerated() {
            let cells = trackCells[trackIndex]
            _ = cells
            var runCoords: [CLLocationCoordinate2D] = []
            var runCount = 0
            func flush() {
                if runCoords.count > 1 {
                    segments.append(HeatSegment(coordinates: runCoords, overlapCount: runCount))
                }
                runCoords = []
            }
            for i in 0..<(track.count - 1) {
                let a = track[i], b = track[i + 1]
                // 该段路的重叠次数：取两端格子被走过的次数里较大的那个。
                let count = max(cellTrackCount[cellKey(lat: a.lat, lon: a.lon)] ?? 1,
                                cellTrackCount[cellKey(lat: b.lat, lon: b.lon)] ?? 1)
                let coordA = CLLocationCoordinate2D(latitude: a.lat, longitude: a.lon)
                let coordB = CLLocationCoordinate2D(latitude: b.lat, longitude: b.lon)
                if runCoords.isEmpty {
                    runCoords = [coordA, coordB]
                    runCount = count
                } else if count == runCount {
                    runCoords.append(coordB)
                } else {
                    flush()
                    runCoords = [coordA, coordB]
                    runCount = count
                }
            }
            flush()
        }
        return segments
    }

    /// 能框住全部轨迹点的地图区域（留 30% 边距）。
    static func region(for tracks: [[TrackPoint]]) -> MKCoordinateRegion? {
        let all = tracks.flatMap { $0 }
        guard let minLat = all.map(\.lat).min(), let maxLat = all.map(\.lat).max(),
              let minLon = all.map(\.lon).min(), let maxLon = all.map(\.lon).max(),
              maxLat > minLat, maxLon > minLon else { return nil }
        let center = CLLocationCoordinate2D(latitude: (minLat + maxLat) / 2, longitude: (minLon + maxLon) / 2)
        let span = MKCoordinateSpan(latitudeDelta: max((maxLat - minLat) * 1.3, 0.01),
                                    longitudeDelta: max((maxLon - minLon) * 1.3, 0.01))
        return MKCoordinateRegion(center: center, span: span)
    }
}

// MARK: - MapKit 底图（UIViewRepresentable）

private struct HeatmapMapView: UIViewRepresentable {
    var segments: [HeatSegment]
    var lineWidth: CGFloat
    var region: MKCoordinateRegion?

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        mapView.mapType = .standard
        return mapView
    }

    func updateUIView(_ mapView: MKMapView, context: Context) {
        context.coordinator.lineWidth = lineWidth
        // 轨迹变了才重建覆盖物 + 重置区域；只改线宽时不动区域，不打断用户正在看的地图。
        if context.coordinator.lastSegments != segments {
            context.coordinator.lastSegments = segments
            mapView.removeOverlays(mapView.overlays)
            context.coordinator.colors = [:]
            for segment in segments {
                let polyline = MKPolyline(coordinates: segment.coordinates, count: segment.coordinates.count)
                context.coordinator.colors[polyline] = segment.color
                mapView.addOverlay(polyline)
            }
            if let region {
                mapView.setRegion(region, animated: false)
            }
        }
        // 线宽变化时刷新已有渲染器的线宽。
        for overlay in mapView.overlays {
            if let renderer = mapView.renderer(for: overlay) as? MKPolylineRenderer {
                renderer.lineWidth = lineWidth
            }
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    final class Coordinator: NSObject, MKMapViewDelegate {
        var colors: [MKPolyline: UIColor] = [:]
        var lineWidth: CGFloat = 2
        var lastSegments: [HeatSegment] = []

        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
            guard let polyline = overlay as? MKPolyline else {
                return MKOverlayRenderer(overlay: overlay)
            }
            let renderer = MKPolylineRenderer(polyline: polyline)
            renderer.strokeColor = colors[polyline] ?? .systemBlue
            renderer.lineWidth = lineWidth
            renderer.lineJoin = .round
            renderer.lineCap = .round
            return renderer
        }
    }
}

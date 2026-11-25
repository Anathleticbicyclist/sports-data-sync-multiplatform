// 待真机验证
// 临时码表：开始记录 / 停止、实时速度 / 距离 / 时间、心率占位、导出。
// 对应安卓 bikecomputer/BikeActivity + BikeService（GPS 记录 + 导出）。
//
// 体验码门禁：入口在关于页，点入口时先验码（TrialLicense.checkTrialAndRun），
// 有码才进本页；本页内部不再重复验码。
//
// 安卓遗留故障处理（重点）：安卓上点“开始记录”会退回桌面（闪退）。
// iOS 版做法：
// - 开始记录包在 do/catch + Task 错误处理里，定位权限被拒、定位服务不可用、
//   导出写文件失败都只弹提示，不闪退；
// - CLLocationManager 的回调全部判空、判权限，不强行解包；
// - 导出 GPX 写文件失败时弹“导出失败”提示，不崩溃。
// 心率是占位：需连接蓝牙心率带，待接入；当前显示“—”，不编造心率数字。

import CoreLocation
import SwiftUI

struct BikeComputerView: View {
    @StateObject private var recorder = BikeRecorder()
    @State private var alertMessage: String?
    @State private var exportURL: URL?

    var body: some View {
        VStack(spacing: 20) {
            statusCard
            metricsGrid
            heartRateRow
            controls
            if let alertMessage {
                Text(alertMessage)
                    .font(.caption)
                    .foregroundStyle(.red)
                    .multilineTextAlignment(.center)
            }
            if let exportURL {
                ShareLink(item: exportURL, preview: SharePreview("码表记录", image: Image(systemName: "map"))) {
                    Label("分享 / 保存本次记录（GPX）", systemImage: "square.and.arrow.up")
                }
                .font(.subheadline)
            }
            Spacer()
            Text("定位权限：仅在使用期间。骑行中请保持 App 在前台；锁屏后继续记录需在设置里打开“始终”定位（待真机验证耗电与后台行为）。")
                .font(.caption2)
                .foregroundStyle(.tertiary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .navigationTitle("临时码表")
        .navigationBarTitleDisplayMode(.inline)
        .alert("提示", isPresented: Binding(
            get: { recorder.errorMessage != nil },
            set: { if !$0 { recorder.errorMessage = nil } }
        )) {
            Button("知道了", role: .cancel) {}
        } message: {
            Text(recorder.errorMessage ?? "")
        }
    }

    // MARK: 状态
    private var statusCard: some View {
        HStack {
            Circle()
                .fill(recorder.isRecording ? Color.green : Color.gray)
                .frame(width: 10, height: 10)
            Text(recorder.isRecording ? "正在记录…" : "未开始记录")
                .font(.headline)
            Spacer()
            Text("轨迹点 \(recorder.points.count) 个")
                .font(.caption).foregroundStyle(.secondary)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    // MARK: 实时数据
    private var metricsGrid: some View {
        VStack(spacing: 16) {
            VStack(spacing: 2) {
                Text(String(format: "%.1f", recorder.currentSpeedKmh))
                    .font(.system(size: 56, weight: .bold))
                Text("公里/小时（实时速度）").font(.caption).foregroundStyle(.secondary)
            }
            HStack(spacing: 0) {
                metricCell(value: String(format: "%.2f", recorder.distanceKm), label: "距离（公里）")
                Divider().frame(height: 40)
                metricCell(value: formattedTime(recorder.elapsedSeconds), label: "时间")
                Divider().frame(height: 40)
                metricCell(value: String(format: "%.1f", recorder.avgSpeedKmh), label: "均速（公里/小时）")
            }
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    private func metricCell(value: String, label: String) -> some View {
        VStack(spacing: 2) {
            Text(value).font(.title3.bold())
            Text(label).font(.caption2).foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
    }

    // MARK: 心率占位
    private var heartRateRow: some View {
        HStack {
            Label("心率", systemImage: "heart.fill")
                .foregroundStyle(.red)
            Spacer()
            Text("— 次/分")
                .font(.headline)
            Text("需连接蓝牙心率带，待接入")
                .font(.caption).foregroundStyle(.secondary)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    // MARK: 开始 / 停止 / 导出
    private var controls: some View {
        VStack(spacing: 10) {
            if recorder.isRecording {
                Button("停止记录") { stopRecording() }
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(Color.red)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            } else {
                Button("开始记录") { startRecording() }
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(Color.brandBlue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            Button("导出本次记录（GPX）") { exportRecording() }
                .font(.subheadline)
                .disabled(recorder.points.isEmpty)
        }
    }

    private func formattedTime(_ seconds: Int) -> String {
        let h = seconds / 3600, m = (seconds % 3600) / 60, s = seconds % 60
        return String(format: "%02d:%02d:%02d", h, m, s)
    }

    // 开始记录：全部异常只弹提示，不闪退（安卓“点开始退回桌面”故障的对应处理）。
    private func startRecording() {
        do {
            try recorder.start()
            alertMessage = nil
            exportURL = nil
        } catch {
            alertMessage = "开始记录失败：\(error.localizedDescription)，请检查定位权限后重试"
        }
    }

    private func stopRecording() {
        recorder.stop()
    }

    private func exportRecording() {
        do {
            exportURL = try recorder.exportGPX()
            alertMessage = nil
        } catch {
            alertMessage = "导出失败：\(error.localizedDescription)，记录还在，可再试一次"
        }
    }
}

// MARK: - 记录器（CoreLocation）

/// 临时码表记录器：GPS 速度/距离/时间。所有定位回调判空判权限，不强行解包。
final class BikeRecorder: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published private(set) var isRecording = false
    @Published private(set) var currentSpeedKmh: Double = 0
    @Published private(set) var distanceKm: Double = 0
    @Published private(set) var elapsedSeconds: Int = 0
    @Published private(set) var points: [CLLocation] = []
    @Published var errorMessage: String?

    var avgSpeedKmh: Double {
        guard elapsedSeconds > 0 else { return 0 }
        return distanceKm / (Double(elapsedSeconds) / 3600)
    }

    private let locationManager = CLLocationManager()
    private var startDate: Date?
    private var timer: Timer?
    private var lastLocation: CLLocation?

    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 5
        locationManager.activityType = .fitness
    }

    enum RecorderError: LocalizedError {
        case locationUnavailable
        case permissionDenied
        case noPoints

        var errorDescription: String? {
            switch self {
            case .locationUnavailable: return "定位服务不可用"
            case .permissionDenied: return "没有定位权限，请在设置里允许本 App 使用定位"
            case .noPoints: return "还没有轨迹点"
            }
        }
    }

    func start() throws {
        guard CLLocationManager.locationServicesEnabled() else {
            throw RecorderError.locationUnavailable
        }
        let status = locationManager.authorizationStatus
        if status == .denied || status == .restricted {
            throw RecorderError.permissionDenied
        }
        if status == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
        }
        points = []
        distanceKm = 0
        elapsedSeconds = 0
        currentSpeedKmh = 0
        lastLocation = nil
        startDate = Date()
        isRecording = true
        locationManager.startUpdatingLocation()
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            guard let self, self.isRecording, let start = self.startDate else { return }
            self.elapsedSeconds = Int(Date().timeIntervalSince(start))
        }
    }

    func stop() {
        isRecording = false
        locationManager.stopUpdatingLocation()
        timer?.invalidate()
        timer = nil
        currentSpeedKmh = 0
    }

    // MARK: CLLocationManagerDelegate
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard isRecording else { return }
        for location in locations {
            guard location.horizontalAccuracy >= 0, location.horizontalAccuracy < 100 else { continue }
            if let last = lastLocation {
                distanceKm += location.distance(from: last) / 1000
            }
            lastLocation = location
            points.append(location)
            let speed = max(0, location.speed)
            if speed > 0 { currentSpeedKmh = speed * 3.6 }
        }
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        // 定位失败只提示，不闪退；记录继续（已有轨迹点保留）。
        errorMessage = "定位出错：\(error.localizedDescription)，已保留已有记录"
    }

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        if isRecording {
            let status = manager.authorizationStatus
            if status == .denied || status == .restricted {
                stop()
                errorMessage = "定位权限被拒绝，已停止记录（已有轨迹点保留）"
            }
        }
    }

    // MARK: 导出 GPX（写文件失败抛错，由界面弹提示，不崩溃）
    func exportGPX() throws -> URL {
        guard !points.isEmpty else { throw RecorderError.noPoints }
        var xml = """
        <?xml version="1.0" encoding="UTF-8"?>
        <gpx version="1.1" creator="鸡翅幸哲迈进Ob" xmlns="http://www.topografix.com/GPX/1/1">
          <trk><name>临时码表记录</name><trkseg>
        """
        let formatter = ISO8601DateFormatter()
        for point in points {
            xml += "\n    <trkpt lat=\"\(point.coordinate.latitude)\" lon=\"\(point.coordinate.longitude)\"><time>\(formatter.string(from: point.timestamp))</time></trkpt>"
        }
        xml += "\n  </trkseg></trk>\n</gpx>\n"
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            .appendingPathComponent("Activities", isDirectory: true)
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        let url = dir.appendingPathComponent("bikecomputer_\(Int(Date().timeIntervalSince1970)).gpx")
        try xml.write(to: url, atomically: true, encoding: .utf8)
        return url
    }
}

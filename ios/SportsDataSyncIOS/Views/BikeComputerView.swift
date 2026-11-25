// 待真机验证
// 临时码表：开始记录 / 停止、实时速度 / 距离 / 时间 / 海拔、蓝牙心率带 / 功率计、导出。
// 对应安卓 bikecomputer/BikeActivity + BikeService（GPS 记录 + 导出）+
// sensor/BleSensors.kt（蓝牙心率 / 功率 / 踏频 / 速度传感器）。
//
// 体验码门禁：入口在关于页，点入口时先验码（TrialLicense.checkTrialAndRun），
// 有码才进本页；本页内部不再重复验码。
//
// 安卓遗留故障处理（重点）：安卓上点“开始记录”会退回桌面（闪退）。
// iOS 版做法：
// - 开始记录包在 do/catch + Task 错误处理里，定位权限被拒、定位服务不可用、
//   导出写文件失败都只弹提示，不闪退；
// - CLLocationManager 的回调全部判空、判权限，不强行解包；
// - 导出 GPX/FIT 写文件失败时弹“导出失败”提示，不崩溃。
//
// 本页修好的四点（自检第 26 条）：
// - 要“始终”定位（requestAlwaysAuthorization）+ 后台定位（allowsBackgroundLocationUpdates，
//   Info.plist 的 UIBackgroundModes 由 D 组加），锁屏 / 切后台继续记录；
// - 导出加 FIT：复用已有的 GPX→FIT 转换器 GpxParser.gpxToFit；
// - 海拔：GPS 海拔实时显示，爬升按 8 米基准法累计（安卓 TrackMerger 同款去噪）；
// - 录完导出后调 SyncEngine.importLocalActivity 写进记录中心，不分享也能在记录中心找到。
//
// 蓝牙（安卓 BleSensors.kt 同款口径，只做任务点名的心率 + 功率）：
// - 标准心率服务 0x180D / 特征 0x2A37：flags bit0 为 0 取 1 字节心率，否则 2 字节小端；
// - 骑行功率服务 0x1818 / 特征 0x2A63：字节 2–3 小端瓦数，0–4000 瓦才认；
// - 设备选择入口在码表页（“蓝牙传感器”行 → 选择设备），连上后实时显示心率和功率；
//   导出 FIT 时有就写进去（GPX 扩展里带 hr/power，转换器会带进 FIT），没有也不报错。
// - 安卓 BleSensors 里还有踏频（CSC 0x1816）/ 步频（RSC 0x1814），本次任务只点名心率和
//   功率，未移植；如需踏频再按同一套路加特征 0x2A5B / 0x2A53。

import CoreBluetooth
import CoreLocation
import SwiftUI

struct BikeComputerView: View {
    @EnvironmentObject private var engine: SyncEngine
    @StateObject private var recorder = BikeRecorder()
    @StateObject private var bleManager = BleSensorManager()
    @State private var alertMessage: String?
    @State private var exportGPXURL: URL?
    @State private var exportFITURL: URL?
    @State private var importedNote: String?
    @State private var didImportToRecordCenter = false
    @State private var showBlePicker = false

    var body: some View {
        VStack(spacing: 20) {
            statusCard
            metricsGrid
            bleRow
            heartRateRow
            powerRow
            controls
            if let alertMessage {
                Text(alertMessage)
                    .font(.caption)
                    .foregroundStyle(.red)
                    .multilineTextAlignment(.center)
            }
            if let importedNote {
                Text(importedNote)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
            }
            if let exportGPXURL {
                ShareLink(item: exportGPXURL, preview: SharePreview("码表记录", image: Image(systemName: "map"))) {
                    Label("分享 / 保存本次记录（GPX）", systemImage: "square.and.arrow.up")
                }
                .font(.subheadline)
            }
            if let exportFITURL {
                ShareLink(item: exportFITURL, preview: SharePreview("码表记录", image: Image(systemName: "map"))) {
                    Label("分享 / 保存本次记录（FIT）", systemImage: "square.and.arrow.up")
                }
                .font(.subheadline)
            }
            Spacer()
            Text("定位权限：始终。锁屏或切后台继续记录（需在系统设置里允许“始终”定位）；蓝牙心率带 / 功率计在“蓝牙传感器”里选。")
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
        .sheet(isPresented: $showBlePicker) {
            BleDevicePickerView(manager: bleManager)
        }
        .onChange(of: bleManager.heartRate) { recorder.latestHeartRate = $0 }
        .onChange(of: bleManager.power) { recorder.latestPower = $0 }
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
                Divider().frame(height: 40)
                metricCell(value: recorder.currentAltitudeMeters.map { String(format: "%.0f", $0) } ?? "—", label: "海拔（米）")
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

    // MARK: 蓝牙传感器入口
    private var bleRow: some View {
        HStack {
            Label("蓝牙传感器", systemImage: "antenna.radiowaves.left.and.right")
            Spacer()
            Text(bleManager.statusText)
                .font(.caption).foregroundStyle(.secondary)
            Button("选择设备") { showBlePicker = true }
                .font(.subheadline)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    // MARK: 心率（蓝牙心率带实时值；没连显示 —）
    private var heartRateRow: some View {
        HStack {
            Label("心率", systemImage: "heart.fill")
                .foregroundStyle(.red)
            Spacer()
            Text(bleManager.heartRate > 0 ? "\(bleManager.heartRate) 次/分" : "— 次/分")
                .font(.headline)
            Text(bleManager.heartRateDeviceName ?? "需连接蓝牙心率带")
                .font(.caption).foregroundStyle(.secondary)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    // MARK: 功率（蓝牙功率计实时值；没连显示 —）
    private var powerRow: some View {
        HStack {
            Label("功率", systemImage: "bolt.fill")
                .foregroundStyle(.orange)
            Spacer()
            Text(bleManager.power > 0 ? "\(bleManager.power) 瓦" : "— 瓦")
                .font(.headline)
            Text(bleManager.powerDeviceName ?? "需连接蓝牙功率计")
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
            Button("导出本次记录（GPX）") { exportRecording(asFit: false) }
                .font(.subheadline)
                .disabled(recorder.points.isEmpty)
            Button("导出本次记录（FIT）") { exportRecording(asFit: true) }
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
            exportGPXURL = nil
            exportFITURL = nil
            importedNote = nil
            didImportToRecordCenter = false
        } catch {
            alertMessage = "开始记录失败：\(error.localizedDescription)，请检查定位权限后重试"
        }
    }

    private func stopRecording() {
        recorder.stop()
    }

    /// 导出并写进记录中心：第一次导出（GPX 或 FIT 任一）就调 importLocalActivity，
    /// 之后再导另一格式不再重复写记录中心；不分享也能在记录中心找到。
    private func exportRecording(asFit: Bool) {
        do {
            let url = try asFit ? recorder.exportFIT() : recorder.exportGPX()
            if asFit {
                exportFITURL = url
            } else {
                exportGPXURL = url
            }
            alertMessage = nil
            if !didImportToRecordCenter {
                engine.importLocalActivity(
                    fileURL: url,
                    title: "临时码表记录",
                    sportType: "cycling",
                    startDate: recorder.recordedStartDate ?? Date(),
                    distanceMeters: recorder.distanceKm * 1000,
                    durationSeconds: Double(recorder.elapsedSeconds),
                    elevationGainMeters: recorder.elevationGainMeters)
                didImportToRecordCenter = true
                importedNote = "已写入记录中心，不分享也能在记录中心找到。"
                engine.log("临时码表记录已写入记录中心（\(url.lastPathComponent)）", level: .success)
            }
        } catch {
            alertMessage = "导出失败：\(error.localizedDescription)，记录还在，可再试一次"
        }
    }
}

// MARK: - 蓝牙设备选择（心率带 / 功率计）

private struct BleDevicePickerView: View {
    @ObservedObject var manager: BleSensorManager
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            List {
                Section {
                    Text(manager.bluetoothHint)
                        .font(.caption).foregroundStyle(.secondary)
                }
                Section("附近的设备") {
                    if manager.devices.isEmpty {
                        Text(manager.isScanning ? "正在扫描…" : "未发现设备，请确认心率带 / 功率计已开机并处于可发现状态，然后点“重新扫描”。")
                            .font(.caption).foregroundStyle(.secondary)
                    } else {
                        ForEach(manager.devices) { device in
                            HStack {
                                VStack(alignment: .leading, spacing: 2) {
                                    Text(device.name).font(.headline).lineLimit(1)
                                    Text("\(device.typeLabel) · 信号 \(device.rssi) dBm")
                                        .font(.caption).foregroundStyle(.secondary)
                                }
                                Spacer()
                                if device.isConnected {
                                    Text("已连接").font(.subheadline).foregroundStyle(.green)
                                } else if device.isConnecting {
                                    Text("连接中…").font(.subheadline).foregroundStyle(.secondary)
                                } else {
                                    Button("连接") { manager.connect(device) }
                                        .font(.subheadline)
                                }
                            }
                            .contentShape(Rectangle())
                            .onTapGesture {
                                if !device.isConnected, !device.isConnecting { manager.connect(device) }
                            }
                        }
                    }
                }
                Section {
                    Button(manager.isScanning ? "停止扫描" : "重新扫描") {
                        manager.isScanning ? manager.stopScan() : manager.startScan()
                    }
                    if manager.anyConnected {
                        Button("断开全部设备", role: .destructive) { manager.disconnectAll() }
                    }
                }
            }
            .navigationTitle("选择蓝牙设备")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("完成") { dismiss() }
                }
            }
            .onAppear { manager.startScan() }
            .onDisappear { manager.stopScan() }
        }
    }
}

// MARK: - 记录器（CoreLocation）

/// 临时码表记录器：GPS 速度/距离/时间/海拔。所有定位回调判空判权限，不强行解包。
/// 后台记录：requestAlwaysAuthorization + allowsBackgroundLocationUpdates，
/// 锁屏 / 切后台后系统继续回调定位（Info.plist 的 UIBackgroundModes 由 D 组加）。
final class BikeRecorder: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published private(set) var isRecording = false
    @Published private(set) var currentSpeedKmh: Double = 0
    @Published private(set) var distanceKm: Double = 0
    @Published private(set) var elapsedSeconds: Int = 0
    @Published private(set) var points: [CLLocation] = []
    @Published private(set) var currentAltitudeMeters: Double?
    @Published private(set) var elevationGainMeters: Double = 0
    @Published var errorMessage: String?

    /// 蓝牙实时值（由界面从 BleSensorManager 同步过来），记到每个轨迹点上，导出 FIT 时带上。
    var latestHeartRate: Int = 0
    var latestPower: Int = 0
    /// 与 points 一一对应的每点心率 / 功率（0 表示当时没连设备）。
    private(set) var pointHeartRates: [Int] = []
    private(set) var pointPowers: [Int] = []

    var avgSpeedKmh: Double {
        guard elapsedSeconds > 0 else { return 0 }
        return distanceKm / (Double(elapsedSeconds) / 3600)
    }

    /// 本次记录的开始时间（写记录中心用）。
    var recordedStartDate: Date? { startDate }

    private let locationManager = CLLocationManager()
    private var startDate: Date?
    private var timer: Timer?
    private var lastLocation: CLLocation?
    /// 爬升去噪基准：海拔只在单点变化 ≥8 米时更新（安卓 TrackMerger 同款口径）。
    private var altitudeBase: Double?

    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 5
        locationManager.activityType = .fitness
        // 后台定位：锁屏 / 切后台继续回调。需 Info.plist 配 UIBackgroundModes=location（D 组加）。
        locationManager.allowsBackgroundLocationUpdates = true
        locationManager.pausesLocationUpdatesAutomatically = false
        locationManager.showsBackgroundLocationIndicator = true
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
        if status == .notDetermined || status == .authorizedWhenInUse {
            // “始终”定位：锁屏 / 切后台继续记录就靠它；已是“使用期间”时也会再弹一次升级提示。
            locationManager.requestAlwaysAuthorization()
        }
        points = []
        pointHeartRates = []
        pointPowers = []
        distanceKm = 0
        elapsedSeconds = 0
        currentSpeedKmh = 0
        currentAltitudeMeters = nil
        elevationGainMeters = 0
        altitudeBase = nil
        lastLocation = nil
        startDate = Date()
        isRecording = true
        locationManager.startUpdatingLocation()
        timer?.invalidate()
        // 计时从开始时间推导，锁屏回来也能对上（Timer 在后台不一定准时触发，但值本身不依赖它累加）。
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
        if let start = startDate {
            elapsedSeconds = Int(Date().timeIntervalSince(start))
        }
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
            pointHeartRates.append(latestHeartRate)
            pointPowers.append(latestPower)
            let speed = max(0, location.speed)
            if speed > 0 { currentSpeedKmh = speed * 3.6 }
            // GPS 海拔实时显示 + 爬升累计（verticalAccuracy < 0 表示海拔不可用，不记）。
            if location.verticalAccuracy >= 0 {
                currentAltitudeMeters = location.altitude
                if let base = altitudeBase {
                    let delta = location.altitude - base
                    if delta >= 8 {
                        elevationGainMeters += delta
                        altitudeBase = location.altitude
                    } else if delta <= -8 {
                        altitudeBase = location.altitude
                    }
                } else {
                    altitudeBase = location.altitude
                }
            }
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

    // MARK: 导出（写文件失败抛错，由界面弹提示，不崩溃）

    private func activitiesDirectory() throws -> URL {
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            .appendingPathComponent("Activities", isDirectory: true)
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        return dir
    }

    /// 本次记录的 GPX 数据（含海拔 <ele>，有心率/功率时写 gpxtpx 扩展，供转 FIT 用）。
    func buildGPXData() throws -> Data {
        guard !points.isEmpty else { throw RecorderError.noPoints }
        var xml = """
        <?xml version="1.0" encoding="UTF-8"?>
        <gpx version="1.1" creator="鸡翅幸哲迈进Ob" xmlns="http://www.topografix.com/GPX/1/1" xmlns:gpxtpx="http://www.garmin.com/xmlschemas/TrackPointExtension/v1">
          <trk><name>临时码表记录</name><trkseg>
        """
        let formatter = ISO8601DateFormatter()
        for (index, point) in points.enumerated() {
            xml += "\n    <trkpt lat=\"\(point.coordinate.latitude)\" lon=\"\(point.coordinate.longitude)\">"
            if point.verticalAccuracy >= 0 {
                xml += "<ele>\(String(format: "%.1f", point.altitude))</ele>"
            }
            xml += "<time>\(formatter.string(from: point.timestamp))</time>"
            let hr = index < pointHeartRates.count ? pointHeartRates[index] : 0
            let power = index < pointPowers.count ? pointPowers[index] : 0
            if hr > 0 || power > 0 {
                xml += "<extensions><gpxtpx:TrackPointExtension>"
                if hr > 0 { xml += "<gpxtpx:hr>\(hr)</gpxtpx:hr>" }
                if power > 0 { xml += "<gpxtpx:power>\(power)</gpxtpx:power>" }
                xml += "</gpxtpx:TrackPointExtension></extensions>"
            }
            xml += "</trkpt>"
        }
        xml += "\n  </trkseg></trk>\n</gpx>\n"
        guard let data = xml.data(using: .utf8) else { throw RecorderError.noPoints }
        return data
    }

    func exportGPX() throws -> URL {
        let data = try buildGPXData()
        let url = try activitiesDirectory()
            .appendingPathComponent("bikecomputer_\(Int(Date().timeIntervalSince1970)).gpx")
        try data.write(to: url)
        return url
    }

    /// 导出 FIT：复用已有的 GPX→FIT 转换器 GpxParser.gpxToFit（有心率/功率就写进去，没有也不报错）。
    func exportFIT() throws -> URL {
        let gpxData = try buildGPXData()
        let fitData = try GpxParser.gpxToFit(gpxData, sport: .cycling)
        let url = try activitiesDirectory()
            .appendingPathComponent("bikecomputer_\(Int(Date().timeIntervalSince1970)).fit")
        try fitData.write(to: url)
        return url
    }
}

// MARK: - 蓝牙心率带 / 功率计（CoreBluetooth，安卓 BleSensors.kt 同款口径）

/// 扫描标准心率服务 0x180D（特征 0x2A37）和骑行功率服务 0x1818（特征 0x2A63）。
/// 解析口径照安卓 BleSensors：心率 flags bit0 为 0 取 1 字节，否则 2 字节小端，0<bpm<255 才认；
/// 功率取字节 2–3 小端瓦数，0–4000 瓦才认。通知用 setNotifyValue 打开（iOS 自己写 CCCD）。
final class BleSensorManager: NSObject, ObservableObject, CBCentralManagerDelegate, CBPeripheralDelegate {
    struct BleDevice: Identifiable {
        let id: UUID
        var name: String
        var typeLabel: String
        var rssi: Int
        var isConnected = false
        var isConnecting = false
    }

    @Published private(set) var devices: [BleDevice] = []
    @Published private(set) var heartRate: Int = 0
    @Published private(set) var power: Int = 0
    @Published private(set) var isScanning = false
    @Published private(set) var statusText = "未连接"
    /// 正在提供心率 / 功率的那台设备名（界面上显示用）。
    @Published private(set) var heartRateDeviceName: String?
    @Published private(set) var powerDeviceName: String?

    var anyConnected: Bool { devices.contains { $0.isConnected } }

    var bluetoothHint: String {
        switch central.state {
        case .poweredOn: return "只列出广播心率（0x180D）或骑行功率（0x1818）服务的设备。点“连接”后在码表页实时显示心率和功率。"
        case .poweredOff: return "蓝牙未开启，请在系统设置里打开蓝牙再扫描。"
        case .unauthorized: return "没有蓝牙权限，请在系统设置里允许本 App 使用蓝牙。"
        case .unsupported: return "这台设备不支持蓝牙低功耗。"
        default: return "蓝牙正在启动，请稍后再试。"
        }
    }

    private static let heartRateService = CBUUID(string: "180D")
    private static let heartRateMeasurement = CBUUID(string: "2A37")
    private static let cyclingPowerService = CBUUID(string: "1818")
    private static let cyclingPowerMeasurement = CBUUID(string: "2A63")

    private var central: CBCentralManager!
    private var peripherals: [UUID: CBPeripheral] = [:]
    private var connectingIDs: Set<UUID> = []
    private var heartRatePeripheralID: UUID?
    private var powerPeripheralID: UUID?
    private var scanRequested = false

    override init() {
        super.init()
        central = CBCentralManager(delegate: self, queue: nil)
    }

    // MARK: 扫描
    func startScan() {
        guard central.state == .poweredOn else {
            scanRequested = true
            updateStatus()
            return
        }
        scanRequested = false
        guard !isScanning else { return }
        isScanning = true
        central.scanForPeripherals(withServices: [Self.heartRateService, Self.cyclingPowerService], options: nil)
        updateStatus()
    }

    func stopScan() {
        scanRequested = false
        guard isScanning else { return }
        isScanning = false
        central.stopScan()
        updateStatus()
    }

    // MARK: 连接
    func connect(_ device: BleDevice) {
        guard let peripheral = peripherals[device.id], !connectingIDs.contains(device.id) else { return }
        stopScan()
        connectingIDs.insert(device.id)
        updateDevice(device.id) { $0.isConnecting = true }
        central.connect(peripheral, options: nil)
    }

    func disconnectAll() {
        for peripheral in peripherals.values {
            central.cancelPeripheralConnection(peripheral)
        }
    }

    // MARK: CBCentralManagerDelegate
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        if central.state == .poweredOn, scanRequested {
            startScan()
        }
        updateStatus()
    }

    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral,
                        advertisementData: [String: Any], rssi RSSI: NSNumber) {
        let name = peripheral.name
            ?? (advertisementData[CBAdvertisementDataLocalNameKey] as? String)
            ?? "未知设备"
        let advertisedServices = advertisementData[CBAdvertisementDataServiceUUIDsKey] as? [CBUUID] ?? []
        let typeLabel = typeLabelFor(advertisedServices: advertisedServices, name: name)
        peripherals[peripheral.identifier] = peripheral
        if let index = devices.firstIndex(where: { $0.id == peripheral.identifier }) {
            devices[index].name = name
            devices[index].typeLabel = typeLabel
            devices[index].rssi = RSSI.intValue
        } else {
            devices.append(BleDevice(id: peripheral.identifier, name: name,
                                     typeLabel: typeLabel, rssi: RSSI.intValue))
        }
        devices.sort { $0.rssi > $1.rssi }
    }

    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        connectingIDs.remove(peripheral.identifier)
        updateDevice(peripheral.identifier) { $0.isConnecting = false; $0.isConnected = true }
        peripheral.delegate = self
        peripheral.discoverServices([Self.heartRateService, Self.cyclingPowerService])
        updateStatus()
    }

    func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?) {
        connectingIDs.remove(peripheral.identifier)
        updateDevice(peripheral.identifier) { $0.isConnecting = false }
        statusText = "连接失败：\(error?.localizedDescription ?? "未知错误")"
    }

    func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?) {
        connectingIDs.remove(peripheral.identifier)
        updateDevice(peripheral.identifier) { $0.isConnected = false }
        if heartRatePeripheralID == peripheral.identifier {
            heartRatePeripheralID = nil
            heartRateDeviceName = nil
            heartRate = 0
        }
        if powerPeripheralID == peripheral.identifier {
            powerPeripheralID = nil
            powerDeviceName = nil
            power = 0
        }
        updateStatus()
    }

    // MARK: CBPeripheralDelegate
    func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?) {
        guard error == nil, let services = peripheral.services else { return }
        for service in services {
            if service.uuid == Self.heartRateService {
                peripheral.discoverCharacteristics([Self.heartRateMeasurement], for: service)
            } else if service.uuid == Self.cyclingPowerService {
                peripheral.discoverCharacteristics([Self.cyclingPowerMeasurement], for: service)
            }
        }
    }

    func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
        guard error == nil, let characteristics = service.characteristics else { return }
        for characteristic in characteristics where characteristic.uuid == Self.heartRateMeasurement
            || characteristic.uuid == Self.cyclingPowerMeasurement {
            peripheral.setNotifyValue(true, for: characteristic)
        }
    }

    func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?) {
        guard error == nil, let data = characteristic.value else { return }
        if characteristic.uuid == Self.heartRateMeasurement {
            if let bpm = Self.parseHeartRate(data) {
                heartRate = bpm
                heartRatePeripheralID = peripheral.identifier
                heartRateDeviceName = peripherals[peripheral.identifier]?.name
                updateStatus()
            }
        } else if characteristic.uuid == Self.cyclingPowerMeasurement {
            if let watts = Self.parsePower(data) {
                power = watts
                powerPeripheralID = peripheral.identifier
                powerDeviceName = peripherals[peripheral.identifier]?.name
                updateStatus()
            }
        }
    }

    // MARK: 解析（安卓 BleSensors.parseHeartRate / parsePowerBytes 同款）
    static func parseHeartRate(_ data: Data) -> Int? {
        guard data.count >= 2 else { return nil }
        let bpm: Int
        if data[0] & 0x01 == 0 {
            bpm = Int(data[1])
        } else {
            guard data.count >= 3 else { return nil }
            bpm = Int(data[1]) | (Int(data[2]) << 8)
        }
        guard bpm > 0, bpm < 255 else { return nil }
        return bpm
    }

    static func parsePower(_ data: Data) -> Int? {
        guard data.count >= 4 else { return nil }
        let watts = Int(data[2]) | (Int(data[3]) << 8)
        guard watts >= 0, watts <= 4000 else { return nil }
        return watts
    }

    // MARK: 内部
    private func updateDevice(_ id: UUID, _ change: (inout BleDevice) -> Void) {
        guard let index = devices.firstIndex(where: { $0.id == id }) else { return }
        change(&devices[index])
    }

    private func updateStatus() {
        if anyConnected {
            let names = devices.filter { $0.isConnected }.map { $0.name }
            statusText = "已连接：" + names.joined(separator: "、")
        } else if central.state != .poweredOn {
            statusText = "蓝牙不可用"
        } else if isScanning {
            statusText = "正在扫描…"
        } else {
            statusText = "未连接"
        }
    }

    /// 设备类型：先看广播的服务 UUID（心率 / 功率），没有再按名字猜（安卓 detectTypeByName 同款关键词子集）。
    private func typeLabelFor(advertisedServices: [CBUUID], name: String) -> String {
        if advertisedServices.contains(Self.heartRateService) { return "心率计" }
        if advertisedServices.contains(Self.cyclingPowerService) { return "功率计" }
        let lower = name.lowercased()
        if lower.contains("power") || lower.contains("pwr") || lower.contains("quarq")
            || lower.contains("assioma") || lower.contains("4iiii") || lower.contains("stages")
            || lower.contains("favero") || lower.contains("vector") || lower.contains("功率") {
            return "功率计"
        }
        if lower.contains("heart") || lower.contains("tickr") || lower.contains("h10")
            || lower.contains("h9") || lower.contains("hrm") || lower.contains("心率")
            || lower.contains("chest") || lower.contains("magene h") {
            return "心率计"
        }
        return "未知设备"
    }
}

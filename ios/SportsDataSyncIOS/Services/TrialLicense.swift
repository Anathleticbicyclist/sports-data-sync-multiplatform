// 待真机验证
// 体验码门禁已按安卓原样保留（功能级入口验码），未做 App 级开屏门禁，待真机验证（尤其 iOS 设备 ID 与发码是否对得上）。
//
// 来源：安卓 util/TrialLicense.kt + MainActivity.kt:1399-1536（checkTrialFeature /
// checkTrialAndRun / showTrialDialog / showLicenseInfoDialog）+ res/layout/dialog_trial.xml，
// FragmentNavigator.kt:148（新建任务）、:204-207（轨迹合并）原样搬运。
//
// 口径（用户 2026-11-20 纠正过，2026-11-25 再次确认）：
// - 只在原来那几个功能入口验码，有码能用、没码不能用；App 本身能点进去、原 UI 不动。
// - 绝不要做 App 级开屏门禁：不要改标题、不要藏“暂不使用”、不要禁返回、不要点关闭就退 App。
//   v9.6.9 安卓那种 App 级门禁是做过头了，不符合用户意思。
// - 验码入口（只在这几个地方验，其他地方不验）：
//   ① 新建任务 ② 轨迹合并 ③ 一对多同步开始前（一对一不验）④ 运行一对多任务前（一对一不验）。
//   热力图、临时码表入口走同一套 checkTrialFeature，不另起一套。
// - MergeTrial.kt 那个 2026-09-30 日期限制已废除，是死代码，不要搬日期限制。
//
// 逻辑（与安卓一致）：
// - 设备 ID：安卓是 MD5(android_id) 前 8 位大写；iOS 没有 android_id，改用
//   identifierForVendor 的 MD5 前 8 位大写。iOS 设备 ID 与安卓不同，体验码需按
//   iOS 设备 ID 重新发码，不能混用（安卓发的码在 iOS 上算不出来，反之亦然）。
//   注意：identifierForVendor 在用户删掉同一开发者的全部 App 后会变，删 App 后需重新发码。
// - 周期：以 2026-09-01 为起点，每 14 天一个周期，编号 P001、P002…；
//   当前周期号 = floor((今天 - 2026-09-01) / 14 天) + 1。
// - 体验码格式：Pxxx-6 位校验 或 LIFE-6 位校验，校验 = MD5(设备ID + 周期/LIFE + SALT)
//   前 6 位十六进制（大写）。永久码存 LIFE，周期码存当期 Pxxx。
// - 已存周期号 >= 当前周期号才算有效；验证拒绝降级续期（新码周期号 < 已存周期号不通过）。
// - 到期日 = 起点 + 周期号 × 14 天（即当期结束日），不是“验证日起 + 14 天”。
// - 盐值一律用占位符 GATE_SALT_PLACEHOLDER，绝不写真实盐值；发码前用 configureSalt(_:)
//   填入自己的盐值。盐值编进包后反编译可见，体验码不是防破解手段，不要把它当作付费许可。
// - 原件没有免费试用期：首次验证成功前每次进受限功能都会弹框，这是门禁想要的行为。

import CryptoKit
import SwiftUI
import UIKit

// MARK: - 体验许可证（安卓 TrialLicense 的 Swift 移植，逻辑逐项对齐）

/// 体验许可证：按设备 ID + 周期号发码。持久化键名与安卓 SharedPreferences（jichi_ob_trial）一致。
final class TrialLicense: ObservableObject {

    // MARK: 盐值配置入口
    /// 盐值存在骨架组 Core/Storage.swift 的 AppConfig 单例里（钥匙串存取），
    /// 代码里的默认值一律是占位符 GATE_SALT_PLACEHOLDER，绝不写真实盐值。
    /// 用户在关于页自己填真实盐值后才能发码；占位盐值下校验不会通过，这是正常的。
    /// 发码前由用户自己在关于页填入真实盐值，或调用 `TrialLicense.configureSalt("自己的盐值")`。
    /// 真实盐值不要提交进公开仓库。
    static var salt: String {
        get { AppConfig.shared.trialLicenseSalt }
        set {
            AppConfig.shared.trialLicenseSalt = newValue
            AppConfig.shared.save()
        }
    }

    /// 发码方在 App 启动早期调用一次即可（例如 App 入口处）。普通用户不需要调。
    static func configureSalt(_ value: String) {
        salt = value
    }

    // MARK: 持久化
    private static let prefsSuite = "jichi_ob_trial"
    private static let keyDeviceId = "device_id"
    private static let keyPeriod = "license_period"
    private static let keyTrialStart = "trial_start_time"
    private static let lifeFlag = "LIFE"
    private static let trialDays = 14

    private let defaults = UserDefaults(suiteName: prefsSuite) ?? .standard

    /// 弹窗状态：nil = 不弹；非 nil = 正在显示体验码弹窗。由 SwiftUI sheet 绑定。
    @Published var dialog: TrialDialogState?
    /// 验证通过后要自动执行的待办（安卓 pendingOpenAfterTrial）。执行完即清空。
    private var pendingAction: (() -> Void)?

    // MARK: 设备 ID
    /// iOS 设备 ID：identifierForVendor 的 MD5 前 8 位大写，首次生成后存入 UserDefaults。
    /// 与安卓的 MD5(android_id) 前 8 位算法相同，但取值来源不同，所以两端发的码不能混用。
    var deviceId: String {
        if let saved = defaults.string(forKey: Self.keyDeviceId), !saved.isEmpty {
            return saved
        }
        let vendorId = UIDevice.current.identifierForVendor?.uuidString ?? "unknown"
        let id = Self.md5(vendorId).prefix(8).uppercased()
        defaults.set(String(id), forKey: Self.keyDeviceId)
        return String(id)
    }

    // MARK: 周期
    /// 当前周期号，如 "P008"；2026-09-01 之前返回 "P001"。
    var currentPeriod: String {
        let base = Self.baseDate()
        let elapsed = Date().timeIntervalSince(base)
        guard elapsed >= 0 else { return "P001" }
        let period = Int(elapsed / 86_400 / Double(Self.trialDays)) + 1
        return "P" + String(format: "%03d", period)
    }

    /// 当前设备是否已持有有效许可（永久，或已存周期号 >= 当前周期号）。
    var isAllowed: Bool {
        guard let period = defaults.string(forKey: Self.keyPeriod) else { return false }
        if period == Self.lifeFlag { return true }
        guard let stored = Int(period.dropFirst()),
              let current = Int(currentPeriod.dropFirst()) else { return false }
        return stored >= current
    }

    /// 是否从未验证通过：非永久许可且 trial_start 从未写入。
    var isFirstUse: Bool {
        defaults.string(forKey: Self.keyPeriod) != Self.lifeFlag
            && defaults.double(forKey: Self.keyTrialStart) == 0
    }

    /// 标记首次使用时间（安卓原件定义了但 APK 内无调用方，保留以备后用）。
    func markFirstUse() {
        defaults.set(Date().timeIntervalSince1970, forKey: Self.keyTrialStart)
    }

    // MARK: 验证
    /// 验证体验码。接受 `Pxxx-XXXXXX`（周期码）与 `LIFE-XXXXXX`（永久码），
    /// 输入去空格、转大写；已是永久许可时返回 false（无需重复验证）。
    /// 成功后写入 license_period 与 trial_start，返回 true；失败不写盘。
    /// 拒绝降级续期：新码周期号 < 已存周期号时返回 false。
    @discardableResult
    func verifyKey(_ input: String) -> Bool {
        if defaults.string(forKey: Self.keyPeriod) == Self.lifeFlag { return false }
        let key = input.trimmingCharacters(in: .whitespacesAndNewlines)
            .uppercased().replacingOccurrences(of: " ", with: "")
        let parts = key.split(separator: "-")
        guard parts.count == 2, parts[1].count == 6 else { return false }
        let head = String(parts[0])
        let check = String(parts[1])
        let deviceId = self.deviceId
        if head == Self.lifeFlag {
            let expect = Self.md5(deviceId + "LIFE" + Self.salt).prefix(6).uppercased()
            guard check == expect else { return false }
            defaults.set(Self.lifeFlag, forKey: Self.keyPeriod)
            defaults.set(Date().timeIntervalSince1970, forKey: Self.keyTrialStart)
            return true
        }
        guard head.hasPrefix("P"), head.count == 4, Int(head.dropFirst()) != nil else { return false }
        let expect = Self.md5(deviceId + head + Self.salt).prefix(6).uppercased()
        guard check == expect else { return false }
        let newPeriod = Int(head.dropFirst()) ?? 0
        let storedPeriod = Int((defaults.string(forKey: Self.keyPeriod) ?? "P000").dropFirst()) ?? 0
        guard newPeriod >= storedPeriod else { return false }
        defaults.set(head, forKey: Self.keyPeriod)
        defaults.set(Date().timeIntervalSince1970, forKey: Self.keyTrialStart)
        return true
    }

    // MARK: 展示文案
    /// 许可类型文案：永久体验 / 体验许可（Pxxx）/ 未激活。
    var licenseType: String {
        if defaults.string(forKey: Self.keyPeriod) == Self.lifeFlag { return "永久体验" }
        if let period = defaults.string(forKey: Self.keyPeriod),
           defaults.double(forKey: Self.keyTrialStart) != 0 {
            return "体验许可（\(period)）"
        }
        return "未激活"
    }

    /// 有效期至：永久 / 起点 + 周期号×14 天的日期 / 未激活。
    var licenseExpiry: String {
        if defaults.string(forKey: Self.keyPeriod) == Self.lifeFlag { return "永久有效" }
        guard let period = defaults.string(forKey: Self.keyPeriod),
              period.hasPrefix("P"), let num = Int(period.dropFirst()) else { return "未激活" }
        let date = Calendar.current.date(
            byAdding: .day, value: num * Self.trialDays, to: Self.baseDate()) ?? Date()
        let fmt = DateFormatter()
        fmt.dateFormat = "yyyy-MM-dd"
        return fmt.string(from: date)
    }

    // MARK: 功能级门禁（安卓 checkTrialFeature / checkTrialAndRun 的 Swift 版）
    /// 功能入口验码：已验证返回 true；首次使用弹“加入内测”框，过期弹“续期”框，返回 false。
    /// 只关弹窗、不退 App、不改页面——“暂不使用”只关掉弹窗，对应功能打不开，App 留在原页面。
    @discardableResult
    func checkTrialFeature() -> Bool {
        if isFirstUse {
            dialog = TrialDialogState(isFirstUse: true)
            return false
        }
        if isAllowed { return true }
        dialog = TrialDialogState(isFirstUse: false)
        return false
    }

    /// 功能入口验码后执行：先记下待办，再验码；验过直接执行，没验过弹框、验证成功后自动执行待办。
    /// 一对多同步 / 运行一对多任务时由调用方先判断目标数 > 1 再调这里；一对一不验，直接执行。
    @discardableResult
    func checkTrialAndRun(_ action: @escaping () -> Void) -> Bool {
        pendingAction = action
        if checkTrialFeature() {
            pendingAction = nil
            action()
            return true
        }
        return false
    }

    /// 弹窗内“验证”按钮调用：成功则关弹窗、跑待办；失败返回 false，由弹窗显示“体验码错误”。
    @discardableResult
    func verifyFromDialog(_ input: String) -> Bool {
        guard verifyKey(input) else { return false }
        dialog = nil
        let action = pendingAction
        pendingAction = nil
        action?()
        return true
    }

    /// 弹窗内“暂不使用”调用：只关掉弹窗，待办丢弃，App 留在原页面，绝不退 App。
    func dismissDialog() {
        dialog = nil
        pendingAction = nil
    }

    // MARK: 内部
    private static func baseDate() -> Date {
        var comps = DateComponents()
        comps.year = 2026
        comps.month = 9
        comps.day = 1
        comps.hour = 0
        comps.minute = 0
        comps.second = 0
        return Calendar.current.date(from: comps) ?? Date(timeIntervalSince1970: 1_788_000_000)
    }

    static func md5(_ input: String) -> String {
        let digest = Insecure.MD5.hash(data: Data(input.utf8))
        return digest.map { String(format: "%02x", $0) }.joined()
    }
}

// MARK: - 弹窗状态

/// 体验码弹窗的两种形态（安卓 showTrialDialog 的 isFirstUse 分支）。
struct TrialDialogState: Identifiable {
    let id = UUID()
    /// true = 首次使用“加入内测体验计划”；false = 过期“内测体验续期”。
    let isFirstUse: Bool
}

// MARK: - 体验码弹窗（安卓 res/layout/dialog_trial.xml 原样搬运）

/// 标题/副标题/功能列表/设备 ID+复制/输入框/主按钮/“暂不使用”副按钮/底部小字，
/// 文案与安卓 dialog_trial.xml、MainActivity.kt:1443-1536 逐字一致。
/// “暂不使用”必须是看得见、能点的，点它只关掉弹窗、对应功能打不开，App 留在原页面，绝不退 App。
struct TrialDialogView: View {
    @ObservedObject var license: TrialLicense
    let state: TrialDialogState
    @State private var code = ""
    @State private var errorMessage: String?
    @State private var showSuccess = false
    @State private var copied = false

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                Text(state.isFirstUse ? "🎉" : "🔑")
                    .font(.system(size: 28))
                    .frame(width: 48, height: 48)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.top, 18)
                Text(state.isFirstUse ? "加入内测体验计划" : "内测体验续期")
                    .font(.headline)
                    .padding(.top, 10)
                Text(state.isFirstUse
                     ? "「新建任务 · 运行任务」正在内测中\n该功能不收取任何费用，需输入体验码继续使用"
                     : "体验周期已到，将设备ID发送至抖音群获取体验码\n该功能不收取任何费用")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.top, 6)

                if state.isFirstUse {
                    VStack(alignment: .leading, spacing: 6) {
                        featureRow("新建任务 — 配置多平台自动同步")
                        featureRow("轨迹合并 · 贴纸 — 多条运动记录合并分享")
                        featureRow("临时码表 — 骑行·跑步·徒步记录")
                        featureRow("热力图 — 本地轨迹叠加路线热度")
                        featureRow("体验码到期后，加抖音群获取新验证码继续使用")
                    }
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top, 12)
                }

                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("你的设备ID").font(.caption2).foregroundStyle(.secondary)
                        Text(license.deviceId).font(.headline)
                    }
                    Spacer()
                    Button(copied ? "已复制" : "复制") {
                        UIPasteboard.general.string = license.deviceId
                        copied = true
                    }
                    .font(.caption)
                    .padding(.horizontal, 12).padding(.vertical, 5)
                    .background(Color(.systemGray6))
                    .clipShape(Capsule())
                }
                .padding(12)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.top, 12)

                Text(state.isFirstUse
                     ? "输入体验码（复制上方设备ID，到抖音群中飞书问卷中填写体验码获取）"
                     : "输入体验码")
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 12)
                TextField("P008-XXXXXX 或 LIFE-XXXXXX", text: $code)
                    .textInputAutocapitalization(.characters)
                    .autocorrectionDisabled()
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 12)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top, 5)
                if let errorMessage {
                    Text(errorMessage).font(.caption).foregroundStyle(.red).padding(.top, 6)
                }

                Button(state.isFirstUse ? "验证并继续" : "验证并继续体验") {
                    if code.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                        errorMessage = "请先复制设备ID，关注抖音「多吃两口」主页抖音群获取体验码"
                        return
                    }
                    if license.verifyFromDialog(code) {
                        showSuccess = true
                    } else {
                        errorMessage = state.isFirstUse ? "体验码错误" : "体验码错误或已过期"
                    }
                }
                .font(.headline)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(Color(red: 0x2B / 255, green: 0x8C / 255, blue: 0xFF / 255))
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.top, 14)

                // 副按钮“暂不使用”：必须看得见、能点；点它只关掉弹窗，对应功能打不开，App 留在原页面。
                Button("暂不使用") { license.dismissDialog() }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .padding(.top, 8)

                Text("该功能不收费，感谢每一位内测用户的反馈与支持 关注抖音「多吃两口」，从主页抖音群获取验证码 赞赏用户可联系作者获取永久体验")
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
                    .multilineTextAlignment(.center)
                    .padding(.top, 6)
                    .padding(.bottom, 14)
            }
            .padding(.horizontal, 22)
        }
        .alert("体验码验证成功",
               isPresented: $showSuccess) {
            Button("确定", role: .cancel) {}
        } message: {
            Text("许可证类型：\(license.licenseType)\n有效期至：\(license.licenseExpiry)")
        }
    }

    private func featureRow(_ text: String) -> some View {
        HStack(alignment: .top, spacing: 8) {
            Circle().fill(Color(red: 0x2B / 255, green: 0x8C / 255, blue: 0xFF / 255))
                .frame(width: 5, height: 5).padding(.top, 6)
            Text(text).font(.caption)
        }
    }
}

// MARK: - 挂弹窗的 View 扩展

extension View {
    /// 在任意页面上挂体验码弹窗。App 入口不挂这个——绝不要做 App 级开屏门禁。
    func trialDialog(license: TrialLicense) -> some View {
        sheet(item: Binding(
            get: { license.dialog },
            set: { license.dialog = $0 }
        )) { state in
            TrialDialogView(license: license, state: state)
                .presentationDetents([.medium, .large])
        }
    }
}

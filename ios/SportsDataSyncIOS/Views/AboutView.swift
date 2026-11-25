// 待真机验证
// 关于页：版本 9.6.9、检查更新、记录中心 / 轨迹合并 / 热力图 / 临时码表入口、
// 本次更新、开源免费与赞赏、Wahoo 等凭证填写入口、体验许可证入口。
// 对应安卓 ui/AboutFragment.kt。
//
// 体验码门禁：
// - 轨迹合并、热力图、临时码表入口走同一套 checkTrialAndRun（有码进、没码弹框，
// “暂不使用”只关弹窗）；记录中心不验码，直接进。
// - “体验许可证”行：查看许可证类型/有效期、输入或更新体验码（安卓 showLicenseInfoDialog 对应功能）。
// - 本页本身不验码，App 能点进来，原 UI 不动。
//
// 凭证填写入口：Wahoo / 佳明 / 松拓 / 百锐腾开发者凭证 + 体验码门禁盐值，
// 空占位、让用户自己填；用骨架组 Core/Storage.swift 的 AppConfig 单例存取，
// 只存本机钥匙串，不进仓库、不展示明文。
// 凭证本来就不在仓库里：CI 编出来的包默认不带 Wahoo 口令，普通用户登不上 Wahoo
// 是已知情况（安卓 v9.6.9 同样如此），其余平台不受影响。

import SwiftUI

struct AboutView: View {
@EnvironmentObject private var engine: SyncEngine
@EnvironmentObject private var license: TrialLicense

@State private var navigateToMerge = false
@State private var navigateToHeatmap = false
@State private var navigateToBikeComputer = false
@State private var showChangelog = false
@State private var showCredentials = false
@State private var showDisclaimer = false
@State private var updateMessage: String?

private static let projectURL = URL(string: "https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform")!
private static let releaseURL = URL(string: "https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform/releases/tag/v9.6.9")!

var body: some View {
List {
logoSection
toolsSection
licenseSection
updateSection
credentialsSection
aboutTextSection
}
.navigationTitle("关于")
.navigationBarTitleDisplayMode(.inline)
.navigationDestination(isPresented: $navigateToMerge) { MergeView()}
.navigationDestination(isPresented: $navigateToHeatmap) { HeatmapView()}
.navigationDestination(isPresented: $navigateToBikeComputer) { BikeComputerView()}
.sheet(isPresented: $showChangelog) { ChangelogSheet()}
.sheet(isPresented: $showCredentials) { CredentialsSheet()}
.alert("声明", isPresented: $showDisclaimer) {
Button("知道了", role:.cancel) {}
} message: {
Text(disclaimerText)
}
.alert("检查更新", isPresented: Binding(
get: { updateMessage!= nil},
set: { if!$0 { updateMessage = nil}}
)) {
Button("知道了", role:.cancel) {}
} message: {
Text(updateMessage?? "")
}
}

// MARK: Logo / 版本
private var logoSection: some View {
VStack(spacing: 8) {
Image(systemName: "bicycle.circle.fill")
.font(.system(size: 64))
.foregroundStyle(.brandBlue)
Text("鸡翅幸哲迈进Ob").font(.title2.bold())
Text("版本 9.6.9（iOS 版）").font(.subheadline).foregroundStyle(.secondary)
Text("21 个平台运动数据互传 · 免费开源")
.font(.caption).foregroundStyle(.secondary)
}
.frame(maxWidth:.infinity)
.padding(.vertical, 8)
.listRowBackground(Color.clear)
}

// MARK: 功能入口
private var toolsSection: some View {
Section("功能") {
NavigationLink("记录中心") { RecordCenterView()}
// 以下三个入口先验体验码（与安卓 AboutFragment / 入口类同一套口径）。
Button("轨迹合并") {
license.checkTrialAndRun { navigateToMerge = true}
}
Button("热力图") {
license.checkTrialAndRun { navigateToHeatmap = true}
}
Button("临时码表") {
license.checkTrialAndRun { navigateToBikeComputer = true}
}
HStack {
Text("本地活动")
Spacer()
Text("\(engine.downloadedActivities.count) 条")
.foregroundStyle(.secondary)
}
}
}

// MARK: 体验许可证
private var licenseSection: some View {
Section("体验许可证") {
HStack {
Text("许可证类型")
Spacer()
Text(license.licenseType).foregroundStyle(.secondary)
}
HStack {
Text("有效期至")
Spacer()
Text(license.licenseExpiry).foregroundStyle(.secondary)
}
HStack {
Text("设备 ID")
Spacer()
Text(license.deviceId).foregroundStyle(.secondary)
}
Button("输入 / 更新体验码") {
license.dialog = TrialDialogState(isFirstUse: license.isFirstUse)
}
}
}

// MARK: 更新
private var updateSection: some View {
Section("更新") {
Button("检查更新") {
// 真机检查更新：打开 GitHub Release 页比对版本号。
// 直连检查接口待接入，当前先提示用户去 Release 页看。
updateMessage = "当前版本 9.6.9。最新版请到 GitHub Release 页查看（直连检查待接入）。"
}
Link("GitHub 项目主页", destination: Self.projectURL)
Link("v9.6.9 Release 页", destination: Self.releaseURL)
Button("本次更新") { showChangelog = true}
}
}

// MARK: 凭证
private var credentialsSection: some View {
Section("开发者凭证（自己填）") {
Button("Wahoo / 佳明 / 松拓 / 百锐腾 / 体验码盐值") { showCredentials = true}
Text("凭证本来就不在仓库里，空着也能用其他平台。填了只存在本机钥匙串里，不上传、不进仓库。")
.font(.caption).foregroundStyle(.secondary)
}
}

// MARK: 声明
private var aboutTextSection: some View {
Section {
Button("开源免费与赞赏") { showDisclaimer = true}
Text("本软件完全免费。赞赏自愿、无偿，不构成购买，不附带售后义务。")
.font(.caption).foregroundStyle(.secondary)
Text("本软件与 iGPSPORT、迈金、黑鸟单车、行者、捷安特、高驰、佳明、Wahoo、Outbase 等平台，以及 OneLap、Strava、Intervals.icu 等，均无任何隶属、合作、授权或背书关系，并非上述任一平台的官方出品。")
.font(.caption).foregroundStyle(.secondary)
}
}

private var disclaimerText: String {
"""
本软件按“现状”提供，不附带任何明示或默示担保。因使用本软件（包括但不限于数据同步、格式转换、登录、上传、下载、自动同步）而产生的数据偏差或丢失、账号异常、平台限制或封禁、第三方索赔等一切后果，均由使用者自行承担，作者不承担任何责任。

本软件不收集您的个人数据，亦不向任何第三方或作者服务器传输您的数据。账号凭证仅保存在设备本地；活动数据仅在您主动触发同步时，上传至您选择的目标平台。

本软件完全免费。页面中的赞赏为自愿、无偿的赠与行为，不构成购买商品或服务的对价，亦不构成任何服务合同关系，不附带任何售后义务。

运动数据格式转换后（距离、均速等）可能与来源平台官方值有出入，请以官方数据为准。
"""
}
}

// MARK: - 本次更新

private struct ChangelogSheet: View {
@Environment(\.dismiss) private var dismiss

var body: some View {
NavigationStack {
List {
Section("v9.6.9（iOS 版，全新 Swift 原生重写）") {
Text("• 21 个平台运动数据互传，国内区与国际区互传")
Text("• 同步任务：单来源 × 多目标，增量自动跳过已同步")
Text("• 记录中心、轨迹合并、热力图（线宽 1–5 可调）、临时码表")
Text("• 体验码门禁按安卓原样保留（功能级入口验码，未做 App 级开屏门禁）")
Text("• iOS 后台自动同步由系统调度，不如安卓自由，时间不保证")
}
Section("已知待验证") {
Text("• 各平台登录与上传需真机逐个验证")
Text("• iOS 设备 ID 与体验码发码是否对得上")
Text("• Strava、Wahoo、MyWhoosh、Zwift、松拓、百锐腾、CyCity 平台文件尚未落盘")
}
}
.navigationTitle("本次更新")
.navigationBarTitleDisplayMode(.inline)
.toolbar {
ToolbarItem(placement:.cancellationAction) {
Button("关闭") { dismiss()}
}
}
}
}
}

// MARK: - 开发者凭证（空占位，用户自己填；骨架组 AppConfig 单例，存钥匙串）

private struct CredentialsSheet: View {
@ObservedObject private var config = AppConfig.shared
@Environment(\.dismiss) private var dismiss
@State private var savedMessage: String?

var body: some View {
NavigationStack {
Form {
Section("Wahoo") {
TextField("Client ID（可空）", text: $config.wahooClientId)
.textInputAutocapitalization(.never)
.autocorrectionDisabled()
SecureField("Client Secret（可空）", text: $config.wahooClientSecret)
}
Section("佳明（OAuth1 开发者凭证）") {
TextField("Consumer Key（可空）", text: $config.garminConsumerKey)
.textInputAutocapitalization(.never)
.autocorrectionDisabled()
SecureField("Consumer Secret（可空）", text: $config.garminSecret)
}
Section("松拓 Suunto（Cloud API）") {
TextField("Client ID（可空）", text: $config.suuntoClientId)
.textInputAutocapitalization(.never)
.autocorrectionDisabled()
SecureField("Client Secret（可空）", text: $config.suuntoClientSecret)
SecureField("Subscription Key（可空）", text: $config.suuntoSubscriptionKey)
}
Section("百锐腾") {
SecureField("Mobile API Key（可空）", text: $config.brytonMobileApiKey)
}
Section("体验码门禁盐值") {
SecureField("盐值（默认占位符，填入真实盐值后才能发码）", text: $config.trialLicenseSalt)
Text(config.trialLicenseSalt == "GATE_SALT_PLACEHOLDER"
? "当前是占位符：体验码校验不会通过，需填入真实盐值。"
: "已填写真实盐值。")
.font(.caption).foregroundStyle(.secondary)
}
if let savedMessage {
Section { Text(savedMessage).font(.caption).foregroundStyle(.secondary)}
}
Section {
Text("不填也能用：没配 Wahoo 凭证时 Wahoo 登录不可用，其余平台不受影响，App 照常用。凭证只存本机钥匙串，不进仓库、不上传。")
.font(.caption2).foregroundStyle(.tertiary)
}
}
.navigationTitle("开发者凭证")
.navigationBarTitleDisplayMode(.inline)
.toolbar {
ToolbarItem(placement:.cancellationAction) {
Button("取消") { dismiss()}
}
ToolbarItem(placement:.confirmationAction) {
Button("保存") {
config.save()
savedMessage = "已保存到本机钥匙串。"
}
}
}
}
}
}

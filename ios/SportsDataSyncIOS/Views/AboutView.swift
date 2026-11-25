// 待真机验证
// 关于页：版本 9.6.9、检查更新、记录中心 / 轨迹合并 / 热力图 / 临时码表 / 实验室入口、
// 本次更新（v9.6.9/9.6.8/9.6.7）、开发者俱乐部链接、鸣谢、开源免费与赞赏、
// Wahoo 等凭证填写入口、体验许可证入口。
// 对应安卓 ui/AboutFragment.kt + fragment_about.xml，文案按安卓原文。
//
// 体验码门禁：
// - 轨迹合并、热力图、临时码表入口走同一套 checkTrialAndRun（有码进、没码弹框，
// “暂不使用”只关弹窗）；记录中心不验码，直接进。
// - “体验许可证”行：查看许可证类型/有效期、输入或更新体验码（安卓 showLicenseInfoDialog 对应功能）。
// - 本页本身不验码，App 能点进来，原 UI 不动。
//
// 凭证填写入口：Wahoo / Strava / 佳明 / 松拓 / 百锐腾开发者凭证 + 体验码门禁盐值，
// 空占位、让用户自己填；用骨架组 Core/Storage.swift 的 AppConfig 单例存取，
// 只存本机钥匙串，不进仓库、不展示明文。
// 凭证本来就不在仓库里：CI 编出来的包默认不带 Wahoo 口令，普通用户登不上 Wahoo
// 是已知情况（安卓 v9.6.9 同样如此），其余平台不受影响。

import SwiftUI

struct AboutView: View {
@EnvironmentObject private var engine: SyncEngine
@EnvironmentObject private var license: TrialLicense
@EnvironmentObject private var updateChecker: UpdateCheckerStore

@State private var navigateToMerge = false
@State private var navigateToHeatmap = false
@State private var navigateToBikeComputer = false
@State private var showChangelog = false
@State private var showCredentials = false
@State private var showDisclaimer = false

private static let projectURL = URL(string: "https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform")!
private static let releaseURL = URL(string: "https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform/releases/tag/v9.6.9")!
// 开发者俱乐部：安卓 AboutFragment.kt 原文链接（Outbase 俱乐部页）。
private static let clubURL = URL(string: "https://outbase.cn/zeusfit/zeusfit-mk/sharePage.html?_bid=1005477&type=club&clubId=MTAxMjgz&timestamp=1787569599904&sign=b4604ad9041551e64ce90ea385a0029f")!

var body: some View {
List {
logoSection
toolsSection
licenseSection
updateSection
linksSection
credentialsSection
thanksSection
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
Button("知道了", role: .cancel) {}
} message: {
Text(disclaimerText)
}
}

// MARK: Logo / 版本
private var logoSection: some View {
VStack(spacing: 8) {
Image(systemName: "bicycle.circle.fill")
.font(.system(size: 64))
.foregroundStyle(Color.brandBlue)
Text("鸡翅幸哲迈进Ob").font(.title2.bold())
Text("让运动数据自由流动").font(.subheadline).foregroundStyle(.secondary)
Text("版本 9.6.9（iOS 版）").font(.subheadline).foregroundStyle(.secondary)
Text("21 个平台运动数据互传 · 免费开源")
.font(.caption).foregroundStyle(.secondary)
}
.frame(maxWidth: .infinity)
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
// 实验室：松拓 / Zepp / 百锐腾实验性平台登录（安卓 AboutFragment 原文，不验体验码）。
NavigationLink("实验室") { LabLoginView()}
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
Button(updateChecker.isChecking ? "正在检查…" : "检查更新") {
Task { await updateChecker.check(force: true) }
}
.disabled(updateChecker.isChecking)
Link("GitHub 项目主页", destination: Self.projectURL)
Link("v9.6.9 Release 页", destination: Self.releaseURL)
Button("本次更新") { showChangelog = true}
}
}

// MARK: 链接（安卓 fragment_about.xml 原文：“开发者俱乐部”蓝色可点开 Outbase 俱乐部页；
// “Github项目”蓝色可点开 GitHub 项目主页）
private var linksSection: some View {
Section("链接") {
VStack(spacing: 6) {
HStack(spacing: 0) {
Text("鸡翅幸哲迈进OB同步工具:")
Link("开发者俱乐部", destination: Self.clubURL)
.foregroundStyle(Color.brandBlue)
}
HStack(spacing: 0) {
Text("➠更新地址鸡翅幸哲迈进OB（开发体验版） 开发版:")
Link("Github项目", destination: Self.projectURL)
.foregroundStyle(Color.brandBlue)
}
}
.frame(maxWidth: .infinity)
.multilineTextAlignment(.center)
}
}

// MARK: 凭证
private var credentialsSection: some View {
Section("开发者凭证（自己填）") {
Button("Wahoo / Strava / 佳明 / 松拓 / 百锐腾 / 体验码盐值") { showCredentials = true}
Text("凭证本来就不在仓库里，空着也能用其他平台。填了只存在本机钥匙串里，不上传、不进仓库。")
.font(.caption).foregroundStyle(.secondary)
}
}

// MARK: 鸣谢（安卓 fragment_about.xml 原文，一字不改）
private var thanksSection: some View {
Section {
VStack(spacing: 4) {
Text("🙏 鸣谢").font(.headline).foregroundStyle(Color.brandBlue)
Text("感谢iGPSPORT、迈金、黑鸟单车、百锐腾、行者、捷安特、高驰、佳明、Wahoo、Outbase、Keep、咕咚、Zepp、Komoot、Suunto为运动用户提供的数据记录与存储服务")
Text("感谢以下人员(均为骑行爱称)为软件测试提供的帮助：素甲粉、青岛AUV阿哲、清茶、萧、洪斌大哥、鸽子王腰果、rockozhao、胶州一哥大沽河河长赵铁柱、海参、兰兰大王、。、初夏飞雪bab、心急吃不了热豆付、青山依旧张指导、阿泽阿、泽、无名氏、我有一个朋友、N1d、ongoing33、七诗君、赵烨龙、狂踹瘸子那条好腿👊、小果冻儿、今晚打老虎、仗义多、凤倾")
Text("鸣谢青岛AUV俱乐部")
Text("如有问题，欢迎加入Outbase俱乐部跟主理人反馈。开发者:多吃两口")
}
.font(.caption).foregroundStyle(.secondary)
.multilineTextAlignment(.center)
}
}

// MARK: 声明
private var aboutTextSection: some View {
Section {
Button("开源免费与赞赏") { showDisclaimer = true}
// 赞赏码：安卓原图原样搬过来（reward_wechat.png / reward_alipay.png），不要改图。
HStack(alignment: .top) {
Spacer()
VStack(spacing: 2) {
Image("reward_wechat")
.resizable()
.scaledToFit()
.frame(width: 150, height: 150)
Text("微信赞赏码")
.font(.caption2).foregroundStyle(.secondary)
}
Spacer()
VStack(spacing: 2) {
Image("reward_alipay")
.resizable()
.scaledToFit()
.frame(width: 130, height: 130)
Text("支付宝收款码")
.font(.caption2).foregroundStyle(.secondary)
}
Spacer()
}
Text("本项目完全开源免费，您的赞赏将支持后续功能迭代与问题修复")
.font(.caption).foregroundStyle(.secondary)
.multilineTextAlignment(.center)
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
Section("本次更新 (v9.6.9)") {
Text("📦 v9.6.9 多日轨迹合并重做：里程/计时/爬升/卡路里取各段码表原值、按天自动分圈；新增临时运动码表页（定位/速度/海拔与蓝牙传感器可导出FIT、GPX）；优化记录中心热力图；优化上传佳明伪装")
Text("📦 v9.6.8 修复严重自动登录闪退 Bug（平台失效、无网、连不通平台会循环闪退导致无法启动）")
Text("📦 v9.6.7 新增 Strava 同步；迈金坐标转换支持骑行台；优化自动重登；高驰上传去除 20KB 限制")
}
Section("已知待验证") {
Text("• 各平台登录与上传需真机逐个验证")
Text("• iOS 设备 ID 与体验码发码是否对得上")
Text("• Strava、Wahoo、MyWhoosh、Zwift、松拓、百锐腾、CyCity 平台文件已落盘、注册表已接入，登录与同步待真机逐个验证")
}
}
.navigationTitle("本次更新")
.navigationBarTitleDisplayMode(.inline)
.toolbar {
ToolbarItem(placement: .cancellationAction) {
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
Section("Strava") {
TextField("Client ID（可空）", text: $config.stravaClientId)
.textInputAutocapitalization(.never)
.autocorrectionDisabled()
SecureField("Client Secret（可空）", text: $config.stravaClientSecret)
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
ToolbarItem(placement: .cancellationAction) {
Button("取消") { dismiss()}
}
ToolbarItem(placement: .confirmationAction) {
Button("保存") {
config.save()
savedMessage = "已保存到本机钥匙串。"
}
}
}
}
}
}

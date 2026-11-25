// 待真机验证
// BuiltinSecrets.swift
// 内置开发者凭证默认值：仓库里一律是空字符串 / 占位符，绝不写真实值。
//
// CI 打包时如果配了 GitHub Secrets，会在编译机上用 Secrets 的值重写这个文件再编译
// （只存在编译机上，不进仓库、不进日志），打出来的包开箱即用；没配 Secrets 就用这里
// 的占位值，App 照常能打开，只是对应平台登不上、体验码发不出来而已。
// 用户在 App 关于页自己填的值存在本机钥匙串，优先于这里的内置值。

import Foundation

/// 内置凭证默认值（占位）。不要在这里写真实值。
enum BuiltinSecrets {
    /// Wahoo OAuth2 开发者凭证。
    static let wahooClientId = ""
    static let wahooClientSecret = ""
    /// 佳明 OAuth1 开发者凭证（预留：佳明 OAuth1 链路待补实现，目前代码还不读这两个值）。
    static let garminConsumerKey = ""
    static let garminConsumerSecret = ""
    /// 松拓 Suunto Cloud API 三件套。
    static let suuntoClientId = ""
    static let suuntoClientSecret = ""
    static let suuntoSubscriptionKey = ""
    /// 百锐腾移动端 API Key。
    static let brytonMobileApiKey = ""
    /// 体验码门禁盐值（占位符，占位值下体验码校验不会通过）。
    static let trialLicenseSalt = "GATE_SALT_PLACEHOLDER"
}

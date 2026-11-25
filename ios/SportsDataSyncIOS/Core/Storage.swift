// 待真机验证
// Storage.swift
// 鸡翅幸哲迈进OB iOS 版 — 本地存取
// 规矩：token、密码、开发者凭证这些敏感的东西一律放钥匙串（Keychain），
// 不同步任务配置、开关这些不敏感的放 UserDefaults。
// 钥匙串里的东西 App 删了都还在（除非用户抹掉手机），卸载重装也不丢，
// 跟安卓那边“凭证只存本机”是一个意思。

import Foundation
import Security

// MARK: - 钥匙串（放 token / 密码 / 开发者凭证）

/// 钥匙串简易封装。只存字符串，够登录态和凭证用。
/// 注意：这里只负责存取，不负责“这个值对不对”，值对不对由各平台登录时自己校验。
public enum KeychainStore {
    private static let service = "com.jichi.ob.dev"

    /// 存一个字符串。已存在就覆盖。
    @discardableResult
    public static func set(_ value: String, for key: String) -> Bool {
        guard let data = value.data(using: .utf8) else { return false }
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
            kSecAttrAccount as String: key
        ]
        // 先删旧的，再存新的（覆盖）。
        SecItemDelete(query as CFDictionary)
        var attributes = query
        attributes[kSecValueData as String] = data
        // 这台手机解锁后才能读；备份时不跟着 iCloud 走。
        attributes[kSecAttrAccessible as String] = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly
        return SecItemAdd(attributes as CFDictionary, nil) == errSecSuccess
    }

    /// 取一个字符串，没有返回 nil。
    public static func get(_ key: String) -> String? {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
            kSecAttrAccount as String: key,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        var result: AnyObject?
        guard SecItemCopyMatching(query as CFDictionary, &result) == errSecSuccess,
              let data = result as? Data,
              let value = String(data: data, encoding: .utf8) else {
            return nil
        }
        return value
    }

    /// 删一个。
    @discardableResult
    public static func delete(_ key: String) -> Bool {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
            kSecAttrAccount as String: key
        ]
        return SecItemDelete(query as CFDictionary) == errSecSuccess
    }
}

// MARK: - 登录态（token / 密码放钥匙串）

/// 各平台的登录态。key 的格式是固定的：token_<平台英文名>、password_<平台英文名>。
/// 平台文件里登录成功后调这里存，退出登录调这里清。
public enum LoginStore {
    private static func tokenKey(for source: DataSource) -> String { "token_\(source.rawValue)" }
    private static func passwordKey(for source: DataSource) -> String { "password_\(source.rawValue)" }
    private static func usernameKey(for source: DataSource) -> String { "username_\(source.rawValue)" }

    /// 存登录凭证（token / session / cookie 串都行，各平台自己定存什么）。
    public static func saveToken(_ token: String, for source: DataSource) {
        KeychainStore.set(token, for: tokenKey(for: source))
    }

    /// 取登录凭证，没有就是没登录。
    public static func token(for source: DataSource) -> String? {
        KeychainStore.get(tokenKey(for: source))
    }

    /// 有没有登录态（只看本地有没有凭证，不发网络请求）。
    public static func isLoggedIn(_ source: DataSource) -> Bool {
        guard let token = token(for: source) else { return false }
        return !token.isEmpty
    }

    /// 退出登录：清掉这个平台的凭证。
    public static func clearToken(for source: DataSource) {
        KeychainStore.delete(tokenKey(for: source))
    }

    /// 存账号密码（有些平台每次请求都要重新拿 token，需要留着账号密码自动续）。
    /// 注意：密码只存本机钥匙串，不会上传到任何地方。
    public static func saveCredentials(username: String, password: String, for source: DataSource) {
        KeychainStore.set(username, for: usernameKey(for: source))
        KeychainStore.set(password, for: passwordKey(for: source))
    }

    public static func username(for source: DataSource) -> String? {
        KeychainStore.get(usernameKey(for: source))
    }

    public static func password(for source: DataSource) -> String? {
        KeychainStore.get(passwordKey(for: source))
    }

    public static func clearCredentials(for source: DataSource) {
        KeychainStore.delete(usernameKey(for: source))
        KeychainStore.delete(passwordKey(for: source))
    }
}

// MARK: - 同步任务配置（放 UserDefaults，JSON 存）

/// 同步任务列表。任务配置不敏感，放 UserDefaults，用 JSON 存取。
public enum TaskStore {
    private static let tasksKey = "syncTasks"

    /// 全部任务。读不到或解析失败就返回空数组，不崩。
    public static var tasks: [SyncTask] {
        get {
            guard let data = UserDefaults.standard.data(forKey: tasksKey) else { return [] }
            return (try? JSONDecoder().decode([SyncTask].self, from: data)) ?? []
        }
        set {
            if let data = try? JSONEncoder().encode(newValue) {
                UserDefaults.standard.set(data, forKey: tasksKey)
            }
        }
    }

    public static func add(_ task: SyncTask) {
        var current = tasks
        current.append(task)
        tasks = current
    }

    public static func update(_ task: SyncTask) {
        var current = tasks
        if let index = current.firstIndex(where: { $0.id == task.id }) {
            current[index] = task
            tasks = current
        }
    }

    public static func remove(_ task: SyncTask) {
        tasks = tasks.filter { $0.id != task.id }
    }
}

// MARK: - 开发者凭证占位（AppConfig 单例）

/// 开发者凭证配置：Wahoo、佳明、松拓、百锐腾这些平台要的开发者凭证放这里。
///
/// 重要：这里全是空字符串占位，绝不写真实值。
/// 填入口在关于页（AboutView 组负责接界面），用户在 App 里自己填，填完存进钥匙串，
/// 不进代码、不进仓库。没填的话对应平台登录会提示去填，App 其他功能照常能用。
public final class AppConfig: ObservableObject {
    public static let shared = AppConfig()

    // MARK: Wahoo（OAuth2 开发者凭证，没有就登不上 Wahoo）
    @Published public var wahooClientId: String = ""
    @Published public var wahooClientSecret: String = ""

    // MARK: 佳明（OAuth1 开发者凭证）
    @Published public var garminConsumerKey: String = ""
    @Published public var garminSecret: String = ""

    // MARK: 松拓 Suunto（Cloud API 三件套）
    @Published public var suuntoClientId: String = ""
    @Published public var suuntoClientSecret: String = ""
    @Published public var suuntoSubscriptionKey: String = ""

    // MARK: 百锐腾（移动端 API Key）
    @Published public var brytonMobileApiKey: String = ""

    // MARK: 体验码门禁盐值（TrialLicense 组负责用）
    // 占位符 GATE_SALT_PLACEHOLDER，绝不写真实盐值。
    // 用户在关于页自己填真实盐值后才能发码；占位盐值下校验不会通过，这是正常的。
    @Published public var trialLicenseSalt: String = "GATE_SALT_PLACEHOLDER"

    private init() {
        load()
    }

    /// 从钥匙串读出之前填过的凭证（第一次打开全是空字符串）。
    /// 钥匙串里没有或为空时，用 BuiltinSecrets 的内置值（仓库里是占位符；
    /// CI 配了 Secrets 的话，编译机上重写过这个文件，内置值就是真实值）。
    public func load() {
        wahooClientId = storedOrBuiltin(key: "config_wahooClientId", builtin: BuiltinSecrets.wahooClientId)
        wahooClientSecret = storedOrBuiltin(key: "config_wahooClientSecret", builtin: BuiltinSecrets.wahooClientSecret)
        garminConsumerKey = storedOrBuiltin(key: "config_garminConsumerKey", builtin: BuiltinSecrets.garminConsumerKey)
        garminSecret = storedOrBuiltin(key: "config_garminConsumerSecret", builtin: BuiltinSecrets.garminConsumerSecret)
        suuntoClientId = storedOrBuiltin(key: "config_suuntoClientId", builtin: BuiltinSecrets.suuntoClientId)
        suuntoClientSecret = storedOrBuiltin(key: "config_suuntoClientSecret", builtin: BuiltinSecrets.suuntoClientSecret)
        suuntoSubscriptionKey = storedOrBuiltin(key: "config_suuntoSubscriptionKey", builtin: BuiltinSecrets.suuntoSubscriptionKey)
        brytonMobileApiKey = storedOrBuiltin(key: "config_brytonMobileApiKey", builtin: BuiltinSecrets.brytonMobileApiKey)
        trialLicenseSalt = storedOrBuiltin(key: "config_trialLicenseSalt", builtin: BuiltinSecrets.trialLicenseSalt)
    }

    /// 钥匙串里有用户自己填的非空值就用它，否则用内置值。
    private func storedOrBuiltin(key: String, builtin: String) -> String {
        if let stored = KeychainStore.get(key), !stored.isEmpty {
            return stored
        }
        return builtin
    }

    /// 把当前填好的凭证存进钥匙串。空字符串也存（等于清空）。
    public func save() {
        KeychainStore.set(wahooClientId, for: "config_wahooClientId")
        KeychainStore.set(wahooClientSecret, for: "config_wahooClientSecret")
        KeychainStore.set(garminConsumerKey, for: "config_garminConsumerKey")
        KeychainStore.set(garminSecret, for: "config_garminSecret")
        KeychainStore.set(suuntoClientId, for: "config_suuntoClientId")
        KeychainStore.set(suuntoClientSecret, for: "config_suuntoClientSecret")
        KeychainStore.set(suuntoSubscriptionKey, for: "config_suuntoSubscriptionKey")
        KeychainStore.set(brytonMobileApiKey, for: "config_brytonMobileApiKey")
        KeychainStore.set(trialLicenseSalt, for: "config_trialLicenseSalt")
    }
}

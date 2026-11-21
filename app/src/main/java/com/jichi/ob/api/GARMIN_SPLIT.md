# GarminApi 剩余拆分蓝图

> 状态：分支 `p1/refactor-mainactivity-ci`，GarminApi.kt 已从 1662 行拆到 1523 行。
> 本文件行号以拆分后的 GarminApi.kt（1523 行）为准；新文件 GarminCooldown.kt 115 行、GarminWellnessApi.kt 120 行。
> 原则：verbatim 搬移、GarminApi 留同名委托（签名不变、调用方无需改）、共享 helper 留在 GarminApi 内标 internal、不重复复制、每步独立验证。
> 注意：本机无 Android SDK，无法本地编译——本次只做了静态检查（见末尾“验证方法”），编译与真机回归待有 SDK 的环境补做，不要谎称编译通过。

## 已完成（本次）

1. **429 冷却 → GarminCooldown.kt**（`internal object`）
   - 移走：cooldownKey / readCooldown / writeCooldown / writeCooldownFor / clearCooldownFor / clearAllCooldownFor / isCooldown / isAllChannelsCooldown / cooldownRemainMinutes / cooldownRemainAnyMinutes，及 COOLDOWN_MS、PREFS_COOLDOWN、SSO_CHANNELS_COM/CN、SsoChannel、appContext/setAppContext。
   - GarminApi companion 只留同名委托；实例方法 loginMobile / loginOAuth1 / refreshDiToken 内部仍走 companion 的私有 writeCooldown / isCooldown 委托，代码未动。
   - loginMobile 的通道轮换改成 `GarminCooldown.SSO_CHANNELS_COM/CN`（唯一一处必需的前缀改动）。
   - 不变量：SharedPreferences 文件名与 key 生成规则与原来完全一致，已写入的冷却缓存继续有效；日志仍走 `GarminApi.addDebugLog`。
   - 外部调用方（MainActivity / LoginFragment / LoginWebActivity / AutoSyncWorker）调用的仍是 `GarminApi.isCooldown` 等，无需改动。
2. **健康数据 → GarminWellnessApi.kt**（`internal class GarminWellnessApi(private val api: GarminApi)`）
   - 移走：downloadWellnessZip（原 1569 行起）、uploadWellnessFit（原 1607 行起），verbatim，仅把 `parseCredential / connectApiHost / gcApiHost / connectHeaders / apiHeaders / client.newCall / addDebugLog` 加上 `api.` 或 `GarminApi.` 前缀。
   - GarminApi 持有 `private val wellnessApi = GarminWellnessApi(this)` 并保留同名委托；调用方 GarminWellnessSync（下载源端、上传目标端）无需改动。
   - 为此改 internal 的共享成员：`client`、`GarminSession`、`parseCredential`、`gcApiHost`、`connectApiHost`、`apiHeaders`、`connectHeaders`（其余 helper 仍 private，见下表）。

## 共享 helper 现状表（拆分后）

| helper | 可见性 | 使用者 | 备注 |
| --- | --- | --- | --- |
| parseCredential / GarminSession | internal | 认证、列表、上传、健康 | 凭证 JSON 解析，多类共用，不复制 |
| client（OkHttp，强制 HTTP/1.1） | internal | 认证、列表、上传、健康 | 同上 |
| gcApiHost / connectApiHost / apiHeaders / connectHeaders | internal | 列表、上传、健康、认证 | connectHeaders 内部调 diHeaders 与 oauth1AuthHeader |
| diHeaders | private | 仅 connectHeaders | 后续步骤如需直用再改 internal |
| oauth1AuthHeader / enc / decode / collectCookies | private | 认证（loginOAuth1 链路） | 随步骤 3 一起移 |
| prepareWebView / injectCookies / fetchViaWebView / uploadViaWebView | private | 列表、上传、认证兜底 | WebView 层，见步骤 6 |
| downloadViaWebView / uploadBinaryViaWebView / loadJsonViaWebView | private | 无（疑似死代码） | 见下 |
| connectApiCookieHeaders | private | 无（疑似死代码） | 见下 |
| unzipFit | private | 列表（downloadFitOnce） | 随步骤 4 一起移 |
| TAG / lastGarminAuthError / enableDebugLogs / debugLogs / addDebugLog | companion | 全局 | lastGarminAuthError 是 @Volatile 全局状态，不要复制成两份 |
| sharedWebView / sharedWebViewReady / webViewLoading / mainHandler / initSharedWebView | companion | WebView 层 | 主线程状态，随 WebView 层走 |
| 常量组 LOGIN_URL_* / DI_* / OAUTH1_* / SSO_* | companion | 各处 | 移常量前先 grep 全仓外部引用 |

**疑似死代码（定义后全仓无调用，各仅出现 1 次即定义本身，删前需二次确认，不要顺手删）：**
connectApiCookieHeaders、loadJsonViaWebView、downloadViaWebView、uploadBinaryViaWebView。建议在步骤 6 单独一提交删除，不要混在搬移提交里。

## 步骤 3：认证 → GarminAuthApi（建议先做）

- **移走**（行号为拆分后）：loginMobile（212）、loginOAuth1（319）、oauth1ExchangeToken（468）、oauth1Preauthorized（486）、oauth1AuthHeader（502）、enc（547）、decode（550）、collectCookies（553）、exchangeDiToken（563）、refreshDiToken（680）、ensureValidToken（748）；DiTokenResult（204）一并移（loginMobile / exchangeDiToken 用）。
- **依赖**：GarminCooldown（isCooldown / writeCooldown / cooldownRemainAnyMinutes / SSO_CHANNELS_*，直接引用 `GarminCooldown.SSO_CHANNELS_*`，不要搬回）、GarminSession / parseCredential、DI 常量（DI_TOKEN_URL_* / DI_GRANT_TYPE_* / DI_CLIENT_IDS / NATIVE_API_UA / NATIVE_X_GARMIN_UA / SSO_LOGIN_URL_* / IOS_*）、OAUTH1 常量（OAUTH1_CONSUMER_KEY / OAUTH1_CONSUMER_SECRET / OAUTH1_SERVICE_* / SSO_SIGNIN_* / OAUTH1_BASE_*）、client、addDebugLog、lastGarminAuthError、TAG。
- **常量放哪（二选一，推荐 B）**：A. 常量留在 GarminApi companion，认证类用 `GarminApi.XXX` 引用（改动最小，但 companion 继续膨胀）；B. 认证私用常量随方法移入新类 companion，外部引用的常量留在 GarminApi。注意 LOGIN_URL_COM / LOGIN_URL_CN 被 LoginWebActivity 直接引用，必须留在 GarminApi 或留委托；OAuth1 密钥常量保留在原文件 companion 内，未移动、未复制（另见“风险总表”）。
- **先核对 GarminOAuthHelper**：已有独立文件 GarminOAuthHelper.kt（336 行，另一套 consumer 凭证，提供 loginWithTicket / loginWithCredentialsCn，被 LoginWebActivity 与 AuthCoordinator 调用）。拆认证前先核对它的 OAuth1 签名逻辑与 GarminApi.oauth1AuthHeader 是否重复，避免造出第三套签名实现；不要把两个 helper 合并，除非确认行为一致。
- **调用方**：LoginWebActivity:343/345/347（loginOAuth1 / loginMobile）、MainActivity:573/949 与 AutoSyncWorker:375（ensureValidToken）。refreshDiToken 无外部调用，仅 ensureValidToken 内部调用，委托保留在 GarminApi 即可，外部无感。
- **风险**：429 冷却语义（v8.3.4：账号级致命错误即停——密码错 / 两步验证 / 429 不再换通道，避免污染全部通道触发 24H 风控）；lastGarminAuthError 是跨通道共享的 @Volatile 状态；多通道轮换顺序（国际版 GarminConnect / garminglobal6 双通道、中国版单通道）。回归：国际/中国 loginMobile、OAuth1 两通道、MFA 与密码错即停、429 后 24H 冷却提示。

## 步骤 4：列表 → GarminActivityApi（建议第二）

- **移走**：getUsername（1171）、getActivities（1203）、downloadFit（1298）、downloadFitOnce（1312）、unzipFit（1390）。
- **依赖**：parseCredential / GarminSession、connectApiHost / gcApiHost、connectHeaders / apiHeaders、prepareWebView / fetchViaWebView / downloadViaWebView（WebView 兜底链）、client、addDebugLog、ActivityRecord、ActivityCache.parseStartTimeMs。
- **调用方**：SyncCoordinator:69-70（getUsername）、MainActivity:745/1180-1181 与 AutoSyncWorker:315-316（getActivities）、AutoSyncWorker:456-457（downloadFit）。
- **风险**：三路回退优先级不要调换（DI/OAuth1 connectapi 直连 → WebView → OkHttp）；downloadFit 的 3 次重试只重试连接层 IOException，业务失败（HTTP 非 200 / 解压失败）不重试；unzipFit 的裸 FIT 兜底（zip 头判定）要原样保留；getActivities 三处构造 ActivityRecord 的代码重复但行为一致，搬移时不要“顺手统一”。

## 步骤 5：上传 → GarminUploadApi（建议第三）

- **移走**：uploadActivity（1417）、uploadActivityOnce（1435）。
- **依赖**：与列表基本相同（connectHeaders / apiHeaders、connectApiHost / gcApiHost、prepareWebView / uploadViaWebView、client、parseCredential）。
- **调用方**：UploadEngine:703（主路）；UploadEngine:720 用 getActivities 做上传前去重参考，注意上传与列表的去重耦合不要拆散。
- **风险**：返回值约定 null=成功、字符串=错误（409 重复不重试、400/415 拒绝不重试、仅连接错误重试 3 次）；multipart 字段名 file 与 application/octet-stream；WebView 上传与 OkHttp 上传的成功判定不同（WebView 看 id / activityId / uploadId 字段）；中国区与国际区上传 URL 不同（gc-api 带尾斜杠、connectapi 不带）。

## 步骤 6：收尾——GarminApi 瘦身与 WebView 层

- **剩下**：companion（TAG、lastGarminAuthError、LOGIN_URL_*、共享 WebView、debug 日志、冷却委托）、client、initWebView、GarminSession / parseCredential、各业务委托方法。
- **GarminSession 是否独立成文件**：它是认证、列表、上传、健康四类的共享类型，可考虑移到独立文件 GarminSession.kt；但移之前确认所有引用点（parseCredential、diHeaders、connectHeaders、connectApiCookieHeaders 均以它为参数/返回类型），且不要与 GarminOAuthHelper 的 OAuth1Token / OAuth2Token 混淆。
- **WebView 层是否单抽 GarminWebViewBridge**：prepareWebView / injectCookies / fetchViaWebView / uploadViaWebView / downloadViaWebView / uploadBinaryViaWebView / loadJsonViaWebView。等步骤 3-5 完成后再决定——三者都依赖它，抽早了会同时改三处；抽时注意 sharedWebView / sharedWebViewReady / webViewLoading / mainHandler 是 companion 状态，WebMessageListener（downloadFitOnce 内）与 WebViewClient 回调都在主线程，搬移不要改线程模型。
- **死代码清理**：connectApiCookieHeaders / loadJsonViaWebView / downloadViaWebView / uploadBinaryViaWebView 四处确认无调用后单独一提交删除（不要混在搬移提交里）。
- **目标形态**：GarminApi 只剩 companion 常量/状态 + 委托门面；各 *Api 为 internal 类，通过构造入参持有 GarminApi（沿用 GarminWellnessApi 模式）或共享的 GarminDeps。

## 顺序与节奏

推荐：认证（3）→ 列表（4）→ 上传（5）→ WebView 层/收尾（6）。
理由：认证依赖最少且风险最高（先啃、单独回归登录）；列表与上传共享同一套 header / WebView 依赖，认证先行可验证 internal helper 模式；上传最后，因为它与列表共用去重逻辑。
每步一提交：只搬一个类 + 委托 + 可见性调整；跑验证脚本；有 SDK 时编译 + 对应回归（登录 / 列表拉取 / 下载 / 上传 / 健康同步至少各跑一遍中国区与国际区）。

## 风险总表

- 冷却 key 变更导致旧冷却失效（已规避：verbatim，key 不变；后续步骤禁止改 GarminCooldown）。
- 委托签名漂移（返回类型 / 默认参数 / 可空性必须逐字一致；Kotlin 默认参数调用方可能用命名参数）。
- companion 常量外部引用（LOGIN_URL_COM/CN、isCooldown 等被 MainActivity / LoginWebActivity / LoginFragment / AutoSyncWorker 直接引用，移常量前先 grep 全仓）。
- @Volatile 共享状态（lastGarminAuthError、sharedWebView、debugLogs）不要复制成两份。
- OAuth1 密钥常量保留在原文件 companion 内，未移动、未复制（该常量是与 garth 同源的公共密钥，本次不移动、不复制、不轮换；其值不写入任何新文件与汇报）。
- 无 Android SDK，本地无法编译：本拆分只做了静态检查（见下），编译与真机回归待有 SDK 环境补做，不要谎称编译通过。

## 验证方法（本次已跑，0 失败）

- /tmp/check_garmin.py（本次任务脚本，不在仓库内）：Kotlin 感知括号平衡扫描（处理 //、/* */、"..."、"""..."""、字符字面量）；GarminApi.kt 不再定义被抽走的方法；委托存在且唯一；新文件引用的符号在原文件真实存在；verbatim 对比（从拆分前备份 /tmp/GarminApi.kt.orig 重建期望体，只允许 dedent 与约定的前缀/可见性改动）；新文件不含密钥常量；OAuth1 密钥常量出现次数与原文件一致（声明与使用各 1 处）。
- 待补：有 SDK 后跑 `./gradlew :app:compileDebugKotlin`，再做登录 / 同步回归（国际区与中国区各一遍）。

# LoginWebActivity 剩余拆分蓝图

> 状态（2026-11-20）：已完成第 1 步。`LoginWebActivity.kt` 由 1830 行 → 1606 行；
> iGPSPORT 原生登录六个方法已抽至 `IgpsportLoginHandler.kt`（280 行），Activity 仅保留同名委托
> （`setupIgpNativeLogin` / `switchToIgpWebLogin` / `switchBackToIgpSms` /
> `setupIgpWebView` / `sendIgpSmsCode` / `loginIgpBySms` / `startIgpCountdown`，
> 现位于 `LoginWebActivity.kt:712-731`）。
> 本文件只规划剩余部分，不改行为；行号以拆分后文件为准。
> 约束：不动 `MainActivity.kt`、`GarminApi.kt`、`.github/`、`app/src/test/`；
> 本机无 Android SDK，无法本地编译——每步以真机冒烟 + `git diff` 复核为准。

## 0. 已确立的拆分模式（后续照此办）

- 每个平台一个 `XxxLoginHandler` 类，持 `LoginWebActivity` 引用（见 `IgpsportLoginHandler`）。
- Handler 方法体 verbatim 搬移，只改引用前缀：`webView` → `activity.webView`、
  `detected` → `activity.detected`、`findViewById` → `activity.findViewById`、
  `TYPE_*/RESULT_*` → `LoginWebActivity.TYPE_*` / `LoginWebActivity.RESULT_*`、
  `this@LoginWebActivity` → `activity`；字符串插值里的 `$checkCount` 要改写为
  `${activity.checkCount}`（`$activity.checkCount` 会被解析成 `$activity` + 字面量，
  是本次拆分中真实踩到的坑），`R.id.progressBar` / `R.id.webView` 不得加前缀。
- Handler 需要的 Activity 共享状态改为 `internal`（目前已是 internal 的：
  `webView`、`progressBar`、`detected`、`checkCount`、`igpHttpErrorCount`、
  `checkRunnable`、`MOBILE_UA`；`confirmManualLogin()` 已改为 `internal`）。
- Activity 保留同名委托方法，调用点（`onCreate`、`checkRunnable`、各回调）一律不动。
- 每步一个 handler、一次提交粒度；不要把多个平台塞进同一步。

## 1. 共享状态总表（谁都别私自复制一份）

这些是拆分时的依赖清单，也是禁区——复制即出竞态：

| 状态 | 位置 | 用途 / 注意 |
|---|---|---|
| `webView` / `progressBar` | `LoginWebActivity.kt:158-159`（internal） | 全部 handler 共用；`setupIgpWebView` 会重新 `findViewById` 赋值 |
| `loginType` | `:160`（private，暂不开放） | 路由唯一依据；handler 如需读，应经 Activity 的 `internal fun` 或构造时传入 |
| `detected` | `:161`（internal） | **成功守门员**：置 true 后 `checkRunnable` 停轮询、`detectLogin` 短路；佳明 JS 桥在 JS 线程写它，原有竞态保持原样，别“顺手修” |
| `verifying`（`AtomicBoolean`） | `:167`（private） | 黑鸟 / 佳明 / 行者 / 两步路四路检测共用同一把锁，防并发验证；**必须留在 Activity 单例**，handler 各自 new 一个即失效 |
| `checkCount` | `:168`（internal） | 轮询计数；`== 1` 时启动 `checkRunnable`，佳明日志限频也用它 |
| `checkRunnable` | `:171`（internal） | 1s 轮询 `detectLogin()`；`switchBackToIgpSms` / `onDestroy` 会 `removeCallbacks` |
| `urlHistory` | `:166`（private） | Wahoo 调试 URL 历史；`confirmManualLogin` 的 Wahoo 分支弹窗用它 |
| `pendingClean` / `pendingCleanDone` | `:164-165`（private） | 注销后首次加载清理流程（`onCreate` + 通用 `onPageFinished`），未抽完通用 WebViewClient 前别动 |
| `igpReloadCount` | `:162`（private） | 只属于 `detectIgpsport`；随该方法一起迁入 `IgpsportLoginHandler` |
| `igpHttpErrorCount` | `:163`（internal） | IGP 原生 handler 与通用 WebViewClient 各一份计数语义（各限 1 次），迁 `detectIgpsport` 时别合并 |
| `lastReportedLoginError` | `:169`（private） | 只属于佳明 JS 桥错误去重；随 `GarminJsBridge` 一起迁 |
| `twoBuluBrowseMode` / `lastKmlTrack` | `:1121-1122`（private） | 只属于两步路；随 `detectTwoBulu` 一起迁 |
| `TAG = "LoginWeb"` | companion（private） | 各 handler 自带同名同值常量，不要改 Activity 的可见性去共享 |

## 2. 先抽的共享小件（第 2 步，做所有 detect* 之前）

### 2.1 `extractCookieValue` → `LoginWebCookieUtils`（object，纯函数）

- 现状：`LoginWebActivity.kt:1433`，约 8 行；调用方：`detectGarmin`、`detectCoros`、
  `detectXingzhe`、`detectOutbase`、`confirmManualLogin`（黑鸟/行者/Outbase 分支）。
- 依赖：无（纯字符串处理）。风险：几乎为零；注意它按 `=` 切分、key 忽略大小写，
  `sessionId` 与 `session_id` 是两个不同 key，调用方各有 fallback，别合并。
- 抽完后各 handler 改为 `LoginWebCookieUtils.extractCookieValue(...)`。

### 2.2 `clearPlatformWebLogin` / `clearDomainCookies` / `loginTypeToDataSource` —— 先不动

- `clearPlatformWebLogin`（companion，`LoginWebActivity.kt:84`）是注销清理入口，
  `onCreate` 的 `pendingClean`、`switchToIgpWebLogin`、MainActivity 注销流程都在用；
  `clearDomainCookies`（`:186`）、`loginTypeToDataSource`（`:205`）同理。
- 待全部 handler 落地、Activity 只剩壳时，再考虑收到 `PlatformLoginCleanup`；
  提前动会同时改 onCreate 清理时序与注销路径，风险大于收益。

## 3. detect* 处理器分组蓝图（按平台）

`detectLogin()` 路由（`LoginWebActivity.kt:733`）最后再动；每组先迁方法体，
路由的 `when` 分支改成调 handler，保持分支顺序不变。

### 3.1 低风险组：纯 cookie / localStorage 单次检测（第 3–5 步，先做）

| 平台 | 方法（现行号） | 新类 | 依赖的共享状态 | 风险点 |
|---|---|---|---|---|
| 高驰 CN/INT | `detectCoros(cn)` `:1009` | `CorosLoginHandler` | `CookieManager`、`detected`、`extractCookieValue` | HttpOnly 的 `CPL-coros-token` 读不到即不算登录；`region` 为空时默认 CN=`2` / INT=`1`，别改默认值；返回格式 `"$token;$regionId;$all"`（分号拼接，MainActivity 按位解析） |
| Outbase | `detectOutbase` `:1405` | `OutbaseLoginHandler` | `CookieManager`、`detected`、`extractCookieValue` | `sessionId` 取不到时 fallback `session_id`；网关 cookie（`melon-gateway.immomo.com`）要 `distinct()` 后拼接进 `RESULT_EXTRA`，丢了会导致后续 CDN 鉴权失败 |
| 迈金 | `detectMagene` `:1368` | `MageneLoginHandler` | `webView`（`evaluateJavascript` 读 `localStorage['token'/'refresh_token']`）、`detected` | JS 返回值要经 `removeSurrounding("\"")` + 反转义再 `JSONObject` 解析；`NO_TOKEN` / `ERR:` / 长度 `< 30` 直接返回；token 长度门限是 `> 30`，refresh 可空 |
| 行者 | `detectXingzhe` `:1337` | `XingzheLoginHandler` | `CookieManager`、`verifying`、`detected`、`extractCookieValue`、`XingzheApi.verifySession` | `sessionid` 长度 `<= 10` 直接返回；`GlobalScope.launch` + `verifying` 失败复位，成功才 `detected = true`；`csrftoken` 放 `RESULT_EXTRA` |
| 黑鸟 | `detectBlackbird` `:754` | `BlackbirdLoginHandler` | `CookieManager`、`verifying`、`detected` | **只凭 cookie 会误判**：未登录也有 `JSESSIONID`，必须调 `/api/user` 验证 `status == "ok"` 且有 `nickname`/`userName`；验证失败必须 `verifying.set(false)`，否则轮询永久卡住 |
| 百锐腾 | `detectBryton` `:801` | `BrytonLoginHandler` | `webView`（读 `localStorage['Meteor.loginToken'/'Meteor.userId']`）、`CookieManager`、`detected` | 双通道：localStorage 优先（`token.length > 10 && userId 非空`），cookie（`length >= 20`）兜底；返回格式 `"$token;$userId;$cookie"`，无 token 时为 `";;$cookie"`，格式别改 |

### 3.2 iGPSPORT WebView 检测（第 6 步，补齐 IGP）

- 方法：`detectIgpsport`（`LoginWebActivity.kt:1280`），**不新开类**，直接并入已有的
  `IgpsportLoginHandler`（它已持有 `webView` / `detected` / `igpHttpErrorCount` 等）。
- 一并迁入：`igpReloadCount`（`:162`，随方法走，改 internal 即可）。
- 依赖：`webView`、`detected`、`lifecycleScope`、`IgpsportApi().getUsername(token)`、
  `CookieManager.removeAllCookies`。
- 风险点：**本文件最高危的校验逻辑之一**。localStorage 读到 `Bearer ` 前缀 token 后必须
  先调 API 校验有效性（防旧过期 token）；无效时 `localStorage.clear()` + 清全部 cookie
  再 `reload()`，限 2 次，第 3 次直接 `RESULT_CANCELED` + `finish()`；`removeAllCookies`
  会清掉其他平台 cookie，是已知副作用，不要“优化”成按域清除——行为会变。
  另注意 `detectIgpsport` 与 `setupIgpWebView` 的 HTTP 错误重载共用 `igpHttpErrorCount`
  的限 1 次语义，计数器不要重置错地方。

### 3.3 两步路（第 7 步，状态机，单独做）

- 方法：`detectTwoBulu`（`:1072`）、`enterTwoBuluBrowseMode`（`:1124`）、
  `twoBuluInjectKmlClick`（`:1145`）；字段 `twoBuluBrowseMode` / `lastKmlTrack`（`:1121-1122`）一并迁入。
- 新类：`TwoBuluLoginHandler`。
- 依赖：`CookieManager`、`verifying`、`detected`、`webView`（`setDownloadListener`、
  `evaluateJavascript`）、`TwoBuluApi.saveKmlDownload`；`onPageFinished` 里调用
  `twoBuluInjectKmlClick(url)` 的钩子（`:451`，佳明分支的 `onPageFinished` 内）先留在
  Activity，待第 9 步 WebViewClient 统一时再跟过去。
- 风险点：**登录成功后不 `finish()`**——`enterTwoBuluBrowseMode` 只 `setResult` 不关页面，
  进入“浏览即下载 KML”模式；`detectTwoBulu` 的验证接口是 `queryList.htm`，响应含
  `nologin` 或长度 `<= 50` 即未登录；KML 点击 JS 用 `daimou03` 真机选择器
  （`#base_area > div:nth-child(8)`），页面改版即失效，注入失败是静默的；
  `setDownloadListener` 的 KML 判定（URL / mime / disposition 三路）别收窄。

### 3.4 Wahoo + OAuth2 回调家族（第 8 步，先审计拦截点再迁）

- 方法：`detectWahoo`（`:1054`）、`extractWahooCode`（`:1031`）、
  `isOAuth2CallbackType`（`:1050`）。
- 新类：`OAuth2CallbackLoginHandler`（Wahoo / Suunto / Strava / Polar / Fitbit /
  Withings / TrainingPeaks 共用，`detectLogin` 里后五者本来就复用 `detectWahoo()`）。
- 依赖：`webView.url`、`detected`、`extractWahooCode`；`urlHistory` 只在
  `confirmManualLogin` 的 Wahoo 调试弹窗里用，不随方法迁移。
- 风险点：
  - **授权码捕获有 6 处，不止 `detectWahoo`**：佳明分支 `shouldOverrideUrlLoading`
    （`:462`）、通用分支 `onPageStarted`（`:536`）、`onReceivedError`（`:585`）、
    `onReceivedSslError`（`:618`）、`shouldOverrideUrlLoading`（`:649`）、
    `doUpdateVisitedHistory`（`:668`）。先迁 `detectWahoo` + `extractWahooCode`，
    6 处拦截点保持原样；待第 9 步再把 6 处收敛为一个 `OAuth2CallbackInterceptor`，
    一处一处替换、每处真机验证（`localhost:8080` 的 SSL 错误路径最容易丢码）。
  - `extractWahooCode` 同时支持 query `?code=` 与 fragment `#code=`，两路都保留。
  - **已知行为（不要顺手“修”）**：`detectWahoo` 成功时 `RESULT_LOGIN_TYPE` 硬编码
    `TYPE_WAHOO`，Suunto 等平台走同一分支时回传的也是 `TYPE_WAHOO`；改之前先确认
    MainActivity 是否依赖这一行为，另开任务处理。
  - `onReceivedSslError` 里捕获成功后要 `handler?.cancel()` 并 `return`，
    失败才 `handler?.proceed()`；顺序反了会导致重复捕获或放行失败。

### 3.5 佳明（第 9 步，最大块，最后做）

分三小步，顺序不可乱：

1. **WebView 检测**：`detectGarmin(cn)`（`:928`）→ `GarminLoginHandler`。
   依赖：`CookieManager`、`verifying`、`detected`、`webView`（读 `csrf-token`）、
   `checkCount`（日志限频）、`GarminApi` 调试日志池。
   风险：JWT_WEB + session 两个 cookie **缺一不可**（`gc-api` 缺一返 401），长度门限各
   `< 20` 即继续等；凭证是 JSON `{"jwt_web","session","csrf","cookies"}`，
   `cookies` 要带全部 cookie（含 `cf_clearance` 等 Cloudflare 验证 cookie）；
   CSRF 从 `meta[name=csrf-token]` 或 HTML 正则取，取不到传空串（不阻塞登录）。
2. **JS 桥 + 注入器**：`GarminJsBridge`（`:1454`，`onTicket` / `onLoginError`）、
   `injectGarminListener()`（`:1522`）、`exchangeGarminTicket`（`:984`）、
   `flushGarminDebugToPersist`（`:843`）、`copyLogText`（`:857`）、
   `showGarminResultDialog`（`:868`）、字段 `lastReportedLoginError`（`:169`）。
   依赖：`detected`、`loginType`（区分 CN/COM）、`GarminApi`、`GarminOAuthHelper`、
   `PrefsManager.getPersistLogs/appendPersistLog`。
   风险：`onTicket` 在 JS 线程回调，要求 ticket 以 `ST-` 开头且长度 `>= 10`，
   置 `detected = true` 后立即 `exchangeGarminTicket`；`onLoginError` 有强/弱信号
   两级分类（密码错误 / 两步验证 / 风控限流），分类关键词与弹窗文案是 v8.3.4 定稿，
   别改文案；`showGarminResultDialog` 的“仍然继续”要二次确认，`onContinue` 回调链
   必须原样保留；日志尾巴取 `PrefsManager` 持久日志后 18 行、取不到 fallback 内存
   `GarminApi.debugLogs`，两路都要在（弹窗日志 = 运行日志页是 v8.3.4 的明确要求）。
3. **onCreate 佳明 mobile SSO 原生登录分支**（`LoginWebActivity.kt:265-487`，
   含嵌套 `doGarminLogin` 与 `buildMsgWithLog`）：最后迁，单独成
   `GarminMobileLoginHandler` 或并入 `GarminLoginHandler` 的一个方法。
   依赖：`mobileLoginLayout` 内全部 View、`GarminApi`（OAuth1 / mobile SSO /
   冷却缓存）、`PrefsManager`、`flushGarminDebugToPersist`、`showGarminResultDialog`。
   风险：**通道顺序是业务核心**——国际版 OAuth1 → mobile SSO，中国版 mobile SSO 优先、
   OAuth1 兜底（当前 `isCN = false` 硬编码在分支内，中国版走另一入口，别动）；
   致命错误（密码错误 / 两步验证 / 风控限流）一旦出现立即停全部后续通道并弹窗，
   只有用户点“仍然继续”才 `ignoreFatal = true` 重试；冷却缓存只提示不拦截，
   登录成功才 `clearCooldownFor`；`tvFallbackLogin` 回退 WebView 时要同时显示
   `webLoginContainer` + `webView` + `btnConfirmLogin`（v8.0.9 白屏修复，别漏）。

## 4. 最后收尾（第 10–11 步）

### 4.1 `confirmManualLogin`（`:1167`）——按平台拆，倒数第二

- 它是各平台“手动确认”分支的集合：黑鸟 / 百锐腾 / iGPSPORT / 行者 / 迈金 /
  Outbase / 佳明 CN-COM / 高驰 CN-INT / Wahoo，每个分支调对应 handler 的检测方法。
- 做法：每个 handler 增加 `confirmManualXxx()`，Activity 的 `when` 分支只剩一行转发；
  Wahoo 分支的调试弹窗（`urlHistory` + 当前 URL + 复制到剪贴板）留在 Activity，
  因为 `urlHistory` 不迁移。
- 风险：`TYPE_IGPSPORT` / `TYPE_MAGENE` 分支是异步 `evaluateJavascript` 回调，
  `detected = false` 复位 + Toast 提示在回调内，`return` 的位置（`when` 内 `return`
  表示直接结束、不执行末尾 `finish()`）**必须逐分支核对**；佳明/高驰分支是同步调
  `detectGarmin`/`detectCoros` 后判断 `detected`，语义不同，别统一成一种。

### 4.2 `detectLogin` 路由 + WebViewClient 统一——最后

- `detectLogin()`（`:733`）的 `when` 在各 handler 落地后，改为查表/转发；
  在此之前它是唯一路由，别提前改成反射或 map（行号与分支顺序是排障依据）。
- 通用分支与佳明分支各有一套 `WebViewClient` / `WebChromeClient`
  （`onCreate:489-703` 与 `:265-487`），加上 `setupIgpWebView` 的第三套
  （已在 `IgpsportLoginHandler` 内），三套的 `onPageFinished` / `onReceivedHttpError` /
  `onRenderProcessGone` / `onProgressChanged` 大量重复——收尾时再抽
  `LoginWebViewClientFactory`，先抽 Wahoo 拦截（3.4）与 IGP 错误重载（已抽），
  最后抽 `pendingClean` 流程；每抽一处，真机验证对应平台登录 + 注销重登。
- `onDestroy`（`removeCallbacks(checkRunnable)`）与 `onBackPressed`
  （`webView.canGoBack()`）永远留在 Activity。

## 5. 每步的验证清单（无 SDK 可本地编译时）

1. `python3` 检查：括号平衡；被抽方法在 Activity 内无重复定义、委托存在；
   handler 引用的 `activity.*` / `LoginWebActivity.*` / `R.id.*` 真实存在
   （第 1 步的检查脚本见 `/tmp/check_split.py`，下次按新方法名复用）。
2. `git diff --stat`：只动 `LoginWebActivity.kt` + 新增 handler + 本文件；
   不出现 `MainActivity.kt` / `GarminApi.kt` / `.github/` / `app/src/test/`。
3. `git diff` 逐行读：方法体除前缀外 verbatim；重点看字符串插值（`${...}`）、
   `return@...` 标签、`this` 指向（`Runnable` 内的 `this` 是 Runnable 自身）。
4. 真机冒烟（每平台至少）：正常登录成功、错误输入提示、注销后重登不沿用旧账号、
   验证码倒计时 60s、WebView 崩溃/HTTP 错误重载；佳明另加：票据捕获、致命错误弹窗、
   “仍然继续”二次确认；两步路另加：浏览模式 KML 自动下载。

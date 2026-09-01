# 🚴 鸡翅幸哲迈进OB(开发体验版)

<p align="center"><img src="app_icon/app_icon_512.png" width="128" alt="App图标"/></p>

**让运动数据自由流动 — 十一平台运动数据互传工具**

> 📱 **App图标**：位于 `app_icon/` 目录（512/192/144px），供开发者/分发平台使用。
[![Android](https://img.shields.io/badge/Platform-Android-green)](https://developer.android.com)
[![Kotlin](https://img.shields.io/badge/Language-Kotlin-blue)](https://kotlinlang.org)
[![License](https://img.shields.io/badge/License-MIT-yellow)](LICENSE)
[![Version](https://img.shields.io/badge/Version-v6.5.2-brightgreen)]()
[![Dev](https://img.shields.io/badge/Type-开发体验版-orange)]()

一款 Android 运动数据迁移工具（**开发体验版**），支持在 **iGPSPORT / 行者 / 迈金 / 黑鸟单车 / 百锐腾 / Outbase / 佳明国际 / 佳明中国 / 高驰中国 / 高驰国际 / Wahoo** 十一平台之间自由同步运动记录（FIT/GPX），支持国内区与国际区互传。

> ⚠️ **开发版不稳定且用且珍惜**，仅供测试体验，正式版请使用 [sync-igpsport-magene-onelap-xingzhe-data-to-outbase](https://github.com/Anathleticbicyclist/sync-igpsport-magene-onelap-xingzhe-data-to-outbase)。

---

## 📱 应用信息

| 项目 | 内容 |
|------|------|
| 应用名称 | 鸡翅幸哲迈进OB(开发体验版) |
| 包名 | `com.jichi.ob.dev` |
| 当前版本 | v6.5.2 |
| 最低系统 | Android 8.0 (API 26) |
| 目标系统 | Android 16 (API 36) |
| 开发语言 | Kotlin |
| 构建工具 | Gradle 8.13 + AGP 8.13.0 |

---

## ✨ 功能特性

### 1. 十一平台数据互传（逆向流动）

> **注意**：Outbase 为聚合平台，**仅支持上传（作为同步目标），不支持作为数据来源下载**。其余五个平台均可作为来源下载，也可作为目标上传。

| 平台 | 下载(源) | 上传(目标) | 说明 |
|------|:---:|:---:|------|
| **iGPSPORT** | ✅ | ✅ | 迹驰码表数据，OSS直传上传 |
| **行者** | ✅ | ✅ | 行者APP数据，官方开放API |
| **迈金** | ✅ | 🚧 开发中 | 迈金/顽鹿OTM数据，支持GCJ-02→WGS84坐标转换；上传功能开发中（暂不可作为同步目标） |
| **黑鸟单车** | ✅ | ✅ | 黑鸟单车数据；仅接受FIT，GPX源自动用官方gpx2fit转换后上传 |
| **百锐腾** | ⚠️ | 🚧 开发中 | Bryton Active数据；上传功能开发中（暂不可作为同步目标）；**官方未开放FIT下载接口，不可作为来源下载轨迹** |
| **Outbase** | ❌ | ✅ | **仅目标平台**，支持活动上传，不可作为来源 |
| **佳明国际** | ✅ | ✅ | Garmin Connect 国际区；上传自动FIT设备伪装为Garmin Edge 830 |
| **佳明中国** | ✅ | ✅ | Garmin Connect 中国区；上传自动FIT设备伪装为Garmin Edge 830 |
| **高驰中国** | ✅ | ✅ | COROS 中国区（teamcnapi），三区域自动路由，OSS+fit/import上传 |
| **高驰国际** | ✅ | ✅ | COROS 国际/欧洲区（teamapi/teameuapi），AWS S3上传 |
| **Wahoo** | ✅ | ❌ | Wahoo SYSTM/ELEMNT，仅下载（无公开上传API），维护者内置凭证用户无需注册 |

**可同步的组合**（来源 → 目标）：
- iGPSPORT / 行者 / 迈金 / 黑鸟单车 / 百锐腾 / 佳明 / 高驰 / Wahoo → Outbase（上传）
- iGPSPORT / 行者 / 黑鸟 / 佳明(CN/COM) / 高驰(CN/INT) 之间任意互传
- **国内区↔国际区互传**：佳明国际↔佳明中国、高驰中国↔高驰国际（拆分为独立平台，天然支持）
- 迈金 / 百锐腾 作为同步目标：🚧 开发中（暂不可用）
- 黑鸟单车 作为同步目标：✅ 已开放（仅接受FIT）
- Wahoo 作为同步目标：❌ 无公开上传API（仅可作为来源下载）

### 2. 数据来源记忆
自动记住上次选择的同步来源，重启APP后自动恢复，无需重复选择。

### 3. 文件本地存储
下载的FIT/GPX文件自动保存到手机 `Download/鸡翅幸哲迈进OB/` 目录，文件管理器可直接查看，设置页显示存储路径。

### 4. 迈金GCJ-02→WGS84坐标转换
- 七牛云直链下载的FIT（WGS84坐标）→ 自动跳过转换
- fit_content接口下载的FIT（GCJ-02坐标）→ 执行转换
- 基于开源验证方案 [dwmer0308-a11y/magene-fit-strava-fix](https://github.com/dwmer0308-a11y/magene-fit-strava-fix) 移植
- 用户可通过开关自主选择是否开启
- 青岛地区实测偏移量约450米，符合GCJ标准偏移

### 5. 同步记忆 + 跳过上限
- 已同步过的记录本地记账，再次同步自动跳过不重复下载
- 跳过历史数据上限：3000 → **10000条**

### 6. 后台常驻自动同步
- 开关控制，检测间隔可调：**30秒 ~ 1小时**，默认5分钟
- 新数据自动同步到目标平台
- 任务栏常驻通知显示最近检测结果
- 内置后台常驻指引：锁定后台步骤、电池优化白名单、各品牌自启动设置路径

### 7. 测试下载功能
在停止和复制按钮之间提供「测试」按钮，下载1条记录保存到本地，验证下载功能是否正常，并有成功提示。

### 8. 登录状态显示
登录后显示账户名称，已登录状态一目了然。

---

## 🏗️ 项目结构

```
app/src/main/java/com/jichi/ob/
├── MainActivity.kt              # 主界面，同步逻辑核心
├── MageneWebUploader.kt         # 迈金(顽鹿OTM)WebView上传器（v6.2.3）
├── AutoSyncService.kt           # 后台自动同步服务（常驻通知+电源保护）
├── api/
│   ├── IgpsportApi.kt          # iGPSPORT API（含OSS直传上传）
│   ├── XingzheApi.kt           # 行者 API
│   ├── MageneApi.kt            # 迈金 API（含七牛云/fit_content双路径下载+坐标转换）
│   ├── BlackbirdApi.kt         # 黑鸟单车 API
│   ├── BrytonApi.kt            # 百锐腾 API
│   ├── OutbaseApi.kt           # Outbase API（仅上传）
│   └── UploadEngine.kt         # 通用上传引擎（六平台分发）
├── model/
│   └── Activity.kt              # 数据模型（活动记录、数据源枚举、上传可用性）
├── ui/
│   └── LoginWebActivity.kt      # WebView登录页（各平台登录）
└── util/
    ├── PrefsManager.kt          # 偏好设置管理（登录态、同步记忆、设置项）
    └── WebBridge.kt             # WebView JS桥接

app/src/main/assets/
├── magene_fix.js                # 迈金FIT坐标转换核心（移植自开源验证方案）
├── magene_fix.html              # 坐标转换WebView容器
├── bridge.html                  # 通用JS桥接页(GPX→FIT官方gpx2fit调用入口)
└── gpx2fit.js                   # Outbase官方gpx2fit库(自包含49模块版)
```

---

## 🔧 关键技术点

1. **WebView登录**：各平台均通过WebView加载官方登录页，拦截登录回调获取Token/Cookie，无需逆向账号密码
2. **FIT坐标转换**：通过隐藏WebView执行JavaScript，解析FIT二进制文件中的record消息，修正经纬度坐标
3. **迈金下载双路径**：优先七牛云直链（durl），失败回退fit_content接口（官方网页端同款）
4. **逆向流动上传引擎**：`UploadEngine.kt` 统一分发，每平台独立适配官方上传通道（iGPSPORT OSS直传 / 行者官方API / 黑鸟/百锐腾官方上传）
5. **顽鹿WebView上传通道**：顽鹿 `upload/fit` 拒绝程序化multipart，`MageneWebUploader` 用隐藏WebView加载顽鹿页+注入API token（localStorage）保持登录态，`onShowFileChooser` 通过 FileProvider 返回本地FIT，由WebView赋给页面input.files，等价用户手动选择上传
6. **协程异步**：全部网络请求使用Kotlin Coroutines，主线程安全
7. **本地持久化**：SharedPreferences存储登录态、同步记录、设置项

---

## 🛠️ 构建说明

### 环境要求
- JDK 17
- Android SDK Platform 36 + Build Tools 35.0.0
- Gradle 8.13（项目自带wrapper）

### 构建步骤
```bash
# 克隆项目
git clone https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform.git
cd sports-data-sync-multiplatform

# 配置local.properties
echo "sdk.dir=/path/to/android-sdk" > local.properties

# 构建Release APK
./gradlew assembleRelease

# 输出位置
# app/build/outputs/apk/release/app-release.apk
```

### 签名配置
开发体验版使用独立签名密钥（`jichi-ob-dev.keystore`），与正式版签名不同，可同时安装。

---

## 📋 更新日志
### v6.5.2 (2026-09-01) — 佳明登录修复 + 高驰OSS上传修复
1. **佳明登录修复**：v6.5.1 误将佳明SSO登录页改为Mobile UA导致页面异常"登录没反应"，改回桌面UA；登录态cookie检测保留（避免2秒误判）
2. **高驰OSS上传修复**：阿里云OSS签名Date头未设置GMT时区（默认北京时间差8小时），导致所有上传签名验证失败返回"高驰OSS上传失败"；已修复Date头时区为GMT
3. **高驰STS解析加固**：兼容 code/result/status 多种返回格式，增加STS凭证和OSS上传失败日志，便于后续调试
4. **版本号**：v6.5.1(653) → v6.5.2(654)

### v6.5.1 (2026-09-01) — Wahoo免注册改造 + 佳明登录修复 + 同步目标chip补全
1. **Wahoo免注册**：去掉用户手动输入 client_id/client_secret 弹窗，改为维护者在 developers.wahooligan.com 免费注册一次后内置凭证，用户直接用Wahoo账号登录授权即可，完全感知不到注册环节
2. **佳明登录修复**：detectGarmin 增加登录态cookie检测（GARMIN-SSO/SID/IDENTITY/SESSIONID/JSESSIONID任一），避免SSO页未登录普通cookie触发2秒误判"登录成功"；WebView增加 onRenderProcessGone 崩溃防护（渲染进程崩溃时自动reload不闪退）；佳明登录页改用Mobile UA降低JS复杂度
3. **同步目标chip补全**：chipGroupTarget 补全佳明国际/佳明中国/高驰中国/高驰国际4个新平台chip，与source平台顺序对齐
4. **版本号**：v6.5.0(652) → v6.5.1(653)

### v6.5.0 (2026-09-01) — 新增佳明/高驰/Wahoo三平台同步 + UI两列布局 + 国内国际互传

**新增平台**：
1. **佳明国际 / 佳明中国**：支持下载（FIT，zip自动解压）和上传（upload-service），上传前自动将非Garmin设备FIT伪装为 **Garmin Edge 830**（manufacturer=1, product=3122），重算CRC-16，解决佳明拒收第三方设备FIT的问题
2. **高驰中国 / 高驰国际**：支持下载（FIT）和上传（STS临时凭证→阿里云OSS/AWS S3→fit/import注册），三区域（1国际/2中国/3欧洲）登录后自动路由，支持中国区↔国际区互传
3. **Wahoo**：支持下载（OAuth2授权码→access_token→workouts列表→CDN直链FIT），**仅下载无上传**（Wahoo无公开上传API）

**国内区/国际区互传**：
- 佳明国际(GARMIN_COM) ↔ 佳明中国(GARMIN_CN) 拆分为独立平台，支持双向互传
- 高驰中国(COROS_CN) ↔ 高驰国际(COROS_INT) 拆分为独立平台，支持双向互传
- 所有新平台活动数据均为 WGS84 标准坐标 + UTC 标准时间，零坐标转换、零时间偏移

**UI 改造**：
- 平台登录卡片从单列竖排改为 **GridLayout 两列网格布局**，11个平台卡片统一色条/标题/状态/按钮高度，对齐排版，解决单列页面过长问题

**版本号**：v6.5.2 (versionCode 654)

### v6.4.3 (2026-08-31) — 修复行者/黑鸟上传时间快8小时：gpx2fit的+8小时参数化

**根因深入分析**：
1. `bridge.html`官方gpx2fit转换时硬编码把GPX时间+8小时（注释："Outbase按UTC展示→+8小时对齐北京时间"）
2. Outbase解析FIT时直接按时间戳数字显示（不加时区），所以+8小时正确
3. 行者/黑鸟解析FIT时按UTC标准解析再转北京时间显示，+8小时导致显示时间快8小时
4. iGPSPORT/迈金不用bridge.html（OSS直传），不受此问题影响

**一次性解决方案**：
1. `bridge.html`的`__convertGpx(count, add8Hours)`新增`add8Hours`参数，默认true（兼容Outbase）
2. `WebBridge.convertGpxToFit(gpxData, add8Hours=true)`透传参数
3. Outbase上传：不传参（默认true，+8小时，Outbase按数字显示正确）
4. 行者上传：`add8Hours=false`（UTC标准时间戳，行者转北京时间显示正确）
5. 黑鸟上传：`add8Hours=false`（同上）

**版本号**：v6.4.3 (versionCode 651)

### v6.4.2 (2026-08-30) — 修复黑鸟上传行者：用官方gpx2fit转FIT(替代自研转换器)

**根因深入分析**：
1. v6.4.1用自研GpxToFitConverter转FIT，但uploadToXingzhe非suspend函数，且日志无转换输出→转换未生效
2. 坐标：黑鸟下载时convertCoord=true已做GCJ-02→WGS84，上传行者/迈金/iGPSPORT/Outbase坐标已是WGS84，不需再转
3. 时间：黑鸟GPX时间为UTC，转FIT后FIT是标准UTC时间戳(1989基准)，行者解析FIT用UTC→时间正确，不需+8

**修复**：
1. uploadToXingzhe改为suspend函数
2. GPX→FIT转换改用Outbase同款官方gpx2fit.js(WebBridge.convertGpxToFit)，自研GpxToFitConverter兜底
3. 行者从localTimeTargets移除(v6.4.1已做)：转FIT后标准UTC，不需+8
4. 传感器数据：官方gpx2fit完整保留心率/踏频/功率/海拔/速度

**版本号**：v6.4.2 (versionCode 650)

### v6.4.1 (2026-08-30) — 修复黑鸟上传行者HTTP 500 + 时间偏移

**根因**：行者上传接口`/api/v1/fit/upload/`只接受FIT文件(字段名`fit_file`)，但黑鸟下载的是GPX，代码直接用GPX内容+`.fit`扩展名上传，行者服务器无法解析GPX返回HTTP 500。

**修复**：
1. `uploadToXingzhe`：上传前检测文件格式，GPX先调用`GpxToFitConverter.convert()`转FIT再上传
2. 时间适配：行者从`localTimeTargets`移除——转FIT后FIT是标准UTC时间戳(1989基准)，行者解析FIT用UTC，不需加8小时；否则时间会快8小时
3. 传感器数据：GpxToFitConverter保留心率/踏频/功率/海拔/速度/距离，FIT record点完整写入

**版本号**：v6.4.1 (versionCode 649)

### v6.4.0 (2026-08-30) — 黑鸟全链路定稿 + 统一时间适配矩阵 + 六平台互传能力补齐

> 大版本里程碑。黑鸟单车数据链路经多轮推倒重写后定稿，经14条真实活动原始字段 + 码表BSC500原生记录 + 第三方脚本三重交叉验证；建立全平台统一时间适配矩阵；文件保存改MediaStore解决可见性问题。

**一、黑鸟单车数据链路（定稿）**

1. track固定9字段精确解析
   - 黑鸟 `/api/records/{id}/data` 返回 `content.track` 为分号分隔字符串，每点固定9字段，按位置取值，不再靠数值范围猜测
   - `[0]`纬度(GCJ-02) `[1]`经度(GCJ-02) `[2]`海拔(m) `[3]`功率(0.01W,/100得瓦,含黑鸟估算功率) `[4]`心率(bpm) `[5]`踏频(rpm,0=无) `[6]`速度(0.1km/h) `[7]`相对startTime秒偏移 `[8]`保留(恒0)
   - 传感器写入Garmin TrackPointExtension(hr/cad/power/speed)，0值不写入，避免平台显示0功率/0踏频
2. 时间生成
   - `startTime`(Unix秒,自动识别10位秒/13位毫秒) + `[7]`秒偏移逐点递增
   - 彻底解决同批点时间戳相同导致的速度图爆炸/均速异常
3. 坐标转换
   - 黑鸟为GCJ-02火星坐标，固定执行迭代近似GCJ-02→WGS84转换(与blackbird2wgs.py一致)，青岛地区偏移约450米
   - 与迈金共用同一坐标转换开关
4. 轨迹完整性
   - 点上限3000→50000，长距离骑行不截断、不抽稀，保留完整轨迹
   - metadata补充活动标题/时间
5. 下载格式
   - FIT优先(探测fitUrl/downloadUrl/fileUrl等10+字段+cookie认证+Referer)，FIT失败回退GPX构建
   - GPX构建输出标准UTC带Z，creator用BuildConfig版本号

**二、统一时间适配矩阵（UploadEngine入口）**

- 设计原则：下载端统一产出【标准UTC带Z】GPX作为中间态；上传端按目标平台时区输出
- 源归一化：行者源GPX是"北京时间标Z"，减8转成真UTC；黑鸟/iGPSPORT等源本就是UTC
- 目标分两类：
  - A类（走官方gpx2fit，Date.parse带Z按UTC解析）：Outbase / 黑鸟 → 保持UTC
  - B类（国产平台直接吃GPX、按GPX时钟数字显示不做UTC→本地）：iGPSPORT / 行者 / 迈金 → UTC+8转北京时间
- 自洽验证：行者源→行者 = 减8(归一)+8(目标)=还原原始北京时间，零误差

**三、文件保存可见性（MediaStore）**

- 根因：targetSdk=36下用废弃API `getExternalStoragePublicDirectory` 直接写路径，文件不被MediaStore索引；APP运行在应用双开/工作资料空间(用户ID 999)时物理路径 `/storage/emulated/999/...` 主空间文件管理器找不到
- 修复：Android 10+一律走 `MediaStore.Downloads`，写入 `公共下载/鸡翅幸哲迈进OB`，写入后立即被系统索引，可直接在系统「文件」App下载目录查看/分享；同名先删避免副本；API 26-28回退直接路径
- 同时保留app私有目录(cacheDir)副本，供迈金/百锐腾WebView上传使用

**四、六平台互传能力**

| 平台 | 下载(源) | 上传(目标) | 上传通道实现 |
|------|:---:|:---:|------|
| iGPSPORT | ✅ | ✅ | 官方OSS直传(getSignedUrl→PUT→uploadByOss)，按文件头自动选.fit/.gpx扩展名 |
| 行者 | ✅ | ✅ | 官方 `/api/v1/fit/upload/`(fit_file+md5)，返回workout_id且is_valid=1才判成功；下载FIT优先回退GPX |
| 迈金 | ✅ | 🚧当前禁用 | 通道已实现(优先HTTP `u.onelap.cn/upload/fit`，回退顽鹿WebView)，但UploadSupport仍为禁用，暂不可作为同步目标 |
| 黑鸟单车 | ✅ | ✅ | 仅接受FIT，GPX源用Outbase官方gpx2fit转FIT后上传 `/api/records/upload`；登录检测需/api/user验证(防JSESSIONID误判) |
| 百锐腾 | ⚠️受限 | 🚧当前禁用 | 通道已实现(WebView注入Meteor token+真实文件选择)，但UploadSupport仍为禁用，暂不可作为同步目标；官方未开放FIT下载，不可作来源 |
| Outbase | ❌ | ✅ | 仅目标平台，GPX用官方gpx2fit(自包含49模块版)转FIT上传 |

**五、其他功能**

- 数据来源记忆：自动记住上次同步来源，重启APP自动恢复
- 同步记忆+跳过：已同步记录本地记账(SharedPreferences)，再次同步自动跳过，上限10000条；一键「清记忆」按钮
- 后台常驻自动同步：开关控制，检测间隔30秒~1小时可调(默认5分钟)，任务栏常驻通知显示最近检测结果，内置各品牌后台常驻/电池优化/自启动设置指引
- 测试下载：停止和复制按钮间「测试」按钮，下载1条保存本地验证下载功能
- 登录态：WebView加载各平台官方登录页拦截回调获取Token/Cookie，登录后显示账户名；行者会话预检防过期刷屏
- 迈金坐标转换：七牛云直链(WGS84)跳过，fit_content接口(GCJ-02)转换，基于开源magene-fit-strava-fix移植，用户开关控制
- 文件名统一：`平台_运动时间_运动类型_来源ID.扩展名`，运动类型从标题自动提取
- 协程异步：全部网络请求Kotlin Coroutines，主线程安全

**六、版本号**
- v6.4.0 (versionCode 648)

---

### v6.3.7 (2026-08-30)
1. **修复iGPSPORT上传数量不生效（关键）** — IgpsportApi.getActivities的for循环中`result.add()`后缺少`if (result.size >= limit) break`，导致无论选择1-20多少条，for循环都遍历完当前页20条全部添加，实际同步20条。修复：添加limit条后立即break，数量选择1-1000均正确生效
2. **清理iGPSPORT重复调试代码** — v6.3.6重写时残留重复的调试日志块，已清理
3. **版本号更新** — v6.3.7 (versionCode 637)

### v6.3.6 (2026-08-30)
1. **行者下载改为FIT优先（关键）** — 行者下载优先获取FIT文件（`/api/v1/workout/{id}/fit/`），FIT原生支持功率/心率/踏频/温度等扩展数据，上传各平台均不丢失；FIT下载失败时回退GPX（`/api/v1/pgworkout/{id}/gpx/`）再转换
2. **行者GPX时间统一修正（所有目标平台）** — 在UploadEngine.upload入口处统一对行者GPX做时间修正（减8小时，把本地时间标Z转为正确UTC），覆盖Outbase/iGPSPORT/行者/黑鸟所有上传目标，解决各平台显示时间不是北京时间的问题
3. **iGPSPORT文件名时间排查** — 增强时间字段探测（增加start_time/RideDate/rideDate/StartDate/startDate等字段），调试日志改为Log.w高优先级输出iGPSPORT首活动所有字段名和时间值，便于定位时间unknown根因
4. **版本号更新** — v6.3.6 (versionCode 636)

### v6.3.5 (2026-08-30)
1. **行者→Outbase时区修复（关键）** — 去掉自研GpxTimeFixer预修正，与正式版项目完全一致：行者GPX直接用Outbase官方gpx2fit转FIT上传。正式版验证官方gpx2fit能正确处理行者GPX时间格式，Outbase显示正常
2. **黑鸟上传GPX→FIT转换修复** — 黑鸟只接受FIT，GPX源必须用Outbase官方gpx2fit转换（自研转换器生成的FIT黑鸟无法解析，返回FIT_FILE_ERROR）。增强转换日志，官方gpx2fit失败时明确告警
3. **文件名统一用源平台名** — 跨平台同步时文件名前缀用源平台名（如行者数据上传到iGPSPORT/黑鸟/Outbase，文件名均为XingZhe_时间_运动类型_id，而非目标平台名）
4. **iGPSPORT时间解析增强** — 增强FileNameGenerator时间格式兼容性（支持带时区偏移+08:00/+0800、英文日期格式等），iGPSPORT活动列表增加调试日志输出时间字段实际值
5. **版本号更新** — v6.3.5 (versionCode 635)

### v6.3.4 (2026-08-29)
1. **黑鸟上传功能开发完成（启用）** — 黑鸟作为同步目标从"开发中"改为可用。上传地址为 /api/records/upload（已实测连通，FIT校验正常）；GPX源优先用Outbase官方gpx2fit转FIT，失败回退自研转换器。UI取消"开发中"标识
2. **行者GPX时区修复（关键）** — 行者GPX中<time>是本地时间但错误标注Z(UTC)，上传Outbase后被双重时区转换导致差16小时（如19:14→次日11:14）。修复：行者GPX上传Outbase前自动将所有<time>减去8小时转为正确UTC
3. **iGPSPORT文件名时间修复** — iGPSPORT的StartTime字段格式未被识别导致文件名时间为unknown。增强时间解析兼容性（支持.NET日期格式/毫秒时间戳/更多日期格式），并增加SportTime/BeginTime/RideTime等字段探测
4. **黑鸟title为null修复** — 黑鸟活动列表title字段为JSON null时optString返回"null"字符串，导致文件名运动类型为null。修复：过滤"null"字符串和空值，默认用"骑行"
5. **版本号更新** — v6.3.4 (versionCode 634)

### v6.3.2 (2026-08-29)
1. **黑鸟登录误判修复（关键）** — 根因：detectBlackbird() 只要 cookie 含 JSESSIONID 就判登录成功，但 JSESSIONID 是访问网站即生成的会话 cookie（未登录也有），导致用户未输入账号密码就误判"已登录"，后续下载/上传因 cookie 无效全部失败。修复：检测到 JSESSIONID 后异步调用 /api/user 接口验证，返回有效用户信息（status=ok 且有 nickname）才算真正登录成功，验证不通过则继续轮询
2. **文件名统一规则全覆盖** — v6.3.1 只改了上传到目标平台的文件名，本次补充：①普通下载保存到本地的文件名；②测试下载保存的文件名（加 test_ 前缀）。全部统一为 `平台_运动时间_运动类型_来源ID.扩展名`
3. **版本号更新** — v6.3.2 (versionCode 632)

### v6.3.1 (2026-08-29)
1. **统一上传文件名命名规则** — 此前各平台上传文件名混乱（如 xz_221312982.fit、mg_6a8d8a0d.fit）。统一为：`目标平台_运动时间_运动类型_来源ID.扩展名`，示例：`iGPSPORT_20260825_120000_骑行_xz221312982.fit`。运动类型从活动标题自动提取（如室内骑行/户外骑行/跑步等），时间统一为 yyyyMMdd_HHmmss
2. **版本号更新** — v6.3.1 (versionCode 631)

### v6.3.0 (2026-08-28)
1. **底部更新链接排版调整** — 标题去掉"更新链接"和冒号，改为蓝色（与俱乐部链接大小一致 11sp）、无下划线；说明注释另起一行灰色小字
2. **版本号更新** — v6.3.0 (versionCode 630)

### v6.2.9 (2026-08-28)
1. **底部更新链接排版调整** — 标题与说明改为两行显示（标题另起一行），标题灰色小字、取消下划线；说明为灰色注释
2. **版本号更新** — v6.2.9 (versionCode 629)

### v6.2.8 (2026-08-28)
1. **同步目标(逆向流动)调整** — 迈金/黑鸟单车/百锐腾标为"开发中"并禁用（UploadSupport.available=false，UI自动显示"XX(开发中)"）
2. **UI重排** — 停止/测试/复制/清记忆四按钮等高单行、防换行对齐（修复"清记忆"按钮文字换行、图标错位）
3. **底部更新链接优化** — 更新链接仅标题部分可点击跳转，冒号后的说明文字为普通注释（不含在超链接内）
4. **版本号更新** — v6.2.8 (versionCode 628)

### v6.2.7 (2026-08-28)
1. **黑鸟上传FIT_FILE_ERROR修复（关键）** — 根因：Kotlin时间解析用Instant.parse只认ISO "T"格式，行者GPX的`<time>`若是空格格式("2026-08-25 12:00:00")解析失败→所有record时间戳相同→FIT时间不递增被黑鸟拒。已修复：①时间解析兼容空格/无Z/毫秒格式；②即使完全无time也按索引生成递增时间戳(每秒一点)，保证FIT时间序列合理
2. **Outbase官方gpx2fit完整版** — 单独gpx2fit.js缺683等依赖模块(官网动态加载)，转换会失败。已用浏览器提取全部49个依赖模块合并成自包含版本(313KB)放入assets，bridge.html增强webpack运行时辅助方法(req.o/d/r/n/t)，官方转换现在真正可用
3. **Outbase上传双保险** — 官方gpx2fit优先，失败自动fallback自研GpxToFitConverter（与黑鸟同款，无外部依赖）
4. **版本号更新** — v6.2.7 (versionCode 627)

### v6.2.6 (2026-08-28)
1. **Outbase上传解析失败修复（关键）** — 实测"行者→Outbase"返回"上传成功[待处理]"但Outbase内记录解析失败。根因：Outbase只接受真正的FIT文件，而行者下载的是GPX，旧代码直接把GPX以`.fit`扩展名上传，Outbase按FIT解析GPX必失败→记录永远"待处理"。已对齐正式版项目(sync-igpsport-magene-onelap-xingzhe-data-to-outbase)方案：**用Outbase官方gpx2fit库先转GPX→FIT再上传**（WebBridge/bridge.html/gpx2fit.js，含UTC+8时间对齐）
2. **补齐gpx2fit.js** — 从Outbase官网下载官方前端转换库 gpx2fit.88f62f1a.js(130KB) 放入 assets（此前bridge.html引用但文件缺失，转换桥无法初始化）
3. **迈金/百锐腾WebView上传提速** — blockNetworkImage+禁自动加载图片（页面图片是加载慢主因之一）
4. **版本号更新** — v6.2.6 (versionCode 626)

### v6.2.5 (2026-08-28)
1. **迈金上传卡顿修复（关键）** — 实测 v6.2.4 上传迈金卡 281s 后超时失败。根因：v6.2.4 重构 MageneWebUploader 时改为**无条件 `location.reload()`**（v6.2.3 是"token 已存在则不 reload，直接触发上传"），导致每次上传完整加载顽鹿页面×2（VPN下每页100s+），主线程被页面加载长期占用、60s 超时任务排不上队 → 表现为"上传到迈金"后长时间卡死。**已恢复 v6.2.3 版 MageneWebUploader**（利用 WebView localStorage 跨实例持久化：token 首次写入后不再 reload）
2. **迈金上传双通道** — 迈金上传**优先走 HTTP**（`u.onelap.cn/upload/fit`，v6.2.2 实测可用、毫秒级不卡UI），HTTP 失败才 fallback 到顽鹿 WebView 真实文件选择兜底（v6.2.3 实测可用）
3. **百锐腾上传超时逻辑加固** — 百锐腾 WebView 上传确认不依赖前端 success 信号，改为文件选择后直接轮询 userActivities collection 对比上传前最新记录id（此前等待永不出现的标志导致每条卡满超时）；超时 60s→45s
4. **黑鸟卡顿优化** — GPX→FIT 转换（`GpxToFitConverter`）与黑鸟下载重建 GPX 均加**轨迹点数上限（3000点）**，避免超大 GPX（数万点）解析+距离计算导致卡顿
5. **同步循环条间延迟优化** — 每条活动之间 delay 300ms→150ms，多活动同步累计提速
6. **上传过程日志提示** — 迈金/百锐腾 WebView 上传前提示"页面加载约5-15秒，期间界面短暂无响应属正常"，避免误判卡死
7. **版本号更新** — v6.2.5 (versionCode 625)

### v6.2.4 (2026-08-28)
1. **黑鸟上传修复（关键）** — 实测"行者→黑鸟"上传被拒 `FIT decode error: Unexpected end of input stream`：黑鸟 `POST /api/records/upload` 只接受 FIT，而行者下载的是 GPX，被黑鸟当 FIT 解析必然失败。已实现 **GPX→FIT 转换器**（`GpxToFitConverter`，定义消息 header=0x40、record 消息按黑鸟 base_type 编码、坐标 semicircles、时间 unix-631065600 等，格式已在黑鸟实测落库成功 recordId=113833851）。上传前按文件头自动识别：非 FIT 先转 FIT 再上传
2. **黑鸟下载修复（关键）** — 根因是 `GET /api/records/{id}/data` 返回的 `content.track` 是**字符串**（`lat,lon,ele,...;lat,lon,...` 分号分隔），旧代码按 JSONArray 解析必失败。已改为识别字符串格式并重建 GPX 文件
3. **百锐腾登录修复（关键）** — 逆向确认 Bryton Active 是 Meteor(DDP) 应用，登录态存 **localStorage(Meteor.loginToken/Meteor.userId)** 而非 cookie。登录检测改为读取 localStorage，并将 token+userId 落盘
4. **百锐腾上传实现** — 百锐腾无公开 REST 上传接口（`POST /user/upload/{userId}` 需真实文件选择，已实测落库成功）。实现 `BrytonWebUploader`：WebView 加载 /activities 页 + 注入 Meteor token + 点"+"上传按钮 + `onShowFileChooser` 返回本地 FIT/GPX + 前端落库确认
5. **百锐腾列表实现** — 无 REST 列表接口，实现 `BrytonWebApi`：WebView 读 Meteor `userActivities` collection 获取活动列表
6. **百锐腾下载受限说明** — 官方未开放 FIT/GPX 下载接口（CDP 实测全部下载路径返回 SPA HTML、DDP 方法不存在），**百锐腾仅可作同步目标上传，不可作来源下载轨迹**
7. **UI 迈金"开发中"标签解除** — 迈金上传功能已真实关联（UploadSupport.MAGENE 置可用），不再显示"(开发中)"
8. **版本号更新** — v6.2.4 (versionCode 624)

### v6.2.3 (2026-08-28)
1. **迈金(顽鹿OTM)上传功能实现（核心新功能）** — 逆向确认顽鹿 `upload/fit` 接口对程序化构造的 multipart 一律返回 `422 没有上传文件`，仅接受"真实文件选择"；已实现 **WebView 真实文件选择上传通道**（`MageneWebUploader`：WebView 加载顽鹿页 + 注入登录 token + `onShowFileChooser` 返回本地 FIT 文件），迈金由"仅下载"升级为"可上传"，六平台数据流向补齐为「五平台互传 + Outbase 单向接收」
2. **iGPSPORT 上传落库修复（关键）** — 修复"行者→iGPSPORT 提示上传成功但平台无记录"：根因是硬编码 `.fit` 扩展名，而行者下载的是 GPX 文件，iGPSPORT 按 FIT 解析 GPX 失败不建记录、但接口仍返回 success 导致误判。现按文件头自动识别 `.fit/.gpx`，`getSignedUrl?fileExtension` 与 `fileName` 同步使用真实扩展名；OSS PUT 改为先不带 `Content-Type`（标准直传，实测 200），403/400 时降级带 `application/octet-stream`
3. **版本号更新** — v6.2.3 (versionCode 623)

### v6.2.2 (2026-08-28)
1. **UI首页标题修正** — 顶栏标题统一为"鸡翅幸哲迈进OB(开发体验版)"，去除旧版"v6.1.1"标识
2. **黑鸟GPX文件标识动态化** — GPX creator 字段改用 BuildConfig 版本号（此前硬编码 v6.1.1）
3. **版本号更新** — v6.2.2 (versionCode 622)

### v6.2.1 (2026-08-28)
1. **行者上传接口修复（关键）** — 实测发现原 `workout/upload`（file+随机uuid）接口只存文件不解析，返回 `is_valid:0`，导致"提示上传成功但平台看不到记录"。已切换到行者官方上传接口 `fit/upload`（字段 `fit_file`+`md5`），实测迈金FIT上传返回 `workout_id` 且 `is_valid:1`、数据完整解析（距离/时长/配速正常入库）
2. **上传记忆清除功能** — 新增「🗑 清记忆」按钮，一键清除全部已同步记录记忆，下次同步重新全量上传（便于频繁测试）
3. **启动日志版本号动态化** — 版本号改用 BuildConfig.VERSION_NAME 动态读取，启动日志与当前版本一一对应（此前硬编码导致日志版本与实际不符）
4. **UI首页文案** — 标题统一为"鸡翅幸哲迈进OB(开发体验版)"，去除旧版V6.1.1标识
5. **iGPSPORT OSS上传加固** — PUT 403/400 时自动降级不带 Content-Type 重试，并记录OSS错误详情便于定位
6. **自动同步卡顿优化** — 减少单次拉取量（20→8条）、增加全局同步互斥（手动同步时后台自动同步自动等待），避免并发执行导致卡顿

### v6.2.0 (2026-08-28)
1. **行者上传认证失败识别修复** — 实测行者接口：认证失败时返回 HTTP 401 + `{"code":401,"msg":"Authentication credentials were not provided."}`，部分场景曾出现 HTTP 200 + code:401。现统一识别（HTTP 401/403 + body特征多维度检测），明确提示"行者登录已过期或失效，请重新登录行者"，不再显示技术性报错
2. **行者会话预检** — 同步开始时先校验行者会话（user_info接口），失效立即中止并提示重新登录，避免20条记录全部报错刷屏
3. **行者上传实测验证** — 沙箱真实账号登录（account+RSA加密密码）+ 有效sessionid上传FIT成功（code:0），确认行者上传接口与APP代码逻辑正常；失败根因为行者会话过期，需重新登录

### v6.1.9 (2026-08-27)
1. **恢复底部正式版更新链接** — 底部新增"鸡翅幸哲迈进OB正式版更新链接"，指向正式版仓库 sync-igpsport-magene-onelap-xingzhe-data-to-outbase；开发版不稳定时提示下载正式版（开发版+正式版两个链接并存）
2. **黑鸟上传错误码翻译** — 实测黑鸟接口：DUPLICATE=记录已存在(重复)；010001=无有效GPS轨迹(0km空活动/室内骑行)或格式不认；FIT_FILE_ERROR=迈金等含开发者字段FIT。失败时给出可读提示
3. **黑鸟上传实测验证** — 沙箱真实登录黑鸟验证：有GPS的iGPSPORT标准FIT可被黑鸟解析（重复识别正常）；迈金C606室内骑行台(无GPS)被黑鸟FIT_FILE_ERROR拒绝（平台限制）

### v6.1.8 (2026-08-27)
1. **底部更新链接修正** — 更新链接指向开发测试版仓库 `sports-data-sync-multiplatform`（此前误指向正式版仓库）

### v6.1.7 (2026-08-27)
1. **iGPSPORT上传修复** — 修复 getSignedUrl 响应解析：signedUrl/ossId 在 data 子对象中（原代码从顶层读取导致"未获取到上传地址"），OSS直传流程恢复
2. **黑鸟活动列表修复** — 黑鸟列表接口返回 content 数组（原代码只读 data/records 导致"未获取到活动"），已修复并格式化毫秒时间戳为可读时间
3. **黑鸟登录检测修复** — 黑鸟登录后 cookie 仅含 JSESSIONID（原检测逻辑只认不存在的cookie名导致登录成功不识别），已加入 JSESSIONID 检测
4. **黑鸟上传错误提示优化** — 上传失败返回具体原因（登录失效/认证过期/FIT_FILE_ERROR 平台限制），界面直接显示
5. **百锐腾登录检测优化** — 增加 Meteor 框架 cookie 特征（meteor_login_token 等）检测
6. **底部更新链接** — 增加"鸡翅幸哲迈进OB(开发体验版)更新链接: 开发版不稳定且用且珍惜"

### v6.1.6 (2026-08-27)
1. 行者下载修复 — GPX下载URL增加尾斜杠（/gpx/），修复401下载失败
2. 黑鸟用户名修复 — 用户信息接口改为 /api/user（content.nickname）
3. 黑鸟上传实测 — iGPSPORT标准FIT可上传成功；迈金室内骑行台（无GPS）FIT被黑鸟拒绝（平台限制）
4. iGPSPORT上传重写 — 失效的uploadFit改为官方OSS直传流程（getSignedUrl→PUT→uploadByOss）
5. 迈金上传标注开发中 — 已研究确认顽鹿无公开第三方FIT导入API，目标按钮置灰
6. 自动同步卡顿修复

### v6.1.5
- 修复按钮布局：开始同步独占整行，停止/测试/复制等宽对齐

### v6.1.4
- 修复用户名显示/电源保护/前台服务通知/黑鸟百锐腾上传

### v6.1.3（开发体验版首版）
- 修复迈金GCJ-02→WGS84坐标转换：区分七牛云直链（WGS84不转换）和fit_content接口（GCJ-02需转换）
- 登录检测严格化，增加手动确认登录按钮
- 增加测试下载按钮（停止和复制之间）
- 恢复后台常驻指引 & 电池保护设置功能
- 恢复后台自动同步任务栏通知
- 登录后显示账户名称
- 黑鸟单车、百锐腾上传功能标注为开发中

### v6.1.2
- 完善鸣谢内容（六平台 + 测试人员）
- 增加软件更新地址超链接
- 增加俱乐部超链接

### v6.1.1
- 新增支持黑鸟单车、百锐腾平台
- 六平台聚合Logo（扁平化纯色风格）
- 增加Slogan：让运动数据自由流动
- 底部增加反馈提示文字

### v6.1.0
- 新增数据来源记忆功能
- 同步文件自动保存至手机Download目录
- 新增迈金GCJ-02→WGS84坐标转换开关
- 新增同步记忆功能，跳过上限提升至10000条
- 新增后台常驻自动同步功能

---

## ⚠️ 已知限制

1. **迈金上传走WebView**：顽鹿无公开第三方FIT导入API，且 `upload/fit` 接口拒绝程序化构造的 multipart（422"没有上传文件"），仅接受真实文件选择。v6.2.3 已通过隐藏 WebView + `onShowFileChooser` 返回本地FIT实现等价上传；该通道依赖顽鹿网页前端行为，建议真机实测后使用
2. **迈金→黑鸟上传**：黑鸟解析器较旧，拒绝含大量开发者字段的迈金FIT（FIT_FILE_ERROR），属平台限制，建议经行者/iGPSPORT中转
3. **黑鸟FIT解析**：室内骑行台（无GPS）FIT会被黑鸟服务器拒绝（平台限制）
4. **Outbase**：仅支持上传，不可作为数据来源下载

---

## 🙏 鸣谢

感谢 **iGPSPORT、迈金、黑鸟单车、百锐腾、行者、Outbase** 为运动用户提供的数据记录与存储服务。

感谢以下人员（均为骑行爱称）为软件测试提供的帮助：**素甲粉、青岛AUV阿哲、清茶、萧、洪斌大哥、鸽子王腰果、rockozhao、胶州一哥大沽河河长赵铁柱、海参**

感谢开源项目 [magene-fit-strava-fix](https://github.com/dwmer0308-a11y/magene-fit-strava-fix) 提供的迈金坐标修正算法参考。

v6.5.0 新增平台同步功能参考并感谢以下开源项目：
- [yihong0618/running_page](https://github.com/yihong0618/running_page) — 佳明同步接口与认证流程参考
- [XiaoSiHwang/garmin-sync-coros](https://github.com/XiaoSiHwang/garmin-sync-coros) — 佳明↔高驰双向同步接口、高驰三区域配置与STS凭证解密算法
- [jat255/Fit-File-Faker](https://github.com/jat255/Fit-File-Faker) — FIT文件设备伪装策略（Garmin Edge 830 product=3122）与file_id/device_info记录改写
- [matin/garth](https://github.com/matin/garth) — 佳明SSO OAuth认证流（CLIENT_ID=GCM_ANDROID_DARK）
- [mrebbert/hawahooligan](https://github.com/mrebbert/hawahooligan) — Wahoo API接口与OAuth2流程参考

---

## 📞 联系方式

- **开发者俱乐部**：[鸡翅幸哲迈进OB同步工具开发者俱乐部](https://outbase.cn/zeusfit/zeusfit-mk/sharePage.html?_bid=1005477&type=club&clubId=MTAxMjgz&timestamp=1787569599904&sign=b4604ad9041551e64ce90ea385a0029f)
- **软件更新地址**：[GitHub - sports-data-sync-multiplatform（开发测试版）](https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform)
- **问题反馈**：欢迎加入俱乐部跟主理人反馈，开发中功能招募测试人员，欢迎联系主理人~

---

## 📄 许可证

本项目仅供学习交流使用，各平台数据版权归原平台所有。使用本软件产生的一切后果由使用者自行承担。

---
**鸡翅幸哲迈进OB(开发体验版)** — 让运动数据自由流动 🚴♂️

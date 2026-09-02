# 🚴 鸡翅幸哲迈进OB(开发体验版)

<p align="center"><img src="app_icon/app_icon_512.png" width="128" alt="App图标"/></p>

**让运动数据自由流动 — 十一平台运动数据互传工具**

[![Android](https://img.shields.io/badge/Platform-Android-green)](https://developer.android.com)
[![Kotlin](https://img.shields.io/badge/Language-Kotlin-blue)](https://kotlinlang.org)
[![License](https://img.shields.io/badge/License-MIT-yellow)](LICENSE)
[![Version](https://img.shields.io/badge/Version-v7.5.1-brightgreen)]()
[![Dev](https://img.shields.io/badge/Type-开发体验版-orange)]()

一款 Android 运动数据迁移工具，支持在 **iGPSPORT / 行者 / 迈金 / 黑鸟单车 / 百锐腾 / Outbase / 佳明国际 / 佳明中国 / 高驰中国 / 高驰国际 / Wahoo** 十一平台之间同步运动记录（FIT/GPX），支持国内区与国际区互传。

> ⚠️ **开发版仅供测试体验**，部分平台功能有限制，详见下方"已知问题与限制"。日常使用建议下载[稳定版](https://github.com/Anathleticbicyclist/sync-igpsport-magene-onelap-xingzhe-data-to-outbase/releases)，更加稳定可靠。

---

## 📱 应用信息

| 项目 | 内容 |
|------|------|
| 应用名称 | 鸡翅幸哲迈进OB(开发体验版) |
| 包名 | `com.jichi.ob.dev` |
| 当前版本 | v7.5.1 |
| 最低系统 | Android 8.0 (API 26) |
| 目标系统 | Android 16 (API 36) |
| 开发语言 | Kotlin |
| 稳定版下载 | [点击下载稳定版](https://github.com/Anathleticbicyclist/sync-igpsport-magene-onelap-xingzhe-data-to-outbase/releases)（日常使用建议稳定版，更加稳定） |
| 联系我们 | [加入Outbase俱乐部](https://outbase.cn/zeusfit/zeusfit-mk/sharePage.html?_bid=1005477&type=club&clubId=MTAxMjgz&timestamp=1787569599904&sign=b4604ad9041551e64ce90ea385a0029f)（反馈问题、测试新功能、与主理人交流） |

---

## ⚠️ 已知问题与限制

使用前请务必了解以下已知问题：

| 问题 | 影响范围 | 说明 | 状态 |
|------|---------|------|------|
| **行者→iGPSPORT 8小时时差** | 行者上传到iGPSPORT | 行者FIT时间戳为北京时间（非标准UTC），iGPSPORT按UTC解析后显示时间晚8小时。曾尝试修改FIT时间戳但导致iGPSPORT解析失败，已回滚。**当前行者FIT直接上传，时间显示可能存在8小时差异** | 已知问题，暂未解决 |
| **佳明中国速度较慢** | 佳明中国上传/下载 | 佳明中国connectapi服务器处理速度较慢，上传约需30-60秒（服务器端解析FIT、校验重复、入库），获取活动列表约需10-30秒。功能正常，仅速度较慢 | 已知问题，服务器端限制 |
| **百锐腾下载不支持** | 百锐腾作为数据源 | 百锐腾官方未开放FIT下载接口，无法从百锐腾下载活动记录 | 平台限制，无法解决 |
| **迈金上传开发中** | 迈金作为同步目标 | 迈金上传功能尚未完成，当前仅支持从迈金下载 | 开发中 |
| **Outbase仅支持上传** | Outbase作为数据源 | Outbase为聚合上传平台，仅支持上传，不支持从Outbase下载 | 平台限制 |
| **两步验证(MFA)** | 佳明中国/国际登录 | 佳明账号若开启两步验证，需先在佳明App中关闭，当前版本不支持MFA验证码输入 | 已知限制 |

---

## 📖 使用说明

### 快速开始

1. **安装APK**：下载最新版本APK，允许安装未知来源应用
2. **授予权限**：首次打开授予存储权限（用于保存下载的FIT文件）
3. **登录平台**：在登录页点击对应平台卡片，完成登录
4. **选择同步方向**：在同步设置页选择"数据来源"和"同步目标"
5. **设置参数**：调整同步数量、跳过数量（可选）
6. **开始同步**：点击"开始同步"按钮，查看运行日志

### 登录各平台

| 平台 | 登录方式 |
|------|---------|
| iGPSPORT | 账号登录 |
| 行者 | 账号登录 |
| 迈金 | 账号登录 |
| 黑鸟单车 | 账号登录 |
| 百锐腾 | 账号登录 |
| Outbase | 手机号验证码登录 |
| 佳明国际 | 账号登录 |
| 佳明中国 | 账号登录 |
| 高驰中国 | 账号登录 |
| 高驰国际 | 账号登录 |
| Wahoo | 账号登录 |

> ⚠️ **佳明账号**：若开启两步验证(MFA)，需先在佳明App中关闭，当前版本不支持MFA验证码输入。

### 同步操作

1. **数据来源**：选择从哪个平台下载活动记录（左侧四列网格）
2. **同步目标**：选择上传到哪个平台（右侧四列网格，Outbase独占一行）
3. **同步数量**：滑动条设置每次同步的活动数量（1~50条）
4. **跳过数量**：滑动条设置跳过最近的N条活动（用于增量同步）
5. **开始同步**：点击后自动执行"下载→保存→上传"流程
6. **停止同步**：同步过程中可随时点击停止

**同步流程**：
```
获取活动列表 → 下载FIT文件 → 保存到本地 → 上传到目标平台 → 记录同步记忆
```

### 高级功能

| 功能 | 说明 |
|------|------|
| **后台自动同步** | 开启后按设定间隔（30秒~1小时）自动检测并同步新活动，任务栏常驻通知 |
| **测试下载** | 单条下载验证，用于测试平台登录和下载功能是否正常 |
| **同步记忆** | 已同步的活动自动跳过，避免重复上传，上限10000条 |
| **清除同步记忆** | 清除所有同步记录，下次同步将重新全量上传 |
| **运行日志** | 实时显示同步过程中的详细日志，便于排查问题 |
| **文件本地存储** | 下载的FIT文件保存到 `Download/鸡翅幸哲迈进OB/` 目录 |

### 常见问题

**Q: 同步失败怎么办？**
A: 查看运行日志中的错误信息，常见原因：
- 登录态过期 → 重新登录对应平台
- 网络问题 → 检查网络连接
- 平台服务器限流 → 等待一段时间后重试
- 文件格式不支持 → 确认目标平台支持FIT格式

**Q: 为什么有些活动被跳过了？**
A: 已同步的活动会被自动跳过（同步记忆）。如需重新上传，点击"清除同步记忆"。

**Q: 下载的文件在哪里？**
A: 保存在手机存储的 `Download/鸡翅幸哲迈进OB/` 目录，可用文件管理器查看。

**Q: 佳明中国为什么这么慢？**
A: 佳明中国connectapi服务器处理速度较慢（上传约30-60秒），这是服务器端限制，功能正常。

**Q: 行者上传到iGPSPORT时间不对？**
A: 行者FIT时间戳为北京时间，iGPSPORT按UTC解析，可能存在8小时差异，这是已知问题。

---

## ✨ 功能特性

### 十一平台数据互传

| 平台 | 下载(源) | 上传(目标) | 说明 |
|------|:---:|:---:|------|
| **iGPSPORT** | ✅ | ✅ | 迹驰码表数据，OSS直传上传 |
| **行者** | ✅ | ✅ | 行者APP数据，官方开放API（⚠️上传到iGPSPORT有8小时时差） |
| **迈金** | ✅ | 🚧 开发中 | 支持GCJ-02→WGS84坐标转换 |
| **黑鸟单车** | ✅ | ✅ | 仅接受FIT，GPX自动转换 |
| **百锐腾** | ⚠️ | 🚧 开发中 | 官方未开放FIT下载接口 |
| **Outbase** | ❌ | ✅ | 仅目标平台，聚合上传 |
| **佳明国际** | ✅ | ✅ | Garmin Connect国际区，mobile SSO+DI Token |
| **佳明中国** | ✅ | ✅ | Garmin Connect中国区，mobile SSO+DI Token（参考garth库），connectapi不经过Cloudflare（⚠️速度较慢） |
| **高驰中国** | ✅ | ✅ | COROS中国区，OSS+fit/import上传 |
| **高驰国际** | ✅ | ✅ | COROS国际/欧洲区，AWS S3上传 |
| **Wahoo** | ✅ | ✅ | Wahoo官方API，直接登录+base64编码上传+轮询状态 |

**支持的同步组合**：
- 任意平台 → Outbase 上传
- iGPSPORT / 行者 / 黑鸟 / 佳明(CN/COM) / 高驰(CN/INT) / Wahoo 之间任意互传
- 国内区↔国际区互传：佳明国际↔佳明中国、高驰中国↔高驰国际

### 核心功能

- **数据来源记忆**：自动记住上次选择，重启恢复
- **文件本地存储**：下载文件保存到 `Download/鸡翅幸哲迈进OB/`
- **迈金坐标转换**：GCJ-02→WGS84，青岛地区实测偏移约450米
- **同步记忆**：已同步记录自动跳过，上限10000条
- **后台自动同步**：检测间隔30秒~1小时可调，任务栏常驻通知
- **测试下载**：单条下载验证功能
- **登录状态显示**：已登录状态一目了然

---

## 🏗️ 关键技术

1. **佳明国际/中国 mobile SSO**：参考garth库，通过mobile SSO登录获取serviceTicket → OAuth1 preauthorized → OAuth2 exchange → DI Bearer token，访问connectapi.garmin.com/cn绕过Cloudflare
2. **Wahoo OAuth2直接登录**：OkHttp模拟浏览器完成SAML登录+OAuth2授权全流程，自动识别中文"授权"按钮，获取access_token（含workouts_write上传权限）
3. **Wahoo上传下载**：官方API，base64编码上传+轮询处理状态，支持FIT文件
4. **FIT坐标转换**：隐藏WebView执行JavaScript解析FIT二进制
5. **协程异步**：全部网络请求Kotlin Coroutines，主线程安全

---

## 🛠️ 构建说明

### 环境要求
- JDK 17
- Android SDK Platform 36 + Build Tools 35.0.0
- Gradle 8.13

### 构建步骤
```bash
git clone https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform.git
cd sports-data-sync-multiplatform
echo "sdk.dir=/path/to/android-sdk" > local.properties
./gradlew assembleRelease
```

---

## 🙏 鸣谢

### 🏢 平台鸣谢

感谢以下运动平台为广大运动用户提供的数据记录与存储服务，正是因为各平台开放的数据接口，才让数据自由流动成为可能：

- iGPSPORT迹驰 — [Innovation for Great Performance @ SPORTS](https://www.igpsport.com)
- 行者 — [虽千万里 吾往矣](https://www.imxingzhe.com)
- 迈金Magene — [让运动更科学](https://www.magene.cn)
- 黑鸟单车 — [黑鸟单车 骑乐无穷](https://www.blackbirdsport.com)
- 百锐腾Bryton — [Engineered for Great Performance](https://www.brytonsport.com)
- Outbase — [用运动连接世界](https://outbase.cn)
- 佳明Garmin — [Engineered on the inside for life on the outside](https://www.garmin.com.cn)
- 高驰COROS — [保持专注 乐于创新 满怀热情](https://www.coros.com)
- Wahoo — [Create a full ecosystem of sensors and devices](https://www.wahoofitness.com)

> 各平台数据版权归原平台所有，本工具仅用于用户个人数据的迁移与备份，不得用于商业用途或数据爬取。

### 👥 测试人员鸣谢

感谢以下人员在软件开发过程中提供的测试帮助与反馈，你们的每一条建议都让软件变得更好：

| 昵称 | 贡献 |
|------|------|
| **素甲粉** | 早期版本测试，功能验证与Bug反馈 |
| **青岛AUV阿哲** | 主理人，需求提出、整体测试、俱乐部运营 |
| **清茶** | 迈金平台测试，坐标转换验证 |
| **萧** | iGPSPORT平台测试，登录功能验证 |
| **洪斌大哥** | 行者平台测试，数据同步验证 |
| **鸽子王腰果** | 黑鸟单车平台测试，兼容性验证 |
| **rockozhao** | 百锐腾平台测试，码表数据兼容性验证 |
| **胶州一哥大沽河河长赵铁柱** | 长距离骑行数据测试，大数据量同步验证 |
| **海参** | Outbase平台测试，上传功能验证 |

### 📦 开源项目鸣谢

本项目在开发过程中参考并借鉴了以下开源项目，在此向这些项目的作者表示衷心感谢：

1. **[garth](https://github.com/matin/garth)** — 佳明中国/国际mobile SSO登录+OAuth2认证核心算法参考，本项目佳明中国方案的重要理论基础
2. **[dwmer0308-a11y/magene-fit-strava-fix](https://github.com/dwmer0308-a11y/magene-fit-strava-fix)** — 迈金FIT文件GCJ-02→WGS84坐标转换核心算法，已移植到APP中（`assets/magene_fix.js`）
3. **[dofek/wahoolib](https://github.com/dofek/wahoolib)** — Wahoo OAuth2授权码捕获方案参考
4. **其他依赖库**：OkHttp、Kotlin Coroutines、Material Components for Android、AndroidX

### 🏠 开发者俱乐部

**鸡翅幸哲迈进OB同步工具开发者俱乐部**

欢迎加入开发者俱乐部，与主理人和其他开发者一起交流、测试、反馈：

🔗 [点击加入俱乐部](https://outbase.cn/zeusfit/zeusfit-mk/sharePage.html?_bid=1005477&type=club&clubId=MTAxMjgz&timestamp=1787569599904&sign=b4604ad9041551e64ce90ea385a0029f)

> 如有问题，欢迎加入俱乐部跟主理人反馈。开发中功能招募测试人员，欢迎联系主理人~

---

## 📋 更新日志

### v7.5.1 (2026-09-03)
**已解决**：
- 佳明中国登录、上传、下载全部修复（改用garth库方案：mobile SSO+OAuth2 Bearer token+connectapi）

**未解决**：
- 佳明中国上传下载速度较慢（服务器端限制）
- 行者→iGPSPORT 8小时时差

### v7.5.0 ~ v7.4.6 (2026-09-03) — 佳明中国修复尝试（均未成功）
**已解决**：
- v7.4.9: 修复cookie被清除问题（只清佳明域名，保留其他平台登录态）

**未解决**：
- 佳明中国登录成功但获取活动列表0条、上传403或卡住
- 尝试方案：favicon.ico页面、不加载页面注入cookie、gc-api+保存所有cookie、WebView直接加载URL，均未成功

### v7.4.5 (2026-09-03)
**已解决**：
- Wahoo登录、上传、下载全部修复（恢复OkHttp模拟浏览器直接登录方案）
- 佳明中国上传cookie domain修复（注入到主域名.garmin.cn）

**未解决**：
- 佳明中国上传仍返回403

### v7.4.4 ~ v7.4.0 (2026-09-02~03) — Wahoo和佳明中国修复尝试
**已解决**：
- v7.4.4: Wahoo上传功能开放（workouts_write权限）
- v7.4.4: Wahoo登录回调捕获修复（shouldOverrideUrlLoading拦截回调URL）
- v7.4.3: Wahoo redirect_uri改回HTTPS（Wahoo要求HTTPS）

**未解决**：
- Wahoo登录仍不稳定（回调捕获失败）
- 佳明中国上传返回403

### v7.3.1 ~ v7.2.0 (2026-09-02) — Wahoo登录重构
**已解决**：
- v7.3.1: 修复Wahoo登录成功但首页显示未登录的问题
- v7.3.0: 找到Wahoo登录真正根因：授权按钮是中文"授权"而非英文"Authorize"
- v7.2.2: 修复Step 1重定向处理的严重bug
- v7.2.1: 重写Wahoo登录，使用OkHttp CookieJar自动管理Cookie
- v7.2.0: 彻底重构Wahoo登录：不使用WebView，直接用OkHttp模拟OAuth2完整流程

### v7.1.9 ~ v7.1.4 (2026-09-02) — Wahoo授权码捕获修复
**已解决**：
- v7.1.9: 增强SSL错误授权码捕获
- v7.1.8: 修复Wahoo授权码捕获：在SSL证书错误时提取授权码（最关键修复）
- v7.1.7: 添加URL历史追踪，redirect_uri改HTTP
- v7.1.6: 本地测试验证后彻底修复Wahoo授权码捕获
- v7.1.5: 彻底修复Wahoo授权码捕获（参考开源项目dofek/wahoolib）
- v7.1.4: 修复Wahoo授权码捕获失败

### v7.1.3 ~ v7.1.0 (2026-09-02) — Wahoo生产凭证 + 行者→iGPSPORT时间修复
**已解决**：
- v7.1.3: Wahoo生产应用已批准，内置生产凭证
- v7.1.3: 回滚行者→iGPSPORT时间修正（修改后导致iGPSPORT解析失败）
- v7.1.1: 修复行者→iGPSPORT activity消息时间戳未修改导致解析失败
- v7.1.0: 行者→iGPSPORT时间修复稳定版

**未解决**：
- 行者→iGPSPORT 8小时时差（时间戳修改导致解析失败，回滚后仍存在）

### v7.0.91 ~ v7.0.4 (2026-09-02) — 早期修复
**已解决**：
- v7.0.91: 修复行者→iGPSPORT经度被误改导致文件损坏
- v7.0.9: 修复行者→iGPSPORT时间字段不一致导致解析失败
- v7.0.8: 修复行者→iGPSPORT FIT文件结构损坏
- v7.0.7: 修复佳明中国WebView通道域名错误
- v7.0.6: 佳明中国用WebView绕过Cloudflare + 行者FIT时间修复 + Wahoo用户自配置
- v7.0.5: 修复行者→iGPSPORT FIT文件结构损坏
- v7.0.4: 行者→iGPSPORT FIT时间戳修正

### v7.0.x 早期版本
- 佳明国际mobile SSO+DI token绕过Cloudflare
- 十一平台基础互传功能

### v6.7.x (2026-08~09) — 佳明国际mobile SSO+WebView共享
**已解决**：
- v6.7.8: 佳明国际改用mobile SSO+DI OAuth Bearer tokens，connectapi不经过Cloudflare
- v6.7.9: 数据来源/同步目标四列网格布局，Outbase独占一行
- v6.7.4~v6.7.7: 佳明国际WebView方案修复（cookie注入、就绪等待、重定向循环、静态WebView共享）

### v6.5.x (2026-08) — 新增佳明/高驰/Wahoo，九平台互传
**已解决**：
- v6.5.0: 新增佳明(CN/COM)/高驰(CN/INT)/Wahoo同步，支持国内国际互传，UI改两列布局
- v6.5.1: Wahoo免注册改造（内置凭证）+ 佳明登录修复
- v6.5.2~v6.5.9: 佳明完整OAuth2认证重写（ticket→OAuth1→OAuth2 Bearer token）+ 高驰上传修复 + 佳明401根因修复（JWT_WEB+session双cookie）

### v6.4.x (2026-08) — 黑鸟全链路+时间适配矩阵
**已解决**：
- v6.4.0: 大版本里程碑——黑鸟全链路定稿+统一时间适配矩阵+六平台互传能力补齐
- v6.4.1~v6.4.3: 修复黑鸟上传行者HTTP 500（GPX未转FIT）+ 时间偏移8小时 + 用官方gpx2fit转FIT

### v6.3.x (2026-08) — 黑鸟上传下载+GPX转FIT+时间修正
**已解决**：
- v6.3.1: 统一上传文件名命名规则
- v6.3.4: 黑鸟上传启用（官方gpx2fit转FIT）+ 行者GPX时区修正
- v6.3.5~v6.3.6: 行者下载FIT优先（保留功率）+ 行者GPX时间全平台统一修正
- v6.3.8: 黑鸟下载重构（FIT优先+GPX完整解析心率功率时间）+ 黑鸟GCJ-02转WGS84
- v6.3.9~v6.3.10: 黑鸟时间修复（startTime秒/毫秒自动判断）+ 黑鸟GPX时间1989年问题
- v6.3.11~v6.3.13: 黑鸟GPX对所有平台统一转FIT + 回退所有GPX统一转FIT（自研FIT部分平台无法解析）
- v6.3.14~v6.3.17: 修复黑鸟长距离轨迹5000点截断 + 黑鸟推倒重写固定9字段精确解析 + 黑鸟全链路修复

### v6.2.x (2026-07~08) — 迈金上传+百锐腾+黑鸟上传
**已解决**：
- v6.2.3: 迈金顽鹿OTM WebView上传 + iGPSPORT上传落库修复
- v6.2.4: 黑鸟上传(GPX->FIT)/下载修复 + 百锐腾登录(localStorage)/上传(WebView)/列表
- v6.2.5: 修复迈金上传卡顿（恢复WebView逻辑+HTTP优先双通道）
- v6.2.6~v6.2.7: 修复Outbase上传解析失败（GPX用官方gpx2fit转FIT）+ 黑鸟FIT_FILE_ERROR修复
- v6.2.8: 同步目标逆向流动迈金/黑鸟/百锐腾标开发中 + UI按钮区对齐重排
- v6.2.9: 底部更新链接样式优化

### v6.1.x (2026-07) — 六平台基础互传
**已解决**：
- v6.1.3: 开发体验版首发——六平台运动数据互传
- v6.1.4: 修复用户名显示/电源保护/前台服务通知/黑鸟百锐腾上传
- v6.1.5: 修复按钮布局：开始同步独占整行，停止/测试/复制等宽对齐
- v6.1.7: 修复iGPSPORT上传/黑鸟列表/黑鸟登录+图标更新
- v6.1.8~v6.1.9: 更新链接指向开发测试版仓库 + 恢复正式版更新链接 + 黑鸟上传错误码翻译
- v6.2.2: UI首页标题修正 + 黑鸟GPX标识动态化

---

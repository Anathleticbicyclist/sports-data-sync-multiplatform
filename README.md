# 🚴 鸡翅幸哲迈进OB(开发体验版)
**让运动数据自由流动 — 六平台运动数据互传工具**
[![Android](https://img.shields.io/badge/Platform-Android-green)](https://developer.android.com)
[![Kotlin](https://img.shields.io/badge/Language-Kotlin-blue)](https://kotlinlang.org)
[![License](https://img.shields.io/badge/License-MIT-yellow)](LICENSE)
[![Version](https://img.shields.io/badge/Version-v6.1.8-brightgreen)]()
[![Dev](https://img.shields.io/badge/Type-开发体验版-orange)]()

一款 Android 运动数据迁移工具（**开发体验版**），支持在 **iGPSPORT / 行者 / 迈金 / 黑鸟单车 / 百锐腾 / Outbase** 六平台之间自由同步运动记录（FIT/GPX）。

> ⚠️ **开发版不稳定且用且珍惜**，仅供测试体验，正式版请使用 [sync-igpsport-magene-onelap-xingzhe-data-to-outbase](https://github.com/Anathleticbicyclist/sync-igpsport-magene-onelap-xingzhe-data-to-outbase)。

---

## 📱 应用信息

| 项目 | 内容 |
|------|------|
| 应用名称 | 鸡翅幸哲迈进OB(开发体验版) |
| 包名 | `com.jichi.ob.dev` |
| 当前版本 | v6.1.8 |
| 最低系统 | Android 8.0 (API 26) |
| 目标系统 | Android 16 (API 36) |
| 开发语言 | Kotlin |
| 构建工具 | Gradle 8.13 + AGP 8.13.0 |

---

## ✨ 功能特性

### 1. 六平台数据互传（逆向流动）

> **注意**：Outbase 为聚合平台，**仅支持上传（作为同步目标），不支持作为数据来源下载**。其余五个平台均可作为来源下载，也可作为目标上传。

| 平台 | 下载(源) | 上传(目标) | 说明 |
|------|:---:|:---:|------|
| **iGPSPORT** | ✅ | ✅ | 迹驰码表数据，OSS直传上传 |
| **行者** | ✅ | ✅ | 行者APP数据，官方开放API |
| **迈金** | ✅ | ⏳开发中 | 迈金/Onelap数据，支持GCJ-02→WGS84坐标转换 |
| **黑鸟单车** | ✅ | ✅ | 黑鸟单车数据 |
| **百锐腾** | ✅ | ✅ | Bryton码表数据 |
| **Outbase** | ❌ | ✅ | **仅目标平台**，支持活动上传，不可作为来源 |

**可同步的组合**（来源 → 目标）：
- iGPSPORT / 行者 / 迈金 / 黑鸟单车 / 百锐腾 → Outbase（上传）
- 上述五个平台之间任意互传（如 iGPSPORT → 行者、迈金 → 黑鸟单车）

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
└── bridge.html                  # 通用JS桥接页
```

---

## 🔧 关键技术点

1. **WebView登录**：各平台均通过WebView加载官方登录页，拦截登录回调获取Token/Cookie，无需逆向账号密码
2. **FIT坐标转换**：通过隐藏WebView执行JavaScript，解析FIT二进制文件中的record消息，修正经纬度坐标
3. **迈金下载双路径**：优先七牛云直链（durl），失败回退fit_content接口（官方网页端同款）
4. **逆向流动上传引擎**：`UploadEngine.kt` 统一分发，每平台独立适配官方上传通道（iGPSPORT OSS直传 / 行者官方API / 黑鸟/百锐腾官方上传）
5. **协程异步**：全部网络请求使用Kotlin Coroutines，主线程安全
6. **本地持久化**：SharedPreferences存储登录态、同步记录、设置项

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

1. **迈金上传**：顽鹿无公开第三方FIT导入API，目标按钮置灰标注"开发中"，招募测试人员
2. **迈金→黑鸟上传**：黑鸟解析器较旧，拒绝含大量开发者字段的迈金FIT（FIT_FILE_ERROR），属平台限制，建议经行者/iGPSPORT中转
3. **黑鸟FIT解析**：室内骑行台（无GPS）FIT会被黑鸟服务器拒绝（平台限制）
4. **Outbase**：仅支持上传，不可作为数据来源下载

---

## 🙏 鸣谢

感谢 **iGPSPORT、迈金、黑鸟单车、百锐腾、行者、Outbase** 为运动用户提供的数据记录与存储服务。

感谢以下人员（均为骑行爱称）为软件测试提供的帮助：**素甲粉、青岛AUV阿哲、清茶、萧、洪斌大哥、鸽子王腰果、rockozhao、胶州一哥大沽河河长赵铁柱、海参**

感谢开源项目 [magene-fit-strava-fix](https://github.com/dwmer0308-a11y/magene-fit-strava-fix) 提供的迈金坐标修正算法参考。

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

### v6.1.9 (2026-08-27)
1. **恢复底部正式版更新链接** — 底部新增"鸡翅幸哲迈进OB正式版更新链接"，指向正式版仓库 sync-igpsport-magene-onelap-xingzhe-data-to-outbase；开发版不稳定时提示下载正式版（开发版+正式版两个链接并存）
2. **黑鸟上传错误码翻译** — 实测黑鸟接口：DUPLICATE=记录已存在(重复)；010001=无有效GPS轨迹(0km空活动/室内骑行)或格式不认；FIT_FILE_ERROR=迈金等含开发者字段FIT。失败时给出可读提示
3. **黑鸟上传实测验证** — 沙箱真实登录黑鸟验证：有GPS的iGPSPORT标准FIT可被黑鸟解析（重复识别正常）；迈金C606室内骑行台(无GPS)被黑鸟FIT_FILE_ERROR拒绝（平台限制）

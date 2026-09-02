# 🚴 鸡翅幸哲迈进OB(开发体验版)

<p align="center"><img src="app_icon/app_icon_512.png" width="128" alt="App图标"/></p>

**让运动数据自由流动 — 十一平台运动数据互传工具**

[![Android](https://img.shields.io/badge/Platform-Android-green)](https://developer.android.com)
[![Kotlin](https://img.shields.io/badge/Language-Kotlin-blue)](https://kotlinlang.org)
[![License](https://img.shields.io/badge/License-MIT-yellow)](LICENSE)
[![Version](https://img.shields.io/badge/Version-v7.5.0-brightgreen)]()
[![Dev](https://img.shields.io/badge/Type-开发体验版-orange)]()

一款 Android 运动数据迁移工具，支持在 **iGPSPORT / 行者 / 迈金 / 黑鸟单车 / 百锐腾 / Outbase / 佳明国际 / 佳明中国 / 高驰中国 / 高驰国际 / Wahoo** 十一平台之间自由同步运动记录（FIT/GPX），支持国内区与国际区互传。

> ⚠️ **开发版不稳定且用且珍惜**，仅供测试体验。

---

## 📱 应用信息

| 项目 | 内容 |
|------|------|
| 应用名称 | 鸡翅幸哲迈进OB(开发体验版) |
| 包名 | `com.jichi.ob.dev` |
| 当前版本 | v7.5.0 |
| 最低系统 | Android 8.0 (API 26) |
| 目标系统 | Android 16 (API 36) |
| 开发语言 | Kotlin |

---

## 📱 软件界面

| 登录页 | 同步设置 | 运行日志 |
|:---:|:---:|:---:|
| <img src="screenshots_login.webp" width="280"/> | <img src="screenshots_sync.webp" width="280"/> | <img src="screenshots_log.webp" width="280"/> |

- **登录页**：十一平台登录卡片，两列布局，已登录状态一目了然
- **同步设置**：数据来源/同步目标四列网格，Outbase独占一行，开发中按钮两行显示
- **运行日志**：后台自动同步、开始同步、测试下载、运行日志实时输出

---

## ✨ 功能特性

### 十一平台数据互传

| 平台 | 下载(源) | 上传(目标) | 说明 |
|------|:---:|:---:|------|
| **iGPSPORT** | ✅ | ✅ | 迹驰码表数据，OSS直传上传 |
| **行者** | ✅ | ✅ | 行者APP数据，官方开放API |
| **迈金** | ✅ | 🚧 开发中 | 支持GCJ-02→WGS84坐标转换 |
| **黑鸟单车** | ✅ | ✅ | 仅接受FIT，GPX自动转换 |
| **百锐腾** | ⚠️ | 🚧 开发中 | 官方未开放FIT下载接口 |
| **Outbase** | ❌ | ✅ | 仅目标平台，聚合上传 |
| **佳明国际** | ✅ | ✅ | Garmin Connect国际区，mobile SSO认证 |
| **佳明中国** | ✅ | ✅ | Garmin Connect中国区，WebView+gc-api，保存所有cookie(含cf_clearance)绕过Cloudflare |
| **高驰中国** | ✅ | ✅ | COROS中国区，OSS+fit/import上传 |
| **高驰国际** | ✅ | ✅ | COROS国际/欧洲区，AWS S3上传 |
| **Wahoo** | ✅ | ✅ | Wahoo官方上传API，base64编码+轮询状态 |

**支持的同步组合**：
- 任意平台 → Outbase 上传
- iGPSPORT / 行者 / 黑鸟 / 佳明(CN/COM) / 高驰(CN/INT) 之间任意互传
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

1. **WebView登录**：各平台官方登录页，拦截回调获取Token/Cookie
2. **佳明国际mobile SSO**：参考garminconnect 0.3.x，通过mobile SSO获取DI OAuth Bearer token，访问connectapi.garmin.com绕过Cloudflare
3. **佳明中国WebView+gc-api通道**：WebView登录获取所有cookie(含JWT_WEB/session/cf_clearance)，WebView执行JavaScript fetch调用gc-api端点上传下载，利用浏览器TLS指纹绕过Cloudflare
4. **FIT坐标转换**：隐藏WebView执行JavaScript解析FIT二进制
5. **Wahoo OAuth2直接登录**：OkHttp模拟浏览器完成SAML登录+OAuth2授权全流程，自动识别中文"授权"按钮，获取access_token（含workouts_write上传权限）
6. **Wahoo上传下载**：官方API，base64编码上传+轮询处理状态，支持FIT文件
7. **协程异步**：全部网络请求Kotlin Coroutines，主线程安全

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

## 📋 更新日志
### v7.5.0 (2026-09-03)
- **佳明中国**：prepareWebView加载favicon.ico简单页面（而非modern页面），避免重定向到sign-in导致永远ready不了；origin为connect.garmin.cn，fetch调用gc-api无CORS问题；cookie直接用CookieManager中LoginWebActivity已有的，不手动注入
- 其他平台未改动


### v7.4.9 (2026-09-03)
- **佳明中国**：修复cookie被清除问题——`removeAllCookies`改为只清除佳明域名，保留其他平台登录态；prepareWebView不手动注入cookie，直接用LoginWebActivity已有的有效cookie
- 其他平台未改动

### v7.4.8 (2026-09-03)
- **佳明中国**：回滚到gc-api端点（Garmin网页本身用的API）；登录时保存所有cookie（含cf_clearance），避免后续请求再次触发Cloudflare验证

### v7.4.5 (2026-09-03)
- **Wahoo**：登录+上传+下载全通，恢复OkHttp模拟浏览器直接登录方案（自动完成SAML+OAuth2授权）

### v7.4.4 (2026-09-03)
- **Wahoo**：上传功能开放，workouts_write权限，官方API base64上传+轮询状态

### v7.0.x 历史版本
- 行者→iGPSPORT时间戳适配（后回滚，行者FIT直接上传）
- 佳明国际mobile SSO+DI token绕过Cloudflare
- 十一平台基础互传功能

---

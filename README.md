# 🚴 鸡翅幸哲迈进OB(开发体验版)

<p align="center"><img src="app_icon/app_icon_512.png" width="128" alt="App图标"/></p>

**让运动数据自由流动 — 十一平台运动数据互传工具**

[![Android](https://img.shields.io/badge/Platform-Android-green)](https://developer.android.com)
[![Kotlin](https://img.shields.io/badge/Language-Kotlin-blue)](https://kotlinlang.org)
[![License](https://img.shields.io/badge/License-MIT-yellow)](LICENSE)
[![Version](https://img.shields.io/badge/Version-v7.5.1-brightgreen)]()
[![Dev](https://img.shields.io/badge/Type-开发体验版-orange)]()

一款 Android 运动数据迁移工具，支持在 **iGPSPORT / 行者 / 迈金 / 黑鸟单车 / 百锐腾 / Outbase / 佳明国际 / 佳明中国 / 高驰中国 / 高驰国际 / Wahoo** 十一平台之间同步运动记录（FIT/GPX），支持国内区与国际区互传。

> ⚠️ **开发版仅供测试体验**，部分平台功能有限制，详见下方"已知问题与限制"。

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

## 📋 更新日志

### v7.5.1 (2026-09-03)
**已解决**：
- 佳明中国登录、上传、下载全部修复（改用garth库方案：mobile SSO+OAuth2 Bearer token+connectapi）

**未解决**：
- 佳明中国上传下载速度较慢（服务器端限制）
- 行者→iGPSPORT 8小时时差

### v7.4.5 (2026-09-03)
**已解决**：
- Wahoo登录、上传、下载全部修复（恢复OkHttp模拟浏览器直接登录方案）

### v7.4.4 (2026-09-03)
**已解决**：
- Wahoo上传功能开放（workouts_write权限）

### v7.1.2 (2026-08-xx)
**已解决**：
- 回滚行者FIT时间戳修改（修改后导致iGPSPORT解析失败），行者FIT直接上传

**未解决**：
- 行者→iGPSPORT 8小时时差（时间戳修改导致解析失败，暂无法解决）

### v7.0.x 历史版本
- 佳明国际mobile SSO+DI token绕过Cloudflare
- 十一平台基础互传功能

---

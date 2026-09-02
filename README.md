# 🚴 鸡翅幸哲迈进OB(开发体验版)

<p align="center"><img src="app_icon/app_icon_512.png" width="128" alt="App图标"/></p>

**让运动数据自由流动 — 十一平台运动数据互传工具**

[![Android](https://img.shields.io/badge/Platform-Android-green)](https://developer.android.com)
[![Kotlin](https://img.shields.io/badge/Language-Kotlin-blue)](https://kotlinlang.org)
[![License](https://img.shields.io/badge/License-MIT-yellow)](LICENSE)
[![Version](https://img.shields.io/badge/Version-v7.0.6-brightgreen)]()
[![Dev](https://img.shields.io/badge/Type-开发体验版-orange)]()

一款 Android 运动数据迁移工具，支持在 **iGPSPORT / 行者 / 迈金 / 黑鸟单车 / 百锐腾 / Outbase / 佳明国际 / 佳明中国 / 高驰中国 / 高驰国际 / Wahoo** 十一平台之间自由同步运动记录（FIT/GPX），支持国内区与国际区互传。

> ⚠️ **开发版不稳定且用且珍惜**，仅供测试体验。

---

## 📱 应用信息

| 项目 | 内容 |
|------|------|
| 应用名称 | 鸡翅幸哲迈进OB(开发体验版) |
| 包名 | `com.jichi.ob.dev` |
| 当前版本 | v7.0.6 |
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
| **佳明中国** | ✅ | ✅ | Garmin Connect中国区，WebView通道绕过Cloudflare |
| **高驰中国** | ✅ | ✅ | COROS中国区，OSS+fit/import上传 |
| **高驰国际** | ✅ | ✅ | COROS国际/欧洲区，AWS S3上传 |
| **Wahoo** | ✅ | ❌ | 仅下载，无公开上传API |

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
3. **佳明中国WebView通道**：WebView登录获取session cookie，WebView执行JavaScript fetch上传下载，利用浏览器TLS指纹绕过Cloudflare
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

### v7.0.6 (2026-09-02) — 佳明中国用WebView绕过Cloudflare + 行者FIT时间修复 + Wahoo用户自配置

**修复的问题**：
- 佳明中国版上传下载全部HTTP 403（Cloudflare拦截OkHttp的TLS指纹）
- 行者→iGPSPORT FIT文件结构损坏（FitTimeFixer重新构建输出流导致多2字节）
- Wahoo需开发者内置凭证，用户无法自行配置

**修复内容**：
- 佳明中国版：WebView登录 + WebView执行JS上传下载（绕过Cloudflare，TLS指纹=浏览器）
- 佳明国际版：继续用mobile SSO+DI token+connectapi（已验证稳定）
- 行者→iGPSPORT：FitTimeFixer改为直接修改原始数组时间戳，不动文件结构，只重算CRC
- Wahoo：改为用户自行配置Client ID/Client Secret，配置弹窗底部附沙箱申请教程

**根因分析**：
- 佳明中国：connectapi只接受DI token不接受cookie，中国版DI接口返回unsupported_grant_type，gc-api经过Cloudflare拦截OkHttp。WebView的TLS指纹与浏览器一致，能通过Cloudflare的JS挑战
- 行者FIT：重新构建输出流的方式不可靠，容易多写/少写字节导致文件结构损坏。直接修改原始数组中的timestamp字段值，只改值不动结构，最可靠

### v7.0.5 (2026-09-02) — 修复行者→iGPSPORT FIT文件结构损坏

**修复的问题**：
- v7.0.4中FitTimeFixer解析数据区时把末尾2字节CRC也当作数据消息解析
- 输出时写入了原始CRC + 又追加新CRC，导致文件多2字节，FIT结构损坏
- iGPSPORT无法解析损坏的FIT文件，接口返回success但id=null，活动未入库

**修复内容**：
- 数据区解析范围改为 `dataStart + dataSize - 2`（排除末尾CRC）
- 输出时只写入数据区内容，最后追加新计算的CRC
- 修改前后文件大小一致（headerSize + dataSize）
- 仅对行者→iGPSPORT的FIT文件生效，其他平台互传无影响

### v7.0.4 (2026-09-02) — 行者→iGPSPORT FIT时间戳修正

**功能实现**：
- 新增FitTimeFixer工具，解析FIT二进制格式，修正所有timestamp字段（field_num=253）
- 行者FIT时间戳减8小时（28800秒），从北京时间转为标准UTC
- 重新计算FIT文件CRC，确保文件格式完整
- 仅对行者→iGPSPORT的FIT文件生效，其他平台/场景不处理

**解决的问题**：
- 行者导出的FIT文件时间戳是北京时间（非标准UTC），iGPSPORT按UTC解析后转北京时间显示，导致活动时间比行者晚8小时
- 行者下载时FIT优先，UploadEngine的GPX时间适配逻辑对FIT不生效

**根因分析**：
- 行者FIT时间戳：1156330823 → 按UTC解析 2026-08-22 11:00:23 → iGPSPORT转北京显示 19:00:23
- 行者App直接显示FIT数字：11:00:23
- iGPSPORT比行者晚8小时
- 修正后：时间戳减8小时 → 按UTC解析 03:00:23 → iGPSPORT转北京显示 11:00:23 → 与行者一致

**验证结果**：
- 测试文件：6581个时间戳全部修正成功
- 修改前后文件大小一致（217698 bytes）
- iGPSPORT显示时间与行者App完全一致

### v7.0.3 (2026-09-02) — 登录页MFA教程内置 + 软件内浏览器回退

**功能实现**：
- 两步验证(MFA)关闭教程直接写在登录页内，含详细步骤说明
- 保留"前往佳明账号安全设置"链接作为手动操作入口
- 人机验证回退明确为"软件内浏览器登录"，不跳外部浏览器
- WebView内完成登录后自动提取cookie，确保登录态可拉取

**解决的问题**：
- MFA教程只放链接不写内容，用户不知道如何关闭两步验证
- 人机验证回退提示"浏览器登录"误导用户以为跳外部浏览器
- 跳外部浏览器无法提取登录cookie，导致登录失败

**登录页底部内容**：
- 登录失败常见原因（密码错误/MFA/人机验证）
- 关闭两步验证详细步骤（4步图文说明）
- 前往佳明账号安全设置链接
- 遇到人机验证？用软件内浏览器登录

### v7.0.2 (2026-09-02) — 登录页人机验证回退 + MFA教程

**功能实现**：
- 佳明国际/中国登录页增加关闭两步验证(MFA)教程链接，点击跳转账号安全设置页
- 增加"遇到人机验证？用浏览器登录"回退按钮，CAPTCHA拦截时一键切换WebView手动登录
- 登录页标题根据国际版/中国版自动切换显示

**解决的问题**：
- 佳明检测异常登录触发人机验证(CAPTCHA)时，mobile SSO直连无法处理导致登录失败
- 用户不知道如何关闭两步验证，登录失败后无明确指引
- 国际版与中国版登录页标题不区分

**人机验证处理流程**：
1. 默认使用mobile SSO直连登录（不经过Cloudflare）
2. 若触发CAPTCHA导致登录失败，点击"用浏览器登录"回退
3. WebView加载佳明登录页，用户手动完成人机验证
4. 登录成功后自动提取cookie，正常使用

### v7.0.1 (2026-09-02) — 佳明中国版突破Cloudflare + 全平台DI token统一

**功能实现**：
- 佳明中国版改用mobile SSO + DI OAuth Bearer tokens认证，通过connectapi.garmin.cn访问API，彻底绕过Cloudflare 403拦截
- 佳明中国版登录改为直接输入邮箱密码，不再使用WebView登录
- 佳明中国版全流程支持：登录→活动列表→FIT下载→FIT上传
- 国际版与中国版统一使用DI token架构，代码结构一致

**解决的问题**：
- 佳明中国版gc-api上传接口被Cloudflare拦截导致全部403（空响应体+cf-ray标识）
- 佳明中国版JWT_WEB+session+CSRF方案不稳定，易被WAF识别
- 国际版与中国版认证逻辑不统一，维护成本高

**根因分析**：
- Cloudflare通过TLS指纹（JA3/JA4）+浏览器特征header（sec-ch-ua/sec-fetch-*）识别OkHttp非浏览器请求
- 普通curl→403 Cloudflare拦截；curl_cffi模拟Chrome TLS+完整浏览器header→401业务层认证失败
- connectapi.garmin.cn端点确认存在（返回405 Method Not Allowed），且不经过Cloudflare WAF

### v7.0.0 (2026-09-01) — 佳明国际版突破 + UI全面优化

**功能实现**：
- 佳明国际版改用mobile SSO + DI OAuth Bearer tokens认证，通过connectapi.garmin.com访问API，彻底绕过Cloudflare 403拦截
- 佳明国际版登录改为直接输入邮箱密码，不再使用WebView登录
- 佳明国际版全流程验证通过：登录→活动列表→FIT下载→FIT上传

**解决的问题**：
- 佳明国际版gc-api被Cloudflare拦截导致上传下载全部403
- WebView方案陷入重定向循环导致请求卡住
- 调试日志刷屏导致主日志区域无法查看

**UI优化**：
- 数据来源/同步目标改为四列网格布局，对齐整齐
- 同步目标Outbase独占第一行四列，更醒目
- 选中按钮颜色与登录页主题色一致
- 开发中按钮两行显示（平台名+开发中小字），浅灰+半透明明显区分
- 按钮字体自适应单行显示，不再换行

**适用场景**：
- 骑行爱好者多平台数据迁移与备份
- 佳明中国区与国际区账号数据互导
- 码表数据（iGPSPORT/迈金/百锐腾）同步到运动社区（行者/黑鸟/Outbase）
- 国内平台数据导出到国际平台（佳明国际/高驰国际）

### v6.7.8 (2026-09-01) — 佳明国际版mobile SSO方案
- 佳明国际版改用mobile SSO + DI OAuth Bearer tokens，绕过Cloudflare
- 中国版保持JWT_WEB+session不变

### v6.7.0 (2026-09-01) — 佳明中国版401根因修复
- 佳明gc-api必须同时传递JWT_WEB和session两个cookie，只传JWT_WEB返回401
- 佳明中国版全流程验证通过

### v6.5.0 (2026-09-01) — 新增佳明/高驰/Wahoo三平台
- 新增佳明国际/佳明中国/高驰中国/高驰国际/Wahoo五平台
- 支持国内区↔国际区互传
- UI改为两列网格布局

### v6.4.0 (2026-08-31) — 黑鸟全链路定稿 + 统一时间适配
- 黑鸟单车数据链路定稿，track固定9字段精确解析
- 建立全平台统一时间适配矩阵
- 文件保存改MediaStore解决Android 10+可见性问题

### v6.3.4 (2026-08-29) — 黑鸟上传功能启用
- 黑鸟作为同步目标从开发中改为可用
- 行者GPX时区修复（本地时间误标Z导致差16小时）

### v6.2.6 (2026-08-28) — Outbase上传GPX→FIT转换
- Outbase只接受FIT，GPX源用官方gpx2fit库转换后上传

### v6.0.0 — 项目启动
- 支持iGPSPORT/行者/迈金/黑鸟/百锐腾/Outbase六平台
- 基础同步功能实现

---

## 🙏 鸣谢

感谢iGPSPORT、迈金、黑鸟单车、百锐腾、行者、高驰、佳明、Wahoo、Outbase为运动用户提供的数据记录与存储服务

感谢以下人员为软件测试提供的帮助：素甲粉、青岛AUV阿哲、清茶、萧、洪斌大哥、鸽子王腰果、rockozhao、胶州一哥大沽河河长赵铁柱、海参、兰兰大王、。、初夏飞雪bab、心急吃不了热豆付、青山依旧张指导

鸣谢青岛AUV俱乐部

如有问题，欢迎加入Outbase俱乐部跟主理人反馈。

开发者:多吃两口

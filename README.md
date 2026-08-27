# 鸡翅幸哲迈进OB（开发体验版）

> **Slogan：让运动数据自由流动**

一款支持多平台运动数据互传的 Android 工具。iGPSPORT、行者、迈金、黑鸟单车、百锐腾、Outbase 六大平台数据自由同步，打破平台壁垒。

---

## 📱 应用信息

| 项目 | 内容 |
|------|------|
| 应用名称 | 鸡翅幸哲迈进OB(开发体验版) |
| 包名 | `com.jichi.ob.dev` |
| 当前版本 | v6.1.3 |
| 最低系统 | Android 8.0 (API 26) |
| 目标系统 | Android 16 (API 36) |
| 开发语言 | Kotlin |
| 构建工具 | Gradle 8.13 + AGP 8.7.3 |

---

## ✨ 核心功能

### 1. 六平台数据互传
支持以下平台之间的运动数据（FIT/GPX）双向同步：

| 平台 | 下载 | 上传 | 备注 |
|------|------|------|------|
| **iGPSPORT** | ✅ | ✅ | 迹驰码表数据 |
| **行者** | ✅ | ✅ | 行者APP数据 |
| **迈金** | ✅ | ✅ | 迈金/Onelap数据，支持GCJ-02→WGS84坐标转换 |
| **黑鸟单车** | ✅ | ⚠️开发中 | 黑鸟单车数据 |
| **百锐腾** | ✅ | ⚠️开发中 | Bryton码表数据 |
| **Outbase** | ✅ | ✅ | 目标平台，支持活动上传 |

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
在停止和复制按钮之间增加「测试」按钮，下载1条记录保存到本地，验证下载功能是否正常，并有成功提示。

### 8. 登录状态显示
登录后显示账户名称，已登录状态一目了然。

---

## 🏗️ 项目架构

```
app/src/main/java/com/jichi/ob/
├── MainActivity.kt              # 主界面，同步逻辑核心
├── api/
│   ├── IgpsportApi.kt          # iGPSPORT API
│   ├── XingzheApi.kt           # 行者 API
│   ├── MageneApi.kt            # 迈金 API（含七牛云/fit_content双路径下载）
│   ├── BlackbirdApi.kt         # 黑鸟单车 API
│   ├── BrytonApi.kt            # 百锐腾 API
│   ├── OutbaseApi.kt           # Outbase API
│   └── UploadEngine.kt         # 通用上传引擎
├── model/
│   └── Activity.kt              # 数据模型（活动记录、数据源枚举）
├── ui/
│   └── LoginWebActivity.kt      # WebView登录页（各平台OAuth登录）
└── util/
    ├── PrefsManager.kt          # 偏好设置管理（登录态、同步记忆、设置项）
    └── WebBridge.kt             # WebView JS桥接

app/src/main/assets/
├── magene_fix.js                # 迈金FIT坐标转换核心（移植自开源验证方案）
├── magene_fix.html              # 坐标转换WebView容器
└── bridge.html                   # 通用JS桥接页
```

### 关键技术点

1. **WebView登录**：各平台均通过WebView加载官方登录页，拦截登录回调获取Token，无需逆向账号密码
2. **FIT坐标转换**：通过隐藏WebView执行JavaScript，解析FIT二进制文件中的record消息，修正经纬度坐标
3. **迈金下载双路径**：优先七牛云直链（durl），失败回退fit_content接口（官方网页端同款）
4. **协程异步**：全部网络请求使用Kotlin Coroutines，主线程安全
5. **本地持久化**：SharedPreferences存储登录态、同步记录、设置项

---

## 🛠️ 构建说明

### 环境要求
- JDK 17
- Android SDK Platform 36
- Android Build Tools 36.0.0

### 构建步骤

```bash
# 克隆项目
git clone <repo-url>
cd <project-dir>

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

### v6.1.3（开发体验版）
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

## ⚠️ 已知问题

1. **黑鸟单车上传**：开发中，当前仅支持下载
2. **百锐腾上传**：开发中，当前仅支持下载
3. **部分平台登录**：如遇登录后显示未登录，请点击「确认登录」按钮手动确认

---

## 🤝 参与开发

- **开发者俱乐部**：[鸡翅幸哲迈进OB同步工具开发者俱乐部](https://outbase.cn/zeusfit/zeusfit-mk/sharePage.html?_bid=1005477&type=club&clubId=MTAxMjgz&timestamp=1787569599904&sign=b4604ad9041551e64ce90ea385a0029f)
- **软件更新地址**：[GitHub - Anathleticbicyclist/sync-igpsport-magene-onelap-xingzhe-data-to-outbase](https://github.com/Anathleticbicyclist/sync-igpsport-magene-onelap-xingzhe-data-to-outbase)
- **问题反馈**：欢迎加入俱乐部跟主理人反馈，开发中功能招募测试人员，欢迎联系主理人~

---

## 📄 许可证

本项目仅供学习交流使用，各平台数据版权归原平台所有。使用本软件产生的一切后果由使用者自行承担。

# 鸣谢 / Acknowledgments

## 🏢 平台鸣谢

感谢以下运动平台为广大运动用户提供的数据记录与存储服务，正是因为各平台开放的数据接口，才让数据自由流动成为可能：

| 平台 | 官网 | 说明 |
|------|------|------|
| **iGPSPORT（迹驰）** | [igpsport.com](https://www.igpsport.com) | 专业骑行码表品牌，提供骑行数据记录与云端存储 |
| **行者** | [imxingzhe.com](https://www.imxingzhe.com) | 国内领先的骑行运动APP，提供骑行记录、路线规划与社交功能 |
| **迈金（Onelap）** | [onelap.cn](https://www.onelap.cn) | 智能骑行设备与训练平台，提供室内骑行与数据管理 |
| **黑鸟单车** | [blackbirdsport.com](https://www.blackbirdsport.com) | 骑行运动社区与记录平台 |
| **百锐腾（Bryton）** | [brytonsport.com](https://www.brytonsport.com) | 专业骑行码表品牌，提供GPS骑行数据记录 |
| **Outbase** | [outbase.cn](https://outbase.cn) | 户外运动数据聚合平台，支持多品牌设备数据接入 |

🔗 [点击加入俱乐部](https://outbase.cn/zeusfit/zeusfit-mk/sharePage.html?_bid=1005477&type=club&clubId=MTAxMjgz&timestamp=1787569599904&sign=b4604ad9041551e64ce90ea385a0029f)

> 各平台数据版权归原平台所有，本工具仅用于用户个人数据的迁移与备份，不得用于商业用途或数据爬取。

---

## 👥 测试人员鸣谢

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

---

## 📦 开源项目鸣谢

本项目在开发过程中参考并借鉴了以下开源项目，在此向这些项目的作者表示衷心感谢：

### 1. [dwmer0308-a11y/magene-fit-strava-fix](https://github.com/dwmer0308-a11y/magene-fit-strava-fix)
- **用途**：迈金FIT文件GCJ-02→WGS84坐标转换核心算法
- **说明**：该项目专门解决迈金FIT文件坐标偏移问题，已在Strava实测验证（修正后能匹配赛段）。本项目将其经过验证的核心JavaScript代码移植到APP中（`assets/magene_fix.js`），通过WebView执行，实现迈金FIT坐标转换功能。
- **移植内容**：FIT二进制解析、GCJ-02转WGS-84算法、record消息坐标修正、CRC校验重算

### 2. [Anathleticbicyclist/sync-igpsport-magene-onelap-xingzhe-data-to-outbase](https://github.com/Anathleticbicyclist/sync-igpsport-magene-onelap-xingzhe-data-to-outbase)
- **用途**：本项目的前身与基础
- **说明**：最初的多平台数据同步到Outbase的开源项目，为本项目提供了基础架构思路与各平台API对接参考。

### 3. 其他依赖库
- **[OkHttp](https://github.com/square/okhttp)** - Square出品的HTTP客户端，用于所有网络请求
- **[Kotlin Coroutines](https://github.com/Kotlin/kotlinx.coroutines)** - Kotlin异步编程库
- **[Material Components for Android](https://github.com/material-components/material-components-android)** - Google Material Design组件库
- **[AndroidX](https://developer.android.com/jetpack/androidx)** - Android扩展库

---

## 🏠 开发者俱乐部

**鸡翅幸哲迈进OB同步工具开发者俱乐部**

欢迎加入开发者俱乐部，与主理人和其他开发者一起交流、测试、反馈：


> 如有问题，欢迎加入俱乐部跟主理人反馈。开发中功能招募测试人员，欢迎联系主理人~

---

## 📥 软件更新

最新版本请前往GitHub Release页面下载：

🔗 [https://github.com/Anathleticbicyclist/sync-igpsport-magene-onelap-xingzhe-data-to-outbase/releases](https://github.com/Anathleticbicyclist/sync-igpsport-magene-onelap-xingzhe-data-to-outbase/releases)

---

*最后更新：2026-08-27 | 版本：v6.1.3 开发体验版*

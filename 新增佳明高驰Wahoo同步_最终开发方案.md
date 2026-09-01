# 开发体验版新增「佳明 / 高驰 / Wahoo」同步 —— 最终开发方案

> 版本：v1.0 ｜ 日期：2026-09-01 ｜ 状态：待讨论确认
> 覆盖范围：现有6平台 + 新增3家（佳明CN/COM、高驰3区域、Wahoo），全方向（下载/上传）可能性

---

## 一、结论摘要（先说结论）

1. **佳明**：下载+上传、国内(CN)/国际(COM)双区，开源方案**完全可行**。最大坑是"非Garmin设备FIT会被严格校验拒收"，需在传佳明前做 **FIT设备信息伪装**（有成熟开源方案 Fit-File-Faker）。
2. **高驰**：下载+上传、三区域（国际/中国/欧洲），开源方案**完全可行**（garmin-sync-coros 已跑通上传：OSS+fit/import）。限制是**单设备登录**、FIT大小20KB~200MB、运动类型受限。
3. **Wahoo**：**只支持下载**（OAuth2 + Cloud API），**没有公开上传API**（官方仅 App 内手动导入FIT，无法自动化）。且 OAuth2 需要**注册 Wahoo 开发者应用**拿 client_id/secret。
4. **坐标**：三家全部 WGS84，与现有6平台上传链路**零坐标转换**（此前的"反向转换"想法已确认没必要）。
5. **时间**：三家都是标准UTC，作为目标平台**不需要 +8 适配**；从它们下载转到国内平台时复用现有时间适配矩阵。

---

## 二、平台全景与能力矩阵（所有可能性）

### 2.1 现有6平台（基线）
| 平台 | 作源(下载) | 作目标(上传) | 认证 | 坐标 | 备注 |
|---|---|---|---|---|---|
| iGPSPORT | ✅ | ✅ | WebView | WGS84 | 已上线 |
| 行者 | ✅ | ✅ | WebView | WGS84 | 已上线，时间已适配 |
| 迈金 | ✅ | ✅ | WebView | 七牛WGS84 / fit_content需转 | 上传=开发中 |
| 黑鸟 | ✅ | ✅ | WebView | 源GCJ→已转WGS84 | 已上线，仅收FIT |
| 百锐腾 | ⚠️受限 | ⚠️受限 | - | - | 当前禁用 |
| Outbase | ❌ | ✅ | WebView/h5 | WGS84 | 仅作目标 |

### 2.2 新增3家（本次范围）
| 平台 | 作源(下载) | 作目标(上传) | 认证 | 坐标 | 关键点 |
|---|---|---|---|---|---|
| 佳明 国际(COM) | ✅ | ✅ | WebView SSO(OAuth2) | WGS84 | 需FIT设备伪装 |
| 佳明 中国(CN) | ✅ | ✅ | WebView SSO(garmin.cn) | WGS84 | 同上 + 中国域名 |
| 高驰 中国(region2) | ✅ | ✅ | WebView TrainingHub | WGS84 | 单设备登录；OSS(阿里云) |
| 高驰 国际(region1) | ✅ | ✅ | WebView TrainingHub | WGS84 | OSS(AWS S3) |
| 高驰 欧洲(region3) | ✅ | ✅ | WebView TrainingHub | WGS84 | OSS(AWS S3) |
| Wahoo | ✅ | ❌ 无API | OAuth2(需开发者app) | WGS84 | 只能下载；限流25req/5min |

### 2.3 全方向可能性结论
- **可自动化同步的组合**：任何"源平台"→任何"可上传目标平台"。新增后共有 **9个源 × 8个可上传目标** 的合法组合。
- **无法自动化的方向**：所有 → Wahoo（无上传API）；百锐腾 双向受限。
- **新平台作为目标时的时间/坐标/格式统一策略**：坐标WGS84直传、时间UTC直传、FIT格式按目标平台适配（见§4.3）。

---

## 三、新增平台接口研究结论（逐行源码验证）

### 3.1 佳明（Garmin）—— 参考 running_page + garmin-sync-coros
**认证**（风险最高点）：
- 旧方案 `garth` 库 2026-03 官方弃用（佳明改认证流），社区 fork 继续维护；新方案用 `python-garminconnect` 的**移动端 SSO OAuth2** 流程。
- 国际：`sso.garmin.com` → API `connectapi.garmin.com`
- 中国：`sso.garmin.cn` → API `connectapi.garmin.cn`
- Android 端：用 **WebView 加载官方登录页 → 拦截 OAuth 回调/捕获 Bearer token**（与现有 iGPSPORT/行者模式一致），规避 cloudscraper 反爬。

**接口**（`garmin_sync.py` / `garmin_client.py` 实锤）：
| 操作 | 端点 | 说明 |
|---|---|---|
| 活动列表 | `GET /activitylist-service/activities/search/activities?start=&limit=` | 分页 |
| FIT下载 | `GET /download-service/files/activity/{id}` | 返回zip内含 `{id}_ACTIVITY.fit`，需解压改名 |
| GPX/TCX下载 | `GET /download-service/export/{gpx,tcx}/activity/{id}` | 备选 |
| FIT上传 | `POST /upload-service/upload`（multipart `file`） | 202成功 / 409重复，响应含 `detailedImportResult` |
| 请求头 | `Authorization: Bearer <token>` + `nk: NT` + 浏览器UA | |

**上传硬门槛**：Garmin 官方明确"非Garmin设备的FIT可能缺所需数据结构被拒"，且**对时间戳校验严格**（轻微错误即失败）。开源方案 `Fit-File-Faker`（支持70+款Garmin设备）通过改写 FIT 的 `file_id` + `device_info` 伪装成 Garmin 设备（如 Edge 830/1050）解决，还能触发训练效果计算。→ **必须移植**。

### 3.2 高驰（COROS）—— 参考 garmin-sync-coros（双向已跑通）
**认证**：
- 登录 `POST https://teamcnapi.coros.com/account/login`，body `{account, accountType:2, pwd: MD5(密码)}`，返回 `accessToken / userId / regionId`。
- Android 端更优：WebView 打开 `trainingcn.coros.com` / `training.coros.com` 登录后捕获 `accessToken` 与 cookie（`CPL-coros-token`、`CPL-coros-region`），不碰明文密码。

**三区域**（`region_config.py` 实锤，登录返回 regionId 自动路由）：
| regionId | 区域 | teamapi | OSS |
|---|---|---|---|
| 1 | 国际 | `teamapi.coros.com` | AWS `coros-s3` |
| 2 | 中国 | `teamcnapi.coros.com` | 阿里云 `coros-oss`(北京) |
| 3 | 欧洲 | `teameuapi.coros.com` | AWS `eu-coros` |

**接口**：
| 操作 | 端点 | 说明 |
|---|---|---|
| 活动列表 | `GET {teamapi}/activity/query?size=&pageNumber=` | `data.dataList[].labelId/sportType` |
| FIT下载 | `POST {teamapi}/activity/detail/download?labelId=&sportType=&fileType=4` | fileType: gpx=1/tcx=3/fit=4，返回 `data.fileUrl` 再GET |
| FIT上传 | ① 传FIT zip到OSS（STS凭证来自 `GET faq.coros.com/openapi/oss/sts?bucket=&service=&app_id=&sign=`）② `POST {teamapi}/activity/fit/import`（form: `jsonParameter={source:1,timezone:32,bucket,md5,size,object,serviceName,oriFileName}`） | `result==0000 && status==2` 成功 |

**限制**：高驰**单设备登录**（同步期间开网页/App会导致同步失败）；导入FIT需 **20KB~200MB**；支持运动类型有限（跑步/骑行/游泳等，**不含步行**）。

### 3.3 Wahoo —— 参考 wahoo-skill + hawahooligan
**认证**：标准 **OAuth2**（`api.wahooligan.com/oauth/authorize` + `/oauth/token`），scope `workouts_read offline_data user_read`。**必须注册 Wahoo 开发者应用**（developer.wahoo.fit）拿 `client_id/client_secret` —— 这是准入门槛，非WebView可绕过。

**接口**（源码实锤，全GET）：
| 操作 | 端点 | 说明 |
|---|---|---|
| 用户 | `GET /v1/user` | |
| 活动列表 | `GET /v1/workouts?page=&per_page=` | `workout_summary` 常为null |
| 活动详情 | `GET /v1/workouts/{id}` | 含 `workout_summary.file.url` |
| FIT下载 | GET `workout_summary.file.url` | **CDN直链免认证** |
| 上传 | ❌ 无 | 官方仅 Wahoo App 内"Add Activity > Upload .fit"手动导入 |

**限流**：沙箱 25 req/5min、100/hr、250/day（需做节流队列）。

---

## 四、关键技术决策（反复推敲后的结论）

### 4.1 坐标：零转换 ✅
- 佳明/高驰/Wahoo 存储与接受的活动数据均为 **WGS84**（佳明官方论坛实锤"active fit file is WGS-84"；高驰/Wahoo 为 FIT 标准遵循者）。
- 国内区只是服务器地域/显示底图（百度/高德）不同，**数据层仍是 WGS84**。
- 现有6平台下载后已统一 WGS84（黑鸟/迈金fit_content 已转）→ **直传即可，删除此前"反向转换"设计**。
- 唯一提示：上传后在这些平台 App 看轨迹可能因国内底图有显示偏移（佳明有"地图匹配"可纠偏），与数据无关，不处理。

### 4.2 时间：按目标平台统一策略
- **佳明/高驰/Wahoo 作为目标**：FIT 标准 UTC，直传，**不加 +8**（`add8Hours=false`）。
- 新增平台**作为源下载**转国内平台（行者/黑鸟/iGPSPORT/迈金）时：沿用现有 `localTimeTargets` 时间适配矩阵逻辑（现有 `UploadEngine` 已参数化）。
- 具体到代码：UploadEngine 的 `localTimeTargets = setOf(IGPSPORT, MAGENE)` 追加"从佳明/高驰/Wahoo下载需+8的国内目标"处理。

### 4.3 FIT 格式适配（新增核心组件）
| 目标平台 | 处理 | 依据 |
|---|---|---|
| 佳明(CN/COM) | **FIT设备伪装器**：改写 `file_id(manufacturer=Garmin, product=Edge系列)` + `device_info` | Garmin 拒非自家设备FIT；Fit-File-Faker 方案成熟 |
| 高驰 | 标准FIT直传；校验运动类型 & 20KB~200MB | 官方导入要求 |
| Wahoo(若未来有上传) | 标准FIT | Wahoo 生态即标准FIT |

> 伪装器实现：解析FIT二进制（现有工程已有 `fitdecode`/FIT解析能力），替换 file_id/device_info 记录后重打包。用 `fit_tool`（Stages Cycling）或自研最小解析。

### 4.4 认证方式（WebView优先）
| 平台 | 方案 | 凭证落地 |
|---|---|---|
| 佳明 | WebView SSO 登录拦截 OAuth token | 存 refresh_token，支持刷新 |
| 高驰 | WebView TrainingHub 登录捕获 accessToken+cookie | 存 token + regionId |
| Wahoo | OAuth2（需开发者 app） | 引导用户在 developer.wahoo.fit 自建应用填入 client_id/secret |

---

## 五、架构改造点（接入现有工程）

现有结构：`DataSource` 枚举 + `UploadSupport` + `UploadEngine.when分发` + 各平台 `XxxApi.kt`。

```
1. model/Activity.kt
   - DataSource 枚举追加：GARMIN_COM("佳明国际","gm"), GARMIN_CN("佳明中国","gmcn"), COROS("高驰","cs"), WAHOO("Wahoo","wo")
   - UploadSupport 追加：GARMIN_COM(true,"需FIT伪装"), GARMIN_CN(true,"需FIT伪装"), COROS(true,"OSS+fit/import"), WAHOO(false,"无上传API")
   - sourcePlatforms() 追加4个源（Wahoo 可作为源）

2. api/ 新增4个类（沿用 BlackbirdApi 范式）
   - GarminApi.kt（domain 参数区分 CN/COM；登录/列表/FIT下载/上传）
   - CorosApi.kt（region 自动路由；登录/列表/FIT下载/OSS上传/import）
   - WahooApi.kt（OAuth2；列表/详情/CDN FIT下载）
   - FitDeviceFaker.kt（FIT 设备伪装器，传佳明前调用）

3. UploadEngine.kt
   - when(target) 追加 GARMIN_COM/GARMIN_CN → uploadToGarmin(finalData, domain)
   - 追加 COROS → uploadToCoros(finalData, region)
   - FIT 伪装器挂到 uploadToGarmin 内（blackbird 只收FIT同理）
   - 时间矩阵按 §4.2 调整

4. LoginWebActivity 扩展（新增佳明/高驰/Wahoo 登录URL与token拦截规则）

5. 高驰 OSS 上传客户端
   - 阿里云：STS→分片上传（已有开源逻辑可移植）
   - AWS：S3 STS→上传（Android 需 AWS SDK 或自实现签名）
```

---

## 六、实施路径（阶段划分，风险从小到大）

| 阶段 | 内容 | 难度 | 交付验证 |
|---|---|---|---|
| **0** | 架构抽象：能力矩阵化、DataSource/UploadSupport 扩展、时间矩阵调整 | 🟢 | 编译+回归现有6平台 |
| **1** | **高驰** 下载+上传（最标准、无认证专利） | 🟢 | WebView登录→下载FIT→OSS→import→行者验证 |
| **2** | **佳明** 下载+上传（认证+FIT伪装最重） | 🟡 | WebView SSO→列表/FIT下载→伪装→上传CN/COM |
| **3** | **Wahoo** 下载（OAuth2+开发者app） | 🟡 | 开发者app注册→列表→CDN FIT下载 |

> 建议顺序理由：高驰整链最短（接口纯REST、OSS是现成STS），先跑通"新增平台"全流程；佳明认证和FIT伪装坑多，放中间；Wahoo 卡在开发者app注册，用户需先注册。

---

## 七、风险与对策

| 风险 | 等级 | 对策 |
|---|---|---|
| 佳明 garth 弃用、SSO 认证变动 | 🔴 | WebView真实浏览器登录，跟随社区新方案；先做小流量实测 |
| 佳明拒非自家设备FIT | 🔴 | 移植 Fit-File-Faker 伪装逻辑；先手工验证伪装后上传 |
| 佳明中国区(garmin.cn) SSL/MFA特殊性 | 🟡 | 真机实测；必要时仅先支持COM再补CN |
| 高驰单设备登录限制 | 🟡 | 同步前提示用户勿开网页/App；串行同步 |
| 高驰 OSS STS 参数为公开硬编码(app_id/sign) | 🟡 | 短期可用；做异常降级（提示手动导入） |
| Wahoo 开发者app注册门槛 + 限流 | 🟡 | 引导用户注册；内置节流队列 |
| 高驰/佳明风控(频繁同步) | 🟡 | 复用现有后台同步节流/失败重试机制 |
| 迈金/百锐腾上传为开发中 | 🟢 | 维持现状，不属本次范围 |

---

## 八、需要你拍板/配合的事项

1. **范围确认**：新增平台做**双向全链路**（作源+作目标）？Wahoo 只能作源（无上传API）——是否接受 Wahoo 仅下载？
2. **Wahoo 开发者应用**：需你去 [developer.wahoo.fit](https://developer.wahoo.fit) 注册应用拿 client_id/secret（这是 Wahoo 的硬门槛，我无法代注册）。
3. **佳明中国区账号**：需要你提供/授权一个 garmin.cn 账号做真机实测（含MFA验证流程）。
4. **高驰账号**：确认可接受"同步期间不能开网页/App"的单设备限制。
5. **先后顺序**：认可"阶段0→1(高驰)→2(佳明)→3(Wahoo)"的顺序？

---

*附：核心开源项目参考*
- running_page（佳明COM/CN下载+上传、高驰下载）— github.com/yihong0618/running_page
- garmin-sync-coros（佳明↔高驰双向、高驰上传OSS+import实锤）— github.com/XiaoSiHwang/garmin-sync-coros
- Fit-File-Faker（FIT伪装成Garmin设备）— github.com/jat255/Fit-File-Faker
- wahoo-skill / hawahooligan（Wahoo Cloud API 下载）— github.com/tgmerritt/wahoo-skill · github.com/mrebbert/hawahooligan

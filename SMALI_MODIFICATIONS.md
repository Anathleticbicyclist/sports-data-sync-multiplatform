# v9.2.2 Smali 源码与修改说明

> 本目录存放 v9.2.2 反编译后的完整 smali 源码，方便开发者基于 smali 进行二次开发和共创。

## 目录结构

```
smali_source/
├── com/jichi/ob/          # 完整 smali 源码（265个文件，含内部类）
│   ├── TimeZoneSettingsActivity.smali   # 【新增】时区设置二级页面
│   ├── api/UploadEngine.smali           # 【修改】新增 applyIgpTimezoneShift 静态方法
│   ├── util/FitTimeShift.smali          # 【修改】新增 shiftForIgpsportMinus -8h 方法
│   ├── ui/SyncSettingsFragment.smali    # 【修改】设置页入口跳转
│   ├── R$id.smali                       # 【修改】新增 containerTimezone, btnTimeZoneEntry
│   └── R$layout.smali                   # 【修改】新增 activity_timezone_settings
└── res/layout/
    ├── activity_timezone_settings.xml   # 【新增】时区设置页面布局
    └── fragment_sync_settings.xml       # 【修改】设置页底部新增入口
```

## 本次 v9.2.2 修改清单

### 1. 新增文件
- `TimeZoneSettingsActivity.smali` — 时区设置二级页面，动态生成11个平台UI
- `activity_timezone_settings.xml` — 时区设置页面布局（toolbar + ScrollView + container）

### 2. 修改文件
- `UploadEngine.smali`
  - 新增静态方法 `applyIgpTimezoneShift(Context, byte[], ActivityRecord): byte[]`
  - `access$uploadToIgpsport` 中调用时区修正（.locals=1，避免巨型方法VerifyError）
  - `uploadToIgpsport` 本身不做时区修正（回滚为原始逻辑）
- `FitTimeShift.smali` — 新增 `shiftForIgpsportMinus([BJ)[B` 方法（-8h）
- `SyncSettingsFragment.smali` — 设置页底部新增"上传iGP时区修正"入口
- `fragment_sync_settings.xml` — 新增 btnTimeZoneEntry 按钮
- `AndroidManifest.xml` — 注册 TimeZoneSettingsActivity
- `R$id.smali` — 新增 containerTimezone=0x7f080325, btnTimeZoneEntry=0x7f080326
- `R$layout.smali` — 新增 activity_timezone_settings=0x7f0b007a

### 3. 功能说明
- 设置页 → 上传iGP时区修正 → 二级页面
- 11个下载来源平台：迈金、佳明国际、佳明中国、Keep、行者、黑鸟、高驰中国、高驰国际、Wahoo、Intervals.icu、文件夹同步
- 每个平台分"当天运动数据"和"历史运动数据"两组设置
- 每组三选项：+8小时 / -8小时 / 不调整（默认不调整）
- FIT文件走 FitTimeShift，GPX文件走 GpxTimeFixer

## 编译方式

```bash
# 使用 apktool 回编译
java -jar apktool.jar b v917_decoded -o output.apk

# 签名（devRelease）
zipalign -f 4 output.apk output_aligned.apk
apksigner sign --ks jichi-ob-dev.keystore --ks-key-alias jichiobdev \
  --ks-pass pass:jichiobdev2026 --key-pass pass:jichiobdev2026 \
  --out jichi-ob-dev-9.2.2.apk output_aligned.apk
```

## 关键雷点（避免闪退）

1. **巨型方法禁止内联代码**：`uploadToIgpsport`（.locals=36）内联超过5条指令必触发 VerifyError，新功能必须封装独立静态方法，在 `access$xxx` 合成方法中调用
2. **invoke 调用必须核对参数数量**：`setChecked(Z)V` 需要2个寄存器（this + boolean），漏传会导致整个类被 Dalvik 拒绝
3. **寄存器范围**：`.locals>15` 时，`move-object` 不支持 v16+ 源寄存器，必须用 `move-object/from16`
4. **资源ID不能冲突**：新增 layout/id 必须检查 public.xml 中最大ID+1

---

## v9.2.4 Smali 修改说明（2026-10-21）

### 修改文件

1. **`api/UploadEngine.smali`**
   - `uploadToIgpsport` 方法签名增加 `isIntl:Z` 参数
   - 4处硬编码国内版URL改为按 `isIntl` 分支选择：
     - getSignedUrl：国内版 `prod.zh.igpsport.com` / 国际版 `prod.en.igpsport.com`
     - Origin：国内版 `app.igpsport.cn` / 国际版 `app.igpsport.com`
     - Referer：国内版 `app.igpsport.cn/` / 国际版 `app.igpsport.com/`
     - uploadByOss：国内版 `prod.zh.igpsport.com` / 国际版 `prod.en.igpsport.com`
   - `access$uploadToIgpsport` 同步增加Z参数，改用 `invoke-direct/range`

2. **`api/UploadEngine$upload$2.smali`**
   - pswitch_20（iGPSPORT国内版）调用点传 `const/4 v6, 0x0`（isIntl=false）
   - pswitch_22（iGPSPORT_INT国际版）调用点传 `const/4 v6, 0x1`（isIntl=true）

3. **`util/UpdateChecker.smali`**
   - 3处硬编码版本号 `9.2.2` → `9.2.4`（版本比较行、showUpToDate文案、showUpdateDialog文案）

4. **`res/layout/fragment_about.xml`**（新增到smali_source）
   - 更新日志改为 v9.2.4 / v9.2.3 / v9.2.2 三条简写

### 根因说明
- iGP国际版上传假成功：原代码4处URL全部硬编码国内版端点，国际版token调用国内版端点返回HTTP 200但数据静默丢弃（不进国际版账户）
- 检测更新失效：UpdateChecker硬编码当前版本号，升版本后未同步修改

## v9.4.0 临时码表全量并入（2026-10-26）

### 修改清单
- **`com/jichi/ob/MainActivity.smali`**：`checkTrialFeature` 由 private 改 public（`invoke-direct`→`invoke-virtual` 3 处），供码表/热力图入口门禁调用
- **新增 `com/jichi/bikecomputer/BikeComputerEntryClick.smali`**（码表入口门禁）：点击「临时码表」卡片 → checkTrialFeature 校验体验码 → false 弹体验弹窗返回，true 启动 com.jichi.bikecomputer.MainActivity
- **新增 `com/jichi/ob/heatmap/HeatmapEntryClick.smali`**（热力图入口门禁）：同上逻辑校验体验码后进入热力图
- **`res/layout/fragment_about.xml`**：热力图与实验室卡片之间新增 cardBikeComputer「临时码表」入口（背景 about_card_green）
- **新增 `res/layout/dialog_trial.xml`**：体验码弹窗 5 个独立功能行（新建任务/轨迹合并·贴纸/临时码表/热力图/体验码到期后）
- **新增 `res/values/bc_colors.xml` + `res/values-night/bc_colors.xml`**：码表 13 色（bc_accent/bc_bg/bc_danger/bc_white 等）深浅双版
- **`res/values-night/colors.xml`**：补 `about_card_green=#1E2F25`（深色下入口卡片深绿，文字可读）

### 码表并入方式
- 码表 5 个 Activity（Main/Bike/Sensor/Display/History）+ BikeService + 数据层（GpsTracker/BaroAltimeter/BleSensors/TrackStore）+ 导出（FIT/GPX）编译为独立 `classes4.dex` 追加进 APK（多 dex，桩类运行时解析到 OB 真实类）
- 码表 5 Activity 挂 `NightContext`（读 OB PrefsManager.getDarkMode 三态，createConfigurationContext 强制 uimode），深色模式跟随 OB
- 码表布局/资源全部 `bc_` 前缀并入 OB 资源树；R 映射 **bc_ 前缀优先**（修复 btnStop 与 OB 同名 id 冲突导致的记录页空指针闪退）
- 记录结束一键上传：已登录平台过滤 + 本地文件夹恒显（17 平台）
- 版本号三处对齐：build.gradle defaultConfig+dev flavor versionCode/versionName=94000/9.4.0 + 关于页 v9.4.0
- 独立码表 App（com.jichi.bikecomputer）停止维护

### 体验码门禁
- 新增功能（临时码表/热力图）点击需体验码：未通过 → 弹体验弹窗（5 功能行：新建任务/轨迹合并·贴纸/临时码表/热力图/体验码到期后），暂不使用可关闭
- 身体传感器（BODY_SENSORS）未授权不阻塞进入：Dialog「去系统设置/继续」，仅心率/步频不可用

### round9 修复：体验弹窗确认按钮 IllegalAccessError（v9.4.0 不变）
- `SyncSettingsFragment.smali`：`showTrialDialogForFeature$lambda$36` 由 **private** static final 改 **public** static final
- 崩溃：`SyncSettingsFragment$$ExternalSyntheticLambda27.onClick` 跨类 invoke-static 调用 private 方法 → IllegalAccessError（点体验弹窗确认按钮闪退）
- 全库扫描 3 个 dex 全部 lambda 类对宿主类 private 方法调用：仅此 1 处隐患，其余 0

### round10 修复：第三方FIT传佳明国际 HTTP 412（v9.4.1）
- 根因：迈金/iGPSPORT/行者等第三方原生 FIT 的 file_id manufacturer 非 Garmin，佳明国际 upload-service 校验拒绝（登录 owner 正常返回但 uploadId 空 → HTTP 412）；`FitDeviceFaker.fake()` 早已实现但全工程无业务调用点（死代码），设置里"伪装为佳明设备"开关只接了 UI 没接上传链路
- 改动：`GarminApi.smali` 的 `uploadActivity` 入口、fitData 参数处理前，先 `isAlreadyGarmin(fit)` 判断；非 Garmin 则 `fake(fit, true, 0)` 伪装为 Edge 830（manufacturer=1, product=0xc32），再上传；try/catch 兜底，伪装异常打日志「v9.4.1 FIT伪装异常」后用原文件上传，不阻断流程
- 已是 Garmin 的文件（GPX→FIT 转换器产物）自动跳过不重复处理
- 版本号对齐：apktool.yml 94001/9.4.1 + BuildConfig.VERSION_NAME + MainActivity.APP_VERSION + UpdateChecker + 关于页 fragment_about.xml（开发体验版v9.4.1/本次更新v9.4.1/更新日志三条简写）

---

## v9.5.4 / v9.5.5 Smali 修改说明（2026-11-05）

### 新增文件
- `com/jichi/ob/util/BrytonSite.smali` — 百锐腾站点静态缓存 + URL 工厂（cn=`http://www.brytonsports.cn`，int=`https://active.brytonsport.com`），含 `getUserId()/getToken()` 直读 SharedPreferences(`jichi_ob`) 与 cookie 补采
- `com/jichi/ob/ui/BrytonSitePicker.smali` / `BrytonSitePicker.smali` / `BrytonSiteRowClick.smali` — 国内站/国际站切换单选弹窗与点击回调

### 修改文件
- `util/PrefsManager.smali` — 新增 `KEY_BRYTON_SITE="bryton_site"`（默认 cn）、`getBrytonSite()/setBrytonSite()`，构造器调用 `BrytonSite.init(ctx)`
- `api/BrytonApi.smali` — BASE/LOGIN_URL 改为 <clinit> 按站点动态赋值；authHeaders 改为 Meteor 三件套（`X-User-Id` / `X-Auth-Token` / `x-api-key`）+ Cookie；FIT 下载 URL 改为 `GET {base}/api/activity?id={id}`
- `api/BrytonApi$*.smali` / `BrytonWebApi*.smali` / `BrytonWebUploader*.smali` — 所有 Bryton host 统一走 BrytonSite 工厂
- `ui/LoginWebActivity.smali` — 百锐腾登录入口按站点改写 URL；`detectIgpsport()` 的 JS 由只读 `persist:app-store` 改为多来源提取（`IGS--TOKEN` / persist / URL `?token=` / 全 localStorage / cookie），修复 iGPSPORT 国际区登录态识别不到
- `ui/LoginFragment.smali` — 百锐腾卡片标题显示「· 国内站/国际站」，详情弹窗增加站点切换行
- `api/IgpsportApi.smali` 及 5 个 `IgpsportApi$*.smali` — `authHeaders` 增加 intl 参数，Origin/Referer 按区域同源（int=.com / cn=.cn），下载请求 Referer 同步
- `api/UploadEngine.smali` — 移除 BRYTON 枚举映射，上传落 default「开发中」
- `ui/SyncSettingsFragment.smali` / `ui/CreateTaskFragment.smali` / `model/DataSource.smali` — 百锐腾不再作为上传目标（置灰/过滤/不可恢复）
- `util/UpdateChecker.smali` / `MainActivity.smali` / `BuildConfig.smali` — 版本号 9.5.5 对齐
- `res/layout/fragment_about.xml` — 更新日志改为 v9.5.5 / v9.5.4 / v9.5.3 三条简写 + 下载提示

### 编译注意（v9.5.5 实测踩坑）
1. 新增类后主 dex 类型数超过 65536，需把 `smali/io`、`smali/android`、`smali/_COROUTINE` 移到 `smali_classes5`
2. `fragment_about.xml` 引用的 `@id/cardBikeComputer` 需在 `res/values/ids.xml` + `public.xml` 补齐（原 APK 数值 0x7f080390）
3. 监听器接口方法名必须精确：`DialogInterface.OnClickListener` 是 `onClick(DialogInterface,int)`（写成 onItemClick 会 AbstractMethodError 闪退）

---

## v9.5.6 Smali 修改说明（2026-11-06）

### 新增文件
- `ui/SyncRunReport.smali` — 本次运行明细内存区（状态/标题/源/目标/详情/原因/分类/时间/ActivityRecord/平台）+ 失败原因分类 + 点选监听 + 摘要格式化
- `ui/SyncRunDetailDialog.smali` — 纯代码构建三段式明细弹窗（成功/跳过/失败，失败行带原因分类+原文+「重试」）
- `ui/SyncRunRetry.smali` — 单条重试后台线程（Continuation+CountDownLatch 桥接），复用 access\ / access\
- `heatmap/HeatmapTrackStore.smali` — 热力图本地轨迹统一扫描（MediaStore.Downloads / 裸 File 降级 / App 外部目录 / SAF 选择文件夹）
- `heatmap/HeatmapActivity\/\/\.smali` — 底图在线切换 / 选择文件夹 / 重新扫描监听

### 修改文件
- `MainActivity.smali`：recordSync 处单点打点 `SyncRunReport.note(...)`；uploadOneToTarget 记录目标平台；runTask/startSync 调 `begin()`
- `MainActivity\\.smali`：每条记录循环体记录开始明细
- `ui/SyncFragment.smali`：统计数字可点击 + 「本次运行明细」入口（新增 UI 代码块放在 onViewCreated 末尾，规避寄存器类型冲突）
- `heatmap/HeatmapTileLoader.smali`：瓦片源改合法 XYZ + OSM/Carto 回退；内存 LruCache + 磁盘缓存按 z/x/y_亮暗 分 key；连续失败熔断进离线
- `heatmap/HeatmapView.smali`：离线优先渲染（经纬网格底图 + 热力 + 状态条 + 图例 + 双击复位）
- `heatmap/HeatmapEngine.smali`：热力位图背景改全透明（原不透明底把地图完全盖住）
- `heatmap/HeatmapActivity.smali` / `\` / `\`：扫描入口改 `HeatmapTrackStore.scan(context)`，新增底图开关/选择文件夹按钮，空状态文案可操作
- `api/GarminApi.smali`：新增 `uploadActivityOnceCookiePost`（单次 OkHttp POST `/gc-api/upload-service/upload/`，Cookie/CSRF/Origin/Referer 全套头）；injectCookies 同凭证跳过；parseCredential 引用缓存；prepareWebView 轮询 500→250ms
- `api/GarminApi\\.smali`：CN/COM 先走单 POST，成功/409/明确失败即返回，401/403/HTML 回退旧链路
- `res/values/public.xml` + `ids.xml`：补齐 125 个缺失资源 id（按原 APK 数值），稳定 aapt2 id 分配
- 版本号对齐：apktool.yml（95600/9.5.6）、BuildConfig、UpdateChecker、MainActivity banner、fragment_about.xml

### 本轮踩坑（重要）
1. 往巨型方法（onViewCreated/buildUi）中间插入代码会改变寄存器类型流，ART 校验直接 VerifyError 闪退。新增 UI 代码应追加到方法末尾或封装独立静态方法；改完必须装机冒烟。
2. apktool 内置汇编器通过 ≠ 运行时校验通过，VerifyError 只有真机/模拟器启动才暴露。
3. 热力图读文件必须走 MediaStore/SAF（App 未声明存储权限），裸 File.listFiles() 在 Android 10+ 返回空。

---

## v9.5.7 Smali 修改说明（2026-11-06）

### 修改文件
1. **`ui/LoginWebActivity.smali`**
   - 核心修复：outbase 专属视口块 `const/4 v5` 由 0x0 改为 0x1，使 setUseWideViewPort、setLoadWithOverviewMode 均传 true，对齐正式版
   - 根因：两开关误设 false 导致网页视口/布局异常，JS 报 "Cannot read properties of undefined (reading 'ec')"，网页自行跳回 login.html 并清 cookie
   - onCreate 增加 setWebContentsDebuggingEnabled(true) 调试开关
2. **`api/GarminApi$ensureValidToken$2.smali`**
   - 第 386 行改为无条件 `goto :cond_e`：静默刷新失败后国内/国际都不做明文自动重登，返回原凭证，避免重复登录触发风控；原明文重登代码保留但不可达
3. **`MainActivity$checkAllLogins$1.smali`**
   - 持久化保证：唯一 clearCredential 前的平台判断，WAHOO/COROS_CN/COROS_INT/GARMIN_COM/GARMIN_CN 全部走保留分支，不清除凭证；佳明中国网页版登录态持久化
4. **`res/layout/fragment_about.xml`**
   - 更新日志第一条改为 v9.5.7 内容（修复 Outbase 登录、修复佳明检测逻辑）

### 本轮踩坑（重要）
- 修改二进制 AXML 文本时，手工重建字符串池（重算偏移/长度前缀/chunkSize/对齐）会被系统原生解析器判 "Corrupt XML binary file"，关于页 inflate 即闪退；自写结构校验脚本不可信，native 解析器与 logcat 才是权威。
- 正确做法：等长字节替换，把新文案调整到与旧字符串完全相同的 UTF-8 字节数，只换内容，长度前缀/偏移/chunkSize/文件大小全部不变，再装机验证。

### 验证
- 模拟器实测：Outbase 真实登录后 dashboard 稳定停留、无 'ec' 报错、不跳回 login；启动不闪退，关于页正常，四个 tab 切换正常。

---

## v9.6.3 / v9.6.4 行者 FIT 时间智能归一化（2026-11-10）

### 背景
行者存在两类 FIT：App 生成的规范文件 `local_timestamp - timestamp = +8h`（本就正确，多为当天）；服务器生成的不规范文件两者相等、缺时区偏移（多为历史）。iGPSPORT/迈金按 Garmin 标准用该差值反推时区，旧逻辑对所有行者 FIT 一刀切 +8h，导致当天文件被改成 +16h。

### 修改/新增文件
1. **新增 `util/FitUtcShift.smali`（v9.6.3，本次补入库）**：协议级白名单，仅改 `(mesg=34,field=5)` activity.local_timestamp，含 CRC 重算；含内部类 `$DefMsg`、`$FieldDef`。
2. **新增 `util/XingzheFitNormalizer.smali`（v9.6.4，Java 编译进 dex）**：读 activity 真实偏移——偏移=0 调 `FitUtcShift.shift(+28800)`；偏移=+8h 原样；其他/异常（Throwable 兜底）原样返回。
3. **`api/XingzheApi$downloadGpxOrFit$2.smali`**：仅 FIT 分支 return 前对字节数组调 `XingzheFitNormalizer.normalize`，两个 GPX 分支不动。
4. **`api/UploadEngine.smali`**：删除"行者 FIT 强制 +8h"整段，保留用户手动三选一开关（`{source}_same_day`/`{source}_history`）。

### 本轮踩坑（重要）
1. 手写 FIT 解析器时，定义消息的开发者字段并非总存在：必须按 record header 的 bit5(0x20) 判断，该位为 0 时没有 dev count 字节，误读会导致位置错位、findActivity 静默返回 null。
2. 下载点已自动归一化后，若用户在"上传 iGP 时区修正"里对行者又开 +8h，会叠加成 +16h（平台导回文件偏移 57600s 是关键证据）。根源归一化后行者手动开关应保持"不调整"。

### 验证
- 真实文件功能测试：历史文件（偏移 0）触发 1 次 shift(28800)，当天文件（+8h）返回原数组不触发。
- 真机实测：当天、历史两条记录 iGPSPORT 显示时间均正确。

---

## v9.6.5 迈金 FIT 时间形态判定（2026-11-11）

### 背景
迈金 `fit_content` 下发的 FIT 里 `record/start_time` 存的是 UTC 原值，iGPSPORT 直接把该数值当本地时间显示，造成活动时间早 8 小时（本地 09:14 显示 01:14）。迈金同一来源的文件存在三种形态，不能一刀切：

- 形态 A：`local_timestamp` 缺失或为 0（纯 UTC）
- 形态 B：`local_timestamp` 与 `record.timestamp` 相同（本地时间冒充 UTC）
- 形态 C：两者相差 +28800（规范分离）

### 新增 / 修改文件
1. **新增 `util/MageneFitTz.smali`**：严格结构解析（definition→字段表→按 gno / 字段号 / base type 定位，按 `arch` 判大端），两遍遍历；仅平移 base type = uint32 的时间字段，经纬度为 sint32 不受影响；改完重算尾部 CRC16；唯一入口 `normalizeAuto([B)[B`，形态 A 才 +28800 并补 `local_timestamp`，其余原样返回，幂等。
2. **`api/MageneApi$downloadFit$2.smali`**：在 fit_content 分支的 `MageneFitResult` 构造前对字节数组调 `MageneFitTz.normalizeAuto`（注意该分支 `v2` 才是 byte[]，`v3` 是 flag；另一分支 `{v3, v2}` 里 `v2` 是 `const/4 0x0`，挂错会类型不符）。
3. **`api/UploadEngine.smali`**：`applyIgpTimezoneShift` 入口判来源为 MAGENE 直接 `return-object v1`，避免下载已归一后上传阶段再叠加，其余来源与手选档位不受影响。

### 验证
- 离线：两份真实迈金样本（22463B / 8099B）record/start_time/local 全部 +28800，CRC PASS，810/278 点坐标逐点差 0.000000000000 度，二次调用不再改字节。
- 真机：下载→落盘→上传 iGPSPORT 全链路跑通，iGPSPORT 侧持有的文件与设备落盘件字节一致，时间字段即本地时间。

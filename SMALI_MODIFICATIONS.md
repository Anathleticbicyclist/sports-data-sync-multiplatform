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

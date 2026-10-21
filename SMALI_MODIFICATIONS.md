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

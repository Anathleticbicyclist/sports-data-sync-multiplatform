# v9.5.9 Smali 修改记录

## 基线
- 基于 v9.5.7 (work957) 反编译
- apktool 2.9.3, JDK17

## 修改清单

### 1. Outbase 异步处理误判跳过修复
- 文件: `smali/com/jichi/ob/api/OutbaseApi.smali`
- 问题: Outbase上传后服务端异步处理，App立即查询状态返回"处理中"被误判为失败
- 修复: 增加轮询等待，异步处理期间不立即报错

### 2. 佳明中国 cookie POST 直传（核心优化）
- 文件: `smali/com/jichi/ob/api/GarminApi.smali`
- 新增方法: `uploadActivityOnceCookiePost(DataSource, String cred, byte[] data, String fileName) -> String`
  - 从 v9.5.6 (work956) 复制，570行
  - OkHttp MultipartBody POST 到 gcApiHost + `/upload-service/upload/`
  - 状态码: 200/202=成功, 409=重复活动, 401/403=__RETRY_WEBVIEW__, 异常=__RETRY_WEBVIEW__
  - headers: Cookie + connect-csrf-token + 浏览器UA + Referer + Origin
- 入口调用: `uploadActivityOnce` 方法开头插入 cookie POST 调用
  - 成功返回上传结果，失败(__RETRY_WEBVIEW__)降级原WebView fetch
- 超时: 30秒

### 3. 国际登录URL优化
- 文件: `smali/com/jichi/ob/ui/LoginWebActivity.smali`
- 佳明国际登录URL改为 `https://www.garmin.com/zh-CN/account/`

### 4. 调试日志
- 文件: `smali/com/jichi/ob/api/GarminApi$Companion.smali`
- `addDebugLog` 去掉 enableDebugLogs 开关检查，无条件输出

## 关键架构说明

### 佳明上传两条通道
1. **DI Token 通道** (佳明国际): mobile SSO 拿到 DI token，Bearer token 调 connectapi.garmin.com
2. **Cookie POST 通道** (佳明中国): diToken=false 时，用 cookie + csrf-token 调 connect.garmin.cn/gc-api

### cookie POST 工作流程
1. LoginWebActivity WebView 登录后，CookieManager.getCookie() 提取所有 cookie（含 HttpOnly）
2. CSRF token 从 `<meta name="csrf-token">` 提取
3. cred JSON 存 jwt_web/session/csrf/cookies
4. 上传时 OkHttp 直传 MultipartBody，headers 带 Cookie + connect-csrf-token
5. 401/403 降级 WebView fetch（prepareWebView 加载 /app/home 拿 CSRF，JS fetch 上传）

### 已知限制
- cookie POST 首次有预热期（前几次走 WebView 建立 session）
- 401 后降级 WebView 需重新加载页面，耗时 60 秒+
- 重复文件(409)在 cookie POST 生效后可秒回，未生效时走 WebView

### 关键文件位置
- GarminApi.smali: 上传主逻辑，cookie POST 方法在 uploadActivityOnce 附近
- GarminApi$Companion.smali: addDebugLog
- LoginWebActivity.smali: WebView 登录 + CookieManager 提取
- GarminOAuthHelper.smali: OAuth1 ticket 换 token
- UploadEngine.smali: 上传协程调度

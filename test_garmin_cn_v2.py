#!/usr/bin/env python3
"""
佳明中国本地验证脚本 v2
使用正确的mobile SSO登录流程，然后测试connectapi上传下载
"""
import json
import base64
from curl_cffi import requests

# 佳明中国账号
EMAIL = "1406357729@qq.com"
PASSWORD = "15533730767mG"

# 佳明中国常量（从GarminApi.kt中提取）
SSO_LOGIN_URL_CN = "https://sso.garmin.cn/mobile/api/login"
IOS_SERVICE_URL_CN = "https://mobile.integration.garmin.cn/gcm/ios"
DI_TOKEN_URL_CN = "https://diauth.garmin.cn/di-oauth2-service/oauth/token"
DI_GRANT_TYPE_CN = "https://connectapi.garmin.cn/di-oauth2-service/oauth/grant/service_ticket"
CONNECT_API_HOST_CN = "https://connectapi.garmin.cn"
IOS_SSO_CLIENT_ID = "GarminConnect"
IOS_LOGIN_UA = "GarminConnect/4.86.0.1 CFNetwork/1496.0.7 Darwin/23.5.0"
NATIVE_API_UA = "okhttp/4.12.0"
NATIVE_X_GARMIN_UA = "Android-App-GarminConnect/4.86.0.1"
DI_CLIENT_IDS = [
    "GARMIN_CONNECT_MOBILE_ANDROID_DI_2025Q2",
    "GARMIN_CONNECT_MOBILE_ANDROID_DI_2024Q4",
    "GARMIN_CONNECT_MOBILE_ANDROID_DI",
    "GARMIN_CONNECT_MOBILE_IOS_DI",
]
NATIVE_API_UA = "GCM-Android-5.23"
NATIVE_X_GARMIN_UA = "com.garmin.android.apps.connectmobile/5.23; ; Google/sdk_gphone64_arm64/google; Android/33; Dalvik/2.1.0"

def step1_mobile_login():
    """Step 1: mobile login获取serviceTicketId"""
    print("=" * 60)
    print("Step 1: mobile SSO登录获取serviceTicketId")
    
    session = requests.Session(impersonate="chrome120")
    
    login_json = {
        "username": EMAIL,
        "password": PASSWORD,
        "rememberMe": True,
        "captchaToken": ""
    }
    
    params = {
        "clientId": IOS_SSO_CLIENT_ID,
        "locale": "zh-CN",
        "service": IOS_SERVICE_URL_CN,
    }
    
    headers = {
        "User-Agent": IOS_LOGIN_UA,
        "Accept": "application/json, text/plain, */*",
        "Content-Type": "application/json",
        "Origin": "https://sso.garmin.cn",
    }
    
    resp = session.post(SSO_LOGIN_URL_CN, params=params, json=login_json, headers=headers)
    print(f"状态码: {resp.status_code}")
    print(f"响应: {resp.text[:500]}")
    
    if resp.status_code != 200:
        print("❌ 登录失败")
        return None, None
    
    data = resp.json()
    resp_type = data.get("responseStatus", {}).get("type", "")
    
    if resp_type == "MFA_REQUIRED":
        print("❌ 需要MFA验证")
        return None, None
    elif resp_type != "SUCCESSFUL":
        print(f"❌ 登录失败 type={resp_type}")
        return None, None
    
    ticket = data.get("serviceTicketId")
    print(f"✅ 获取serviceTicket成功: {ticket[:20]}...")
    return session, ticket

def step2_exchange_di_token(session, ticket):
    """Step 2: 交换DI token"""
    print("\n" + "=" * 60)
    print("Step 2: 交换DI token")
    
    for client_id in DI_CLIENT_IDS:
        print(f"\n尝试clientId: {client_id}")
        
        basic_auth = "Basic " + base64.b64encode(f"{client_id}:".encode()).decode()
        
        form_data = {
            "client_id": client_id,
            "service_ticket": ticket,
            "grant_type": DI_GRANT_TYPE_CN,
            "service_url": IOS_SERVICE_URL_CN,
        }
        
        headers = {
            "Authorization": basic_auth,
            "User-Agent": NATIVE_API_UA,
            "X-Garmin-User-Agent": NATIVE_X_GARMIN_UA,
            "X-Garmin-Paired-App-Version": "10861",
            "X-Garmin-Client-Platform": "Android",
            "X-App-Ver": "10861",
            "X-Lang": "zh-CN",
            "X-GCExperience": "GC5",
            "Accept": "application/json,text/html;q=0.9,*/*;q=0.8",
            "Content-Type": "application/x-www-form-urlencoded",
            "Cache-Control": "no-cache",
        }
        
        resp = session.post(DI_TOKEN_URL_CN, data=form_data, headers=headers)
        print(f"状态码: {resp.status_code}")
        print(f"响应: {resp.text[:300]}")
        
        if resp.status_code == 200:
            data = resp.json()
            access_token = data.get("access_token", "")
            refresh_token = data.get("refresh_token", "")
            if access_token:
                print(f"✅ DI token获取成功! clientId={client_id}")
                print(f"access_token: {access_token[:30]}...")
                return access_token, refresh_token, client_id
    
    print("\n❌ 所有clientId均失败")
    return None, None, None

def step3_test_activity_list(session, di_token):
    """Step 3: 测试获取活动列表（用curl-cffi模拟Chrome TLS指纹）"""
    print("\n" + "=" * 60)
    print("Step 3: 测试获取活动列表（模拟Chrome TLS指纹）")
    
    url = f"{CONNECT_API_HOST_CN}/activitylist-service/activities/search/activities"
    params = {"limit": 5, "start": 0}
    
    headers = {
        "User-Agent": "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36",
        "Accept": "application/json",
        "Accept-Language": "zh-CN,zh;q=0.9",
        "Authorization": f"Bearer {di_token}",
        "DI-Backend": "connectapi.garmin.cn",
        "X-Lang": "zh-CN",
        "Referer": "https://connect.garmin.cn/app/home",
        "Origin": "https://connect.garmin.cn",
        "sec-ch-ua": '"Not_A Brand";v="8", "Chromium";v="120", "Google Chrome";v="120"',
        "sec-ch-ua-mobile": "?1",
        "sec-ch-ua-platform": '"Android"',
    }
    
    resp = session.get(url, params=params, headers=headers)
    print(f"状态码: {resp.status_code}")
    print(f"响应: {resp.text[:500]}")
    
    if resp.status_code == 200:
        print("✅ 获取活动列表成功！TLS指纹模拟有效！")
        return True
    elif resp.status_code == 403:
        print("❌ 403！TLS指纹模拟无效，Cloudflare仍然拦截")
        return False
    else:
        print(f"⚠️ 其他状态码: {resp.status_code}")
        return False

def step4_test_upload(session, di_token):
    """Step 4: 测试上传FIT"""
    print("\n" + "=" * 60)
    print("Step 4: 测试上传FIT")
    
    # 创建一个最小的FIT文件
    fit_header = bytes([
        0x0E, 0x10, 0x00, 0x07,
        0x00, 0x00, 0x00, 0x00,
        0x2E, 0x46, 0x49, 0x54,
    ])
    fit_data = fit_header + bytes([0x00, 0x00])
    
    url = f"{CONNECT_API_HOST_CN}/upload-service/upload/.fit"
    
    headers = {
        "User-Agent": "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36",
        "Accept": "application/json",
        "Accept-Language": "zh-CN,zh;q=0.9",
        "Authorization": f"Bearer {di_token}",
        "DI-Backend": "connectapi.garmin.cn",
        "X-Lang": "zh-CN",
        "Referer": "https://connect.garmin.cn/app/home",
        "Origin": "https://connect.garmin.cn",
        "sec-ch-ua": '"Not_A Brand";v="8", "Chromium";v="120", "Google Chrome";v="120"',
        "sec-ch-ua-mobile": "?1",
        "sec-ch-ua-platform": '"Android"',
    }
    
    files = {"file": ("test.fit", fit_data, "application/octet-stream")}
    
    resp = session.post(url, headers=headers, files=files)
    print(f"状态码: {resp.status_code}")
    print(f"响应: {resp.text[:500]}")
    
    if resp.status_code in (200, 201, 202):
        print("✅ 上传FIT成功！")
        return True
    elif resp.status_code == 403:
        print("❌ 403！上传被Cloudflare拦截")
        return False
    else:
        print(f"⚠️ 其他状态码: {resp.status_code}")
        return False

def main():
    print("佳明中国本地验证 v2 - 正确的mobile SSO登录流程")
    print(f"账号: {EMAIL}")
    print()
    
    # Step 1: mobile login
    session, ticket = step1_mobile_login()
    if not ticket:
        print("\n❌ 登录失败，终止验证")
        return
    
    # Step 2: 交换DI token
    di_token, refresh_token, client_id = step2_exchange_di_token(session, ticket)
    if not di_token:
        print("\n❌ DI token获取失败，终止验证")
        return
    
    # Step 3: 测试获取活动列表
    list_success = step3_test_activity_list(session, di_token)
    
    # Step 4: 测试上传FIT
    upload_success = step4_test_upload(session, di_token)
    
    # 总结
    print("\n" + "=" * 60)
    print("验证总结")
    print(f"mobile SSO登录: ✅ 成功")
    print(f"DI token获取: ✅ 成功 (clientId={client_id})")
    print(f"获取活动列表: {'✅ 成功' if list_success else '❌ 失败'}")
    print(f"上传FIT: {'✅ 成功' if upload_success else '❌ 失败'}")
    
    if list_success and upload_success:
        print("\n🎉 全部成功！TLS指纹模拟方案可行，可以封装到App中")
    elif list_success:
        print("\n⚠️ 获取列表成功但上传失败，需要进一步分析上传接口")
    else:
        print("\n❌ 获取列表失败，TLS指纹模拟方案不可行，需要换方案")

if __name__ == "__main__":
    main()

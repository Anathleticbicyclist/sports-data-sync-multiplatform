#!/usr/bin/env python3
"""
佳明中国本地验证脚本
用curl-cffi模拟Chrome TLS指纹，验证能否绕过Cloudflare 403
"""
import json
import time
from curl_cffi import requests

# 佳明中国账号
EMAIL = "1406357729@qq.com"
PASSWORD = "15533730767mG"

# 模拟Chrome 120
session = requests.Session(impersonate="chrome120")

# 通用请求头
COMMON_HEADERS = {
    "User-Agent": "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36",
    "Accept": "application/json, text/plain, */*",
    "Accept-Language": "zh-CN,zh;q=0.9",
    "sec-ch-ua": '"Not_A Brand";v="8", "Chromium";v="120", "Google Chrome";v="120"',
    "sec-ch-ua-mobile": "?1",
    "sec-ch-ua-platform": '"Android"',
}

def step1_get_login_page():
    """Step 1: 获取登录页面，提取CSRF token"""
    print("=" * 60)
    print("Step 1: 获取登录页面")
    url = "https://sso.garmin.com/sso/signin"
    params = {
        "service": "https://connectapi.garmin.cn/oauth/authorized",
        "webhost": "https://connect.garmin.cn",
        "source": "https://connect.garmin.cn/zh-CN/",
        "redirectAfterAccountLoginUrl": "https://connectapi.garmin.cn/oauth/authorized",
        "redirectAfterAccountCreationUrl": "https://connectapi.garmin.cn/oauth/authorized",
        "gauthHost": "https://sso.garmin.com/sso",
        "locale": "zh_CN",
        "id": "gauth-widget",
        "cssUrl": "https://connect.garmin.cn/gauth-custom/gauth-custom.css",
        "clientId": "GarminConnect",
        "rememberMeShown": "true",
        "rememberMeChecked": "false",
        "createAccountShown": "true",
        "openCreateAccount": "false",
        "displayNameShown": "false",
        "consumeServiceTicket": "false",
        "initialFocus": "true",
        "embedWidget": "false",
        "generateExtraServiceTicket": "false",
        "generateTwoExtraServiceTickets": "false",
        "generateNoServiceTicket": "false",
        "globalOptInShown": "true",
        "globalOptInChecked": "false",
        "mobile": "true",
        "connectLegalTerms": "true",
        "locationPromptShown": "true",
        "showPassword": "true",
    }
    resp = session.get(url, params=params, headers=COMMON_HEADERS)
    print(f"状态码: {resp.status_code}")
    
    # 提取CSRF token
    csrf_token = None
    if 'csrfToken' in resp.text:
        import re
        match = re.search(r'name="_csrf"\s+value="([^"]+)"', resp.text)
        if match:
            csrf_token = match.group(1)
    print(f"CSRF token: {csrf_token}")
    return csrf_token

def step2_login(csrf_token):
    """Step 2: 提交登录"""
    print("\n" + "=" * 60)
    print("Step 2: 提交登录")
    url = "https://sso.garmin.com/sso/signin"
    params = {
        "service": "https://connectapi.garmin.cn/oauth/authorized",
        "webhost": "https://connect.garmin.cn",
        "source": "https://connect.garmin.cn/zh-CN/",
        "redirectAfterAccountLoginUrl": "https://connectapi.garmin.cn/oauth/authorized",
        "redirectAfterAccountCreationUrl": "https://connectapi.garmin.cn/oauth/authorized",
        "gauthHost": "https://sso.garmin.com/sso",
        "locale": "zh_CN",
        "id": "gauth-widget",
        "cssUrl": "https://connect.garmin.cn/gauth-custom/gauth-custom.css",
        "clientId": "GarminConnect",
        "rememberMeShown": "true",
        "rememberMeChecked": "false",
        "createAccountShown": "true",
        "openCreateAccount": "false",
        "displayNameShown": "false",
        "consumeServiceTicket": "false",
        "initialFocus": "true",
        "embedWidget": "false",
        "generateExtraServiceTicket": "false",
        "generateTwoExtraServiceTickets": "false",
        "generateNoServiceTicket": "false",
        "globalOptInShown": "true",
        "globalOptInChecked": "false",
        "mobile": "true",
        "connectLegalTerms": "true",
        "locationPromptShown": "true",
        "showPassword": "true",
    }
    data = {
        "username": EMAIL,
        "password": PASSWORD,
        "embed": "false",
        "rememberme": "on",
    }
    if csrf_token:
        data["_csrf"] = csrf_token
    
    headers = {
        **COMMON_HEADERS,
        "Content-Type": "application/x-www-form-urlencoded",
        "Origin": "https://sso.garmin.com",
        "Referer": url,
    }
    
    resp = session.post(url, params=params, data=data, headers=headers, allow_redirects=True)
    print(f"状态码: {resp.status_code}")
    print(f"最终URL: {resp.url}")
    
    # 检查是否登录成功（通常会重定向到包含ticket的URL）
    if "ticket=" in resp.url:
        print("✅ 登录成功，获取到ticket")
        return resp.url
    elif "send_event" in resp.text or "success" in resp.text.lower():
        print("✅ 登录成功（响应中包含success）")
        return resp.text
    else:
        print("❌ 登录可能失败")
        print(f"响应前500字: {resp.text[:500]}")
        return None

def step3_get_di_token():
    """Step 3: 获取DI token（通过mobile SSO方式）"""
    print("\n" + "=" * 60)
    print("Step 3: 获取DI token（mobile SSO方式）")
    
    # mobile SSO登录
    url = "https://sso.garmin.com/sso/oauth/token"
    headers = {
        **COMMON_HEADERS,
        "Content-Type": "application/x-www-form-urlencoded",
        "Authorization": "Basic R2FybWluQ29ubmVjdDpIaXNzYW5kUGV0cmVSb2NrU29mdFRvbnVl",
    }
    data = {
        "grant_type": "password",
        "username": EMAIL,
        "password": PASSWORD,
        "scope": "read write",
    }
    
    try:
        resp = session.post(url, headers=headers, data=data)
        print(f"状态码: {resp.status_code}")
        print(f"响应: {resp.text[:500]}")
        
        if resp.status_code == 200:
            token_data = resp.json()
            di_token = token_data.get("access_token")
            print(f"✅ DI token获取成功: {di_token[:20]}...")
            return di_token
        else:
            print("❌ DI token获取失败")
            return None
    except Exception as e:
        print(f"❌ 异常: {e}")
        return None

def step4_test_activity_list(di_token):
    """Step 4: 测试获取活动列表"""
    print("\n" + "=" * 60)
    print("Step 4: 测试获取活动列表")
    url = "https://connectapi.garmin.cn/activitylist-service/activities/search/activities"
    params = {"limit": 5, "start": 0}
    headers = {
        **COMMON_HEADERS,
        "Authorization": f"Bearer {di_token}",
        "Referer": "https://connect.garmin.cn/",
        "Origin": "https://connect.garmin.cn",
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

def step5_test_upload(di_token):
    """Step 5: 测试上传FIT"""
    print("\n" + "=" * 60)
    print("Step 5: 测试上传FIT")
    
    # 创建一个最小的FIT文件（测试用）
    # FIT文件头: 12字节，数据CRC: 2字节
    fit_header = bytes([
        0x0E,  # Header Size
        0x10,  # Protocol Version
        0x00,  # Profile Version (low)
        0x07,  # Profile Version (high)
        0x00, 0x00, 0x00, 0x00,  # Data Size (4 bytes)
        0x2E, 0x46, 0x49, 0x54,  # ".FIT"
    ])
    fit_data = fit_header + bytes([0x00, 0x00])  # CRC
    
    url = "https://connectapi.garmin.cn/upload-service/upload/.fit"
    headers = {
        **COMMON_HEADERS,
        "Authorization": f"Bearer {di_token}",
        "Referer": "https://connect.garmin.cn/",
        "Origin": "https://connect.garmin.cn",
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
    print("佳明中国本地验证 - 模拟Chrome TLS指纹")
    print(f"账号: {EMAIL}")
    print()
    
    # Step 1: 获取登录页面
    csrf_token = step1_get_login_page()
    
    # Step 2: 提交登录
    login_result = step2_login(csrf_token)
    
    # Step 3: 获取DI token（mobile SSO方式）
    di_token = step3_get_di_token()
    
    if not di_token:
        print("\n❌ 无法获取DI token，终止验证")
        return
    
    # Step 4: 测试获取活动列表
    list_success = step4_test_activity_list(di_token)
    
    # Step 5: 测试上传FIT
    upload_success = step5_test_upload(di_token)
    
    # 总结
    print("\n" + "=" * 60)
    print("验证总结")
    print(f"DI token获取: {'✅ 成功' if di_token else '❌ 失败'}")
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

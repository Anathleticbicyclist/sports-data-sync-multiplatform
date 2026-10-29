.class public final Lcom/jichi/ob/api/GarminApi;
.super Ljava/lang/Object;
.source "GarminApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/GarminApi$Companion;,
        Lcom/jichi/ob/api/GarminApi$DiTokenResult;,
        Lcom/jichi/ob/api/GarminApi$GarminSession;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGarminApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1768:1\n1#2:1769\n1869#3,2:1770\n1869#3,2:1772\n*S KotlinDebug\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi\n*L\n610#1:1770,2\n973#1:1772,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u0000 e2\u00020\u0001:\u0003efgB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ*\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u0010J*\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u0010J(\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010\u0010J(\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010\u0010J(\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000bH\u0002J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000bH\u0002J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000bH\u0002J$\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\"H\u0002J6\u0010#\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0014\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010$\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0002\u0010%J\u0012\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010(\u001a\u00020\u000bH\u0002J \u0010)\u001a\u0004\u0018\u00010\u000b2\u0006\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010,J\u001e\u0010-\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010,J\u0010\u0010.\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020+H\u0002J\u0010\u0010/\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020+H\u0002J$\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b012\u0006\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020\u000bH\u0002J&\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b012\u0006\u00103\u001a\u00020\'2\u0008\u0008\u0002\u0010*\u001a\u00020+H\u0002J6\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b012\u0006\u00103\u001a\u00020\'2\u0006\u0010*\u001a\u00020+2\u0006\u0010\u0019\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000bH\u0002J$\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b012\u0006\u00103\u001a\u00020\'2\u0006\u0010*\u001a\u00020+H\u0002J \u00106\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\u000b2\u0008\u0008\u0002\u0010*\u001a\u00020+H\u0082@\u00a2\u0006\u0002\u00107J\u001a\u00108\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u000b2\u0008\u0008\u0002\u00109\u001a\u00020\u000bH\u0002J\"\u0010:\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0008\u0008\u0002\u0010;\u001a\u00020<H\u0082@\u00a2\u0006\u0002\u0010=JD\u0010>\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000b2\u0014\u0008\u0002\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b012\n\u0008\u0002\u0010@\u001a\u0004\u0018\u00010\u000bH\u0082@\u00a2\u0006\u0002\u0010AJ<\u0010B\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020E2\u0012\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b01H\u0082@\u00a2\u0006\u0002\u0010FJ.\u0010G\u001a\u0004\u0018\u00010E2\u0006\u0010\u0019\u001a\u00020\u000b2\u0014\u0008\u0002\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b01H\u0082@\u00a2\u0006\u0002\u0010HJ6\u0010I\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020E2\u0014\u0008\u0002\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b01H\u0082@\u00a2\u0006\u0002\u0010JJ \u0010K\u001a\u0004\u0018\u00010\u000b2\u0006\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010,J4\u0010L\u001a\u0008\u0012\u0004\u0012\u00020N0M2\u0006\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020PH\u0086@\u00a2\u0006\u0002\u0010RJ\u0010\u0010S\u001a\u00020\u000b2\u0006\u0010T\u001a\u00020UH\u0002J(\u0010V\u001a\u0004\u0018\u00010E2\u0006\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010W\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010XJ(\u0010Y\u001a\u0004\u0018\u00010E2\u0006\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010W\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0002\u0010XJ\u0012\u0010Z\u001a\u0004\u0018\u00010E2\u0006\u0010[\u001a\u00020EH\u0002J0\u0010\\\u001a\u0004\u0018\u00010\u000b2\u0006\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010]\u001a\u00020E2\u0006\u0010C\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010^J0\u0010_\u001a\u0004\u0018\u00010\u000b2\u0006\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010]\u001a\u00020E2\u0006\u0010C\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0002\u0010^J(\u0010`\u001a\u0004\u0018\u00010E2\u0006\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010a\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010XJ0\u0010b\u001a\u0004\u0018\u00010\u000b2\u0006\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010]\u001a\u00020E2\u0006\u0010C\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010^J\u0012\u0010c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010d\u001a\u00020\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006h"
    }
    d2 = {
        "Lcom/jichi/ob/api/GarminApi;",
        "",
        "<init>",
        "()V",
        "client",
        "Lokhttp3/OkHttpClient;",
        "initWebView",
        "",
        "context",
        "Landroid/content/Context;",
        "loginMobile",
        "",
        "email",
        "password",
        "isCN",
        "",
        "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loginOAuth1",
        "oauth1ExchangeToken",
        "connect",
        "ticket",
        "oauth1Preauthorized",
        "token",
        "oauth1AuthHeader",
        "method",
        "url",
        "tokenSecret",
        "enc",
        "s",
        "decode",
        "collectCookies",
        "resp",
        "Lokhttp3/Response;",
        "jar",
        "",
        "exchangeDiToken",
        "channelServiceUrl",
        "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "parseCredential",
        "Lcom/jichi/ob/api/GarminApi$GarminSession;",
        "cred",
        "refreshDiToken",
        "ds",
        "Lcom/jichi/ob/model/DataSource;",
        "(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ensureValidToken",
        "gcApiHost",
        "connectApiHost",
        "apiHeaders",
        "",
        "diHeaders",
        "sess",
        "connectHeaders",
        "connectApiCookieHeaders",
        "prepareWebView",
        "(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "injectCookies",
        "host",
        "loadJsonViaWebView",
        "timeoutMs",
        "",
        "(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchViaWebView",
        "headers",
        "body",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadViaWebView",
        "fileName",
        "fileData",
        "",
        "(Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "downloadViaWebView",
        "(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadBinaryViaWebView",
        "(Ljava/lang/String;[BLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getUsername",
        "getActivities",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "offset",
        "",
        "limit",
        "(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resolveGarminTime",
        "item",
        "Lorg/json/JSONObject;",
        "downloadFit",
        "activityId",
        "(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "downloadFitOnce",
        "unzipFit",
        "zipBytes",
        "uploadActivity",
        "data",
        "(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadActivityOnce",
        "downloadWellnessZip",
        "date",
        "uploadWellnessFit",
        "garminTypeKeyToSport",
        "typeKey",
        "Companion",
        "DiTokenResult",
        "GarminSession",
        "app_devRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CONNECT_API_HOST_CN:Ljava/lang/String; = "https://connectapi.garmin.cn"

.field private static final CONNECT_API_HOST_COM:Ljava/lang/String; = "https://connectapi.garmin.com"

.field private static final COOLDOWN_MS:J = 0x5265c00L

.field public static final Companion:Lcom/jichi/ob/api/GarminApi$Companion;

.field private static final DI_CLIENT_IDS:[Ljava/lang/String;

.field private static final DI_GRANT_TYPE_CN:Ljava/lang/String; = "https://connectapi.garmin.cn/di-oauth2-service/oauth/grant/service_ticket"

.field private static final DI_GRANT_TYPE_COM:Ljava/lang/String; = "https://connectapi.garmin.com/di-oauth2-service/oauth/grant/service_ticket"

.field private static final DI_TOKEN_URL_CN:Ljava/lang/String; = "https://diauth.garmin.cn/di-oauth2-service/oauth/token"

.field private static final DI_TOKEN_URL_COM:Ljava/lang/String; = "https://diauth.garmin.com/di-oauth2-service/oauth/token"

.field private static final IOS_LOGIN_UA:Ljava/lang/String; = "Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148"

.field private static final IOS_SERVICE_URL_CN:Ljava/lang/String; = "https://mobile.integration.garmin.cn/gcm/ios"

.field private static final IOS_SERVICE_URL_COM:Ljava/lang/String; = "https://mobile.integration.garmin.com/gcm/ios"

.field private static final IOS_SSO_CLIENT_ID:Ljava/lang/String; = "GCM_IOS_DARK"

.field public static final LOGIN_URL_CN:Ljava/lang/String; = "https://sso.garmin.cn/portal/sso/zh-CN/sign-in?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.cn%2Fapp"

.field public static final LOGIN_URL_COM:Ljava/lang/String; = "https://sso.garmin.com/sso/signin?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.com%2Fmodern%2F"

.field private static final NATIVE_API_UA:Ljava/lang/String; = "GCM-Android-5.23"

.field private static final NATIVE_X_GARMIN_UA:Ljava/lang/String; = "com.garmin.android.apps.connectmobile/5.23; ; Google/sdk_gphone64_arm64/google; Android/33; Dalvik/2.1.0"

.field private static final OAUTH1_BASE_CN:Ljava/lang/String; = "https://connect.garmin.cn"

.field private static final OAUTH1_BASE_COM:Ljava/lang/String; = "https://connect.garmin.com"

.field private static final OAUTH1_CONSUMER_KEY:Ljava/lang/String; = "garminglobal6"

.field private static final OAUTH1_CONSUMER_SECRET:Ljava/lang/String; = ""

.field private static final OAUTH1_SERVICE_CN:Ljava/lang/String; = "https://connect.garmin.cn/modern/"

.field private static final OAUTH1_SERVICE_COM:Ljava/lang/String; = "https://connect.garmin.com/modern/"

.field private static final PREFS_COOLDOWN:Ljava/lang/String; = "garmin_cooldown"

.field private static final SSO_CHANNELS_CN:[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

.field private static final SSO_CHANNELS_COM:[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

.field private static final SSO_LOGIN_URL_CN:Ljava/lang/String; = "https://sso.garmin.cn/mobile/api/login"

.field private static final SSO_LOGIN_URL_COM:Ljava/lang/String; = "https://sso.garmin.com/mobile/api/login"

.field private static final SSO_SIGNIN_CN:Ljava/lang/String; = "https://sso.garmin.cn/sso/signin"

.field private static final SSO_SIGNIN_COM:Ljava/lang/String; = "https://sso.garmin.com/sso/signin"

.field private static final TAG:Ljava/lang/String; = "GarminApi"

.field private static volatile appContext:Landroid/content/Context;

.field private static final debugLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static enableDebugLogs:Z

.field private static volatile lastGarminAuthError:Ljava/lang/String;

.field private static final mainHandler:Landroid/os/Handler;

.field private static volatile sharedWebView:Landroid/webkit/WebView;

.field private static volatile sharedWebViewReady:Z

.field private static volatile webViewLoading:Z


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method public static synthetic $r8$lambda$cLwwZSc2wsaRL8lzciOq8JzRq8w(Lcom/jichi/ob/api/GarminApi;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/api/GarminApi;->oauth1AuthHeader$lambda$5$lambda$4(Lcom/jichi/ob/api/GarminApi;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lww8RV93ezTaofPidGO0Umfcs0s(Lcom/jichi/ob/api/GarminApi;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/api/GarminApi;->oauth1AuthHeader$lambda$3(Lcom/jichi/ob/api/GarminApi;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/jichi/ob/api/GarminApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/GarminApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    const/4 v0, 0x4

    .line 71
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "GARMIN_CONNECT_MOBILE_ANDROID_DI_2025Q2"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 72
    const-string v2, "GARMIN_CONNECT_MOBILE_ANDROID_DI_2024Q4"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 73
    const-string v2, "GARMIN_CONNECT_MOBILE_ANDROID_DI"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 74
    const-string v2, "GARMIN_CONNECT_MOBILE_IOS_DI"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 70
    sput-object v1, Lcom/jichi/ob/api/GarminApi;->DI_CLIENT_IDS:[Ljava/lang/String;

    .line 95
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/jichi/ob/api/GarminApi;->mainHandler:Landroid/os/Handler;

    .line 110
    new-array v0, v0, [Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    const-string v2, "https://mobile.integration.garmin.com/gcm/ios"

    const-string v7, "GCM_IOS_DARK"

    invoke-direct {v1, v7, v2}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    .line 111
    new-instance v1, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    const-string v2, "GCM_ANDROID_DARK"

    const-string v8, "https://mobile.integration.garmin.com/gcm/android"

    invoke-direct {v1, v2, v8}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 112
    new-instance v1, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    const-string v9, "GCM_ANDROID_LIGHT"

    invoke-direct {v1, v9, v8}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 113
    new-instance v1, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    const-string v8, "GarminConnect"

    const-string v9, "https://connect.garmin.com/modern/"

    invoke-direct {v1, v8, v9}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 109
    sput-object v0, Lcom/jichi/ob/api/GarminApi;->SSO_CHANNELS_COM:[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    .line 116
    new-array v0, v5, [Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    const-string v5, "https://mobile.integration.garmin.cn/gcm/android"

    invoke-direct {v1, v2, v5}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    .line 117
    new-instance v1, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    const-string v2, "https://mobile.integration.garmin.cn/gcm/ios"

    invoke-direct {v1, v7, v2}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 115
    sput-object v0, Lcom/jichi/ob/api/GarminApi;->SSO_CHANNELS_CN:[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/jichi/ob/api/GarminApi;->debugLogs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0x1e

    .line 249
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x78

    .line 250
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 251
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 252
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 253
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/api/GarminApi;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$apiHeaders(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi;->apiHeaders(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$collectCookies(Lcom/jichi/ob/api/GarminApi;Lokhttp3/Response;Ljava/util/Map;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi;->collectCookies(Lokhttp3/Response;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$connectApiHost(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/GarminApi;->connectApiHost(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$connectHeaders(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/GarminApi;->connectHeaders(Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadFitOnce(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/GarminApi;->downloadFitOnce(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadViaWebView(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/GarminApi;->downloadViaWebView(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$exchangeDiToken(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/GarminApi;->exchangeDiToken(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchViaWebView(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/GarminApi;->fetchViaWebView(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$garminTypeKeyToSport(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/GarminApi;->garminTypeKeyToSport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$gcApiHost(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/GarminApi;->gcApiHost(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAppContext$cp()Landroid/content/Context;
    .locals 1

    .line 43
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getClient$p(Lcom/jichi/ob/api/GarminApi;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jichi/ob/api/GarminApi;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getDI_CLIENT_IDS$cp()[Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->DI_CLIENT_IDS:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDebugLogs$cp()Ljava/util/List;
    .locals 1

    .line 43
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->debugLogs:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getEnableDebugLogs$cp()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/jichi/ob/api/GarminApi;->enableDebugLogs:Z

    return v0
.end method

.method public static final synthetic access$getLastGarminAuthError$cp()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->lastGarminAuthError:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMainHandler$cp()Landroid/os/Handler;
    .locals 1

    .line 43
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$getSSO_CHANNELS_CN$cp()[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;
    .locals 1

    .line 43
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->SSO_CHANNELS_CN:[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    return-object v0
.end method

.method public static final synthetic access$getSSO_CHANNELS_COM$cp()[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;
    .locals 1

    .line 43
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->SSO_CHANNELS_COM:[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    return-object v0
.end method

.method public static final synthetic access$getSharedWebView$cp()Landroid/webkit/WebView;
    .locals 1

    .line 43
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->sharedWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static final synthetic access$loadJsonViaWebView(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/GarminApi;->loadJsonViaWebView(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$oauth1ExchangeToken(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/GarminApi;->oauth1ExchangeToken(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$oauth1Preauthorized(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/GarminApi;->oauth1Preauthorized(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseCredential(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/GarminApi;->parseCredential(Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$prepareWebView(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/GarminApi;->prepareWebView(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resolveGarminTime(Lcom/jichi/ob/api/GarminApi;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/GarminApi;->resolveGarminTime(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAppContext$cp(Landroid/content/Context;)V
    .locals 0

    .line 43
    sput-object p0, Lcom/jichi/ob/api/GarminApi;->appContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setEnableDebugLogs$cp(Z)V
    .locals 0

    .line 43
    sput-boolean p0, Lcom/jichi/ob/api/GarminApi;->enableDebugLogs:Z

    return-void
.end method

.method public static final synthetic access$setLastGarminAuthError$cp(Ljava/lang/String;)V
    .locals 0

    .line 43
    sput-object p0, Lcom/jichi/ob/api/GarminApi;->lastGarminAuthError:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSharedWebView$cp(Landroid/webkit/WebView;)V
    .locals 0

    .line 43
    sput-object p0, Lcom/jichi/ob/api/GarminApi;->sharedWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public static final synthetic access$setSharedWebViewReady$cp(Z)V
    .locals 0

    .line 43
    sput-boolean p0, Lcom/jichi/ob/api/GarminApi;->sharedWebViewReady:Z

    return-void
.end method

.method public static final synthetic access$setWebViewLoading$cp(Z)V
    .locals 0

    .line 43
    sput-boolean p0, Lcom/jichi/ob/api/GarminApi;->webViewLoading:Z

    return-void
.end method

.method public static final synthetic access$unzipFit(Lcom/jichi/ob/api/GarminApi;[B)[B
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/GarminApi;->unzipFit([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadActivityOnce(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/GarminApi;->uploadActivityOnce(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadBinaryViaWebView(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;[BLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/GarminApi;->uploadBinaryViaWebView(Ljava/lang/String;[BLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadViaWebView(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/GarminApi;->uploadViaWebView(Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final apiHeaders(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 849
    invoke-direct {p0, p2}, Lcom/jichi/ob/api/GarminApi;->parseCredential(Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;

    move-result-object p2

    const/4 v0, 0x4

    .line 851
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 14; Pixel 8 Build/UQ1A.240205.004; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/120.0.6099.230 Mobile Safari/537.36"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 852
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 853
    sget-object v1, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p1, v1, :cond_0

    const-string v1, "https://connect.garmin.cn/app/home"

    goto :goto_0

    :cond_0
    const-string v1, "https://connect.garmin.com/app/home"

    :goto_0
    const-string v2, "Referer"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 854
    sget-object v1, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p1, v1, :cond_1

    const-string p1, "https://connect.garmin.cn"

    goto :goto_1

    :cond_1
    const-string p1, "https://connect.garmin.com"

    :goto_1
    const-string v1, "Origin"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 850
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 857
    invoke-virtual {p2}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getCookies()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "Cookie"

    invoke-virtual {p2}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getCookies()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    :cond_2
    invoke-virtual {p2}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getCsrf()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "connect-csrf-token"

    invoke-virtual {p2}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getCsrf()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p1
.end method

.method private final collectCookies(Lokhttp3/Response;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 609
    const-string v0, "="

    .line 610
    :try_start_0
    const-string v1, "Set-Cookie"

    invoke-virtual {p1, v1}, Lokhttp3/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1770
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 611
    invoke-static {v1, v0, v3, v2, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 612
    invoke-static {v1, v0, v3, v2, v3}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ";"

    invoke-static {v1, v5, v3, v2, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 613
    move-object v2, v4

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method private final connectApiCookieHeaders(Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminApi$GarminSession;",
            "Lcom/jichi/ob/model/DataSource;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p2, 0x5

    .line 897
    new-array p2, p2, [Lkotlin/Pair;

    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Linux; Android 14; Pixel 8 Build/UQ1A.240205.004; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/120.0.6099.230 Mobile Safari/537.36"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 898
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    .line 899
    const-string v0, "Accept-Language"

    const-string/jumbo v1, "zh-CN,zh;q=0.9"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    .line 900
    const-string v0, "Referer"

    const-string v1, "https://connect.garmin.cn/app/home"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p2, v1

    .line 901
    const-string v0, "Origin"

    const-string v1, "https://connect.garmin.cn"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p2, v1

    .line 896
    invoke-static {p2}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 903
    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getCookies()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Cookie"

    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getCookies()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getCsrf()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "connect-csrf-token"

    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getCsrf()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2
.end method

.method private final connectApiHost(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 1

    .line 846
    sget-object v0, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p1, v0, :cond_0

    const-string p1, "https://connectapi.garmin.cn"

    return-object p1

    :cond_0
    const-string p1, "https://connectapi.garmin.com"

    return-object p1
.end method

.method private final connectHeaders(Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminApi$GarminSession;",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 879
    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getOauthToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x7

    .line 881
    new-array v0, v0, [Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getOauthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getOauthTokenSecret()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p4, p3, v1, p1}, Lcom/jichi/ob/api/GarminApi;->oauth1AuthHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Authorization"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, v0, p3

    .line 882
    const-string p1, "User-Agent"

    const-string p3, "Garth-3.0.1"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v0, p3

    .line 883
    const-string p1, "Accept"

    const-string p3, "application/json"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v0, p3

    .line 884
    const-string p1, "X-app-ver"

    const-string p3, "10861"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x3

    aput-object p1, v0, p3

    .line 885
    sget-object p1, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p2, p1, :cond_0

    const-string/jumbo p1, "zh-CN"

    goto :goto_0

    :cond_0
    const-string p1, "en"

    :goto_0
    const-string p3, "X-lang"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x4

    aput-object p1, v0, p3

    .line 886
    const-string p1, "X-GCExperience"

    const-string p3, "GC5"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x5

    aput-object p1, v0, p3

    .line 887
    sget-object p1, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p2, p1, :cond_1

    const-string p1, "connectapi.garmin.cn"

    goto :goto_1

    :cond_1
    const-string p1, "connectapi.garmin.com"

    :goto_1
    const-string p2, "DI-Backend"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    .line 880
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 890
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi;->diHeaders(Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method static synthetic connectHeaders$default(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Map;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 878
    const-string p4, "GET"

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/GarminApi;->connectHeaders(Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 605
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "decode(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final diHeaders(Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminApi$GarminSession;",
            "Lcom/jichi/ob/model/DataSource;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 865
    new-array v0, v0, [Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiToken()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Authorization"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 866
    const-string p1, "User-Agent"

    const-string v1, "GCM-Android-5.23"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 867
    const-string p1, "X-Garmin-User-Agent"

    const-string v1, "com.garmin.android.apps.connectmobile/5.23; ; Google/sdk_gphone64_arm64/google; Android/33; Dalvik/2.1.0"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 868
    const-string p1, "X-Garmin-Paired-App-Version"

    const-string v1, "10861"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v0, v2

    .line 869
    const-string p1, "X-Garmin-Client-Platform"

    const-string v2, "Android"

    invoke-static {p1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x4

    aput-object p1, v0, v2

    .line 870
    const-string p1, "X-App-Ver"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 871
    sget-object p1, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p2, p1, :cond_0

    const-string/jumbo p1, "zh-CN"

    goto :goto_0

    :cond_0
    const-string p1, "en"

    :goto_0
    const-string v1, "X-Lang"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x6

    aput-object p1, v0, v1

    .line 872
    const-string p1, "X-GCExperience"

    const-string v1, "GC5"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x7

    aput-object p1, v0, v1

    .line 873
    sget-object p1, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p2, p1, :cond_1

    const-string p1, "connectapi.garmin.cn"

    goto :goto_1

    :cond_1
    const-string p1, "connectapi.garmin.com"

    :goto_1
    const-string v1, "DI-Backend"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v1, 0x8

    aput-object p1, v0, v1

    .line 874
    sget-object p1, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p2, p1, :cond_2

    const-string/jumbo p1, "zh-CN,zh;q=0.9"

    goto :goto_2

    :cond_2
    const-string p1, "en-US,en;q=0.9"

    :goto_2
    const-string p2, "Accept-Language"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 p2, 0x9

    aput-object p1, v0, p2

    .line 864
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method static synthetic diHeaders$default(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;ILjava/lang/Object;)Ljava/util/Map;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 864
    sget-object p2, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi;->diHeaders(Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final downloadFitOnce(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1427
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final downloadViaWebView(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1136
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->sharedWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1137
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "toString(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1138
    new-instance v2, Lcom/jichi/ob/api/GarminApi$downloadViaWebView$2;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/jichi/ob/api/GarminApi$downloadViaWebView$2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const-wide/32 p1, 0xea60

    invoke-static {p1, p2, v2, p3}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic downloadViaWebView$default(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 1135
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/GarminApi;->downloadViaWebView(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final enc(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 603
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "encode(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "+"

    const-string v3, "%20"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "*"

    const-string v9, "%2A"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "%7E"

    const-string/jumbo v2, "~"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final exchangeDiToken(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 618
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$exchangeDiToken$2;

    const/4 v7, 0x0

    move-object v5, p0

    move-object v4, p1

    move v2, p2

    move-object v6, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/GarminApi$exchangeDiToken$2;-><init>(ZLjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic exchangeDiToken$default(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    .line 618
    const-string p7, ""

    if-eqz p2, :cond_1

    move-object v3, p7

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v4, p7

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/GarminApi;->exchangeDiToken(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final fetchViaWebView(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1018
    sget-object v5, Lcom/jichi/ob/api/GarminApi;->sharedWebView:Landroid/webkit/WebView;

    if-nez v5, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1019
    :cond_0
    new-instance v0, Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v2, p2

    move-object v1, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const-wide/16 p1, 0x7530

    invoke-static {p1, p2, v0, p5}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic fetchViaWebView$default(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 1017
    const-string p2, "GET"

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/GarminApi;->fetchViaWebView(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final garminTypeKeyToSport(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1728
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1729
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1732
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "cycling"

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "biking"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "bike"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1733
    const-string v3, "riding"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "cyclocross"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "gravel"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    .line 1736
    :cond_1
    const-string v2, "running"

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "run"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "treadmill"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1737
    const-string/jumbo v3, "trail_run"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "track_run"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_5

    .line 1740
    :cond_2
    const-string v2, "hiking"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "hike"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "backpacking"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    .line 1741
    :cond_3
    const-string/jumbo v2, "walking"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "walk"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_5

    .line 1744
    :cond_4
    const-string v2, "mountaineer"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "mountaineering"

    return-object p1

    .line 1745
    :cond_5
    const-string/jumbo v2, "ski"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "snowboard"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "snowshoe"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_4

    .line 1748
    :cond_6
    const-string/jumbo v2, "swim"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "pool"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "open_water"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_3

    .line 1751
    :cond_7
    const-string p1, "row"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "kayak"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "canoe"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 1752
    const-string p1, "paddle"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string/jumbo p1, "surf"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto/16 :goto_2

    .line 1755
    :cond_8
    const-string/jumbo p1, "triathlon"

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "multisport"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_1

    .line 1758
    :cond_9
    const-string/jumbo p1, "strength"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    const-string/jumbo v2, "training"

    if-nez p1, :cond_b

    const-string/jumbo p1, "weight"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    move-object p1, v2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1759
    const-string/jumbo p1, "workout"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "fitness"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "gym"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1760
    const-string p1, "elliptical"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string/jumbo p1, "stair"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "climb"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1761
    const-string/jumbo p1, "yoga"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "pilates"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "meditation"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1762
    const-string p1, "flexibility"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "indoor_cardio"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "cardio"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    return-object v1

    :cond_b
    :goto_0
    return-object v2

    :cond_c
    :goto_1
    return-object p1

    .line 1752
    :cond_d
    :goto_2
    const-string p1, "rowing"

    return-object p1

    .line 1748
    :cond_e
    :goto_3
    const-string/jumbo p1, "swimming"

    return-object p1

    .line 1745
    :cond_f
    :goto_4
    const-string/jumbo p1, "skiing"

    return-object p1

    :cond_10
    :goto_5
    return-object v2
.end method

.method private final gcApiHost(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 1

    .line 842
    sget-object v0, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p1, v0, :cond_0

    const-string p1, "https://connect.garmin.cn/gc-api"

    return-object p1

    :cond_0
    const-string p1, "https://connect.garmin.com/gc-api"

    return-object p1
.end method

.method private final injectCookies(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 968
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/GarminApi;->parseCredential(Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 969
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 970
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 972
    const-string v4, ".cn"

    const/4 v5, 0x0

    invoke-static {p2, v4, v5, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "garmin.cn"

    goto :goto_0

    :cond_1
    const-string v2, "garmin.com"

    .line 973
    :goto_0
    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getCookies()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    new-array v7, v1, [Ljava/lang/String;

    const-string p1, "; "

    aput-object p1, v7, v5

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1772
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 974
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; path=/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; domain=."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 980
    :cond_3
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method static synthetic injectCookies$default(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 967
    const-string p2, "connect.garmin.com"

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi;->injectCookies(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final loadJsonViaWebView(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 985
    sget-object v1, Lcom/jichi/ob/api/GarminApi;->sharedWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 986
    :cond_0
    new-instance v0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2;

    const/4 v5, 0x0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2;-><init>(Landroid/webkit/WebView;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v4, v0, p4}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic loadJsonViaWebView$default(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/16 p2, 0x7530

    .line 984
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/GarminApi;->loadJsonViaWebView(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loginMobile$default(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 267
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/GarminApi;->loginMobile(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loginOAuth1$default(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 374
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/GarminApi;->loginOAuth1(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final oauth1AuthHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 558
    const-string v2, "getBytes(...)"

    const-string v3, "HmacSHA1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v6, 0x3e8

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 559
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, "toString(...)"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "-"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 560
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 561
    check-cast v6, Ljava/util/Map;

    const-string v7, "oauth_consumer_key"

    const-string v8, "garminglobal6"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v9, "oauth_nonce"

    invoke-interface {v6, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v10, "oauth_signature_method"

    const-string v11, "HMAC-SHA1"

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v12, "oauth_timestamp"

    invoke-interface {v6, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    move-object v13, v1

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const-string v15, "oauth_token"

    if-lez v14, :cond_0

    invoke-interface {v6, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :cond_0
    const-string v14, "oauth_version"

    move-object/from16 v16, v13

    const-string v13, "1.0"

    invoke-interface {v6, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v13

    .line 568
    new-instance v13, Ljava/net/URI;

    move-object/from16 v18, v14

    move-object/from16 v14, p2

    invoke-direct {v13, v14}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v13}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v13

    .line 570
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 571
    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/CharSequence;

    const-string v14, "&"

    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v21

    if-nez v21, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 572
    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v21, v1

    const/4 v1, 0x0

    aput-object v14, v21, v1

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v1, v21

    check-cast v1, Ljava/lang/String;

    .line 573
    move-object/from16 v21, v1

    check-cast v21, Ljava/lang/CharSequence;

    const/16 v25, 0x6

    const/16 v26, 0x0

    const/16 v22, 0x3d

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v27, v15

    invoke-static/range {v21 .. v26}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v15

    if-lez v15, :cond_2

    move-object/from16 v21, v4

    .line 574
    move-object v4, v13

    check-cast v4, Ljava/util/Map;

    move-object/from16 v23, v10

    move-object/from16 v22, v12

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "substring(...)"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v10}, Lcom/jichi/ob/api/GarminApi;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/GarminApi;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v21

    move-object/from16 v12, v22

    move-object/from16 v10, v23

    :cond_2
    move-object/from16 v15, v27

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    :goto_1
    move-object/from16 v21, v4

    move-object/from16 v23, v10

    move-object/from16 v22, v12

    move-object/from16 v27, v15

    .line 577
    invoke-virtual {v13, v6}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 578
    check-cast v13, Ljava/util/Map;

    invoke-static {v13}, Lkotlin/collections/MapsKt;->toSortedMap(Ljava/util/Map;)Ljava/util/SortedMap;

    move-result-object v1

    .line 579
    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const-string v4, "<get-entries>(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v28, v1

    check-cast v28, Ljava/lang/Iterable;

    move-object/from16 v29, v14

    check-cast v29, Ljava/lang/CharSequence;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/jichi/ob/api/GarminApi$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/api/GarminApi;)V

    const/16 v35, 0x1e

    const/16 v36, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v34, v1

    invoke-static/range {v28 .. v36}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPort()I

    move-result v12

    const-string v13, ""

    if-lez v12, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPort()I

    move-result v12

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 p2, v4

    const-string v4, ":"

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object/from16 p2, v4

    move-object v4, v13

    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "://"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 581
    invoke-direct {v0, v4}, Lcom/jichi/ob/api/GarminApi;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/GarminApi;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, p1

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-direct {v0, v13}, Lcom/jichi/ob/api/GarminApi;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p4

    invoke-direct {v0, v6}, Lcom/jichi/ob/api/GarminApi;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 584
    :try_start_0
    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    .line 585
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v12, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v4, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v10, Ljava/security/Key;

    invoke-virtual {v6, v10}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 586
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OAuth "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 590
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 591
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-interface {v3, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v4, "oauth_signature"

    invoke-interface {v3, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v23

    .line 594
    invoke-interface {v3, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    .line 595
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_5

    move-object/from16 v4, p3

    move-object/from16 v5, v27

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 v4, v17

    move-object/from16 v5, v18

    .line 597
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    const-string v2, ", "

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v10, Lcom/jichi/ob/api/GarminApi$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lcom/jichi/ob/api/GarminApi$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/ob/api/GarminApi;)V

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final oauth1AuthHeader$lambda$3(Lcom/jichi/ob/api/GarminApi;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 579
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/jichi/ob/api/GarminApi;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/jichi/ob/api/GarminApi;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final oauth1AuthHeader$lambda$5$lambda$4(Lcom/jichi/ob/api/GarminApi;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "component1(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "component2(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 598
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/GarminApi;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final oauth1ExchangeToken(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 524
    const-string p3, "oauth_token="

    .line 0
    const-string p4, "oauth1Exchange: HTTP "

    .line 524
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/oauth-service/oauth/exchange/user/2.0?ticket="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 525
    const-string p2, "GET"

    const-string v0, ""

    invoke-direct {p0, p2, p1, v0, v0}, Lcom/jichi/ob/api/GarminApi;->oauth1AuthHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 526
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 527
    const-string v1, "Authorization"

    invoke-virtual {p1, v1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 528
    const-string p2, "User-Agent"

    const-string v1, "Garth-3.0.1"

    invoke-virtual {p1, p2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 529
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 530
    iget-object p2, p0, Lcom/jichi/ob/api/GarminApi;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lokhttp3/Response;

    .line 531
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 532
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    sget-object p3, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    .line 534
    :cond_2
    :try_start_1
    new-instance p2, Lkotlin/text/Regex;

    const-string p4, "<oauth_token>([^<]+)"

    invoke-direct {p2, p4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object p4, v0

    check-cast p4, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p4, v2, v1, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p2

    const/4 p4, 0x1

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_7

    .line 535
    :cond_3
    new-instance p2, Lkotlin/text/Regex;

    const-string v4, "oauth_token[\"\']?\\s*[:=]\\s*[\"\']([^\"\']+)"

    invoke-direct {p2, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {p2, v4, v2, v1, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    .line 536
    :cond_4
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3, v2, v1, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    goto :goto_1

    :cond_5
    move-object p2, v3

    :goto_1
    if-eqz p2, :cond_6

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p2, p3}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move-object p2, v3

    .line 534
    :cond_7
    :goto_2
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private final oauth1Preauthorized(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p3, "oauth1Preauth: HTTP "

    .line 542
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "/oauth-service/oauth/preauthorized"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 543
    const-string p4, "GET"

    const-string v0, ""

    invoke-direct {p0, p4, p1, p2, v0}, Lcom/jichi/ob/api/GarminApi;->oauth1AuthHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 544
    new-instance p4, Lokhttp3/Request$Builder;

    invoke-direct {p4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p4, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 545
    const-string p4, "Authorization"

    invoke-virtual {p1, p4, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 546
    const-string p2, "User-Agent"

    const-string p4, "Garth-3.0.1"

    invoke-virtual {p1, p2, p4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 547
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 548
    iget-object p2, p0, Lcom/jichi/ob/api/GarminApi;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lokhttp3/Response;

    .line 549
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p4

    .line 550
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p4

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq p4, v1, :cond_2

    sget-object p4, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 551
    :cond_2
    :try_start_1
    new-instance p2, Lkotlin/text/Regex;

    const-string p3, "<oauth_token_secret>([^<]+)"

    invoke-direct {p2, p3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object p3, v0

    check-cast p3, Ljava/lang/CharSequence;

    const/4 p4, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p3, v1, p4, v2}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_5

    .line 552
    :cond_3
    new-instance p2, Lkotlin/text/Regex;

    const-string v3, "oauth_token_secret[\"\']?\\s*[:=]\\s*[\"\']([^\"\']+)"

    invoke-direct {p2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p2, v0, v1, p4, v2}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    move-object p2, v2

    .line 551
    :cond_5
    :goto_1
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private final parseCredential(Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;
    .locals 1

    .line 726
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 727
    :cond_0
    sget-object v0, Lcom/jichi/ob/api/GarminApi$GarminSession;->Companion:Lcom/jichi/ob/api/GarminApi$GarminSession$Companion;

    invoke-virtual {v0, p1}, Lcom/jichi/ob/api/GarminApi$GarminSession$Companion;->fromJson(Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;

    move-result-object p1

    return-object p1
.end method

.method private final prepareWebView(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    instance-of v3, v2, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;

    iget v4, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;

    invoke-direct {v3, v0, v2}, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;-><init>(Lcom/jichi/ob/api/GarminApi;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 909
    iget v5, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->label:I

    const-string v8, "GarminApi"

    const-string v9, "connect.garmin.cn"

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v5, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget v1, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->I$1:I

    iget v5, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->I$0:I

    iget-object v8, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$4:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$2:Ljava/lang/Object;

    check-cast v10, Landroid/webkit/WebView;

    iget-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/jichi/ob/model/DataSource;

    iget-object v13, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$0:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, v12

    const-wide/16 v6, 0x1f4

    goto/16 :goto_b

    :pswitch_1
    iget v1, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->I$0:I

    iget-object v5, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v8, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$2:Ljava/lang/Object;

    check-cast v9, Landroid/webkit/WebView;

    iget-object v10, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lcom/jichi/ob/model/DataSource;

    iget-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_2
    iget-object v1, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$2:Ljava/lang/Object;

    check-cast v5, Landroid/webkit/WebView;

    iget-object v8, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/jichi/ob/model/DataSource;

    iget-object v9, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v8

    move-object v8, v1

    move-object v1, v6

    move-object v6, v9

    move-object v9, v5

    goto/16 :goto_6

    :pswitch_3
    iget v1, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->I$0:I

    iget-object v5, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$6:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v9, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$5:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v13, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$2:Ljava/lang/Object;

    check-cast v13, Landroid/webkit/WebView;

    iget-object v14, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/jichi/ob/model/DataSource;

    iget-object v15, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, v12

    goto/16 :goto_5

    :pswitch_4
    iget-object v1, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$6:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v9, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$2:Ljava/lang/Object;

    check-cast v11, Landroid/webkit/WebView;

    iget-object v14, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/jichi/ob/model/DataSource;

    iget-object v15, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v1, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v14, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$2:Ljava/lang/Object;

    check-cast v14, Landroid/webkit/WebView;

    iget-object v15, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lcom/jichi/ob/model/DataSource;

    iget-object v6, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 910
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->sharedWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_1

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 911
    :cond_1
    sget-object v5, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne v1, v5, :cond_2

    move-object v5, v9

    goto :goto_1

    :cond_2
    const-string v5, "connect.garmin.com"

    :goto_1
    move-object/from16 v6, p1

    .line 912
    invoke-direct {v0, v6, v5}, Lcom/jichi/ob/api/GarminApi;->injectCookies(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    sget-object v7, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne v1, v7, :cond_b

    .line 917
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v14, Lcom/jichi/ob/api/GarminApi$prepareWebView$current$1;

    invoke-direct {v14, v2, v11}, Lcom/jichi/ob/api/GarminApi$prepareWebView$current$1;-><init>(Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$3:Ljava/lang/Object;

    const-string v15, "https://connect.garmin.cn/favicon.ico"

    iput-object v15, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$4:Ljava/lang/Object;

    iput v12, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->label:I

    invoke-static {v7, v14, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_3

    goto/16 :goto_a

    :cond_3
    move-object v14, v15

    move-object v15, v1

    move-object v1, v14

    move-object v14, v2

    move-object v2, v7

    .line 909
    :goto_2
    check-cast v2, Ljava/lang/String;

    .line 918
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    const-string v12, "https://connect.garmin.cn"

    invoke-virtual {v7, v12}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, ""

    .line 919
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "prepareWebView CN: cookie len="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", current="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    .line 920
    move-object v10, v2

    check-cast v10, Ljava/lang/CharSequence;

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v10, v9, v13, v11, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    sget-boolean v9, Lcom/jichi/ob/api/GarminApi;->sharedWebViewReady:Z

    if-eqz v9, :cond_6

    .line 921
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_5
    const/4 v10, 0x1

    .line 923
    :cond_6
    sput-boolean v13, Lcom/jichi/ob/api/GarminApi;->sharedWebViewReady:Z

    .line 924
    sput-boolean v10, Lcom/jichi/ob/api/GarminApi;->webViewLoading:Z

    .line 925
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v9

    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Lcom/jichi/ob/api/GarminApi$prepareWebView$2;

    const/4 v12, 0x0

    invoke-direct {v10, v14, v1, v12}, Lcom/jichi/ob/api/GarminApi$prepareWebView$2;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$0:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$1:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$3:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$4:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$5:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$6:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->label:I

    invoke-static {v9, v10, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_7

    goto/16 :goto_a

    :cond_7
    move-object v9, v1

    move-object v10, v5

    move-object v1, v7

    move-object v11, v14

    move-object v14, v15

    move-object v5, v2

    move-object v15, v6

    :goto_3
    move-object/from16 v16, v5

    move-object v5, v1

    move-object v1, v11

    move-object v11, v10

    move-object v10, v9

    move-object/from16 v9, v16

    .line 947
    :goto_4
    sget-boolean v2, Lcom/jichi/ob/api/GarminApi;->sharedWebViewReady:Z

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/jichi/ob/api/GarminApi;->webViewLoading:Z

    if-eqz v2, :cond_a

    :cond_8
    const/16 v2, 0xa

    if-ge v13, v2, :cond_a

    .line 948
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$0:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$1:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$2:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$3:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$4:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$5:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$6:Ljava/lang/Object;

    iput v13, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->I$0:I

    const/4 v2, 0x3

    iput v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->label:I

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_9

    goto/16 :goto_a

    :cond_9
    move v2, v13

    move-object v13, v1

    move v1, v2

    const/4 v2, 0x1

    :goto_5
    add-int/2addr v1, v2

    move-object/from16 v16, v13

    move v13, v1

    move-object/from16 v1, v16

    goto :goto_4

    :cond_a
    int-to-double v1, v13

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    .line 950
    sget-boolean v3, Lcom/jichi/ob/api/GarminApi;->sharedWebViewReady:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "prepareWebView CN: \u7b49\u5f85"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u79d2, ready="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    sget-boolean v1, Lcom/jichi/ob/api/GarminApi;->sharedWebViewReady:Z

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 953
    :cond_b
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/jichi/ob/api/GarminApi$prepareWebView$currentUrl$1;

    const/4 v12, 0x0

    invoke-direct {v8, v2, v12}, Lcom/jichi/ob/api/GarminApi$prepareWebView$currentUrl$1;-><init>(Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$2:Ljava/lang/Object;

    iput-object v5, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$3:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->label:I

    invoke-static {v7, v8, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_c

    goto/16 :goto_a

    :cond_c
    move-object v9, v2

    move-object v8, v5

    move-object v2, v7

    .line 909
    :goto_6
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 954
    move-object v2, v5

    check-cast v2, Ljava/lang/CharSequence;

    move-object v7, v8

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v2, v7, v13, v11, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_d

    .line 955
    move-object v2, v5

    check-cast v2, Ljava/lang/CharSequence;

    const-string v7, "logout"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v2, v7, v13, v11, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string/jumbo v7, "sign-in"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v2, v7, v13, v11, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_7

    :cond_d
    move v2, v13

    :goto_7
    if-eqz v2, :cond_e

    .line 956
    sget-boolean v7, Lcom/jichi/ob/api/GarminApi;->sharedWebViewReady:Z

    if-eqz v7, :cond_e

    const/4 v10, 0x1

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_e
    const/4 v10, 0x1

    .line 957
    sput-boolean v13, Lcom/jichi/ob/api/GarminApi;->sharedWebViewReady:Z

    .line 958
    sput-boolean v10, Lcom/jichi/ob/api/GarminApi;->webViewLoading:Z

    .line 959
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Lcom/jichi/ob/api/GarminApi$prepareWebView$3;

    const/4 v12, 0x0

    invoke-direct {v10, v9, v8, v12}, Lcom/jichi/ob/api/GarminApi$prepareWebView$3;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$1:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$2:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$3:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$4:Ljava/lang/Object;

    iput v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->I$0:I

    const/4 v11, 0x5

    iput v11, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->label:I

    invoke-static {v7, v10, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_f

    goto :goto_a

    :cond_f
    move-object v10, v1

    move v1, v2

    move-object v11, v6

    :goto_8
    move-object/from16 v16, v5

    move v5, v1

    move v1, v13

    move-object v13, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v8, v16

    .line 961
    :goto_9
    sget-boolean v2, Lcom/jichi/ob/api/GarminApi;->sharedWebViewReady:Z

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/jichi/ob/api/GarminApi;->webViewLoading:Z

    if-eqz v2, :cond_12

    :cond_10
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_12

    .line 962
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$0:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$1:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$2:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$3:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->L$4:Ljava/lang/Object;

    iput v5, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->I$0:I

    iput v1, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->I$1:I

    const/4 v2, 0x6

    iput v2, v3, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->label:I

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_11

    :goto_a
    return-object v4

    :cond_11
    const/4 v2, 0x1

    :goto_b
    add-int/2addr v1, v2

    goto :goto_9

    .line 964
    :cond_12
    sget-boolean v1, Lcom/jichi/ob/api/GarminApi;->sharedWebViewReady:Z

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic prepareWebView$default(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 909
    sget-object p2, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/GarminApi;->prepareWebView(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final resolveGarminTime(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 1393
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    const-string/jumbo v1, "startTimeLocal"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "optString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1394
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    return-object v1

    .line 1395
    :cond_0
    const-string/jumbo v1, "startTimeGMT"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1396
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string p1, ""

    return-object p1

    .line 1398
    :cond_1
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1399
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1401
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1402
    :cond_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1397
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :goto_0
    return-object p1
.end method

.method private final unzipFit([B)[B
    .locals 7

    const/4 v0, 0x0

    .line 1508
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v2, Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/util/zip/ZipInputStream;

    .line 1509
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    .line 1511
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ".fit"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1512
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/high16 v4, 0x10000

    .line 1513
    new-array v4, v4, [B

    .line 1515
    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 1516
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    .line 1518
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 1519
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1508
    :cond_2
    :try_start_4
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catchall_0
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1524
    :catch_0
    array-length v1, p1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3

    const/16 v1, 0x8

    aget-byte v1, p1, v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    const/16 v1, 0x9

    aget-byte v1, p1, v1

    const/16 v2, 0x46

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method private final uploadActivityOnce(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1551
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final uploadBinaryViaWebView(Ljava/lang/String;[BLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1197
    sget-object v4, Lcom/jichi/ob/api/GarminApi;->sharedWebView:Landroid/webkit/WebView;

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    .line 1198
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 1199
    new-instance p2, Lorg/json/JSONObject;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo p2, "toString(...)"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1200
    new-instance v0, Lcom/jichi/ob/api/GarminApi$uploadBinaryViaWebView$2;

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/GarminApi$uploadBinaryViaWebView$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const-wide/32 p1, 0xea60

    invoke-static {p1, p2, v0, p4}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic uploadBinaryViaWebView$default(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;[BLjava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 1196
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/GarminApi;->uploadBinaryViaWebView(Ljava/lang/String;[BLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final uploadViaWebView(Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1074
    sget-object v5, Lcom/jichi/ob/api/GarminApi;->sharedWebView:Landroid/webkit/WebView;

    if-nez v5, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    .line 1075
    invoke-static {p3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 1076
    new-instance p3, Lorg/json/JSONObject;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo p3, "toString(...)"

    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    new-instance v0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const-wide/32 p1, 0xea60

    invoke-static {p1, p2, v0, p5}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final downloadFit(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1413
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/GarminApi$downloadFit$2;-><init>(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final downloadWellnessZip(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1632
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$downloadWellnessZip$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/GarminApi$downloadWellnessZip$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ensureValidToken(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 803
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getActivities(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1286
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/GarminApi$getActivities$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;IILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getUsername(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1254
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/jichi/ob/api/GarminApi$getUsername$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final initWebView(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0, p1}, Lcom/jichi/ob/api/GarminApi$Companion;->initSharedWebView(Landroid/content/Context;)V

    return-void
.end method

.method public final loginMobile(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 267
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v3, p1

    move-object v5, p2

    move v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/GarminApi$loginMobile$2;-><init>(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final loginOAuth1(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 374
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$loginOAuth1$2;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v3, p1

    move-object v5, p2

    move v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/GarminApi$loginOAuth1$2;-><init>(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final refreshDiToken(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 735
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final uploadActivity(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    # === v9.4.1: 第三方FIT传佳明前自动伪装为Garmin设备，修复HTTP 412 ===
    :try_start_fake
    sget-object v0, Lcom/jichi/ob/api/FitDeviceFaker;->INSTANCE:Lcom/jichi/ob/api/FitDeviceFaker;

    invoke-virtual {v0, p3}, Lcom/jichi/ob/api/FitDeviceFaker;->isAlreadyGarmin([B)Z

    move-result v1

    if-nez v1, :cond_fake_skip

    sget-object v0, Lcom/jichi/ob/api/FitDeviceFaker;->INSTANCE:Lcom/jichi/ob/api/FitDeviceFaker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, v2}, Lcom/jichi/ob/api/FitDeviceFaker;->fake([BZI)[B

    move-result-object p3

    :cond_fake_skip
    :try_end_fake
    .catch Ljava/lang/Exception; {:try_start_fake .. :try_end_fake} :catch_fake

    goto :goto_fake_done

    :catch_fake
    move-exception v0

    const-string v1, "JichiOB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v9.4.1 FIT伪装异常,用原文件上传: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_fake_done
    # === end v9.4.1 ===

    .line 1533
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;-><init>(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final uploadWellnessFit(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1670
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v6, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/jichi/ob/api/SuuntoApi;
.super Ljava/lang/Object;
.source "SuuntoApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/SuuntoApi$Companion;,
        Lcom/jichi/ob/api/SuuntoApi$LoginResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 :2\u00020\u0001:\u0002:;B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007J0\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0015J0\u0010\u0016\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0015J \u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0002J:\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u001bJ \u0010\u001c\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u001eJ\u001e\u0010\u001f\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u001eJ \u0010!\u001a\u00020\"2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0002J4\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020(H\u0086@\u00a2\u0006\u0002\u0010*J\u0010\u0010+\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u0007H\u0002J\u000e\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020&J0\u0010/\u001a\u0002002\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u00072\u0008\u0008\u0002\u00102\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u00103J:\u00104\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u0007052\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u00106\u001a\u0002002\u0006\u0010.\u001a\u00020&H\u0086@\u00a2\u0006\u0002\u00107J\u0010\u00108\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lcom/jichi/ob/api/SuuntoApi;",
        "",
        "<init>",
        "()V",
        "client",
        "Lokhttp3/OkHttpClient;",
        "lastAccessToken",
        "",
        "lastRefreshToken",
        "lastSubscriptionKey",
        "lastExpiresAt",
        "",
        "lastClientId",
        "lastClientSecret",
        "authorizeUrl",
        "clientId",
        "exchangeCode",
        "Lcom/jichi/ob/api/SuuntoApi$LoginResult;",
        "code",
        "clientSecret",
        "subscriptionKey",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "refreshToken",
        "cacheCreds",
        "",
        "getUsableTokenOrNull",
        "accessToken",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getUsername",
        "token",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "validateToken",
        "",
        "buildRequest",
        "Lokhttp3/Request;",
        "url",
        "getActivities",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "skip",
        "",
        "limit",
        "(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sportToChinese",
        "sport",
        "mapToSuuntoSport",
        "record",
        "download",
        "",
        "workoutKey",
        "gpx",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "upload",
        "Lkotlin/Pair;",
        "fitData",
        "(Ljava/lang/String;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "formatTime",
        "ms",
        "Companion",
        "LoginResult",
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
.field public static final API_BASE:Ljava/lang/String; = "https://cloudapi.suunto.com"

.field public static final AUTH_BASE:Ljava/lang/String; = "https://cloudapi-oauth.suunto.com/oauth"

.field private static BUILTIN_CLIENT_ID:Ljava/lang/String; = null

.field private static BUILTIN_CLIENT_SECRET:Ljava/lang/String; = null

.field private static BUILTIN_SUBSCRIPTION_KEY:Ljava/lang/String; = null

.field public static final Companion:Lcom/jichi/ob/api/SuuntoApi$Companion;

.field public static final REDIRECT_URI:Ljava/lang/String; = "https://localhost:8080/suunto-callback"

.field private static final TAG:Ljava/lang/String; = "SuuntoApi"

.field private static final UA:Ljava/lang/String; = "jichi-ob/7.9.6 (Android)"

.field private static volatile lastCodeVerifier:Ljava/lang/String;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private lastAccessToken:Ljava/lang/String;

.field private lastClientId:Ljava/lang/String;

.field private lastClientSecret:Ljava/lang/String;

.field private lastExpiresAt:J

.field private lastRefreshToken:Ljava/lang/String;

.field private lastSubscriptionKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/api/SuuntoApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/SuuntoApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/SuuntoApi;->Companion:Lcom/jichi/ob/api/SuuntoApi$Companion;

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/jichi/ob/api/SuuntoApi;->BUILTIN_CLIENT_ID:Ljava/lang/String;

    .line 54
    sput-object v0, Lcom/jichi/ob/api/SuuntoApi;->BUILTIN_CLIENT_SECRET:Ljava/lang/String;

    .line 55
    sput-object v0, Lcom/jichi/ob/api/SuuntoApi;->BUILTIN_SUBSCRIPTION_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0x1e

    .line 75
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x78

    .line 76
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 77
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/api/SuuntoApi;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$buildRequest(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/SuuntoApi;->buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$cacheCreds(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/SuuntoApi;->cacheCreds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$formatTime(Lcom/jichi/ob/api/SuuntoApi;J)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/SuuntoApi;->formatTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBUILTIN_CLIENT_ID$cp()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/jichi/ob/api/SuuntoApi;->BUILTIN_CLIENT_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getBUILTIN_CLIENT_SECRET$cp()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/jichi/ob/api/SuuntoApi;->BUILTIN_CLIENT_SECRET:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getBUILTIN_SUBSCRIPTION_KEY$cp()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/jichi/ob/api/SuuntoApi;->BUILTIN_SUBSCRIPTION_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getClient$p(Lcom/jichi/ob/api/SuuntoApi;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/jichi/ob/api/SuuntoApi;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getLastCodeVerifier$cp()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/jichi/ob/api/SuuntoApi;->lastCodeVerifier:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLastExpiresAt$p(Lcom/jichi/ob/api/SuuntoApi;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/jichi/ob/api/SuuntoApi;->lastExpiresAt:J

    return-wide v0
.end method

.method public static final synthetic access$setBUILTIN_CLIENT_ID$cp(Ljava/lang/String;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/jichi/ob/api/SuuntoApi;->BUILTIN_CLIENT_ID:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setBUILTIN_CLIENT_SECRET$cp(Ljava/lang/String;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/jichi/ob/api/SuuntoApi;->BUILTIN_CLIENT_SECRET:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setBUILTIN_SUBSCRIPTION_KEY$cp(Ljava/lang/String;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/jichi/ob/api/SuuntoApi;->BUILTIN_SUBSCRIPTION_KEY:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastAccessToken$p(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/jichi/ob/api/SuuntoApi;->lastAccessToken:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastCodeVerifier$cp(Ljava/lang/String;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/jichi/ob/api/SuuntoApi;->lastCodeVerifier:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastExpiresAt$p(Lcom/jichi/ob/api/SuuntoApi;J)V
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/jichi/ob/api/SuuntoApi;->lastExpiresAt:J

    return-void
.end method

.method public static final synthetic access$setLastRefreshToken$p(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/jichi/ob/api/SuuntoApi;->lastRefreshToken:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$sportToChinese(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/SuuntoApi;->sportToChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 2

    .line 251
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 252
    invoke-virtual {v0, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bearer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authorization"

    invoke-virtual {p3, v0, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 254
    const-string p3, "Ocp-Apim-Subscription-Key"

    invoke-virtual {p1, p3, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 255
    const-string p2, "Accept"

    const-string p3, "application/json"

    invoke-virtual {p1, p2, p3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 256
    const-string p2, "User-Agent"

    const-string p3, "jichi-ob/7.9.6 (Android)"

    invoke-virtual {p1, p2, p3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private final cacheCreds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/jichi/ob/api/SuuntoApi;->lastClientId:Ljava/lang/String;

    .line 210
    iput-object p2, p0, Lcom/jichi/ob/api/SuuntoApi;->lastClientSecret:Ljava/lang/String;

    .line 211
    iput-object p3, p0, Lcom/jichi/ob/api/SuuntoApi;->lastSubscriptionKey:Ljava/lang/String;

    return-void
.end method

.method public static synthetic download$default(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 331
    invoke-virtual/range {v0 .. v5}, Lcom/jichi/ob/api/SuuntoApi;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final formatTime(J)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    .line 434
    const-string v1, ""

    if-gtz v0, :cond_0

    return-object v1

    .line 436
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 437
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 438
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method private final sportToChinese(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "indoor_cycling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "strength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "running"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 303
    :cond_0
    const-string/jumbo p1, "\u8dd1\u6b65"

    return-object p1

    .line 302
    :sswitch_3
    const-string v0, "pool_swimming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "multisport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "road_biking"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "cycling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 313
    :cond_1
    const-string/jumbo p1, "\u5176\u4ed6"

    return-object p1

    .line 302
    :sswitch_8
    const-string v0, "mtb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "gym"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "mountaineering"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 308
    :cond_2
    const-string/jumbo p1, "\u767b\u5c71"

    return-object p1

    .line 302
    :sswitch_b
    const-string/jumbo v0, "swimming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "nordic_skiing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :sswitch_d
    const-string/jumbo v0, "triathlon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 309
    :cond_3
    const-string/jumbo p1, "\u94c1\u4eba\u4e09\u9879"

    return-object p1

    .line 302
    :sswitch_e
    const-string v0, "fitness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 310
    :cond_4
    const-string/jumbo p1, "\u5065\u8eab"

    return-object p1

    .line 302
    :sswitch_f
    const-string/jumbo v0, "skiing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 311
    :cond_5
    const-string/jumbo p1, "\u6ed1\u96ea"

    return-object p1

    .line 302
    :sswitch_10
    const-string v0, "hiking"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 306
    :cond_6
    const-string/jumbo p1, "\u5f92\u6b65"

    return-object p1

    .line 302
    :sswitch_11
    const-string v0, "gravel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 304
    :cond_7
    const-string/jumbo p1, "\u9a91\u884c"

    return-object p1

    .line 302
    :sswitch_12
    const-string/jumbo v0, "snowboarding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    .line 312
    :cond_8
    const-string/jumbo p1, "\u5355\u677f\u6ed1\u96ea"

    return-object p1

    .line 302
    :sswitch_13
    const-string v0, "open_water_swimming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    .line 307
    :cond_9
    const-string/jumbo p1, "\u6e38\u6cf3"

    return-object p1

    .line 302
    :sswitch_14
    const-string/jumbo v0, "spinning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    .line 305
    :cond_a
    const-string/jumbo p1, "\u5ba4\u5185\u9a91\u884c"

    return-object p1

    .line 314
    :goto_0
    const-string/jumbo p1, "\u8fd0\u52a8"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x77b0600a -> :sswitch_14
        -0x5a106c66 -> :sswitch_13
        -0x5943ca41 -> :sswitch_12
        -0x49c880f9 -> :sswitch_11
        -0x488e1fe8 -> :sswitch_10
        -0x35ad8acf -> :sswitch_f
        -0x32815a18 -> :sswitch_e
        -0x302fc5ff -> :sswitch_d
        -0xb3c625d -> :sswitch_c
        -0x5734d23 -> :sswitch_b
        -0x3af9c63 -> :sswitch_a
        0x191bb -> :sswitch_9
        0x1a79b -> :sswitch_8
        0x6527f10 -> :sswitch_7
        0x49291423 -> :sswitch_6
        0x4a38065d -> :sswitch_5
        0x4b93addb -> :sswitch_4
        0x4d70aba0 -> :sswitch_3
        0x5c6f15bf -> :sswitch_2
        0x6ac55041 -> :sswitch_1
        0x78dcce37 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final authorizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://cloudapi-oauth.suunto.com/oauth/authorize?response_type=code&client_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 97
    const-string v0, "https://localhost:8080/suunto-callback"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&redirect_uri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 98
    const-string v0, "&state=jichiOB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 99
    sget-object v0, Lcom/jichi/ob/api/SuuntoApi;->BUILTIN_CLIENT_SECRET:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/jichi/ob/api/SuuntoApi;->Companion:Lcom/jichi/ob/api/SuuntoApi$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/api/SuuntoApi$Companion;->newPkce()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    sput-object v1, Lcom/jichi/ob/api/SuuntoApi;->lastCodeVerifier:Ljava/lang/String;

    .line 102
    const-string v1, "&code_challenge="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, "&code_challenge_method=S256"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    sput-object v0, Lcom/jichi/ob/api/SuuntoApi;->lastCodeVerifier:Ljava/lang/String;

    .line 107
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 332
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/SuuntoApi$download$2;

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v3, p3

    move v2, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/SuuntoApi$download$2;-><init>(ZLjava/lang/String;Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final exchangeCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/SuuntoApi$LoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 113
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v6, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;-><init>(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 261
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;-><init>(IILcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getUsableTokenOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 221
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v8}, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;-><init>(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getUsername(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 234
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/SuuntoApi$getUsername$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/jichi/ob/api/SuuntoApi$getUsername$2;-><init>(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final mapToSuuntoSport(Lcom/jichi/ob/model/ActivityRecord;)Ljava/lang/String;
    .locals 5

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "\u9a91"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "cycling"

    return-object p1

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "\u8dd1"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "running"

    return-object p1

    .line 321
    :cond_1
    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "\u5f92"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "\u767b"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "\u6e38"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p1, "swimming"

    return-object p1

    .line 323
    :cond_3
    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const-string/jumbo v0, "\u94c1"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "multisport"

    return-object p1

    .line 324
    :cond_4
    const-string p1, "other"

    return-object p1

    .line 321
    :cond_5
    :goto_0
    const-string p1, "hiking"

    return-object p1
.end method

.method public final refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/SuuntoApi$LoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 165
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v6, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;-><init>(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final upload(Ljava/lang/String;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 360
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/SuuntoApi$upload$2;-><init>(Lcom/jichi/ob/api/SuuntoApi;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;Ljava/lang/String;[BLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final validateToken(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 239
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/SuuntoApi$validateToken$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Lcom/jichi/ob/api/SuuntoApi$validateToken$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

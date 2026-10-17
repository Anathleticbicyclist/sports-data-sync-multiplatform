.class public final Lcom/jichi/ob/api/WahooApi;
.super Ljava/lang/Object;
.source "WahooApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/WahooApi$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWahooApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WahooApi.kt\ncom/jichi/ob/api/WahooApi\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,458:1\n216#2,2:459\n*S KotlinDebug\n*F\n+ 1 WahooApi.kt\ncom/jichi/ob/api/WahooApi\n*L\n132#1:459,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0007\u0018\u0000 :2\u00020\u0001:\u0001:B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0008H\u0002J\u0010\u0010\u0015\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0008J<\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\u001cJ4\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010!J0\u0010\"\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u00082\u0008\u0010$\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\u001cJ4\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00182\u0006\u0010%\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\u001dJ@\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00182\u0008\u0010#\u001a\u0004\u0018\u00010\u00082\u0008\u0010$\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\u001cJ\u0016\u0010\'\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010!J\u001c\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080)2\u0006\u0010 \u001a\u00020\u0008H\u0002J\u0018\u0010*\u001a\u0004\u0018\u00010\u00082\u0006\u0010 \u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010!J,\u0010+\u001a\u0008\u0012\u0004\u0012\u00020-0,2\u0006\u0010 \u001a\u00020\u00082\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/H\u0086@\u00a2\u0006\u0002\u00101J2\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00080\u00182\u0006\u0010 \u001a\u00020\u00082\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u00106J \u00107\u001a\u0004\u0018\u0001042\u0006\u0010 \u001a\u00020\u00082\u0006\u00108\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u00109R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006;"
    }
    d2 = {
        "Lcom/jichi/ob/api/WahooApi;",
        "",
        "<init>",
        "()V",
        "client",
        "Lokhttp3/OkHttpClient;",
        "debugLogCallback",
        "Lkotlin/Function1;",
        "",
        "",
        "getDebugLogCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "setDebugLogCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "lastExchangeError",
        "getLastExchangeError",
        "()Ljava/lang/String;",
        "setLastExchangeError",
        "(Ljava/lang/String;)V",
        "log",
        "msg",
        "authorizeUrl",
        "clientId",
        "exchangeToken",
        "Lkotlin/Pair;",
        "code",
        "clientSecret",
        "codeVerifier",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "verifyToken",
        "",
        "token",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ensureValidToken",
        "currentToken",
        "refreshToken",
        "refresh",
        "getUsableTokenOrNull",
        "deauthorize",
        "authHeaders",
        "",
        "getUsername",
        "getActivities",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "offset",
        "",
        "limit",
        "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadFit",
        "fitData",
        "",
        "fileName",
        "(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "downloadFit",
        "workoutId",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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
.field public static final API_BASE:Ljava/lang/String; = "https://api.wahooligan.com"

.field public static final AUTHORIZE_URL:Ljava/lang/String; = "https://api.wahooligan.com/oauth/authorize"

.field private static final BUILTIN_CLIENT_ID:Ljava/lang/String;

.field private static final BUILTIN_CLIENT_SECRET:Ljava/lang/String;

.field public static final Companion:Lcom/jichi/ob/api/WahooApi$Companion;

.field public static final REDIRECT_URI:Ljava/lang/String; = "https://localhost:8080/"

.field public static final SCOPES:Ljava/lang/String; = "workouts_read workouts_write offline_data user_read"

.field private static final TAG:Ljava/lang/String; = "WahooApi"

.field public static final TOKEN_URL:Ljava/lang/String; = "https://api.wahooligan.com/oauth/token"

.field private static final UA:Ljava/lang/String; = "jichi-ob/6.5.1 (Android)"


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private debugLogCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private lastExchangeError:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/api/WahooApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/WahooApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    .line 41
    const-string v0, "lGMZOR4YVIhQZt6Zao6Z5RzmGXRTFZVgmaqV91JmoeU"

    sput-object v0, Lcom/jichi/ob/api/WahooApi;->BUILTIN_CLIENT_ID:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "w8aErisKTv8WV3ISYSPy70X4LWx0wGnxpwCCNCzXfpA"

    sput-object v0, Lcom/jichi/ob/api/WahooApi;->BUILTIN_CLIENT_SECRET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0x1e

    .line 47
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 48
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 49
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/jichi/ob/api/DoHDns;

    invoke-direct {v1}, Lcom/jichi/ob/api/DoHDns;-><init>()V

    check-cast v1, Lokhttp3/Dns;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/api/WahooApi;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$authHeaders(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/WahooApi;->authHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBUILTIN_CLIENT_ID$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/jichi/ob/api/WahooApi;->BUILTIN_CLIENT_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getBUILTIN_CLIENT_SECRET$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/jichi/ob/api/WahooApi;->BUILTIN_CLIENT_SECRET:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getClient$p(Lcom/jichi/ob/api/WahooApi;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jichi/ob/api/WahooApi;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$log(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/WahooApi;->log(Ljava/lang/String;)V

    return-void
.end method

.method private final authHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 237
    new-array v0, v0, [Lkotlin/Pair;

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

    .line 238
    const-string p1, "Accept"

    const-string v1, "application/json"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 239
    const-string p1, "User-Agent"

    const-string v1, "jichi-ob/6.5.1 (Android)"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 236
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic authorizeUrl$default(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 63
    sget-object p1, Lcom/jichi/ob/api/WahooApi;->BUILTIN_CLIENT_ID:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jichi/ob/api/WahooApi;->authorizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final log(Ljava/lang/String;)V
    .locals 1

    .line 59
    const-string v0, "WahooApi"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/jichi/ob/api/WahooApi;->debugLogCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final authorizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const-string v0, "https://localhost:8080/"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string/jumbo v1, "workouts_read workouts_write offline_data user_read"

    const-string v2, " "

    const-string v3, "%20"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://api.wahooligan.com/oauth/authorize?client_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "&redirect_uri="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&scope="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&response_type=code"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final deauthorize(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 221
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/WahooApi$deauthorize$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/jichi/ob/api/WahooApi$deauthorize$2;-><init>(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final downloadFit(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 393
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/WahooApi$downloadFit$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lcom/jichi/ob/api/WahooApi$downloadFit$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ensureValidToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    instance-of v6, v5, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;

    iget v7, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->label:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget v5, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->label:I

    sub-int/2addr v5, v8

    iput v5, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;

    invoke-direct {v6, v1, v5}, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;-><init>(Lcom/jichi/ob/api/WahooApi;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v5, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 125
    iget v8, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->label:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v11, "WahooApi"

    if-eqz v8, :cond_3

    if-eq v8, v10, :cond_2

    if-ne v8, v9, :cond_1

    iget v0, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->I$0:I

    iget-object v0, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$7:Ljava/lang/Object;

    check-cast v0, Lkotlin/Pair;

    iget-object v2, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$6:Ljava/lang/Object;

    check-cast v2, Lokhttp3/Response;

    iget-object v2, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v3, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lokhttp3/Request;

    iget-object v3, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v3

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v8, v2

    move-object v13, v3

    :goto_1
    move-object v2, v0

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->I$0:I

    iget-object v2, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$6:Ljava/lang/Object;

    check-cast v2, Lokhttp3/Response;

    iget-object v3, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$5:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v4, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lokhttp3/Request;

    iget-object v8, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v10, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v12, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$0:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    :try_start_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v5

    move-object v5, v4

    move-object v4, v8

    move-object/from16 v8, v16

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v8, v3

    goto/16 :goto_8

    :cond_3
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 126
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_a

    :cond_4
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5

    return-object v2

    :cond_5
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_6

    return-object v2

    .line 131
    :cond_6
    :try_start_2
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    const-string v8, "https://api.wahooligan.com/v1/user"

    invoke-virtual {v5, v8}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 132
    invoke-direct/range {p0 .. p1}, Lcom/jichi/ob/api/WahooApi;->authHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 459
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 132
    invoke-virtual {v5, v13, v12}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_2

    .line 133
    :cond_7
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 134
    iget-object v8, v1, Lcom/jichi/ob/api/WahooApi;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v8, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    invoke-interface {v8}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v8

    check-cast v8, Ljava/io/Closeable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    move-object v12, v8

    check-cast v12, Lokhttp3/Response;

    .line 135
    invoke-virtual {v12}, Lokhttp3/Response;->code()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_8

    .line 136
    const-string v0, "Wahoo token\u6709\u6548\uff0c\u65e0\u9700\u5237\u65b0"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v2

    goto/16 :goto_7

    .line 139
    :cond_8
    invoke-virtual {v12}, Lokhttp3/Response;->code()I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Wahoo token\u8fc7\u671f(HTTP "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")\uff0c\u5c1d\u8bd5\u5237\u65b0..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-object v2, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$0:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$3:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$4:Ljava/lang/Object;

    iput-object v8, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$5:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$6:Ljava/lang/Object;

    const/4 v13, 0x0

    iput v13, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->I$0:I

    iput v10, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->label:I

    invoke-virtual {v1, v0, v3, v4, v6}, Lcom/jichi/ob/api/WahooApi;->refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v10, v7, :cond_9

    goto :goto_4

    :cond_9
    move-object/from16 v16, v12

    move-object v12, v0

    move v0, v13

    move-object v13, v2

    move-object v2, v8

    move-object v8, v10

    move-object v10, v3

    move-object/from16 v3, v16

    .line 125
    :goto_3
    :try_start_4
    check-cast v8, Lkotlin/Pair;

    if-eqz v8, :cond_c

    .line 143
    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v13, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$0:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$1:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$3:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$4:Ljava/lang/Object;

    iput-object v2, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$5:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$6:Ljava/lang/Object;

    iput-object v8, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->L$7:Ljava/lang/Object;

    iput v0, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->I$0:I

    iput v9, v6, Lcom/jichi/ob/api/WahooApi$ensureValidToken$1;->label:I

    invoke-virtual {v1, v14, v6}, Lcom/jichi/ob/api/WahooApi;->verifyToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_a

    :goto_4
    return-object v7

    :cond_a
    move-object v0, v8

    :goto_5
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 144
    const-string v3, "Wahoo token\u5237\u65b0\u6210\u529f"

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v2

    move-object v2, v13

    move-object v13, v0

    goto :goto_7

    .line 147
    :cond_b
    const-string v0, "Wahoo\u5237\u65b0\u540e\u65b0token\u9a8c\u8bc1\u5931\u8d25\uff0c\u8fd4\u56de\u539ftoken"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 151
    :cond_c
    const-string v0, "Wahoo token\u5237\u65b0\u5931\u8d25\uff0c\u8fd4\u56de\u539ftoken"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_6
    move-object v8, v2

    move-object v2, v13

    :goto_7
    const/4 v0, 0x0

    .line 134
    :try_start_5
    invoke-static {v8, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-object v13

    :catchall_2
    move-exception v0

    move-object v8, v2

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move-object v13, v2

    goto/16 :goto_1

    :goto_8
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_7
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    move-object v2, v13

    goto :goto_9

    :catch_1
    move-exception v0

    .line 157
    :goto_9
    const-string v3, "Wahoo ensureValidToken\u5f02\u5e38\uff0c\u8fd4\u56de\u539ftoken"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v11, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_a
    return-object v2
.end method

.method public final exchangeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/WahooApi$exchangeToken$2;

    const/4 v7, 0x0

    move-object v6, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/WahooApi$exchangeToken$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/WahooApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final exchangeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 99
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jichi/ob/api/WahooApi;->exchangeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 260
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/WahooApi$getActivities$2;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/WahooApi$getActivities$2;-><init>(ILcom/jichi/ob/api/WahooApi;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getDebugLogCallback()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/jichi/ob/api/WahooApi;->debugLogCallback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getLastExchangeError()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/jichi/ob/api/WahooApi;->lastExchangeError:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsableTokenOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 188
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;

    const/4 v7, 0x0

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 243
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/WahooApi$getUsername$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/jichi/ob/api/WahooApi$getUsername$2;-><init>(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 164
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/WahooApi$refreshToken$2;

    const/4 v6, 0x0

    move-object v5, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/WahooApi$refreshToken$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/WahooApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setDebugLogCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/jichi/ob/api/WahooApi;->debugLogCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setLastExchangeError(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/jichi/ob/api/WahooApi;->lastExchangeError:Ljava/lang/String;

    return-void
.end method

.method public final uploadFit(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 310
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/WahooApi$uploadFit$2;-><init>([BLjava/lang/String;Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final verifyToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 111
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/WahooApi$verifyToken$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/jichi/ob/api/WahooApi$verifyToken$2;-><init>(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/jichi/ob/api/IgpsportApi;
.super Ljava/lang/Object;
.source "IgpsportApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/IgpsportApi$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\"\n\u0002\u0008\u0005\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u001c\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00162\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J\"\u0010\u0018\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0017\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010\u001bJ6\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010\"J4\u0010#\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u00052\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010&J$\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020 0(2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010\u001bJ(\u0010)\u001a\u0004\u0018\u00010 2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010+R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006-"
    }
    d2 = {
        "Lcom/jichi/ob/api/IgpsportApi;",
        "",
        "<init>",
        "()V",
        "probeTimeField",
        "",
        "item",
        "Lorg/json/JSONObject;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "debugHook",
        "Lkotlin/Function1;",
        "",
        "getDebugHook",
        "()Lkotlin/jvm/functions/Function1;",
        "setDebugHook",
        "(Lkotlin/jvm/functions/Function1;)V",
        "parseFitStartTimeMs",
        "",
        "bytes",
        "",
        "authHeaders",
        "",
        "token",
        "getUsername",
        "intl",
        "",
        "(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getActivities",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "offset",
        "",
        "limit",
        "(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "downloadFitFile",
        "rideId",
        "activityDownloadUrl",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "listCustomWorkoutIds",
        "",
        "uploadCustomWorkout",
        "body",
        "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private static final ACTIVITY_PATH:Ljava/lang/String; = "/web-gateway/web-analyze/activity/queryMyActivity"

.field private static final BASE_CN:Ljava/lang/String; = "https://prod.zh.igpsport.com/service"

.field private static final BASE_INT:Ljava/lang/String; = "https://prod.en.igpsport.com/service"

.field public static final Companion:Lcom/jichi/ob/api/IgpsportApi$Companion;

.field private static final DOWNLOAD_PATH:Ljava/lang/String; = "/web-gateway/web-analyze/activity/getDownloadUrl"

.field private static final FIT_EPOCH:J = 0x92ee70e000L

.field public static final LOGIN_URL:Ljava/lang/String; = "https://login.passport.igpsport.cn/login?lang=zh-Hans"

.field public static final LOGIN_URL_INT:Ljava/lang/String; = "https://prod.en.igpsport.com/"

.field private static final PER_PAGE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "IgpsportApi"


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private volatile debugHook:Lkotlin/jvm/functions/Function1;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/api/IgpsportApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/IgpsportApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/IgpsportApi;->Companion:Lcom/jichi/ob/api/IgpsportApi$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0x1e

    .line 52
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x78

    .line 53
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/api/IgpsportApi;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$authHeaders(Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/IgpsportApi;->authHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClient$p(Lcom/jichi/ob/api/IgpsportApi;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/jichi/ob/api/IgpsportApi;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$probeTimeField(Lcom/jichi/ob/api/IgpsportApi;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/IgpsportApi;->probeTimeField(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    const/4 v0, 0x6

    .line 124
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

    .line 125
    const-string p1, "User-Agent"

    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 126
    const-string p1, "Accept"

    const-string v1, "application/json, text/plain, */*"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 127
    const-string p1, "Accept-Language"

    const-string/jumbo v1, "zh-CN,zh;q=0.9"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 128
    const-string p1, "Origin"

    const-string v1, "https://app.igpsport.cn"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    .line 129
    const-string p1, "Referer"

    const-string v1, "https://app.igpsport.cn/"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 123
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic downloadFitFile$default(Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    .line 283
    invoke-virtual/range {v0 .. v5}, Lcom/jichi/ob/api/IgpsportApi;->downloadFitFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getActivities$default(Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 179
    invoke-virtual/range {v0 .. v5}, Lcom/jichi/ob/api/IgpsportApi;->getActivities(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getUsername$default(Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 138
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/jichi/ob/api/IgpsportApi;->getUsername(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final probeTimeField(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x17

    .line 23
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "StartTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "startTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "RideDate"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rideDate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ride_date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 24
    const-string v2, "SportTime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "sportTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BeginTime"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "beginTime"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "RideTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rideTime"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 25
    const-string v2, "createTime"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CreateTime"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "start_date"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "startDate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Date"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Time"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 26
    const-string v2, "StartTimeStr"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "startTimeStr"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "StartDate"

    aput-object v2, v0, v1

    .line 23
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    return-object v1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final downloadFitFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 284
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;

    const/4 v7, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v4, p2

    move-object v2, p3

    move v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getActivities(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 180
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;

    const/4 v7, 0x0

    move-object v5, p0

    move-object v6, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;-><init>(IIZLcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getDebugHook()Lkotlin/jvm/functions/Function1;
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

    .line 58
    iget-object v0, p0, Lcom/jichi/ob/api/IgpsportApi;->debugHook:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getUsername(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 138
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/IgpsportApi$getUsername$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lcom/jichi/ob/api/IgpsportApi$getUsername$2;-><init>(ZLcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final listCustomWorkoutIds(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 321
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/IgpsportApi$listCustomWorkoutIds$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lcom/jichi/ob/api/IgpsportApi$listCustomWorkoutIds$2;-><init>(ZLcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final parseFitStartTimeMs([B)J
    .locals 25

    move-object/from16 v0, p1

    const-string v1, "bytes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    :try_start_0
    array-length v3, v0

    const/16 v4, 0xe

    if-lt v3, v4, :cond_b

    const/16 v3, 0x8

    aget-byte v4, v0, v3

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_b

    const/16 v4, 0x9

    aget-byte v4, v0, v4

    const/16 v5, 0x46

    if-ne v4, v5, :cond_b

    const/16 v4, 0xa

    .line 68
    aget-byte v4, v0, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_b

    const/16 v4, 0xb

    aget-byte v4, v0, v4

    const/16 v5, 0x54

    if-eq v4, v5, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v4, 0x0

    .line 69
    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x4

    .line 70
    aget-byte v7, v0, v6

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/4 v11, 0x5

    aget-byte v11, v0, v11

    int-to-long v11, v11

    and-long/2addr v11, v9

    shl-long/2addr v11, v3

    or-long/2addr v7, v11

    const/4 v11, 0x6

    .line 71
    aget-byte v11, v0, v11

    int-to-long v11, v11

    and-long/2addr v11, v9

    const/16 v13, 0x10

    shl-long/2addr v11, v13

    or-long/2addr v7, v11

    const/4 v11, 0x7

    aget-byte v11, v0, v11

    int-to-long v11, v11

    and-long/2addr v11, v9

    const/16 v14, 0x18

    shl-long/2addr v11, v14

    or-long/2addr v7, v11

    if-lez v5, :cond_a

    .line 72
    array-length v11, v0

    if-lt v5, v11, :cond_1

    goto/16 :goto_5

    .line 74
    :cond_1
    array-length v11, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v11, v11

    const-wide/16 v15, 0x0

    int-to-long v1, v5

    add-long/2addr v1, v7

    :try_start_1
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 76
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v7, v4

    move-wide v11, v15

    :goto_0
    add-int/lit8 v8, v5, 0x1

    if-gt v8, v1, :cond_9

    move/from16 v17, v3

    const v3, 0x30d40

    if-ge v7, v3, :cond_9

    add-int/lit8 v7, v7, 0x1

    .line 80
    aget-byte v3, v0, v5

    and-int/lit8 v18, v3, 0xf

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_3

    add-int/lit8 v3, v5, 0x5

    if-gt v3, v1, :cond_9

    .line 85
    aget-byte v3, v0, v8

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v3, v8

    add-int/lit8 v8, v5, 0x3

    .line 86
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v5, v5, 0x4

    move/from16 v19, v4

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v20, v9

    move/from16 v9, v19

    :goto_1
    if-ge v9, v8, :cond_2

    add-int/lit8 v10, v5, 0x3

    if-gt v10, v1, :cond_2

    move/from16 v22, v13

    .line 91
    aget-byte v13, v0, v5

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v23, v5, 0x1

    move/from16 v24, v14

    .line 92
    aget-byte v14, v0, v23

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v5, v5, 0x2

    .line 93
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    .line 94
    filled-new-array {v13, v14, v5}, [I

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move v5, v10

    move/from16 v13, v22

    move/from16 v14, v24

    goto :goto_1

    :cond_2
    move/from16 v22, v13

    move/from16 v24, v14

    .line 97
    move-object v8, v2

    check-cast v8, Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_3
    move/from16 v19, v4

    move-wide/from16 v20, v9

    move/from16 v22, v13

    move/from16 v24, v14

    .line 100
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    if-nez v3, :cond_4

    goto/16 :goto_4

    .line 101
    :cond_4
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 103
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v8

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    aget v9, v8, v19

    const/4 v10, 0x1

    aget v8, v8, v10

    add-int v10, v5, v8

    if-gt v10, v1, :cond_8

    if-ne v8, v6, :cond_7

    const/16 v8, 0xfd

    if-eq v9, v8, :cond_5

    if-nez v4, :cond_7

    if-ne v9, v6, :cond_7

    .line 106
    :cond_5
    aget-byte v8, v0, v5

    int-to-long v8, v8

    and-long v8, v8, v20

    add-int/lit8 v13, v5, 0x1

    aget-byte v13, v0, v13

    int-to-long v13, v13

    and-long v13, v13, v20

    shl-long v13, v13, v17

    or-long/2addr v8, v13

    add-int/lit8 v13, v5, 0x2

    .line 107
    aget-byte v13, v0, v13

    int-to-long v13, v13

    and-long v13, v13, v20

    shl-long v13, v13, v22

    or-long/2addr v8, v13

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, v0, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    int-to-long v13, v5

    and-long v13, v13, v20

    shl-long v13, v13, v24

    or-long/2addr v8, v13

    const-wide/32 v13, 0x10000000

    cmp-long v5, v8, v13

    if-lez v5, :cond_7

    const-wide/16 v13, 0x3e8

    mul-long/2addr v8, v13

    const-wide v13, 0x92ee70e000L

    add-long/2addr v8, v13

    if-nez v4, :cond_6

    return-wide v8

    :cond_6
    cmp-long v5, v11, v15

    if-nez v5, :cond_7

    const/16 v5, 0x14

    if-ne v4, v5, :cond_7

    move-wide v11, v8

    :cond_7
    move v5, v10

    goto :goto_2

    :cond_8
    :goto_3
    move/from16 v3, v17

    move/from16 v4, v19

    move-wide/from16 v9, v20

    move/from16 v13, v22

    move/from16 v14, v24

    goto/16 :goto_0

    :cond_9
    :goto_4
    return-wide v11

    :cond_a
    :goto_5
    const-wide/16 v15, 0x0

    return-wide v15

    :cond_b
    :goto_6
    const-wide/16 v15, 0x0

    return-wide v15

    :catch_0
    const-wide/16 v15, 0x0

    :catch_1
    return-wide v15
.end method

.method public final setDebugHook(Lkotlin/jvm/functions/Function1;)V
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

    .line 58
    iput-object p1, p0, Lcom/jichi/ob/api/IgpsportApi;->debugHook:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final uploadCustomWorkout(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 355
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/IgpsportApi$uploadCustomWorkout$2;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v3, p2

    move v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/IgpsportApi$uploadCustomWorkout$2;-><init>(ZLjava/lang/String;Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

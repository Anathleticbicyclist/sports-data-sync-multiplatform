.class public final Lcom/jichi/ob/api/ZwiftApi;
.super Ljava/lang/Object;
.source "ZwiftApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/ZwiftApi$Companion;,
        Lcom/jichi/ob/api/ZwiftApi$LoginResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZwiftApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZwiftApi.kt\ncom/jichi/ob/api/ZwiftApi\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,363:1\n1761#2,3:364\n1#3:367\n*S KotlinDebug\n*F\n+ 1 ZwiftApi.kt\ncom/jichi/ob/api/ZwiftApi\n*L\n169#1:364,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0008\u0018\u0000 ,2\u00020\u0001:\u0002,-B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000fJ \u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0011J$\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00132\u0006\u0010\u0012\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0014J\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0016\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0014J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0014J\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0016\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0014J\u000e\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u0007J6\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010\"J&\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010$\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0002J.\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00072\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0007H\u0086@\u00a2\u0006\u0002\u0010)J\"\u0010*\u001a\u0004\u0018\u00010&2\u0006\u0010+\u001a\u00020\u00072\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0082@\u00a2\u0006\u0002\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/jichi/ob/api/ZwiftApi;",
        "",
        "<init>",
        "()V",
        "client",
        "Lokhttp3/OkHttpClient;",
        "lastUsername",
        "",
        "lastPassword",
        "restoreCredentials",
        "",
        "username",
        "password",
        "reLoginIfNeeded",
        "Lcom/jichi/ob/api/ZwiftApi$LoginResult;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "login",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "refreshToken",
        "Lkotlin/Pair;",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getProfileId",
        "token",
        "validateToken",
        "",
        "getUsername",
        "isTrialAccount",
        "getActivities",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "playerId",
        "skip",
        "",
        "limit",
        "(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "parseActivities",
        "body",
        "downloadFit",
        "",
        "extra",
        "activityId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getBytes",
        "url",
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
.field private static final AUTH_URL:Ljava/lang/String; = "https://secure.zwift.com/auth/realms/zwift/tokens/access/codes"

.field private static final BASE_HOSTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLIENT_ID:Ljava/lang/String; = "Zwift_Mobile_Link"

.field public static final Companion:Lcom/jichi/ob/api/ZwiftApi$Companion;

.field private static final MAX_LIST_LIMIT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "ZwiftApi"

.field private static final TOKEN_EXPIRY_BUFFER_SEC:J = 0x1eL

.field private static final UA:Ljava/lang/String; = "Zwift/115 CFNetwork/758.0.2 Darwin/15.0.0"


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private lastPassword:Ljava/lang/String;

.field private lastUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jichi/ob/api/ZwiftApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/ZwiftApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/ZwiftApi;->Companion:Lcom/jichi/ob/api/ZwiftApi$Companion;

    const/4 v0, 0x3

    .line 37
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://us-or-rly101.zwift.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 38
    const-string v2, "https://us.zwift.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 39
    const-string v2, "https://secure.zwift.com"

    aput-object v2, v0, v1

    .line 36
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/api/ZwiftApi;->BASE_HOSTS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0x1e

    .line 48
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 49
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 50
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/api/ZwiftApi;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$getBASE_HOSTS$cp()Ljava/util/List;
    .locals 1

    .line 29
    sget-object v0, Lcom/jichi/ob/api/ZwiftApi;->BASE_HOSTS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getBytes(Lcom/jichi/ob/api/ZwiftApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/ZwiftApi;->getBytes(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClient$p(Lcom/jichi/ob/api/ZwiftApi;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jichi/ob/api/ZwiftApi;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getLastPassword$p(Lcom/jichi/ob/api/ZwiftApi;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jichi/ob/api/ZwiftApi;->lastPassword:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLastUsername$p(Lcom/jichi/ob/api/ZwiftApi;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jichi/ob/api/ZwiftApi;->lastUsername:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$parseActivities(Lcom/jichi/ob/api/ZwiftApi;Ljava/lang/String;II)Ljava/util/List;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/ZwiftApi;->parseActivities(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic downloadFit$default(Lcom/jichi/ob/api/ZwiftApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move-object p3, v0

    .line 283
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/ZwiftApi;->downloadFit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getBytes(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 351
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/ZwiftApi$getBytes$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/jichi/ob/api/ZwiftApi$getBytes$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/ZwiftApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final parseActivities(Ljava/lang/String;II)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/16 v1, 0x32

    move/from16 v2, p3

    .line 230
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 231
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    .line 232
    const-string v4, "activities"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_1

    .line 235
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v0, :cond_1

    move-object v3, v4

    :catch_1
    :cond_1
    if-nez v3, :cond_2

    .line 239
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 240
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 241
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_2
    if-ge v6, v4, :cond_17

    if-ge v7, v1, :cond_17

    .line 248
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_3

    move-object/from16 v9, p0

    check-cast v9, Lcom/jichi/ob/api/ZwiftApi;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 249
    :cond_3
    const-string v10, "id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4

    const-string v10, "activityId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    :cond_4
    if-eqz v10, :cond_16

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    goto/16 :goto_e

    .line 250
    :cond_5
    const-string v10, "fitFileBucket"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    .line 251
    :goto_3
    const-string v11, "fitFileKey"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v11

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    .line 254
    :goto_4
    const-string/jumbo v13, "|"

    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    goto :goto_5

    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    :goto_5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v13

    if-eqz v10, :cond_9

    if-nez v11, :cond_a

    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 256
    :cond_a
    const-string v10, "name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    :goto_6
    if-nez v10, :cond_d

    .line 257
    const-string/jumbo v10, "title"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_7

    :cond_c
    const/4 v10, 0x0

    :goto_7
    if-nez v10, :cond_d

    .line 258
    const-string v10, "Zwift\u9a91\u884c"

    :cond_d
    move-object v13, v10

    .line 259
    const-string/jumbo v10, "start_date_local"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_8

    :cond_e
    const/4 v10, 0x0

    :goto_8
    if-nez v10, :cond_11

    .line 260
    const-string/jumbo v10, "startDate"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_9

    :cond_f
    const/4 v10, 0x0

    :goto_9
    if-nez v10, :cond_11

    .line 261
    const-string v10, "createdAt"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_a

    :cond_10
    const/4 v10, 0x0

    :goto_a
    if-nez v10, :cond_11

    .line 262
    const-string v10, ""

    :cond_11
    move-object v14, v10

    .line 264
    const-string v10, "distance"

    move-object/from16 p1, v3

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmpl-double v11, v15, v17

    if-ltz v11, :cond_12

    goto :goto_b

    :cond_12
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_13

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    goto :goto_d

    .line 265
    :cond_13
    const-string v10, "distanceInMeters"

    invoke-virtual {v9, v10, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpl-double v3, v10, v17

    if-ltz v3, :cond_14

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_15

    .line 264
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    .line 267
    :cond_15
    :goto_d
    const-string v2, "durationInSeconds"

    invoke-virtual {v9, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "duration"

    invoke-virtual {v9, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 269
    new-instance v11, Lcom/jichi/ob/model/ActivityRecord;

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double v15, v17, v9

    sget-object v18, Lcom/jichi/ob/model/DataSource;->ZWIFT:Lcom/jichi/ob/model/DataSource;

    .line 270
    sget-object v3, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    invoke-virtual {v3, v14}, Lcom/jichi/ob/util/ActivityCache$Companion;->parseStartTimeMs(Ljava/lang/String;)J

    move-result-wide v20

    const/16 v23, 0x100

    const/16 v24, 0x0

    const/16 v22, 0x0

    move/from16 v17, v2

    .line 269
    invoke-direct/range {v11 .. v24}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_16
    :goto_e
    move-object/from16 p1, v3

    .line 249
    move-object/from16 v2, p0

    check-cast v2, Lcom/jichi/ob/api/ZwiftApi;

    add-int/lit8 v6, v6, 0x1

    :goto_f
    move-object/from16 v3, p1

    goto/16 :goto_2

    :cond_17
    if-lez v8, :cond_18

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Zwift \u5217\u8868\u8fd4\u56de "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6761\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6761\u5165\u5217\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6761\u65e0S3\u76f4\u94fe\u5c06\u8d70API\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZwiftApi"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-object v0
.end method


# virtual methods
.method public final downloadFit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 284
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;

    const/4 v6, 0x0

    move-object v5, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/ZwiftApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 175
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v2, p2

    move v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/ZwiftApi;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getProfileId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 129
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/ZwiftApi$getProfileId$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/jichi/ob/api/ZwiftApi$getProfileId$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/ZwiftApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 158
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/ZwiftApi$getUsername$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/jichi/ob/api/ZwiftApi$getUsername$2;-><init>(Lcom/jichi/ob/api/ZwiftApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isTrialAccount(Ljava/lang/String;)Z
    .locals 7

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 165
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/String;

    const-string v3, "."

    aput-object v3, v2, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    return v0

    .line 166
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "="

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x4

    rsub-int/lit8 v3, v3, 0x4

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v3, "decode(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    const-string v1, "realm_access"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "roles"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 364
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    .line 365
    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 169
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "trial-subscriber"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    return p1

    :catch_0
    :cond_5
    :goto_1
    return v0
.end method

.method public final login(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/ZwiftApi$LoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 71
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/ZwiftApi$login$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/jichi/ob/api/ZwiftApi$login$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/ZwiftApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final reLoginIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/ZwiftApi$LoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/ZwiftApi$reLoginIfNeeded$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jichi/ob/api/ZwiftApi$reLoginIfNeeded$2;-><init>(Lcom/jichi/ob/api/ZwiftApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final refreshToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 106
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/ZwiftApi$refreshToken$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/jichi/ob/api/ZwiftApi$refreshToken$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/ZwiftApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final restoreCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/jichi/ob/api/ZwiftApi;->lastUsername:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/jichi/ob/api/ZwiftApi;->lastPassword:Ljava/lang/String;

    return-void
.end method

.method public final validateToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p2, Lcom/jichi/ob/api/ZwiftApi$validateToken$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/jichi/ob/api/ZwiftApi$validateToken$1;

    iget v1, v0, Lcom/jichi/ob/api/ZwiftApi$validateToken$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/jichi/ob/api/ZwiftApi$validateToken$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/jichi/ob/api/ZwiftApi$validateToken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jichi/ob/api/ZwiftApi$validateToken$1;

    invoke-direct {v0, p0, p2}, Lcom/jichi/ob/api/ZwiftApi$validateToken$1;-><init>(Lcom/jichi/ob/api/ZwiftApi;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/jichi/ob/api/ZwiftApi$validateToken$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 155
    iget v2, v0, Lcom/jichi/ob/api/ZwiftApi$validateToken$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/jichi/ob/api/ZwiftApi$validateToken$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/jichi/ob/api/ZwiftApi$validateToken$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/jichi/ob/api/ZwiftApi$validateToken$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/jichi/ob/api/ZwiftApi;->getProfileId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_5

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v3

    :goto_3
    xor-int/2addr p1, v3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

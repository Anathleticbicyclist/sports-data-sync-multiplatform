.class public final Lcom/jichi/ob/api/MyWhooshApi;
.super Ljava/lang/Object;
.source "MyWhooshApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/MyWhooshApi$Companion;,
        Lcom/jichi/ob/api/MyWhooshApi$LoginResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMyWhooshApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyWhooshApi.kt\ncom/jichi/ob/api/MyWhooshApi\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,277:1\n1#2:278\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0018\u0000 /2\u00020\u0001:\u0002/0B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J \u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0013J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0016\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0086@\u00a2\u0006\u0002\u0010\u001aJ4\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010\"J&\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010$\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0002J%\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020\u00102\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00070)H\u0002\u00a2\u0006\u0002\u0010*J&\u0010+\u001a\u00020,2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010.R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/jichi/ob/api/MyWhooshApi;",
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
        "jsonBody",
        "Lokhttp3/RequestBody;",
        "o",
        "Lorg/json/JSONObject;",
        "login",
        "Lcom/jichi/ob/api/MyWhooshApi$LoginResult;",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "validateToken",
        "",
        "token",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getUsername",
        "reLoginIfNeeded",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getActivities",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "whooshId",
        "skip",
        "",
        "limit",
        "(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "parseActivities",
        "body",
        "parseDouble",
        "",
        "obj",
        "keys",
        "",
        "(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/Double;",
        "downloadFit",
        "",
        "activityFileId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private static final API_BASE:Ljava/lang/String; = "https://service14.mywhoosh.com/v2/rider/profile"

.field public static final Companion:Lcom/jichi/ob/api/MyWhooshApi$Companion;

.field private static final JSON_MEDIA:Ljava/lang/String; = "application/json; charset=utf-8"

.field private static final LOGIN_URL:Ljava/lang/String; = "https://services.mywhoosh.com/http-service/api/login"

.field private static final TAG:Ljava/lang/String; = "MyWhooshApi"

.field private static final UA:Ljava/lang/String; = "MyWhoosh-Python-Client/1.0"


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private lastPassword:Ljava/lang/String;

.field private lastUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/api/MyWhooshApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/MyWhooshApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/MyWhooshApi;->Companion:Lcom/jichi/ob/api/MyWhooshApi$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0x1e

    .line 43
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 44
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 45
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/api/MyWhooshApi;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$getClient$p(Lcom/jichi/ob/api/MyWhooshApi;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jichi/ob/api/MyWhooshApi;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getLastPassword$p(Lcom/jichi/ob/api/MyWhooshApi;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jichi/ob/api/MyWhooshApi;->lastPassword:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLastUsername$p(Lcom/jichi/ob/api/MyWhooshApi;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jichi/ob/api/MyWhooshApi;->lastUsername:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$jsonBody(Lcom/jichi/ob/api/MyWhooshApi;Lorg/json/JSONObject;)Lokhttp3/RequestBody;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/MyWhooshApi;->jsonBody(Lorg/json/JSONObject;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseActivities(Lcom/jichi/ob/api/MyWhooshApi;Ljava/lang/String;II)Ljava/util/List;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/MyWhooshApi;->parseActivities(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setLastPassword$p(Lcom/jichi/ob/api/MyWhooshApi;Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jichi/ob/api/MyWhooshApi;->lastPassword:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastUsername$p(Lcom/jichi/ob/api/MyWhooshApi;Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jichi/ob/api/MyWhooshApi;->lastUsername:Ljava/lang/String;

    return-void
.end method

.method private final jsonBody(Lorg/json/JSONObject;)Lokhttp3/RequestBody;
    .locals 3

    .line 60
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method private final parseActivities(Ljava/lang/String;II)Ljava/util/List;
    .locals 28
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 180
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 183
    :cond_0
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 185
    instance-of v5, v4, Lorg/json/JSONObject;

    const-string v6, "results"

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    goto :goto_1

    .line 186
    :cond_1
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v5, :cond_4

    const/4 v11, 0x4

    .line 189
    new-array v11, v11, [Ljava/lang/String;

    const-string v12, "activities"

    aput-object v12, v11, v9

    aput-object v6, v11, v10

    const-string v12, "rides"

    aput-object v12, v11, v8

    const-string v12, "rideHistory"

    aput-object v12, v11, v7

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 190
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_3

    move-object v5, v12

    :cond_4
    if-nez v5, :cond_5

    .line 194
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    .line 197
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v1, :cond_5

    move-object v5, v3

    :catch_1
    :cond_5
    if-nez v5, :cond_6

    .line 201
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 203
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 204
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v4, p2

    move v6, v9

    :goto_2
    if-ge v4, v3, :cond_16

    move/from16 v11, p3

    if-ge v6, v11, :cond_16

    .line 208
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_7

    move-object v12, v0

    check-cast v12, Lcom/jichi/ob/api/MyWhooshApi;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 209
    :cond_7
    const-string v13, "id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_8

    const-string v13, "_id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    :cond_8
    if-eqz v13, :cond_15

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_9

    goto/16 :goto_b

    .line 210
    :cond_9
    const-string v13, "activityFileId"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v13

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v22, v13

    goto :goto_4

    :cond_a
    const/16 v22, 0x0

    :goto_4
    if-nez v22, :cond_b

    goto :goto_3

    .line 212
    :cond_b
    const-string v13, "name"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v13

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_5

    :cond_c
    const/4 v13, 0x0

    :goto_5
    if-nez v13, :cond_e

    .line 213
    const-string/jumbo v13, "title"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v13

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    goto :goto_6

    :cond_d
    const/4 v13, 0x0

    :goto_6
    if-nez v13, :cond_e

    .line 214
    const-string v13, "MyWhoosh\u9a91\u884c"

    :cond_e
    move-object/from16 v16, v13

    .line 215
    const-string v13, "date"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v13

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_7

    :cond_f
    const/4 v13, 0x0

    :goto_7
    if-nez v13, :cond_12

    .line 216
    const-string/jumbo v13, "startTime"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v13

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_10

    goto :goto_8

    :cond_10
    const/4 v13, 0x0

    :goto_8
    if-nez v13, :cond_12

    .line 217
    const-string v13, "createdAt"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v13

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_11

    goto :goto_9

    :cond_11
    const/4 v13, 0x0

    :goto_9
    if-nez v13, :cond_12

    .line 218
    const-string v13, ""

    .line 219
    :cond_12
    new-array v14, v7, [Ljava/lang/String;

    const-string v17, "distanceKm"

    aput-object v17, v14, v9

    const-string v17, "distance"

    aput-object v17, v14, v10

    const-string/jumbo v17, "totalDistance"

    aput-object v17, v14, v8

    invoke-direct {v0, v12, v14}, Lcom/jichi/ob/api/MyWhooshApi;->parseDouble(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    .line 220
    new-array v2, v7, [Ljava/lang/String;

    const-string v17, "duration"

    aput-object v17, v2, v9

    const-string v17, "durationSeconds"

    aput-object v17, v2, v10

    const-string/jumbo v17, "totalTime"

    aput-object v17, v2, v8

    invoke-direct {v0, v12, v2}, Lcom/jichi/ob/api/MyWhooshApi;->parseDouble(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    const-wide/16 v17, 0x0

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    move-wide/from16 v7, v19

    goto :goto_a

    :cond_13
    move-wide/from16 v7, v17

    :goto_a
    double-to-int v7, v7

    move-object v8, v14

    .line 222
    new-instance v14, Lcom/jichi/ob/model/ActivityRecord;

    if-eqz v8, :cond_14

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    :cond_14
    move-wide/from16 v18, v17

    sget-object v21, Lcom/jichi/ob/model/DataSource;->MYWHOOSH:Lcom/jichi/ob/model/DataSource;

    .line 223
    sget-object v8, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    invoke-virtual {v8, v13}, Lcom/jichi/ob/util/ActivityCache$Companion;->parseStartTimeMs(Ljava/lang/String;)J

    move-result-wide v23

    const/16 v26, 0x100

    const/16 v27, 0x0

    const/16 v25, 0x0

    move/from16 v20, v7

    move-object/from16 v17, v13

    .line 222
    invoke-direct/range {v14 .. v27}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 209
    :cond_15
    :goto_b
    move-object v7, v0

    check-cast v7, Lcom/jichi/ob/api/MyWhooshApi;

    add-int/lit8 v4, v4, 0x1

    :goto_c
    const/4 v7, 0x3

    const/4 v8, 0x2

    goto/16 :goto_2

    :cond_16
    return-object v1
.end method

.method private final parseDouble(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/Double;
    .locals 3

    .line 230
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 231
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-static {v2}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 234
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
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

    .line 241
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/MyWhooshApi$downloadFit$2;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/MyWhooshApi$downloadFit$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/MyWhooshApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    .line 138
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;

    const/4 v5, 0x0

    move-object v4, p0

    move-object v3, p1

    move v1, p3

    move v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;-><init>(IILjava/lang/String;Lcom/jichi/ob/api/MyWhooshApi;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v0, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 125
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/MyWhooshApi$getUsername$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/jichi/ob/api/MyWhooshApi$getUsername$2;-><init>(Lcom/jichi/ob/api/MyWhooshApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
            "Lcom/jichi/ob/api/MyWhooshApi$LoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 63
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/MyWhooshApi$login$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/jichi/ob/api/MyWhooshApi$login$2;-><init>(Lcom/jichi/ob/api/MyWhooshApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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
            "Lcom/jichi/ob/api/MyWhooshApi$LoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 130
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/MyWhooshApi$reLoginIfNeeded$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jichi/ob/api/MyWhooshApi$reLoginIfNeeded$2;-><init>(Lcom/jichi/ob/api/MyWhooshApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final restoreCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/jichi/ob/api/MyWhooshApi;->lastUsername:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/jichi/ob/api/MyWhooshApi;->lastPassword:Ljava/lang/String;

    return-void
.end method

.method public final validateToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 104
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/MyWhooshApi$validateToken$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/jichi/ob/api/MyWhooshApi$validateToken$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/MyWhooshApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

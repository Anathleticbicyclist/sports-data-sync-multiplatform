.class public final Lcom/jichi/ob/api/DevOAuth2Api;
.super Ljava/lang/Object;
.source "DevOAuth2Api.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/DevOAuth2Api$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevOAuth2Api.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevOAuth2Api.kt\ncom/jichi/ob/api/DevOAuth2Api\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,259:1\n1#2:260\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u0000 (2\u00020\u0001:\u0001(B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u001e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\u0012J0\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017H\u0086@\u00a2\u0006\u0002\u0010\u0019J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0011H\u0002J,\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0082@\u00a2\u0006\u0002\u0010\u001fJ,\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0082@\u00a2\u0006\u0002\u0010\u001fJ\u001e\u0010!\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\"\u001a\u00020#H\u0086@\u00a2\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0011H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/jichi/ob/api/DevOAuth2Api;",
        "",
        "ctx",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "prefs",
        "Lcom/jichi/ob/util/PrefsManager;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "confOrNull",
        "Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;",
        "ds",
        "Lcom/jichi/ob/model/DataSource;",
        "exchangeCode",
        "",
        "code",
        "",
        "(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchActivities",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "skip",
        "",
        "limit",
        "(Lcom/jichi/ob/model/DataSource;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "authReq",
        "Lokhttp3/Request;",
        "url",
        "token",
        "fetchStrava",
        "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchFitbit",
        "uploadFile",
        "file",
        "Ljava/io/File;",
        "(Lcom/jichi/ob/model/DataSource;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "parseIsoTime",
        "",
        "s",
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
.field public static final Companion:Lcom/jichi/ob/api/DevOAuth2Api$Companion;

.field public static final REDIRECT:Ljava/lang/String; = "http://localhost:8080/callback"


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final ctx:Landroid/content/Context;

.field private final prefs:Lcom/jichi/ob/util/PrefsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/api/DevOAuth2Api$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/DevOAuth2Api$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/DevOAuth2Api;->Companion:Lcom/jichi/ob/api/DevOAuth2Api$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api;->ctx:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/jichi/ob/util/PrefsManager;

    invoke-direct {v0, p1}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jichi/ob/api/DevOAuth2Api;->prefs:Lcom/jichi/ob/util/PrefsManager;

    .line 37
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v0, 0x14

    .line 38
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/16 v0, 0x28

    .line 39
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$confOrNull(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;)Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/DevOAuth2Api;->confOrNull(Lcom/jichi/ob/model/DataSource;)Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchFitbit(Lcom/jichi/ob/api/DevOAuth2Api;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/DevOAuth2Api;->fetchFitbit(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchStrava(Lcom/jichi/ob/api/DevOAuth2Api;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/DevOAuth2Api;->fetchStrava(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClient$p(Lcom/jichi/ob/api/DevOAuth2Api;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jichi/ob/api/DevOAuth2Api;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getPrefs$p(Lcom/jichi/ob/api/DevOAuth2Api;)Lcom/jichi/ob/util/PrefsManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jichi/ob/api/DevOAuth2Api;->prefs:Lcom/jichi/ob/util/PrefsManager;

    return-object p0
.end method

.method private final authReq(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 2

    .line 156
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 157
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bearer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Authorization"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 159
    const-string p2, "User-Agent"

    const-string v0, "OBA-Sync/8.2.9"

    invoke-virtual {p1, p2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private final confOrNull(Lcom/jichi/ob/model/DataSource;)Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;
    .locals 1

    .line 105
    sget-object v0, Lcom/jichi/ob/api/DevOAuth2Api;->Companion:Lcom/jichi/ob/api/DevOAuth2Api$Companion;

    invoke-virtual {v0, p1}, Lcom/jichi/ob/api/DevOAuth2Api$Companion;->conf(Lcom/jichi/ob/model/DataSource;)Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic fetchActivities$default(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/16 p3, 0x64

    .line 141
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/DevOAuth2Api;->fetchActivities(Lcom/jichi/ob/model/DataSource;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final fetchFitbit(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24
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

    move-object/from16 v1, p0

    .line 190
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x6

    const/16 v3, -0x3c

    .line 191
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 192
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 193
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 194
    div-int/lit8 v2, p2, 0x14

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://api.fitbit.com/1/user/-/activities/list.json?afterDate="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&sort=desc&limit=20&offset="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v2, v1, Lcom/jichi/ob/api/DevOAuth2Api;->client:Lokhttp3/OkHttpClient;

    move-object/from16 v3, p1

    invoke-direct {v1, v0, v3}, Lcom/jichi/ob/api/DevOAuth2Api;->authReq(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v2

    check-cast v0, Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    :cond_1
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 197
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 198
    const-string v0, "activities"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 199
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 200
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    .line 201
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 202
    const-string v7, "logId"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 204
    :cond_3
    const-string v8, "activityName"

    const-string/jumbo v9, "\u8fd0\u52a8"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 205
    const-string/jumbo v8, "startTime"

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 206
    const-string v8, "distance"

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    .line 207
    const-string v8, "duration"

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 208
    new-instance v10, Lcom/jichi/ob/model/ActivityRecord;

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "fb_"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 210
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 211
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v6, 0x3e8

    int-to-long v6, v6

    .line 213
    div-long/2addr v8, v6

    long-to-int v6, v8

    .line 214
    sget-object v17, Lcom/jichi/ob/model/DataSource;->FITBIT:Lcom/jichi/ob/model/DataSource;

    const/16 v22, 0x1c0

    const/16 v23, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move/from16 v16, v6

    .line 208
    invoke-direct/range {v10 .. v23}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 217
    :cond_4
    check-cast v2, Ljava/lang/Iterable;

    move/from16 v0, p3

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 196
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final fetchStrava(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
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

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 163
    div-int/lit16 v0, v0, 0xc8

    add-int/lit8 v0, v0, 0x1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://www.strava.com/api/v3/athlete/activities?per_page=200&page="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v2, v1, Lcom/jichi/ob/api/DevOAuth2Api;->client:Lokhttp3/OkHttpClient;

    move-object/from16 v3, p1

    invoke-direct {v1, v0, v3}, Lcom/jichi/ob/api/DevOAuth2Api;->authReq(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v2

    check-cast v0, Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    :cond_1
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 166
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 168
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    .line 169
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 170
    const-string v8, "id"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 171
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 172
    :cond_2
    const-string v9, "name"

    const-string/jumbo v10, "\u9a91\u884c"

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 173
    const-string/jumbo v9, "start_date"

    invoke-virtual {v7, v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 174
    const-string v9, "distance"

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    .line 175
    const-string v11, "moving_time"

    invoke-virtual {v7, v11, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 176
    new-instance v11, Lcom/jichi/ob/model/ActivityRecord;

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "st_"

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 178
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 179
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double v15, v9, v7

    .line 182
    sget-object v18, Lcom/jichi/ob/model/DataSource;->STRAVA:Lcom/jichi/ob/model/DataSource;

    .line 183
    invoke-direct {v1, v14}, Lcom/jichi/ob/api/DevOAuth2Api;->parseIsoTime(Ljava/lang/String;)J

    move-result-wide v20

    const/16 v23, 0x140

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    .line 176
    invoke-direct/range {v11 .. v24}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 186
    :cond_3
    check-cast v0, Ljava/lang/Iterable;

    move/from16 v2, p3

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 165
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final parseIsoTime(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    .line 254
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 255
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public final exchangeCode(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;-><init>(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final fetchActivities(Lcom/jichi/ob/model/DataSource;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 141
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;-><init>(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;IILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final uploadFile(Lcom/jichi/ob/model/DataSource;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/io/File;",
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

    new-instance v1, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;-><init>(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

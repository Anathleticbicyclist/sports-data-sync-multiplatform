.class public final Lcom/jichi/ob/util/UpdateChecker;
.super Ljava/lang/Object;
.source "UpdateChecker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateChecker.kt\ncom/jichi/ob/util/UpdateChecker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n1617#2,9:156\n1869#2:165\n1870#2:167\n1626#2:168\n1617#2,9:169\n1869#2:178\n1870#2:180\n1626#2:181\n1#3:166\n1#3:179\n1#3:182\n*S KotlinDebug\n*F\n+ 1 UpdateChecker.kt\ncom/jichi/ob/util/UpdateChecker\n*L\n41#1:156,9\n41#1:165\n41#1:167\n41#1:168\n42#1:169,9\n42#1:178\n42#1:180\n42#1:181\n41#1:166\n42#1:179\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0005H\u0002J\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u0005H\u0002J(\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0005H\u0002J\u0018\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/jichi/ob/util/UpdateChecker;",
        "",
        "<init>",
        "()V",
        "RELEASES_LATEST_URL",
        "",
        "RELEASES_PAGE_URL",
        "PREFS",
        "KEY_LAST_NOTIFY",
        "NOTIFY_INTERVAL_MS",
        "",
        "client",
        "Lokhttp3/OkHttpClient;",
        "compareVersions",
        "",
        "v1",
        "v2",
        "check",
        "",
        "context",
        "Landroid/content/Context;",
        "force",
        "",
        "shouldSilentNotify",
        "ctx",
        "ver",
        "toastOnMain",
        "msg",
        "showUpdateDialog",
        "body",
        "downloadUrl",
        "showUpToDate",
        "latestVer",
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
.field public static final INSTANCE:Lcom/jichi/ob/util/UpdateChecker;

.field private static final KEY_LAST_NOTIFY:Ljava/lang/String; = "last_notify"

.field private static final NOTIFY_INTERVAL_MS:J = 0x5265c00L

.field private static final PREFS:Ljava/lang/String; = "update_check"

.field private static final RELEASES_LATEST_URL:Ljava/lang/String; = "https://api.github.com/repos/Anathleticbicyclist/sports-data-sync-multiplatform/releases/latest"

.field private static final RELEASES_PAGE_URL:Ljava/lang/String; = "https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform/releases"

.field private static final client:Lokhttp3/OkHttpClient;


# direct methods
.method public static synthetic $r8$lambda$3umf6BhoDNx8NhE2rptfAhCW1eQ(Landroid/content/Context;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/jichi/ob/util/UpdateChecker;->check$lambda$6$lambda$5(Landroid/content/Context;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YQIHskn0_yLadlJTKTPooP7rD04(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/util/UpdateChecker;->toastOnMain$lambda$7(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e9CQDaEY61c_Gw9Z9t5tobsgpMM(Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/util/UpdateChecker;->showUpdateDialog$lambda$9(Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eLLe72o_xfY2psGV9utiu9VlSL8(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/util/UpdateChecker;->check$lambda$6(Landroid/content/Context;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/jichi/ob/util/UpdateChecker;

    invoke-direct {v0}, Lcom/jichi/ob/util/UpdateChecker;-><init>()V

    sput-object v0, Lcom/jichi/ob/util/UpdateChecker;->INSTANCE:Lcom/jichi/ob/util/UpdateChecker;

    .line 33
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 34
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 35
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/util/UpdateChecker;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final check$lambda$6(Landroid/content/Context;Z)V
    .locals 11

    .line 58
    const-string v0, "optString(...)"

    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 59
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, ""

    iput-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 60
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 61
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v2, 0x1

    .line 64
    :try_start_0
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 65
    const-string v8, "https://api.github.com/repos/Anathleticbicyclist/sports-data-sync-multiplatform/releases/latest"

    invoke-virtual {v7, v8}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 66
    const-string v8, "Accept"

    const-string v9, "application/vnd.github+json"

    invoke-virtual {v7, v8, v9}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 67
    const-string v8, "User-Agent"

    const-string v9, "jichi-ob"

    invoke-virtual {v7, v8, v9}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 68
    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    .line 69
    sget-object v8, Lcom/jichi/ob/util/UpdateChecker;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v8, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v7

    invoke-interface {v7}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7

    check-cast v7, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v8, v7

    check-cast v8, Lokhttp3/Response;

    .line 70
    invoke-virtual {v8}, Lokhttp3/Response;->isSuccessful()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 71
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v8

    :cond_1
    :goto_0
    invoke-direct {v9, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v1, "tag_name"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 73
    const-string v1, "body"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 74
    const-string v1, "assets"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 76
    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v8, "browser_download_url"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 78
    :cond_2
    const-string v0, "9.2.5"

    .line 79
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    sget-object v1, Lcom/jichi/ob/util/UpdateChecker;->INSTANCE:Lcom/jichi/ob/util/UpdateChecker;

    iget-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8, v0}, Lcom/jichi/ob/util/UpdateChecker;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v10

    :goto_1
    iput-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 81
    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 69
    :try_start_2
    invoke-static {v7, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v10

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 86
    :catch_0
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_5

    .line 88
    iget-boolean v1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    .line 89
    sget-object p0, Lcom/jichi/ob/util/UpdateChecker;->INSTANCE:Lcom/jichi/ob/util/UpdateChecker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo p1, "\u68c0\u67e5\u66f4\u65b0\u5931\u8d25\uff1a\u65e0\u6cd5\u8fde\u63a5\u66f4\u65b0\u670d\u52a1\u5668\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {p0, v0, p1}, Lcom/jichi/ob/util/UpdateChecker;->toastOnMain(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_5
    if-nez p1, :cond_7

    .line 92
    iget-boolean v1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/jichi/ob/util/UpdateChecker;->INSTANCE:Lcom/jichi/ob/util/UpdateChecker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/jichi/ob/util/UpdateChecker;->shouldSilentNotify(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return-void

    .line 94
    :cond_7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/jichi/ob/util/UpdateChecker$$ExternalSyntheticLambda3;

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/util/UpdateChecker$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final check$lambda$6$lambda$5(Landroid/content/Context;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
    .locals 1

    .line 96
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/jichi/ob/util/UpdateChecker;->INSTANCE:Lcom/jichi/ob/util/UpdateChecker;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p3, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p4, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/jichi/ob/util/UpdateChecker;->showUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p5, :cond_3

    .line 99
    sget-object p1, Lcom/jichi/ob/util/UpdateChecker;->INSTANCE:Lcom/jichi/ob/util/UpdateChecker;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lcom/jichi/ob/util/UpdateChecker;->showUpToDate(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final compareVersions$strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 40
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "v"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "substring(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final shouldSilentNotify(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    .line 105
    const-string/jumbo v0, "update_check"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 106
    const-string v0, "last_notify"

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 107
    :goto_0
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string v9, "@"

    aput-object v9, v4, v1

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 108
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 109
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 110
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 111
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v5, v3

    const-wide/32 v7, 0x5265c00

    cmp-long v3, v3, v7

    if-gez v3, :cond_2

    return v1

    .line 112
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v2
.end method

.method private final showUpToDate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 144
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    const-string/jumbo p1, "\u2705 \u68c0\u67e5\u66f4\u65b0"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p2, "\u672a\u77e5"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u7ecf\u68c0\u67e5\u66f4\u65b0\uff0c\u5f00\u6e90\u9879\u76ee\u300c\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB(\u5f00\u53d1\u4f53\u9a8c\u7248)\u300d\u6700\u65b0\u7248\u672c\u4e3a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string/jumbo p2, "\u4f60\u7684\u5f53\u524d\u7248\u672c\u4e3a v9.2.5\n\n\u5f53\u524d\u5df2\u662f\u6700\u65b0\u7248\u672c\uff0c\u65e0\u9700\u66f4\u65b0\u3002"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 151
    const-string/jumbo p2, "\u597d\u7684"

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private final showUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u7ecf\u68c0\u67e5\u66f4\u65b0\uff0c\u5f00\u6e90\u9879\u76ee\u300c\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB(\u5f00\u53d1\u4f53\u9a8c\u7248)\u300d\u6700\u65b0\u7248\u672c\u4e3a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v1, "\u4f60\u7684\u5f53\u524d\u7248\u672c\u4e3a v9.2.5\n\n\u68c0\u6d4b\u5230\u65b0\u7248\u672c\uff0c\u5efa\u8bae\u66f4\u65b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x190

    invoke-static {p3, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff1a\n\n\u66f4\u65b0\u5185\u5bb9\uff1a\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    :cond_0
    const-string/jumbo p3, "\u3002"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 130
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\ud83d\udd04 \u53d1\u73b0\u65b0\u7248\u672c "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 132
    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 133
    const-string/jumbo p3, "\u53bb\u66f4\u65b0"

    check-cast p3, Ljava/lang/CharSequence;

    new-instance v0, Lcom/jichi/ob/util/UpdateChecker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p4, p1}, Lcom/jichi/ob/util/UpdateChecker$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 139
    const-string/jumbo p2, "\u7a0d\u540e"

    check-cast p2, Ljava/lang/CharSequence;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final showUpdateDialog$lambda$9(Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 134
    move-object p2, p0

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform/releases"

    .line 135
    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x10000000

    .line 136
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final toastOnMain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/jichi/ob/util/UpdateChecker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/jichi/ob/util/UpdateChecker$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final toastOnMain$lambda$7(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 118
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public final check(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "\u6b63\u5728\u68c0\u67e5\u66f4\u65b0..."

    invoke-direct {p0, v0, v1}, Lcom/jichi/ob/util/UpdateChecker;->toastOnMain(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 101
    new-instance v1, Lcom/jichi/ob/util/UpdateChecker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/jichi/ob/util/UpdateChecker$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Z)V

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17

    const-string/jumbo v0, "v1"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "v2"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {v1}, Lcom/jichi/ob/util/UpdateChecker;->compareVersions$strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 41
    const-string v10, "."

    aput-object v10, v4, v1

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 156
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 165
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 164
    check-cast v5, Ljava/lang/String;

    .line 41
    invoke-static {v5}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 164
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_1
    check-cast v4, Ljava/util/List;

    .line 42
    invoke-static {v2}, Lcom/jichi/ob/util/UpdateChecker;->compareVersions$strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/CharSequence;

    new-array v12, v0, [Ljava/lang/String;

    aput-object v10, v12, v1

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 178
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 177
    check-cast v5, Ljava/lang/String;

    .line 42
    invoke-static {v5}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 177
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_3
    check-cast v3, Ljava/util/List;

    .line 43
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v5, v1

    :goto_2
    if-ge v5, v2, :cond_8

    if-ltz v5, :cond_4

    .line 44
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v9

    :goto_3
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ltz v5, :cond_5

    .line 45
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_4

    :cond_5
    move-object v7, v9

    :goto_4
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_7

    if-le v6, v7, :cond_6

    return v0

    :cond_6
    const/4 v0, -0x1

    return v0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    return v1
.end method

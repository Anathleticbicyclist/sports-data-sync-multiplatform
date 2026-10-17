.class public final Lcom/jichi/ob/api/TwoBuluApi;
.super Ljava/lang/Object;
.source "TwoBuluApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/TwoBuluApi$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u000fJ(\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0002\u0010\u0016J\"\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000bH\u0086@\u00a2\u0006\u0002\u0010\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/jichi/ob/api/TwoBuluApi;",
        "",
        "ctx",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "prefs",
        "Lcom/jichi/ob/util/PrefsManager;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "cookie",
        "",
        "isLoggedIn",
        "",
        "verifyLogin",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchActivities",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "skip",
        "",
        "limit",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadFile",
        "file",
        "Ljava/io/File;",
        "title",
        "(Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "logout",
        "",
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
.field public static final Companion:Lcom/jichi/ob/api/TwoBuluApi$Companion;

.field private static final HOME:Ljava/lang/String; = "https://www.2bulu.com"

.field private static final MOBILE_UA:Ljava/lang/String; = "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36"


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final ctx:Landroid/content/Context;

.field private final prefs:Lcom/jichi/ob/util/PrefsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/api/TwoBuluApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/TwoBuluApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/TwoBuluApi;->Companion:Lcom/jichi/ob/api/TwoBuluApi$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/TwoBuluApi;->ctx:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/jichi/ob/util/PrefsManager;

    invoke-direct {v0, p1}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jichi/ob/api/TwoBuluApi;->prefs:Lcom/jichi/ob/util/PrefsManager;

    .line 29
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v0, 0x14

    .line 30
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/16 v0, 0x28

    .line 31
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/TwoBuluApi;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$getClient$p(Lcom/jichi/ob/api/TwoBuluApi;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/jichi/ob/api/TwoBuluApi;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getCtx$p(Lcom/jichi/ob/api/TwoBuluApi;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/jichi/ob/api/TwoBuluApi;->ctx:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic fetchActivities$default(Lcom/jichi/ob/api/TwoBuluApi;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/16 p2, 0x32

    .line 105
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/jichi/ob/api/TwoBuluApi;->fetchActivities(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic uploadFile$default(Lcom/jichi/ob/api/TwoBuluApi;Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 122
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/jichi/ob/api/TwoBuluApi;->uploadFile(Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cookie()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/jichi/ob/api/TwoBuluApi;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v0}, Lcom/jichi/ob/util/PrefsManager;->getTwoBuluCookie()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final fetchActivities(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 105
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;-><init>(Lcom/jichi/ob/api/TwoBuluApi;IILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isLoggedIn()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/jichi/ob/api/TwoBuluApi;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v0}, Lcom/jichi/ob/util/PrefsManager;->isTwoBuluLoggedIn()Z

    move-result v0

    return v0
.end method

.method public final logout()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/jichi/ob/api/TwoBuluApi;->prefs:Lcom/jichi/ob/util/PrefsManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/jichi/ob/util/PrefsManager;->saveTwoBuluCookie(Ljava/lang/String;)V

    return-void
.end method

.method public final uploadFile(Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/jichi/ob/api/TwoBuluApi$uploadFile$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/jichi/ob/api/TwoBuluApi$uploadFile$2;-><init>(Lcom/jichi/ob/api/TwoBuluApi;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v0, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final verifyLogin(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 90
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/TwoBuluApi$verifyLogin$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jichi/ob/api/TwoBuluApi$verifyLogin$2;-><init>(Lcom/jichi/ob/api/TwoBuluApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

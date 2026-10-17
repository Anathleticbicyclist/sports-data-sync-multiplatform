.class public final Lcom/jichi/ob/api/WahooOAuth2Service;
.super Ljava/lang/Object;
.source "WahooOAuth2Service.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWahooOAuth2Service.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WahooOAuth2Service.kt\ncom/jichi/ob/api/WahooOAuth2Service\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,425:1\n1#2:426\n216#3,2:427\n*S KotlinDebug\n*F\n+ 1 WahooOAuth2Service.kt\ncom/jichi/ob/api/WahooOAuth2Service\n*L\n377#1:427,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000W\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0007*\u0001 \u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00015B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0005H\u0002J\u001c\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00052\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u0005H\u0002J\u0010\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005H\u0002J,\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010&2\u0006\u0010\'\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010)J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0005H\u0002J$\u0010-\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00052\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050/H\u0002J\u0018\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00052\u0006\u00102\u001a\u00020\u0005H\u0002J\u0010\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R(\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010!R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/jichi/ob/api/WahooOAuth2Service;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "debugLogCallback",
        "Lkotlin/Function1;",
        "",
        "getDebugLogCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "setDebugLogCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "lastError",
        "getLastError",
        "()Ljava/lang/String;",
        "setLastError",
        "(Ljava/lang/String;)V",
        "ERROR_TOKEN_LIMIT",
        "currentCodeVerifier",
        "log",
        "msg",
        "logError",
        "e",
        "",
        "generateCodeVerifier",
        "generateCodeChallenge",
        "verifier",
        "cookieStore",
        "",
        "Lokhttp3/Cookie;",
        "cookieJar",
        "com/jichi/ob/api/WahooOAuth2Service$cookieJar$1",
        "Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "UA",
        "login",
        "Lkotlin/Pair;",
        "email",
        "password",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "executeGet",
        "Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;",
        "url",
        "executePost",
        "formData",
        "",
        "resolveUrl",
        "base",
        "relative",
        "decodeHtmlEntities",
        "text",
        "HttpResponse",
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
.field public static final ERROR_TOKEN_LIMIT:Ljava/lang/String; = "TOKEN_LIMIT_EXCEEDED"

.field public static final INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

.field private static final TAG:Ljava/lang/String; = "WahooOAuth2"

.field private static final UA:Ljava/lang/String; = "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

.field private static final client:Lokhttp3/OkHttpClient;

.field private static final cookieJar:Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1;

.field private static final cookieStore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private static currentCodeVerifier:Ljava/lang/String;

.field private static debugLogCallback:Lkotlin/jvm/functions/Function1;
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

.field private static lastError:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-direct {v0}, Lcom/jichi/ob/api/WahooOAuth2Service;-><init>()V

    sput-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->cookieStore:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1;

    invoke-direct {v0}, Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1;-><init>()V

    sput-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->cookieJar:Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1;

    .line 82
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 83
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 84
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 85
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 88
    check-cast v0, Lokhttp3/CookieJar;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$decodeHtmlEntities(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/WahooOAuth2Service;->decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$executeGet(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/WahooOAuth2Service;->executeGet(Ljava/lang/String;)Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$executePost(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/util/Map;)Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/WahooOAuth2Service;->executePost(Ljava/lang/String;Ljava/util/Map;)Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateCodeChallenge(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/WahooOAuth2Service;->generateCodeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateCodeVerifier(Lcom/jichi/ob/api/WahooOAuth2Service;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/jichi/ob/api/WahooOAuth2Service;->generateCodeVerifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCookieJar$p()Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1;
    .locals 1

    .line 24
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->cookieJar:Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1;

    return-object v0
.end method

.method public static final synthetic access$getCookieStore$p()Ljava/util/List;
    .locals 1

    .line 24
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->cookieStore:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getCurrentCodeVerifier$p()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->currentCodeVerifier:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/WahooOAuth2Service;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$logError(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$resolveUrl(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/WahooOAuth2Service;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCurrentCodeVerifier$p(Ljava/lang/String;)V
    .locals 0

    .line 24
    sput-object p0, Lcom/jichi/ob/api/WahooOAuth2Service;->currentCodeVerifier:Ljava/lang/String;

    return-void
.end method

.method private final decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 411
    const-string v1, "&amp;"

    const-string v2, "&"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 412
    const-string v7, "&lt;"

    const-string v8, "<"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 413
    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 414
    const-string v7, "&quot;"

    const-string v8, "\""

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 415
    const-string v1, "&#39;"

    const-string v2, "\'"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final executeGet(Ljava/lang/String;)Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;
    .locals 8

    const-string v0, "  \u2190 "

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  GET: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->log(Ljava/lang/String;)V

    .line 354
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 355
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 356
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 357
    const-string v1, "Accept"

    const-string/jumbo v2, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 358
    const-string v1, "Accept-Language"

    const-string/jumbo v2, "zh-CN,zh;q=0.9,en;q=0.8"

    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 362
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Lokhttp3/Response;

    .line 363
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 364
    :cond_1
    sget-object v4, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", \u957f\u5ea6="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/jichi/ob/api/WahooOAuth2Service;->log(Ljava/lang/String;)V

    .line 365
    new-instance v0, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;

    .line 366
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v4

    .line 368
    const-string v5, "Location"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v1, v5, v7, v6, v7}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v5

    .line 369
    :goto_0
    invoke-virtual {v1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final executePost(Ljava/lang/String;Ljava/util/Map;)Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;"
        }
    .end annotation

    .line 375
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  POST: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5b57\u6bb5)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jichi/ob/api/WahooOAuth2Service;->log(Ljava/lang/String;)V

    .line 376
    new-instance v0, Lokhttp3/FormBody$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 427
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 377
    invoke-virtual {v0, v3, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    .line 380
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 381
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 382
    const-string v1, "User-Agent"

    const-string v3, "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 383
    const-string v1, "Accept"

    const-string/jumbo v3, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 384
    const-string v1, "Accept-Language"

    const-string/jumbo v3, "zh-CN,zh;q=0.9,en;q=0.8"

    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 385
    const-string v1, "Referer"

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 386
    check-cast p2, Lokhttp3/RequestBody;

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 387
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 389
    sget-object p2, Lcom/jichi/ob/api/WahooOAuth2Service;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lokhttp3/Response;

    .line 390
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 391
    :cond_2
    sget-object v3, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  \u2190 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", \u957f\u5ea6="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jichi/ob/api/WahooOAuth2Service;->log(Ljava/lang/String;)V

    .line 392
    new-instance v3, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;

    .line 393
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v4

    .line 395
    const-string v5, "Location"

    const/4 v6, 0x2

    invoke-static {p2, v5, v2, v6, v2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v5

    .line 396
    :goto_1
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p2

    .line 392
    invoke-direct {v3, v4, v0, v1, p2}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_0
    move-exception p2

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final generateCodeChallenge(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 58
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 59
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "getBytes(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 60
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "encodeToString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final generateCodeVerifier()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x20

    .line 51
    new-array v1, v1, [B

    .line 52
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 53
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encodeToString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final log(Ljava/lang/String;)V
    .locals 1

    .line 38
    const-string v0, "WahooOAuth2"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->debugLogCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 43
    const-string v0, "WahooOAuth2"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->debugLogCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u274c "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 45
    sget-object p1, Lcom/jichi/ob/api/WahooOAuth2Service;->debugLogCallback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static synthetic logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 42
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 403
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, p2}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 406
    const-string v1, "http"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, p1, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://api.wahooligan.com"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method


# virtual methods
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

    .line 28
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->debugLogCallback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getLastError()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->lastError:Ljava/lang/String;

    return-object v0
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
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 93
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 28
    sput-object p1, Lcom/jichi/ob/api/WahooOAuth2Service;->debugLogCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setLastError(Ljava/lang/String;)V
    .locals 0

    .line 30
    sput-object p1, Lcom/jichi/ob/api/WahooOAuth2Service;->lastError:Ljava/lang/String;

    return-void
.end method

.class public final Lcom/jichi/ob/util/WebBridge;
.super Ljava/lang/Object;
.source "WebBridge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/util/WebBridge$BridgeCallback;,
        Lcom/jichi/ob/util/WebBridge$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0007\u0018\u0000 -2\u00020\u0001:\u0002-.B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0011\u001a\u00020\u0012H\u0086@\u00a2\u0006\u0002\u0010\u0013J\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0002\u0010\u0016J\"\u0010\u0017\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0015\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0002\u0010\u0019J(\u0010\u001a\u001a\u00020\u000f2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0002\u0010\u001eJ \u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u001c2\u0008\u0008\u0002\u0010!\u001a\u00020\"H\u0086@\u00a2\u0006\u0002\u0010#J\u000e\u0010$\u001a\u00020\u0012H\u0086@\u00a2\u0006\u0002\u0010\u0013JB\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e2\u0006\u0010&\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010+J\u0006\u0010,\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u000c\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/jichi/ob/util/WebBridge;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "localWv",
        "Landroid/webkit/WebView;",
        "outbaseWv",
        "localReady",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "outbaseReady",
        "uploadCont",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/Pair;",
        "",
        "",
        "initLocal",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "evalLocal",
        "script",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "evalOn",
        "wvRef",
        "(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "injectChunks",
        "data",
        "",
        "injectFn",
        "(Landroid/webkit/WebView;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "convertGpxToFit",
        "gpxData",
        "add8Hours",
        "",
        "([BZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "initOutbasePage",
        "uploadViaOutbasePage",
        "cdnUrl",
        "fileName",
        "fileData",
        "withSid",
        "sid",
        "(Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "destroy",
        "Companion",
        "BridgeCallback",
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
.field public static final Companion:Lcom/jichi/ob/util/WebBridge$Companion;

.field private static final INJECT_CHUNK:I = 0x40000

.field private static final OUTBASE_PAGE:Ljava/lang/String; = "https://outbase.cn/zeusfit/official-website/dashboard.html"

.field private static final READ_CHUNK:I = 0x32000

.field private static final TAG:Ljava/lang/String; = "WebBridge"

.field private static final UPLOAD_JS:Ljava/lang/String; = "\nwindow.__upChunks = [];\nwindow.__upInject = function(idx, b64) { window.__upChunks[idx] = b64; return \'ok\'; };\nwindow.__upRun = function(url, fileName, count, withSid, sid) {\n  try {\n    var b64 = window.__upChunks.slice(0, count).join(\'\');\n    window.__upChunks = [];\n    var bin = atob(b64);\n    var bytes = new Uint8Array(bin.length);\n    for (var i = 0; i < bin.length; i++) bytes[i] = bin.charCodeAt(i);\n    var blob = new Blob([bytes], { type: \'application/octet-stream\' });\n    var fd = new FormData();\n    fd.append(\'file\', blob, fileName);\n    var opt = { method: \'POST\', credentials: \'include\', body: fd };\n    if (withSid) { opt.headers = { \'Sessionid\': sid }; }\n    fetch(url, opt).then(function(r) {\n      return r.text().then(function(t) { window.__upResult = { status: r.status, body: t.substring(0, 500) }; });\n    }).catch(function(e) {\n      window.__upResult = { status: -1, body: String(e && e.message || e) };\n    });\n    return \'started\';\n  } catch (e) { return \'err:\' + e; }\n};\nwindow.__upResult = null;\n"


# instance fields
.field private final context:Landroid/content/Context;

.field private final localReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private localWv:Landroid/webkit/WebView;

.field private final outbaseReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private outbaseWv:Landroid/webkit/WebView;

.field private volatile uploadCont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/util/WebBridge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/util/WebBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/util/WebBridge;->Companion:Lcom/jichi/ob/util/WebBridge$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge;->context:Landroid/content/Context;

    .line 65
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge;->localReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge;->outbaseReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$evalLocal(Lcom/jichi/ob/util/WebBridge;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/util/WebBridge;->evalLocal(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$evalOn(Lcom/jichi/ob/util/WebBridge;Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/util/WebBridge;->evalOn(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/jichi/ob/util/WebBridge;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jichi/ob/util/WebBridge;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getLocalReady$p(Lcom/jichi/ob/util/WebBridge;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jichi/ob/util/WebBridge;->localReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getOutbaseReady$p(Lcom/jichi/ob/util/WebBridge;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jichi/ob/util/WebBridge;->outbaseReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getOutbaseWv$p(Lcom/jichi/ob/util/WebBridge;)Landroid/webkit/WebView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jichi/ob/util/WebBridge;->outbaseWv:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static final synthetic access$getUploadCont$p(Lcom/jichi/ob/util/WebBridge;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jichi/ob/util/WebBridge;->uploadCont:Lkotlin/coroutines/Continuation;

    return-object p0
.end method

.method public static final synthetic access$injectChunks(Lcom/jichi/ob/util/WebBridge;Landroid/webkit/WebView;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/util/WebBridge;->injectChunks(Landroid/webkit/WebView;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setLocalWv$p(Lcom/jichi/ob/util/WebBridge;Landroid/webkit/WebView;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge;->localWv:Landroid/webkit/WebView;

    return-void
.end method

.method public static final synthetic access$setOutbaseWv$p(Lcom/jichi/ob/util/WebBridge;Landroid/webkit/WebView;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge;->outbaseWv:Landroid/webkit/WebView;

    return-void
.end method

.method public static final synthetic access$setUploadCont$p(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge;->uploadCont:Lkotlin/coroutines/Continuation;

    return-void
.end method

.method public static synthetic convertGpxToFit$default(Lcom/jichi/ob/util/WebBridge;[BZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 140
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/jichi/ob/util/WebBridge;->convertGpxToFit([BZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final evalLocal(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    .line 99
    iget-object v0, p0, Lcom/jichi/ob/util/WebBridge;->localWv:Landroid/webkit/WebView;

    invoke-direct {p0, v0, p1, p2}, Lcom/jichi/ob/util/WebBridge;->evalOn(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final evalOn(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 102
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/util/WebBridge$evalOn$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/jichi/ob/util/WebBridge$evalOn$2;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final injectChunks(Landroid/webkit/WebView;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/jichi/ob/util/WebBridge$injectChunks$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;

    iget v1, v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;

    invoke-direct {v0, p0, p4}, Lcom/jichi/ob/util/WebBridge$injectChunks$1;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 124
    iget v2, v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->I$2:I

    iget p2, v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->I$1:I

    iget p2, v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->I$0:I

    iget-object p3, v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->L$4:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p3, v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->L$3:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object v2, v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->L$1:Ljava/lang/Object;

    check-cast v4, [B

    iget-object v5, v0, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroid/webkit/WebView;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v5

    move v5, p1

    move-object p1, v9

    move-object v9, v0

    move-object v0, p3

    move-object p3, v4

    move-object v4, v9

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p4, 0x2

    .line 125
    invoke-static {p2, p4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x0

    move v4, v2

    move-object v2, v0

    move-object v0, p3

    move-object p3, p2

    move p2, v4

    .line 128
    :goto_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    const/high16 v5, 0x40000

    add-int/2addr v5, v4

    .line 129
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 130
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "substring(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\')"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object p1, v2, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v2, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->L$1:Ljava/lang/Object;

    iput-object v0, v2, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->L$2:Ljava/lang/Object;

    iput-object p4, v2, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->L$3:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v2, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->L$4:Ljava/lang/Object;

    iput p2, v2, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->I$0:I

    iput v4, v2, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->I$1:I

    iput v5, v2, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->I$2:I

    iput v3, v2, Lcom/jichi/ob/util/WebBridge$injectChunks$1;->label:I

    invoke-direct {p0, p1, v7, v2}, Lcom/jichi/ob/util/WebBridge;->evalOn(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v9, v0

    move-object v0, p4

    move-object p4, v4

    move-object v4, v2

    move-object v2, v9

    .line 124
    :goto_2
    check-cast p4, Ljava/lang/String;

    .line 132
    const-string v6, "ok"

    invoke-static {p4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 p2, p2, 0x1

    move-object p4, v0

    move-object v0, v2

    move-object v2, v4

    move v4, v5

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u6ce8\u5165\u5757\u5931\u8d25 idx="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_5
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final convertGpxToFit([BZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZ",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;

    iget v1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;

    invoke-direct {v0, p0, p3}, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 140
    iget v2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->label:I

    const-string v3, ")"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$2:I

    iget p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$1:I

    iget p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$0:I

    iget-boolean p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->Z$0:Z

    iget-object p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$0:Ljava/lang/Object;

    check-cast p2, [B

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    iget p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$2:I

    iget p2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$1:I

    iget v2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$0:I

    iget-boolean v4, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->Z$0:Z

    iget-object v5, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$0:Ljava/lang/Object;

    check-cast v8, [B

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    iget p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$0:I

    iget-boolean p2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->Z$0:Z

    iget-object v2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$0:Ljava/lang/Object;

    check-cast v4, [B

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$0:I

    iget-boolean p2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->Z$0:Z

    iget-object v2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$0:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    iget-boolean p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->Z$0:Z

    iget-object p2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$0:Ljava/lang/Object;

    check-cast p2, [B

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    iget-boolean p2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->Z$0:Z

    iget-object p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$0:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    iput-object p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->Z$0:Z

    iput v5, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->label:I

    invoke-virtual {p0, v0}, Lcom/jichi/ob/util/WebBridge;->initLocal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_1

    goto/16 :goto_8

    .line 142
    :cond_1
    :goto_1
    iget-object p3, p0, Lcom/jichi/ob/util/WebBridge;->localWv:Landroid/webkit/WebView;

    iput-object p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->Z$0:Z

    iput v4, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->label:I

    const-string/jumbo v2, "window.__injectChunk"

    invoke-direct {p0, p3, p1, v2, v0}, Lcom/jichi/ob/util/WebBridge;->injectChunks(Landroid/webkit/WebView;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_2

    goto/16 :goto_8

    :cond_2
    move v10, p2

    move-object p2, p1

    move p1, v10

    :goto_2
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "window.__convertGpx("

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object p2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->Z$0:Z

    iput p3, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$0:I

    const/4 v7, 0x3

    iput v7, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->label:I

    invoke-direct {p0, v2, v0}, Lcom/jichi/ob/util/WebBridge;->evalLocal(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    goto/16 :goto_8

    :cond_3
    move-object v10, p2

    move p2, p1

    move p1, p3

    move-object p3, v2

    move-object v2, v10

    .line 140
    :goto_3
    check-cast p3, Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz p3, :cond_5

    .line 144
    const-string v8, "err:"

    invoke-static {p3, v8, v6, v4, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eq v4, v5, :cond_4

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "GPX\u2192FIT\u5931\u8d25: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_5
    :goto_4
    new-instance v4, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;

    invoke-direct {v4, p0, v7}, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->Z$0:Z

    iput p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$0:I

    const/4 v5, 0x4

    iput v5, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->label:I

    const-wide/32 v7, 0x1d4c0

    invoke-static {v7, v8, v4, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    goto/16 :goto_8

    :cond_6
    move-object v10, v2

    move-object v2, p3

    move-object p3, v4

    move-object v4, v10

    :goto_5
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v7, p3

    move p3, p2

    move p2, v7

    move-object v7, v2

    move v2, p1

    move p1, v6

    :goto_6
    if-ge p1, p2, :cond_a

    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "window.__getResultChunk("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", 204800)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v4, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$2:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->Z$0:Z

    iput v2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$0:I

    iput p2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$1:I

    iput p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$2:I

    const/4 v9, 0x5

    iput v9, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->label:I

    invoke-direct {p0, v8, v0}, Lcom/jichi/ob/util/WebBridge;->evalLocal(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_7

    goto :goto_8

    :cond_7
    move-object v10, v4

    move v4, p3

    move-object p3, v8

    move-object v8, v10

    :goto_7
    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_9

    .line 167
    move-object v9, p3

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eqz v9, :cond_8

    .line 168
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p3, 0x32000

    add-int/2addr p1, p3

    move p3, v4

    move-object v4, v8

    goto :goto_6

    .line 167
    :cond_8
    new-instance p2, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u8bfb\u56de\u7ed3\u679c\u4e3a\u7a7a pos="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 166
    :cond_9
    new-instance p2, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u8bfb\u56de\u7ed3\u679c\u5931\u8d25 pos="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 171
    :cond_a
    iput-object v4, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->L$2:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->Z$0:Z

    iput v2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$0:I

    iput p2, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$1:I

    iput p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->I$2:I

    const/4 p1, 0x6

    iput p1, v0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->label:I

    const-string/jumbo p1, "window.__clearResult()"

    invoke-direct {p0, p1, v0}, Lcom/jichi/ob/util/WebBridge;->evalLocal(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    :goto_8
    return-object v1

    :cond_b
    move-object p2, v4

    move-object p1, v5

    .line 172
    :goto_9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 173
    array-length p3, p1

    const/16 v0, 0xe

    if-lt p3, v0, :cond_c

    const/16 p3, 0x8

    aget-byte p3, p1, p3

    const/16 v0, 0x2e

    if-ne p3, v0, :cond_c

    .line 174
    array-length p2, p2

    array-length p3, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPX\u2192FIT ok: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WebBridge"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 173
    :cond_c
    new-instance p2, Ljava/lang/Exception;

    array-length p1, p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u8f6c\u6362\u51fa\u7684FIT\u65e0\u6548 (size="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

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

.method public final destroy()V
    .locals 2

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/util/WebBridge;->localWv:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jichi/ob/util/WebBridge;->outbaseWv:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/jichi/ob/util/WebBridge;->localWv:Landroid/webkit/WebView;

    .line 287
    iput-object v0, p0, Lcom/jichi/ob/util/WebBridge;->outbaseWv:Landroid/webkit/WebView;

    .line 288
    iget-object v0, p0, Lcom/jichi/ob/util/WebBridge;->localReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 289
    iget-object v0, p0, Lcom/jichi/ob/util/WebBridge;->outbaseReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final initLocal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/jichi/ob/util/WebBridge$initLocal$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jichi/ob/util/WebBridge$initLocal$1;

    iget v1, v0, Lcom/jichi/ob/util/WebBridge$initLocal$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/jichi/ob/util/WebBridge$initLocal$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/jichi/ob/util/WebBridge$initLocal$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jichi/ob/util/WebBridge$initLocal$1;

    invoke-direct {v0, p0, p1}, Lcom/jichi/ob/util/WebBridge$initLocal$1;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/jichi/ob/util/WebBridge$initLocal$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 73
    iget v2, v0, Lcom/jichi/ob/util/WebBridge$initLocal$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/jichi/ob/util/WebBridge;->localWv:Landroid/webkit/WebView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/jichi/ob/util/WebBridge;->localReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 75
    :cond_4
    iget-object p1, p0, Lcom/jichi/ob/util/WebBridge;->localWv:Landroid/webkit/WebView;

    if-nez p1, :cond_5

    .line 76
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/jichi/ob/util/WebBridge$initLocal$2;

    invoke-direct {v2, p0, v3}, Lcom/jichi/ob/util/WebBridge$initLocal$2;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput v5, v0, Lcom/jichi/ob/util/WebBridge$initLocal$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    .line 89
    :cond_5
    :goto_1
    new-instance p1, Lcom/jichi/ob/util/WebBridge$initLocal$3;

    invoke-direct {p1, p0, v3}, Lcom/jichi/ob/util/WebBridge$initLocal$3;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput v4, v0, Lcom/jichi/ob/util/WebBridge$initLocal$1;->label:I

    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    .line 97
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final initOutbasePage(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/jichi/ob/util/WebBridge$initOutbasePage$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$1;

    iget v1, v0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$1;

    invoke-direct {v0, p0, p1}, Lcom/jichi/ob/util/WebBridge$initOutbasePage$1;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 181
    iget v2, v0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 182
    iget-object p1, p0, Lcom/jichi/ob/util/WebBridge;->outbaseWv:Landroid/webkit/WebView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/jichi/ob/util/WebBridge;->outbaseReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 183
    :cond_4
    iget-object p1, p0, Lcom/jichi/ob/util/WebBridge;->outbaseWv:Landroid/webkit/WebView;

    if-nez p1, :cond_5

    .line 184
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/jichi/ob/util/WebBridge$initOutbasePage$2;

    invoke-direct {v2, p0, v3}, Lcom/jichi/ob/util/WebBridge$initOutbasePage$2;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput v5, v0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    .line 204
    :cond_5
    :goto_1
    new-instance p1, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;

    invoke-direct {p1, p0, v3}, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput v4, v0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$1;->label:I

    const-wide/16 v2, 0x7530

    invoke-static {v2, v3, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    .line 217
    :cond_6
    :goto_3
    const-string p1, "WebBridge"

    const-string v0, "outbase page bridge ready"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final uploadViaOutbasePage(Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[BZ",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;

    iget v3, v2, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;

    invoke-direct {v2, p0, v0}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v2

    iget-object v0, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 221
    iget v2, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->label:I

    const/4 v10, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v10, :cond_1

    iget v2, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->I$0:I

    iget-boolean v2, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->Z$0:Z

    iget-object v2, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$2:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v2, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v2, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->I$0:I

    iget-boolean v3, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->Z$0:Z

    iget-object v4, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$2:Ljava/lang/Object;

    check-cast v5, [B

    iget-object v6, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v6

    move v6, v3

    move-object v3, v11

    move-object v11, v5

    move v5, v2

    :goto_1
    move-object v2, v7

    goto/16 :goto_4

    :cond_3
    iget-boolean v2, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->Z$0:Z

    iget-object v4, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$2:Ljava/lang/Object;

    check-cast v5, [B

    iget-object v6, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-boolean v2, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->Z$0:Z

    iget-object v5, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$2:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v7, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v11, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v0, v2

    move-object v2, v7

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 223
    iput-object p1, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$0:Ljava/lang/Object;

    iput-object p2, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$1:Ljava/lang/Object;

    move-object/from16 v6, p3

    iput-object v6, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$2:Ljava/lang/Object;

    move-object/from16 v7, p5

    iput-object v7, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$3:Ljava/lang/Object;

    move/from16 v11, p4

    iput-boolean v11, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->Z$0:Z

    iput v5, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->label:I

    invoke-virtual {p0, v8}, Lcom/jichi/ob/util/WebBridge;->initOutbasePage(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_6

    goto/16 :goto_5

    :cond_6
    move-object v2, p2

    move-object v5, v7

    move v0, v11

    move-object v11, p1

    .line 224
    :goto_2
    iget-object v7, p0, Lcom/jichi/ob/util/WebBridge;->outbaseWv:Landroid/webkit/WebView;

    iput-object v11, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$0:Ljava/lang/Object;

    iput-object v2, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$2:Ljava/lang/Object;

    iput-object v5, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$3:Ljava/lang/Object;

    iput-boolean v0, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->Z$0:Z

    iput v4, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->label:I

    const-string/jumbo v4, "window.__upInject"

    invoke-direct {p0, v7, v6, v4, v8}, Lcom/jichi/ob/util/WebBridge;->injectChunks(Landroid/webkit/WebView;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_7

    goto/16 :goto_5

    :cond_7
    move-object v7, v2

    move v2, v0

    move-object v0, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v11

    :goto_3
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 225
    iget-object v11, p0, Lcom/jichi/ob/util/WebBridge;->outbaseWv:Landroid/webkit/WebView;

    iput-object v7, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$0:Ljava/lang/Object;

    iput-object v6, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$1:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$2:Ljava/lang/Object;

    iput-object v4, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$3:Ljava/lang/Object;

    iput-boolean v2, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->Z$0:Z

    iput v0, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->I$0:I

    iput v3, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->label:I

    const-string/jumbo v3, "window.__upResult = null"

    invoke-direct {p0, v11, v3, v8}, Lcom/jichi/ob/util/WebBridge;->evalOn(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_8

    goto :goto_5

    :cond_8
    move-object v11, v5

    move-object v3, v6

    move v5, v0

    move v6, v2

    goto/16 :goto_1

    .line 226
    :goto_4
    new-instance v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;-><init>(Lcom/jichi/ob/util/WebBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$1:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->L$3:Ljava/lang/Object;

    iput-boolean v6, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->Z$0:Z

    iput v5, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->I$0:I

    iput v10, v8, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->label:I

    const-wide/32 v1, 0x2bf20

    invoke-static {v1, v2, v0, v8}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_9

    :goto_5
    return-object v9

    :cond_9
    return-object v0
.end method

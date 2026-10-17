.class final Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebBridge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/util/WebBridge;->initOutbasePage(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.jichi.ob.util.WebBridge$initOutbasePage$3"
    f = "WebBridge.kt"
    i = {
        0x0,
        0x1,
        0x2
    }
    l = {
        0xcf,
        0xd1,
        0xd4
    }
    m = "invokeSuspend"
    n = {
        "injected",
        "injected",
        "injected"
    }
    s = {
        "I$0",
        "I$0",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/util/WebBridge;


# direct methods
.method constructor <init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/util/WebBridge;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->this$0:Lcom/jichi/ob/util/WebBridge;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;

    iget-object v0, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-direct {p1, v0, p2}, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 204
    iget v1, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 206
    :goto_0
    iget-object v1, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-static {v1}, Lcom/jichi/ob/util/WebBridge;->access$getOutbaseReady$p(Lcom/jichi/ob/util/WebBridge;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_9

    .line 207
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput p1, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->I$0:I

    iput v4, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->label:I

    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, p1

    :goto_1
    if-nez v1, :cond_7

    .line 209
    iget-object p1, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-static {p1}, Lcom/jichi/ob/util/WebBridge;->access$getOutbaseWv$p(Lcom/jichi/ob/util/WebBridge;)Landroid/webkit/WebView;

    move-result-object v5

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v6, "\nwindow.__upChunks = [];\nwindow.__upInject = function(idx, b64) { window.__upChunks[idx] = b64; return \'ok\'; };\nwindow.__upRun = function(url, fileName, count, withSid, sid) {\n  try {\n    var b64 = window.__upChunks.slice(0, count).join(\'\');\n    window.__upChunks = [];\n    var bin = atob(b64);\n    var bytes = new Uint8Array(bin.length);\n    for (var i = 0; i < bin.length; i++) bytes[i] = bin.charCodeAt(i);\n    var blob = new Blob([bytes], { type: \'application/octet-stream\' });\n    var fd = new FormData();\n    fd.append(\'file\', blob, fileName);\n    var opt = { method: \'POST\', credentials: \'include\', body: fd };\n    if (withSid) { opt.headers = { \'Sessionid\': sid }; }\n    fetch(url, opt).then(function(r) {\n      return r.text().then(function(t) { window.__upResult = { status: r.status, body: t.substring(0, 500) }; });\n    }).catch(function(e) {\n      window.__upResult = { status: -1, body: String(e && e.message || e) };\n    });\n    return \'started\';\n  } catch (e) { return \'err:\' + e; }\n};\nwindow.__upResult = null;\n"

    const-string v7, "\n"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; \'injected\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v1, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->I$0:I

    iput v3, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->label:I

    invoke-static {p1, v5, v6, v7}, Lcom/jichi/ob/util/WebBridge;->access$evalOn(Lcom/jichi/ob/util/WebBridge;Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_3

    .line 204
    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/String;

    .line 210
    const-string v5, "injected"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v4

    goto :goto_0

    :cond_6
    move p1, v1

    goto :goto_0

    .line 212
    :cond_7
    iget-object p1, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-static {p1}, Lcom/jichi/ob/util/WebBridge;->access$getOutbaseWv$p(Lcom/jichi/ob/util/WebBridge;)Landroid/webkit/WebView;

    move-result-object v5

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v1, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->I$0:I

    iput v2, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->label:I

    const-string/jumbo v7, "typeof window.__upRun === \'function\' ? \'ready\' : \'no\'"

    invoke-static {p1, v5, v7, v6}, Lcom/jichi/ob/util/WebBridge;->access$evalOn(Lcom/jichi/ob/util/WebBridge;Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    :goto_3
    return-object v0

    .line 204
    :cond_8
    :goto_4
    check-cast p1, Ljava/lang/String;

    .line 213
    const-string v5, "ready"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/jichi/ob/util/WebBridge$initOutbasePage$3;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-static {p1}, Lcom/jichi/ob/util/WebBridge;->access$getOutbaseReady$p(Lcom/jichi/ob/util/WebBridge;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 216
    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

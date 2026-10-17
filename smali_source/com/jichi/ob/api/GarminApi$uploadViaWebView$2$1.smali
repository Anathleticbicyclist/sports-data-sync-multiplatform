.class final Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GarminApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGarminApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$uploadViaWebView$2$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1768:1\n314#2,11:1769\n*S KotlinDebug\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$uploadViaWebView$2$1\n*L\n1079#1:1769,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.api.GarminApi$uploadViaWebView$2$1"
    f = "GarminApi.kt"
    i = {
        0x0
    }
    l = {
        0x6e9
    }
    m = "invokeSuspend"
    n = {
        "$i$f$suspendCancellableCoroutine"
    }
    s = {
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $base64:Ljava/lang/String;

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $headersJson:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;

.field final synthetic $wv:Landroid/webkit/WebView;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/webkit/WebView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$base64:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$headersJson:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$wv:Landroid/webkit/WebView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$base64:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$headersJson:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$wv:Landroid/webkit/WebView;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1078
    iget v1, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->L$4:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1079
    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$base64:Ljava/lang/String;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$headersJson:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->$wv:Landroid/webkit/WebView;

    .line 1769
    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->L$3:Ljava/lang/Object;

    iput-object v5, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->L$4:Ljava/lang/Object;

    const/4 v6, 0x0

    iput v6, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->I$0:I

    iput v2, p0, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1;->label:I

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 1770
    new-instance v7, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v6}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 1776
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 1777
    move-object v2, v7

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    .line 1093
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\n                        (function() {\n                            try {\n                                window.__g_done = false;\n                                window.__g_result = undefined;\n                                window.__g_error = undefined;\n                                window.__g_status = 0;\n                                var binary = atob(\'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v8, "\');\n                                var bytes = new Uint8Array(binary.length);\n                                for(var i=0;i<binary.length;i++) bytes[i]=binary.charCodeAt(i);\n                                var blob = new Blob([bytes], {type:\'application/octet-stream\'});\n                                var form = new FormData();\n                                form.append(\'file\', blob, \'"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\');\n                                fetch(\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\', { method:\'POST\', credentials:\'include\', headers:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", body:form }).then(function(r) {\n                                    window.__g_status = r.status;\n                                    return r.text();\n                                }).then(function(t) {\n                                    window.__g_result = t;\n                                    window.__g_done = true;\n                                }).catch(function(e) {\n                                    window.__g_error = e.toString();\n                                    window.__g_done = true;\n                                });\n                            } catch(e) {\n                                window.__g_error = e.toString();\n                                window.__g_done = true;\n                            }\n                        })();\n                    "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1108
    invoke-static {p1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1109
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 1110
    new-instance v3, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1$1$checkResult$1;

    invoke-direct {v3, v1, v5, v2}, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1$1$checkResult$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroid/webkit/WebView;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 1128
    new-instance v1, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1$1$1;

    invoke-direct {v1, v3}, Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1$1$1;-><init>(Lcom/jichi/ob/api/GarminApi$uploadViaWebView$2$1$1$checkResult$1;)V

    check-cast v1, Landroid/webkit/ValueCallback;

    invoke-virtual {v5, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1778
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 1769
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    return-object p1
.end method

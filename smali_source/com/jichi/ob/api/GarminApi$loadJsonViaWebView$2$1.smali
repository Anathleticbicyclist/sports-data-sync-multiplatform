.class final Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GarminApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nGarminApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1768:1\n314#2,11:1769\n*S KotlinDebug\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1\n*L\n988#1:1769,11\n*E\n"
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
    c = "com.jichi.ob.api.GarminApi$loadJsonViaWebView$2$1"
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
.field final synthetic $timeoutMs:J

.field final synthetic $url:Ljava/lang/String;

.field final synthetic $wv:Landroid/webkit/WebView;

.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->$wv:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->$url:Ljava/lang/String;

    iput-wide p3, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->$timeoutMs:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->$wv:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->$url:Ljava/lang/String;

    iget-wide v3, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->$timeoutMs:J

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;-><init>(Landroid/webkit/WebView;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 987
    iget v1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 988
    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->$wv:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->$url:Ljava/lang/String;

    iget-wide v3, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->$timeoutMs:J

    .line 1769
    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->L$1:Ljava/lang/Object;

    iput-wide v3, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->J$0:J

    const/4 v5, 0x0

    iput v5, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->I$0:I

    iput v2, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->label:I

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 1770
    new-instance v6, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 1776
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 1777
    move-object v2, v6

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    .line 989
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 990
    new-instance v8, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1;

    invoke-direct {v8, v7, p1, v2}, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v8, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1008
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1009
    new-instance v1, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$2;

    invoke-direct {v1, v7, v2}, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v1, Ljava/lang/Runnable;

    const/16 v2, 0x3e8

    int-to-long v7, v2

    sub-long/2addr v3, v7

    invoke-virtual {p1, v1, v3, v4}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1778
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 1769
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    return-object p1
.end method

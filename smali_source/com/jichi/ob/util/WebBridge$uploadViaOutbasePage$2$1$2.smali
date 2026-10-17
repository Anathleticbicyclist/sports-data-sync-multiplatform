.class final Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebBridge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.jichi.ob.util.WebBridge$uploadViaOutbasePage$2$1$2"
    f = "WebBridge.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0xf4,
        0xf6
    }
    m = "invokeSuspend"
    n = {
        "waited",
        "waited"
    }
    s = {
        "J$0",
        "J$0"
    }
.end annotation


# instance fields
.field J$0:J

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
            "Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->this$0:Lcom/jichi/ob/util/WebBridge;

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

    new-instance p1, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;

    iget-object v0, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-direct {p1, v0, p2}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 241
    iget v1, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v4, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-wide v4, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    :cond_3
    const-wide/32 v6, 0x2ab98

    cmp-long p1, v4, v6

    if-gez p1, :cond_6

    .line 244
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-wide v4, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->J$0:J

    iput v3, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->label:I

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/16 p1, 0x1f4

    int-to-long v6, p1

    add-long/2addr v4, v6

    .line 246
    iget-object p1, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-static {p1}, Lcom/jichi/ob/util/WebBridge;->access$getOutbaseWv$p(Lcom/jichi/ob/util/WebBridge;)Landroid/webkit/WebView;

    move-result-object v1

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-wide v4, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->J$0:J

    iput v2, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->label:I

    const-string/jumbo v7, "window.__upResult ? JSON.stringify(window.__upResult) : null"

    invoke-static {p1, v1, v7, v6}, Lcom/jichi/ob/util/WebBridge;->access$evalOn(Lcom/jichi/ob/util/WebBridge;Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_1
    return-object v0

    .line 241
    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 249
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-static {p1}, Lcom/jichi/ob/util/WebBridge;->access$getUploadCont$p(Lcom/jichi/ob/util/WebBridge;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 252
    iget-object v1, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;->this$0:Lcom/jichi/ob/util/WebBridge;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jichi/ob/util/WebBridge;->access$setUploadCont$p(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    .line 253
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Pair;

    const-string/jumbo v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "body"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :catch_0
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

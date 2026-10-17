.class final Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SuuntoApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/SuuntoApi;->getUsableTokenOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.SuuntoApi$getUsableTokenOrNull$2"
    f = "SuuntoApi.kt"
    i = {}
    l = {
        0xe3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $accessToken:Ljava/lang/String;

.field final synthetic $clientId:Ljava/lang/String;

.field final synthetic $clientSecret:Ljava/lang/String;

.field final synthetic $refreshToken:Ljava/lang/String;

.field final synthetic $subscriptionKey:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/SuuntoApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/SuuntoApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iput-object p2, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$clientId:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$clientSecret:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$subscriptionKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$accessToken:Ljava/lang/String;

    iput-object p6, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$refreshToken:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;

    iget-object v1, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v2, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$clientSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$subscriptionKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$accessToken:Ljava/lang/String;

    iget-object v6, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$refreshToken:Ljava/lang/String;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;-><init>(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 221
    iget v1, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 222
    iget-object p1, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v1, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$clientSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$subscriptionKey:Ljava/lang/String;

    invoke-static {p1, v1, v3, v4}, Lcom/jichi/ob/api/SuuntoApi;->access$cacheCreds(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$accessToken:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    invoke-static {p1}, Lcom/jichi/ob/api/SuuntoApi;->access$getLastExpiresAt$p(Lcom/jichi/ob/api/SuuntoApi;)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$accessToken:Ljava/lang/String;

    return-object p1

    .line 226
    :cond_2
    iget-object p1, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$refreshToken:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 227
    :cond_3
    iget-object v3, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v4, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$refreshToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$clientId:Ljava/lang/String;

    iget-object v6, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$clientSecret:Ljava/lang/String;

    iget-object v7, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->$subscriptionKey:Ljava/lang/String;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/jichi/ob/api/SuuntoApi$getUsableTokenOrNull$2;->label:I

    invoke-virtual/range {v3 .. v8}, Lcom/jichi/ob/api/SuuntoApi;->refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 221
    :cond_4
    :goto_0
    check-cast p1, Lcom/jichi/ob/api/SuuntoApi$LoginResult;

    if-eqz p1, :cond_5

    .line 228
    invoke-virtual {p1}, Lcom/jichi/ob/api/SuuntoApi$LoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

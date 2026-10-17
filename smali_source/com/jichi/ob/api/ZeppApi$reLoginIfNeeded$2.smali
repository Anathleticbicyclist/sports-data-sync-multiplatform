.class final Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ZeppApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/ZeppApi;->reLoginIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/jichi/ob/api/ZeppApi$LoginResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/jichi/ob/api/ZeppApi$LoginResult;",
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
    c = "com.jichi.ob.api.ZeppApi$reLoginIfNeeded$2"
    f = "ZeppApi.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x12f
    }
    m = "invokeSuspend"
    n = {
        "a",
        "p"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/ZeppApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/ZeppApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/ZeppApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

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

    new-instance p1, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;

    iget-object v0, p0, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    invoke-direct {p1, v0, p2}, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;-><init>(Lcom/jichi/ob/api/ZeppApi;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/jichi/ob/api/ZeppApi$LoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 300
    iget v1, p0, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->L$0:Ljava/lang/Object;

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

    .line 301
    iget-object p1, p0, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    invoke-static {p1}, Lcom/jichi/ob/api/ZeppApi;->access$getLastAccount$p(Lcom/jichi/ob/api/ZeppApi;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    return-object v1

    .line 302
    :cond_2
    iget-object v3, p0, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    invoke-static {v3}, Lcom/jichi/ob/api/ZeppApi;->access$getLastPassword$p(Lcom/jichi/ob/api/ZeppApi;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v1

    .line 303
    :cond_3
    iget-object v1, p0, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/jichi/ob/api/ZeppApi$reLoginIfNeeded$2;->label:I

    invoke-virtual {v1, p1, v3, v4}, Lcom/jichi/ob/api/ZeppApi;->login(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    return-object p1
.end method

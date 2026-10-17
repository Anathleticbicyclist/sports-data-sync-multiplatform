.class final Lcom/jichi/ob/api/CodoonApi$validateToken$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CodoonApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/CodoonApi;->validateToken(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCodoonApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CodoonApi.kt\ncom/jichi/ob/api/CodoonApi$validateToken$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,415:1\n1#2:416\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.api.CodoonApi$validateToken$2"
    f = "CodoonApi.kt"
    i = {
        0x0
    }
    l = {
        0xc8
    }
    m = "invokeSuspend"
    n = {
        "safeUid"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $token:Ljava/lang/String;

.field final synthetic $uid:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/CodoonApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/CodoonApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/CodoonApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/CodoonApi$validateToken$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->$token:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/jichi/ob/api/CodoonApi$validateToken$2;

    iget-object v0, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->$token:Ljava/lang/String;

    iget-object v1, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->$uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/api/CodoonApi$validateToken$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/CodoonApi;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/CodoonApi$validateToken$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 195
    iget v1, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 196
    iget-object p1, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->$token:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 199
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->$uid:Ljava/lang/String;

    if-eqz p1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    invoke-static {p1}, Lcom/jichi/ob/api/CodoonApi;->access$getLastUserId$p(Lcom/jichi/ob/api/CodoonApi;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, ""

    .line 200
    :cond_5
    iget-object v1, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    iget-object v4, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->$token:Ljava/lang/String;

    const-string v5, "/api/get_old_route_log"

    const/4 v6, 0x3

    new-array v6, v6, [Lkotlin/Pair;

    const-string v7, "limit"

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "page"

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v3

    const-string/jumbo v7, "user_id"

    invoke-static {v7, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/jichi/ob/api/CodoonApi$validateToken$2;->label:I

    invoke-static {v1, v4, v5, v6, v7}, Lcom/jichi/ob/api/CodoonApi;->access$postJson(Lcom/jichi/ob/api/CodoonApi;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    check-cast p1, Lcom/jichi/ob/api/CodoonApi$PostResp;

    invoke-virtual {p1}, Lcom/jichi/ob/api/CodoonApi$PostResp;->component1()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_7

    move v2, v3

    goto :goto_2

    :catch_0
    move-exception p1

    .line 203
    const-string v0, "Codoon validateToken error"

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "CodoonApi"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    :cond_7
    :goto_2
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

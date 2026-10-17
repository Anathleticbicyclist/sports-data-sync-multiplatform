.class final Lcom/jichi/ob/api/CodoonApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CodoonApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/CodoonApi;->getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lcom/jichi/ob/model/ActivityRecord;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCodoonApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CodoonApi.kt\ncom/jichi/ob/api/CodoonApi$getActivities$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,415:1\n1#2:416\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
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
    c = "com.jichi.ob.api.CodoonApi$getActivities$2"
    f = "CodoonApi.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x2
    }
    l = {
        0xfa,
        0xfd,
        0xfe
    }
    m = "invokeSuspend"
    n = {
        "safeUid",
        "e",
        "e",
        "rel"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $skip:I

.field final synthetic $token:Ljava/lang/String;

.field final synthetic $userId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/CodoonApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/jichi/ob/api/CodoonApi;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/CodoonApi;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/CodoonApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    iput-object p3, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$token:Ljava/lang/String;

    iput p4, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$skip:I

    iput p5, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$limit:I

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

    new-instance v0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;

    iget-object v1, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    iget-object v3, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$token:Ljava/lang/String;

    iget v4, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$skip:I

    iget v5, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$limit:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/CodoonApi$getActivities$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/CodoonApi;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/CodoonApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 246
    iget v0, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/api/CodoonApi$LoginResult;

    iget-object v0, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 249
    :try_start_1
    iget-object p1, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$userId:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    invoke-static {p1}, Lcom/jichi/ob/api/CodoonApi;->access$getLastUserId$p(Lcom/jichi/ob/api/CodoonApi;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, ""

    :cond_5
    move-object v8, p1

    .line 250
    iget-object v6, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    iget-object v7, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$token:Ljava/lang/String;

    iget v9, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$skip:I

    iget v10, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$limit:I

    move-object v11, p0

    check-cast v11, Lkotlin/coroutines/Continuation;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->label:I

    invoke-static/range {v6 .. v11}, Lcom/jichi/ob/api/CodoonApi;->access$fetchActivities(Lcom/jichi/ob/api/CodoonApi;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_1
    check-cast p1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    check-cast p1, Ljava/lang/CharSequence;

    const-string v6, "401"

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {p1, v6, v7, v4, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-ne p1, v5, :cond_a

    .line 253
    iget-object p1, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->label:I

    invoke-virtual {p1, v2}, Lcom/jichi/ob/api/CodoonApi;->reLoginIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_3

    .line 246
    :cond_7
    :goto_2
    check-cast p1, Lcom/jichi/ob/api/CodoonApi$LoginResult;

    if-eqz p1, :cond_9

    .line 254
    iget-object v4, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    invoke-virtual {p1}, Lcom/jichi/ob/api/CodoonApi$LoginResult;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jichi/ob/api/CodoonApi$LoginResult;->getUserId()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$skip:I

    iget v8, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->$limit:I

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/jichi/ob/api/CodoonApi$getActivities$2;->label:I

    invoke-static/range {v4 .. v9}, Lcom/jichi/ob/api/CodoonApi;->access$fetchActivities(Lcom/jichi/ob/api/CodoonApi;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    :goto_4
    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_9
    throw v0

    .line 255
    :cond_a
    throw v0
.end method

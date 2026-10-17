.class final Lcom/jichi/ob/api/GarminApi$uploadActivity$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GarminApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi;->uploadActivity(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.GarminApi$uploadActivity$2"
    f = "GarminApi.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x600,
        0x606
    }
    m = "invokeSuspend"
    n = {
        "lastErr",
        "attempt",
        "$i$a$-repeat-GarminApi$uploadActivity$2$1",
        "lastErr",
        "r",
        "attempt",
        "$i$a$-repeat-GarminApi$uploadActivity$2$1"
    }
    s = {
        "L$0",
        "I$2",
        "I$3",
        "L$0",
        "L$6",
        "I$2",
        "I$3"
    }
.end annotation


# instance fields
.field final synthetic $cred:Ljava/lang/String;

.field final synthetic $data:[B

.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field final synthetic $fileName:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/GarminApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminApi;",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminApi$uploadActivity$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->$cred:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->$data:[B

    iput-object p5, p0, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->$fileName:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v3, p0, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->$cred:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->$data:[B

    iget-object v5, p0, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->$fileName:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;-><init>(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v5, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 1533
    iget v0, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->label:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v10, :cond_1

    if-ne v0, v9, :cond_0

    iget v0, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$1:I

    iget v1, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$0:I

    iget-object v2, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$4:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v11, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$2:Ljava/lang/Object;

    check-cast v11, Lcom/jichi/ob/model/DataSource;

    iget-object v12, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$1:Ljava/lang/Object;

    check-cast v12, Lcom/jichi/ob/api/GarminApi;

    iget-object v13, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v6

    move/from16 v16, v10

    move-object v10, v13

    move-object v13, v11

    move-object v11, v3

    move v3, v1

    move v1, v9

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$3:I

    iget v1, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$2:I

    iget v2, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$1:I

    iget v3, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$0:I

    iget-object v4, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v11, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$4:Ljava/lang/Object;

    check-cast v11, [B

    iget-object v12, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/jichi/ob/model/DataSource;

    iget-object v14, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/jichi/ob/api/GarminApi;

    iget-object v15, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$0:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v16, v1

    move v1, v0

    move v0, v2

    move-object v2, v4

    move-object v4, v12

    move/from16 v12, v16

    move/from16 v16, v10

    move-object v10, v15

    move-object v15, v14

    move-object/from16 v14, p1

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1534
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 1535
    iget-object v1, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v3, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->$cred:Ljava/lang/String;

    iget-object v4, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->$data:[B

    iget-object v11, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->$fileName:Ljava/lang/String;

    const/4 v12, 0x3

    move-object v13, v11

    move-object v11, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v13

    move v13, v12

    move v12, v8

    :goto_0
    if-ge v12, v13, :cond_8

    .line 1536
    iput-object v11, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$0:Ljava/lang/Object;

    iput-object v0, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$1:Ljava/lang/Object;

    iput-object v1, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$2:Ljava/lang/Object;

    iput-object v2, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$3:Ljava/lang/Object;

    iput-object v3, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$4:Ljava/lang/Object;

    iput-object v4, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$5:Ljava/lang/Object;

    iput-object v7, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$6:Ljava/lang/Object;

    iput v13, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$0:I

    iput v12, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$1:I

    iput v12, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$2:I

    iput v8, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$3:I

    iput v10, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->label:I

    invoke-static/range {v0 .. v5}, Lcom/jichi/ob/api/GarminApi;->access$uploadActivityOnce(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v6, :cond_3

    move-object v7, v6

    goto/16 :goto_2

    :cond_3
    move-object v15, v4

    move-object v4, v2

    move-object v2, v15

    move-object v15, v0

    move/from16 v16, v10

    move-object v10, v11

    move v0, v12

    move-object v11, v3

    move v3, v13

    move-object v13, v1

    move v1, v8

    .line 1533
    :goto_1
    check-cast v14, Ljava/lang/String;

    if-nez v14, :cond_4

    return-object v7

    :cond_4
    move-object/from16 v17, v6

    .line 1538
    const-string/jumbo v6, "\u4f73\u660e\u4e0a\u4f20\u5f02\u5e38(\u8fde\u63a5\u9519\u8bef)"

    invoke-static {v14, v6, v8, v9, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1539
    iput-object v14, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-ge v12, v9, :cond_6

    .line 1541
    sget-object v6, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    add-int/lit8 v7, v12, 0x1

    const/16 v8, 0x78

    invoke-static {v14, v8}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 p1, v14

    const-string/jumbo v14, "uploadActivity\u7b2c"

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\u6b21\u8fde\u63a5\u9519\u8bef\uff0c1\u79d2\u540e\u91cd\u8bd5: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1542
    iput-object v10, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$0:Ljava/lang/Object;

    iput-object v15, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$1:Ljava/lang/Object;

    iput-object v13, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$2:Ljava/lang/Object;

    iput-object v4, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$3:Ljava/lang/Object;

    iput-object v11, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$4:Ljava/lang/Object;

    iput-object v2, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$5:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->L$6:Ljava/lang/Object;

    iput v3, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$0:I

    iput v0, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$1:I

    iput v12, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$2:I

    iput v1, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->I$3:I

    const/4 v1, 0x2

    iput v1, v5, Lcom/jichi/ob/api/GarminApi$uploadActivity$2;->label:I

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7, v5}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v7, v17

    if-ne v6, v7, :cond_5

    :goto_2
    return-object v7

    :cond_5
    move-object v12, v15

    :goto_3
    move-object v15, v12

    :goto_4
    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    move v6, v3

    move-object v3, v11

    move-object v11, v10

    goto :goto_5

    :cond_6
    move v1, v9

    move-object/from16 v7, v17

    goto :goto_4

    :goto_5
    add-int/lit8 v12, v0, 0x1

    move v9, v1

    move-object v1, v13

    move-object v0, v15

    move/from16 v10, v16

    const/4 v8, 0x0

    move v13, v6

    move-object v6, v7

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 p1, v14

    return-object p1

    .line 1548
    :cond_8
    iget-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0
.end method

.class final Lcom/jichi/ob/api/GarminApi$downloadFit$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GarminApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi;->downloadFit(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "-[B>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.api.GarminApi$downloadFit$2"
    f = "GarminApi.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x588,
        0x58d
    }
    m = "invokeSuspend"
    n = {
        "attempt",
        "$i$a$-repeat-GarminApi$downloadFit$2$1",
        "e",
        "attempt",
        "$i$a$-repeat-GarminApi$downloadFit$2$1"
    }
    s = {
        "I$2",
        "I$3",
        "L$4",
        "I$2",
        "I$3"
    }
.end annotation


# instance fields
.field final synthetic $activityId:Ljava/lang/String;

.field final synthetic $cred:Ljava/lang/String;

.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/GarminApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminApi;",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminApi$downloadFit$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->$cred:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->$activityId:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/GarminApi$downloadFit$2;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v3, p0, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->$cred:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->$activityId:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/GarminApi$downloadFit$2;-><init>(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1413
    iget v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v6, :cond_1

    if-ne v0, v5, :cond_0

    iget v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$1:I

    iget v7, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$0:I

    iget-object v8, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$4:Ljava/lang/Object;

    check-cast v8, Ljava/io/IOException;

    iget-object v8, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$1:Ljava/lang/Object;

    check-cast v10, Lcom/jichi/ob/model/DataSource;

    iget-object v11, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/jichi/ob/api/GarminApi;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v4

    move v3, v5

    move/from16 v17, v6

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v7, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$3:I

    iget v8, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$2:I

    iget v9, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$1:I

    iget v10, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$0:I

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$3:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$2:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$1:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/jichi/ob/model/DataSource;

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$0:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/jichi/ob/api/GarminApi;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p1

    goto :goto_1

    :catch_0
    move-exception v0

    move/from16 v18, v9

    move v9, v7

    move v7, v10

    move v10, v8

    move/from16 v8, v18

    goto :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1414
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v7, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v8, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->$cred:Ljava/lang/String;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->$activityId:Ljava/lang/String;

    const/4 v10, 0x3

    move-object v14, v0

    move-object v13, v7

    move-object v12, v8

    move-object v11, v9

    move v8, v3

    :goto_0
    if-ge v8, v10, :cond_7

    .line 1416
    :try_start_1
    iput-object v14, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$3:Ljava/lang/Object;

    iput-object v4, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$4:Ljava/lang/Object;

    iput v10, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$0:I

    iput v8, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$1:I

    iput v8, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$2:I

    iput v3, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$3:I

    iput v6, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->label:I

    invoke-static {v14, v13, v12, v11, v1}, Lcom/jichi/ob/api/GarminApi;->access$downloadFitOnce(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    move v7, v3

    move v9, v8

    .line 1413
    :goto_1
    :try_start_2
    check-cast v0, [B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    return-object v4

    :catch_1
    move-exception v0

    move v9, v3

    move v7, v10

    move v10, v8

    .line 1420
    :goto_2
    sget-object v15, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    add-int/lit8 v3, v10, 0x1

    move-object/from16 v16, v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move/from16 v17, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "downloadFit\u7b2c"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\u6b21\u8fde\u63a5\u9519\u8bef\uff0c1\u79d2\u540e\u91cd\u8bd5: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    const/4 v3, 0x2

    if-ge v10, v3, :cond_6

    .line 1421
    iput-object v14, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$3:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->L$4:Ljava/lang/Object;

    iput v7, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$0:I

    iput v8, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$1:I

    iput v10, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$2:I

    iput v9, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->I$3:I

    iput v3, v1, Lcom/jichi/ob/api/GarminApi$downloadFit$2;->label:I

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    :goto_3
    return-object v2

    :cond_5
    move v0, v8

    move-object v8, v11

    move-object v9, v12

    move-object v10, v13

    move-object v11, v14

    :goto_4
    move-object v12, v9

    move-object v13, v10

    move-object v14, v11

    move-object v11, v8

    move v8, v0

    :cond_6
    move v10, v7

    add-int/lit8 v8, v8, 0x1

    move v5, v3

    move-object/from16 v4, v16

    move/from16 v6, v17

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v16, v4

    return-object v16
.end method

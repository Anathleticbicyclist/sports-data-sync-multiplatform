.class final Lcom/jichi/ob/MainActivity$repairIgpTimes$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->repairIgpTimes$app_devRelease()V
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
    c = "com.jichi.ob.MainActivity$repairIgpTimes$1"
    f = "MainActivity.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0xf14,
        0xf1d,
        0xf20
    }
    m = "invokeSuspend"
    n = {
        "cache",
        "bad",
        "rec",
        "fixed",
        "i",
        "cache",
        "bad",
        "rec",
        "fixed",
        "i",
        "cache",
        "bad",
        "fixed"
    }
    s = {
        "L$0",
        "L$1",
        "L$3",
        "I$0",
        "I$2",
        "L$0",
        "L$1",
        "L$3",
        "I$0",
        "I$2",
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $token:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method constructor <init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/MainActivity;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$repairIgpTimes$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->$token:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->$token:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;-><init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v1, p0

    const-string/jumbo v0, "\ud83d\udd27 \u4fee\u590d iGPSPORT \u7f3a\u5931\u65f6\u95f4: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 3847
    iget v3, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->label:I

    const-string v4, " \u6761"

    const-string v5, "igpsportApi"

    const-string v6, "JichiOB"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v9, :cond_2

    if-eq v3, v8, :cond_1

    if-ne v3, v7, :cond_0

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/util/ActivityCache;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    goto/16 :goto_b

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->I$1:I

    iget v3, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->I$0:I

    iget-object v11, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lcom/jichi/ob/util/ActivityCache$Entry;

    iget-object v11, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/jichi/ob/util/ActivityCache;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-object v14, v11

    move-object v11, v13

    :goto_0
    move-object v15, v12

    move v12, v3

    move v3, v0

    goto/16 :goto_9

    :cond_2
    iget v3, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->I$2:I

    iget v11, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->I$1:I

    iget v12, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->I$0:I

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$3:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/jichi/ob/util/ActivityCache$Entry;

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$2:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/util/Iterator;

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$1:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/util/List;

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$0:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/jichi/ob/util/ActivityCache;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v0, p1

    move-object/from16 v7, v16

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v7, v16

    goto/16 :goto_7

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3849
    :try_start_3
    sget-object v3, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    iget-object v11, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->this$0:Lcom/jichi/ob/MainActivity;

    check-cast v11, Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/jichi/ob/util/ActivityCache$Companion;->get(Landroid/content/Context;)Lcom/jichi/ob/util/ActivityCache;

    move-result-object v3

    .line 3850
    sget-object v11, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v11}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x64

    invoke-virtual {v3, v11, v12}, Lcom/jichi/ob/util/ActivityCache;->queryBadTime(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 3851
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3852
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->this$0:Lcom/jichi/ob/MainActivity;

    const-string/jumbo v2, "\u2705 iGPSPORT \u65e0\u7f3a\u5931\u65f6\u95f4\u8bb0\u5f55"

    invoke-static {v0, v2}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3853
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 3855
    :cond_4
    iget-object v12, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " \u6761\uff08\u4e0b\u8f7d FIT \u89e3\u6790\uff0c\u4e32\u884c\uff09..."

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3857
    move-object v0, v11

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v12, 0x0

    move-object v14, v0

    move-object v15, v11

    move-object v11, v3

    move v3, v12

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v13, v3, 0x1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/jichi/ob/util/ActivityCache$Entry;

    .line 3858
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v0}, Lcom/jichi/ob/MainActivity;->isFinishing()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-nez v0, :cond_9

    .line 3860
    :try_start_4
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v0}, Lcom/jichi/ob/MainActivity;->access$getIgpsportApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/IgpsportApi;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v17, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v17, v0

    :goto_2
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->$token:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/jichi/ob/util/ActivityCache$Entry;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v7}, Lcom/jichi/ob/util/ActivityCache$Entry;->getExtra()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v22, v1

    check-cast v22, Lkotlin/coroutines/Continuation;

    iput-object v11, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$0:Ljava/lang/Object;

    iput-object v15, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$1:Ljava/lang/Object;

    iput-object v14, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$2:Ljava/lang/Object;

    iput-object v7, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$3:Ljava/lang/Object;

    iput v12, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->I$0:I

    iput v13, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->I$1:I

    iput v3, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->I$2:I

    iput v9, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->label:I

    const/16 v21, 0x0

    const/16 v23, 0x8

    const/16 v24, 0x0

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v24}, Lcom/jichi/ob/api/IgpsportApi;->downloadFitFile$default(Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-ne v0, v2, :cond_6

    goto/16 :goto_a

    :cond_6
    move/from16 v25, v13

    move-object v13, v7

    move-object v7, v11

    move/from16 v11, v25

    .line 3847
    :goto_3
    :try_start_5
    check-cast v0, [B

    .line 3861
    iget-object v9, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v9}, Lcom/jichi/ob/MainActivity;->access$getIgpsportApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/IgpsportApi;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-nez v9, :cond_7

    :try_start_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v9, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_7
    :goto_4
    move/from16 p1, v11

    :try_start_7
    invoke-virtual {v9, v0}, Lcom/jichi/ob/api/IgpsportApi;->parseFitStartTimeMs([B)J

    move-result-wide v10

    const-wide/16 v19, 0x0

    cmp-long v0, v10, v19

    if-lez v0, :cond_8

    .line 3863
    sget-object v0, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lcom/jichi/ob/util/ActivityCache$Entry;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v0, v9, v10, v11}, Lcom/jichi/ob/util/ActivityCache;->setStartTime(Ljava/lang/String;Ljava/lang/String;J)V

    add-int/lit8 v12, v12, 0x1

    .line 3865
    rem-int/lit8 v0, v12, 0xa

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u2705 \u5df2\u4fee\u590d "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_8
    move/from16 v0, p1

    move-object v9, v7

    :goto_5
    move-object v11, v14

    :goto_6
    move v7, v3

    move v3, v12

    move-object v12, v15

    goto :goto_8

    :catch_2
    move-exception v0

    move/from16 v11, p1

    goto :goto_7

    :catch_3
    move-exception v0

    move/from16 p1, v11

    goto :goto_7

    :catch_4
    move-exception v0

    move/from16 v25, v13

    move-object v13, v7

    move-object v7, v11

    move/from16 v11, v25

    .line 3867
    :goto_7
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "igp \u65f6\u95f4\u4fee\u590d\u5355\u6761\u5931\u8d25: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-object v9, v7

    move v0, v11

    goto :goto_5

    :cond_9
    move-object v9, v11

    move v0, v13

    move-object v11, v14

    move-object v13, v7

    goto :goto_6

    .line 3869
    :goto_8
    move-object v10, v1

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v9, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$2:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$3:Ljava/lang/Object;

    iput v3, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->I$0:I

    iput v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->I$1:I

    iput v7, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->I$2:I

    iput v8, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->label:I

    const-wide/16 v13, 0x12c

    invoke-static {v13, v14, v10}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_a

    goto :goto_a

    :cond_a
    move-object v14, v11

    move-object v11, v9

    goto/16 :goto_0

    :goto_9
    const/4 v7, 0x3

    const/4 v9, 0x1

    goto/16 :goto_1

    .line 3871
    :cond_b
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2705 iGPSPORT \u65f6\u95f4\u4fee\u590d\u5b8c\u6210: \u6210\u529f "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " / "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3872
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/jichi/ob/MainActivity$repairIgpTimes$1$1;

    iget-object v4, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->this$0:Lcom/jichi/ob/MainActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/jichi/ob/MainActivity$repairIgpTimes$1$1;-><init>(Lcom/jichi/ob/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$0:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$2:Ljava/lang/Object;

    iput-object v5, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->L$3:Ljava/lang/Object;

    iput v12, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->I$0:I

    const/4 v5, 0x3

    iput v5, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->label:I

    invoke-static {v0, v3, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    if-ne v0, v2, :cond_c

    :goto_a
    return-object v2

    :catch_5
    move-exception v0

    .line 3876
    const-string v2, "igp \u65f6\u95f4\u6279\u91cf\u4fee\u590d\u5931\u8d25"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v6, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3877
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$repairIgpTimes$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u274c iGPSPORT \u65f6\u95f4\u4fee\u590d\u5931\u8d25: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3879
    :cond_c
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.class final Lcom/jichi/ob/MainActivity$testDownload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->testDownload$app_devRelease()V
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
    c = "com.jichi.ob.MainActivity$testDownload$1"
    f = "MainActivity.kt"
    i = {
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0xee9,
        0xeed,
        0xef4
    }
    m = "invokeSuspend"
    n = {
        "activities",
        "act",
        "activities",
        "act",
        "data",
        "ext",
        "tName",
        "tPath"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5"
    }
.end annotation


# instance fields
.field final synthetic $source:Lcom/jichi/ob/model/DataSource;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method constructor <init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/MainActivity;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$testDownload$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$testDownload$1;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$testDownload$1;->$source:Lcom/jichi/ob/model/DataSource;

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

    new-instance p1, Lcom/jichi/ob/MainActivity$testDownload$1;

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$testDownload$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$testDownload$1;->$source:Lcom/jichi/ob/model/DataSource;

    invoke-direct {p1, v0, v1, p2}, Lcom/jichi/ob/MainActivity$testDownload$1;-><init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$testDownload$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$testDownload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$testDownload$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$testDownload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    const-string/jumbo v0, "\ud83d\udcc2 \u4fdd\u5b58\u8def\u5f84: "

    const-string/jumbo v2, "\u2705 \u6d4b\u8bd5\u4e0b\u8f7d\u6210\u529f! \u6587\u4ef6: "

    const-string/jumbo v3, "\u2b07\ufe0f \u4e0b\u8f7d: "

    const-string/jumbo v4, "test_"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 3815
    iget v6, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->label:I

    const-string v7, " ("

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v11, :cond_2

    if-eq v6, v10, :cond_1

    if-ne v6, v9, :cond_0

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$2:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v3, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v6, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v3

    move-object/from16 v3, p1

    goto/16 :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v6, p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3817
    :try_start_2
    iget-object v6, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v12, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->$source:Lcom/jichi/ob/model/DataSource;

    move-object v13, v1

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput v11, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->label:I

    invoke-static {v6, v12, v8, v11, v13}, Lcom/jichi/ob/MainActivity;->access$fetchActivities(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_4

    goto/16 :goto_3

    .line 3815
    :cond_4
    :goto_0
    check-cast v6, Ljava/util/List;

    .line 3818
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->this$0:Lcom/jichi/ob/MainActivity;

    const-string/jumbo v2, "\u274c \u672a\u83b7\u53d6\u5230\u6d3b\u52a8"

    invoke-static {v0, v2}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 3819
    :cond_5
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lcom/jichi/ob/model/ActivityRecord;

    .line 3820
    iget-object v8, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v15}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x14

    invoke-static {v12, v13}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "%.1f"

    invoke-virtual {v15}, Lcom/jichi/ob/model/ActivityRecord;->getDistance()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "format(...)"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "km)"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3821
    iget-object v12, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v13, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->$source:Lcom/jichi/ob/model/DataSource;

    move-object/from16 v17, v1

    check-cast v17, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$0:Ljava/lang/Object;

    iput-object v15, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$1:Ljava/lang/Object;

    iput v10, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->label:I

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0xa

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lcom/jichi/ob/MainActivity;->downloadActivity$default(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_6

    goto/16 :goto_3

    .line 3815
    :cond_6
    :goto_1
    check-cast v3, [B

    if-eqz v3, :cond_9

    .line 3822
    array-length v8, v3

    const/16 v10, 0x64

    if-ge v8, v10, :cond_7

    goto/16 :goto_4

    .line 3823
    :cond_7
    iget-object v8, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v8, v3}, Lcom/jichi/ob/MainActivity;->access$isFit(Lcom/jichi/ob/MainActivity;[B)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "fit"

    goto :goto_2

    :cond_8
    const-string v8, "gpx"

    .line 3824
    :goto_2
    sget-object v10, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    iget-object v11, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->$source:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v10, v11, v15, v8}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3825
    sget-object v10, Lcom/jichi/ob/util/FileSaver;->INSTANCE:Lcom/jichi/ob/util/FileSaver;

    iget-object v11, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->this$0:Lcom/jichi/ob/MainActivity;

    check-cast v11, Landroid/content/Context;

    invoke-virtual {v10, v11, v4, v3}, Lcom/jichi/ob/util/FileSaver;->saveToDownloads(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v10

    .line 3826
    iget-object v11, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->this$0:Lcom/jichi/ob/MainActivity;

    array-length v12, v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " bytes)"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3827
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "\uff08\u7cfb\u7edf\u300c\u6587\u4ef6\u300dApp\u2192\u4e0b\u8f7d\u2192\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB\uff09"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3828
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/jichi/ob/MainActivity$testDownload$1$1;

    iget-object v7, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->this$0:Lcom/jichi/ob/MainActivity;

    const/4 v11, 0x0

    invoke-direct {v2, v7, v4, v11}, Lcom/jichi/ob/MainActivity$testDownload$1$1;-><init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$0:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$2:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$3:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$4:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->L$5:Ljava/lang/Object;

    iput v9, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->label:I

    invoke-static {v0, v2, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_a

    :goto_3
    return-object v5

    .line 3822
    :cond_9
    :goto_4
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->this$0:Lcom/jichi/ob/MainActivity;

    const-string/jumbo v2, "\u274c \u4e0b\u8f7d\u5931\u8d25: \u6570\u636e\u65e0\u6548"

    invoke-static {v0, v2}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 3832
    :goto_5
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$testDownload$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u274c \u6d4b\u8bd5\u4e0b\u8f7d\u5f02\u5e38: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3834
    :cond_a
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

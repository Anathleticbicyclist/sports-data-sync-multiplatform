.class final Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MergeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/MergeFragment;->processLocalFiles(Ljava/util/List;Ljava/util/List;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMergeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MergeFragment.kt\ncom/jichi/ob/ui/MergeFragment$processLocalFiles$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1823:1\n1#2:1824\n*E\n"
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
    c = "com.jichi.ob.ui.MergeFragment$processLocalFiles$1"
    f = "MergeFragment.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
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
        0x1,
        0x1,
        0x1
    }
    l = {
        0x366,
        0x37a
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "groups",
        "ascents",
        "descents",
        "parsedSport",
        "failCount",
        "lastErr",
        "bytes",
        "i",
        "$this$launch",
        "groups",
        "ascents",
        "descents",
        "parsedSport",
        "failCount",
        "lastErr",
        "isMerge"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $bytesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic $names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/MergeFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/jichi/ob/ui/MergeFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->$names:Ljava/util/List;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->$bytesList:Ljava/util/List;

    iput-object p3, p0, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->$names:Ljava/util/List;

    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->$bytesList:Ljava/util/List;

    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;-><init>(Ljava/util/List;Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 861
    iget v3, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->label:I

    const-string/jumbo v4, "\u5904\u7406\u5931\u8d25\uff1a"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v7, :cond_1

    if-ne v3, v6, :cond_0

    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$6:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$5:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    move-object v5, v4

    move-object/from16 v0, p1

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v5, v4

    goto/16 :goto_9

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v3, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->I$1:I

    iget v8, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->I$0:I

    iget-object v9, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$7:Ljava/lang/Object;

    check-cast v9, [B

    iget-object v9, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$6:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$5:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v12, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v19, v4

    move-object/from16 v4, p1

    goto/16 :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 862
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 863
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 864
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 865
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v11, -0x1

    iput v11, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 866
    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 867
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v13, ""

    iput-object v13, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 868
    iget-object v13, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->$names:Ljava/util/List;

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    move-object v14, v12

    move-object v12, v9

    move-object v9, v14

    move-object v15, v8

    move-object v14, v10

    move-object v10, v11

    const/4 v8, 0x0

    move-object v11, v3

    move v3, v13

    :goto_0
    const/4 v13, 0x0

    if-ge v8, v3, :cond_8

    .line 869
    iget-object v5, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->$bytesList:Ljava/util/List;

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-nez v5, :cond_3

    iget v5, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v5, v7

    iput v5, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const-string/jumbo v5, "\u6587\u4ef6\u8bfb\u53d6\u5931\u8d25"

    iput-object v5, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v19, v4

    move v5, v7

    goto/16 :goto_4

    .line 870
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1$pr$1;

    move-object/from16 v19, v4

    iget-object v4, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-direct {v7, v4, v5, v13}, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1$pr$1;-><init>(Lcom/jichi/ob/ui/MergeFragment;[BLkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$1:Ljava/lang/Object;

    iput-object v15, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$2:Ljava/lang/Object;

    iput-object v12, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$3:Ljava/lang/Object;

    iput-object v14, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$4:Ljava/lang/Object;

    iput-object v10, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$5:Ljava/lang/Object;

    iput-object v9, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$6:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$7:Ljava/lang/Object;

    iput v8, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->I$0:I

    iput v3, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->I$1:I

    const/4 v5, 0x1

    iput v5, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->label:I

    invoke-static {v6, v7, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_4

    goto/16 :goto_7

    :cond_4
    move-object v13, v14

    move-object v14, v11

    move-object v11, v13

    move-object v13, v15

    .line 861
    :goto_1
    check-cast v4, Lcom/jichi/ob/ui/MergeFragment$ParseResult;

    if-eqz v4, :cond_6

    .line 871
    invoke-virtual {v4}, Lcom/jichi/ob/ui/MergeFragment$ParseResult;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 876
    :cond_5
    invoke-virtual {v4}, Lcom/jichi/ob/ui/MergeFragment$ParseResult;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    invoke-virtual {v4}, Lcom/jichi/ob/ui/MergeFragment$ParseResult;->getAscentM()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-virtual {v4}, Lcom/jichi/ob/ui/MergeFragment$ParseResult;->getDescentM()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    iget v4, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gez v4, :cond_7

    sget-object v4, Lcom/jichi/ob/merge/TrackMerger;->INSTANCE:Lcom/jichi/ob/merge/TrackMerger;

    iget-object v5, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->$names:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jichi/ob/merge/TrackMerger;->detectSportFromName(Ljava/lang/String;)I

    move-result v4

    iput v4, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3

    .line 872
    :cond_6
    :goto_2
    iget v4, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v18, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 873
    iget-object v4, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->$names:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u300c"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\u300d"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_7
    :goto_3
    move-object v5, v14

    move-object v14, v11

    move-object v11, v5

    move-object v15, v13

    const/4 v5, 0x1

    :goto_4
    add-int/2addr v8, v5

    move v7, v5

    move-object/from16 v4, v19

    const/4 v6, 0x2

    goto/16 :goto_0

    :cond_8
    move-object/from16 v19, v4

    move v5, v7

    .line 881
    iget-object v3, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v3}, Lcom/jichi/ob/ui/MergeFragment;->access$getBtnSaveMerge$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v3, "btnSaveMerge"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v13

    :cond_9
    invoke-virtual {v3, v5}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 882
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const-string/jumbo v4, "tvMergeHint"

    if-eqz v3, :cond_b

    .line 883
    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iget v2, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v3, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u6240\u9009\u6587\u4ef6\u5747\u65e0\u6cd5\u89e3\u6790\uff08"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u4e2a\u5931\u8d25\uff09"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jichi/ob/ui/MergeFragment;->access$toast(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)V

    .line 884
    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v0}, Lcom/jichi/ob/ui/MergeFragment;->access$getTvMergeHint$p(Lcom/jichi/ob/ui/MergeFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move-object v13, v0

    :goto_5
    iget v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u4e2a\u6587\u4ef6\u5747\u65e0\u6cd5\u89e3\u6790\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_b
    move-object/from16 v5, v19

    .line 887
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x2

    if-lt v3, v6, :cond_c

    const/16 v16, 0x1

    goto :goto_6

    :cond_c
    const/16 v16, 0x0

    .line 888
    :goto_6
    iget v3, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v3, :cond_e

    iget-object v3, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v3}, Lcom/jichi/ob/ui/MergeFragment;->access$getTvMergeHint$p(Lcom/jichi/ob/ui/MergeFragment;)Landroid/widget/TextView;

    move-result-object v3

    if-nez v3, :cond_d

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v13

    :cond_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v6, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->$names:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u90e8\u5206\u6587\u4ef6\u89e3\u6790\u5931\u8d25\uff08"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".size\uff09\uff0c\u7ee7\u7eed\u5904\u7406\u5269\u4f59..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    :cond_e
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    move-object v4, v13

    move/from16 v13, v16

    move-object/from16 v16, v12

    move-object v12, v11

    new-instance v11, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1$result$1;

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1$result$1;-><init>(Ljava/util/ArrayList;ZLkotlin/jvm/internal/Ref$IntRef;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$1:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$2:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$3:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$4:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$5:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$6:Ljava/lang/Object;

    iput-object v4, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->L$7:Ljava/lang/Object;

    iput v13, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->I$0:I

    const/4 v0, 0x2

    iput v0, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->label:I

    invoke-static {v3, v11, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_f

    :goto_7
    return-object v2

    :cond_f
    :goto_8
    check-cast v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 896
    iget-object v2, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/jichi/ob/ui/MergeFragment;->access$setLocalMode$p(Lcom/jichi/ob/ui/MergeFragment;Z)V

    .line 897
    iget-object v2, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v2, v0}, Lcom/jichi/ob/ui/MergeFragment;->access$setMergedResult$p(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/merge/TrackMerger$MergedResult;)V

    .line 898
    iget-object v2, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->access$showPreview(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/merge/TrackMerger$MergedResult;I)V

    .line 899
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catch_1
    move-exception v0

    .line 894
    :goto_9
    iget-object v2, v1, Lcom/jichi/ob/ui/MergeFragment$processLocalFiles$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jichi/ob/ui/MergeFragment;->access$toast(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

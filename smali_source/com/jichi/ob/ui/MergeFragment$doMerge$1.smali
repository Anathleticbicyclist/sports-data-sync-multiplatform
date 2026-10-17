.class final Lcom/jichi/ob/ui/MergeFragment$doMerge$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MergeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/MergeFragment;->doMerge()V
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
    c = "com.jichi.ob.ui.MergeFragment$doMerge$1"
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
        0x484,
        0x4ab
    }
    m = "invokeSuspend"
    n = {
        "groups",
        "ascents",
        "descents",
        "main",
        "parsedSport",
        "lastErr",
        "rec",
        "fitFail",
        "downloadFail",
        "groups",
        "ascents",
        "descents",
        "main",
        "parsedSport",
        "lastErr",
        "fitFail",
        "downloadFail"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$7",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $chosen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isMerge:Z

.field final synthetic $src:Lcom/jichi/ob/model/DataSource;

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

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
.method constructor <init>(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;ZLcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/ui/MergeFragment;",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;Z",
            "Lcom/jichi/ob/model/DataSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/MergeFragment$doMerge$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->$chosen:Ljava/util/List;

    iput-boolean p3, p0, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->$isMerge:Z

    iput-object p4, p0, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->$src:Lcom/jichi/ob/model/DataSource;

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

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->$chosen:Ljava/util/List;

    iget-boolean v3, p0, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->$isMerge:Z

    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->$src:Lcom/jichi/ob/model/DataSource;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;-><init>(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;ZLcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1146
    iget v0, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->label:I

    const-string v3, ""

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v7, :cond_1

    if-ne v0, v4, :cond_0

    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/MainActivity;

    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p1

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->I$1:I

    iget v8, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->I$0:I

    iget-object v9, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$7:Ljava/lang/Object;

    check-cast v9, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v9, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$6:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$5:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v12, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lcom/jichi/ob/MainActivity;

    iget-object v13, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    iget-object v15, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v14

    move-object v14, v11

    move-object v11, v12

    move-object v12, v15

    move-object v15, v4

    move-object/from16 v18, v3

    const/16 v17, 0x0

    move-object/from16 v3, p1

    :cond_2
    move v4, v0

    goto/16 :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    iget-object v10, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-virtual {v10}, Lcom/jichi/ob/ui/MergeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    instance-of v11, v10, Lcom/jichi/ob/MainActivity;

    if-eqz v11, :cond_4

    check-cast v10, Lcom/jichi/ob/MainActivity;

    goto :goto_0

    :cond_4
    move-object v10, v6

    :goto_0
    if-nez v10, :cond_5

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1151
    :cond_5
    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v12, -0x1

    iput v12, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1155
    iget-object v12, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->$chosen:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v15, v8

    move-object v13, v9

    move-object v14, v11

    move-object v9, v12

    const/4 v8, 0x0

    move-object v12, v0

    move-object v11, v10

    const/4 v0, 0x0

    move-object v10, v3

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v5, v16

    check-cast v5, Lcom/jichi/ob/model/ActivityRecord;

    .line 1156
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/jichi/ob/ui/MergeFragment$doMerge$1$bytes$1;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->$src:Lcom/jichi/ob/model/DataSource;

    invoke-direct {v7, v11, v3, v5, v6}, Lcom/jichi/ob/ui/MergeFragment$doMerge$1$bytes$1;-><init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v12, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$0:Ljava/lang/Object;

    iput-object v15, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$1:Ljava/lang/Object;

    iput-object v13, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$3:Ljava/lang/Object;

    iput-object v14, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$4:Ljava/lang/Object;

    iput-object v10, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$5:Ljava/lang/Object;

    iput-object v9, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$6:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$7:Ljava/lang/Object;

    iput v8, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->I$0:I

    iput v0, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->I$1:I

    const/4 v5, 0x1

    iput v5, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->label:I

    invoke-static {v4, v7, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2

    goto/16 :goto_8

    .line 1146
    :goto_2
    check-cast v3, [B

    if-eqz v3, :cond_b

    .line 1157
    array-length v0, v3

    if-nez v0, :cond_6

    goto/16 :goto_4

    .line 1162
    :cond_6
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v0, v3}, Lcom/jichi/ob/GpxToFitConverter;->isFit([B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1163
    sget-object v0, Lcom/jichi/ob/merge/FitParser;->INSTANCE:Lcom/jichi/ob/merge/FitParser;

    invoke-virtual {v0, v3}, Lcom/jichi/ob/merge/FitParser;->parse([B)Lcom/jichi/ob/merge/FitParser$FitResult;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1164
    invoke-virtual {v0}, Lcom/jichi/ob/merge/FitParser$FitResult;->getPoints()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1165
    invoke-virtual {v0}, Lcom/jichi/ob/merge/FitParser$FitResult;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-virtual {v0}, Lcom/jichi/ob/merge/FitParser$FitResult;->getAscentM()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    invoke-virtual {v0}, Lcom/jichi/ob/merge/FitParser$FitResult;->getDescentM()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    iget v3, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gez v3, :cond_8

    invoke-virtual {v0}, Lcom/jichi/ob/merge/FitParser$FitResult;->getSport()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v0}, Lcom/jichi/ob/merge/FitParser$FitResult;->getSport()I

    move-result v0

    iput v0, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3

    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 1171
    array-length v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "FIT \u89e3\u6790\u5931\u8d25\uff08"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u5b57\u8282\uff0c\u6587\u4ef6\u53ef\u80fd\u4e0d\u5b8c\u6574\u6216\u683c\u5f0f\u7279\u6b8a\uff09"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_8
    :goto_3
    move v0, v4

    goto :goto_5

    .line 1175
    :cond_9
    :try_start_1
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v0, v3}, Lcom/jichi/ob/GpxToFitConverter;->parseGpxBytes([B)Ljava/util/List;

    move-result-object v0

    .line 1176
    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    goto :goto_3

    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 1177
    array-length v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPX \u65e0\u6709\u6548\u8f68\u8ff9\u70b9\uff08"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u5b57\u8282\uff0c\u5ba4\u5185\u8fd0\u52a8\u5982\u8dd1\u6b65\u673a\u65e0GPS\u8f68\u8ff9\uff0c\u8bf7\u9009\u5ba4\u5916\u8bb0\u5f55\uff09"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/16 v16, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 1180
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "GPX \u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_b
    :goto_4
    add-int/lit8 v0, v4, 0x1

    .line 1160
    const-string/jumbo v10, "\u4e0b\u8f7d\u8fd4\u56de\u4e3a\u7a7a\uff08\u767b\u5f55\u6001\u53ef\u80fd\u5931\u6548\uff09"

    :goto_5
    move-object/from16 v3, v18

    const/4 v4, 0x2

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_c
    move-object/from16 v18, v3

    .line 1184
    iget-object v3, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v3}, Lcom/jichi/ob/ui/MergeFragment;->access$getBtnSaveMerge$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v3

    if-nez v3, :cond_d

    const-string v3, "btnSaveMerge"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v6

    :cond_d
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 1185
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const-string/jumbo v4, "tvMergeHint"

    if-eqz v3, :cond_10

    .line 1186
    move-object v2, v10

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n\u539f\u56e0\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_e
    move-object/from16 v3, v18

    .line 1187
    :goto_6
    iget-object v2, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v2}, Lcom/jichi/ob/ui/MergeFragment;->access$getTvMergeHint$p(Lcom/jichi/ob/ui/MergeFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_f

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    move-object v6, v2

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5904\u7406\u5931\u8d25\uff1a\u4e0b\u8f7d\u5931\u8d25 "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / \u89e3\u6790\u5931\u8d25 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u6761"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    iget-object v2, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u5904\u7406\u5931\u8d25\uff1a\u65e0\u53ef\u89e3\u6790\u7684\u8f68\u8ff9\uff08\u4e0b\u8f7d\u5931\u8d25 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u6761\uff09"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jichi/ob/ui/MergeFragment;->access$toast(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)V

    .line 1189
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1191
    :cond_10
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->$chosen:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_12

    iget-boolean v3, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->$isMerge:Z

    if-eqz v3, :cond_12

    .line 1192
    iget-object v3, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v3}, Lcom/jichi/ob/ui/MergeFragment;->access$getTvMergeHint$p(Lcom/jichi/ob/ui/MergeFragment;)Landroid/widget/TextView;

    move-result-object v3

    if-nez v3, :cond_11

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v6

    :cond_11
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->$chosen:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u90e8\u5206\u8bb0\u5f55\u65e0\u6cd5\u89e3\u6790\uff08"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\uff09\uff0c\u7ee7\u7eed\u5904\u7406\u5269\u4f59..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    :cond_12
    :try_start_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    move-object v4, v11

    new-instance v11, Lcom/jichi/ob/ui/MergeFragment$doMerge$1$result$1;

    move-object/from16 v16, v13

    iget-boolean v13, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->$isMerge:Z

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/jichi/ob/ui/MergeFragment$doMerge$1$result$1;-><init>(Ljava/util/ArrayList;ZLkotlin/jvm/internal/Ref$IntRef;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$0:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$1:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$3:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$4:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->L$7:Ljava/lang/Object;

    iput v8, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->I$0:I

    iput v0, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->I$1:I

    const/4 v4, 0x2

    iput v4, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->label:I

    invoke-static {v3, v11, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_13

    :goto_8
    return-object v2

    :cond_13
    :goto_9
    check-cast v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1202
    iget-object v2, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v2, v0}, Lcom/jichi/ob/ui/MergeFragment;->access$setMergedResult$p(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/merge/TrackMerger$MergedResult;)V

    .line 1203
    iget-object v2, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iget-object v3, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->$chosen:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->access$showPreview(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/merge/TrackMerger$MergedResult;I)V

    .line 1204
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1200
    :goto_a
    iget-object v2, v1, Lcom/jichi/ob/ui/MergeFragment$doMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5904\u7406\u5931\u8d25\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jichi/ob/ui/MergeFragment;->access$toast(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.class final Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->fetchMergeActivities(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/jichi/ob/MainActivity$MergeFetchPage;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/jichi/ob/MainActivity$MergeFetchPage;",
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
    c = "com.jichi.ob.MainActivity$fetchMergeActivities$2"
    f = "MainActivity.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xe7d
    }
    m = "invokeSuspend"
    n = {
        "out",
        "skip",
        "page",
        "max",
        "fetched",
        "lastBatchFull"
    }
    s = {
        "L$0",
        "I$0",
        "I$1",
        "I$2",
        "I$3",
        "I$4"
    }
.end annotation


# instance fields
.field final synthetic $fromDate:Ljava/lang/String;

.field final synthetic $skipStart:I

.field final synthetic $source:Lcom/jichi/ob/model/DataSource;

.field final synthetic $toDate:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field I$4:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method constructor <init>(ILcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/jichi/ob/MainActivity;",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$skipStart:I

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$source:Lcom/jichi/ob/model/DataSource;

    iput-object p4, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$fromDate:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$toDate:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;

    iget v1, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$skipStart:I

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$source:Lcom/jichi/ob/model/DataSource;

    iget-object v4, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$fromDate:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$toDate:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;-><init>(ILcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/jichi/ob/MainActivity$MergeFetchPage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 3699
    iget v1, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->I$4:I

    iget v4, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->I$3:I

    iget v5, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->I$2:I

    iget v6, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->I$1:I

    iget v7, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->I$0:I

    iget-object v8, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashMap;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3700
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3701
    iget v1, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$skipStart:I

    const/16 v4, 0x1e

    const/16 v5, 0x1f4

    move-object v8, p1

    move v7, v1

    move v1, v3

    move v6, v4

    move v4, v1

    :cond_2
    if-ge v4, v5, :cond_b

    .line 3709
    :try_start_1
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v9, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$source:Lcom/jichi/ob/model/DataSource;

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v8, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->L$0:Ljava/lang/Object;

    iput v7, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->I$0:I

    iput v6, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->I$1:I

    iput v5, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->I$2:I

    iput v4, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->I$3:I

    iput v1, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->I$4:I

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->label:I

    invoke-static {p1, v9, v7, v6, v10}, Lcom/jichi/ob/MainActivity;->access$fetchActivities(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 3713
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    move v1, v3

    goto/16 :goto_4

    .line 3714
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v6, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v3

    .line 3715
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v7, v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v4, v9

    .line 3716
    iget-object v9, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$fromDate:Ljava/lang/String;

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$toDate:Ljava/lang/String;

    if-nez v9, :cond_6

    .line 3717
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/model/ActivityRecord;

    move-object v7, v8

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3721
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jichi/ob/model/ActivityRecord;

    .line 3722
    iget-object v11, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v10}, Lcom/jichi/ob/model/ActivityRecord;->getStartTime()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/jichi/ob/MainActivity;->access$recDay(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3723
    iget-object v12, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$fromDate:Ljava/lang/String;

    if-eqz v12, :cond_8

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_7

    :cond_8
    iget-object v12, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$toDate:Ljava/lang/String;

    if-eqz v12, :cond_9

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-gtz v11, :cond_7

    :cond_9
    move-object v11, v8

    check-cast v11, Ljava/util/Map;

    invoke-virtual {v10}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3725
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ge p1, v6, :cond_2

    .line 3728
    :catch_0
    :cond_b
    :goto_4
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "<get-values>(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 3729
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$fromDate:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchMergeActivities$2;->$toDate:Ljava/lang/String;

    if-nez v0, :cond_d

    new-instance v0, Lcom/jichi/ob/MainActivity$MergeFetchPage;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v6}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    move v2, v3

    :goto_5
    invoke-direct {v0, p1, v2}, Lcom/jichi/ob/MainActivity$MergeFetchPage;-><init>(Ljava/util/List;Z)V

    return-object v0

    .line 3731
    :cond_d
    new-instance v0, Lcom/jichi/ob/MainActivity$MergeFetchPage;

    if-eqz v1, :cond_e

    if-lt v4, v5, :cond_e

    goto :goto_6

    :cond_e
    move v2, v3

    :goto_6
    invoke-direct {v0, p1, v2}, Lcom/jichi/ob/MainActivity$MergeFetchPage;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

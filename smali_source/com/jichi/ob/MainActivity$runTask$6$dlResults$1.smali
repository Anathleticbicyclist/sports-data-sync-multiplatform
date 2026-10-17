.class final Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity$runTask$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/jichi/ob/MainActivity$runTask$6$dlResults$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,4073:1\n1563#2:4074\n1634#2,3:4075\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/jichi/ob/MainActivity$runTask$6$dlResults$1\n*L\n2600#1:4074\n2600#1:4075,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002*\u0001\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "com/jichi/ob/MainActivity$runTask$6$Downloaded",
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
    c = "com.jichi.ob.MainActivity$runTask$6$dlResults$1"
    f = "MainActivity.kt"
    i = {
        0x0
    }
    l = {
        0xa4a
    }
    m = "invokeSuspend"
    n = {
        "$this$coroutineScope"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $dlSem:Ljava/util/concurrent/Semaphore;

.field final synthetic $failed:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $list:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $pendingItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/DataSource;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic $source:Lcom/jichi/ob/model/DataSource;

.field final synthetic $srcFailed:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $targets:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/DataSource;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $task:Lcom/jichi/ob/model/SyncTask;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/jichi/ob/MainActivity;Ljava/util/concurrent/Semaphore;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/jichi/ob/model/DataSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/jichi/ob/model/SyncTask;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/DataSource;",
            ">;>;>;>;",
            "Lcom/jichi/ob/MainActivity;",
            "Ljava/util/concurrent/Semaphore;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/DataSource;",
            ">;>;",
            "Lcom/jichi/ob/model/SyncTask;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$pendingItems:Ljava/util/List;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$dlSem:Ljava/util/concurrent/Semaphore;

    iput-object p4, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$source:Lcom/jichi/ob/model/DataSource;

    iput-object p6, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$targets:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p7, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$task:Lcom/jichi/ob/model/SyncTask;

    iput-object p8, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$failed:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p9, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$srcFailed:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$pendingItems:Ljava/util/List;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$dlSem:Ljava/util/concurrent/Semaphore;

    iget-object v4, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$source:Lcom/jichi/ob/model/DataSource;

    iget-object v6, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$targets:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$task:Lcom/jichi/ob/model/SyncTask;

    iget-object v8, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$failed:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v9, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$srcFailed:Lkotlin/jvm/internal/Ref$IntRef;

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;-><init>(Ljava/util/List;Lcom/jichi/ob/MainActivity;Ljava/util/concurrent/Semaphore;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/jichi/ob/model/DataSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/jichi/ob/model/SyncTask;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->L$0:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2599
    iget v3, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->label:I

    const/4 v8, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v8, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2600
    iget-object v3, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$pendingItems:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    iget-object v11, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v12, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$dlSem:Ljava/util/concurrent/Semaphore;

    iget-object v14, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v15, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$source:Lcom/jichi/ob/model/DataSource;

    iget-object v4, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$targets:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$task:Lcom/jichi/ob/model/SyncTask;

    iget-object v6, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$failed:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->$srcFailed:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4074
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v3, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 4075
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4076
    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lkotlin/Pair;

    move-object v3, v9

    .line 2601
    new-instance v9, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;

    const/16 v20, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-direct/range {v9 .. v20}, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;-><init>(Lkotlin/Pair;Lcom/jichi/ob/MainActivity;Ljava/util/concurrent/Semaphore;ILkotlin/jvm/internal/Ref$ObjectRef;Lcom/jichi/ob/model/DataSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/jichi/ob/model/SyncTask;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    move-object v5, v9

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v9, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    .line 4076
    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_0

    .line 4077
    :cond_2
    check-cast v9, Ljava/util/List;

    .line 4074
    check-cast v9, Ljava/util/Collection;

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 2634
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->L$0:Ljava/lang/Object;

    iput v8, v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->label:I

    invoke-static {v9, v3}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    return-object v2
.end method

.class final Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;
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
        "Lkotlin/Triple<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/jichi/ob/MainActivity$runTask$6$deltas$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,4073:1\n1563#2:4074\n1634#2,3:4075\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/jichi/ob/MainActivity$runTask$6$deltas$1\n*L\n2655#1:4074\n2655#1:4075,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\u0010\u0000\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/Triple;",
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
    c = "com.jichi.ob.MainActivity$runTask$6$deltas$1"
    f = "MainActivity.kt"
    i = {
        0x0
    }
    l = {
        0xa68
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
.field final synthetic $act:Lcom/jichi/ob/model/ActivityRecord;

.field final synthetic $fileData:[B

.field final synthetic $localFile:Ljava/io/File;

.field final synthetic $localName:Ljava/lang/String;

.field final synthetic $normalTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $source:Lcom/jichi/ob/model/DataSource;

.field final synthetic $upSem:Ljava/util/concurrent/Semaphore;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/concurrent/Semaphore;Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;[BLjava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/jichi/ob/model/DataSource;",
            ">;",
            "Ljava/util/concurrent/Semaphore;",
            "Lcom/jichi/ob/MainActivity;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "[B",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$normalTargets:Ljava/util/List;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$upSem:Ljava/util/concurrent/Semaphore;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p4, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$source:Lcom/jichi/ob/model/DataSource;

    iput-object p5, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$act:Lcom/jichi/ob/model/ActivityRecord;

    iput-object p6, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$fileData:[B

    iput-object p7, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$localFile:Ljava/io/File;

    iput-object p8, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$localName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$normalTargets:Ljava/util/List;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$upSem:Ljava/util/concurrent/Semaphore;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v4, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$source:Lcom/jichi/ob/model/DataSource;

    iget-object v5, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$act:Lcom/jichi/ob/model/ActivityRecord;

    iget-object v6, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$fileData:[B

    iget-object v7, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$localFile:Ljava/io/File;

    iget-object v8, p0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$localName:Ljava/lang/String;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;-><init>(Ljava/util/List;Ljava/util/concurrent/Semaphore;Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;[BLjava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->L$0:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2654
    iget v3, v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->label:I

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

    .line 2655
    iget-object v3, v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$normalTargets:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    iget-object v10, v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$upSem:Ljava/util/concurrent/Semaphore;

    iget-object v11, v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v12, v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$source:Lcom/jichi/ob/model/DataSource;

    iget-object v13, v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$act:Lcom/jichi/ob/model/ActivityRecord;

    iget-object v14, v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$fileData:[B

    iget-object v15, v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$localFile:Ljava/io/File;

    iget-object v4, v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->$localName:Ljava/lang/String;

    .line 4074
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 4075
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4076
    move-object/from16 v17, v3

    check-cast v17, Lcom/jichi/ob/model/DataSource;

    .line 2656
    new-instance v9, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1$1$1;

    const/16 v18, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v9 .. v18}, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1$1$1;-><init>(Ljava/util/concurrent/Semaphore;Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;[BLjava/io/File;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v20, v9

    move-object v9, v5

    move-object/from16 v5, v20

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    .line 4076
    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v5, v9

    move-object/from16 v4, v16

    goto :goto_0

    :cond_2
    move-object v9, v5

    .line 4077
    move-object v5, v9

    check-cast v5, Ljava/util/List;

    .line 4074
    check-cast v5, Ljava/util/Collection;

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 2664
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->L$0:Ljava/lang/Object;

    iput v8, v0, Lcom/jichi/ob/MainActivity$runTask$6$deltas$1;->label:I

    invoke-static {v5, v3}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    return-object v2
.end method

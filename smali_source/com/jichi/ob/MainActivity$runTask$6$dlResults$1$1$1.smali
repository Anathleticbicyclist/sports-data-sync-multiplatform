.class final Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,4073:1\n1#2:4074\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0000\n\u0002\u0018\u0002*\u0001\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
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
    c = "com.jichi.ob.MainActivity$runTask$6$dlResults$1$1$1"
    f = "MainActivity.kt"
    i = {
        0x0
    }
    l = {
        0xa2f
    }
    m = "invokeSuspend"
    n = {
        "act"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $dlSem:Ljava/util/concurrent/Semaphore;

.field final synthetic $failed:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $i:I

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

.field final synthetic $pair:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/DataSource;",
            ">;>;"
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

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method constructor <init>(Lkotlin/Pair;Lcom/jichi/ob/MainActivity;Ljava/util/concurrent/Semaphore;ILkotlin/jvm/internal/Ref$ObjectRef;Lcom/jichi/ob/model/DataSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/jichi/ob/model/SyncTask;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/jichi/ob/model/DataSource;",
            ">;>;",
            "Lcom/jichi/ob/MainActivity;",
            "Ljava/util/concurrent/Semaphore;",
            "I",
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
            "Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$pair:Lkotlin/Pair;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$dlSem:Ljava/util/concurrent/Semaphore;

    iput p4, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$i:I

    iput-object p5, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$source:Lcom/jichi/ob/model/DataSource;

    iput-object p7, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$targets:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p8, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$task:Lcom/jichi/ob/model/SyncTask;

    iput-object p9, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$failed:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p10, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$srcFailed:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12
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

    new-instance v0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$pair:Lkotlin/Pair;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$dlSem:Ljava/util/concurrent/Semaphore;

    iget v4, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$i:I

    iget-object v5, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$source:Lcom/jichi/ob/model/DataSource;

    iget-object v7, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$targets:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$task:Lcom/jichi/ob/model/SyncTask;

    iget-object v9, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$failed:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, p0, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$srcFailed:Lkotlin/jvm/internal/Ref$IntRef;

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;-><init>(Lkotlin/Pair;Lcom/jichi/ob/MainActivity;Ljava/util/concurrent/Semaphore;ILkotlin/jvm/internal/Ref$ObjectRef;Lcom/jichi/ob/model/DataSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/jichi/ob/model/SyncTask;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v1, p0

    const-string/jumbo v0, "\u4e0b\u8f7d "

    const-string/jumbo v2, "\ud83d\udcbe \u5df2\u5b58: "

    const-string/jumbo v3, "\u2b07\ufe0f ["

    const-string/jumbo v4, "\u4e0b\u8f7d\u5931\u8d25: "

    const-string/jumbo v5, "\u274c \u4e0b\u8f7d\u5931\u8d25: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 2601
    iget v7, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->label:I

    const-string v8, " ("

    const-string v11, "prefs"

    const-string v12, "fail"

    const/16 v13, 0x14

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v7, :cond_1

    if-ne v7, v14, :cond_0

    iget-object v3, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/jichi/ob/model/ActivityRecord;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v23, v11

    move-object v4, v3

    move-object/from16 v3, p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v23, v11

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2602
    iget-object v7, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$pair:Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/ob/model/ActivityRecord;

    .line 2603
    iget-object v9, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v9}, Lcom/jichi/ob/MainActivity;->access$getTaskActive$p(Lcom/jichi/ob/MainActivity;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v0, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;

    invoke-direct {v0, v7, v15, v15}, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;-><init>(Lcom/jichi/ob/model/ActivityRecord;[BLjava/io/File;)V

    return-object v0

    .line 2604
    :cond_2
    iget-object v9, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$dlSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2606
    :try_start_1
    iget-object v9, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget v10, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$i:I

    add-int/2addr v10, v14

    iget-object v15, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v15, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v7}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v23, v11

    const-string v11, "%.1f"

    invoke-virtual {v7}, Lcom/jichi/ob/model/ActivityRecord;->getDistance()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v24, v4

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v25, v5

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] \u4e0b\u8f7d: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "km)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2607
    :try_start_2
    iget-object v3, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v4, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$source:Lcom/jichi/ob/model/DataSource;

    iget-object v5, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$targets:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lcom/jichi/ob/model/DataSource;

    iget-object v5, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$task:Lcom/jichi/ob/model/SyncTask;

    invoke-virtual {v5}, Lcom/jichi/ob/model/SyncTask;->getCoordinateConvert()Z

    move-result v20

    move-object/from16 v21, v1

    check-cast v21, Lkotlin/coroutines/Continuation;

    iput-object v7, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->label:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v7

    :try_start_3
    invoke-static/range {v16 .. v21}, Lcom/jichi/ob/MainActivity;->access$downloadActivity(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v3, v6, :cond_3

    return-object v6

    :cond_3
    move-object/from16 v4, v19

    :goto_0
    :try_start_4
    check-cast v3, [B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_7

    .line 2613
    :try_start_5
    array-length v5, v3

    const/16 v6, 0x64

    if-ge v5, v6, :cond_4

    goto/16 :goto_3

    .line 2619
    :cond_4
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v5, v3}, Lcom/jichi/ob/MainActivity;->access$isFit(Lcom/jichi/ob/MainActivity;[B)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "fit"

    goto :goto_1

    :cond_5
    const-string v5, "gpx"

    .line 2620
    :goto_1
    sget-object v6, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    iget-object v7, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$source:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v6, v7, v4, v5}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2621
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v7}, Lcom/jichi/ob/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2623
    :try_start_6
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v7, Ljava/io/Closeable;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    move-object v9, v7

    check-cast v9, Ljava/io/FileOutputStream;

    invoke-virtual {v9, v3}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v9, 0x0

    :try_start_8
    invoke-static {v7, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 2624
    sget-object v7, Lcom/jichi/ob/util/FileSaver;->INSTANCE:Lcom/jichi/ob/util/FileSaver;

    iget-object v9, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v7, v9, v5, v3}, Lcom/jichi/ob/util/FileSaver;->saveToDownloads(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    .line 2625
    iget-object v7, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    array-length v9, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, "\u5b57\u8282)"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 2626
    iget-object v8, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v9, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$source:Lcom/jichi/ob/model/DataSource;

    const-string v10, "dl"

    invoke-virtual {v4}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x14

    invoke-static {v2, v7}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    array-length v7, v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u5b57\u8282"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v14}, Lcom/jichi/ob/MainActivity;->access$recordSync(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;IIILjava/lang/String;)V

    .line 2627
    sget-object v0, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    iget-object v2, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/jichi/ob/util/ActivityCache$Companion;->get(Landroid/content/Context;)Lcom/jichi/ob/util/ActivityCache;

    move-result-object v0

    iget-object v2, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$source:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v2}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_6

    const-string v5, ""

    :cond_6
    invoke-virtual {v0, v2, v7, v5}, Lcom/jichi/ob/util/ActivityCache;->setFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 2623
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_a
    invoke-static {v7, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2629
    :catch_1
    :goto_2
    :try_start_b
    new-instance v0, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;

    invoke-direct {v0, v4, v3, v6}, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;-><init>(Lcom/jichi/ob/model/ActivityRecord;[BLjava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2631
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$dlSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    return-object v0

    .line 2614
    :cond_7
    :goto_3
    :try_start_c
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    const-string/jumbo v2, "\u274c \u6587\u4ef6\u6570\u636e\u65e0\u6548"

    invoke-static {v0, v2}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 2615
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v6, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$source:Lcom/jichi/ob/model/DataSource;

    const-string v7, "err"

    const-string/jumbo v11, "\u6587\u4ef6\u6570\u636e\u65e0\u6548"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v5 .. v11}, Lcom/jichi/ob/MainActivity;->access$recordSync(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;IIILjava/lang/String;)V

    .line 2616
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$failed:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v2, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$failed:Lkotlin/jvm/internal/Ref$IntRef;

    const/16 v22, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$srcFailed:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v2, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$srcFailed:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v0}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_8
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v12, v3, v2, v9}, Lcom/jichi/ob/util/PrefsManager;->addStat$default(Lcom/jichi/ob/util/PrefsManager;Ljava/lang/String;IILjava/lang/Object;)V

    .line 2617
    new-instance v0, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;

    invoke-direct {v0, v4, v9, v9}, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;-><init>(Lcom/jichi/ob/model/ActivityRecord;[BLjava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2631
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$dlSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    return-object v0

    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v19, v7

    :goto_4
    move-object/from16 v3, v19

    .line 2608
    :goto_5
    :try_start_d
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v25

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 2609
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v6, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$source:Lcom/jichi/ob/model/DataSource;

    const-string v7, "err"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v24

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v5 .. v11}, Lcom/jichi/ob/MainActivity;->access$recordSync(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;IIILjava/lang/String;)V

    .line 2610
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$failed:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v2, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$failed:Lkotlin/jvm/internal/Ref$IntRef;

    const/16 v22, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$srcFailed:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v2, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$srcFailed:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v0}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v9

    if-nez v9, :cond_9

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_9
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v9, v12, v4, v2, v5}, Lcom/jichi/ob/util/PrefsManager;->addStat$default(Lcom/jichi/ob/util/PrefsManager;Ljava/lang/String;IILjava/lang/Object;)V

    .line 2611
    new-instance v0, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;

    invoke-direct {v0, v3, v5, v5}, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;-><init>(Lcom/jichi/ob/model/ActivityRecord;[BLjava/io/File;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2631
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$dlSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    return-object v0

    :goto_6
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$runTask$6$dlResults$1$1$1;->$dlSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method

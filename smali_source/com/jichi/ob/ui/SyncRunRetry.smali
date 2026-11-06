.class public final Lcom/jichi/ob/ui/SyncRunRetry;
.super Ljava/lang/Object;
.source "SyncRunRetry.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lkotlin/coroutines/Continuation<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Lcom/jichi/ob/MainActivity;

.field private boxedResult:Ljava/lang/Object;

.field private volatile finished:Z

.field private final index:I

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private final record:Lcom/jichi/ob/model/ActivityRecord;

.field private final source:Lcom/jichi/ob/model/DataSource;

.field private final target:Lcom/jichi/ob/model/DataSource;


# direct methods
.method private constructor <init>(Lcom/jichi/ob/MainActivity;ILcom/jichi/ob/model/ActivityRecord;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/SyncRunRetry;->activity:Lcom/jichi/ob/MainActivity;

    iput p2, p0, Lcom/jichi/ob/ui/SyncRunRetry;->index:I

    iput-object p3, p0, Lcom/jichi/ob/ui/SyncRunRetry;->record:Lcom/jichi/ob/model/ActivityRecord;

    iput-object p4, p0, Lcom/jichi/ob/ui/SyncRunRetry;->source:Lcom/jichi/ob/model/DataSource;

    iput-object p5, p0, Lcom/jichi/ob/ui/SyncRunRetry;->target:Lcom/jichi/ob/model/DataSource;

    return-void
.end method

.method private static asInt(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private await(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_7

    return-object p1

    :cond_7
    iget-object p1, p0, Lcom/jichi/ob/ui/SyncRunRetry;->latch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    if-nez p1, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object p1, p0, Lcom/jichi/ob/ui/SyncRunRetry;->boxedResult:Ljava/lang/Object;

    iput-object v0, p0, Lcom/jichi/ob/ui/SyncRunRetry;->boxedResult:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1
.end method

.method private callDownload()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jichi/ob/ui/SyncRunRetry;->boxedResult:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/jichi/ob/ui/SyncRunRetry;->latch:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/jichi/ob/ui/SyncRunRetry;->activity:Lcom/jichi/ob/MainActivity;

    iget-object v3, p0, Lcom/jichi/ob/ui/SyncRunRetry;->source:Lcom/jichi/ob/model/DataSource;

    iget-object v4, p0, Lcom/jichi/ob/ui/SyncRunRetry;->target:Lcom/jichi/ob/model/DataSource;

    iget-object v5, p0, Lcom/jichi/ob/ui/SyncRunRetry;->record:Lcom/jichi/ob/model/ActivityRecord;

    const/4 v6, 0x0

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Lcom/jichi/ob/MainActivity;->access$downloadActivity(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/SyncRunRetry;->await(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private callUpload([BLjava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jichi/ob/ui/SyncRunRetry;->boxedResult:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/jichi/ob/ui/SyncRunRetry;->latch:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/jichi/ob/ui/SyncRunRetry;->activity:Lcom/jichi/ob/MainActivity;

    iget-object v3, p0, Lcom/jichi/ob/ui/SyncRunRetry;->source:Lcom/jichi/ob/model/DataSource;

    iget-object v4, p0, Lcom/jichi/ob/ui/SyncRunRetry;->record:Lcom/jichi/ob/model/ActivityRecord;

    iget-object v8, p0, Lcom/jichi/ob/ui/SyncRunRetry;->target:Lcom/jichi/ob/model/DataSource;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v9, p0

    invoke-static/range {v2 .. v9}, Lcom/jichi/ob/MainActivity;->access$uploadOneToTarget(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;[BLjava/io/File;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/SyncRunRetry;->await(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private finish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/jichi/ob/ui/SyncRunRetry;->finished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jichi/ob/ui/SyncRunRetry;->finished:Z

    :try_start_8
    const-string v0, "fail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "\u274c "

    goto :goto_15

    :cond_13
    const-string v0, "\u2705 "

    :goto_15
    iget-object v1, p0, Lcom/jichi/ob/ui/SyncRunRetry;->activity:Lcom/jichi/ob/MainActivity;

    invoke-direct {p0}, Lcom/jichi/ob/ui/SyncRunRetry;->title()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_3a

    goto :goto_3b

    :catchall_3a
    move-exception v0

    :goto_3b
    iget v0, p0, Lcom/jichi/ob/ui/SyncRunRetry;->index:I

    invoke-static {v0, p1, p2}, Lcom/jichi/ob/ui/SyncRunReport;->finishRetry(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static start(Lcom/jichi/ob/MainActivity;ILcom/jichi/ob/model/ActivityRecord;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;)V
    .locals 7

    if-eqz p0, :cond_21

    if-eqz p2, :cond_21

    if-nez p4, :cond_7

    goto :goto_21

    :cond_7
    new-instance v6, Lcom/jichi/ob/ui/SyncRunRetry;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/SyncRunRetry;-><init>(Lcom/jichi/ob/MainActivity;ILcom/jichi/ob/model/ActivityRecord;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;)V

    new-instance p0, Ljava/lang/Thread;

    const-string p1, "jichi-sync-retry"

    invoke-direct {p0, v6, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_21
    :goto_21
    return-void
.end method

.method private targetName()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Lcom/jichi/ob/ui/SyncRunRetry;->target:Lcom/jichi/ob/model/DataSource;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/jichi/ob/ui/SyncRunRetry;->target:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    :cond_13
    :goto_13
    return-object v0

    :catchall_14
    move-exception v1

    return-object v0
.end method

.method private title()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Lcom/jichi/ob/ui/SyncRunRetry;->record:Lcom/jichi/ob/model/ActivityRecord;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/jichi/ob/ui/SyncRunRetry;->record:Lcom/jichi/ob/model/ActivityRecord;

    invoke-virtual {v1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    :cond_13
    :goto_13
    return-object v0

    :catchall_14
    move-exception v1

    return-object v0
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/ui/SyncRunRetry;->boxedResult:Ljava/lang/Object;

    iget-object p1, p0, Lcom/jichi/ob/ui/SyncRunRetry;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_9
    return-void
.end method

.method public run()V
    .locals 9

    const-string v0, "fail"

    :try_start_2
    iget-object v1, p0, Lcom/jichi/ob/ui/SyncRunRetry;->activity:Lcom/jichi/ob/MainActivity;

    invoke-direct {p0}, Lcom/jichi/ob/ui/SyncRunRetry;->title()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/jichi/ob/ui/SyncRunRetry;->targetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ud83d\udd01 \u5355\u6761\u91cd\u8bd5: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u2192 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jichi/ob/ui/SyncRunRetry;->callDownload()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [B

    const/4 v3, 0x0

    if-eqz v2, :cond_38

    check-cast v1, [B

    goto :goto_39

    :cond_38
    move-object v1, v3

    :goto_39
    if-eqz v1, :cond_d3

    array-length v2, v1

    const/16 v4, 0x64

    if-ge v2, v4, :cond_42

    goto/16 :goto_d3

    :cond_42
    iget-object v2, p0, Lcom/jichi/ob/ui/SyncRunRetry;->activity:Lcom/jichi/ob/MainActivity;

    iget-object v4, p0, Lcom/jichi/ob/ui/SyncRunRetry;->source:Lcom/jichi/ob/model/DataSource;

    iget-object v5, p0, Lcom/jichi/ob/ui/SyncRunRetry;->record:Lcom/jichi/ob/model/ActivityRecord;

    invoke-static {v2, v1, v4, v5}, Lcom/jichi/ob/ui/SyncRunReport;->prepareCacheFile(Lcom/jichi/ob/MainActivity;[BLcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;)Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lcom/jichi/ob/ui/SyncRunRetry;->activity:Lcom/jichi/ob/MainActivity;

    invoke-static {v4}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v4

    if-nez v4, :cond_55

    :goto_54
    goto :goto_5c

    :cond_55
    iget-object v3, p0, Lcom/jichi/ob/ui/SyncRunRetry;->target:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v4, v3}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v3

    goto :goto_54

    :goto_5c
    const/4 v5, 0x0

    if-nez v4, :cond_61

    move v6, v5

    goto :goto_65

    :cond_61
    invoke-virtual {v4}, Lcom/jichi/ob/util/PrefsManager;->getStatOk()I

    move-result v6

    :goto_65
    if-nez v4, :cond_69

    move v7, v5

    goto :goto_6d

    :cond_69
    invoke-virtual {v4}, Lcom/jichi/ob/util/PrefsManager;->getStatSkip()I

    move-result v7

    :goto_6d
    if-nez v4, :cond_71

    move v8, v5

    goto :goto_75

    :cond_71
    invoke-virtual {v4}, Lcom/jichi/ob/util/PrefsManager;->getStatFail()I

    move-result v8

    :goto_75
    invoke-direct {p0, v1, v2, v3}, Lcom/jichi/ob/ui/SyncRunRetry;->callUpload([BLjava/io/File;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v4, :cond_7d

    move v2, v5

    goto :goto_82

    :cond_7d
    invoke-virtual {v4}, Lcom/jichi/ob/util/PrefsManager;->getStatOk()I

    move-result v2

    sub-int/2addr v2, v6

    :goto_82
    if-nez v4, :cond_86

    move v3, v5

    goto :goto_8b

    :cond_86
    invoke-virtual {v4}, Lcom/jichi/ob/util/PrefsManager;->getStatSkip()I

    move-result v3

    sub-int/2addr v3, v7

    :goto_8b
    if-nez v4, :cond_8e

    goto :goto_94

    :cond_8e
    invoke-virtual {v4}, Lcom/jichi/ob/util/PrefsManager;->getStatFail()I

    move-result v4
    :try_end_92
    .catchall {:try_start_2 .. :try_end_92} :catchall_e5

    sub-int v5, v4, v8

    :goto_94
    const-string v4, "ok"

    if-lez v2, :cond_9c

    nop

    :try_start_99
    const-string v1, "\u91cd\u8bd5\u4e0a\u4f20\u6210\u529f"

    goto :goto_cf

    :cond_9c
    if-lez v3, :cond_a3

    const-string v4, "skip"

    const-string v1, "\u91cd\u8bd5\u540e\u5e73\u53f0\u5df2\u5b58\u5728\uff08\u8df3\u8fc7\uff09"

    goto :goto_cf

    :cond_a3
    if-lez v5, :cond_aa

    nop

    const-string v1, "\u91cd\u8bd5\u4ecd\u5931\u8d25\uff0c\u8be6\u89c1\u8fd0\u884c\u65e5\u5fd7"

    move-object v4, v0

    goto :goto_cf

    :cond_aa
    instance-of v2, v1, Lkotlin/Triple;

    if-eqz v2, :cond_cb

    check-cast v1, Lkotlin/Triple;

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91cd\u8bd5\u5df2\u5b8c\u6210\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff09\uff0c\u8be6\u89c1\u8fd0\u884c\u65e5\u5fd7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_cf

    :cond_cb
    nop

    const-string v1, "\u91cd\u8bd5\u672a\u8fd4\u56de\u7ed3\u679c\uff0c\u8be6\u89c1\u8fd0\u884c\u65e5\u5fd7"

    move-object v4, v0

    :goto_cf
    invoke-direct {p0, v4, v1}, Lcom/jichi/ob/ui/SyncRunRetry;->finish(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fc

    :cond_d3
    :goto_d3
    iget-object v1, p0, Lcom/jichi/ob/ui/SyncRunRetry;->activity:Lcom/jichi/ob/MainActivity;

    invoke-static {v1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v1

    if-eqz v1, :cond_df

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/jichi/ob/util/PrefsManager;->addStat(Ljava/lang/String;I)V

    :cond_df
    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff08\u6587\u4ef6\u6570\u636e\u65e0\u6548\u6216\u4e3a\u7a7a\uff09"

    invoke-direct {p0, v0, v1}, Lcom/jichi/ob/ui/SyncRunRetry;->finish(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_99 .. :try_end_e4} :catchall_e5

    return-void

    :catchall_e5
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91cd\u8bd5\u5f02\u5e38: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jichi/ob/ui/SyncRunRetry;->finish(Ljava/lang/String;Ljava/lang/String;)V

    :goto_fc
    return-void
.end method

.class final Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AutoSyncService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/AutoSyncService;->startAutoSyncLoop()V
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
    c = "com.jichi.ob.AutoSyncService$startAutoSyncLoop$1"
    f = "AutoSyncService.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x2
    }
    l = {
        0x63,
        0x69,
        0x74
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "$this$launch",
        "source",
        "target",
        "$this$launch"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/AutoSyncService;


# direct methods
.method constructor <init>(Lcom/jichi/ob/AutoSyncService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/AutoSyncService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;

    iget-object v1, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    invoke-direct {v0, v1, p2}, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;-><init>(Lcom/jichi/ob/AutoSyncService;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 94
    iget v2, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->label:I

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v2, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/model/DataSource;

    iget-object v2, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/model/DataSource;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_3
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    :cond_4
    :goto_1
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 97
    :try_start_1
    sget-object p1, Lcom/jichi/ob/AutoSyncService;->Companion:Lcom/jichi/ob/AutoSyncService$Companion;

    invoke-virtual {p1}, Lcom/jichi/ob/AutoSyncService$Companion;->getSyncing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 98
    iget-object p1, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    const-string/jumbo v2, "\u624b\u52a8\u540c\u6b65\u8fdb\u884c\u4e2d\uff0c\u7a0d\u540e\u81ea\u52a8\u68c0\u6d4b..."

    invoke-static {p1, v2}, Lcom/jichi/ob/AutoSyncService;->access$updateNotification(Lcom/jichi/ob/AutoSyncService;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    invoke-static {p1}, Lcom/jichi/ob/AutoSyncService;->access$getIntervalSeconds$p(Lcom/jichi/ob/AutoSyncService;)I

    move-result p1

    int-to-long v9, p1

    mul-long/2addr v9, v3

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->L$0:Ljava/lang/Object;

    iput v7, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->label:I

    invoke-static {v9, v10, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto/16 :goto_7

    .line 102
    :cond_5
    iget-object p1, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    const-string/jumbo v2, "\u6b63\u5728\u68c0\u6d4b\u65b0\u6570\u636e..."

    invoke-static {p1, v2}, Lcom/jichi/ob/AutoSyncService;->access$updateNotification(Lcom/jichi/ob/AutoSyncService;Ljava/lang/String;)V

    .line 103
    sget-object p1, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    iget-object v2, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    invoke-static {v2}, Lcom/jichi/ob/AutoSyncService;->access$getPrefs$p(Lcom/jichi/ob/AutoSyncService;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "prefs"

    if-nez v2, :cond_6

    :try_start_2
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v8

    :cond_6
    invoke-virtual {v2}, Lcom/jichi/ob/util/PrefsManager;->getLastSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    .line 104
    :cond_7
    sget-object v2, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    iget-object v10, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    invoke-static {v10}, Lcom/jichi/ob/AutoSyncService;->access$getPrefs$p(Lcom/jichi/ob/AutoSyncService;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v10

    if-nez v10, :cond_8

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v8

    :cond_8
    invoke-virtual {v10}, Lcom/jichi/ob/util/PrefsManager;->getLastTarget()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/jichi/ob/model/DataSource;->OUTBASE:Lcom/jichi/ob/model/DataSource;

    .line 105
    :cond_9
    iget-object v9, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->L$2:Ljava/lang/Object;

    iput v6, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->label:I

    invoke-static {v9, p1, v2, v10}, Lcom/jichi/ob/AutoSyncService;->access$doSync(Lcom/jichi/ob/AutoSyncService;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto/16 :goto_7

    .line 94
    :cond_a
    :goto_2
    check-cast p1, Lkotlin/Pair;

    .line 106
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_b

    .line 107
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u5df2\u540c\u6b65"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, "\u6761\u65b0\u8bb0\u5f55 ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 109
    :cond_b
    iget-object p1, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    invoke-static {p1}, Lcom/jichi/ob/AutoSyncService;->access$getIntervalSeconds$p(Lcom/jichi/ob/AutoSyncService;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/jichi/ob/AutoSyncService;->access$formatInterval(Lcom/jichi/ob/AutoSyncService;I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u65e0\u65b0\u6570\u636e\uff0c\u4e0b\u6b21\u68c0\u6d4b"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v2, "\u540e"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    :goto_3
    iget-object v2, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    invoke-static {v2, p1}, Lcom/jichi/ob/AutoSyncService;->access$updateNotification(Lcom/jichi/ob/AutoSyncService;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 113
    :goto_4
    const-string v2, "Auto sync error"

    move-object v9, p1

    check-cast v9, Ljava/lang/Throwable;

    const-string v10, "AutoSyncService"

    invoke-static {v10, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    iget-object v2, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    const/16 v9, 0x1e

    invoke-static {p1, v9}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_c
    move-object p1, v8

    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\u540c\u6b65\u51fa\u9519: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v9, "\uff0c\u91cd\u8bd5\u4e2d..."

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/jichi/ob/AutoSyncService;->access$updateNotification(Lcom/jichi/ob/AutoSyncService;Ljava/lang/String;)V

    .line 116
    :goto_6
    iget-object p1, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    invoke-static {p1}, Lcom/jichi/ob/AutoSyncService;->access$getIntervalSeconds$p(Lcom/jichi/ob/AutoSyncService;)I

    move-result p1

    int-to-long v9, p1

    mul-long/2addr v9, v3

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->L$0:Ljava/lang/Object;

    iput-object v8, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->L$1:Ljava/lang/Object;

    iput-object v8, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->L$2:Ljava/lang/Object;

    iput v5, p0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;->label:I

    invoke-static {v9, v10, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    :goto_7
    return-object v1

    .line 118
    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

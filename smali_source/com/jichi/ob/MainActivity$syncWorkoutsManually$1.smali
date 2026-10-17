.class final Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->syncWorkoutsManually$app_devRelease()V
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
    c = "com.jichi.ob.MainActivity$syncWorkoutsManually$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0xb94,
        0xba0,
        0xbac
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $brytonCookie:Ljava/lang/String;

.field final synthetic $icuKey:Ljava/lang/String;

.field final synthetic $igpIntlToken:Ljava/lang/String;

.field final synthetic $igpToken:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$Z8Jtrw0hxQty3TOfGFdHQlQNYEY(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->invokeSuspend$lambda$1(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o0FYqztwlvCM0fyEsat5sJvJfGQ(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->invokeSuspend$lambda$2(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oSqwhbpH3345nYZV27uRjfrqro0(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->invokeSuspend$lambda$0(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/MainActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$igpToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$icuKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$igpIntlToken:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$brytonCookie:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 2967
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\u8bfe\u8868-\u56fd\u5185] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 2979
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\u8bfe\u8868-\u56fd\u9645] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\u8bfe\u8868-\u767e\u9510\u987f] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance v0, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$igpToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$icuKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$igpIntlToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$brytonCookie:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;-><init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    const-string/jumbo v2, "\ud83d\udcca [\u8bfe\u8868-\u767e\u9510\u987f] \u5217\u51fa"

    const-string/jumbo v3, "\ud83d\udcca [\u8bfe\u8868-\u56fd\u9645] \u5217\u51fa"

    const-string/jumbo v0, "\ud83d\udcca [\u8bfe\u8868-\u56fd\u5185] \u5217\u51fa"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 2959
    iget v5, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->label:I

    const/16 v6, 0x14

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v10, " \u5931\u8d25"

    const-string v11, " \u8df3\u8fc7"

    const-string v12, " \u4e0a\u4f20"

    const/16 v13, 0x3c

    if-eqz v5, :cond_3

    if-eq v5, v9, :cond_2

    if-eq v5, v8, :cond_1

    if-ne v5, v7, :cond_0

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
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :cond_2
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v5, p1

    goto :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2960
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->this$0:Lcom/jichi/ob/MainActivity;

    const-string/jumbo v15, "\ud83d\udcc5 \u5f00\u59cb\u540c\u6b65ICU\u8bfe\u8868..."

    invoke-static {v5, v15}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 2962
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$igpToken:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_6

    .line 2964
    :try_start_3
    sget-object v15, Lcom/jichi/ob/api/WorkoutSyncEngine;->INSTANCE:Lcom/jichi/ob/api/WorkoutSyncEngine;

    .line 2965
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$igpToken:Ljava/lang/String;

    iget-object v14, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$icuKey:Ljava/lang/String;

    .line 2964
    iget-object v7, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v8, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1$$ExternalSyntheticLambda0;

    invoke-direct {v8, v7}, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/MainActivity;)V

    move-object/from16 v28, v1

    check-cast v28, Lkotlin/coroutines/Continuation;

    iput v9, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->label:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x7

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x7a0

    const/16 v30, 0x0

    move-object/from16 v16, v5

    move-object/from16 v27, v8

    move-object/from16 v19, v14

    invoke-static/range {v15 .. v30}, Lcom/jichi/ob/api/WorkoutSyncEngine;->syncWorkouts$default(Lcom/jichi/ob/api/WorkoutSyncEngine;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_4

    goto/16 :goto_8

    .line 2959
    :cond_4
    :goto_0
    check-cast v5, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    .line 2968
    iget-object v7, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v5}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getListed()I

    move-result v8

    invoke-virtual {v5}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v9

    invoke-virtual {v5}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getSkipped()I

    move-result v14

    invoke-virtual {v5}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getFailed()I

    move-result v5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 2970
    :goto_1
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0, v13}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u274c [\u8bfe\u8868-\u56fd\u5185] \u5f02\u5e38: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 2974
    :cond_6
    :goto_3
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$igpIntlToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v6, :cond_9

    .line 2976
    :try_start_4
    sget-object v14, Lcom/jichi/ob/api/WorkoutSyncEngine;->INSTANCE:Lcom/jichi/ob/api/WorkoutSyncEngine;

    .line 2977
    iget-object v15, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$igpIntlToken:Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$icuKey:Ljava/lang/String;

    .line 2976
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v6, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5}, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/ob/MainActivity;)V

    move-object/from16 v27, v1

    check-cast v27, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x2

    iput v5, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->label:I

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x7

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x7a0

    const/16 v29, 0x0

    move-object/from16 v18, v0

    move-object/from16 v26, v6

    invoke-static/range {v14 .. v29}, Lcom/jichi/ob/api/WorkoutSyncEngine;->syncWorkouts$default(Lcom/jichi/ob/api/WorkoutSyncEngine;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_7

    goto/16 :goto_8

    .line 2959
    :cond_7
    :goto_4
    check-cast v0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    .line 2980
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getListed()I

    move-result v6

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v7

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getSkipped()I

    move-result v8

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getFailed()I

    move-result v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    .line 2982
    :goto_5
    iget-object v3, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0, v13}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u274c [\u8bfe\u8868-\u56fd\u9645] \u5f02\u5e38: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 2986
    :cond_9
    :goto_7
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$brytonCookie:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_c

    .line 2988
    :cond_a
    :try_start_5
    sget-object v14, Lcom/jichi/ob/api/WorkoutSyncEngine;->INSTANCE:Lcom/jichi/ob/api/WorkoutSyncEngine;

    .line 2989
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$brytonCookie:Ljava/lang/String;

    iget-object v3, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->$icuKey:Ljava/lang/String;

    .line 2988
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v6, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1$$ExternalSyntheticLambda2;

    invoke-direct {v6, v5}, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/MainActivity;)V

    move-object/from16 v27, v1

    check-cast v27, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x3

    iput v5, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->label:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x7

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x7a0

    const/16 v29, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v26, v6

    invoke-static/range {v14 .. v29}, Lcom/jichi/ob/api/WorkoutSyncEngine;->syncWorkouts$default(Lcom/jichi/ob/api/WorkoutSyncEngine;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_b

    :goto_8
    return-object v4

    .line 2959
    :cond_b
    :goto_9
    check-cast v0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    .line 2992
    iget-object v3, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getListed()I

    move-result v4

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v5

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getSkipped()I

    move-result v6

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getFailed()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_c

    .line 2994
    :goto_a
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$syncWorkoutsManually$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0, v13}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_b

    :cond_c
    const/4 v14, 0x0

    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u274c [\u8bfe\u8868-\u767e\u9510\u987f] \u5f02\u5e38: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 2997
    :cond_d
    :goto_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

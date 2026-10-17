.class final Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->showWorkoutSyncDialog$app_devRelease()V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,4073:1\n1#2:4074\n*E\n"
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
    c = "com.jichi.ob.MainActivity$showWorkoutSyncDialog$2$1"
    f = "MainActivity.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xf81
    }
    m = "invokeSuspend"
    n = {
        "igpTgt",
        "igpToken",
        "bryCookie",
        "bryTgt",
        "intl"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "Z$0",
        "Z$1"
    }
.end annotation


# instance fields
.field final synthetic $icuKey:Ljava/lang/String;

.field final synthetic $targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field Z$1:Z

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$8rdB1eKlbROrb6bYVfkdHsg4zWc(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->invokeSuspend$lambda$1(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RRLVPQqh4GmJJMywB_QNmyAHsJ8(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->invokeSuspend$lambda$2(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j4g-11Yydm8ozLrP3eUOjLeiFs8(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->invokeSuspend$lambda$3(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/util/List;Lcom/jichi/ob/MainActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/jichi/ob/MainActivity;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->$targets:Ljava/util/List;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->$icuKey:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 3979
    invoke-static {p0}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "prefs"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->addWorkoutSyncedId(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 3980
    invoke-static {p0}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "prefs"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/PrefsManager;->putWorkoutHash(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$3(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 3981
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\u8bfe\u8868] "

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
    .locals 3
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

    new-instance p1, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->$targets:Ljava/util/List;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->$icuKey:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;-><init>(Ljava/util/List;Lcom/jichi/ob/MainActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3955
    iget v2, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_5

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3957
    iget-object v2, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->$targets:Ljava/util/List;

    const-string v4, "iGPSPORT\u56fd\u5185"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "igp_int"

    const-string v5, ""

    if-eqz v2, :cond_2

    const-string v2, "igp"

    goto :goto_0

    .line 3958
    :cond_2
    iget-object v2, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->$targets:Ljava/util/List;

    const-string v6, "iGPSPORT\u56fd\u9645"

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v4

    goto :goto_0

    :cond_3
    move-object v2, v5

    .line 3961
    :goto_0
    iget-object v6, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->$targets:Ljava/util/List;

    const-string/jumbo v7, "\u767e\u9510\u987f"

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 3962
    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-string v8, "prefs"

    const/4 v9, 0x0

    if-lez v7, :cond_7

    .line 3963
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/jichi/ob/model/DataSource;->IGPSPORT_INT:Lcom/jichi/ob/model/DataSource;

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    .line 3964
    :goto_1
    iget-object v10, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v10}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v10

    if-nez v10, :cond_5

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v9

    :cond_5
    invoke-virtual {v10, v7}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    move-object v5, v7

    :cond_7
    :goto_2
    if-eqz v6, :cond_9

    .line 3966
    iget-object v7, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v7}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v7

    if-nez v7, :cond_8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v9

    :cond_8
    invoke-virtual {v7}, Lcom/jichi/ob/util/PrefsManager;->getBrytonCookie()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    goto :goto_3

    :cond_9
    move-object v13, v9

    .line 3967
    :goto_3
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 3968
    iget-object v4, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v7, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->$targets:Ljava/util/List;

    move-object v14, v7

    check-cast v14, Ljava/lang/Iterable;

    const-string/jumbo v7, "\u3001"

    move-object v15, v7

    check-cast v15, Ljava/lang/CharSequence;

    const/16 v21, 0x3e

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v14 .. v22}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\ud83d\udcc5 [\u8bfe\u8868] \u624b\u52a8\u540c\u6b65 \u2192 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "\uff08\u672a\u67657\u5929\uff09..."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3969
    sget-object v10, Lcom/jichi/ob/api/WorkoutSyncEngine;->INSTANCE:Lcom/jichi/ob/api/WorkoutSyncEngine;

    .line 3970
    move-object v4, v5

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    move-object v4, v9

    :cond_a
    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    .line 3973
    iget-object v14, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->$icuKey:Ljava/lang/String;

    .line 3977
    iget-object v4, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v4}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v4

    if-nez v4, :cond_b

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v9

    :cond_b
    invoke-virtual {v4}, Lcom/jichi/ob/util/PrefsManager;->getWorkoutSyncedIds()Ljava/util/Set;

    move-result-object v18

    .line 3978
    iget-object v4, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v4}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v4

    if-nez v4, :cond_c

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    move-object v9, v4

    :goto_4
    invoke-virtual {v9}, Lcom/jichi/ob/util/PrefsManager;->getWorkoutHashes()Ljava/util/Map;

    move-result-object v19

    .line 3969
    iget-object v4, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v7, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4}, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/MainActivity;)V

    iget-object v4, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v8, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1$$ExternalSyntheticLambda1;

    invoke-direct {v8, v4}, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/ob/MainActivity;)V

    iget-object v4, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v9, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1$$ExternalSyntheticLambda2;

    invoke-direct {v9, v4}, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/MainActivity;)V

    move-object/from16 v23, v0

    check-cast v23, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->L$1:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->L$2:Ljava/lang/Object;

    iput-boolean v6, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->Z$0:Z

    iput-boolean v12, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->Z$1:Z

    iput v3, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->label:I

    const/4 v15, 0x7

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-virtual/range {v10 .. v23}, Lcom/jichi/ob/api/WorkoutSyncEngine;->syncWorkouts(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_d

    return-object v1

    .line 3955
    :cond_d
    :goto_5
    check-cast v2, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    .line 3982
    iget-object v1, v0, Lcom/jichi/ob/MainActivity$showWorkoutSyncDialog$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v2}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getListed()I

    move-result v3

    invoke-virtual {v2}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v4

    invoke-virtual {v2}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getSkipped()I

    move-result v5

    invoke-virtual {v2}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getFailed()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\ud83d\udcca [\u8bfe\u8868] \u5b8c\u6210: \u5217\u51fa"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " \u4e0a\u4f20"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u8df3\u8fc7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3983
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

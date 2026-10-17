.class final Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WorkoutSyncEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/WorkoutSyncEngine;->syncWorkouts(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/jichi/ob/api/WorkoutSyncEngine$Result;",
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
        "Lcom/jichi/ob/api/WorkoutSyncEngine$Result;",
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
    c = "com.jichi.ob.api.WorkoutSyncEngine$syncWorkouts$5"
    f = "WorkoutSyncEngine.kt"
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
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3
    }
    l = {
        0x4c,
        0x55,
        0x75,
        0x87
    }
    m = "invokeSuspend"
    n = {
        "result",
        "igp",
        "bryton",
        "icu",
        "sdf",
        "today",
        "calOld",
        "oldest",
        "calNew",
        "newest",
        "result",
        "igp",
        "bryton",
        "icu",
        "sdf",
        "today",
        "calOld",
        "oldest",
        "calNew",
        "newest",
        "workouts",
        "igpExisting",
        "result",
        "igp",
        "bryton",
        "icu",
        "sdf",
        "today",
        "calOld",
        "oldest",
        "calNew",
        "newest",
        "workouts",
        "igpExisting",
        "w",
        "eventKey",
        "currentHash",
        "storedHash",
        "body",
        "changed",
        "result",
        "igp",
        "bryton",
        "icu",
        "sdf",
        "today",
        "calOld",
        "oldest",
        "calNew",
        "newest",
        "workouts",
        "igpExisting",
        "w",
        "eventKey",
        "currentHash",
        "storedHash",
        "fitBytes",
        "changed"
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
        "L$8",
        "L$9",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "L$9",
        "L$10",
        "L$11",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "L$9",
        "L$10",
        "L$11",
        "L$13",
        "L$14",
        "L$15",
        "L$16",
        "L$17",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "L$9",
        "L$10",
        "L$11",
        "L$13",
        "L$14",
        "L$15",
        "L$16",
        "L$17",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $brytonCookie:Ljava/lang/String;

.field final synthetic $contentHashes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $daysAhead:I

.field final synthetic $dedupSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ftp:I

.field final synthetic $historyDays:I

.field final synthetic $icuKey:Ljava/lang/String;

.field final synthetic $igpToken:Ljava/lang/String;

.field final synthetic $intl:Z

.field final synthetic $log:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onHashChanged:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSynced:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$12:Ljava/lang/Object;

.field L$13:Ljava/lang/Object;

.field L$14:Ljava/lang/Object;

.field L$15:Ljava/lang/Object;

.field L$16:Ljava/lang/Object;

.field L$17:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$DYILB6-51c2c10NhJW8k-w0Efxw(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->invokeSuspend$lambda$0(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(IILkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Set;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$historyDays:I

    iput p2, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$daysAhead:I

    iput-object p3, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$icuKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$igpToken:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$intl:Z

    iput-object p7, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$contentHashes:Ljava/util/Map;

    iput-object p8, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$dedupSet:Ljava/util/Set;

    iput p9, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$ftp:I

    iput-object p10, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$onSynced:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$onHashChanged:Lkotlin/jvm/functions/Function2;

    iput-object p12, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$brytonCookie:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p13}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(B)Ljava/lang/CharSequence;
    .locals 1

    .line 101
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 14
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

    new-instance v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;

    iget v1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$historyDays:I

    iget v2, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$daysAhead:I

    iget-object v3, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$icuKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$igpToken:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$intl:Z

    iget-object v7, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$contentHashes:Ljava/util/Map;

    iget-object v8, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$dedupSet:Ljava/util/Set;

    iget v9, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$ftp:I

    iget-object v10, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$onSynced:Lkotlin/jvm/functions/Function1;

    iget-object v11, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$onHashChanged:Lkotlin/jvm/functions/Function2;

    iget-object v12, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$brytonCookie:Ljava/lang/String;

    move-object/from16 v13, p2

    invoke-direct/range {v0 .. v13}, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;-><init>(IILkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Set;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/jichi/ob/api/WorkoutSyncEngine$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v0, p0

    const-string v1, ""

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 60
    iget v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->label:I

    const-string v4, "icu_"

    const-string v6, " ("

    const-string v7, " ..."

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v11, :cond_3

    if-eq v3, v10, :cond_2

    if-eq v3, v9, :cond_1

    if-ne v3, v8, :cond_0

    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$17:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$16:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$15:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$14:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$13:Ljava/lang/Object;

    check-cast v3, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;

    iget-object v10, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$12:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v12, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$11:Ljava/lang/Object;

    check-cast v12, Ljava/util/Set;

    iget-object v13, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$10:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$9:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$8:Ljava/lang/Object;

    check-cast v15, Ljava/util/Calendar;

    iget-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$7:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$6:Ljava/lang/Object;

    check-cast v9, Ljava/util/Calendar;

    iget-object v5, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move/from16 v16, v11

    iget-object v11, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/jichi/ob/api/IntervalsIcuApi;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/jichi/ob/api/BrytonApi;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/jichi/ob/api/IgpsportApi;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v32, v4

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v25, v14

    move-object/from16 v14, v20

    const/4 v8, 0x4

    move-object v4, v2

    move-object/from16 v2, p1

    goto/16 :goto_11

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v17, v1

    move/from16 v16, v11

    iget v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->I$0:I

    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$17:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$16:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$15:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$14:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$13:Ljava/lang/Object;

    check-cast v9, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;

    iget-object v10, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$12:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$11:Ljava/lang/Object;

    check-cast v11, Ljava/util/Set;

    iget-object v12, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$10:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$9:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$8:Ljava/lang/Object;

    check-cast v14, Ljava/util/Calendar;

    iget-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$7:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move/from16 v18, v1

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$6:Ljava/lang/Object;

    check-cast v1, Ljava/util/Calendar;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$5:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/text/SimpleDateFormat;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/jichi/ob/api/IntervalsIcuApi;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/jichi/ob/api/BrytonApi;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/jichi/ob/api/IgpsportApi;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v32, v4

    move-object/from16 v31, v14

    move-object/from16 v30, v19

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v14, v24

    move-object v4, v2

    move-object/from16 v19, v6

    move-object v6, v15

    const/4 v15, 0x3

    move-object/from16 v2, p1

    goto/16 :goto_b

    :cond_2
    move-object/from16 v17, v1

    move/from16 v16, v11

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$11:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$10:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$9:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$8:Ljava/lang/Object;

    check-cast v5, Ljava/util/Calendar;

    iget-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$7:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$6:Ljava/lang/Object;

    check-cast v9, Ljava/util/Calendar;

    iget-object v10, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$5:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/text/SimpleDateFormat;

    iget-object v12, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$3:Ljava/lang/Object;

    check-cast v12, Lcom/jichi/ob/api/IntervalsIcuApi;

    iget-object v13, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/jichi/ob/api/BrytonApi;

    iget-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/jichi/ob/api/IgpsportApi;

    iget-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v9

    move-object v9, v1

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_3
    move-object/from16 v17, v1

    move/from16 v16, v11

    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$9:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$8:Ljava/lang/Object;

    check-cast v3, Ljava/util/Calendar;

    iget-object v5, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$7:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$6:Ljava/lang/Object;

    check-cast v8, Ljava/util/Calendar;

    iget-object v9, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$5:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v11, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/text/SimpleDateFormat;

    iget-object v12, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$3:Ljava/lang/Object;

    check-cast v12, Lcom/jichi/ob/api/IntervalsIcuApi;

    iget-object v13, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/jichi/ob/api/BrytonApi;

    iget-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/jichi/ob/api/IgpsportApi;

    iget-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v3

    move-object v3, v1

    move-object v1, v12

    move-object v12, v8

    move-object v8, v5

    move-object v5, v10

    move-object v10, v9

    move-object/from16 v9, p1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v17, v1

    move/from16 v16, v11

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    new-instance v18, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    const/16 v24, 0x1f

    const/16 v25, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v18 .. v25}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v18

    .line 62
    new-instance v3, Lcom/jichi/ob/api/IgpsportApi;

    invoke-direct {v3}, Lcom/jichi/ob/api/IgpsportApi;-><init>()V

    .line 63
    new-instance v5, Lcom/jichi/ob/api/BrytonApi;

    invoke-direct {v5}, Lcom/jichi/ob/api/BrytonApi;-><init>()V

    .line 64
    new-instance v8, Lcom/jichi/ob/api/IntervalsIcuApi;

    invoke-direct {v8}, Lcom/jichi/ob/api/IntervalsIcuApi;-><init>()V

    .line 66
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyy-MM-dd"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 67
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 69
    iget v13, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$historyDays:I

    neg-int v13, v13

    const/4 v14, 0x6

    invoke-virtual {v12, v14, v13}, Ljava/util/Calendar;->add(II)V

    .line 70
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 72
    iget v10, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$daysAhead:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v15, v14, v10}, Ljava/util/Calendar;->add(II)V

    .line 73
    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 75
    iget-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v19, v11

    const-string/jumbo v11, "\ud83d\udcc5 \u62c9\u53d6ICU\u65e5\u5386 "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ~ "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v14, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v9, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$icuKey:Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v0

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$2:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$3:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$4:Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$5:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$6:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$7:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$8:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$9:Ljava/lang/Object;

    move/from16 v14, v16

    iput v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->label:I

    invoke-virtual {v8, v9, v13, v10, v11}, Lcom/jichi/ob/api/IntervalsIcuApi;->fetchCalendarWorkouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_5

    :goto_0
    move-object v4, v2

    goto/16 :goto_10

    :cond_5
    move-object v11, v15

    move-object v15, v1

    move-object v1, v8

    move-object v8, v13

    move-object v13, v5

    move-object v5, v11

    move-object/from16 v11, p1

    move-object v14, v3

    move-object v3, v10

    move-object/from16 v10, v19

    .line 60
    :goto_1
    check-cast v9, Ljava/util/List;

    move-object/from16 p1, v1

    .line 77
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->setListed(I)V

    .line 78
    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    move-object/from16 v19, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v20, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v21, v8

    const-string/jumbo v8, "\ud83d\udccb ICU\u65e5\u5386\u5171 "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u4e2aWORKOUT"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v15

    .line 82
    :cond_6
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 83
    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$igpToken:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_4

    :cond_7
    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$igpToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-lt v3, v5, :cond_9

    .line 84
    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    const-string/jumbo v5, "\ud83d\udccb \u83b7\u53d6iGPSPORT\u73b0\u6709\u8bfe\u8868ID..."

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$igpToken:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$intl:Z

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$1:Ljava/lang/Object;

    iput-object v13, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$2:Ljava/lang/Object;

    move-object/from16 v22, v1

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$4:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$5:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$6:Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$7:Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$8:Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$9:Ljava/lang/Object;

    iput-object v9, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$10:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$11:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->label:I

    invoke-virtual {v14, v3, v5, v8}, Lcom/jichi/ob/api/IgpsportApi;->listCustomWorkoutIds(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_8

    goto/16 :goto_0

    :cond_8
    move-object/from16 v18, v15

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v8, v21

    move-object v15, v14

    move-object v14, v13

    move-object/from16 v13, p1

    .line 60
    :goto_2
    check-cast v1, Ljava/util/Set;

    move-object/from16 p1, v1

    .line 86
    iget-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    move-object/from16 v19, v3

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v3

    move-object/from16 v20, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v21, v8

    const-string/jumbo v8, "\ud83d\udccb iGPSPORT\u73b0\u6709 "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u4e2a\u81ea\u5b9a\u4e49\u8bfe\u8868"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, p1

    move-object v1, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v18

    :goto_3
    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v8, v21

    goto :goto_5

    :cond_9
    :goto_4
    move-object/from16 v22, v1

    move-object/from16 v1, p1

    goto :goto_3

    .line 89
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v24, v3

    move-object v3, v1

    move-object v1, v15

    move-object v15, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v24

    move-object/from16 v24, v22

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 p1, v3

    move-object/from16 v3, v19

    check-cast v3, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;

    move-object/from16 v25, v8

    .line 90
    invoke-static {}, Lcom/jichi/ob/api/WorkoutSyncEngine;->access$getCYCLING_TYPES$p()Ljava/util/Set;

    move-result-object v8

    move-object/from16 v26, v9

    invoke-virtual {v3}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getActivityType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 91
    iget-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getActivityType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v10

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v28, v11

    const-string/jumbo v11, "\u21b7 \u8df3\u8fc7 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\uff08\u975e\u9a91\u884c\u7c7b\u578b: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, "\uff09"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {v1}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getSkipped()I

    move-result v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->setSkipped(I)V

    goto/16 :goto_8

    :cond_a
    move-object/from16 v27, v10

    move-object/from16 v28, v11

    .line 97
    invoke-virtual {v3}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getEventId()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 99
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 100
    invoke-virtual {v3}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getWorkoutDoc()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "toString(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    const-string v11, "getBytes(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v29

    .line 101
    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v30, v17

    check-cast v30, Ljava/lang/CharSequence;

    new-instance v35, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5$$ExternalSyntheticLambda0;

    invoke-direct/range {v35 .. v35}, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5$$ExternalSyntheticLambda0;-><init>()V

    const/16 v36, 0x1e

    const/16 v37, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v29 .. v37}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-object/from16 v9, v17

    .line 103
    :goto_7
    iget-object v10, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$contentHashes:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 104
    iget-object v11, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$dedupSet:Ljava/util/Set;

    invoke-interface {v11, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 105
    iget-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\u23ed\ufe0f "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, "\uff08\u5df2\u63a8\u8fc7\u4e14\u672a\u53d8\uff0c\u8df3\u8fc7\uff09"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v1}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getSkipped()I

    move-result v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->setSkipped(I)V

    :goto_8
    move-object/from16 v3, p1

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    goto/16 :goto_6

    .line 109
    :cond_b
    iget-object v11, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$dedupSet:Ljava/util/Set;

    invoke-interface {v11, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const/4 v11, 0x1

    goto :goto_9

    :cond_c
    const/4 v11, 0x0

    :goto_9
    if-eqz v11, :cond_d

    move-object/from16 v29, v10

    .line 110
    iget-object v10, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    move-object/from16 v30, v12

    invoke-virtual {v3}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v31, v15

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v32, v4

    const-string/jumbo v4, "\ud83d\udd04 "

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\uff08\u5185\u5bb9\u5df2\u4fee\u6539\uff0c\u91cd\u65b0\u4e0a\u4f20\uff09"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_d
    move-object/from16 v32, v4

    move-object/from16 v29, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v15

    .line 113
    :goto_a
    iget-object v4, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$igpToken:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_12

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto/16 :goto_e

    :cond_e
    iget-object v4, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$igpToken:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v10, 0x14

    if-lt v4, v10, :cond_12

    .line 114
    sget-object v19, Lcom/jichi/ob/api/WorkoutSyncEngine;->INSTANCE:Lcom/jichi/ob/api/WorkoutSyncEngine;

    invoke-virtual {v3}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v3}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v3}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getWorkoutDoc()Lorg/json/JSONObject;

    move-result-object v22

    iget v4, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$ftp:I

    move/from16 v23, v4

    invoke-static/range {v19 .. v24}, Lcom/jichi/ob/api/WorkoutSyncEngine;->access$buildWorkoutBody(Lcom/jichi/ob/api/WorkoutSyncEngine;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/util/Set;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, v24

    if-eqz v4, :cond_11

    .line 116
    iget-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v20, v2

    const-string/jumbo v2, "\ud83d\udce4 [iGPSPORT] "

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v2, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$igpToken:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$intl:Z

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$1:Ljava/lang/Object;

    iput-object v13, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$2:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$3:Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$4:Ljava/lang/Object;

    invoke-static/range {v27 .. v27}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$5:Ljava/lang/Object;

    invoke-static/range {v30 .. v30}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$6:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$7:Ljava/lang/Object;

    invoke-static/range {v31 .. v31}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$8:Ljava/lang/Object;

    invoke-static/range {v25 .. v25}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$9:Ljava/lang/Object;

    invoke-static/range {v26 .. v26}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$10:Ljava/lang/Object;

    iput-object v12, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$11:Ljava/lang/Object;

    iput-object v5, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$12:Ljava/lang/Object;

    iput-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$13:Ljava/lang/Object;

    iput-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$14:Ljava/lang/Object;

    iput-object v9, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$15:Ljava/lang/Object;

    invoke-static/range {v29 .. v29}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$16:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$17:Ljava/lang/Object;

    iput v11, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->I$0:I

    const/4 v15, 0x3

    iput v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->label:I

    invoke-virtual {v14, v2, v4, v6, v10}, Lcom/jichi/ob/api/IgpsportApi;->uploadCustomWorkout(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v4, v20

    if-ne v2, v4, :cond_f

    goto/16 :goto_10

    :cond_f
    move-object/from16 v22, p1

    move-object v10, v5

    move-object v5, v9

    move-object/from16 v23, v13

    move-object/from16 v6, v18

    move-object/from16 v13, v25

    move-object v9, v3

    move/from16 v18, v11

    move-object v11, v12

    move-object/from16 v12, v26

    move-object/from16 v3, v29

    .line 60
    :goto_b
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_10

    .line 119
    iget-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, v3

    invoke-virtual {v9}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v21, v7

    const-string/jumbo v7, "\u2705 [iGPSPORT] "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v6, v19

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {v1}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->setUploaded(I)V

    .line 121
    iget-object v2, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$onSynced:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v2, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$onHashChanged:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v8, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_c

    :cond_10
    move-object/from16 p1, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v6, v19

    .line 124
    iget-object v2, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "\u274c [iGPSPORT] "

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v1}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getFailed()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->setFailed(I)V

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    :goto_c
    move-object/from16 v29, p1

    move-object v7, v5

    move-object v2, v8

    move-object v5, v10

    move-object/from16 v24, v11

    move-object v8, v13

    move-object/from16 v3, v22

    move-object/from16 v13, v23

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    move-object/from16 v15, v31

    goto :goto_d

    :cond_11
    move-object v4, v2

    move-object/from16 v21, v7

    .line 127
    invoke-virtual {v1}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getNoSteps()I

    move-result v2

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->setNoSteps(I)V

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-object v2, v8

    move-object v7, v9

    move-object/from16 v24, v12

    move-object/from16 v20, v18

    move-object/from16 v8, v25

    move-object/from16 v12, v26

    move-object v9, v3

    move/from16 v18, v11

    move-object/from16 v3, p1

    move-object/from16 v10, v27

    move-object/from16 v15, v31

    move-object/from16 v11, v28

    :goto_d
    move-object/from16 p1, v10

    move-object v10, v5

    move-object/from16 v5, p1

    move-object/from16 p1, v2

    move-object/from16 v25, v8

    move-object/from16 v26, v12

    move-object/from16 v31, v15

    move/from16 v12, v18

    move-object/from16 v8, v20

    move-object/from16 v15, v24

    goto :goto_f

    :cond_12
    :goto_e
    move-object v4, v2

    move-object/from16 v21, v7

    move-object/from16 v12, v24

    move-object v10, v5

    move-object v7, v9

    move-object v15, v12

    move-object/from16 v5, v27

    move-object v9, v3

    move v12, v11

    move-object/from16 v11, v28

    move-object/from16 v3, p1

    move-object/from16 p1, v8

    move-object/from16 v8, v18

    .line 131
    :goto_f
    iget-object v2, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$brytonCookie:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_17

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_14

    .line 132
    :cond_13
    sget-object v2, Lcom/jichi/ob/api/BrytonFitEncoder;->INSTANCE:Lcom/jichi/ob/api/BrytonFitEncoder;

    move-object/from16 v18, v3

    invoke-virtual {v9}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v5

    invoke-virtual {v9}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getWorkoutDoc()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/jichi/ob/api/BrytonFitEncoder;->encode(Ljava/lang/String;Lorg/json/JSONObject;)[B

    move-result-object v2

    if-eqz v2, :cond_16

    .line 134
    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v7

    array-length v7, v2

    move-object/from16 v22, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v23, v11

    const-string/jumbo v11, "\ud83d\udce4 [\u767e\u9510\u987f] "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "B) ..."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v3, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$brytonCookie:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v1, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$1:Ljava/lang/Object;

    iput-object v13, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$2:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$3:Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$4:Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$5:Ljava/lang/Object;

    invoke-static/range {v30 .. v30}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$6:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$7:Ljava/lang/Object;

    invoke-static/range {v31 .. v31}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$8:Ljava/lang/Object;

    invoke-static/range {v25 .. v25}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$9:Ljava/lang/Object;

    invoke-static/range {v26 .. v26}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$10:Ljava/lang/Object;

    iput-object v15, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$11:Ljava/lang/Object;

    iput-object v10, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$12:Ljava/lang/Object;

    iput-object v9, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$13:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$14:Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$15:Ljava/lang/Object;

    invoke-static/range {v29 .. v29}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$16:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->L$17:Ljava/lang/Object;

    iput v12, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->I$0:I

    const/4 v8, 0x4

    iput v8, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->label:I

    invoke-virtual {v13, v3, v2, v5, v7}, Lcom/jichi/ob/api/BrytonApi;->uploadWorkout(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_14

    :goto_10
    return-object v4

    :cond_14
    move-object v3, v9

    move-object v12, v15

    move-object/from16 v5, v19

    move-object/from16 v11, v23

    move-object/from16 v9, v30

    move-object/from16 v15, v31

    move-object/from16 v19, v13

    move-object/from16 v13, v26

    :goto_11
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 137
    iget-object v2, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 p1, v3

    const-string/jumbo v3, "\u2705 [\u767e\u9510\u987f] "

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v1}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->setUploaded(I)V

    const/16 v16, 0x1

    goto :goto_12

    :cond_15
    move-object/from16 p1, v3

    .line 140
    iget-object v2, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$log:Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u274c [\u767e\u9510\u987f] "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v1}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getFailed()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->setFailed(I)V

    :goto_12
    move-object v3, v10

    move-object v10, v5

    move-object v5, v3

    move-object/from16 v24, v12

    move-object v12, v9

    move-object/from16 v9, p1

    :goto_13
    move-object/from16 v3, v18

    move-object/from16 v18, v22

    move-object/from16 v8, v25

    goto :goto_16

    :cond_16
    move-object/from16 v22, v8

    move-object/from16 v23, v11

    const/16 v16, 0x1

    .line 143
    invoke-virtual {v1}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getNoSteps()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->setNoSteps(I)V

    goto :goto_15

    :cond_17
    :goto_14
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v22, v8

    move-object/from16 v23, v11

    const/16 v16, 0x1

    :goto_15
    move-object v5, v10

    move-object/from16 v24, v15

    move-object/from16 v10, v19

    move-object/from16 v11, v23

    move-object/from16 v12, v30

    move-object/from16 v15, v31

    move-object/from16 v19, v13

    move-object/from16 v13, v26

    goto :goto_13

    .line 147
    :goto_16
    invoke-virtual {v1}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v2

    if-gtz v2, :cond_1a

    iget-object v2, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$igpToken:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_19

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_17

    :cond_18
    invoke-virtual {v1}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v2

    if-lez v2, :cond_19

    goto :goto_18

    :cond_19
    :goto_17
    move-object/from16 v0, v32

    goto :goto_19

    .line 148
    :cond_1a
    :goto_18
    iget-object v2, v0, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;->$onSynced:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9}, Lcom/jichi/ob/api/IntervalsIcuApi$CalendarWorkout;->getEventId()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v0, v32

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    move-object v2, v4

    move-object v9, v13

    move-object/from16 v13, v19

    move-object/from16 v7, v21

    move-object v4, v0

    move-object/from16 v0, p0

    goto/16 :goto_6

    :cond_1b
    return-object v1
.end method

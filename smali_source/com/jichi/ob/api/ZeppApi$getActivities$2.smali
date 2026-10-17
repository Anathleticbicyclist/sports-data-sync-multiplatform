.class final Lcom/jichi/ob/api/ZeppApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ZeppApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/ZeppApi;->getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/jichi/ob/model/ActivityRecord;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZeppApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZeppApi.kt\ncom/jichi/ob/api/ZeppApi$getActivities$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,482:1\n1#2:483\n1669#3,8:484\n*S KotlinDebug\n*F\n+ 1 ZeppApi.kt\ncom/jichi/ob/api/ZeppApi$getActivities$2\n*L\n350#1:484,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
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
    c = "com.jichi.ob.api.ZeppApi$getActivities$2"
    f = "ZeppApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $skip:I

.field final synthetic $token:Ljava/lang/String;

.field final synthetic $userId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/ZeppApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/ZeppApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/ZeppApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    iput-object p2, p0, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$userId:Ljava/lang/String;

    iput p4, p0, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$skip:I

    iput p5, p0, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$limit:I

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

    new-instance v0, Lcom/jichi/ob/api/ZeppApi$getActivities$2;

    iget-object v1, p0, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    iget-object v2, p0, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$userId:Ljava/lang/String;

    iget v4, p0, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$skip:I

    iget v5, p0, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$limit:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/ZeppApi$getActivities$2;-><init>(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/ZeppApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v1, p0

    const-string v0, "optString(...)"

    const-string v2, "0"

    const-string v3, "-1"

    const-string v4, "ZeppApi"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 312
    iget v5, v1, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->label:I

    if-nez v5, :cond_13

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 313
    iget-object v5, v1, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    iget-object v6, v1, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$token:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/jichi/ob/api/ZeppApi;->access$setCurrentToken$p(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;)V

    .line 314
    iget-object v5, v1, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    iget-object v6, v1, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$userId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/jichi/ob/api/ZeppApi;->access$setCurrentUserId$p(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;)V

    .line 316
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    move-object v7, v6

    :cond_0
    if-nez v7, :cond_1

    .line 319
    const-string/jumbo v7, "source=run.mifit.huami.com"

    goto :goto_0

    .line 320
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "source=run.mifit.huami.com&trackid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 321
    :goto_0
    iget-object v8, v1, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/v1/sport/run/history.json?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/jichi/ob/api/ZeppApi;->access$apiGet(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;)Lcom/jichi/ob/api/ZeppApi$GetResp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jichi/ob/api/ZeppApi$GetResp;->component1()I

    move-result v8

    invoke-virtual {v7}, Lcom/jichi/ob/api/ZeppApi$GetResp;->component2()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x191

    if-eq v8, v9, :cond_12

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_2

    const/16 v0, 0x78

    .line 324
    invoke-static {v7, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zepp history HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_8

    .line 327
    :cond_2
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v8, v6

    :goto_1
    if-nez v8, :cond_3

    goto/16 :goto_8

    .line 328
    :cond_3
    :try_start_2
    const-string v7, "data"

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_4

    goto/16 :goto_8

    .line 329
    :cond_4
    const-string/jumbo v8, "summary"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 331
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_2
    if-ge v11, v9, :cond_d

    .line 332
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_5

    goto/16 :goto_7

    .line 333
    :cond_5
    const-string/jumbo v13, "trackid"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v13

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v16, v13

    goto :goto_3

    :cond_6
    move-object/from16 v16, v6

    :goto_3
    if-nez v16, :cond_7

    goto/16 :goto_7

    .line 334
    :cond_7
    const-string/jumbo v13, "type"

    const/16 v14, 0x10

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 335
    invoke-static {}, Lcom/jichi/ob/api/ZeppApi;->access$getWORKOUT_TYPE_NAME$cp()Ljava/util/Map;

    move-result-object v14

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-nez v13, :cond_8

    const-string/jumbo v13, "\u8fd0\u52a8"

    :cond_8
    move-object/from16 v17, v13

    .line 336
    const-string v13, "dis"

    invoke-virtual {v12, v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    goto :goto_4

    :cond_9
    const-wide/16 v13, 0x0

    :goto_4
    move-wide/from16 v19, v13

    .line 337
    const-string v13, "run_time"

    invoke-virtual {v12, v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move/from16 v21, v13

    goto :goto_5

    :cond_a
    move/from16 v21, v10

    .line 338
    :goto_5
    iget-object v13, v1, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    const-wide/16 v22, 0x0

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_6

    :cond_b
    move-wide/from16 v14, v22

    :goto_6
    invoke-static {v13, v14, v15}, Lcom/jichi/ob/api/ZeppApi;->access$formatEpochSeconds(Lcom/jichi/ob/api/ZeppApi;J)Ljava/lang/String;

    move-result-object v18

    .line 339
    const-string/jumbo v13, "source"

    const-string v14, "run.mifit.huami.com"

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 341
    new-instance v15, Lcom/jichi/ob/model/ActivityRecord;

    move-wide/from16 v13, v22

    sget-object v22, Lcom/jichi/ob/model/DataSource;->ZEPP:Lcom/jichi/ob/model/DataSource;

    .line 342
    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    if-eqz v23, :cond_c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    :cond_c
    const-wide/16 v23, 0x3e8

    mul-long v24, v13, v23

    const/16 v27, 0x100

    const/16 v28, 0x0

    const/16 v26, 0x0

    move-object/from16 v23, v12

    .line 341
    invoke-direct/range {v15 .. v28}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 345
    :cond_d
    const-string v8, "next"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 346
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_8

    .line 348
    :cond_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    iget v9, v1, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$skip:I

    iget v10, v1, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$limit:I

    add-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x3

    if-lt v8, v9, :cond_0

    .line 350
    :cond_f
    :goto_8
    check-cast v5, Ljava/lang/Iterable;

    .line 484
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 485
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 486
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 487
    move-object v6, v5

    check-cast v6, Lcom/jichi/ob/model/ActivityRecord;

    .line 350
    invoke-virtual {v6}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v6

    .line 488
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 489
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 491
    :cond_11
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 350
    iget v0, v1, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$skip:I

    iget v3, v1, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$limit:I

    add-int/2addr v0, v3

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget v2, v1, Lcom/jichi/ob/api/ZeppApi$getActivities$2;->$skip:I

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 322
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Zepp token \u8fc7\u671f(401)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 352
    const-string v2, "Zepp getActivities error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    throw v0

    .line 312
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

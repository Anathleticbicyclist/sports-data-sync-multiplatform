.class final Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CodoonApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/CodoonApi;->fetchActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nCodoonApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CodoonApi.kt\ncom/jichi/ob/api/CodoonApi$fetchActivities$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,415:1\n1#2:416\n1669#3,8:417\n*S KotlinDebug\n*F\n+ 1 CodoonApi.kt\ncom/jichi/ob/api/CodoonApi$fetchActivities$2\n*L\n299#1:417,8\n*E\n"
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
    c = "com.jichi.ob.api.CodoonApi$fetchActivities$2"
    f = "CodoonApi.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x109
    }
    m = "invokeSuspend"
    n = {
        "out",
        "page"
    }
    s = {
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $skip:I

.field final synthetic $token:Ljava/lang/String;

.field final synthetic $userId:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/CodoonApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/CodoonApi;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/CodoonApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    iput-object p2, p0, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$userId:Ljava/lang/String;

    iput p4, p0, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$skip:I

    iput p5, p0, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$limit:I

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

    new-instance v0, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;

    iget-object v1, p0, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    iget-object v2, p0, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$userId:Ljava/lang/String;

    iget v4, p0, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$skip:I

    iget v5, p0, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$limit:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;-><init>(Lcom/jichi/ob/api/CodoonApi;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 260
    iget v2, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    iget v2, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->I$0:I

    iget-object v6, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, p1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 262
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    move-object v6, v2

    move v2, v5

    .line 265
    :goto_0
    iget-object v7, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    iget-object v8, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$token:Ljava/lang/String;

    const-string v9, "/api/get_old_route_log"

    new-array v10, v3, [Lkotlin/Pair;

    const-string v11, "limit"

    const/16 v12, 0x1f4

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v10, v4

    const-string v11, "page"

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v10, v5

    const-string/jumbo v11, "user_id"

    iget-object v12, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$userId:Ljava/lang/String;

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-static {v10}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v10

    move-object v11, v1

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v6, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->L$0:Ljava/lang/Object;

    iput v2, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->I$0:I

    iput v5, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->label:I

    invoke-static {v7, v8, v9, v10, v11}, Lcom/jichi/ob/api/CodoonApi;->access$postJson(Lcom/jichi/ob/api/CodoonApi;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    check-cast v7, Lcom/jichi/ob/api/CodoonApi$PostResp;

    invoke-virtual {v7}, Lcom/jichi/ob/api/CodoonApi$PostResp;->component1()I

    move-result v8

    invoke-virtual {v7}, Lcom/jichi/ob/api/CodoonApi$PostResp;->component2()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v9, 0x191

    if-eq v8, v9, :cond_13

    const/16 v9, 0xc8

    const/16 v10, 0x96

    if-ne v8, v9, :cond_12

    const/4 v8, 0x0

    .line 271
    :try_start_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-object v9, v8

    :goto_2
    if-eqz v9, :cond_11

    .line 273
    :try_start_3
    const-string v11, "data"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 275
    const-string v11, "log_list"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 277
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v10, v4

    :goto_3
    if-ge v10, v7, :cond_a

    .line 278
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_3

    :goto_4
    move/from16 v29, v3

    goto/16 :goto_8

    .line 279
    :cond_3
    const-string v13, "log_id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v13

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v16, v13

    goto :goto_5

    :cond_4
    move-object/from16 v16, v8

    :goto_5
    if-nez v16, :cond_5

    goto :goto_4

    .line 280
    :cond_5
    const-string v13, "route_id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v13

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v23, v13

    goto :goto_6

    :cond_6
    move-object/from16 v23, v8

    :goto_6
    if-nez v23, :cond_7

    goto :goto_4

    .line 281
    :cond_7
    const-string/jumbo v13, "sports_type"

    invoke-virtual {v12, v13, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 282
    invoke-static {}, Lcom/jichi/ob/api/CodoonApi;->access$getTYPE_NAME$cp()Ljava/util/Map;

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

    .line 284
    const-string/jumbo v13, "start_time"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "optString(...)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v25, "T"

    const-string v26, " "

    const/16 v28, 0x4

    const/16 v29, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v13

    invoke-static/range {v24 .. v29}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x13

    invoke-static {v13, v14}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 285
    const-string/jumbo v14, "total_length"

    move/from16 v29, v3

    const-wide/16 v3, 0x0

    invoke-virtual {v12, v14, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double v19, v3, v14

    .line 286
    const-string/jumbo v3, "total_time"

    const-wide/16 v14, 0x0

    invoke-virtual {v12, v3, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    .line 288
    new-instance v15, Lcom/jichi/ob/model/ActivityRecord;

    sget-object v22, Lcom/jichi/ob/model/DataSource;->CODOON:Lcom/jichi/ob/model/DataSource;

    .line 289
    sget-object v4, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    invoke-virtual {v4, v13}, Lcom/jichi/ob/util/ActivityCache$Companion;->parseStartTimeMs(Ljava/lang/String;)J

    move-result-wide v24

    const/16 v27, 0x100

    const/16 v28, 0x0

    const/16 v26, 0x0

    move/from16 v21, v3

    move-object/from16 v18, v13

    .line 288
    invoke-direct/range {v15 .. v28}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 291
    const-string v3, "is_in_room"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_9

    const-string v3, "room"

    goto :goto_7

    :cond_9
    move-object v3, v8

    :goto_7
    invoke-virtual {v15, v3}, Lcom/jichi/ob/model/ActivityRecord;->setExtra(Ljava/lang/String;)V

    .line 292
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v29

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_a
    move/from16 v29, v3

    .line 294
    const-string v3, "has_more"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/2addr v2, v5

    .line 297
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    iget v7, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$skip:I

    iget v8, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$limit:I

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x3

    if-lt v3, v7, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v3, v29

    goto/16 :goto_0

    .line 299
    :cond_c
    :goto_9
    check-cast v6, Ljava/lang/Iterable;

    .line 417
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 418
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 420
    move-object v6, v4

    check-cast v6, Lcom/jichi/ob/model/ActivityRecord;

    .line 299
    invoke-virtual {v6}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v6

    .line 421
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 422
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 424
    :cond_e
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 299
    iget v0, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$skip:I

    iget v3, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$limit:I

    add-int/2addr v0, v3

    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget v2, v1, Lcom/jichi/ob/api/CodoonApi$fetchActivities$2;->$skip:I

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 276
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v7, v10}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Codoon list \u65e0log_list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v7, v10}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Codoon list \u65e0data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v7, v10}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Codoon list \u54cd\u5e94\u975eJSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v7, v10}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Codoon list HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Codoon token \u8fc7\u671f(401)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    .line 301
    const-string v2, "Codoon getActivities error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "CodoonApi"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    throw v0
.end method

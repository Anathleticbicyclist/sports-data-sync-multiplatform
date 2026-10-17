.class final Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CodoonApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/CodoonApi;->downloadGpx(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "-[B>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCodoonApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CodoonApi.kt\ncom/jichi/ob/api/CodoonApi$downloadGpx$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,415:1\n1563#2:416\n1634#2,3:417\n*S KotlinDebug\n*F\n+ 1 CodoonApi.kt\ncom/jichi/ob/api/CodoonApi$downloadGpx$2\n*L\n343#1:416\n343#1:417,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.api.CodoonApi$downloadGpx$2"
    f = "CodoonApi.kt"
    i = {}
    l = {
        0x13b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $routeId:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/CodoonApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/CodoonApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/CodoonApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    iput-object p2, p0, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->$routeId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance p1, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;

    iget-object v0, p0, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    iget-object v1, p0, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->$token:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->$routeId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;-><init>(Lcom/jichi/ob/api/CodoonApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    const-string v0, "elevation"

    const-string v2, "Codoon \u8be6\u60c5HTTP "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 313
    iget v4, v1, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->label:I

    const-string v5, "CodoonApi"

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v4, p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 315
    :try_start_1
    iget-object v4, v1, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    iget-object v7, v1, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->$token:Ljava/lang/String;

    const-string v8, "/api/get_single_log"

    const-string v9, "route_id"

    iget-object v10, v1, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->$routeId:Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    move-object v10, v1

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput v6, v1, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->label:I

    invoke-static {v4, v7, v8, v9, v10}, Lcom/jichi/ob/api/CodoonApi;->access$postJson(Lcom/jichi/ob/api/CodoonApi;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_2

    return-object v3

    :cond_2
    :goto_0
    check-cast v4, Lcom/jichi/ob/api/CodoonApi$PostResp;

    invoke-virtual {v4}, Lcom/jichi/ob/api/CodoonApi$PostResp;->component1()I

    move-result v3

    invoke-virtual {v4}, Lcom/jichi/ob/api/CodoonApi$PostResp;->component2()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v7, 0x191

    if-eq v3, v7, :cond_e

    const/16 v7, 0xc8

    if-ne v3, v7, :cond_d

    .line 318
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_c

    .line 320
    :try_start_3
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 323
    invoke-static {}, Lcom/jichi/ob/api/CodoonApi;->access$getTYPE_NAME$cp()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "sports_type"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, "Run"

    .line 324
    :cond_3
    const-string/jumbo v4, "start_time"

    const-string v7, ""

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 325
    iget-object v7, v1, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7, v4}, Lcom/jichi/ob/api/CodoonApi;->access$parseStartTimeMs(Lcom/jichi/ob/api/CodoonApi;Ljava/lang/String;)J

    move-result-wide v7

    .line 327
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 328
    const-string v9, "points"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 330
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_8

    .line 331
    invoke-virtual {v2, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-nez v15, :cond_4

    move/from16 v16, v6

    move v6, v13

    const/16 p1, 0x3

    const/16 v17, 0x2

    :goto_3
    const/16 v22, 0x0

    goto :goto_6

    :cond_4
    move/from16 v16, v6

    .line 332
    const-string v6, "latitude"

    const/16 p1, 0x3

    const/16 v17, 0x2

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v15, v6, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v18

    .line 333
    const-string v6, "longitude"

    invoke-virtual {v15, v6, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v20

    .line 334
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_7

    const-wide/16 v22, 0x0

    cmpg-double v6, v18, v22

    if-nez v6, :cond_5

    cmpg-double v6, v20, v22

    if-nez v6, :cond_5

    goto :goto_5

    .line 335
    :cond_5
    iget-object v6, v1, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    const/16 v22, 0x0

    const-string/jumbo v12, "time_stamp"

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v9, "optString(...)"

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v12, v7, v8, v14}, Lcom/jichi/ob/api/CodoonApi;->access$parsePointTimeMs(Lcom/jichi/ob/api/CodoonApi;Ljava/lang/String;JI)J

    move-result-wide v10

    .line 336
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v13

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v15, v0, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    goto :goto_4

    :cond_6
    move v6, v13

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    :goto_4
    long-to-double v9, v10

    const/4 v11, 0x4

    .line 337
    new-array v15, v11, [D

    aput-wide v18, v15, v22

    aput-wide v20, v15, v16

    aput-wide v9, v15, v17

    aput-wide v12, v15, p1

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    :goto_5
    move v6, v13

    goto :goto_3

    :goto_6
    add-int/lit8 v14, v14, 0x1

    move v13, v6

    move/from16 v6, v16

    goto :goto_2

    :cond_8
    move/from16 v16, v6

    const/16 p1, 0x3

    const/16 v17, 0x2

    const/16 v22, 0x0

    .line 342
    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/jichi/ob/api/CodoonApi;->Companion:Lcom/jichi/ob/api/CodoonApi$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/api/CodoonApi$Companion;->getGcjConvertEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 343
    move-object v0, v4

    check-cast v0, Ljava/lang/Iterable;

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 417
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 418
    check-cast v6, [D

    .line 344
    sget-object v9, Lcom/jichi/ob/util/FitGcj02Fixer;->INSTANCE:Lcom/jichi/ob/util/FitGcj02Fixer;

    aget-wide v10, v6, v22

    aget-wide v12, v6, v16

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/jichi/ob/util/FitGcj02Fixer;->gcj02ToWgs84(DD)Lkotlin/Pair;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    .line 345
    aget-wide v14, v6, v17

    aget-wide v18, v6, p1

    const/4 v6, 0x4

    new-array v9, v6, [D

    aput-wide v10, v9, v22

    aput-wide v12, v9, v16

    aput-wide v14, v9, v17

    aput-wide v18, v9, p1

    .line 418
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 419
    :cond_9
    check-cast v2, Ljava/util/List;

    .line 347
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Codoon GCJ-02\u2192WGS-84 \u5750\u6807\u8f6c\u6362: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "\u70b9"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-interface {v4}, Ljava/util/List;->clear()V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    :cond_a
    iget-object v0, v1, Lcom/jichi/ob/api/CodoonApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/CodoonApi;

    invoke-static {v0, v4, v7, v8, v3}, Lcom/jichi/ob/api/CodoonApi;->access$buildGpx(Lcom/jichi/ob/api/CodoonApi;Ljava/util/List;JLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 321
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Codoon \u8be6\u60c5\u65e0data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Codoon \u8be6\u60c5\u89e3\u6790\u5931\u8d25"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Codoon token \u8fc7\u671f(401)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 353
    :goto_8
    const-string v2, "Codoon downloadGpx error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    throw v0
.end method

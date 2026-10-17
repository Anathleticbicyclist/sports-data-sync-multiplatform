.class final Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ZeppApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/ZeppApi;->downloadGpx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nZeppApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZeppApi.kt\ncom/jichi/ob/api/ZeppApi$downloadGpx$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,482:1\n1#2:483\n1#2:497\n1#2:513\n774#3:484\n865#3,2:485\n1617#3,9:487\n1869#3:496\n1870#3:498\n1626#3:499\n774#3:500\n865#3,2:501\n1617#3,9:503\n1869#3:512\n1870#3:514\n1626#3:515\n1563#3:516\n1634#3,3:517\n*S KotlinDebug\n*F\n+ 1 ZeppApi.kt\ncom/jichi/ob/api/ZeppApi$downloadGpx$2\n*L\n382#1:497\n384#1:513\n381#1:484\n381#1:485,2\n382#1:487,9\n382#1:496\n382#1:498\n382#1:499\n383#1:500\n383#1:501,2\n384#1:503,9\n384#1:512\n384#1:514\n384#1:515\n408#1:516\n408#1:517,3\n*E\n"
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
    c = "com.jichi.ob.api.ZeppApi$downloadGpx$2"
    f = "ZeppApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $source:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field final synthetic $trackId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/ZeppApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/ZeppApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    iput-object p2, p0, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->$trackId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;

    iget-object v1, p0, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    iget-object v2, p0, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->$source:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->$trackId:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;-><init>(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    const-string v0, ";"

    const-string v2, "longitude_latitude"

    const-string v3, "ZeppApi"

    const-string v4, "optString(...)"

    const-string v5, ""

    const-string v6, "Zepp \u8be6\u60c5HTTP "

    const-string v7, "/v1/sport/run/detail.json?"

    const-string/jumbo v8, "trackid="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 364
    iget v9, v1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->label:I

    if-nez v9, :cond_17

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 365
    iget-object v9, v1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    iget-object v10, v1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->$token:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/jichi/ob/api/ZeppApi;->access$setCurrentToken$p(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;)V

    .line 367
    :try_start_0
    iget-object v9, v1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->$source:Ljava/lang/String;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v9, "run.mifit.huami.com"

    :cond_0
    check-cast v9, Ljava/lang/String;

    .line 368
    iget-object v10, v1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->$trackId:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "&source="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 369
    iget-object v9, v1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/jichi/ob/api/ZeppApi;->access$apiGet(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;)Lcom/jichi/ob/api/ZeppApi$GetResp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jichi/ob/api/ZeppApi$GetResp;->component1()I

    move-result v8

    invoke-virtual {v7}, Lcom/jichi/ob/api/ZeppApi$GetResp;->component2()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v9, 0x191

    if-eq v8, v9, :cond_16

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_15

    .line 372
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_14

    .line 374
    :try_start_2
    const-string v7, "data"

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 377
    iget-object v8, v1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->$trackId:Ljava/lang/String;

    invoke-static {v8}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_1
    const-wide/16 v8, 0x0

    .line 380
    :goto_1
    iget-object v10, v1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    const-string/jumbo v11, "time"

    invoke-virtual {v7, v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/jichi/ob/api/ZeppApi;->access$parseLongList(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 381
    invoke-virtual {v7, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v11

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/16 v16, 0x6

    const/16 v17, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v18, v15

    const/4 v15, 0x0

    move/from16 v6, v18

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    .line 484
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/Collection;

    .line 485
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    .line 381
    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 485
    invoke-interface {v13, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 486
    :cond_3
    check-cast v13, Ljava/util/List;

    .line 484
    check-cast v13, Ljava/lang/Iterable;

    .line 487
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    .line 496
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v15, ","

    if-eqz v14, :cond_6

    :try_start_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 495
    check-cast v14, Ljava/lang/String;

    .line 382
    move-object/from16 v16, v14

    check-cast v16, Ljava/lang/CharSequence;

    new-array v14, v11, [Ljava/lang/String;

    aput-object v15, v14, v6

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v14

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_5

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-static {v14}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_4

    .line 495
    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 499
    :cond_6
    check-cast v12, Ljava/util/List;

    .line 383
    invoke-virtual {v7, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/CharSequence;

    new-array v2, v11, [Ljava/lang/String;

    aput-object v0, v2, v6

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v2

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 500
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 501
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    .line 383
    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 501
    invoke-interface {v2, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 502
    :cond_8
    check-cast v2, Ljava/util/List;

    .line 500
    check-cast v2, Ljava/lang/Iterable;

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 512
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 511
    check-cast v13, Ljava/lang/String;

    .line 384
    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/CharSequence;

    new-array v13, v11, [Ljava/lang/String;

    aput-object v15, v13, v6

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v13

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-static {v13, v11}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_a

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-static {v13}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    goto :goto_7

    :cond_a
    const/4 v13, 0x0

    :goto_7
    if-eqz v13, :cond_9

    .line 511
    invoke-interface {v0, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 515
    :cond_b
    check-cast v0, Ljava/util/List;

    .line 385
    iget-object v2, v1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    const-string v13, "altitude"

    invoke-virtual {v7, v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v13}, Lcom/jichi/ob/api/ZeppApi;->access$parseLongList(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 388
    iget-object v4, v1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    invoke-static {v4, v10}, Lcom/jichi/ob/api/ZeppApi;->access$accumulate(Lcom/jichi/ob/api/ZeppApi;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 389
    iget-object v10, v1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    invoke-static {v10, v12}, Lcom/jichi/ob/api/ZeppApi;->access$accumulate(Lcom/jichi/ob/api/ZeppApi;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 390
    iget-object v12, v1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    invoke-static {v12, v0}, Lcom/jichi/ob/api/ZeppApi;->access$accumulate(Lcom/jichi/ob/api/ZeppApi;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 392
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 393
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/List;

    move v14, v6

    :goto_8
    const/4 v15, 0x4

    const-wide/16 v16, 0x3e8

    const/16 v18, 0x3

    const/16 v19, 0x2

    if-ge v14, v12, :cond_f

    .line 395
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    const-wide v22, 0x4197d78400000000L    # 1.0E8

    div-double v20, v20, v22

    .line 396
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Number;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v24

    div-double v24, v24, v22

    const-wide/16 v22, 0x0

    cmpg-double v26, v20, v22

    if-nez v26, :cond_c

    cmpg-double v22, v24, v22

    if-nez v22, :cond_c

    move/from16 v22, v6

    move-wide/from16 v27, v8

    move/from16 p1, v11

    move/from16 v26, v12

    goto :goto_a

    .line 398
    :cond_c
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Number;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->longValue()J

    move-result-wide v22

    add-long v22, v8, v22

    move/from16 p1, v11

    move/from16 v26, v12

    mul-long v11, v22, v16

    move/from16 v22, v6

    .line 399
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const-wide/high16 v16, 0x7ff8000000000000L    # Double.NaN

    if-ge v14, v6, :cond_d

    .line 400
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    move-wide/from16 v27, v8

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const-wide/32 v29, -0x1e8480

    cmp-long v6, v8, v29

    if-eqz v6, :cond_e

    long-to-double v8, v8

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v16, v8, v16

    goto :goto_9

    :cond_d
    move-wide/from16 v27, v8

    :cond_e
    :goto_9
    long-to-double v8, v11

    .line 403
    new-array v6, v15, [D

    aput-wide v20, v6, v22

    aput-wide v24, v6, p1

    aput-wide v8, v6, v19

    aput-wide v16, v6, v18

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v14, v14, 0x1

    move/from16 v11, p1

    move/from16 v6, v22

    move/from16 v12, v26

    move-wide/from16 v8, v27

    goto/16 :goto_8

    :cond_f
    move/from16 v22, v6

    move-wide/from16 v27, v8

    move/from16 p1, v11

    .line 407
    move-object v0, v13

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/jichi/ob/api/ZeppApi;->Companion:Lcom/jichi/ob/api/ZeppApi$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/api/ZeppApi$Companion;->getGcjConvertEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 408
    move-object v0, v13

    check-cast v0, Ljava/lang/Iterable;

    .line 516
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 517
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 518
    check-cast v4, [D

    .line 409
    sget-object v6, Lcom/jichi/ob/util/FitGcj02Fixer;->INSTANCE:Lcom/jichi/ob/util/FitGcj02Fixer;

    aget-wide v8, v4, v22

    aget-wide v10, v4, p1

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/jichi/ob/util/FitGcj02Fixer;->gcj02ToWgs84(DD)Lkotlin/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    .line 410
    aget-wide v20, v4, v19

    aget-wide v23, v4, v18

    new-array v4, v15, [D

    aput-wide v8, v4, v22

    aput-wide v10, v4, p1

    aput-wide v20, v4, v19

    aput-wide v23, v4, v18

    .line 518
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 519
    :cond_10
    check-cast v2, Ljava/util/List;

    .line 412
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Zepp GCJ-02\u2192WGS-84 \u5750\u6807\u8f6c\u6362: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\u70b9"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-interface {v13}, Ljava/util/List;->clear()V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v13, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    :cond_11
    const-string/jumbo v0, "sport_type"

    invoke-virtual {v7, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v0, "running"

    :cond_12
    check-cast v0, Ljava/lang/String;

    .line 418
    iget-object v2, v1, Lcom/jichi/ob/api/ZeppApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    mul-long v8, v27, v16

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v13, v8, v9, v0}, Lcom/jichi/ob/api/ZeppApi;->access$buildGpx(Lcom/jichi/ob/api/ZeppApi;Ljava/util/List;JLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 375
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Zepp \u8be6\u60c5\u65e0data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Zepp \u8be6\u60c5\u89e3\u6790\u5931\u8d25"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Zepp token \u8fc7\u671f(401)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    .line 420
    const-string v2, "Zepp downloadGpx error"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    throw v0

    .line 364
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

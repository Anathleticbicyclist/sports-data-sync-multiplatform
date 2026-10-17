.class final Lcom/jichi/ob/api/WahooApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WahooApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/WahooApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nWahooApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WahooApi.kt\ncom/jichi/ob/api/WahooApi$getActivities$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,458:1\n216#2,2:459\n1#3:461\n*S KotlinDebug\n*F\n+ 1 WahooApi.kt\ncom/jichi/ob/api/WahooApi$getActivities$2\n*L\n266#1:459,2\n*E\n"
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
    c = "com.jichi.ob.api.WahooApi$getActivities$2"
    f = "WahooApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $offset:I

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/WahooApi;


# direct methods
.method constructor <init>(ILcom/jichi/ob/api/WahooApi;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/jichi/ob/api/WahooApi;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/WahooApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/jichi/ob/api/WahooApi$getActivities$2;->$offset:I

    iput-object p2, p0, Lcom/jichi/ob/api/WahooApi$getActivities$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    iput-object p3, p0, Lcom/jichi/ob/api/WahooApi$getActivities$2;->$token:Ljava/lang/String;

    iput p4, p0, Lcom/jichi/ob/api/WahooApi$getActivities$2;->$limit:I

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

    new-instance v0, Lcom/jichi/ob/api/WahooApi$getActivities$2;

    iget v1, p0, Lcom/jichi/ob/api/WahooApi$getActivities$2;->$offset:I

    iget-object v2, p0, Lcom/jichi/ob/api/WahooApi$getActivities$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    iget-object v3, p0, Lcom/jichi/ob/api/WahooApi$getActivities$2;->$token:Ljava/lang/String;

    iget v4, p0, Lcom/jichi/ob/api/WahooApi$getActivities$2;->$limit:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/WahooApi$getActivities$2;-><init>(ILcom/jichi/ob/api/WahooApi;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/WahooApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/WahooApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/WahooApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/WahooApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v1, p0

    const-string v2, "WahooApi"

    const-string v0, "&per_page=30"

    const-string v3, "https://api.wahooligan.com/v1/workouts?page="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 260
    iget v4, v1, Lcom/jichi/ob/api/WahooApi$getActivities$2;->label:I

    if-nez v4, :cond_10

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 263
    :try_start_0
    iget v4, v1, Lcom/jichi/ob/api/WahooApi$getActivities$2;->$offset:I

    div-int/lit8 v4, v4, 0x1e

    add-int/lit8 v5, v4, 0x1

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/jichi/ob/api/WahooApi$getActivities$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    iget-object v5, v1, Lcom/jichi/ob/api/WahooApi$getActivities$2;->$token:Ljava/lang/String;

    .line 266
    invoke-static {v3, v5}, Lcom/jichi/ob/api/WahooApi;->access$authHeaders(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 459
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 266
    invoke-virtual {v0, v6, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 268
    iget-object v3, v1, Lcom/jichi/ob/api/WahooApi$getActivities$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    invoke-static {v3}, Lcom/jichi/ob/api/WahooApi;->access$getClient$p(Lcom/jichi/ob/api/WahooApi;)Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;

    iget v0, v1, Lcom/jichi/ob/api/WahooApi$getActivities$2;->$offset:I

    iget v5, v1, Lcom/jichi/ob/api/WahooApi$getActivities$2;->$limit:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v6, v3

    check-cast v6, Lokhttp3/Response;

    .line 269
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v7

    const/16 v8, 0xc8

    const/4 v9, 0x0

    if-eq v7, v8, :cond_1

    .line 270
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActivities HTTP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 273
    :cond_1
    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    const-string/jumbo v6, "{}"

    :cond_3
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v6, "workouts"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v3, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    .line 275
    :cond_4
    :try_start_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    mul-int/lit8 v4, v4, 0x1e

    sub-int/2addr v0, v4

    .line 277
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_f

    .line 278
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-lez v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    :cond_5
    move/from16 v28, v10

    const/4 v9, 0x0

    goto/16 :goto_3

    .line 280
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v5, :cond_f

    .line 281
    const-string v12, "id"

    const-wide/16 v13, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 282
    const-string v12, "0"

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 283
    const-string v12, "name"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v12, "Wahoo\u9a91\u884c"

    :cond_7
    move-object/from16 v16, v12

    check-cast v16, Ljava/lang/String;

    .line 284
    const-string/jumbo v12, "starts"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v12, ""

    :cond_8
    check-cast v12, Ljava/lang/String;

    .line 286
    const-string v13, "distance"

    move/from16 v28, v10

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v13, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    const-wide/16 v8, 0x0

    cmpg-double v10, v13, v8

    if-gez v10, :cond_9

    .line 287
    const-string v10, "distanceKm"

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v10, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v19

    move-wide/from16 v13, v19

    :cond_9
    cmpg-double v10, v13, v8

    if-gez v10, :cond_a

    .line 288
    const-string/jumbo v10, "totalDistance"

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v10, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v19

    move-wide/from16 v13, v19

    :cond_a
    cmpg-double v10, v13, v8

    if-gez v10, :cond_b

    .line 289
    const-string v10, "distance_km"

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v10, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    :cond_b
    const-wide v17, 0x408f400000000000L    # 1000.0

    cmpl-double v10, v13, v17

    if-ltz v10, :cond_c

    div-double v13, v13, v17

    goto :goto_2

    .line 290
    :cond_c
    invoke-static {v13, v14, v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v13

    :goto_2
    move-wide/from16 v18, v13

    .line 291
    const-string v8, "duration"

    const/4 v9, 0x0

    invoke-virtual {v11, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-gtz v8, :cond_d

    .line 292
    const-string v8, "durationSec"

    invoke-virtual {v11, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    :cond_d
    if-gtz v8, :cond_e

    .line 293
    const-string/jumbo v8, "totalTime"

    invoke-virtual {v11, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    :cond_e
    move/from16 v20, v8

    .line 294
    new-instance v14, Lcom/jichi/ob/model/ActivityRecord;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v21, Lcom/jichi/ob/model/DataSource;->WAHOO:Lcom/jichi/ob/model/DataSource;

    .line 295
    sget-object v8, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    invoke-virtual {v8, v12}, Lcom/jichi/ob/util/ActivityCache$Companion;->parseStartTimeMs(Ljava/lang/String;)J

    move-result-wide v23

    const/16 v26, 0x140

    const/16 v27, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v17, v12

    .line 294
    invoke-direct/range {v14 .. v27}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    add-int/lit8 v10, v28, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_f
    move-object v0, v9

    .line 268
    :try_start_6
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object v7

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 300
    const-string v3, "getActivities error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 260
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

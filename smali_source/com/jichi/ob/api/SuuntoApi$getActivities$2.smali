.class final Lcom/jichi/ob/api/SuuntoApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SuuntoApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/SuuntoApi;->getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nSuuntoApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuuntoApi.kt\ncom/jichi/ob/api/SuuntoApi$getActivities$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,442:1\n1#2:443\n1669#3,8:444\n*S KotlinDebug\n*F\n+ 1 SuuntoApi.kt\ncom/jichi/ob/api/SuuntoApi$getActivities$2\n*L\n294#1:444,8\n*E\n"
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
    c = "com.jichi.ob.api.SuuntoApi$getActivities$2"
    f = "SuuntoApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $skip:I

.field final synthetic $subscriptionKey:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/SuuntoApi;


# direct methods
.method constructor <init>(IILcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/jichi/ob/api/SuuntoApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/SuuntoApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$skip:I

    iput p2, p0, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$limit:I

    iput-object p3, p0, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iput-object p4, p0, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$token:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$subscriptionKey:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;

    iget v1, p0, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$skip:I

    iget v2, p0, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$limit:I

    iget-object v3, p0, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v4, p0, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$token:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$subscriptionKey:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;-><init>(IILcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v1, p0

    const-string v2, "SuuntoApi"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 261
    iget v0, v1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->label:I

    if-nez v0, :cond_f

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 263
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 265
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget v6, v1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$skip:I

    iget v7, v1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$limit:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_c

    .line 266
    iget-object v5, v1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v6, v1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$token:Ljava/lang/String;

    iget-object v7, v1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$subscriptionKey:Ljava/lang/String;

    .line 267
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://cloudapi.suunto.com/v3/workouts/?filter-by-modification-time=false&limit=50&offset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 266
    invoke-static {v5, v6, v7, v8}, Lcom/jichi/ob/api/SuuntoApi;->access$buildRequest(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v5

    .line 268
    iget-object v6, v1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    invoke-static {v6}, Lcom/jichi/ob/api/SuuntoApi;->access$getClient$p(Lcom/jichi/ob/api/SuuntoApi;)Lokhttp3/OkHttpClient;

    move-result-object v6

    invoke-virtual {v6, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v6, v5

    check-cast v6, Lokhttp3/Response;

    .line 269
    new-instance v7, Lkotlin/Pair;

    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    const-string v6, ""

    :cond_2
    invoke-direct {v7, v8, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    .line 268
    :try_start_2
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0x191

    if-eq v5, v8, :cond_b

    const/16 v8, 0x1ad

    if-eq v5, v8, :cond_a

    const/16 v8, 0xc8

    if-eq v5, v8, :cond_3

    const/16 v3, 0x78

    .line 274
    invoke-static {v7, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Suunto list HTTP "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 277
    :cond_3
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-object v5, v6

    :goto_0
    if-nez v5, :cond_4

    goto/16 :goto_5

    .line 278
    :cond_4
    :try_start_4
    const-string v7, "payload"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_5

    goto/16 :goto_5

    .line 279
    :cond_5
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eqz v7, :cond_c

    .line 280
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_9

    .line 281
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_6

    :goto_2
    move/from16 v26, v7

    goto :goto_4

    .line 282
    :cond_6
    const-string/jumbo v10, "workoutKey"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    move-object v13, v10

    goto :goto_3

    :cond_7
    move-object v13, v6

    :goto_3
    if-nez v13, :cond_8

    goto :goto_2

    .line 283
    :cond_8
    const-string/jumbo v10, "startTime"

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 284
    iget-object v10, v1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    invoke-static {v10, v14, v15}, Lcom/jichi/ob/api/SuuntoApi;->access$formatTime(Lcom/jichi/ob/api/SuuntoApi;J)Ljava/lang/String;

    move-result-object v10

    .line 285
    const-string/jumbo v3, "totalDistance"

    move/from16 v26, v7

    const-wide/16 v6, 0x0

    invoke-virtual {v9, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v16, v6, v16

    .line 286
    const-string/jumbo v3, "totalTime"

    invoke-virtual {v9, v3, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v3, v6

    .line 287
    const-string/jumbo v6, "sport"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 288
    iget-object v7, v1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7, v6}, Lcom/jichi/ob/api/SuuntoApi;->access$sportToChinese(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 289
    new-instance v12, Lcom/jichi/ob/model/ActivityRecord;

    sget-object v19, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    const/16 v24, 0x100

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v13

    move/from16 v18, v3

    move-wide/from16 v21, v14

    move-object v14, v6

    move-object v15, v10

    invoke-direct/range {v12 .. v25}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v26

    const/4 v6, 0x0

    goto :goto_1

    .line 291
    :cond_9
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/2addr v4, v3

    .line 292
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v5, 0x32

    if-ge v3, v5, :cond_0

    goto :goto_5

    .line 272
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Suunto \u8bf7\u6c42\u88ab\u9650\u6d41(429)\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Suunto \u767b\u5f55\u5931\u6548(401)"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 268
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 294
    :cond_c
    :goto_5
    check-cast v0, Ljava/lang/Iterable;

    .line 444
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 445
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 446
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 447
    move-object v6, v5

    check-cast v6, Lcom/jichi/ob/model/ActivityRecord;

    .line 294
    invoke-virtual {v6}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v6

    .line 448
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 449
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 451
    :cond_e
    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .line 294
    iget v0, v1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$skip:I

    iget v3, v1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$limit:I

    add-int/2addr v0, v3

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget v3, v1, Lcom/jichi/ob/api/SuuntoApi$getActivities$2;->$skip:I

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 296
    const-string v3, "Suunto getActivities error"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    throw v0

    .line 261
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

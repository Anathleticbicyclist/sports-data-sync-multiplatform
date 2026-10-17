.class final Lcom/jichi/ob/api/XingzheApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "XingzheApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/XingzheApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/jichi/ob/model/ActivityRecord;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXingzheApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XingzheApi.kt\ncom/jichi/ob/api/XingzheApi$getActivities$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,193:1\n1#2:194\n216#3,2:195\n*S KotlinDebug\n*F\n+ 1 XingzheApi.kt\ncom/jichi/ob/api/XingzheApi$getActivities$2\n*L\n83#1:195,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
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
    c = "com.jichi.ob.api.XingzheApi$getActivities$2"
    f = "XingzheApi.kt"
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
        0x0
    }
    l = {
        0x73
    }
    m = "invokeSuspend"
    n = {
        "result",
        "url",
        "req",
        "resp",
        "body",
        "json",
        "rows",
        "fmt",
        "currentOffset",
        "take",
        "code"
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
        "I$0",
        "I$1",
        "I$2"
    }
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $offset:I

.field final synthetic $sessionId:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/XingzheApi;


# direct methods
.method constructor <init>(IILcom/jichi/ob/api/XingzheApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/jichi/ob/api/XingzheApi;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/XingzheApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->$offset:I

    iput p2, p0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->$limit:I

    iput-object p3, p0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->this$0:Lcom/jichi/ob/api/XingzheApi;

    iput-object p4, p0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->$sessionId:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;

    iget v1, p0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->$offset:I

    iget v2, p0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->$limit:I

    iget-object v3, p0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->this$0:Lcom/jichi/ob/api/XingzheApi;

    iget-object v4, p0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->$sessionId:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/XingzheApi$getActivities$2;-><init>(IILcom/jichi/ob/api/XingzheApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/XingzheApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 76
    iget v2, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->I$0:I

    iget-object v4, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$7:Ljava/lang/Object;

    check-cast v4, Ljava/text/SimpleDateFormat;

    iget-object v4, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$6:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONArray;

    iget-object v4, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$5:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$3:Ljava/lang/Object;

    check-cast v4, Lokhttp3/Response;

    iget-object v4, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$2:Ljava/lang/Object;

    check-cast v4, Lokhttp3/Request;

    iget-object v4, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v5, v3

    goto/16 :goto_6

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 78
    iget v4, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->$offset:I

    move/from16 v37, v4

    move-object v4, v2

    move/from16 v2, v37

    .line 79
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget v6, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->$limit:I

    if-ge v5, v6, :cond_d

    .line 80
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v6, v5

    const/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "https://www.imxingzhe.com/api/v1/pgworkout/?offset="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&limit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 82
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v7, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 83
    iget-object v8, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->this$0:Lcom/jichi/ob/api/XingzheApi;

    iget-object v9, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->$sessionId:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/jichi/ob/api/XingzheApi;->access$authHeaders(Lcom/jichi/ob/api/XingzheApi;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 195
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 83
    invoke-virtual {v7, v10, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v7}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    .line 85
    iget-object v8, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->this$0:Lcom/jichi/ob/api/XingzheApi;

    invoke-static {v8}, Lcom/jichi/ob/api/XingzheApi;->access$getClient$p(Lcom/jichi/ob/api/XingzheApi;)Lokhttp3/OkHttpClient;

    move-result-object v8

    invoke-virtual {v8, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    invoke-interface {v8}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v8

    .line 86
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v9

    .line 87
    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    const/16 v11, 0x191

    if-eq v9, v11, :cond_b

    const/16 v11, 0x193

    if-eq v9, v11, :cond_b

    const/16 v11, 0xc8

    if-ne v9, v11, :cond_a

    .line 90
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v12, "code"

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_9

    .line 92
    const-string v12, "data"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_d

    .line 93
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-nez v13, :cond_4

    goto/16 :goto_7

    .line 95
    :cond_4
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 96
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v14, :cond_7

    .line 97
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move/from16 v16, v2

    .line 98
    const-string v2, "id"

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    const-wide/16 v6, 0x0

    move/from16 v19, v3

    invoke-virtual {v15, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v20, v2, v6

    if-lez v20, :cond_6

    move-object/from16 v20, v8

    .line 100
    const-string/jumbo v8, "start_time"

    move-object/from16 v35, v10

    move-object/from16 v36, v11

    invoke-virtual {v15, v8, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 102
    new-instance v21, Lcom/jichi/ob/model/ActivityRecord;

    .line 103
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    move-wide/from16 v23, v6

    const-string/jumbo v6, "\u8fd0\u52a8 "

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v15, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "optString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    cmp-long v3, v10, v23

    if-lez v3, :cond_5

    .line 105
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    const-string v3, ""

    :goto_4
    move-object/from16 v24, v3

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 106
    const-string v3, "distance"

    const-wide/16 v6, 0x0

    invoke-virtual {v15, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-wide v25, 0x408f400000000000L    # 1000.0

    div-double v25, v6, v25

    .line 107
    const-string v3, "duration"

    const/4 v6, 0x0

    invoke-virtual {v15, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v27

    .line 108
    sget-object v28, Lcom/jichi/ob/model/DataSource;->XINGZHE:Lcom/jichi/ob/model/DataSource;

    const/16 v33, 0x140

    const/16 v34, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-object/from16 v23, v2

    move-wide/from16 v30, v10

    .line 102
    invoke-direct/range {v21 .. v34}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v21

    .line 101
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    move-object/from16 v20, v8

    move-object/from16 v35, v10

    move-object/from16 v36, v11

    const/4 v6, 0x0

    :goto_5
    add-int/lit8 v3, v19, 0x1

    move/from16 v2, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v20

    move-object/from16 v10, v35

    move-object/from16 v11, v36

    goto/16 :goto_3

    :cond_7
    move/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v35, v10

    move-object/from16 v36, v11

    .line 113
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v2, v5, :cond_d

    .line 114
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int v2, v16, v2

    .line 115
    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v4, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$0:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$1:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$2:Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$3:Ljava/lang/Object;

    invoke-static/range {v35 .. v35}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$4:Ljava/lang/Object;

    invoke-static/range {v36 .. v36}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$5:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$6:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->L$7:Ljava/lang/Object;

    iput v2, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->I$0:I

    iput v5, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->I$1:I

    iput v9, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->I$2:I

    const/4 v5, 0x1

    iput v5, v0, Lcom/jichi/ob/api/XingzheApi$getActivities$2;->label:I

    const-wide/16 v6, 0x96

    invoke-static {v6, v7, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_8

    return-object v1

    :cond_8
    :goto_6
    move v3, v5

    goto/16 :goto_0

    :cond_9
    move-object/from16 v36, v11

    .line 91
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "msg"

    move-object/from16 v3, v36

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u884c\u8005 API error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object/from16 v35, v10

    .line 89
    new-instance v1, Ljava/lang/Exception;

    move-object/from16 v2, v35

    invoke-static {v2, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u884c\u8005 HTTP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_b
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "\u884c\u8005\u767b\u5f55\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_c
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u7a7a\u54cd\u5e94 (HTTP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_d
    :goto_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getActivities total: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XingzheApi"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

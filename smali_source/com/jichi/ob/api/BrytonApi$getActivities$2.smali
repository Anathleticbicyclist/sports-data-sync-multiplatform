.class final Lcom/jichi/ob/api/BrytonApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BrytonApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/BrytonApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nBrytonApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrytonApi.kt\ncom/jichi/ob/api/BrytonApi$getActivities$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,262:1\n1#2:263\n216#3,2:264\n*S KotlinDebug\n*F\n+ 1 BrytonApi.kt\ncom/jichi/ob/api/BrytonApi$getActivities$2\n*L\n89#1:264,2\n*E\n"
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
    c = "com.jichi.ob.api.BrytonApi$getActivities$2"
    f = "BrytonApi.kt"
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
        0x0
    }
    l = {
        0x7c
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
        "page",
        "skipLeft",
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
        "I$0",
        "I$1",
        "I$2"
    }
.end annotation


# instance fields
.field final synthetic $cookie:Ljava/lang/String;

.field final synthetic $limit:I

.field final synthetic $offset:I

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

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/BrytonApi;


# direct methods
.method constructor <init>(IILcom/jichi/ob/api/BrytonApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/jichi/ob/api/BrytonApi;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/BrytonApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->$offset:I

    iput p2, p0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->$limit:I

    iput-object p3, p0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->this$0:Lcom/jichi/ob/api/BrytonApi;

    iput-object p4, p0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->$cookie:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;

    iget v1, p0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->$offset:I

    iget v2, p0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->$limit:I

    iget-object v3, p0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->this$0:Lcom/jichi/ob/api/BrytonApi;

    iget-object v4, p0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->$cookie:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/BrytonApi$getActivities$2;-><init>(IILcom/jichi/ob/api/BrytonApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/BrytonApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 81
    iget v2, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->label:I

    const/16 v3, 0x14

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->I$1:I

    iget v5, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->I$0:I

    iget-object v6, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$6:Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONArray;

    iget-object v6, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$5:Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONObject;

    iget-object v6, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v6, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$3:Ljava/lang/Object;

    check-cast v6, Lokhttp3/Response;

    iget-object v6, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$2:Ljava/lang/Object;

    check-cast v6, Lokhttp3/Request;

    iget-object v6, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v6, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v7, v5

    move v5, v2

    move v2, v7

    move v7, v4

    move v4, v3

    goto/16 :goto_6

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 83
    iget v5, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->$offset:I

    div-int/lit8 v6, v5, 0x14

    add-int/2addr v6, v4

    .line 84
    rem-int/2addr v5, v3

    move/from16 v34, v6

    move-object v6, v2

    move/from16 v2, v34

    .line 86
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    iget v8, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->$limit:I

    if-ge v7, v8, :cond_e

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://active.brytonsport.com/api/activity/list?page="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&limit=20"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 88
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v8, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 89
    iget-object v9, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->this$0:Lcom/jichi/ob/api/BrytonApi;

    iget-object v10, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->$cookie:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/jichi/ob/api/BrytonApi;->access$authHeaders(Lcom/jichi/ob/api/BrytonApi;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 264
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 89
    invoke-virtual {v8, v11, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {v8}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v8

    .line 91
    iget-object v9, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->this$0:Lcom/jichi/ob/api/BrytonApi;

    invoke-static {v9}, Lcom/jichi/ob/api/BrytonApi;->access$getClient$p(Lcom/jichi/ob/api/BrytonApi;)Lokhttp3/OkHttpClient;

    move-result-object v9

    invoke-virtual {v9, v8}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    invoke-interface {v9}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v9

    .line 92
    invoke-virtual {v9}, Lokhttp3/Response;->code()I

    move-result v10

    .line 93
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    const/16 v12, 0x191

    if-gt v12, v10, :cond_4

    const/16 v12, 0x194

    if-lt v10, v12, :cond_3

    goto :goto_2

    .line 94
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "\u767e\u9510\u817e\u767b\u5f55\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    const/16 v12, 0xc8

    if-ne v10, v12, :cond_c

    .line 97
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    const-string v13, "data"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    if-nez v14, :cond_6

    const-string v14, "activities"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    if-nez v14, :cond_6

    .line 99
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_5

    const-string v14, "list"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    :goto_3
    move-object v14, v13

    if-nez v14, :cond_6

    goto/16 :goto_7

    .line 100
    :cond_6
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-eqz v13, :cond_e

    .line 102
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v13, :cond_9

    if-lez v5, :cond_8

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v12

    move/from16 v19, v13

    :cond_7
    move-object v13, v9

    const/4 v9, 0x0

    goto/16 :goto_5

    .line 104
    :cond_8
    invoke-virtual {v14, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 105
    const-string v15, "activityId"

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    const-wide/16 v7, 0x0

    move-object/from16 v18, v12

    move/from16 v19, v13

    invoke-virtual {v3, v15, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v15, "id"

    invoke-virtual {v3, v15, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    cmp-long v7, v12, v7

    if-lez v7, :cond_7

    .line 108
    const-string/jumbo v7, "start_time"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "startTime"

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    new-instance v20, Lcom/jichi/ob/model/ActivityRecord;

    .line 111
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    .line 112
    const-string/jumbo v8, "title"

    const-string/jumbo v12, "\u9a91\u884c"

    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "name"

    invoke-virtual {v3, v12, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "optString(...)"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    const-string v12, "distance"

    move-object/from16 v22, v8

    move-object v13, v9

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v12, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-wide v23, 0x408f400000000000L    # 1000.0

    div-double v24, v8, v23

    .line 115
    const-string v8, "elapsedTime"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v12, "duration"

    invoke-virtual {v3, v12, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v26

    .line 116
    sget-object v27, Lcom/jichi/ob/model/DataSource;->BRYTON:Lcom/jichi/ob/model/DataSource;

    .line 117
    sget-object v3, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    invoke-virtual {v3, v7}, Lcom/jichi/ob/util/ActivityCache$Companion;->parseStartTimeMs(Ljava/lang/String;)J

    move-result-wide v29

    const/16 v32, 0x140

    const/16 v33, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    move-object/from16 v23, v7

    .line 110
    invoke-direct/range {v20 .. v33}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v20

    .line 109
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    iget v7, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->$limit:I

    if-ge v3, v7, :cond_a

    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-object v9, v13

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v12, v18

    move/from16 v13, v19

    const/16 v3, 0x14

    goto/16 :goto_4

    :cond_9
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object v13, v9

    move-object/from16 v18, v12

    .line 122
    :cond_a
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_e

    add-int/lit8 v2, v2, 0x1

    .line 124
    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v6, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$0:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$1:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$2:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$4:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$5:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->L$6:Ljava/lang/Object;

    iput v2, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->I$0:I

    iput v5, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->I$1:I

    iput v10, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->I$2:I

    const/4 v7, 0x1

    iput v7, v0, Lcom/jichi/ob/api/BrytonApi$getActivities$2;->label:I

    const-wide/16 v8, 0xc8

    invoke-static {v8, v9, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_b

    return-object v1

    :cond_b
    :goto_6
    move v3, v4

    move v4, v7

    goto/16 :goto_0

    .line 95
    :cond_c
    new-instance v1, Ljava/lang/Exception;

    invoke-static {v11, v12}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u767e\u9510\u817e HTTP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 93
    :cond_d
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u7a7a\u54cd\u5e94 (HTTP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_e
    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getActivities: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrytonApi"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

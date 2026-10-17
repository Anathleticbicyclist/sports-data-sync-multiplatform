.class final Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BlackbirdApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/BlackbirdApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nBlackbirdApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlackbirdApi.kt\ncom/jichi/ob/api/BlackbirdApi$getActivities$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,831:1\n1#2:832\n216#3,2:833\n*S KotlinDebug\n*F\n+ 1 BlackbirdApi.kt\ncom/jichi/ob/api/BlackbirdApi$getActivities$2\n*L\n135#1:833,2\n*E\n"
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
    c = "com.jichi.ob.api.BlackbirdApi$getActivities$2"
    f = "BlackbirdApi.kt"
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
        0xab
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
        "lastRecordId",
        "fetched",
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
        "J$0",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $cookie:Ljava/lang/String;

.field final synthetic $limit:I

.field final synthetic $offset:I

.field I$0:I

.field I$1:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/BlackbirdApi;


# direct methods
.method constructor <init>(ILcom/jichi/ob/api/BlackbirdApi;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/jichi/ob/api/BlackbirdApi;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->$limit:I

    iput-object p2, p0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    iput p3, p0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->$offset:I

    iput-object p4, p0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->$cookie:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;

    iget v1, p0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->$limit:I

    iget-object v2, p0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    iget v3, p0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->$offset:I

    iget-object v4, p0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->$cookie:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;-><init>(ILcom/jichi/ob/api/BlackbirdApi;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 127
    iget v2, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->label:I

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->I$0:I

    iget-wide v7, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->J$0:J

    iget-object v9, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$6:Ljava/lang/Object;

    check-cast v9, Lorg/json/JSONArray;

    iget-object v9, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$5:Ljava/lang/Object;

    check-cast v9, Lorg/json/JSONObject;

    iget-object v9, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v9, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$3:Ljava/lang/Object;

    check-cast v9, Lokhttp3/Response;

    iget-object v9, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$2:Ljava/lang/Object;

    check-cast v9, Lokhttp3/Request;

    iget-object v9, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v9, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v6, v4

    move-wide v3, v7

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    move-object v9, v2

    const/4 v2, 0x0

    const-wide/16 v7, 0x0

    .line 132
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    iget v11, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->$limit:I

    if-ge v10, v11, :cond_f

    .line 133
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "https://www.blackbirdsport.com/api/records?lastRecordId="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&pageSize=100"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 134
    new-instance v11, Lokhttp3/Request$Builder;

    invoke-direct {v11}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v11, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 135
    iget-object v12, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    iget-object v13, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->$cookie:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/jichi/ob/api/BlackbirdApi;->access$authHeaders(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 833
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 135
    invoke-virtual {v11, v14, v13}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {v11}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v11

    .line 137
    iget-object v12, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    invoke-static {v12}, Lcom/jichi/ob/api/BlackbirdApi;->access$getClient$p(Lcom/jichi/ob/api/BlackbirdApi;)Lokhttp3/OkHttpClient;

    move-result-object v12

    invoke-virtual {v12, v11}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v12

    invoke-interface {v12}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v12

    .line 138
    invoke-virtual {v12}, Lokhttp3/Response;->code()I

    move-result v13

    .line 139
    invoke-virtual {v12}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_e

    const/16 v15, 0x191

    if-gt v15, v13, :cond_4

    const/16 v15, 0x194

    if-lt v13, v15, :cond_3

    goto :goto_2

    .line 140
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "\u9ed1\u9e1f\u767b\u5f55\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    const/16 v15, 0xc8

    if-ne v13, v15, :cond_d

    .line 143
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    const-string v4, "content"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v4, "data"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v4, "records"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_5

    goto/16 :goto_8

    .line 146
    :cond_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-eqz v16, :cond_f

    .line 148
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_b

    .line 149
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    move/from16 p1, v2

    .line 150
    const-string v2, "id"

    move/from16 v20, v3

    move-object/from16 v19, v4

    move-wide/from16 v21, v7

    const-wide/16 v3, 0x0

    invoke-virtual {v6, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v2, "recordId"

    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-lez v2, :cond_a

    add-int/lit8 v2, p1, 0x1

    .line 156
    iget v3, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->$offset:I

    if-le v2, v3, :cond_9

    .line 159
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    .line 160
    const-string/jumbo v3, "title"

    const-string v4, ""

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_6

    const-string v4, "null"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_7

    const-string/jumbo v3, "\u9a91\u884c"

    :cond_7
    move-object/from16 v23, v3

    .line 161
    iget-object v3, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    const-string/jumbo v4, "startTime"

    move-wide/from16 v35, v7

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v4, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/jichi/ob/api/BlackbirdApi;->access$formatStartTime(Lcom/jichi/ob/api/BlackbirdApi;J)Ljava/lang/String;

    move-result-object v24

    .line 162
    const-string v3, "distance"

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v3, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    const-wide v25, 0x408f400000000000L    # 1000.0

    div-double v25, v10, v25

    .line 163
    const-string v3, "duration"

    const/4 v10, 0x0

    invoke-virtual {v6, v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v27

    .line 164
    sget-object v28, Lcom/jichi/ob/model/DataSource;->BLACKBIRD:Lcom/jichi/ob/model/DataSource;

    .line 165
    invoke-virtual {v6, v4, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v30

    .line 158
    new-instance v21, Lcom/jichi/ob/model/ActivityRecord;

    const/16 v29, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x140

    const/16 v34, 0x0

    invoke-direct/range {v21 .. v34}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v21

    .line 157
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    iget v4, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->$limit:I

    if-ge v3, v4, :cond_8

    goto :goto_5

    :cond_8
    move-wide/from16 v3, v35

    goto :goto_6

    :cond_9
    move-wide/from16 v35, v7

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    goto :goto_5

    :cond_a
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move/from16 v2, p1

    move-wide/from16 v35, v21

    :goto_5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move/from16 v3, v20

    move-wide/from16 v7, v35

    goto/16 :goto_3

    :cond_b
    move/from16 p1, v2

    move-object/from16 v19, v4

    move-wide/from16 v21, v7

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-wide/from16 v3, v21

    .line 170
    :goto_6
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_f

    .line 171
    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v9, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$0:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$1:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$2:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$3:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$4:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$5:Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->L$6:Ljava/lang/Object;

    iput-wide v3, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->J$0:J

    iput v2, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->I$0:I

    iput v13, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->I$1:I

    const/4 v6, 0x1

    iput v6, v0, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;->label:I

    const-wide/16 v11, 0xc8

    invoke-static {v11, v12, v5}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_c

    return-object v1

    :cond_c
    :goto_7
    move-wide v7, v3

    move v4, v6

    goto/16 :goto_0

    .line 141
    :cond_d
    new-instance v1, Ljava/lang/Exception;

    invoke-static {v14, v15}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u9ed1\u9e1f HTTP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 139
    :cond_e
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u7a7a\u54cd\u5e94 (HTTP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_f
    :goto_8
    invoke-interface {v9}, Ljava/util/List;->size()I

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

    const-string v2, "BlackbirdApi"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9
.end method

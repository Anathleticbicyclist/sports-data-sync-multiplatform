.class final Lcom/jichi/ob/api/MageneApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MageneApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/MageneApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.MageneApi$getActivities$2"
    f = "MageneApi.kt"
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
        0x0,
        0x0,
        0x0
    }
    l = {
        0x114
    }
    m = "invokeSuspend"
    n = {
        "result",
        "page",
        "body",
        "req",
        "resp",
        "respBody",
        "json",
        "data",
        "rows",
        "pagination",
        "skipLeft",
        "code",
        "hasMore"
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
        "I$0",
        "I$1",
        "I$2"
    }
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $skip:I

.field final synthetic $token:Ljava/lang/String;

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

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/MageneApi;


# direct methods
.method constructor <init>(IILjava/lang/String;Lcom/jichi/ob/api/MageneApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/MageneApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/MageneApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->$skip:I

    iput p2, p0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->$limit:I

    iput-object p3, p0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->this$0:Lcom/jichi/ob/api/MageneApi;

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

    new-instance v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;

    iget v1, p0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->$skip:I

    iget v2, p0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->$limit:I

    iget-object v3, p0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->$token:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->this$0:Lcom/jichi/ob/api/MageneApi;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/MageneApi$getActivities$2;-><init>(IILjava/lang/String;Lcom/jichi/ob/api/MageneApi;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/MageneApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/MageneApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/MageneApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/MageneApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 203
    iget v2, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->label:I

    const/16 v3, 0x14

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->I$0:I

    iget-object v5, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$9:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$8:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONArray;

    iget-object v5, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$7:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v5, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lokhttp3/Response;

    iget-object v5, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$3:Ljava/lang/Object;

    check-cast v5, Lokhttp3/Request;

    iget-object v5, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$2:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v6, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v8, v3

    move v3, v4

    goto/16 :goto_a

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 206
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v6, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->$skip:I

    div-int/2addr v6, v3

    add-int/2addr v6, v4

    iput v6, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 207
    iget v6, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->$skip:I

    rem-int/2addr v6, v3

    move/from16 v37, v6

    move-object v6, v2

    move/from16 v2, v37

    .line 208
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    iget v8, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->$limit:I

    if-ge v7, v8, :cond_16

    .line 209
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 210
    const-string v8, "page"

    iget v9, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    const-string v8, "limit"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    .line 214
    const-string v9, "https://otm.onelap.cn/api/otm/ride_record/list"

    invoke-virtual {v8, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 215
    const-string v9, "Authorization"

    iget-object v10, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->$token:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 216
    const-string v9, "User-Agent"

    const-string v10, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0"

    invoke-virtual {v8, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 217
    const-string v9, "Origin"

    const-string v10, "https://otm.onelap.cn"

    invoke-virtual {v8, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 218
    const-string v9, "Referer"

    const-string v10, "https://otm.onelap.cn/calendar"

    invoke-virtual {v8, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 219
    sget-object v9, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "toString(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->this$0:Lcom/jichi/ob/api/MageneApi;

    invoke-static {v11}, Lcom/jichi/ob/api/MageneApi;->access$getJSON$p(Lcom/jichi/ob/api/MageneApi;)Lokhttp3/MediaType;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v9

    invoke-virtual {v8, v9}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 220
    invoke-virtual {v8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v8

    .line 221
    iget-object v9, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->this$0:Lcom/jichi/ob/api/MageneApi;

    invoke-static {v9}, Lcom/jichi/ob/api/MageneApi;->access$getClient$p(Lcom/jichi/ob/api/MageneApi;)Lokhttp3/OkHttpClient;

    move-result-object v9

    invoke-virtual {v9, v8}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    invoke-interface {v9}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v9

    .line 222
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v10

    if-eqz v10, :cond_15

    invoke-virtual {v10}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_15

    .line 223
    invoke-virtual {v9}, Lokhttp3/Response;->code()I

    move-result v11

    const-string/jumbo v12, "\u8fc8\u91d1\u767b\u5f55\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    const/16 v13, 0x191

    if-eq v11, v13, :cond_14

    .line 224
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    const-string v14, "code"

    const/4 v15, -0x1

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    if-eq v14, v13, :cond_13

    const/16 v12, 0xc8

    if-ne v14, v12, :cond_12

    .line 229
    const-string v12, "data"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_2

    goto/16 :goto_b

    .line 230
    :cond_2
    const-string v13, "list"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    if-eqz v13, :cond_16

    .line 231
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-nez v15, :cond_3

    goto/16 :goto_b

    .line 233
    :cond_3
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v15

    move/from16 v16, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v15, :cond_d

    if-lez v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    move/from16 v17, v3

    move-object/from16 v18, v7

    :goto_2
    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v11

    goto/16 :goto_8

    .line 235
    :cond_4
    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    move/from16 v17, v3

    .line 236
    const-string v3, "id"

    move-object/from16 v18, v7

    const-string v7, ""

    invoke-virtual {v4, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v19, v3

    check-cast v19, Ljava/lang/CharSequence;

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-nez v19, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v33, v8

    .line 238
    const-string/jumbo v8, "start_riding_time"

    move-object/from16 v34, v9

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v35, v10

    move-object/from16 v36, v11

    const-wide/16 v10, 0x0

    .line 239
    invoke-virtual {v4, v8, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v19

    const-wide/32 v21, 0x3b9aca00

    cmp-long v8, v19, v21

    if-lez v8, :cond_7

    const-wide v21, 0xe8d4a51000L

    cmp-long v8, v19, v21

    if-lez v8, :cond_6

    goto :goto_3

    :cond_6
    const-wide/16 v21, 0x3e8

    mul-long v19, v19, v21

    goto :goto_3

    :cond_7
    move-wide/from16 v19, v10

    :goto_3
    cmp-long v8, v19, v10

    if-nez v8, :cond_9

    .line 242
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v9

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 244
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd HH:mm:ss"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 245
    const-string v10, "Asia/Shanghai"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 246
    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_8
    const-wide/16 v10, 0x0

    goto :goto_4

    :catch_0
    :cond_9
    move-wide/from16 v10, v19

    .line 251
    :goto_4
    iget-object v8, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->this$0:Lcom/jichi/ob/api/MageneApi;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v8, v10, v11, v9}, Lcom/jichi/ob/api/MageneApi;->access$normalizeToBeijing(Lcom/jichi/ob/api/MageneApi;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 252
    const-string v9, "name"

    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v7

    .line 253
    const-string v7, "null"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move-object/from16 v7, v19

    goto :goto_5

    :cond_a
    move-object v7, v9

    .line 254
    :goto_5
    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_c

    const/16 v7, 0xa

    .line 255
    invoke-static {v8, v7}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 256
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " \u9a91\u884c"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_b
    const/16 v7, 0x8

    invoke-static {v3, v7}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v20, v3

    const-string/jumbo v3, "\u9a91\u884c "

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_7

    :cond_c
    :goto_6
    move-object/from16 v20, v3

    .line 254
    :goto_7
    move-object/from16 v21, v7

    check-cast v21, Ljava/lang/String;

    .line 259
    new-instance v19, Lcom/jichi/ob/model/ActivityRecord;

    .line 261
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 263
    const-string v3, "distance_km"

    move-object/from16 v22, v8

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v3, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v23

    .line 264
    const-string/jumbo v3, "time_seconds"

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    .line 265
    sget-object v26, Lcom/jichi/ob/model/DataSource;->MAGENE:Lcom/jichi/ob/model/DataSource;

    const/16 v31, 0x140

    const/16 v32, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    move-wide/from16 v28, v10

    .line 259
    invoke-direct/range {v19 .. v32}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v19

    .line 258
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    iget v4, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->$limit:I

    if-ge v3, v4, :cond_e

    :goto_8
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v7, v18

    move-object/from16 v8, v33

    move-object/from16 v9, v34

    move-object/from16 v10, v35

    move-object/from16 v11, v36

    goto/16 :goto_1

    :cond_d
    move-object/from16 v18, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v11

    .line 272
    :cond_e
    const-string v3, "pagination"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 273
    const-string v4, "has_more"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_9

    :cond_f
    const/4 v7, 0x0

    move v4, v7

    :goto_9
    if-eqz v4, :cond_16

    .line 274
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/16 v8, 0x14

    if-ge v7, v8, :cond_10

    goto/16 :goto_b

    .line 275
    :cond_10
    iget v7, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 276
    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$1:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$2:Ljava/lang/Object;

    invoke-static/range {v33 .. v33}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$3:Ljava/lang/Object;

    invoke-static/range {v34 .. v34}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$4:Ljava/lang/Object;

    invoke-static/range {v35 .. v35}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$5:Ljava/lang/Object;

    invoke-static/range {v36 .. v36}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$6:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$7:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$8:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->L$9:Ljava/lang/Object;

    iput v2, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->I$0:I

    iput v14, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->I$1:I

    iput v4, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->I$2:I

    move/from16 v3, v16

    iput v3, v0, Lcom/jichi/ob/api/MageneApi$getActivities$2;->label:I

    const-wide/16 v9, 0x96

    invoke-static {v9, v10, v7}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_11

    return-object v1

    :cond_11
    :goto_a
    move v4, v3

    move v3, v8

    goto/16 :goto_0

    :cond_12
    move-object/from16 v35, v10

    move-object/from16 v36, v11

    .line 227
    new-instance v1, Ljava/lang/Exception;

    const/16 v2, 0x64

    move-object/from16 v3, v35

    invoke-static {v3, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    move-object/from16 v4, v36

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8fc8\u91d1\u5217\u8868\u9519\u8bef: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_13
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_14
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_15
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "\u5217\u8868\u7a7a\u54cd\u5e94"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_16
    :goto_b
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

    const-string v2, "MageneApi"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

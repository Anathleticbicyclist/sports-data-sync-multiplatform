.class final Lcom/jichi/ob/api/IgpsportApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IgpsportApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/IgpsportApi;->getActivities(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nIgpsportApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IgpsportApi.kt\ncom/jichi/ob/api/IgpsportApi$getActivities$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,380:1\n1#2:381\n1#2:398\n216#3,2:382\n1563#4:384\n1634#4,3:385\n1617#4,9:388\n1869#4:397\n1870#4:399\n1626#4:400\n*S KotlinDebug\n*F\n+ 1 IgpsportApi.kt\ncom/jichi/ob/api/IgpsportApi$getActivities$2\n*L\n219#1:398\n189#1:382,2\n214#1:384\n214#1:385,3\n219#1:388,9\n219#1:397\n219#1:399\n219#1:400\n*E\n"
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
    c = "com.jichi.ob.api.IgpsportApi$getActivities$2"
    f = "IgpsportApi.kt"
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
        0x115
    }
    m = "invokeSuspend"
    n = {
        "result",
        "url",
        "req",
        "resp",
        "body",
        "json",
        "data",
        "rows",
        "need",
        "currentPage",
        "fetched",
        "code",
        "apiCode"
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
        "I$2",
        "I$3",
        "I$4"
    }
.end annotation


# instance fields
.field final synthetic $intl:Z

.field final synthetic $limit:I

.field final synthetic $offset:I

.field final synthetic $token:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field I$4:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/IgpsportApi;


# direct methods
.method constructor <init>(IIZLcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcom/jichi/ob/api/IgpsportApi;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/IgpsportApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$offset:I

    iput p2, p0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$limit:I

    iput-boolean p3, p0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$intl:Z

    iput-object p4, p0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->this$0:Lcom/jichi/ob/api/IgpsportApi;

    iput-object p5, p0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$token:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;

    iget v1, p0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$offset:I

    iget v2, p0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$limit:I

    iget-boolean v3, p0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$intl:Z

    iget-object v4, p0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->this$0:Lcom/jichi/ob/api/IgpsportApi;

    iget-object v5, p0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$token:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;-><init>(IIZLcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 54

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 180
    iget v2, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->label:I

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->I$2:I

    iget v5, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->I$1:I

    iget v6, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->I$0:I

    iget-object v7, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$7:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONArray;

    iget-object v7, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$6:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    iget-object v7, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$5:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    iget-object v7, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$4:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v7, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$3:Ljava/lang/Object;

    check-cast v7, Lokhttp3/Response;

    iget-object v7, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$2:Ljava/lang/Object;

    check-cast v7, Lokhttp3/Request;

    iget-object v7, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v7, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v14, v4

    const/4 v15, 0x0

    goto/16 :goto_e

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 183
    iget v5, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$offset:I

    iget v6, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$limit:I

    add-int/2addr v5, v6

    move-object v7, v2

    move v6, v5

    const/4 v2, 0x0

    move v5, v4

    .line 186
    :goto_0
    const-string v8, "IgpsportApi"

    if-ge v2, v6, :cond_25

    .line 187
    sget-object v9, Lcom/jichi/ob/api/IgpsportApi;->Companion:Lcom/jichi/ob/api/IgpsportApi$Companion;

    iget-boolean v10, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$intl:Z

    invoke-static {v9, v10}, Lcom/jichi/ob/api/IgpsportApi$Companion;->access$activityUrl(Lcom/jichi/ob/api/IgpsportApi$Companion;Z)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?pageNo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&pageSize=20&reqType=0&sort=1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 188
    new-instance v10, Lokhttp3/Request$Builder;

    invoke-direct {v10}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v10, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v10

    .line 189
    iget-object v11, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->this$0:Lcom/jichi/ob/api/IgpsportApi;

    iget-object v12, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$token:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/jichi/ob/api/IgpsportApi;->access$authHeaders(Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 382
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 189
    invoke-virtual {v10, v13, v12}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual {v10}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v10

    .line 191
    iget-object v11, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->this$0:Lcom/jichi/ob/api/IgpsportApi;

    invoke-static {v11}, Lcom/jichi/ob/api/IgpsportApi;->access$getClient$p(Lcom/jichi/ob/api/IgpsportApi;)Lokhttp3/OkHttpClient;

    move-result-object v11

    invoke-virtual {v11, v10}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v11

    invoke-interface {v11}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v11

    .line 192
    invoke-virtual {v11}, Lokhttp3/Response;->code()I

    move-result v12

    .line 193
    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v13

    const-string v14, ")"

    if-eqz v13, :cond_24

    invoke-virtual {v13}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_24

    const/16 v15, 0x191

    .line 194
    const-string v3, "iGPSPORT\u767b\u5f55\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    if-eq v12, v15, :cond_23

    const/16 v15, 0xc8

    if-ne v12, v15, :cond_22

    .line 196
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v4, "code"

    move/from16 p1, v2

    const/4 v2, -0x1

    invoke-virtual {v15, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 198
    const-string v4, "data"

    move/from16 v18, v5

    const/4 v5, 0x2

    if-eqz v2, :cond_5

    .line 199
    const-string v1, "Unknown"

    invoke-virtual {v15, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "message"

    invoke-virtual {v15, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v6, "token"

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "\u767b\u5f55"

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v6, v8, v5, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 201
    :cond_3
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "iGPSPORT API error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (code="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_5
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v3, v15

    .line 204
    :cond_6
    const-string v4, "rows"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_7

    const-string v4, "list"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_7

    goto/16 :goto_f

    .line 205
    :cond_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-eqz v14, :cond_25

    .line 207
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    move/from16 v19, p1

    move-object/from16 v20, v3

    move/from16 p1, v5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v14, :cond_1f

    const/16 v21, 0x14

    add-int/lit8 v3, v19, 0x1

    move-object/from16 v22, v9

    .line 209
    iget v9, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$offset:I

    if-le v3, v9, :cond_1e

    .line 210
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    move-object/from16 v23, v4

    .line 211
    const-string v4, "id"

    move/from16 v24, v5

    const-string v5, ""

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v25, v10

    const-string v10, "rideId"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "RideId"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    iget v10, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$offset:I

    const/16 v17, 0x1

    add-int/lit8 v10, v10, 0x1

    const-string v19, "StartTime"

    move-object/from16 v40, v11

    const-string v11, "Title"

    const-string/jumbo v26, "startDate"

    move/from16 v41, v14

    const/16 v27, 0x6

    const/16 v28, 0x5

    const/16 v29, 0x4

    const/16 v30, 0x3

    if-ne v3, v10, :cond_11

    .line 214
    invoke-virtual {v9}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    move/from16 v42, v3

    const/4 v3, 0x0

    invoke-static {v3, v14}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    .line 384
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v44, v13

    move-object/from16 v43, v15

    const/16 v15, 0xa

    invoke-static {v14, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 385
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    move-object v14, v13

    check-cast v14, Lkotlin/collections/IntIterator;

    invoke-virtual {v14}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v14

    .line 214
    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v14

    .line 386
    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 387
    :cond_8
    check-cast v3, Ljava/util/List;

    .line 384
    move-object/from16 v45, v3

    check-cast v45, Ljava/lang/Iterable;

    .line 214
    const-string v3, ","

    move-object/from16 v46, v3

    check-cast v46, Ljava/lang/CharSequence;

    const/16 v52, 0x3e

    const/16 v53, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    invoke-static/range {v45 .. v53}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_5

    :cond_9
    move/from16 v42, v3

    move-object/from16 v44, v13

    move-object/from16 v43, v15

    :goto_5
    const-string v3, "(\u65e0)"

    :cond_a
    const/16 v10, 0x18

    .line 215
    new-array v10, v10, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v19, v10, v16

    const-string/jumbo v13, "startTime"

    const/16 v17, 0x1

    aput-object v13, v10, v17

    const-string/jumbo v13, "start_time"

    aput-object v13, v10, p1

    const-string v13, "RideDate"

    aput-object v13, v10, v30

    const-string v13, "rideDate"

    aput-object v13, v10, v29

    const-string v13, "ride_date"

    aput-object v13, v10, v28

    .line 216
    const-string v13, "SportTime"

    aput-object v13, v10, v27

    const/4 v13, 0x7

    const-string/jumbo v14, "sportTime"

    aput-object v14, v10, v13

    const/16 v13, 0x8

    const-string v14, "BeginTime"

    aput-object v14, v10, v13

    const/16 v13, 0x9

    const-string v14, "beginTime"

    aput-object v14, v10, v13

    const-string v13, "RideTime"

    const/16 v31, 0xa

    aput-object v13, v10, v31

    const/16 v13, 0xb

    const-string v14, "rideTime"

    aput-object v14, v10, v13

    const/16 v13, 0xc

    .line 217
    const-string v14, "createTime"

    aput-object v14, v10, v13

    const/16 v13, 0xd

    const-string v14, "CreateTime"

    aput-object v14, v10, v13

    const/16 v13, 0xe

    const-string/jumbo v14, "start_date"

    aput-object v14, v10, v13

    const/16 v13, 0xf

    aput-object v26, v10, v13

    const/16 v13, 0x10

    const-string v14, "Date"

    aput-object v14, v10, v13

    const/16 v13, 0x11

    const-string v14, "date"

    aput-object v14, v10, v13

    const/16 v13, 0x12

    const-string v14, "Time"

    aput-object v14, v10, v13

    const/16 v13, 0x13

    const-string/jumbo v14, "time"

    aput-object v14, v10, v13

    .line 218
    const-string v13, "StartTimeStr"

    aput-object v13, v10, v21

    const/16 v13, 0x15

    const-string/jumbo v14, "startTimeStr"

    aput-object v14, v10, v13

    const/16 v13, 0x16

    const-string v14, "StartDate"

    aput-object v14, v10, v13

    const/16 v13, 0x17

    aput-object v26, v10, v13

    .line 215
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 219
    check-cast v10, Ljava/lang/Iterable;

    .line 388
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/Collection;

    .line 397
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 396
    check-cast v14, Ljava/lang/String;

    .line 220
    invoke-virtual {v9, v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 221
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v32, v15

    check-cast v32, Ljava/lang/CharSequence;

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->length()I

    move-result v32

    if-lez v32, :cond_b

    move-object/from16 v32, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, "="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_b
    move-object/from16 v32, v10

    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_c

    .line 396
    invoke-interface {v13, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object/from16 v10, v32

    goto :goto_6

    .line 400
    :cond_d
    check-cast v13, Ljava/util/List;

    .line 223
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "===== iGPSPORT\u9996\u6d3b\u52a8\u8c03\u8bd5 ===== keys="

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    move-object/from16 v45, v13

    check-cast v45, Ljava/lang/Iterable;

    const-string v10, ", "

    move-object/from16 v46, v10

    check-cast v46, Ljava/lang/CharSequence;

    const/16 v52, 0x3e

    const/16 v53, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    invoke-static/range {v45 .. v53}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_e

    const-string v10, "(\u5168\u90e8\u4e3a\u7a7a)"

    :cond_e
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "===== \u65f6\u95f4\u5b57\u6bb5: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " ====="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v10, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->this$0:Lcom/jichi/ob/api/IgpsportApi;

    invoke-virtual {v10}, Lcom/jichi/ob/api/IgpsportApi;->getDebugHook()Lkotlin/jvm/functions/Function1;

    move-result-object v10

    if-eqz v10, :cond_10

    const-string v13, ", "

    move-object/from16 v46, v13

    check-cast v46, Ljava/lang/CharSequence;

    const/16 v52, 0x3e

    const/16 v53, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    invoke-static/range {v45 .. v53}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_f

    const-string v13, "(\u7a7a)"

    :cond_f
    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v45, v8

    const-string v8, "iGPSPORT\u9996\u6761\u5b57\u6bb5: "

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\n\u65f6\u95f4\u5b57\u6bb5: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " title="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " id="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_8

    :cond_10
    move-object/from16 v45, v8

    goto :goto_8

    :cond_11
    move/from16 v42, v3

    move-object/from16 v45, v8

    move-object/from16 v44, v13

    move-object/from16 v43, v15

    .line 228
    :goto_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v4

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_12

    move/from16 v14, p1

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_c

    .line 231
    :cond_12
    const-string v3, "fileUrl"

    invoke-virtual {v9, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "FileUrl"

    invoke-virtual {v9, v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    const-string v8, "downloadUrl"

    invoke-virtual {v9, v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    const-string v8, "DownloadUrl"

    invoke-virtual {v9, v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    const-string v8, "Distance"

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v8, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v32

    const-wide/16 v13, 0x0

    cmpg-double v8, v32, v13

    if-gez v8, :cond_13

    .line 234
    const-string v8, "distance"

    move-wide/from16 v36, v13

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v8, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v32

    goto :goto_9

    :cond_13
    move-wide/from16 v36, v13

    :goto_9
    cmpg-double v8, v32, v36

    if-gez v8, :cond_14

    .line 235
    const-string/jumbo v8, "sportDistance"

    move-wide/from16 v13, v36

    invoke-virtual {v9, v8, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v32

    :cond_14
    const-wide v13, 0x408f400000000000L    # 1000.0

    cmpl-double v8, v32, v13

    if-ltz v8, :cond_15

    const-wide v13, 0x408f400000000000L    # 1000.0

    div-double v32, v32, v13

    .line 240
    :cond_15
    iget-object v8, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->this$0:Lcom/jichi/ob/api/IgpsportApi;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v8, v9}, Lcom/jichi/ob/api/IgpsportApi;->access$probeTimeField(Lcom/jichi/ob/api/IgpsportApi;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xf

    .line 242
    new-array v10, v10, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v19, v10, v16

    const-string/jumbo v13, "startTime"

    const/16 v17, 0x1

    aput-object v13, v10, v17

    const-string/jumbo v13, "start_time"

    aput-object v13, v10, p1

    const-string v13, "RideDate"

    aput-object v13, v10, v30

    const-string v13, "rideDate"

    aput-object v13, v10, v29

    const-string v13, "BeginTime"

    aput-object v13, v10, v28

    const-string v13, "beginTime"

    aput-object v13, v10, v27

    const/4 v13, 0x7

    .line 243
    const-string v14, "createTime"

    aput-object v14, v10, v13

    const/16 v13, 0x8

    const-string v14, "CreateTime"

    aput-object v14, v10, v13

    const/16 v13, 0x9

    const-string v14, "RideTime"

    aput-object v14, v10, v13

    const-string v13, "rideTime"

    const/16 v31, 0xa

    aput-object v13, v10, v31

    const/16 v13, 0xb

    const-string/jumbo v14, "start_date"

    aput-object v14, v10, v13

    const/16 v13, 0xc

    aput-object v26, v10, v13

    const/16 v13, 0xd

    const-string v14, "Date"

    aput-object v14, v10, v13

    const/16 v13, 0xe

    const-string v14, "date"

    aput-object v14, v10, v13

    .line 242
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_16
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-wide/16 v14, 0x0

    if-eqz v13, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 244
    invoke-virtual {v9, v13, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v34

    const-wide/32 v36, 0x3b9aca00

    cmp-long v13, v34, v36

    if-lez v13, :cond_16

    const-wide v36, 0xe8d4a51000L

    cmp-long v10, v34, v36

    if-lez v10, :cond_17

    goto :goto_a

    :cond_17
    const-wide/16 v36, 0x3e8

    mul-long v34, v34, v36

    goto :goto_a

    :cond_18
    move-wide/from16 v34, v14

    :goto_a
    cmp-long v10, v34, v14

    if-gtz v10, :cond_19

    .line 247
    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_19

    sget-object v10, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    invoke-virtual {v10, v8}, Lcom/jichi/ob/util/ActivityCache$Companion;->parseStartTimeMs(Ljava/lang/String;)J

    move-result-wide v34

    :cond_19
    cmp-long v10, v34, v14

    if-gtz v10, :cond_1b

    .line 249
    new-instance v10, Lkotlin/text/Regex;

    const-string v13, "(\\d{4})(\\d{2})(\\d{2})[_](\\d{2})(\\d{2})(\\d{2})"

    invoke-direct {v10, v13}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "title"

    invoke-virtual {v9, v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    move/from16 v14, p1

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static {v10, v5, v15, v14, v13}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 253
    :try_start_0
    invoke-interface {v5}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v10

    const/4 v14, 0x1

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    invoke-interface {v5}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x2

    :try_start_1
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    invoke-interface {v5}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v10

    move/from16 v15, v30

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 254
    invoke-interface {v5}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v10

    move/from16 v15, v29

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v49

    invoke-interface {v5}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v10

    move/from16 v15, v28

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v50

    invoke-interface {v5}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v5

    move/from16 v10, v27

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v51

    .line 252
    invoke-static/range {v46 .. v51}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 255
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v34
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_0
    :cond_1a
    const/4 v14, 0x2

    goto :goto_b

    :cond_1b
    move/from16 v14, p1

    const/4 v13, 0x0

    :catch_1
    :goto_b
    move-wide/from16 v35, v34

    .line 262
    const-string v5, "name"

    const-string/jumbo v10, "\u9a91\u884c"

    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "title"

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "optString(...)"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    const-string v10, "movingTime"

    const/4 v15, 0x0

    invoke-virtual {v9, v10, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "duration"

    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "Duration"

    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    move-wide/from16 v30, v32

    .line 266
    sget-object v33, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    .line 267
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_1c

    move-object v3, v13

    :cond_1c
    move-object/from16 v34, v3

    check-cast v34, Ljava/lang/String;

    .line 260
    new-instance v26, Lcom/jichi/ob/model/ActivityRecord;

    const/16 v37, 0x0

    const/16 v38, 0x100

    const/16 v39, 0x0

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v8

    move/from16 v32, v9

    invoke-direct/range {v26 .. v39}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v26

    .line 259
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    iget v4, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$limit:I

    if-ge v3, v4, :cond_1d

    goto :goto_c

    :cond_1d
    move/from16 v3, v42

    goto :goto_d

    :cond_1e
    move/from16 v42, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v45, v8

    move-object/from16 v25, v10

    move-object/from16 v40, v11

    move-object/from16 v44, v13

    move/from16 v41, v14

    move-object/from16 v43, v15

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v14, p1

    :goto_c
    add-int/lit8 v5, v24, 0x1

    move/from16 p1, v14

    move-object/from16 v9, v22

    move-object/from16 v4, v23

    move-object/from16 v10, v25

    move-object/from16 v11, v40

    move/from16 v14, v41

    move/from16 v19, v42

    move-object/from16 v15, v43

    move-object/from16 v13, v44

    move-object/from16 v8, v45

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v23, v4

    move-object/from16 v45, v8

    move-object/from16 v22, v9

    move-object/from16 v25, v10

    move-object/from16 v40, v11

    move-object/from16 v44, v13

    move-object/from16 v43, v15

    const/4 v15, 0x0

    const/16 v21, 0x14

    move/from16 v3, v19

    .line 275
    :goto_d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    iget v5, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->$limit:I

    if-ge v4, v5, :cond_26

    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v5, v21

    if-ge v4, v5, :cond_20

    goto/16 :goto_10

    :cond_20
    add-int/lit8 v5, v18, 0x1

    .line 277
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v7, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$0:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$1:Ljava/lang/Object;

    invoke-static/range {v25 .. v25}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$2:Ljava/lang/Object;

    invoke-static/range {v40 .. v40}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$3:Ljava/lang/Object;

    invoke-static/range {v44 .. v44}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$4:Ljava/lang/Object;

    invoke-static/range {v43 .. v43}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$5:Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$6:Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->L$7:Ljava/lang/Object;

    iput v6, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->I$0:I

    iput v5, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->I$1:I

    iput v3, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->I$2:I

    iput v12, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->I$3:I

    iput v2, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->I$4:I

    const/4 v14, 0x1

    iput v14, v0, Lcom/jichi/ob/api/IgpsportApi$getActivities$2;->label:I

    const-wide/16 v8, 0xc8

    invoke-static {v8, v9, v4}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_21

    return-object v1

    :cond_21
    move v2, v3

    :goto_e
    move v4, v14

    goto/16 :goto_0

    :cond_22
    move-object/from16 v44, v13

    .line 195
    new-instance v1, Ljava/lang/Exception;

    move-object/from16 v2, v44

    invoke-static {v2, v15}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "iGPSPORT HTTP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 194
    :cond_23
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_24
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u7a7a\u54cd\u5e94 (HTTP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    :goto_f
    move-object/from16 v45, v8

    .line 279
    :cond_26
    :goto_10
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getActivities total: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v45

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.class final Lcom/jichi/ob/api/CorosApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CorosApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/CorosApi;->getActivities(Ljava/lang/String;IILcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nCorosApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CorosApi.kt\ncom/jichi/ob/api/CorosApi$getActivities$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,494:1\n216#2,2:495\n1#3:497\n*S KotlinDebug\n*F\n+ 1 CorosApi.kt\ncom/jichi/ob/api/CorosApi$getActivities$2\n*L\n199#1:495,2\n*E\n"
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
    c = "com.jichi.ob.api.CorosApi$getActivities$2"
    f = "CorosApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cred:Ljava/lang/String;

.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field final synthetic $limit:I

.field final synthetic $offset:I

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/CorosApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/CorosApi;Ljava/lang/String;IILcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/CorosApi;",
            "Ljava/lang/String;",
            "II",
            "Lcom/jichi/ob/model/DataSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/CorosApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/CorosApi$getActivities$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    iput-object p2, p0, Lcom/jichi/ob/api/CorosApi$getActivities$2;->$cred:Ljava/lang/String;

    iput p3, p0, Lcom/jichi/ob/api/CorosApi$getActivities$2;->$offset:I

    iput p4, p0, Lcom/jichi/ob/api/CorosApi$getActivities$2;->$limit:I

    iput-object p5, p0, Lcom/jichi/ob/api/CorosApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

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

    new-instance v0, Lcom/jichi/ob/api/CorosApi$getActivities$2;

    iget-object v1, p0, Lcom/jichi/ob/api/CorosApi$getActivities$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    iget-object v2, p0, Lcom/jichi/ob/api/CorosApi$getActivities$2;->$cred:Ljava/lang/String;

    iget v3, p0, Lcom/jichi/ob/api/CorosApi$getActivities$2;->$offset:I

    iget v4, p0, Lcom/jichi/ob/api/CorosApi$getActivities$2;->$limit:I

    iget-object v5, p0, Lcom/jichi/ob/api/CorosApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/CorosApi$getActivities$2;-><init>(Lcom/jichi/ob/api/CorosApi;Ljava/lang/String;IILcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CorosApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CorosApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/CorosApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/CorosApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    const-string v0, "result"

    const-string v2, "CorosApi"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 188
    iget v3, v1, Lcom/jichi/ob/api/CorosApi$getActivities$2;->label:I

    if-nez v3, :cond_d

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 189
    iget-object v3, v1, Lcom/jichi/ob/api/CorosApi$getActivities$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    iget-object v4, v1, Lcom/jichi/ob/api/CorosApi$getActivities$2;->$cred:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/jichi/ob/api/CorosApi;->access$parseCredential(Lcom/jichi/ob/api/CorosApi;Ljava/lang/String;)Lkotlin/Triple;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 190
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 193
    iget v6, v1, Lcom/jichi/ob/api/CorosApi$getActivities$2;->$offset:I

    .line 195
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    iget v8, v1, Lcom/jichi/ob/api/CorosApi$getActivities$2;->$limit:I

    if-ge v7, v8, :cond_c

    .line 196
    div-int/lit16 v7, v6, 0xc8

    add-int/lit8 v8, v7, 0x1

    .line 197
    iget-object v9, v1, Lcom/jichi/ob/api/CorosApi$getActivities$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    invoke-static {v9, v3}, Lcom/jichi/ob/api/CorosApi;->access$teamApi(Lcom/jichi/ob/api/CorosApi;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/activity/query?modeList=&pageNumber="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&size=200"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 198
    new-instance v10, Lokhttp3/Request$Builder;

    invoke-direct {v10}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v10, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    iget-object v10, v1, Lcom/jichi/ob/api/CorosApi$getActivities$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    .line 199
    invoke-static {v10, v4, v3}, Lcom/jichi/ob/api/CorosApi;->access$authHeaders(Lcom/jichi/ob/api/CorosApi;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v10

    .line 495
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 199
    invoke-virtual {v9, v12, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {v9}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v9

    .line 201
    iget-object v10, v1, Lcom/jichi/ob/api/CorosApi$getActivities$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    invoke-static {v10}, Lcom/jichi/ob/api/CorosApi;->access$getClient$p(Lcom/jichi/ob/api/CorosApi;)Lokhttp3/OkHttpClient;

    move-result-object v10

    invoke-virtual {v10, v9}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    invoke-interface {v9}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v9

    check-cast v9, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v10, v9

    check-cast v10, Lokhttp3/Response;

    .line 202
    invoke-virtual {v10}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, ""

    if-eqz v11, :cond_2

    :try_start_2
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    :cond_2
    move-object v11, v12

    .line 203
    :cond_3
    invoke-virtual {v10}, Lokhttp3/Response;->code()I

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v14, ": "

    const/16 v15, 0xc8

    if-eq v13, v15, :cond_4

    .line 204
    :try_start_3
    invoke-virtual {v10}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v3, 0x96

    invoke-static {v11, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActivities HTTP "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    .line 205
    :try_start_4
    invoke-static {v9, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v5

    .line 207
    :cond_4
    :try_start_5
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "0000"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 209
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "message"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActivities result="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    .line 210
    :try_start_6
    invoke-static {v9, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object v5

    .line 212
    :cond_5
    :try_start_7
    const-string v11, "data"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 213
    const-string v11, "dataList"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x0

    .line 201
    :try_start_8
    invoke-static {v9, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-nez v10, :cond_7

    goto/16 :goto_5

    .line 215
    :cond_7
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-eqz v9, :cond_c

    mul-int/lit16 v7, v7, 0xc8

    sub-int/2addr v6, v7

    .line 217
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v7, :cond_b

    .line 218
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    if-lez v6, :cond_8

    add-int/lit8 v6, v6, -0x1

    move/from16 v30, v3

    move-object/from16 v29, v4

    goto/16 :goto_4

    .line 220
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    iget v15, v1, Lcom/jichi/ob/api/CorosApi$getActivities$2;->$limit:I

    if-ge v14, v15, :cond_b

    .line 221
    const-string v14, "labelId"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 222
    const-string/jumbo v14, "sportType"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 223
    const-string v15, "name"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string/jumbo v15, "\u9ad8\u9a70\u8fd0\u52a8"

    :cond_9
    move-object/from16 v17, v15

    check-cast v17, Ljava/lang/String;

    .line 224
    const-string/jumbo v15, "startTime"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    move-object v15, v12

    :cond_a
    check-cast v15, Ljava/lang/String;

    .line 225
    const-string v9, "distance"

    move/from16 v30, v3

    move-object/from16 v29, v4

    const-wide/16 v3, 0x0

    invoke-virtual {v13, v9, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v19, v3, v18

    .line 226
    const-string v3, "duration"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v21

    .line 228
    new-instance v3, Lcom/jichi/ob/model/ActivityRecord;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/jichi/ob/api/CorosApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    .line 229
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sportType="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 230
    sget-object v4, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    invoke-virtual {v4, v15}, Lcom/jichi/ob/util/ActivityCache$Companion;->parseStartTimeMs(Ljava/lang/String;)J

    move-result-wide v24

    const/16 v27, 0x100

    const/16 v28, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v9

    move-object/from16 v18, v15

    move-object v15, v3

    .line 228
    invoke-direct/range {v15 .. v28}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v29

    move/from16 v3, v30

    const/16 v15, 0xc8

    goto/16 :goto_3

    :cond_b
    move/from16 v30, v3

    move-object/from16 v29, v4

    .line 232
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_c

    mul-int/lit16 v6, v8, 0xc8

    move-object/from16 v4, v29

    move/from16 v3, v30

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 201
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_a
    invoke-static {v9, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_c
    :goto_5
    return-object v5

    :catch_0
    move-exception v0

    .line 237
    const-string v3, "getActivities error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 188
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

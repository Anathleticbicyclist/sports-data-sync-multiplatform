.class final Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GarminApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi;->uploadActivityOnce(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGarminApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$uploadActivityOnce$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1768:1\n216#2,2:1769\n216#2,2:1771\n*S KotlinDebug\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$uploadActivityOnce$2\n*L\n1564#1:1769,2\n1603#1:1771,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.api.GarminApi$uploadActivityOnce$2"
    f = "GarminApi.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x62e,
        0x631
    }
    m = "invokeSuspend"
    n = {
        "sess",
        "url",
        "sess",
        "url",
        "headers"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $cred:Ljava/lang/String;

.field final synthetic $data:[B

.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field final synthetic $fileName:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/GarminApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminApi;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/model/DataSource;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$cred:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iput-object p4, p0, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$data:[B

    iput-object p5, p0, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$fileName:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$cred:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v4, p0, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$data:[B

    iget-object v5, p0, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$fileName:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v1, p0

    const-string/jumbo v0, "\u4f73\u660e\u4e0a\u4f20\u8fd4\u56de: "

    const-string/jumbo v2, "uploadActivity: ds="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1551
    iget v4, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->label:I

    const-string/jumbo v5, "\u4f73\u660e\u4e0a\u4f20\u51b2\u7a81 HTTP 409: "

    const-string v6, "): "

    const-string/jumbo v7, "\u4f73\u660e\u4e0a\u4f20\u5931\u8d25 HTTP "

    const-string/jumbo v8, "\u4f73\u660e\u62d2\u7edd\u8be5\u6587\u4ef6(HTTP "

    const-string v14, ""

    const-string v15, "application/octet-stream"

    const-string v9, "file"

    const-string v10, ": "

    const-string v11, "application/json"

    const-string v12, "Accept"

    const-string/jumbo v16, "\u91cd\u590d\u6d3b\u52a8(\u5df2\u5728\u4f73\u660e\u5b58\u5728)"

    const-string v17, "Duplicate Activity"

    const/4 v13, 0x1

    move-object/from16 v18, v14

    if-eqz v4, :cond_2

    if-eq v4, v13, :cond_1

    const/4 v2, 0x2

    if-ne v4, v2, :cond_0

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/jichi/ob/api/GarminApi$GarminSession;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    goto/16 :goto_b

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/api/GarminApi$GarminSession;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    goto/16 :goto_9

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1553
    :try_start_2
    iget-object v4, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v13, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$cred:Ljava/lang/String;

    invoke-static {v4, v13}, Lcom/jichi/ob/api/GarminApi;->access$parseCredential(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;

    move-result-object v4

    .line 1554
    sget-object v13, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    iget-object v14, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiToken()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    check-cast v20, Ljava/lang/CharSequence;

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v20

    if-lez v20, :cond_3

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    const/4 v0, 0x0

    :goto_0
    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$data:[B

    array-length v3, v3

    move-object/from16 v22, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", diToken="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1557
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v2, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;

    if-eq v0, v2, :cond_5

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v2, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    move-object/from16 v6, v22

    goto/16 :goto_8

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getOauthToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1558
    :goto_2
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {v0, v2}, Lcom/jichi/ob/api/GarminApi;->access$connectApiHost(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/upload-service/upload"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1559
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v6, v3, v6}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1560
    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 1561
    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$fileName:Ljava/lang/String;

    sget-object v23, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v6, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$data:[B

    sget-object v13, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v13, v15}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v25

    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v6

    invoke-static/range {v23 .. v29}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v6

    invoke-virtual {v2, v9, v3, v6}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 1562
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v2

    .line 1563
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    iget-object v6, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    .line 1564
    const-string v13, "POST"

    invoke-static {v6, v4, v9, v0, v13}, Lcom/jichi/ob/api/GarminApi;->access$connectHeaders(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1769
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1564
    invoke-virtual {v3, v6, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_3

    .line 1565
    :cond_7
    invoke-virtual {v3, v12, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 1566
    check-cast v2, Lokhttp3/RequestBody;

    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 1567
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v2}, Lcom/jichi/ob/api/GarminApi;->access$getClient$p(Lcom/jichi/ob/api/GarminApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object v0, v2

    check-cast v0, Lokhttp3/Response;

    .line 1568
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    move-object v14, v3

    goto :goto_5

    :cond_9
    :goto_4
    move-object/from16 v14, v18

    .line 1569
    :goto_5
    sget-object v3, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v6, 0xc8

    invoke-static {v14, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "upload DI: HTTP "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", result="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x190

    if-eq v3, v4, :cond_c

    const/16 v4, 0x199

    if-eq v3, v4, :cond_a

    const/16 v4, 0x19f

    if-eq v3, v4, :cond_c

    packed-switch v3, :pswitch_data_0

    .line 1575
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v3, 0x64

    invoke-static {v14, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_6

    :pswitch_0
    const/4 v6, 0x0

    const/16 v16, 0x0

    goto :goto_7

    .line 1572
    :cond_a
    move-object v0, v14

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_6
    const/4 v6, 0x0

    goto :goto_7

    :cond_b
    const/16 v3, 0x64

    .line 1573
    invoke-static {v14, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_6

    .line 1574
    :cond_c
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v3, 0x96

    invoke-static {v14, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 1570
    :goto_7
    :try_start_4
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v16

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1580
    :goto_8
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {v0, v2}, Lcom/jichi/ob/api/GarminApi;->access$gcApiHost(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/upload-service/upload/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1581
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSharedWebView$cp()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1582
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$cred:Ljava/lang/String;

    iget-object v13, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    move-object v14, v1

    check-cast v14, Lkotlin/coroutines/Continuation;

    move-object/from16 p1, v4

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->L$1:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->label:I

    invoke-static {v0, v3, v13, v14}, Lcom/jichi/ob/api/GarminApi;->access$prepareWebView(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, v21

    if-ne v0, v3, :cond_d

    goto :goto_a

    :cond_d
    move-object/from16 v4, p1

    :goto_9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1583
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v13, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v14, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$cred:Ljava/lang/String;

    invoke-static {v0, v13, v14}, Lcom/jichi/ob/api/GarminApi;->access$apiHeaders(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1584
    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    iget-object v13, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v14, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$fileName:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$data:[B

    move-object/from16 v26, v1

    check-cast v26, Lkotlin/coroutines/Continuation;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->L$1:Ljava/lang/Object;

    invoke-static/range {v25 .. v25}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->L$2:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->label:I

    move-object/from16 v24, v0

    move-object/from16 v22, v2

    move-object/from16 v21, v13

    move-object/from16 v23, v14

    invoke-static/range {v21 .. v26}, Lcom/jichi/ob/api/GarminApi;->access$uploadViaWebView(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_e

    :goto_a
    return-object v3

    :cond_e
    move-object/from16 v2, v22

    .line 1551
    :goto_b
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 1588
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v16

    .line 1589
    :cond_f
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "\"id\""

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "\"activityId\""

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "\"uploadId\""

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v19, 0x0

    goto :goto_c

    :cond_10
    const/16 v3, 0x64

    .line 1590
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    move-object/from16 v19, v6

    :goto_c
    return-object v19

    :cond_12
    move-object/from16 v22, v2

    .line 1595
    :cond_13
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    const-string/jumbo v3, "uploadActivity: \u8d70OkHttp\u5206\u652f"

    invoke-virtual {v0, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1596
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v3}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1597
    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 1598
    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$fileName:Ljava/lang/String;

    sget-object v20, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v4, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$data:[B

    sget-object v13, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v13, v15}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v22

    const/16 v25, 0x6

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v4

    invoke-static/range {v20 .. v26}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v0, v9, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 1599
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    .line 1600
    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v4, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->$cred:Ljava/lang/String;

    invoke-static {v3, v4, v9}, Lcom/jichi/ob/api/GarminApi;->access$apiHeaders(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 1601
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 1771
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1603
    invoke-virtual {v2, v9, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_d

    .line 1604
    :cond_14
    check-cast v0, Lokhttp3/RequestBody;

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 1605
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadActivityOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v2}, Lcom/jichi/ob/api/GarminApi;->access$getClient$p(Lcom/jichi/ob/api/GarminApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    move-object v0, v2

    check-cast v0, Lokhttp3/Response;

    .line 1606
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_15

    goto :goto_e

    :cond_15
    move-object v14, v3

    goto :goto_f

    :cond_16
    :goto_e
    move-object/from16 v14, v18

    .line 1607
    :goto_f
    sget-object v3, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v9, 0xc8

    invoke-static {v14, v9}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "upload OkHttp HTTP "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x190

    if-eq v3, v4, :cond_19

    const/16 v4, 0x199

    if-eq v3, v4, :cond_17

    const/16 v4, 0x19f

    if-eq v3, v4, :cond_19

    packed-switch v3, :pswitch_data_1

    .line 1613
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v3, 0x64

    invoke-static {v14, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_10

    :pswitch_1
    const/4 v6, 0x0

    const/16 v16, 0x0

    goto :goto_11

    .line 1610
    :cond_17
    move-object v0, v14

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v0, v3, v4, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :goto_10
    const/4 v6, 0x0

    goto :goto_11

    :cond_18
    const/16 v3, 0x64

    .line 1611
    invoke-static {v14, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_10

    .line 1612
    :cond_19
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v3, 0x96

    invoke-static {v14, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_10

    .line 1605
    :goto_11
    :try_start_8
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return-object v16

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    .line 1621
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uploadActivity\u5f02\u5e38: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4f73\u660e\u4e0a\u4f20\u5f02\u5e38: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :catch_1
    move-exception v0

    .line 1618
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uploadActivity\u8fde\u63a5\u9519\u8bef: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4f73\u660e\u4e0a\u4f20\u5f02\u5e38(\u8fde\u63a5\u9519\u8bef): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

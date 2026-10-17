.class final Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GarminApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi;->downloadFitOnce(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nGarminApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$downloadFitOnce$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1768:1\n216#2,2:1769\n216#2,2:1771\n*S KotlinDebug\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$downloadFitOnce$2\n*L\n1435#1:1769,2\n1490#1:1771,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.api.GarminApi$downloadFitOnce$2"
    f = "GarminApi.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x5a8,
        0x5af
    }
    m = "invokeSuspend"
    n = {
        "sess",
        "url",
        "sess",
        "url",
        "wv",
        "headers",
        "fetchJs"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field final synthetic $activityId:Ljava/lang/String;

.field final synthetic $cred:Ljava/lang/String;

.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/GarminApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminApi;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$cred:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iput-object p4, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$activityId:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$cred:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v4, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$activityId:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "\n                        (function(){ fetch(\'"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1427
    iget v3, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->label:I

    const/16 v4, 0xc8

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "*/*"

    const-string v8, "Accept"

    const/4 v9, 0x0

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$2:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/api/GarminApi$GarminSession;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p1

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/jichi/ob/api/GarminApi$GarminSession;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v6

    move-object/from16 v6, p1

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1429
    :try_start_2
    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v10, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$cred:Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/jichi/ob/api/GarminApi;->access$parseCredential(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;

    move-result-object v12

    .line 1432
    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v10, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v11, "/download-service/files/activity/"

    if-eq v3, v10, :cond_3

    :try_start_3
    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v10, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne v3, v10, :cond_9

    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getOauthToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 1433
    :goto_0
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {v0, v2}, Lcom/jichi/ob/api/GarminApi;->access$connectApiHost(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$activityId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1434
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, v14}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v11, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v13, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/4 v15, 0x0

    .line 1435
    invoke-static/range {v11 .. v17}, Lcom/jichi/ob/api/GarminApi;->connectHeaders$default(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 1769
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1435
    invoke-virtual {v0, v5, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 1436
    :cond_5
    invoke-virtual {v0, v8, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 1437
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 1438
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v2}, Lcom/jichi/ob/api/GarminApi;->access$getClient$p(Lcom/jichi/ob/api/GarminApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    move-object v3, v2

    check-cast v3, Lokhttp3/Response;

    .line 1439
    sget-object v5, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downloadFit DI: HTTP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v5, v4, :cond_6

    :try_start_5
    invoke-static {v2, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v9

    .line 1441
    :cond_6
    :try_start_6
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_2

    .line 1442
    :cond_7
    invoke-static {v0, v3}, Lcom/jichi/ob/api/GarminApi;->access$unzipFit(Lcom/jichi/ob/api/GarminApi;[B)[B

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v2, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1441
    :cond_8
    :goto_2
    invoke-static {v2, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-object v9

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 1442
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1446
    :cond_9
    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v10, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {v3, v10}, Lcom/jichi/ob/api/GarminApi;->access$gcApiHost(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v3

    iget-object v10, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$activityId:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1447
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSharedWebView$cp()Landroid/webkit/WebView;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 1448
    iget-object v10, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v11, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$cred:Ljava/lang/String;

    iget-object v13, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    move-object v14, v1

    check-cast v14, Lkotlin/coroutines/Continuation;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$1:Ljava/lang/Object;

    iput v6, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->label:I

    invoke-static {v10, v11, v13, v14}, Lcom/jichi/ob/api/GarminApi;->access$prepareWebView(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_a

    goto/16 :goto_4

    :cond_a
    :goto_3
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1449
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSharedWebView$cp()Landroid/webkit/WebView;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1450
    iget-object v6, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v10, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v11, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$cred:Ljava/lang/String;

    invoke-static {v6, v10, v11}, Lcom/jichi/ob/api/GarminApi;->access$apiHeaders(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 1451
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    new-instance v7, Lorg/json/JSONObject;

    const-string v8, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\',{method:\'GET\',credentials:\'include\',headers:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "}).then(r=>{window.__g_status=r.status;return r.blob();}).then(b=>{var r=new FileReader();r.onload=e=>{window.__g_result=e.target.result.split(\',\')[1];window.__g_done=true;};r.readAsDataURL(b);}).catch(e=>{window.__g_error=e.toString();window.__g_done=true;}); })();\n                    "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1454
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1455
    new-instance v7, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1;

    invoke-direct {v7, v4, v0, v9}, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$2:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$3:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->L$4:Ljava/lang/Object;

    iput v5, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->label:I

    const-wide/32 v3, 0xea60

    invoke-static {v3, v4, v7, v8}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_b

    :goto_4
    return-object v2

    .line 1427
    :cond_b
    :goto_5
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    .line 1481
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1482
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lcom/jichi/ob/api/GarminApi;->access$unzipFit(Lcom/jichi/ob/api/GarminApi;[B)[B

    move-result-object v0

    return-object v0

    :cond_c
    return-object v9

    .line 1487
    :cond_d
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v5, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->$cred:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/jichi/ob/api/GarminApi;->access$apiHeaders(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1488
    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 1771
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1490
    invoke-virtual {v2, v5, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_6

    .line 1491
    :cond_e
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 1492
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v2}, Lcom/jichi/ob/api/GarminApi;->access$getClient$p(Lcom/jichi/ob/api/GarminApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2;->this$0:Lcom/jichi/ob/api/GarminApi;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    move-object v3, v2

    check-cast v3, Lokhttp3/Response;

    .line 1493
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eq v5, v4, :cond_f

    :try_start_b
    invoke-static {v2, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    return-object v9

    .line 1494
    :cond_f
    :try_start_c
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v3

    if-nez v3, :cond_10

    goto :goto_7

    :cond_10
    invoke-static {v0, v3}, Lcom/jichi/ob/api/GarminApi;->access$unzipFit(Lcom/jichi/ob/api/GarminApi;[B)[B

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1492
    :try_start_d
    invoke-static {v2, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1494
    :cond_11
    :goto_7
    invoke-static {v2, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    return-object v9

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 1492
    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_f
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :catch_0
    move-exception v0

    .line 1501
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downloadFit\u5f02\u5e38: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    return-object v9

    :catch_1
    move-exception v0

    .line 1498
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downloadFit\u8fde\u63a5\u9519\u8bef: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1499
    throw v0
.end method

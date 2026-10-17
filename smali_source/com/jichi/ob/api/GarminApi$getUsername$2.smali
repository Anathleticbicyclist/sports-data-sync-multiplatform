.class final Lcom/jichi/ob/api/GarminApi$getUsername$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GarminApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi;->getUsername(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nGarminApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$getUsername$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1768:1\n216#2,2:1769\n216#2,2:1772\n1#3:1771\n*S KotlinDebug\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$getUsername$2\n*L\n1261#1:1769,2\n1277#1:1772,2\n*E\n"
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
    c = "com.jichi.ob.api.GarminApi$getUsername$2"
    f = "GarminApi.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x4f7,
        0x4f8
    }
    m = "invokeSuspend"
    n = {
        "sess",
        "url",
        "sess",
        "url"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $cred:Ljava/lang/String;

.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/GarminApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminApi;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminApi$getUsername$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$getUsername$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$cred:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$ds:Lcom/jichi/ob/model/DataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/jichi/ob/api/GarminApi$getUsername$2;

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$getUsername$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$cred:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/api/GarminApi$getUsername$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$getUsername$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$getUsername$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/GarminApi$getUsername$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/GarminApi$getUsername$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1254
    iget v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->label:I

    const/16 v3, 0xc8

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "displayName"

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/api/GarminApi$GarminSession;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, p1

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/api/GarminApi$GarminSession;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v5

    move-object/from16 v5, p1

    :cond_2
    move-object v9, v2

    goto/16 :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1256
    :try_start_2
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v8, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$cred:Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/jichi/ob/api/GarminApi;->access$parseCredential(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;

    move-result-object v10

    .line 1258
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v8, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v9, "/userprofile-service/socialProfile"

    if-eq v2, v8, :cond_4

    :try_start_3
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v8, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne v2, v8, :cond_b

    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getOauthToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    goto :goto_0

    :cond_5
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 1259
    :goto_0
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {v0, v2}, Lcom/jichi/ob/api/GarminApi;->access$connectApiHost(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1260
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, v12}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v11, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$ds:Lcom/jichi/ob/model/DataSource;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 1261
    invoke-static/range {v9 .. v15}, Lcom/jichi/ob/api/GarminApi;->connectHeaders$default(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 1769
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1261
    invoke-virtual {v0, v5, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 1262
    :cond_6
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 1263
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v2}, Lcom/jichi/ob/api/GarminApi;->access$getClient$p(Lcom/jichi/ob/api/GarminApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    move-object v0, v2

    check-cast v0, Lokhttp3/Response;

    .line 1264
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v4, v3, :cond_7

    :try_start_5
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v7

    .line 1265
    :cond_7
    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_9

    move-object v0, v7

    :cond_9
    :try_start_7
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1265
    :cond_a
    :goto_2
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-object v7

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 1266
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1269
    :cond_b
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v8, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {v2, v8}, Lcom/jichi/ob/api/GarminApi;->access$gcApiHost(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1270
    iget-object v8, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v9, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;

    if-ne v8, v9, :cond_10

    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSharedWebView$cp()Landroid/webkit/WebView;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 1271
    iget-object v8, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$cred:Ljava/lang/String;

    iget-object v11, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$ds:Lcom/jichi/ob/model/DataSource;

    move-object v12, v1

    check-cast v12, Lkotlin/coroutines/Continuation;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->L$1:Ljava/lang/Object;

    iput v5, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->label:I

    invoke-static {v8, v9, v11, v12}, Lcom/jichi/ob/api/GarminApi;->access$prepareWebView(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    goto :goto_4

    :goto_3
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1272
    iget-object v8, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    move-object v5, v10

    const-string v10, "GET"

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v11, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$cred:Ljava/lang/String;

    invoke-static {v8, v2, v11}, Lcom/jichi/ob/api/GarminApi;->access$apiHeaders(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    move-object v13, v1

    check-cast v13, Lkotlin/coroutines/Continuation;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->L$1:Ljava/lang/Object;

    iput v4, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->label:I

    const/4 v12, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lcom/jichi/ob/api/GarminApi;->fetchViaWebView$default(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_c

    :goto_4
    return-object v0

    :cond_c
    move-object v0, v9

    .line 1254
    :goto_5
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 1273
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-object v7

    :cond_d
    return-object v0

    :cond_e
    move-object v2, v0

    goto :goto_6

    :cond_f
    move-object v2, v9

    .line 1276
    :cond_10
    :goto_6
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v4, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v5, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->$cred:Ljava/lang/String;

    .line 1277
    invoke-static {v2, v4, v5}, Lcom/jichi/ob/api/GarminApi;->access$apiHeaders(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1772
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1277
    invoke-virtual {v0, v5, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_7

    .line 1278
    :cond_11
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 1279
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getUsername$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v2}, Lcom/jichi/ob/api/GarminApi;->access$getClient$p(Lcom/jichi/ob/api/GarminApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    move-object v0, v2

    check-cast v0, Lokhttp3/Response;

    .line 1280
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eq v4, v3, :cond_12

    :try_start_b
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    return-object v7

    .line 1281
    :cond_12
    :try_start_c
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_8

    :cond_13
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object v0, v7

    :cond_14
    check-cast v0, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1279
    :try_start_d
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1281
    :cond_15
    :goto_8
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    return-object v7

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 1279
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
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :catch_0
    return-object v7
.end method

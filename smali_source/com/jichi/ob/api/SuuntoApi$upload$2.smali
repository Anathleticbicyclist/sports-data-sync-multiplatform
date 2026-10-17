.class final Lcom/jichi/ob/api/SuuntoApi$upload$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SuuntoApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/SuuntoApi;->upload(Ljava/lang/String;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuuntoApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuuntoApi.kt\ncom/jichi/ob/api/SuuntoApi$upload$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,442:1\n1#2:443\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "",
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
    c = "com.jichi.ob.api.SuuntoApi$upload$2"
    f = "SuuntoApi.kt"
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
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x19b,
        0x1a7
    }
    m = "invokeSuspend"
    n = {
        "sport",
        "json",
        "req1",
        "body1",
        "initJson",
        "uploadUrl",
        "uploadId",
        "req2",
        "req3",
        "body3",
        "code1",
        "code2",
        "attempts",
        "code3",
        "sport",
        "json",
        "req1",
        "body1",
        "initJson",
        "uploadUrl",
        "uploadId",
        "req2",
        "req3",
        "body3",
        "statusJson",
        "status",
        "code1",
        "code2",
        "attempts",
        "code3"
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
        "I$2",
        "I$3",
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
        "L$10",
        "L$11",
        "I$0",
        "I$1",
        "I$2",
        "I$3"
    }
.end annotation


# instance fields
.field final synthetic $fitData:[B

.field final synthetic $record:Lcom/jichi/ob/model/ActivityRecord;

.field final synthetic $subscriptionKey:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/SuuntoApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/SuuntoApi;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;Ljava/lang/String;[BLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/SuuntoApi;",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/SuuntoApi$upload$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/SuuntoApi$upload$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iput-object p2, p0, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    iput-object p3, p0, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$subscriptionKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$fitData:[B

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

    new-instance v0, Lcom/jichi/ob/api/SuuntoApi$upload$2;

    iget-object v1, p0, Lcom/jichi/ob/api/SuuntoApi$upload$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v2, p0, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    iget-object v3, p0, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$token:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$subscriptionKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$fitData:[B

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/SuuntoApi$upload$2;-><init>(Lcom/jichi/ob/api/SuuntoApi;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;Ljava/lang/String;[BLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/SuuntoApi$upload$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/SuuntoApi$upload$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/SuuntoApi$upload$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/SuuntoApi$upload$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v1, p0

    const-string v0, "application/vnd.garmin.fit"

    const-string v2, "jichi-ob/7.9.6 (Android)"

    const-string v3, "User-Agent"

    const-string v4, "application/json"

    const-string v5, "Content-Type"

    const-string v6, "Suunto\u4e0a\u4f20\u5931\u8d25: \u6587\u4ef6\u4e0a\u4f20HTTP "

    const-string v7, "Suunto\u4e0a\u4f20\u5931\u8d25: \u521d\u59cb\u5316HTTP "

    const-string v8, "Suunto upload init HTTP "

    const-string v9, "Bearer "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 360
    iget v11, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->label:I

    const-string v12, "SuuntoApi"

    const-string v14, ""

    const/4 v15, 0x1

    if-eqz v11, :cond_2

    if-eq v11, v15, :cond_1

    const/4 v0, 0x2

    if-ne v11, v0, :cond_0

    iget v0, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$2:I

    iget v2, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$1:I

    iget v3, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$0:I

    iget-object v4, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$11:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$10:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$9:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$8:Ljava/lang/Object;

    check-cast v4, Lokhttp3/Request;

    iget-object v4, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$7:Ljava/lang/Object;

    check-cast v4, Lokhttp3/Request;

    iget-object v5, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$6:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$5:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$4:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    iget-object v8, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$2:Ljava/lang/Object;

    check-cast v9, Lokhttp3/Request;

    iget-object v11, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$1:Ljava/lang/Object;

    check-cast v11, Lorg/json/JSONObject;

    iget-object v15, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v18, v6

    move-object/from16 v19, v14

    const/4 v6, 0x2

    :goto_0
    const/16 v16, 0x1

    goto/16 :goto_9

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$2:I

    iget v2, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$1:I

    iget v3, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$0:I

    iget-object v4, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$9:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$8:Ljava/lang/Object;

    check-cast v4, Lokhttp3/Request;

    iget-object v4, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$7:Ljava/lang/Object;

    check-cast v4, Lokhttp3/Request;

    iget-object v5, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$6:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$5:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$4:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    iget-object v8, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$2:Ljava/lang/Object;

    check-cast v9, Lokhttp3/Request;

    iget-object v11, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$1:Ljava/lang/Object;

    check-cast v11, Lorg/json/JSONObject;

    iget-object v15, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v18, v6

    move-object/from16 v19, v14

    const/4 v13, 0x0

    move-object v6, v5

    move-object v5, v4

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 362
    :try_start_2
    iget-object v11, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v15, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    invoke-virtual {v11, v15}, Lcom/jichi/ob/api/SuuntoApi;->mapToSuuntoSport(Lcom/jichi/ob/model/ActivityRecord;)Ljava/lang/String;

    move-result-object v11

    .line 363
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 364
    const-string v13, "description"

    move-object/from16 p1, v11

    iget-object v11, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    invoke-virtual {v11}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    .line 365
    const-string v13, "comment"

    const-string v15, "jichiOB sync"

    invoke-virtual {v11, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    .line 366
    const-string v13, "notifyUser"

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v11

    .line 367
    const-string v13, "privacy"

    const-string v15, "DEFAULT"

    invoke-virtual {v11, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    .line 368
    new-instance v13, Lokhttp3/Request$Builder;

    invoke-direct {v13}, Lokhttp3/Request$Builder;-><init>()V

    .line 369
    const-string v15, "https://cloudapi.suunto.com/v2/upload"

    invoke-virtual {v13, v15}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v13

    .line 370
    const-string v15, "Authorization"

    move-object/from16 v18, v11

    iget-object v11, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$token:Ljava/lang/String;

    move-object/from16 v19, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v15, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    .line 371
    const-string v11, "Ocp-Apim-Subscription-Key"

    iget-object v13, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$subscriptionKey:Ljava/lang/String;

    invoke-virtual {v9, v11, v13}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    .line 372
    invoke-virtual {v9, v5, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    .line 373
    const-string v11, "Accept"

    invoke-virtual {v9, v11, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 374
    invoke-virtual {v4, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 375
    sget-object v9, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "toString(...)"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v14, "application/json; charset=utf-8"

    invoke-virtual {v13, v14}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v9

    invoke-virtual {v4, v9}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 376
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 377
    iget-object v9, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    invoke-static {v9}, Lcom/jichi/ob/api/SuuntoApi;->access$getClient$p(Lcom/jichi/ob/api/SuuntoApi;)Lokhttp3/OkHttpClient;

    move-result-object v9

    invoke-virtual {v9, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    invoke-interface {v9}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v9

    check-cast v9, Ljava/io/Closeable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    move-object v11, v9

    check-cast v11, Lokhttp3/Response;

    .line 378
    new-instance v13, Lkotlin/Pair;

    invoke-virtual {v11}, Lokhttp3/Response;->code()I

    move-result v14

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    :cond_3
    move-object/from16 v11, v19

    :cond_4
    invoke-direct {v13, v14, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v11, 0x0

    .line 377
    :try_start_4
    invoke-static {v9, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v13}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v13}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/16 v13, 0x191

    if-eq v9, v13, :cond_17

    const/16 v13, 0xc9

    if-eq v9, v13, :cond_5

    const/16 v14, 0xc8

    if-eq v9, v14, :cond_5

    .line 382
    invoke-static {v11, v14}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v0, Lkotlin/Pair;

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    .line 385
    :cond_5
    :try_start_5
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_6

    :try_start_6
    new-instance v0, Lkotlin/Pair;

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Suunto\u4e0a\u4f20\u5931\u8d25: \u54cd\u5e94\u89e3\u6790\u5931\u8d25"

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 386
    :cond_6
    const-string/jumbo v8, "uploadUrl"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v8

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_8

    new-instance v0, Lkotlin/Pair;

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Suunto\u4e0a\u4f20\u5931\u8d25: \u65e0uploadUrl"

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 387
    :cond_8
    const-string/jumbo v14, "uploadId"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v14

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    :goto_3
    if-nez v14, :cond_a

    move-object/from16 v14, v19

    .line 390
    :cond_a
    new-instance v15, Lokhttp3/Request$Builder;

    invoke-direct {v15}, Lokhttp3/Request$Builder;-><init>()V

    .line 391
    invoke-virtual {v15, v8}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v15

    .line 392
    invoke-virtual {v15, v5, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 393
    invoke-virtual {v5, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 394
    sget-object v20, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v3, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$fitData:[B

    sget-object v5, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v5, v0}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v22

    const/16 v25, 0x6

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v26}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 396
    iget-object v2, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    invoke-static {v2}, Lcom/jichi/ob/api/SuuntoApi;->access$getClient$p(Lcom/jichi/ob/api/SuuntoApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    move-object v3, v2

    check-cast v3, Lokhttp3/Response;

    .line 397
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v5, 0x0

    .line 396
    :try_start_8
    invoke-static {v2, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eq v3, v13, :cond_b

    const/16 v2, 0xc8

    if-eq v3, v2, :cond_b

    .line 400
    new-instance v0, Lkotlin/Pair;

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_b
    move-object/from16 v15, p1

    move v2, v3

    move-object v6, v8

    move v3, v9

    move-object v8, v11

    move-object v5, v14

    move-object/from16 v11, v18

    move-object v9, v4

    move-object v4, v0

    const/4 v0, 0x0

    :goto_4
    const/16 v13, 0xf

    if-ge v0, v13, :cond_16

    .line 406
    iget-object v13, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v14, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$token:Ljava/lang/String;

    move-object/from16 p1, v4

    iget-object v4, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->$subscriptionKey:Ljava/lang/String;

    move-object/from16 v18, v6

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v8

    const-string v8, "https://cloudapi.suunto.com/v2/upload/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v14, v4, v6}, Lcom/jichi/ob/api/SuuntoApi;->access$buildRequest(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v4

    .line 407
    iget-object v6, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    invoke-static {v6}, Lcom/jichi/ob/api/SuuntoApi;->access$getClient$p(Lcom/jichi/ob/api/SuuntoApi;)Lokhttp3/OkHttpClient;

    move-result-object v6

    invoke-virtual {v6, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v6

    check-cast v6, Ljava/io/Closeable;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    move-object v7, v6

    check-cast v7, Lokhttp3/Response;

    .line 408
    new-instance v8, Lkotlin/Pair;

    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v13

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_d

    :cond_c
    move-object/from16 v7, v19

    :cond_d
    invoke-direct {v8, v13, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v7, 0x0

    .line 407
    :try_start_a
    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v8}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v8}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0xc8

    if-eq v6, v8, :cond_f

    .line 411
    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v15, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$0:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$1:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$2:Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$3:Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$4:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$5:Ljava/lang/Object;

    iput-object v5, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$6:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$7:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$8:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$9:Ljava/lang/Object;

    const/4 v13, 0x0

    iput-object v13, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$10:Ljava/lang/Object;

    iput-object v13, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$11:Ljava/lang/Object;

    iput v3, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$0:I

    iput v2, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$1:I

    iput v0, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$2:I

    iput v6, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$3:I

    const/4 v4, 0x1

    iput v4, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->label:I

    const-wide/16 v6, 0x7d0

    invoke-static {v6, v7, v8}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    if-ne v6, v10, :cond_e

    goto/16 :goto_8

    :cond_e
    move-object v6, v5

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v5, p1

    :goto_5
    add-int/2addr v0, v4

    move-object v4, v5

    move-object v5, v6

    :goto_6
    move-object/from16 v6, v18

    goto/16 :goto_4

    :cond_f
    const/4 v13, 0x0

    .line 415
    :try_start_b
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_7

    :catch_1
    move-object v8, v13

    :goto_7
    if-nez v8, :cond_10

    move-object/from16 v4, p1

    move-object/from16 v6, v18

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    goto/16 :goto_4

    .line 416
    :cond_10
    :try_start_c
    const-string/jumbo v14, "status"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v13, "optString(...)"

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "toUpperCase(...)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    const-string v14, "PROCESSED"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-object/from16 v24, v4

    const-string v4, ")"

    if-nez v14, :cond_15

    :try_start_d
    const-string v14, "COMPLETED"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    goto/16 :goto_b

    .line 420
    :cond_11
    const-string v14, "FAILED"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    const-string v14, "REJECTED"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    goto :goto_a

    .line 423
    :cond_12
    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v15, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$0:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$1:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$2:Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$3:Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$4:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$5:Ljava/lang/Object;

    iput-object v5, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$6:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$7:Ljava/lang/Object;

    invoke-static/range {v24 .. v24}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$8:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$9:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$10:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->L$11:Ljava/lang/Object;

    iput v3, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$0:I

    iput v2, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$1:I

    iput v0, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$2:I

    iput v6, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->I$3:I

    const/4 v6, 0x2

    iput v6, v1, Lcom/jichi/ob/api/SuuntoApi$upload$2;->label:I

    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8, v4}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_13

    :goto_8
    return-object v10

    :cond_13
    move-object/from16 v4, p1

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    goto/16 :goto_0

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 421
    :cond_14
    :goto_a
    new-instance v0, Lkotlin/Pair;

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u677e\u62d3\u4e0a\u4f20\u5931\u8d25: \u5e73\u53f0\u62d2\u7edd("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 418
    :cond_15
    :goto_b
    new-instance v0, Lkotlin/Pair;

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u677e\u62d3\u4e0a\u4f20\u6210\u529f(sport="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 407
    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_f
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 426
    :cond_16
    new-instance v0, Lkotlin/Pair;

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "\u677e\u62d3\u4e0a\u4f20\u8d85\u65f6(30s)\uff0c\u8bf7\u5728\u677e\u62d3App\u786e\u8ba4"

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 396
    :try_start_10
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_11
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 380
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Suunto \u767b\u5f55\u5931\u6548(401)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 377
    :try_start_12
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_13
    invoke-static {v9, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    :catch_2
    move-exception v0

    .line 428
    const-string v2, "Suunto upload error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v12, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    new-instance v2, Lkotlin/Pair;

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u677e\u62d3\u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :goto_c
    return-object v0
.end method

.class final Lcom/jichi/ob/api/WahooApi$uploadFit$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WahooApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/WahooApi;->uploadFit(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nWahooApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WahooApi.kt\ncom/jichi/ob/api/WahooApi$uploadFit$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,458:1\n216#2,2:459\n216#2,2:461\n*S KotlinDebug\n*F\n+ 1 WahooApi.kt\ncom/jichi/ob/api/WahooApi$uploadFit$2\n*L\n325#1:459,2\n358#1:461,2\n*E\n"
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
    c = "com.jichi.ob.api.WahooApi$uploadFit$2"
    f = "WahooApi.kt"
    i = {
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
        0x162
    }
    m = "invokeSuspend"
    n = {
        "base64Fit",
        "formBody",
        "requestBuilder",
        "request",
        "response",
        "uploadToken",
        "body",
        "$i$a$-use-WahooApi$uploadFit$2$2",
        "i"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$7",
        "L$8",
        "L$9",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $fitData:[B

.field final synthetic $token:Ljava/lang/String;

.field I$0:I

.field I$1:I

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

.field final synthetic this$0:Lcom/jichi/ob/api/WahooApi;


# direct methods
.method constructor <init>([BLjava/lang/String;Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/WahooApi;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/WahooApi$uploadFit$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->$fitData:[B

    iput-object p2, p0, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    iput-object p4, p0, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->$token:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/WahooApi$uploadFit$2;

    iget-object v1, p0, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->$fitData:[B

    iget-object v2, p0, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->$fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    iget-object v4, p0, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->$token:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/WahooApi$uploadFit$2;-><init>([BLjava/lang/String;Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v1, p0

    const-string v0, "error"

    const-string v2, "data:application/vnd.fit;base64,"

    const-string/jumbo v3, "\u4e0a\u4f20FIT: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 310
    iget v5, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->label:I

    const-string v6, ": "

    const-string v7, ""

    const-string/jumbo v8, "\u4e0a\u4f20\u6210\u529f"

    const-string v9, ", "

    const-string v12, "WahooApi"

    const/4 v13, 0x1

    if-eqz v5, :cond_1

    if-ne v5, v13, :cond_0

    iget v2, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->I$1:I

    iget v3, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->I$0:I

    iget-object v5, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$9:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v14, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$8:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$7:Ljava/lang/Object;

    check-cast v15, Lokhttp3/Response;

    const/16 v16, 0x0

    iget-object v10, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$6:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$5:Ljava/lang/Object;

    check-cast v11, Lcom/jichi/ob/api/WahooApi;

    iget-object v13, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$4:Ljava/lang/Object;

    check-cast v13, Ljava/io/Closeable;

    move/from16 v18, v2

    iget-object v2, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$3:Ljava/lang/Object;

    check-cast v2, Lokhttp3/Request;

    move-object/from16 v19, v2

    iget-object v2, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$2:Ljava/lang/Object;

    check-cast v2, Lokhttp3/Request$Builder;

    move-object/from16 v20, v2

    iget-object v2, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$1:Ljava/lang/Object;

    check-cast v2, Lokhttp3/FormBody;

    move-object/from16 v21, v2

    iget-object v2, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v22, v19

    move-object/from16 v19, v2

    move/from16 v2, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v7

    move-object v7, v15

    move-object v15, v14

    move-object v14, v10

    move-object/from16 v10, v22

    move-object/from16 v22, v5

    move v5, v3

    const/4 v3, 0x0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 313
    :try_start_1
    iget-object v5, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->$fitData:[B

    const/4 v10, 0x2

    invoke-static {v5, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 314
    iget-object v10, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->$fileName:Ljava/lang/String;

    iget-object v11, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->$fitData:[B

    array-length v11, v11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, "\u5b57\u8282, base64\u957f\u5ea6: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v3, Lokhttp3/FormBody$Builder;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {v3, v10, v11, v10}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 318
    const-string/jumbo v10, "workout_file_upload[file]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v10, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v2

    .line 319
    const-string/jumbo v3, "workout_file_upload[filename]"

    iget-object v10, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->$fileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v10}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v2

    .line 320
    invoke-virtual {v2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v2

    .line 322
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 323
    const-string v10, "https://api.wahooligan.com/v1/workout_file_uploads"

    invoke-virtual {v3, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 324
    move-object v10, v2

    check-cast v10, Lokhttp3/RequestBody;

    invoke-virtual {v3, v10}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 325
    iget-object v10, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    iget-object v11, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->$token:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/jichi/ob/api/WahooApi;->access$authHeaders(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 459
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 325
    invoke-virtual {v3, v13, v11}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v10

    .line 328
    iget-object v11, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    invoke-static {v11}, Lcom/jichi/ob/api/WahooApi;->access$getClient$p(Lcom/jichi/ob/api/WahooApi;)Lokhttp3/OkHttpClient;

    move-result-object v11

    invoke-virtual {v11, v10}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v11

    invoke-interface {v11}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Ljava/io/Closeable;

    iget-object v11, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    iget-object v14, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->$token:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    move-object v15, v13

    check-cast v15, Lokhttp3/Response;

    .line 329
    invoke-virtual {v15}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 p1, v2

    move-object/from16 v2, v18

    goto :goto_2

    :cond_4
    :goto_1
    move-object/from16 p1, v2

    move-object v2, v7

    :goto_2
    move-object/from16 v18, v3

    .line 330
    invoke-virtual {v15}, Lokhttp3/Response;->code()I

    move-result v3

    move-object/from16 v19, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v7

    const-string/jumbo v7, "\u4e0a\u4f20\u54cd\u5e94: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v15}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_5

    invoke-virtual {v15}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v5, 0xc9

    if-eq v3, v5, :cond_5

    .line 333
    new-instance v0, Lkotlin/Pair;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v15}, Lokhttp3/Response;->code()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u4e0a\u4f20\u5931\u8d25 HTTP "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x0

    :try_start_3
    invoke-static {v13, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 338
    :cond_5
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 339
    const-string/jumbo v5, "token"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 346
    :try_start_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 347
    new-instance v0, Lkotlin/Pair;

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v10, 0x0

    :try_start_6
    invoke-static {v13, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    return-object v0

    .line 350
    :cond_6
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u4e0a\u4f20token: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", \u5f00\u59cb\u8f6e\u8be2\u72b6\u6001..."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v22, v2

    move-object/from16 v21, v15

    move/from16 v5, v16

    const/4 v2, 0x1

    move-object v15, v3

    const/4 v3, 0x0

    :goto_3
    const/16 v7, 0x10

    if-ge v2, v7, :cond_d

    .line 354
    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$0:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$1:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$2:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$3:Ljava/lang/Object;

    iput-object v13, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$4:Ljava/lang/Object;

    iput-object v11, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$5:Ljava/lang/Object;

    iput-object v14, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$6:Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$7:Ljava/lang/Object;

    iput-object v15, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$8:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->L$9:Ljava/lang/Object;

    iput v5, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->I$0:I

    iput v2, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->I$1:I

    const/4 v7, 0x1

    iput v7, v1, Lcom/jichi/ob/api/WahooApi$uploadFit$2;->label:I

    move-object v7, v10

    move-object/from16 v23, v11

    const-wide/16 v10, 0x7d0

    invoke-static {v10, v11, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v4, :cond_7

    return-object v4

    :cond_7
    move-object v10, v7

    move-object/from16 v7, v21

    move-object/from16 v11, v23

    move-object/from16 v21, p1

    .line 355
    :goto_4
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    move-object/from16 v23, v4

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p1, v5

    const-string v5, "https://api.wahooligan.com/v1/workout_file_uploads/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 358
    invoke-static {v11, v14}, Lcom/jichi/ob/api/WahooApi;->access$authHeaders(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 461
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v4

    move-object/from16 v4, v24

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 358
    invoke-virtual {v1, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-object/from16 v4, v25

    goto :goto_5

    .line 359
    :cond_8
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 361
    invoke-static {v11}, Lcom/jichi/ob/api/WahooApi;->access$getClient$p(Lcom/jichi/ob/api/WahooApi;)Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    move-object v4, v1

    check-cast v4, Lokhttp3/Response;

    .line 362
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    :cond_9
    move-object/from16 v5, v20

    .line 363
    :cond_a
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v4

    move-object/from16 v24, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v10

    const-string/jumbo v10, "\u8f6e\u8be2"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 366
    :try_start_9
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 367
    const-string/jumbo v7, "status"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    .line 369
    :catch_0
    :try_start_a
    const-string/jumbo v4, "unknown"

    .line 373
    :goto_6
    const-string v7, "complete"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v0, Lkotlin/Pair;

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v10, 0x0

    :try_start_b
    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-static {v13, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    return-object v0

    .line 374
    :cond_b
    :try_start_d
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v7, :cond_c

    .line 376
    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_7

    .line 377
    :catch_1
    :try_start_f
    const-string/jumbo v0, "\u672a\u77e5\u9519\u8bef"

    .line 378
    :goto_7
    new-instance v2, Lkotlin/Pair;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u4e0a\u4f20\u5931\u8d25: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    const/4 v10, 0x0

    :try_start_10
    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    invoke-static {v13, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    return-object v2

    .line 380
    :cond_c
    :try_start_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u72b6\u6001: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u7ee7\u7eed\u7b49\u5f85..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/4 v10, 0x0

    .line 361
    :try_start_13
    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p0

    move/from16 v5, p1

    move-object/from16 p1, v21

    move-object/from16 v4, v23

    move-object/from16 v21, v24

    move-object/from16 v10, v25

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_14
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_15
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 385
    :cond_d
    new-instance v0, Lkotlin/Pair;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "\u4e0a\u4f20\u8d85\u65f6\uff0830\u79d2\u672a\u5b8c\u6210\uff09"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 328
    :try_start_16
    invoke-static {v13, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    goto :goto_9

    :catch_2
    move-exception v0

    .line 342
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u89e3\u6790token\u5931\u8d25\uff0c\u53ef\u80fd\u76f4\u63a5\u5b8c\u6210: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Lkotlin/Pair;

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    const/4 v10, 0x0

    :try_start_18
    invoke-static {v13, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    return-object v0

    .line 328
    :goto_8
    :try_start_19
    throw v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_1a
    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    :catch_3
    move-exception v0

    .line 388
    const-string/jumbo v1, "\u4e0a\u4f20\u5f02\u5e38"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v12, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    new-instance v1, Lkotlin/Pair;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u4e0a\u4f20\u5f02\u5e38: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_9
    return-object v0
.end method

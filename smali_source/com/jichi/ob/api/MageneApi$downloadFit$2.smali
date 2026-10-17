.class final Lcom/jichi/ob/api/MageneApi$downloadFit$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MageneApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/MageneApi;->downloadFit(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/jichi/ob/api/MageneApi$MageneFitResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/jichi/ob/api/MageneApi$MageneFitResult;",
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
    c = "com.jichi.ob.api.MageneApi$downloadFit$2"
    f = "MageneApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $recordId:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/MageneApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/MageneApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/MageneApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/MageneApi$downloadFit$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->$recordId:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/MageneApi;

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

    new-instance p1, Lcom/jichi/ob/api/MageneApi$downloadFit$2;

    iget-object v0, p0, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->$recordId:Ljava/lang/String;

    iget-object v1, p0, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->$token:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/MageneApi;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/api/MageneApi$downloadFit$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/MageneApi;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/jichi/ob/api/MageneApi$MageneFitResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/MageneApi$downloadFit$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "FIT via durl(\u4e03\u725b\u4e91WGS84): "

    const-string v2, "durl\u4e0d\u53ef\u7528(HTTP "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 305
    iget v3, v1, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->label:I

    if-nez v3, :cond_e

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 306
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 307
    iget-object v4, v1, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->$recordId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://otm.onelap.cn/api/otm/ride_record/analysis/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 308
    iget-object v4, v1, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->$token:Ljava/lang/String;

    const-string v5, "Authorization"

    invoke-virtual {v3, v5, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 309
    const-string v4, "User-Agent"

    const-string v6, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0"

    invoke-virtual {v3, v4, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 310
    const-string v7, "Origin"

    const-string v8, "https://otm.onelap.cn"

    invoke-virtual {v3, v7, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 311
    const-string v9, "Referer"

    const-string v10, "https://otm.onelap.cn/calendar"

    invoke-virtual {v3, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 312
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 313
    iget-object v11, v1, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/MageneApi;

    invoke-static {v11}, Lcom/jichi/ob/api/MageneApi;->access$getClient$p(Lcom/jichi/ob/api/MageneApi;)Lokhttp3/OkHttpClient;

    move-result-object v11

    invoke-virtual {v11, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 314
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 315
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v12, 0x191

    if-eq v3, v12, :cond_c

    .line 316
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 317
    const-string v12, "code"

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_b

    .line 318
    const-string v11, "data"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v12, "ridingRecord"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 319
    :goto_0
    const-string v12, ""

    if-eqz v3, :cond_1

    const-string v14, "durl"

    invoke-virtual {v3, v14, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2

    :cond_1
    move-object v14, v12

    :cond_2
    if-eqz v3, :cond_4

    .line 320
    const-string v15, "fitUrl"

    invoke-virtual {v3, v15, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v12, v3

    .line 323
    :cond_4
    :goto_1
    move-object v3, v14

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string v15, " bytes (id="

    const-string v11, ")"

    const-string v13, "MageneApi"

    if-lez v3, :cond_7

    .line 325
    :try_start_0
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 326
    invoke-virtual {v3, v14}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 327
    invoke-virtual {v3, v4, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 328
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 329
    iget-object v14, v1, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/MageneApi;

    invoke-static {v14}, Lcom/jichi/ob/api/MageneApi;->access$getClient$p(Lcom/jichi/ob/api/MageneApi;)Lokhttp3/OkHttpClient;

    move-result-object v14

    invoke-virtual {v14, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 330
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v14

    move-object/from16 v16, v3

    const/16 v3, 0xc8

    if-ne v14, v3, :cond_6

    .line 331
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 332
    iget-object v14, v1, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/MageneApi;

    invoke-static {v14, v3}, Lcom/jichi/ob/api/MageneApi;->access$isFit(Lcom/jichi/ob/api/MageneApi;[B)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 333
    array-length v2, v3

    iget-object v14, v1, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->$recordId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 p1, v9

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget-object v0, Lcom/jichi/ob/api/MageneApi;->Companion:Lcom/jichi/ob/api/MageneApi$Companion;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/MageneApi$Companion;->setLastFromFitContent(Z)V

    .line 335
    new-instance v0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;

    invoke-direct {v0, v3, v2}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;-><init>([BZ)V

    return-object v0

    :cond_6
    move-object/from16 p1, v9

    .line 338
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")\uff0c\u56de\u9000fit_content"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 p1, v9

    .line 340
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "durl\u5f02\u5e38: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\uff0c\u56de\u9000fit_content"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    move-object/from16 p1, v9

    .line 345
    :goto_4
    move-object v0, v12

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_a

    .line 346
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v2, "getBytes(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 347
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "https://otm.onelap.cn/api/otm/ride_record/analysis/fit_content/"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 349
    iget-object v2, v1, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->$token:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {v0, v4, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0, v7, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    move-object/from16 v2, p1

    .line 352
    invoke-virtual {v0, v2, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 354
    iget-object v2, v1, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/MageneApi;

    invoke-static {v2}, Lcom/jichi/ob/api/MageneApi;->access$getClient$p(Lcom/jichi/ob/api/MageneApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v2

    if-eqz v2, :cond_9

    .line 356
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_8

    iget-object v3, v1, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/MageneApi;

    invoke-static {v3, v2}, Lcom/jichi/ob/api/MageneApi;->access$isFit(Lcom/jichi/ob/api/MageneApi;[B)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 359
    array-length v0, v2

    iget-object v3, v1, Lcom/jichi/ob/api/MageneApi$downloadFit$2;->$recordId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FIT via fit_content(GCJ-02): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v0, Lcom/jichi/ob/api/MageneApi;->Companion:Lcom/jichi/ob/api/MageneApi$Companion;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/jichi/ob/api/MageneApi$Companion;->setLastFromFitContent(Z)V

    .line 361
    new-instance v0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;

    invoke-direct {v0, v2, v3}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;-><init>([BZ)V

    return-object v0

    .line 357
    :cond_8
    new-instance v3, Lcom/jichi/ob/api/MageneApi$NoFileException;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    array-length v2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FIT\u83b7\u53d6\u5931\u8d25(fit_content HTTP "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", size="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/jichi/ob/api/MageneApi$NoFileException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 355
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "fit_content\u7a7a\u54cd\u5e94"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_a
    new-instance v0, Lcom/jichi/ob/api/MageneApi$NoFileException;

    const-string/jumbo v2, "\u8be5\u8bb0\u5f55\u65e0FIT\u6587\u4ef6(fitUrl\u4e3a\u7a7a\uff0c\u53ef\u80fd\u662f\u865a\u62df\u8def\u7ebf)"

    invoke-direct {v0, v2}, Lcom/jichi/ob/api/MageneApi$NoFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_b
    new-instance v0, Ljava/lang/Exception;

    const/16 v2, 0x64

    invoke-static {v11, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8fc8\u91d1\u8be6\u60c5\u9519\u8bef: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_c
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "\u8fc8\u91d1\u767b\u5f55\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_d
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "\u8be6\u60c5\u7a7a\u54cd\u5e94"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

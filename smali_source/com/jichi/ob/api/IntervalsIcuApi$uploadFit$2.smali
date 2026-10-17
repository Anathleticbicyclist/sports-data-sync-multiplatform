.class final Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IntervalsIcuApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/IntervalsIcuApi;->uploadFit(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.IntervalsIcuApi$uploadFit$2"
    f = "IntervalsIcuApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $apiKey:Ljava/lang/String;

.field final synthetic $externalId:Ljava/lang/String;

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $fitData:[B

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/IntervalsIcuApi;


# direct methods
.method constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/jichi/ob/api/IntervalsIcuApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/IntervalsIcuApi;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->$fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->$fitData:[B

    iput-object p3, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->$externalId:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/IntervalsIcuApi;

    iput-object p5, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->$apiKey:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;

    iget-object v1, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->$fitData:[B

    iget-object v3, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->$externalId:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/IntervalsIcuApi;

    iget-object v5, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->$apiKey:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/jichi/ob/api/IntervalsIcuApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const-string v1, "IntervalsIcuApi"

    const-string v0, "Intervals.icu \u4e0a\u4f20\u5931\u8d25 HTTP "

    const-string/jumbo v2, "upload OK HTTP "

    const-string v3, "https://intervals.icu/api/v1/athlete/0/activities?external_id="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 75
    iget v4, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->label:I

    if-nez v4, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    :try_start_0
    sget-object p1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v4, "application/octet-stream"

    invoke-virtual {p1, v4}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v7

    .line 78
    sget-object p1, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    .line 79
    const-string v4, "file"

    iget-object v12, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->$fileName:Ljava/lang/String;

    sget-object v5, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v6, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->$fitData:[B

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 78
    invoke-virtual {p1, v4, v12, v5}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    .line 81
    new-instance v4, Lokhttp3/MultipartBody$Builder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, v6}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v4, v5}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v4

    .line 82
    invoke-virtual {v4, p1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    .line 84
    iget-object v4, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->$externalId:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->$externalId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 85
    :cond_0
    const-string v3, "https://intervals.icu/api/v1/athlete/0/activities"

    .line 86
    :goto_0
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 87
    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 88
    const-string v4, "Authorization"

    iget-object v5, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/IntervalsIcuApi;

    iget-object v7, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->$apiKey:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/jichi/ob/api/IntervalsIcuApi;->access$basicAuth(Lcom/jichi/ob/api/IntervalsIcuApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 89
    check-cast p1, Lokhttp3/RequestBody;

    invoke-virtual {v3, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 91
    iget-object v3, p0, Lcom/jichi/ob/api/IntervalsIcuApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/IntervalsIcuApi;

    invoke-static {v3}, Lcom/jichi/ob/api/IntervalsIcuApi;->access$getClient$p(Lcom/jichi/ob/api/IntervalsIcuApi;)Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v3, p1

    check-cast v3, Lokhttp3/Response;

    .line 92
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v4

    .line 93
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    const/16 v5, 0x12c

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    move-object v3, v6

    :goto_1
    const/16 v7, 0xc8

    .line 95
    const-string v8, ": "

    if-gt v7, v4, :cond_3

    if-ge v4, v5, :cond_3

    .line 96
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_2

    :cond_3
    const/16 v2, 0x191

    if-ne v4, v2, :cond_4

    .line 99
    const-string v0, "Intervals.icu API Key \u65e0\u6548\u6216\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    goto :goto_2

    :cond_4
    const/16 v2, 0x1ad

    if-ne v4, v2, :cond_5

    .line 100
    const-string v0, "Intervals.icu \u63a5\u53e3\u9650\u6d41\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_2

    .line 101
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :goto_2
    :try_start_3
    invoke-static {p1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 105
    const-string/jumbo v0, "upload error"

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Intervals.icu \u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

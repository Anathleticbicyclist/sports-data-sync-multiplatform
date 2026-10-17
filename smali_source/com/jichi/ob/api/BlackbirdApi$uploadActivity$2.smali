.class final Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BlackbirdApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/BlackbirdApi;->uploadActivity(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.BlackbirdApi$uploadActivity$2"
    f = "BlackbirdApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cookie:Ljava/lang/String;

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $fitData:[B

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/BlackbirdApi;


# direct methods
.method constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/jichi/ob/api/BlackbirdApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/BlackbirdApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->$fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->$fitData:[B

    iput-object p3, p0, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->$cookie:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

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

    new-instance v0, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;

    iget-object v1, p0, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->$fitData:[B

    iget-object v3, p0, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->$cookie:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/jichi/ob/api/BlackbirdApi;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "BlackbirdApi"

    const-string/jumbo v0, "\u9ed1\u9e1f\u4e0a\u4f20\u5931\u8d25: \u767b\u5f55\u5df2\u8fc7\u671f(HTTP "

    const-string/jumbo v3, "\u9ed1\u9e1f\u4e0a\u4f20\u8ba4\u8bc1\u5931\u8d25: HTTP "

    const-string/jumbo v4, "\u9ed1\u9e1f\u4e0a\u4f20\u88ab\u91cd\u5b9a\u5411(\u53ef\u80fd\u672a\u767b\u5f55): "

    const-string v5, "Blackbird upload: HTTP "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 762
    iget v6, v1, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->label:I

    if-nez v6, :cond_8

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 764
    :try_start_0
    new-instance v6, Lokhttp3/MultipartBody$Builder;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v6, v8, v7, v8}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 765
    sget-object v7, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v6, v7}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v6

    .line 766
    const-string v7, "file"

    iget-object v9, v1, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->$fileName:Ljava/lang/String;

    sget-object v10, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v11, v1, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->$fitData:[B

    sget-object v12, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v13, "application/octet-stream"

    invoke-virtual {v12, v13}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v12

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v10

    invoke-virtual {v6, v7, v9, v10}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v6

    .line 767
    invoke-virtual {v6}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v6

    .line 768
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 769
    const-string v9, "https://www.blackbirdsport.com/api/records/upload"

    invoke-virtual {v7, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 770
    const-string v9, "Cookie"

    iget-object v10, v1, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->$cookie:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 771
    const-string v9, "User-Agent"

    const-string v10, "Mozilla/5.0"

    invoke-virtual {v7, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 772
    check-cast v6, Lokhttp3/RequestBody;

    invoke-virtual {v7, v6}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 773
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    .line 774
    iget-object v7, v1, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    invoke-static {v7}, Lcom/jichi/ob/api/BlackbirdApi;->access$getClient$p(Lcom/jichi/ob/api/BlackbirdApi;)Lokhttp3/OkHttpClient;

    move-result-object v7

    invoke-virtual {v7, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v6

    .line 775
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    const-string v7, ""

    .line 776
    :cond_1
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v9

    const/16 v10, 0x12c

    invoke-static {v7, v10}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " resp="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v9, 0x12d

    const/4 v10, 0x2

    if-gt v9, v5, :cond_2

    const/16 v9, 0x135

    if-ge v5, v9, :cond_2

    .line 778
    const-string v0, "Location"

    invoke-static {v6, v0, v8, v10, v8}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string/jumbo v0, "\u9ed1\u9e1f\u4e0a\u4f20\u5931\u8d25: \u767b\u5f55\u5df2\u5931\u6548(\u88ab\u91cd\u5b9a\u5411)\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u9ed1\u9e1f"

    return-object v0

    .line 781
    :cond_2
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v5, 0x191

    if-gt v5, v4, :cond_3

    const/16 v5, 0x194

    if-ge v4, v5, :cond_3

    .line 782
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u9ed1\u9e1f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 785
    :cond_3
    move-object v0, v7

    check-cast v0, Ljava/lang/CharSequence;

    const-string v3, "FIT_FILE_ERROR"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v10, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v7

    check-cast v0, Ljava/lang/CharSequence;

    const-string v3, "FIT file integrity"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v10, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 789
    :cond_4
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_6

    move-object v0, v7

    check-cast v0, Ljava/lang/CharSequence;

    const-string v3, "\"status\":\"ok\""

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v10, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v7

    check-cast v0, Ljava/lang/CharSequence;

    const-string v3, "\"code\":0"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v10, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 790
    move-object v0, v7

    check-cast v0, Ljava/lang/CharSequence;

    const-string v3, "\"code\":200"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v10, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v7

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v3, "success"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, v10, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    return-object v8

    .line 793
    :cond_6
    iget-object v0, v1, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-static {v0, v7, v3}, Lcom/jichi/ob/api/BlackbirdApi;->access$translateBlackbirdError(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 786
    :cond_7
    :goto_0
    const-string/jumbo v0, "\u9ed1\u9e1f\u63a5\u53e3\u5df2\u8fde\u901a\u4f46FIT\u6821\u9a8c\u88ab\u62d2\uff1a\u9ed1\u9e1f\u89e3\u6790\u5668\u8f83\u65e7"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const-string/jumbo v0, "\u9ed1\u9e1f\u62d2\u7edd\u8be5FIT(FIT_FILE_ERROR)\uff1a\u9ed1\u9e1f\u89e3\u6790\u5668\u8f83\u65e7\uff0c\u65e0\u6cd5\u89e3\u6790\u8fc8\u91d1\u7b49\u542b\u5927\u91cf\u5f00\u53d1\u8005\u5b57\u6bb5\u7684FIT\uff1b\u5ba4\u5185\u65e0GPS\u7684FIT\u5fc5\u88ab\u62d2\u3002\u5efa\u8bae\u7528iGPSPORT/\u884c\u8005\u8bb0\u5f55\u6216\u6237\u5916\u542bGPS\u6570\u636e"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 795
    const-string v3, "Blackbird upload error"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9ed1\u9e1f\u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 762
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

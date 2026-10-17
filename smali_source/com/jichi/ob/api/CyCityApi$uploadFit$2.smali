.class final Lcom/jichi/ob/api/CyCityApi$uploadFit$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CyCityApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/CyCityApi;->uploadFit(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.CyCityApi$uploadFit$2"
    f = "CyCityApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $fitData:[B

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/CyCityApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLcom/jichi/ob/api/CyCityApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/api/CyCityApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/CyCityApi$uploadFit$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->$token:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->$fitData:[B

    iput-object p4, p0, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CyCityApi;

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

    new-instance v0, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;

    iget-object v1, p0, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->$token:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->$fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->$fitData:[B

    iget-object v4, p0, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CyCityApi;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;-><init>(Ljava/lang/String;Ljava/lang/String;[BLcom/jichi/ob/api/CyCityApi;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    const-string v0, "code"

    const-string v2, ": "

    const-string v3, "Authorization"

    const-string v4, "User-Agent"

    const-string v5, "CyCityApi"

    const-string v6, "CyCity\u4e0a\u4f20\u5931\u8d25: "

    const-string v7, "CyCity\u786e\u8ba4\u5931\u8d25: HTTP "

    const-string/jumbo v8, "uploadImportData HTTP "

    const-string v9, "Bearer "

    const-string v10, "CyCity\u4e0a\u4f20\u5931\u8d25: HTTP "

    const-string v11, "import HTTP "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 169
    iget v12, v1, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->label:I

    if-nez v12, :cond_a

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 171
    :try_start_0
    iget-object v12, v1, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->$token:Ljava/lang/String;

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v0, "CyCity\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55"

    return-object v0

    .line 173
    :cond_0
    new-instance v12, Lokhttp3/MultipartBody$Builder;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v12, v14, v13, v14}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 174
    sget-object v13, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v12, v13}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v12

    .line 175
    const-string v13, "file"

    iget-object v15, v1, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->$fileName:Ljava/lang/String;

    sget-object v16, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    move-object/from16 p1, v14

    iget-object v14, v1, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->$fitData:[B

    move-object/from16 v17, v14

    sget-object v14, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    move-object/from16 v23, v7

    const-string v7, "application/octet-stream"

    invoke-virtual {v14, v7}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v18

    const/16 v21, 0x6

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v7

    invoke-virtual {v12, v13, v15, v7}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v7

    .line 176
    invoke-virtual {v7}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v7

    .line 177
    new-instance v12, Lokhttp3/Request$Builder;

    invoke-direct {v12}, Lokhttp3/Request$Builder;-><init>()V

    .line 178
    const-string v13, "https://cycity.cc/api/mobile/cycling/import"

    invoke-virtual {v12, v13}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v12

    .line 179
    iget-object v13, v1, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CyCityApi;

    invoke-static {v13}, Lcom/jichi/ob/api/CyCityApi;->access$ua(Lcom/jichi/ob/api/CyCityApi;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v12

    .line 180
    iget-object v13, v1, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->$token:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v3, v13}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v12

    .line 181
    check-cast v7, Lokhttp3/RequestBody;

    invoke-virtual {v12, v7}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 182
    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    .line 183
    iget-object v12, v1, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CyCityApi;

    invoke-static {v12}, Lcom/jichi/ob/api/CyCityApi;->access$getClient$p(Lcom/jichi/ob/api/CyCityApi;)Lokhttp3/OkHttpClient;

    move-result-object v12

    invoke-virtual {v12, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v7

    invoke-interface {v7}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7

    .line 184
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, ""

    if-eqz v12, :cond_1

    :try_start_1
    invoke-virtual {v12}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    :cond_1
    move-object v12, v13

    .line 185
    :cond_2
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v14

    const/16 v15, 0x12c

    invoke-static {v12, v15}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->code()I

    move-result v7

    const/16 v11, 0xc8

    if-eq v7, v11, :cond_3

    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v10, -0x1

    .line 188
    invoke-virtual {v7, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v15, 0x64

    const-string v10, "msg"

    if-eq v14, v11, :cond_4

    .line 189
    :try_start_2
    invoke-static {v12, v15}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_4
    const-string v12, "data"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v0, "CyCity\u4e0a\u4f20\u5931\u8d25: \u89e3\u6790\u54cd\u5e94\u4e3a\u7a7a"

    return-object v0

    .line 193
    :cond_5
    sget-object v12, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v14, "toString(...)"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v15, "application/json"

    invoke-virtual {v14, v15}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v14

    invoke-virtual {v12, v7, v14}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 194
    new-instance v12, Lokhttp3/Request$Builder;

    invoke-direct {v12}, Lokhttp3/Request$Builder;-><init>()V

    .line 195
    const-string v14, "https://cycity.cc/api/mobile/cycling/uploadImportData"

    invoke-virtual {v12, v14}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v12

    .line 196
    iget-object v14, v1, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CyCityApi;

    invoke-static {v14}, Lcom/jichi/ob/api/CyCityApi;->access$ua(Lcom/jichi/ob/api/CyCityApi;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v4, v14}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 197
    iget-object v12, v1, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->$token:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v3, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 198
    invoke-virtual {v3, v7}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 199
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 200
    iget-object v4, v1, Lcom/jichi/ob/api/CyCityApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CyCityApi;

    invoke-static {v4}, Lcom/jichi/ob/api/CyCityApi;->access$getClient$p(Lcom/jichi/ob/api/CyCityApi;)Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    move-object v13, v4

    .line 202
    :cond_7
    :goto_0
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-static {v13, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v2

    if-eq v2, v11, :cond_8

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :cond_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    .line 205
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v11, :cond_9

    .line 206
    const-string v0, "CyCity upload success"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_9
    const/16 v0, 0x64

    .line 209
    invoke-static {v13, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 212
    const-string/jumbo v2, "uploadFit error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

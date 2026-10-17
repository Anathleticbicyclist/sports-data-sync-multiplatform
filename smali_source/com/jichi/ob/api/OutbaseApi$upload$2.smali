.class final Lcom/jichi/ob/api/OutbaseApi$upload$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OutbaseApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/OutbaseApi;->upload(Ljava/lang/String;Lcom/jichi/ob/util/WebBridge;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Triple<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Triple;",
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
    c = "com.jichi.ob.api.OutbaseApi$upload$2"
    f = "OutbaseApi.kt"
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
        0x0
    }
    l = {
        0xaf
    }
    m = "invokeSuspend"
    n = {
        "fitGuid",
        "date",
        "idParam",
        "guidHex",
        "prefix",
        "uriPath",
        "cdnUrl",
        "channel",
        "lastDetail",
        "cdnOk"
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
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $bridge:Lcom/jichi/ob/util/WebBridge;

.field final synthetic $fileData:[B

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $sessionId:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/OutbaseApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/OutbaseApi;Ljava/lang/String;[BLcom/jichi/ob/util/WebBridge;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/OutbaseApi;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/util/WebBridge;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/OutbaseApi$upload$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/OutbaseApi$upload$2;->this$0:Lcom/jichi/ob/api/OutbaseApi;

    iput-object p2, p0, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$fileData:[B

    iput-object p4, p0, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$bridge:Lcom/jichi/ob/util/WebBridge;

    iput-object p5, p0, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$sessionId:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/OutbaseApi$upload$2;

    iget-object v1, p0, Lcom/jichi/ob/api/OutbaseApi$upload$2;->this$0:Lcom/jichi/ob/api/OutbaseApi;

    iget-object v2, p0, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$fileData:[B

    iget-object v4, p0, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$bridge:Lcom/jichi/ob/util/WebBridge;

    iget-object v5, p0, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$sessionId:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/OutbaseApi$upload$2;-><init>(Lcom/jichi/ob/api/OutbaseApi;Ljava/lang/String;[BLcom/jichi/ob/util/WebBridge;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/OutbaseApi$upload$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Triple<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/OutbaseApi$upload$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/OutbaseApi$upload$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/OutbaseApi$upload$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    move-object/from16 v1, p0

    const-string v0, "CDN\u76f4\u8fde\u5931\u8d25: "

    const-string v2, "HTTP"

    const-string/jumbo v3, "\u56de\u9000fetch: HTTP "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 133
    iget v5, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->label:I

    const-string v6, "https://outbase.cn/"

    const-string v7, "Referer"

    const-string v8, "https://outbase.cn"

    const-string v9, "Origin"

    const-string v10, "Accept"

    const-string v11, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"

    const-string v12, "User-Agent"

    const-string/jumbo v13, "toString(...)"

    const-string v14, "em"

    const-string v15, " "

    move-object/from16 v16, v3

    const-string v3, "/"

    move-object/from16 v17, v4

    const-string v4, "OutbaseApi"

    move-object/from16 v18, v2

    const-string v2, ""

    move-object/from16 v19, v14

    if-eqz v5, :cond_1

    const/4 v14, 0x1

    if-ne v5, v14, :cond_0

    iget v5, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->I$0:I

    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$8:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$7:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$6:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$2:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    move-object v5, v2

    move-object v2, v8

    move v8, v0

    move-object/from16 v0, p1

    move-object/from16 v24, v6

    move-object/from16 v26, v13

    move-object v6, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v7

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object/from16 v24, v6

    move-object/from16 v21, v8

    move-object/from16 v26, v13

    move-object v6, v14

    move-object/from16 v14, v19

    move v8, v5

    move-object/from16 v19, v7

    move-object v5, v2

    goto/16 :goto_11

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 134
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v14, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->this$0:Lcom/jichi/ob/api/OutbaseApi;

    invoke-static {v14}, Lcom/jichi/ob/api/OutbaseApi;->access$dateTag(Lcom/jichi/ob/api/OutbaseApi;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v26, v13

    .line 136
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v24, 0x4

    const/16 v25, 0x0

    .line 137
    const-string v21, "-"

    const-string v22, ""

    const/16 v23, 0x0

    move-object/from16 v20, v5

    invoke-static/range {v20 .. v25}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v0

    move-object/from16 v21, v2

    move-object/from16 v22, v7

    move-object/from16 v2, v20

    const/4 v7, 0x0

    move-object/from16 v20, v6

    const/4 v6, 0x2

    .line 138
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "substring(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v24, v8

    const/4 v8, 0x4

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "/resource/"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".fit"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "https://melon-gateway.immomo.com/zeusfit/resource/h5/upload?source=zeusfit&id="

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "&uri="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "&momoid=0&"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 141
    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$fileName:Ljava/lang/String;

    move-object/from16 v25, v2

    iget-object v2, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$fileData:[B

    array-length v2, v2

    move-object/from16 p1, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v27, v6

    const-string/jumbo v6, "upload: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "B"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 150
    invoke-virtual {v0, v8}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v12, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 152
    const-string v2, "*/*"

    invoke-virtual {v0, v10, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    move-object/from16 v2, v24

    .line 153
    :try_start_2
    invoke-virtual {v0, v9, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    move-object/from16 v5, v20

    move-object/from16 v6, v22

    .line 154
    :try_start_3
    invoke-virtual {v0, v6, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-object/from16 v20, v7

    .line 155
    :try_start_4
    iget-object v7, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->this$0:Lcom/jichi/ob/api/OutbaseApi;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    move-object/from16 v28, v8

    :try_start_5
    iget-object v8, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$fileName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move-object/from16 v22, v14

    :try_start_6
    iget-object v14, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$fileData:[B

    invoke-static {v7, v8, v14}, Lcom/jichi/ob/api/OutbaseApi;->access$multipartBody(Lcom/jichi/ob/api/OutbaseApi;Ljava/lang/String;[B)Lokhttp3/MultipartBody;

    move-result-object v7

    check-cast v7, Lokhttp3/RequestBody;

    invoke-virtual {v0, v7}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 157
    iget-object v7, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->this$0:Lcom/jichi/ob/api/OutbaseApi;

    invoke-static {v7}, Lcom/jichi/ob/api/OutbaseApi;->access$getClient$p(Lcom/jichi/ob/api/OutbaseApi;)Lokhttp3/OkHttpClient;

    move-result-object v7

    invoke-virtual {v7, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    if-nez v7, :cond_3

    :cond_2
    move-object/from16 v7, v21

    .line 159
    :cond_3
    :try_start_7
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :catch_1
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_4

    .line 160
    :try_start_8
    const-string v14, "message"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v24, v5

    move-object/from16 v5, v21

    :try_start_9
    invoke-virtual {v8, v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v5, v21

    :goto_1
    move-object/from16 v14, v19

    goto/16 :goto_7

    :cond_4
    move-object/from16 v24, v5

    move-object/from16 v5, v21

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v21, v0

    const-string v0, "SUCCESS"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    if-eqz v0, :cond_5

    .line 162
    :try_start_a
    const-string v0, "h5\u76f4\u8fde"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-object v7, v0

    move-object/from16 v14, v19

    const/4 v8, 0x1

    move-object/from16 v19, v6

    move-object v6, v5

    goto/16 :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v14, v19

    move-object/from16 v19, v6

    const/4 v6, 0x1

    goto/16 :goto_a

    .line 164
    :cond_5
    :try_start_b
    invoke-virtual/range {v21 .. v21}, Lokhttp3/Response;->code()I

    move-result v0

    if-eqz v8, :cond_6

    const/16 v14, 0x50

    invoke-static {v7, v14}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    move-object/from16 v14, v19

    :try_start_c
    invoke-virtual {v8, v14, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_6
    move-object/from16 v14, v19

    const/4 v7, 0x0

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    :try_start_d
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v7, v23

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    goto/16 :goto_b

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_6

    :catch_8
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_5

    :catch_9
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_4

    :catch_a
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v20, v7

    :goto_4
    move-object/from16 v28, v8

    :goto_5
    move-object/from16 v22, v14

    :goto_6
    move-object/from16 v14, v19

    move-object/from16 v5, v21

    :goto_7
    move-object/from16 v19, v6

    goto :goto_9

    :catch_b
    move-exception v0

    move-object/from16 v5, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v5

    move-object/from16 v28, v8

    move-object/from16 v24, v20

    move-object/from16 v5, v21

    goto :goto_8

    :catch_c
    move-exception v0

    move-object/from16 v2, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v2

    move-object/from16 v28, v8

    move-object/from16 v5, v21

    move-object/from16 v2, v24

    move-object/from16 v24, v20

    :goto_8
    move-object/from16 v20, v7

    :goto_9
    const/4 v6, 0x0

    .line 168
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    const-string/jumbo v0, "\u76f4\u8fde\u5f02\u5e38:"

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v7, "CDN\u76f4\u8fde\u5f02\u5e38"

    move-object/from16 v8, v18

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v4, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-object v7, v5

    move v8, v6

    move-object v6, v0

    :goto_b
    if-nez v8, :cond_b

    .line 173
    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$bridge:Lcom/jichi/ob/util/WebBridge;

    if-eqz v0, :cond_b

    move-object/from16 v18, v0

    .line 175
    :try_start_e
    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$fileName:Ljava/lang/String;

    move-object/from16 v29, v0

    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$fileData:[B

    move-object/from16 v30, v0

    iget-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$sessionId:Ljava/lang/String;

    move-object/from16 v33, v1

    check-cast v33, Lkotlin/coroutines/Continuation;

    move-object/from16 v32, v0

    invoke-static/range {v25 .. v25}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$0:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$1:Ljava/lang/Object;

    iput-object v13, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$2:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$3:Ljava/lang/Object;

    invoke-static/range {v27 .. v27}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$4:Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$5:Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$6:Ljava/lang/Object;

    iput-object v7, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$7:Ljava/lang/Object;

    iput-object v6, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->L$8:Ljava/lang/Object;

    iput v8, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->I$0:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13

    move-object/from16 v20, v6

    const/4 v6, 0x1

    :try_start_f
    iput v6, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->label:I

    const/16 v31, 0x0

    move-object/from16 v27, v18

    invoke-virtual/range {v27 .. v33}, Lcom/jichi/ob/util/WebBridge;->uploadViaOutbasePage(Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_12

    move-object/from16 v6, v17

    if-ne v0, v6, :cond_7

    return-object v6

    :cond_7
    move-object/from16 v17, v7

    move-object/from16 v18, v13

    move-object/from16 v6, v20

    :goto_c
    :try_start_10
    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    move/from16 p1, v8

    const/16 v13, 0xc8

    .line 176
    :try_start_11
    invoke-static {v0, v13}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    move-object/from16 v21, v2

    move-object/from16 v2, v16

    :try_start_12
    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    .line 177
    :try_start_13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    goto :goto_d

    :catch_d
    const/4 v2, 0x0

    :goto_d
    const/16 v13, 0xc8

    if-ne v7, v13, :cond_9

    if-eqz v2, :cond_8

    .line 178
    :try_start_14
    const-string v8, "message"

    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :cond_8
    const/4 v8, 0x0

    :goto_e
    const-string v13, "SUCCESS"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    if-eqz v8, :cond_9

    .line 180
    :try_start_15
    const-string v7, "WebView\u56de\u9000"
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    move-object/from16 v13, v18

    const/4 v8, 0x1

    goto/16 :goto_13

    :catch_e
    move-exception v0

    const/4 v8, 0x1

    goto :goto_11

    :cond_9
    if-eqz v2, :cond_a

    const/16 v8, 0x3c

    .line 182
    :try_start_16
    invoke-static {v0, v8}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_a
    const/4 v0, 0x0

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " | \u56de\u9000HTTP"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    move/from16 v8, p1

    goto :goto_12

    :catch_f
    move-exception v0

    goto :goto_10

    :catch_10
    move-exception v0

    move-object/from16 v21, v2

    :goto_10
    move/from16 v8, p1

    goto :goto_11

    :catch_11
    move-exception v0

    move-object/from16 v21, v2

    move/from16 p1, v8

    goto :goto_11

    :catch_12
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v17, v7

    move-object/from16 v18, v13

    move-object/from16 v6, v20

    goto :goto_11

    :catch_13
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v20, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v13

    .line 185
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | \u56de\u9000\u5f02\u5e38:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_12
    move-object/from16 v7, v17

    move-object/from16 v13, v18

    goto :goto_13

    :cond_b
    move-object/from16 v21, v2

    move-object/from16 v20, v6

    move-object/from16 v6, v20

    .line 189
    :goto_13
    const-string v0, "]"

    if-eqz v8, :cond_15

    .line 192
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->this$0:Lcom/jichi/ob/api/OutbaseApi;

    iget-object v6, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$fileData:[B

    iget-object v8, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$fileName:Ljava/lang/String;

    move-object/from16 v16, v15

    .line 193
    const-string v15, "fitGuid"

    invoke-virtual {v2, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string/jumbo v13, "sign"

    invoke-static {v3, v6}, Lcom/jichi/ob/api/OutbaseApi;->access$md5Hex(Lcom/jichi/ob/api/OutbaseApi;[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v3, "fileName"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v3, "fileSize"

    array-length v6, v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 199
    const-string v6, "https://melon-gateway.immomo.com/zeusfit/api/h5/sport/upload/fit"

    invoke-virtual {v3, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 200
    const-string v6, "Sessionid"

    iget-object v8, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->$sessionId:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 201
    const-string v6, "Uagent"

    const-string v8, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 PCAgent/1.0.0"

    invoke-virtual {v3, v6, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 202
    invoke-virtual {v3, v12, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 203
    const-string v6, "Content-Type"

    const-string v8, "application/json"

    invoke-virtual {v3, v6, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 204
    const-string v6, "application/json, text/plain, */*"

    invoke-virtual {v3, v10, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    move-object/from16 v6, v21

    .line 205
    invoke-virtual {v3, v9, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    move-object/from16 v9, v19

    move-object/from16 v6, v24

    .line 206
    invoke-virtual {v3, v9, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 207
    sget-object v6, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v9, v26

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v9, v8}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 209
    iget-object v3, v1, Lcom/jichi/ob/api/OutbaseApi$upload$2;->this$0:Lcom/jichi/ob/api/OutbaseApi;

    invoke-static {v3}, Lcom/jichi/ob/api/OutbaseApi;->access$getClient$p(Lcom/jichi/ob/api/OutbaseApi;)Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 211
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v13, 0xc8

    invoke-static {v3, v13}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Register HTTP "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ": "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x64

    .line 213
    :try_start_17
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_14

    .line 214
    const-string v6, "ec"

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 215
    invoke-virtual {v4, v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 216
    const-string v9, "data"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 217
    const-string/jumbo v9, "statusDesc"

    invoke-virtual {v4, v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    :cond_c
    move-object v4, v5

    :cond_d
    if-nez v6, :cond_f

    .line 220
    new-instance v2, Lkotlin/Triple;

    move-object v3, v4

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_e
    move-object v3, v5

    :goto_14
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u4e0a\u4f20\u6210\u529f["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v0, v3, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    :cond_f
    const/4 v4, 0x0

    const/16 v0, 0x1f7

    if-eq v6, v0, :cond_13

    .line 221
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v8

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v5, "\u5df2\u5b58\u5728"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v0, v5, v4, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string/jumbo v5, "\u76f8\u540c\u65f6\u95f4"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5, v4, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string/jumbo v5, "\u91cd\u590d"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5, v4, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_16

    :cond_10
    const v5, 0x64191

    if-eq v6, v5, :cond_12

    .line 223
    const-string v5, "log in"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v14, 0x1

    invoke-static {v0, v5, v14}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_12

    const-string/jumbo v5, "\u767b\u5f55"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5, v4, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_15

    .line 225
    :cond_11
    new-instance v0, Lcom/jichi/ob/api/OutbaseApi$UploadException;

    invoke-static {v3, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6ce8\u518c\u5931\u8d25: ec="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " em="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v10, 0x0

    invoke-direct {v0, v2, v4, v6, v10}, Lcom/jichi/ob/api/OutbaseApi$UploadException;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 224
    :cond_12
    :goto_15
    new-instance v0, Lcom/jichi/ob/api/OutbaseApi$UploadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Outbase\u767b\u5f55\u6001\u5931\u6548(em="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x1

    invoke-direct {v0, v2, v14}, Lcom/jichi/ob/api/OutbaseApi$UploadException;-><init>(Ljava/lang/String;Z)V

    throw v0

    :cond_13
    :goto_16
    const/4 v14, 0x1

    .line 222
    new-instance v2, Lkotlin/Triple;

    const-string/jumbo v0, "\u5df2\u5b58\u5728(\u8df3\u8fc7)"

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v0, v3, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_17
    return-object v2

    .line 213
    :catch_14
    new-instance v0, Lcom/jichi/ob/api/OutbaseApi$UploadException;

    invoke-static {v3, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6ce8\u518c\u89e3\u6790\u5931\u8d25:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {v0, v2, v4, v9, v10}, Lcom/jichi/ob/api/OutbaseApi$UploadException;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_14
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 210
    new-instance v0, Lcom/jichi/ob/api/OutbaseApi$UploadException;

    const-string/jumbo v2, "\u6ce8\u518c\u7a7a\u54cd\u5e94"

    invoke-direct {v0, v2, v4, v9, v10}, Lcom/jichi/ob/api/OutbaseApi$UploadException;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_15
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 189
    new-instance v2, Lcom/jichi/ob/api/OutbaseApi$UploadException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "CDN\u4e0a\u4f20\u5931\u8d25["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4, v9, v10}, Lcom/jichi/ob/api/OutbaseApi$UploadException;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method

.class final Lcom/jichi/ob/api/KomootApi$upload$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KomootApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/KomootApi;->upload(Ljava/lang/String;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nKomootApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KomootApi.kt\ncom/jichi/ob/api/KomootApi$upload$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,315:1\n1#2:316\n*E\n"
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
    c = "com.jichi.ob.api.KomootApi$upload$2"
    f = "KomootApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $data:[B

.field final synthetic $email:Ljava/lang/String;

.field final synthetic $isFit:Z

.field final synthetic $record:Lcom/jichi/ob/model/ActivityRecord;

.field final synthetic $sport:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/KomootApi;


# direct methods
.method constructor <init>(ZLcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;[BLcom/jichi/ob/api/KomootApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/api/KomootApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/KomootApi$upload$2;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->$isFit:Z

    iput-object p2, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    iput-object p3, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->$sport:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->$data:[B

    iput-object p5, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->this$0:Lcom/jichi/ob/api/KomootApi;

    iput-object p6, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->$email:Ljava/lang/String;

    iput-object p7, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->$token:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v0, Lcom/jichi/ob/api/KomootApi$upload$2;

    iget-boolean v1, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->$isFit:Z

    iget-object v2, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    iget-object v3, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->$sport:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->$data:[B

    iget-object v5, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->this$0:Lcom/jichi/ob/api/KomootApi;

    iget-object v6, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->$email:Ljava/lang/String;

    iget-object v7, p0, Lcom/jichi/ob/api/KomootApi$upload$2;->$token:Ljava/lang/String;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/jichi/ob/api/KomootApi$upload$2;-><init>(ZLcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;[BLcom/jichi/ob/api/KomootApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/KomootApi$upload$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/KomootApi$upload$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/KomootApi$upload$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/KomootApi$upload$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "KomootApi"

    const-string v0, "Komoot\u4e0a\u4f20\u5931\u8d25: HTTP "

    const-string v3, "Komoot upload HTTP "

    const-string v4, "Komoot \u767b\u5f55\u5931\u6548(HTTP "

    const-string v5, "Komoot upload 400: "

    const-string v6, "https://api.komoot.de/v007/tours/?data_type=gpx&sport="

    const-string v7, "https://api.komoot.de/v007/tours/?data_type=fit&name="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 260
    iget v8, v1, Lcom/jichi/ob/api/KomootApi$upload$2;->label:I

    if-nez v8, :cond_9

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v8, 0x0

    .line 263
    :try_start_0
    iget-object v9, v1, Lcom/jichi/ob/api/KomootApi$upload$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    invoke-virtual {v9}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v11

    :goto_0
    if-nez v9, :cond_1

    const-string v9, "jichiOB sync"

    .line 264
    :cond_1
    iget-boolean v10, v1, Lcom/jichi/ob/api/KomootApi$upload$2;->$isFit:Z

    if-eqz v10, :cond_2

    .line 265
    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 267
    :cond_2
    iget-object v7, v1, Lcom/jichi/ob/api/KomootApi$upload$2;->$sport:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    :goto_1
    sget-object v12, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v13, v1, Lcom/jichi/ob/api/KomootApi$upload$2;->$data:[B

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 270
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    .line 271
    invoke-virtual {v9, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 272
    const-string v9, "Authorization"

    iget-object v10, v1, Lcom/jichi/ob/api/KomootApi$upload$2;->this$0:Lcom/jichi/ob/api/KomootApi;

    iget-object v12, v1, Lcom/jichi/ob/api/KomootApi$upload$2;->$email:Ljava/lang/String;

    iget-object v13, v1, Lcom/jichi/ob/api/KomootApi$upload$2;->$token:Ljava/lang/String;

    invoke-static {v10, v12, v13}, Lcom/jichi/ob/api/KomootApi;->access$basicAuth(Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 273
    const-string v9, "User-Agent"

    const-string v10, "jichiOb/7.9.6 (\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB)"

    invoke-virtual {v6, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 274
    invoke-virtual {v6, v7}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 275
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    .line 276
    iget-object v7, v1, Lcom/jichi/ob/api/KomootApi$upload$2;->this$0:Lcom/jichi/ob/api/KomootApi;

    invoke-static {v7}, Lcom/jichi/ob/api/KomootApi;->access$getClient$p(Lcom/jichi/ob/api/KomootApi;)Lokhttp3/OkHttpClient;

    move-result-object v7

    invoke-virtual {v7, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v6

    check-cast v6, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v7, v6

    check-cast v7, Lokhttp3/Response;

    .line 277
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    :cond_3
    const-string v9, ""

    .line 278
    :cond_4
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v10

    const/16 v12, 0xc9

    const/4 v13, 0x1

    if-eq v10, v12, :cond_8

    const/16 v12, 0xca

    if-eq v10, v12, :cond_7

    const/16 v12, 0x190

    if-eq v10, v12, :cond_6

    const/16 v5, 0x191

    if-eq v10, v5, :cond_5

    const/16 v5, 0x193

    if-eq v10, v5, :cond_5

    .line 287
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v3, Lkotlin/Pair;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 285
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v3, Lkotlin/Pair;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "Komoot\u4e0a\u4f20\u5931\u8d25: \u6587\u4ef6\u683c\u5f0f\u4e0d\u88ab\u63a5\u53d7(400)"

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 280
    :cond_7
    new-instance v3, Lkotlin/Pair;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "Komoot\u5df2\u5b58\u5728(\u91cd\u590d)"

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 279
    :cond_8
    new-instance v3, Lkotlin/Pair;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "Komoot\u4e0a\u4f20\u6210\u529f"

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :goto_2
    :try_start_2
    invoke-static {v6, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v6, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 293
    const-string v3, "Komoot upload error"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    new-instance v2, Lkotlin/Pair;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Komoot\u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 260
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

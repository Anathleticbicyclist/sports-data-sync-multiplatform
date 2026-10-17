.class final Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GarminApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi;->uploadWellnessFit(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nGarminApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$uploadWellnessFit$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1768:1\n216#2,2:1769\n216#2,2:1772\n1#3:1771\n*S KotlinDebug\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$uploadWellnessFit$2\n*L\n1680#1:1769,2\n1704#1:1772,2\n*E\n"
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
    c = "com.jichi.ob.api.GarminApi$uploadWellnessFit$2"
    f = "GarminApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cred:Ljava/lang/String;

.field final synthetic $data:[B

.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field final synthetic $fileName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/GarminApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminApi;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$cred:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iput-object p4, p0, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$fileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$data:[B

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

    new-instance v0, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$cred:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v4, p0, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$fileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$data:[B

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1670
    iget v0, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->label:I

    if-nez v0, :cond_13

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1672
    :try_start_0
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$cred:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jichi/ob/api/GarminApi;->access$parseCredential(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;

    move-result-object v0

    .line 1673
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v3, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "): "

    const-string v5, "Duplicate Activity"

    const-string/jumbo v6, "\u91cd\u590d(\u5df2\u5728\u4f73\u660e\u5b58\u5728)"

    const-string/jumbo v7, "\u4f73\u660e\u5065\u5eb7\u4e0a\u4f20\u5931\u8d25 HTTP "

    const-string/jumbo v8, "\u4f73\u660e\u62d2\u7edd\u8be5\u6587\u4ef6(HTTP "

    const-string v9, "Duplicate Wellness"

    const-string/jumbo v11, "\u9700\u7ed1\u5b9a\u5065\u5eb7\u8bbe\u5907(419)"

    const-string v16, ""

    const-string v12, "application/json"

    const-string v13, "Accept"

    const-string v14, "application/octet-stream"

    const-string v15, "file"

    const-string v10, ": "

    move-object/from16 v17, v5

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    :try_start_1
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v3, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v18, v6

    goto/16 :goto_6

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getOauthToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1674
    :goto_1
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {v2, v3}, Lcom/jichi/ob/api/GarminApi;->access$connectApiHost(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/upload-service/upload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1675
    new-instance v3, Lokhttp3/MultipartBody$Builder;

    move-object/from16 v18, v6

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6, v5}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1676
    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v3, v6}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 1677
    iget-object v6, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$fileName:Ljava/lang/String;

    sget-object v19, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v5, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$data:[B

    move-object/from16 v20, v5

    sget-object v5, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v5, v14}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v21

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v5

    invoke-virtual {v3, v15, v6, v5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 1678
    invoke-virtual {v3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v3

    .line 1679
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    iget-object v6, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v14, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$ds:Lcom/jichi/ob/model/DataSource;

    .line 1680
    const-string v15, "POST"

    invoke-static {v6, v0, v14, v2, v15}, Lcom/jichi/ob/api/GarminApi;->access$connectHeaders(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1769
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1680
    invoke-virtual {v5, v6, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_2

    .line 1681
    :cond_3
    invoke-virtual {v5, v13, v12}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 1682
    check-cast v3, Lokhttp3/RequestBody;

    invoke-virtual {v5, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 1683
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v2}, Lcom/jichi/ob/api/GarminApi;->access$getClient$p(Lcom/jichi/ob/api/GarminApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v0, v2

    check-cast v0, Lokhttp3/Response;

    .line 1684
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    move-object/from16 v3, v16

    .line 1685
    :cond_5
    sget-object v5, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v6

    const/16 v12, 0xa0

    invoke-static {v3, v12}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "uploadWellness DI: HTTP "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ", result="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0x190

    if-eq v5, v6, :cond_a

    const/16 v6, 0x199

    if-eq v5, v6, :cond_7

    const/16 v6, 0x19f

    if-eq v5, v6, :cond_a

    const/16 v6, 0x1a3

    if-eq v5, v6, :cond_6

    packed-switch v5, :pswitch_data_0

    .line 1692
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :pswitch_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    move-object v6, v11

    :goto_3
    const/4 v0, 0x0

    goto :goto_5

    .line 1688
    :cond_7
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    invoke-static {v0, v9, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v5, v17

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/16 v4, 0x64

    .line 1689
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u4f73\u660e\u5065\u5eb7\u4e0a\u4f20\u51b2\u7a81 HTTP 409: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_9
    :goto_4
    move-object/from16 v6, v18

    goto :goto_3

    .line 1691
    :cond_a
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v5, 0x96

    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1686
    :goto_5
    :try_start_3
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v6

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1697
    :goto_6
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {v0, v2}, Lcom/jichi/ob/api/GarminApi;->access$gcApiHost(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/upload-service/upload/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1698
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v6, v3}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1699
    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 1700
    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$fileName:Ljava/lang/String;

    sget-object v19, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v5, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$data:[B

    sget-object v6, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v6, v14}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v21

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v5

    invoke-static/range {v19 .. v25}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v5

    invoke-virtual {v2, v15, v3, v5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 1701
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v2

    .line 1702
    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v5, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v6, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->$cred:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcom/jichi/ob/api/GarminApi;->access$apiHeaders(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 1703
    invoke-interface {v3, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 1772
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1704
    invoke-virtual {v0, v6, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_7

    :cond_b
    check-cast v2, Lokhttp3/RequestBody;

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 1705
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$uploadWellnessFit$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v2}, Lcom/jichi/ob/api/GarminApi;->access$getClient$p(Lcom/jichi/ob/api/GarminApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    move-object v0, v2

    check-cast v0, Lokhttp3/Response;

    .line 1706
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    :cond_c
    move-object/from16 v3, v16

    .line 1707
    :cond_d
    sget-object v5, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v6

    const/16 v12, 0xa0

    invoke-static {v3, v12}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "uploadWellness OkHttp HTTP "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0x190

    if-eq v5, v6, :cond_12

    const/16 v6, 0x199

    if-eq v5, v6, :cond_f

    const/16 v6, 0x19f

    if-eq v5, v6, :cond_12

    const/16 v6, 0x1a3

    if-eq v5, v6, :cond_e

    packed-switch v5, :pswitch_data_1

    .line 1714
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :pswitch_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_a

    :cond_e
    move-object v6, v11

    :goto_8
    const/4 v0, 0x0

    goto :goto_a

    .line 1710
    :cond_f
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    invoke-static {v0, v9, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_11

    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v5, v17

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    const/16 v4, 0x64

    .line 1711
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u4f73\u660e\u5065\u5eb7\u4e0a\u4f20\u51b2\u7a81 HTTP 409: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_11
    :goto_9
    move-object/from16 v6, v18

    goto :goto_8

    .line 1713
    :cond_12
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v5, 0x96

    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_8

    .line 1705
    :goto_a
    :try_start_7
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-object v6

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v0

    .line 1721
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uploadWellness\u5f02\u5e38: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4f73\u660e\u5065\u5eb7\u4e0a\u4f20\u5f02\u5e38: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :catch_1
    move-exception v0

    .line 1718
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uploadWellness\u8fde\u63a5\u9519\u8bef: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1719
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4f73\u660e\u5065\u5eb7\u4e0a\u4f20\u5f02\u5e38(\u8fde\u63a5\u9519\u8bef): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 1670
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

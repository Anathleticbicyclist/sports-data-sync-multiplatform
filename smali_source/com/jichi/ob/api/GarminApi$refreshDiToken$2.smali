.class final Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GarminApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi;->refreshDiToken(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.GarminApi$refreshDiToken$2"
    f = "GarminApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cred:Ljava/lang/String;

.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

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
            "Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->$cred:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->$ds:Lcom/jichi/ob/model/DataSource;

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

    new-instance p1, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->$cred:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v1, p0

    const-string v0, "application/x-www-form-urlencoded"

    const-string v2, "10861"

    const-string v3, "refreshDiToken: \u2705 \u5237\u65b0\u6210\u529f (expires_in="

    const-string v4, "refreshDiToken: 429\u9650\u6d41\uff0c\u5199\u516524\u5c0f\u65f6\u51b7\u5374\u6807\u8bb0(\u8d26\u53f7="

    const-string v5, "refreshDiToken: \u5237\u65b0\u5931\u8d25 HTTP "

    const-string v6, "refreshDiToken: HTTP "

    const-string v7, "refreshDiToken: \u5237\u65b0DI token (clientId="

    const-string v8, "grant_type=refresh_token&refresh_token="

    const-string v9, "Basic "

    const-string v10, "refreshDiToken: \u8d26\u53f7["

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 735
    iget v11, v1, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->label:I

    if-nez v11, :cond_b

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v11, 0x0

    .line 737
    :try_start_0
    iget-object v12, v1, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v13, v1, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->$cred:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/jichi/ob/api/GarminApi;->access$parseCredential(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;

    move-result-object v12

    if-nez v12, :cond_0

    return-object v11

    .line 738
    :cond_0
    invoke-virtual {v12}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiRefreshToken()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiClientId()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 739
    :goto_0
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    const-string v2, "refreshDiToken: \u65e0refresh_token\u6216client_id\uff0c\u65e0\u6cd5\u5237\u65b0"

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    return-object v11

    .line 743
    :cond_2
    invoke-virtual {v12}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getEmail()Ljava/lang/String;

    move-result-object v13

    .line 744
    invoke-virtual {v12}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiClientId()Ljava/lang/String;

    move-result-object v14

    .line 746
    sget-object v15, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 p1, v11

    :try_start_1
    iget-object v11, v1, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v15, v11, v13, v14}, Lcom/jichi/ob/api/GarminApi$Companion;->isCooldown(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 747
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\u901a\u9053["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\u5904\u4e8e\u98ce\u63a7\u51b7\u5374\u671f\uff0c\u8df3\u8fc7\u5237\u65b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    return-object p1

    .line 750
    :cond_3
    iget-object v10, v1, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v11, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne v10, v11, :cond_4

    const-string v10, "https://diauth.garmin.cn/di-oauth2-service/oauth/token"

    goto :goto_1

    :cond_4
    const-string v10, "https://diauth.garmin.com/di-oauth2-service/oauth/token"

    .line 751
    :goto_1
    invoke-virtual {v12}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiClientId()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, ":"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v15, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    const-string v15, "getBytes(...)"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x2

    invoke-static {v11, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 752
    invoke-virtual {v12}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiRefreshToken()Ljava/lang/String;

    move-result-object v11

    const-string v15, "UTF-8"

    invoke-static {v11, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiClientId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "&client_id="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 753
    sget-object v11, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiClientId()Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x14

    invoke-static {v12, v15}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "...)"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 754
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 755
    invoke-virtual {v7, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 756
    const-string v10, "Authorization"

    invoke-virtual {v7, v10, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 757
    const-string v9, "User-Agent"

    const-string v10, "GCM-Android-5.23"

    invoke-virtual {v7, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 758
    const-string v9, "X-Garmin-User-Agent"

    const-string v10, "com.garmin.android.apps.connectmobile/5.23; ; Google/sdk_gphone64_arm64/google; Android/33; Dalvik/2.1.0"

    invoke-virtual {v7, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 759
    const-string v9, "X-Garmin-Paired-App-Version"

    invoke-virtual {v7, v9, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 760
    const-string v9, "X-Garmin-Client-Platform"

    const-string v10, "Android"

    invoke-virtual {v7, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 761
    const-string v9, "X-App-Ver"

    invoke-virtual {v7, v9, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 762
    const-string v7, "X-Lang"

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v10, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne v9, v10, :cond_5

    const-string/jumbo v9, "zh-CN"

    goto :goto_2

    :cond_5
    const-string v9, "en"

    :goto_2
    invoke-virtual {v2, v7, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 763
    const-string v7, "X-GCExperience"

    const-string v9, "GC5"

    invoke-virtual {v2, v7, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 764
    const-string v7, "Accept"

    const-string v9, "application/json,text/html;q=0.9,*/*;q=0.8"

    invoke-virtual {v2, v7, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 765
    const-string v7, "Content-Type"

    invoke-virtual {v2, v7, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 766
    sget-object v7, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v9, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v9, v0}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 768
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v2}, Lcom/jichi/ob/api/GarminApi;->access$getClient$p(Lcom/jichi/ob/api/GarminApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, ""

    if-eqz v2, :cond_6

    :try_start_2
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    move-object v2, v7

    .line 770
    :cond_7
    sget-object v8, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v9

    const/16 v10, 0xc8

    invoke-static {v2, v10}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", body="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v6

    const/16 v8, 0x1ad

    if-ne v6, v8, :cond_8

    .line 772
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$refreshDiToken$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {v0, v2, v13, v14}, Lcom/jichi/ob/api/GarminApi$Companion;->access$writeCooldown(Lcom/jichi/ob/api/GarminApi$Companion;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    return-object p1

    .line 776
    :cond_8
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_9

    .line 777
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    return-object p1

    .line 780
    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 781
    const-string v2, "access_token"

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 782
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v2, v20

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 783
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    const-string v2, "refreshDiToken: \u54cd\u5e94\u65e0access_token"

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    return-object p1

    .line 786
    :cond_a
    const-string v2, "refresh_token"

    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 787
    const-string v2, "expires_in"

    const-wide/16 v4, 0xe10

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v0, 0x3e8

    int-to-long v8, v0

    div-long/2addr v6, v8

    add-long v23, v6, v4

    .line 789
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 790
    new-instance v17, Lcom/jichi/ob/api/GarminApi$GarminSession;

    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getCookies()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getCsrf()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiClientId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getEmail()Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x180

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v17 .. v29}, Lcom/jichi/ob/api/GarminApi$GarminSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/api/GarminApi$GarminSession;->toJson()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 p1, v11

    .line 792
    :goto_3
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "refreshDiToken\u5f02\u5e38: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    return-object p1

    .line 735
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

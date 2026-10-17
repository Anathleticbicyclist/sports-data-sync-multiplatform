.class final Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SuuntoApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/SuuntoApi;->exchangeCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/jichi/ob/api/SuuntoApi$LoginResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuuntoApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuuntoApi.kt\ncom/jichi/ob/api/SuuntoApi$exchangeCode$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,442:1\n1#2:443\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/jichi/ob/api/SuuntoApi$LoginResult;",
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
    c = "com.jichi.ob.api.SuuntoApi$exchangeCode$2"
    f = "SuuntoApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $clientId:Ljava/lang/String;

.field final synthetic $clientSecret:Ljava/lang/String;

.field final synthetic $code:Ljava/lang/String;

.field final synthetic $subscriptionKey:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/SuuntoApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/SuuntoApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iput-object p2, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$clientId:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$clientSecret:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$subscriptionKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$code:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;

    iget-object v1, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v2, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$clientSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$subscriptionKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$code:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;-><init>(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/jichi/ob/api/SuuntoApi$LoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const-string v0, "SuuntoApi"

    const-string v1, "Suunto exchangeCode HTTP "

    const-string v2, "Basic "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 113
    iget v3, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->label:I

    if-nez v3, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 115
    :try_start_0
    iget-object v3, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v4, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$clientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$clientSecret:Ljava/lang/String;

    iget-object v6, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$subscriptionKey:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/jichi/ob/api/SuuntoApi;->access$cacheCreds(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v3, Lokhttp3/FormBody$Builder;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4, p1}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    const-string v4, "grant_type"

    const-string v5, "authorization_code"

    invoke-virtual {v3, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v3

    .line 118
    const-string v4, "code"

    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$code:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v3

    .line 119
    const-string v4, "redirect_uri"

    const-string v5, "https://localhost:8080/suunto-callback"

    invoke-virtual {v3, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v3

    .line 120
    sget-object v4, Lcom/jichi/ob/api/SuuntoApi;->Companion:Lcom/jichi/ob/api/SuuntoApi$Companion;

    invoke-virtual {v4}, Lcom/jichi/ob/api/SuuntoApi$Companion;->getLastCodeVerifier()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    const-string v5, "application/x-www-form-urlencoded"

    const-string v6, "Content-Type"

    const-string v7, "https://cloudapi-oauth.suunto.com/oauth/token"

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v8, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$clientSecret:Ljava/lang/String;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 123
    const-string v2, "client_id"

    iget-object v8, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$clientId:Ljava/lang/String;

    invoke-virtual {v3, v2, v8}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 124
    const-string v2, "code_verifier"

    invoke-virtual {v3, v2, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 125
    sget-object v2, Lcom/jichi/ob/api/SuuntoApi;->Companion:Lcom/jichi/ob/api/SuuntoApi$Companion;

    invoke-virtual {v2, p1}, Lcom/jichi/ob/api/SuuntoApi$Companion;->setLastCodeVerifier(Ljava/lang/String;)V

    .line 126
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 127
    invoke-virtual {v2, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 128
    invoke-virtual {v2, v6, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v3

    check-cast v3, Lokhttp3/RequestBody;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    goto :goto_0

    .line 132
    :cond_0
    sget-object v4, Lcom/jichi/ob/api/SuuntoApi;->Companion:Lcom/jichi/ob/api/SuuntoApi$Companion;

    invoke-virtual {v4, p1}, Lcom/jichi/ob/api/SuuntoApi$Companion;->setLastCodeVerifier(Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$clientId:Ljava/lang/String;

    iget-object v8, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->$clientSecret:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v8, "getBytes(...)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 135
    invoke-virtual {v4, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 136
    invoke-virtual {v4, v6, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 137
    const-string v5, "Authorization"

    invoke-virtual {v4, v5, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 138
    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v3

    check-cast v3, Lokhttp3/RequestBody;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 141
    :goto_0
    iget-object v3, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    invoke-static {v3}, Lcom/jichi/ob/api/SuuntoApi;->access$getClient$p(Lcom/jichi/ob/api/SuuntoApi;)Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    iget-object v3, p0, Lcom/jichi/ob/api/SuuntoApi$exchangeCode$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v4, v2

    check-cast v4, Lokhttp3/Response;

    .line 142
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, ""

    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    move-object v5, v6

    .line 143
    :cond_2
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_3

    .line 144
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-static {v5, v8}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :try_start_4
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object p1

    .line 147
    :cond_3
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-object v1, p1

    :goto_1
    if-nez v1, :cond_4

    :try_start_6
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    return-object p1

    .line 148
    :cond_4
    :try_start_7
    const-string v4, "access_token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, p1

    :goto_2
    if-nez v4, :cond_6

    :try_start_8
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    return-object p1

    .line 149
    :cond_6
    :try_start_9
    const-string v5, "refresh_token"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    move-object v5, p1

    :goto_3
    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    move-object v6, v5

    .line 150
    :goto_4
    const-string v5, "expires_in"

    const-wide/32 v7, 0x15180

    invoke-virtual {v1, v5, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 151
    invoke-static {v3, v4}, Lcom/jichi/ob/api/SuuntoApi;->access$setLastAccessToken$p(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;)V

    .line 152
    invoke-static {v3, v6}, Lcom/jichi/ob/api/SuuntoApi;->access$setLastRefreshToken$p(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/16 v1, 0x3e8

    int-to-long v11, v1

    mul-long/2addr v7, v11

    add-long/2addr v9, v7

    invoke-static {v3, v9, v10}, Lcom/jichi/ob/api/SuuntoApi;->access$setLastExpiresAt$p(Lcom/jichi/ob/api/SuuntoApi;J)V

    .line 154
    new-instance v1, Lcom/jichi/ob/api/SuuntoApi$LoginResult;

    invoke-static {v3}, Lcom/jichi/ob/api/SuuntoApi;->access$getLastExpiresAt$p(Lcom/jichi/ob/api/SuuntoApi;)J

    move-result-wide v7

    invoke-direct {v1, v4, v6, v7, v8}, Lcom/jichi/ob/api/SuuntoApi$LoginResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 141
    :try_start_a
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-object p1, v1

    goto :goto_5

    :catchall_0
    move-exception v1

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_c
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :catch_1
    move-exception v1

    .line 157
    const-string v2, "Suunto exchangeCode error"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-object p1

    .line 113
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class final Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SuuntoApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/SuuntoApi;->refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nSuuntoApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuuntoApi.kt\ncom/jichi/ob/api/SuuntoApi$refreshToken$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,442:1\n1#2:443\n*E\n"
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
    c = "com.jichi.ob.api.SuuntoApi$refreshToken$2"
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

.field final synthetic $refreshToken:Ljava/lang/String;

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
            "Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iput-object p2, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$clientId:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$clientSecret:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$subscriptionKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$refreshToken:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;

    iget-object v1, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v2, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$clientSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$subscriptionKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$refreshToken:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;-><init>(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const-string v0, "SuuntoApi"

    const-string v1, "refresh_token"

    const-string v2, "Suunto refreshToken HTTP "

    const-string v3, "Basic "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 165
    iget v4, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->label:I

    if-nez v4, :cond_a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 167
    :try_start_0
    iget-object v4, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$clientId:Ljava/lang/String;

    iget-object v6, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$clientSecret:Ljava/lang/String;

    iget-object v7, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$subscriptionKey:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/jichi/ob/api/SuuntoApi;->access$cacheCreds(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v4, Lokhttp3/FormBody$Builder;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v5, p1}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 169
    const-string v5, "grant_type"

    invoke-virtual {v4, v5, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v4

    .line 170
    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$refreshToken:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v4

    .line 171
    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$clientSecret:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "client_id"

    iget-object v6, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$clientId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 172
    :cond_0
    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$clientSecret:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "application/x-www-form-urlencoded"

    const-string v7, "Content-Type"

    const-string v8, "https://cloudapi-oauth.suunto.com/oauth/token"

    if-lez v5, :cond_1

    .line 173
    :try_start_1
    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$clientId:Ljava/lang/String;

    iget-object v9, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$clientSecret:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v9, "getBytes(...)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x2

    invoke-static {v5, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 175
    invoke-virtual {v5, v8}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 176
    invoke-virtual {v5, v7, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 177
    const-string v6, "Authorization"

    invoke-virtual {v5, v6, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 178
    invoke-virtual {v4}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v4

    check-cast v4, Lokhttp3/RequestBody;

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 179
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    goto :goto_0

    .line 181
    :cond_1
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 182
    invoke-virtual {v3, v8}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 183
    invoke-virtual {v3, v7, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 184
    invoke-virtual {v4}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v4

    check-cast v4, Lokhttp3/RequestBody;

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 185
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 187
    :goto_0
    iget-object v4, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    invoke-static {v4}, Lcom/jichi/ob/api/SuuntoApi;->access$getClient$p(Lcom/jichi/ob/api/SuuntoApi;)Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    iget-object v4, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->$refreshToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$refreshToken$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v6, v3

    check-cast v6, Lokhttp3/Response;

    .line 188
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    :cond_2
    const-string v7, ""

    .line 189
    :cond_3
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_4

    .line 190
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-static {v7, v9}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    :try_start_3
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    .line 193
    :cond_4
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-object v2, p1

    :goto_1
    if-nez v2, :cond_5

    :try_start_5
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-object p1

    .line 194
    :cond_5
    :try_start_6
    const-string v6, "access_token"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    move-object v6, p1

    :goto_2
    if-nez v6, :cond_7

    :try_start_7
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    return-object p1

    .line 195
    :cond_7
    :try_start_8
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v1

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_3

    :cond_8
    move-object v1, p1

    :goto_3
    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    move-object v4, v1

    .line 196
    :goto_4
    const-string v1, "expires_in"

    const-wide/32 v7, 0x15180

    invoke-virtual {v2, v1, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 197
    invoke-static {v5, v6}, Lcom/jichi/ob/api/SuuntoApi;->access$setLastAccessToken$p(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;)V

    .line 198
    invoke-static {v5, v4}, Lcom/jichi/ob/api/SuuntoApi;->access$setLastRefreshToken$p(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/16 v9, 0x3e8

    int-to-long v9, v9

    mul-long/2addr v1, v9

    add-long/2addr v7, v1

    invoke-static {v5, v7, v8}, Lcom/jichi/ob/api/SuuntoApi;->access$setLastExpiresAt$p(Lcom/jichi/ob/api/SuuntoApi;J)V

    .line 200
    new-instance v1, Lcom/jichi/ob/api/SuuntoApi$LoginResult;

    invoke-static {v5}, Lcom/jichi/ob/api/SuuntoApi;->access$getLastExpiresAt$p(Lcom/jichi/ob/api/SuuntoApi;)J

    move-result-wide v7

    invoke-direct {v1, v6, v4, v7, v8}, Lcom/jichi/ob/api/SuuntoApi$LoginResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 187
    :try_start_9
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object p1, v1

    goto :goto_5

    :catchall_0
    move-exception v1

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_b
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    move-exception v1

    .line 203
    const-string v2, "Suunto refreshToken error"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-object p1

    .line 165
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

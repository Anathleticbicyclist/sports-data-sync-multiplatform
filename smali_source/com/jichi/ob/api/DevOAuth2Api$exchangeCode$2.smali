.class final Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DevOAuth2Api.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/DevOAuth2Api;->exchangeCode(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevOAuth2Api.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevOAuth2Api.kt\ncom/jichi/ob/api/DevOAuth2Api$exchangeCode$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,259:1\n1#2:260\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.api.DevOAuth2Api$exchangeCode$2"
    f = "DevOAuth2Api.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $code:Ljava/lang/String;

.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/DevOAuth2Api;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/DevOAuth2Api;",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    iput-object p2, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iput-object p3, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->$code:Ljava/lang/String;

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

    new-instance p1, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;

    iget-object v0, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    iget-object v1, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v2, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->$code:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;-><init>(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "DevOAuth"

    const-string/jumbo v1, "token\u4ea4\u6362\u5931\u8d25: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 108
    iget v2, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->label:I

    if-nez v2, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    iget-object v2, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {p1, v2}, Lcom/jichi/ob/api/DevOAuth2Api;->access$confOrNull(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;)Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    invoke-static {v3}, Lcom/jichi/ob/api/DevOAuth2Api;->access$getPrefs$p(Lcom/jichi/ob/api/DevOAuth2Api;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v3, v4}, Lcom/jichi/ob/util/PrefsManager;->getLabClientId(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    invoke-static {v4}, Lcom/jichi/ob/api/DevOAuth2Api;->access$getPrefs$p(Lcom/jichi/ob/api/DevOAuth2Api;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v4, v5}, Lcom/jichi/ob/util/PrefsManager;->getLabClientSecret(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 113
    :cond_2
    :try_start_0
    new-instance v5, Lokhttp3/FormBody$Builder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6, v7}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    const-string v8, "client_id"

    invoke-virtual {v5, v8, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v3

    .line 115
    const-string v5, "client_secret"

    invoke-virtual {v3, v5, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v3

    .line 116
    const-string v4, "code"

    iget-object v5, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->$code:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v3

    .line 117
    const-string v4, "grant_type"

    const-string v5, "authorization_code"

    invoke-virtual {v3, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v3

    .line 118
    const-string v4, "redirect_uri"

    const-string v5, "http://localhost:8080/callback"

    invoke-virtual {v3, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v3

    .line 119
    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v3

    .line 120
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;->getTokenUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    check-cast v3, Lokhttp3/RequestBody;

    invoke-virtual {p1, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 121
    const-string v3, "User-Agent"

    const-string v4, "OBA-Sync/8.2.9"

    invoke-virtual {p1, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 123
    iget-object v3, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    invoke-static {v3}, Lcom/jichi/ob/api/DevOAuth2Api;->access$getClient$p(Lcom/jichi/ob/api/DevOAuth2Api;)Lokhttp3/OkHttpClient;

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

    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, ""

    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_4

    :cond_3
    move-object v3, v4

    :cond_4
    :try_start_3
    invoke-static {p1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 124
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    const-string v3, "access_token"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    const-string v5, "refresh_token"

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 128
    iget-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    invoke-static {p1}, Lcom/jichi/ob/api/DevOAuth2Api;->access$getPrefs$p(Lcom/jichi/ob/api/DevOAuth2Api;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object p1

    iget-object v1, p0, Lcom/jichi/ob/api/DevOAuth2Api$exchangeCode$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v3, v4}, Lcom/jichi/ob/util/PrefsManager;->saveLabToken(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v6

    goto :goto_0

    .line 131
    :cond_5
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 123
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "exchangeCode\u5f02\u5e38: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 108
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

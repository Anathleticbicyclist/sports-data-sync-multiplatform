.class final Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DevOAuth2Api.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/DevOAuth2Api;->uploadFile(Lcom/jichi/ob/model/DataSource;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.DevOAuth2Api$uploadFile$2"
    f = "DevOAuth2Api.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field final synthetic $file:Ljava/io/File;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/DevOAuth2Api;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/DevOAuth2Api;",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    iput-object p2, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iput-object p3, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->$file:Ljava/io/File;

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

    new-instance p1, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;

    iget-object v0, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    iget-object v1, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v2, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->$file:Ljava/io/File;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;-><init>(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const-string/jumbo v0, "tcx"

    const-string v1, "gpx"

    const-string v2, "DevOAuth"

    const-string v3, "Bearer "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 221
    iget v4, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->label:I

    if-nez v4, :cond_b

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 222
    iget-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    iget-object v4, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {p1, v4}, Lcom/jichi/ob/api/DevOAuth2Api;->access$confOrNull(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;)Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    move-result-object p1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;->getUploadUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 224
    :cond_1
    iget-object v5, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    invoke-static {v5}, Lcom/jichi/ob/api/DevOAuth2Api;->access$getPrefs$p(Lcom/jichi/ob/api/DevOAuth2Api;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v5

    iget-object v6, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v5, v6}, Lcom/jichi/ob/util/PrefsManager;->getLabToken(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 226
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->$file:Ljava/io/File;

    invoke-static {v6}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "toLowerCase(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v8, 0x18c11

    const-string v9, "fit"

    if-eq v7, v8, :cond_6

    const v8, 0x190af

    if-eq v7, v8, :cond_4

    const v1, 0x1bfe9

    if-eq v7, v1, :cond_3

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    move-object v0, v9

    .line 228
    :cond_7
    :goto_1
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v1, v7, v6, v7}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v7, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v7}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    .line 229
    const-string v7, "data_type"

    invoke-virtual {v1, v7, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 230
    const-string v1, "name"

    iget-object v7, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->$file:Ljava/io/File;

    invoke-static {v7}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 231
    const-string v1, "file"

    iget-object v7, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->$file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v9, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->$file:Ljava/io/File;

    sget-object v10, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v11, "application/octet-stream"

    invoke-virtual {v10, v11}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v0, v1, v7, v8}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    .line 233
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    check-cast v0, Lokhttp3/RequestBody;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 234
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 235
    const-string v0, "User-Agent"

    const-string v1, "OBA-Sync/8.2.9"

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    invoke-static {v0}, Lcom/jichi/ob/api/DevOAuth2Api;->access$getClient$p(Lcom/jichi/ob/api/DevOAuth2Api;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    const-string v0, ""

    .line 239
    :cond_9
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 240
    iget-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "\u4e0a\u4f20OK: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_2

    .line 243
    :cond_a
    iget-object v1, p0, Lcom/jichi/ob/api/DevOAuth2Api$uploadFile$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\u4e0a\u4f20\u5931\u8d25 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e0a\u4f20\u5f02\u5e38: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_2
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 221
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

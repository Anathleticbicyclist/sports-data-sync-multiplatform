.class final Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IgpsportApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/IgpsportApi;->downloadFitFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "-[B>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIgpsportApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IgpsportApi.kt\ncom/jichi/ob/api/IgpsportApi$downloadFitFile$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,380:1\n1#2:381\n216#3,2:382\n*S KotlinDebug\n*F\n+ 1 IgpsportApi.kt\ncom/jichi/ob/api/IgpsportApi$downloadFitFile$2\n*L\n290#1:382,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.api.IgpsportApi$downloadFitFile$2"
    f = "IgpsportApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activityDownloadUrl:Ljava/lang/String;

.field final synthetic $intl:Z

.field final synthetic $rideId:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/IgpsportApi;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/IgpsportApi;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$activityDownloadUrl:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$intl:Z

    iput-object p3, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$rideId:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->this$0:Lcom/jichi/ob/api/IgpsportApi;

    iput-object p5, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$token:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;

    iget-object v1, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$activityDownloadUrl:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$intl:Z

    iget-object v3, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$rideId:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->this$0:Lcom/jichi/ob/api/IgpsportApi;

    iget-object v5, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$token:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 284
    iget v0, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->label:I

    if-nez v0, :cond_b

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 286
    iget-object p1, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$activityDownloadUrl:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, ")"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$activityDownloadUrl:Ljava/lang/String;

    goto/16 :goto_3

    .line 289
    :cond_1
    :goto_0
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v1, Lcom/jichi/ob/api/IgpsportApi;->Companion:Lcom/jichi/ob/api/IgpsportApi$Companion;

    iget-boolean v2, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$intl:Z

    invoke-static {v1, v2}, Lcom/jichi/ob/api/IgpsportApi$Companion;->access$downloadUrl(Lcom/jichi/ob/api/IgpsportApi$Companion;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$rideId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 290
    iget-object v1, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->this$0:Lcom/jichi/ob/api/IgpsportApi;

    iget-object v2, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$token:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jichi/ob/api/IgpsportApi;->access$authHeaders(Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 382
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 290
    invoke-virtual {p1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 291
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 292
    iget-object v1, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->this$0:Lcom/jichi/ob/api/IgpsportApi;

    invoke-static {v1}, Lcom/jichi/ob/api/IgpsportApi;->access$getClient$p(Lcom/jichi/ob/api/IgpsportApi;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 294
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 295
    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 296
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    .line 297
    :cond_3
    instance-of v2, p1, Lorg/json/JSONObject;

    const-string v3, "optString(...)"

    const-string v4, ""

    const-string v5, "downloadUrl"

    const-string/jumbo v6, "url"

    if-eqz v2, :cond_4

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 298
    :cond_4
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v6, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    :goto_2
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 303
    :goto_3
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 304
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/131.0.0.0"

    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 305
    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 306
    const-string v1, "Referer"

    const-string v2, "https://app.igpsport.cn/"

    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 308
    iget-object v1, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->this$0:Lcom/jichi/ob/api/IgpsportApi;

    invoke-static {v1}, Lcom/jichi/ob/api/IgpsportApi;->access$getClient$p(Lcom/jichi/ob/api/IgpsportApi;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    if-eqz v1, :cond_8

    .line 310
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_7

    .line 311
    array-length p1, v1

    const/16 v2, 0xe

    const-string v3, "IgpsportApi"

    if-lt p1, v2, :cond_5

    const/16 p1, 0x8

    aget-byte p1, v1, p1

    const/16 v2, 0x2e

    if-ne p1, v2, :cond_5

    const/16 p1, 0x9

    aget-byte p1, v1, p1

    const/16 v2, 0x46

    if-eq p1, v2, :cond_6

    .line 312
    :cond_5
    array-length p1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "FIT\u6587\u4ef6\u5934\u53ef\u80fd\u65e0\u6548 (size="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_6
    array-length p1, v1

    iget-object v2, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$rideId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FIT downloaded: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " bytes (rideId="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 310
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iGPSPORT FIT\u4e0b\u8f7d\u5931\u8d25 HTTP "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_8
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "FIT\u4e0b\u8f7d\u7a7a\u54cd\u5e94"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :cond_9
    new-instance p1, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/jichi/ob/api/IgpsportApi$downloadFitFile$2;->$rideId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u65e0\u4e0b\u8f7dURL (rideId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_a
    new-instance p1, Ljava/lang/Exception;

    const-string/jumbo v0, "\u4e0b\u8f7dURL\u7a7a\u54cd\u5e94"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

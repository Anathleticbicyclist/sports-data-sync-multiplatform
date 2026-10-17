.class final Lcom/jichi/ob/api/SuuntoApi$download$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SuuntoApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/SuuntoApi;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.SuuntoApi$download$2"
    f = "SuuntoApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $gpx:Z

.field final synthetic $subscriptionKey:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field final synthetic $workoutKey:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/SuuntoApi;


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/SuuntoApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/SuuntoApi$download$2;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->$gpx:Z

    iput-object p2, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->$workoutKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iput-object p4, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->$token:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->$subscriptionKey:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/SuuntoApi$download$2;

    iget-boolean v1, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->$gpx:Z

    iget-object v2, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->$workoutKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v4, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->$token:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->$subscriptionKey:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/SuuntoApi$download$2;-><init>(ZLjava/lang/String;Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/SuuntoApi$download$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/SuuntoApi$download$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/SuuntoApi$download$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/SuuntoApi$download$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "Suunto \u4e0b\u8f7dHTTP "

    const-string v1, "https://cloudapi.suunto.com/v2/workout/exportGpx/"

    const-string v2, "https://cloudapi.suunto.com/v3/workouts/"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 332
    iget v3, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->label:I

    if-nez v3, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 334
    :try_start_0
    iget-boolean p1, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->$gpx:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->$workoutKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->$workoutKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/fit"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    :goto_0
    iget-object v1, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    iget-object v2, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->$subscriptionKey:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/jichi/ob/api/SuuntoApi;->access$buildRequest(Lcom/jichi/ob/api/SuuntoApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    .line 337
    iget-object v1, p0, Lcom/jichi/ob/api/SuuntoApi$download$2;->this$0:Lcom/jichi/ob/api/SuuntoApi;

    invoke-static {v1}, Lcom/jichi/ob/api/SuuntoApi;->access$getClient$p(Lcom/jichi/ob/api/SuuntoApi;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v1, p1

    check-cast v1, Lokhttp3/Response;

    .line 338
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x191

    if-eq v2, v3, :cond_5

    .line 339
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x1ad

    if-eq v2, v3, :cond_4

    .line 340
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    .line 341
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 342
    array-length v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 337
    :try_start_2
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 342
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Suunto \u8f68\u8ff9\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Suunto \u4e0b\u8f7d\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Suunto \u8bf7\u6c42\u88ab\u9650\u6d41(429)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Suunto \u767b\u5f55\u5931\u6548(401)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 337
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 346
    const-string v0, "Suunto download error"

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "SuuntoApi"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    throw p1

    .line 332
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

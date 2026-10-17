.class final Lcom/jichi/ob/api/ZwiftApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ZwiftApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/ZwiftApi;->getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lcom/jichi/ob/model/ActivityRecord;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZwiftApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZwiftApi.kt\ncom/jichi/ob/api/ZwiftApi$getActivities$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,363:1\n1#2:364\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
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
    c = "com.jichi.ob.api.ZwiftApi$getActivities$2"
    f = "ZwiftApi.kt"
    i = {}
    l = {
        0xb1
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $playerId:Ljava/lang/String;

.field final synthetic $skip:I

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/ZwiftApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/jichi/ob/api/ZwiftApi;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/ZwiftApi;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/ZwiftApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$playerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->this$0:Lcom/jichi/ob/api/ZwiftApi;

    iput-object p3, p0, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$token:Ljava/lang/String;

    iput p4, p0, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$limit:I

    iput p5, p0, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$skip:I

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

    new-instance v0, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;

    iget-object v1, p0, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$playerId:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->this$0:Lcom/jichi/ob/api/ZwiftApi;

    iget-object v3, p0, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$token:Ljava/lang/String;

    iget v4, p0, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$limit:I

    iget v5, p0, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$skip:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/ZwiftApi;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, ": "

    const-string v3, "Zwift HTTP "

    const-string v4, "Zwift token \u8fc7\u671f(401)"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 175
    iget v5, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->label:I

    const-string v6, "ZwiftApi"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    if-ne v5, v7, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v5, p1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 177
    :try_start_1
    iget-object v5, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$playerId:Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v9, v5

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, v8

    :goto_0
    if-nez v5, :cond_5

    :cond_3
    iget-object v5, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->this$0:Lcom/jichi/ob/api/ZwiftApi;

    iget-object v9, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$token:Ljava/lang/String;

    move-object v10, v1

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput v7, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->label:I

    invoke-virtual {v5, v9, v10}, Lcom/jichi/ob/api/ZwiftApi;->getProfileId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_13

    .line 180
    :cond_5
    invoke-static {}, Lcom/jichi/ob/api/ZwiftApi;->access$getBASE_HOSTS$cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v0, v8

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v11, 0xc8

    const/16 v12, 0x191

    .line 183
    :try_start_2
    iget v13, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$limit:I

    const/16 v14, 0x32

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 184
    iget v14, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$skip:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "/api/profiles/"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "/activities?start="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "&limit="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v13, Lokhttp3/Request$Builder;

    invoke-direct {v13}, Lokhttp3/Request$Builder;-><init>()V

    .line 186
    invoke-virtual {v13, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 187
    const-string v13, "Accept"

    const-string v14, "application/json"

    invoke-virtual {v0, v13, v14}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 188
    const-string v13, "Authorization"

    iget-object v14, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$token:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bearer "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v13, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 189
    const-string v7, "User-Agent"

    const-string v13, "Zwift/115 CFNetwork/758.0.2 Darwin/15.0.0"

    invoke-virtual {v0, v7, v13}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 191
    :try_start_3
    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->this$0:Lcom/jichi/ob/api/ZwiftApi;

    invoke-static {v0}, Lcom/jichi/ob/api/ZwiftApi;->access$getClient$p(Lcom/jichi/ob/api/ZwiftApi;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/io/Closeable;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->this$0:Lcom/jichi/ob/api/ZwiftApi;

    iget v14, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$skip:I

    iget v15, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$limit:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    move-object/from16 v16, v13

    check-cast v16, Lokhttp3/Response;

    .line 192
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->code()I

    move-result v10

    if-eq v10, v12, :cond_9

    .line 193
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    goto :goto_3

    .line 194
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->code()I

    move-result v12

    if-ne v12, v11, :cond_7

    .line 195
    invoke-static {v0, v10, v14, v15}, Lcom/jichi/ob/api/ZwiftApi;->access$parseActivities(Lcom/jichi/ob/api/ZwiftApi;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v13, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-object v0

    .line 194
    :cond_7
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->code()I

    move-result v12

    const/16 v14, 0x64

    invoke-static {v10, v14}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_8
    :goto_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v13, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    return-object v0

    .line 192
    :cond_9
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    move-object v10, v0

    .line 195
    :try_start_9
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_a
    invoke-static {v13, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v7, v8

    .line 198
    :goto_4
    :try_start_b
    instance-of v10, v0, Ljava/lang/IllegalStateException;

    if-eqz v10, :cond_b

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    check-cast v10, Ljava/lang/CharSequence;

    const-string v12, "401"

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v10, v12, v13, v14, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_a

    goto :goto_5

    :cond_a
    throw v0

    :cond_b
    const/4 v12, 0x1

    .line 199
    :goto_5
    instance-of v10, v0, Ljavax/net/ssl/SSLException;

    if-eqz v10, :cond_10

    if-eqz v7, :cond_10

    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Zwift SSL\u5f02\u5e38("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ")\uff0c\u540chost\u91cd\u8bd5\u4e00\u6b21"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 204
    :try_start_c
    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->this$0:Lcom/jichi/ob/api/ZwiftApi;

    invoke-static {v0}, Lcom/jichi/ob/api/ZwiftApi;->access$getClient$p(Lcom/jichi/ob/api/ZwiftApi;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/io/Closeable;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->this$0:Lcom/jichi/ob/api/ZwiftApi;

    iget v10, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$skip:I

    iget v13, v1, Lcom/jichi/ob/api/ZwiftApi$getActivities$2;->$limit:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :try_start_d
    move-object v14, v7

    check-cast v14, Lokhttp3/Response;

    .line 205
    invoke-virtual {v14}, Lokhttp3/Response;->code()I

    move-result v15

    const/16 v12, 0x191

    if-eq v15, v12, :cond_f

    .line 206
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_c

    goto :goto_6

    .line 207
    :cond_c
    invoke-virtual {v14}, Lokhttp3/Response;->code()I

    move-result v15

    if-ne v15, v11, :cond_d

    .line 208
    invoke-static {v0, v12, v10, v13}, Lcom/jichi/ob/api/ZwiftApi;->access$parseActivities(Lcom/jichi/ob/api/ZwiftApi;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    return-object v0

    .line 207
    :cond_d
    :try_start_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v14}, Lokhttp3/Response;->code()I

    move-result v10

    const/16 v14, 0x64

    invoke-static {v12, v14}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_e
    :goto_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    return-object v0

    .line 205
    :cond_f
    :try_start_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :catchall_2
    move-exception v0

    move-object v10, v0

    .line 208
    :try_start_12
    throw v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_13
    invoke-static {v7, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    :catch_3
    move-exception v0

    :cond_10
    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_11
    if-eqz v0, :cond_12

    .line 218
    :goto_7
    :try_start_14
    check-cast v0, Ljava/lang/Throwable;

    goto :goto_8

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Zwift \u6240\u6709host\u8bf7\u6c42\u5931\u8d25"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_8
    throw v0

    .line 178
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Zwift \u65e0\u6cd5\u89e3\u6790\u73a9\u5bb6ID"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    .line 220
    :goto_9
    const-string v2, "Zwift getActivities error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v6, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    instance-of v2, v0, Ljavax/net/ssl/SSLException;

    if-nez v2, :cond_15

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljavax/net/ssl/SSLException;

    if-eqz v2, :cond_14

    goto :goto_a

    .line 225
    :cond_14
    throw v0

    .line 223
    :cond_15
    :goto_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Zwift \u8bc1\u4e66\u6821\u9a8c\u5931\u8d25\uff1a\u5f53\u524d\u7f51\u7edc\u53ef\u80fd\u53d7\u9650\uff0c\u8bf7\u5207\u6362\u7f51\u7edc\uff08WiFi/\u6d41\u91cf\uff09\u540e\u91cd\u8bd5"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

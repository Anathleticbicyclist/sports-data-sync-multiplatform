.class final Lcom/jichi/ob/api/KeepApi$downloadGpx$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KeepApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/KeepApi;->downloadGpx(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nKeepApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepApi.kt\ncom/jichi/ob/api/KeepApi$downloadGpx$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,719:1\n1#2:720\n1563#3:721\n1634#3,3:722\n*S KotlinDebug\n*F\n+ 1 KeepApi.kt\ncom/jichi/ob/api/KeepApi$downloadGpx$2\n*L\n350#1:721\n350#1:722,3\n*E\n"
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
    c = "com.jichi.ob.api.KeepApi$downloadGpx$2"
    f = "KeepApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $runId:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/KeepApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/KeepApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/KeepApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/KeepApi$downloadGpx$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->$runId:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/KeepApi;

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

    new-instance p1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;

    iget-object v0, p0, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->$runId:Ljava/lang/String;

    iget-object v1, p0, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->$token:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/KeepApi;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/KeepApi;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 46

    move-object/from16 v1, p0

    const-string v0, "/"

    const-string/jumbo v2, "|"

    const-string v3, "KeepApi"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 211
    iget v4, v1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->label:I

    if-nez v4, :cond_2b

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 215
    :try_start_0
    iget-object v4, v1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->$runId:Ljava/lang/String;

    .line 217
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v9, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v6, ""

    const/4 v10, 0x1

    if-eqz v5, :cond_1

    .line 218
    :try_start_1
    iget-object v4, v1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->$runId:Ljava/lang/String;

    move-object v11, v4

    check-cast v11, Ljava/lang/CharSequence;

    new-array v12, v10, [Ljava/lang/String;

    aput-object v2, v12, v9

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 219
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 220
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v10, v5, :cond_0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v6

    .line 223
    :goto_1
    const-string v5, "_cy"

    invoke-static {v4, v5, v9, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v11, "running"

    const-string v12, "hiking"

    const-string v13, "cycling"

    if-eqz v5, :cond_2

    move-object v5, v13

    goto :goto_2

    .line 224
    :cond_2
    :try_start_2
    const-string v5, "_hk"

    invoke-static {v4, v5, v9, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v12

    goto :goto_2

    .line 225
    :cond_3
    const-string v5, "_rn"

    invoke-static {v4, v5, v9, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v11

    goto :goto_2

    :cond_4
    move-object v5, v8

    .line 229
    :goto_2
    new-instance v14, Ljava/util/LinkedHashSet;

    invoke-direct {v14}, Ljava/util/LinkedHashSet;-><init>()V

    .line 230
    invoke-static {}, Lcom/jichi/ob/api/KeepApi;->access$getKEEP_TYPES$cp()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v14, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v5, :cond_6

    .line 231
    invoke-virtual {v14, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v15, 0x3

    move/from16 p1, v7

    .line 232
    new-array v7, v15, [Ljava/lang/String;

    aput-object v13, v7, v9

    aput-object v11, v7, v10

    aput-object v12, v7, p1

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v10

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move/from16 v10, v17

    goto :goto_3

    :cond_7
    move/from16 v17, v10

    if-nez v5, :cond_9

    .line 234
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    move-object v11, v2

    :goto_4
    move-object v5, v11

    check-cast v5, Ljava/lang/String;

    .line 236
    :cond_9
    invoke-virtual {v14}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v7, "iterator(...)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v10, "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"

    const-string v11, "User-Agent"

    if-eqz v7, :cond_12

    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    const-string v14, "next(...)"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    .line 238
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const-string v14, "https://api.gotokeep.com/pd/v3/cyclinglog"

    :goto_6
    move/from16 v16, v15

    goto :goto_7

    .line 239
    :cond_a
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v14, "https://api.gotokeep.com/pd/v3/hikinglog"

    goto :goto_6

    .line 240
    :cond_b
    const-string v14, "https://api.gotokeep.com/pd/v3/runninglog"

    goto :goto_6

    .line 242
    :goto_7
    new-instance v15, Lokhttp3/Request$Builder;

    invoke-direct {v15}, Lokhttp3/Request$Builder;-><init>()V

    .line 243
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    .line 244
    const-string v15, "Authorization"

    iget-object v8, v1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->$token:Ljava/lang/String;

    move-object/from16 v19, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    const-string v5, "Bearer "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v15, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 245
    invoke-virtual {v2, v11, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 247
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 248
    iget-object v5, v1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/KeepApi;

    invoke-static {v5}, Lcom/jichi/ob/api/KeepApi;->access$getClient$p(Lcom/jichi/ob/api/KeepApi;)Lokhttp3/OkHttpClient;

    move-result-object v5

    invoke-virtual {v5, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    move-object v5, v2

    check-cast v5, Lokhttp3/Response;

    .line 249
    new-instance v8, Lkotlin/Pair;

    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v9

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    :cond_c
    move-object v5, v6

    :cond_d
    invoke-direct {v8, v9, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x0

    .line 248
    :try_start_5
    invoke-static {v2, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v8}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v8}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v8, 0x191

    if-eq v2, v8, :cond_11

    const/16 v8, 0xc8

    if-eq v2, v8, :cond_e

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keep \u8be6\u60c5\u63a5\u53e3 "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " \u2192 HTTP "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\uff0c\u5c1d\u8bd5\u4e0b\u4e00\u63a5\u53e3"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_a

    .line 256
    :cond_e
    :try_start_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v5, v2

    goto :goto_8

    :catch_0
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_f

    .line 257
    :try_start_7
    const-string v2, "data"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v5, v2

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_10

    const/16 v0, 0x14

    .line 262
    invoke-static {v4, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keep \u8be6\u60c5\u547d\u4e2d\u63a5\u53e3 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\uff08id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u2026\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_10
    :goto_a
    move/from16 v15, v16

    move-object/from16 v2, v19

    move-object/from16 v5, v20

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto/16 :goto_5

    .line 251
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Keep token \u8fc7\u671f(401)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 248
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_12
    move-object/from16 v20, v5

    move/from16 v16, v15

    move-object/from16 v7, v20

    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_2a

    .line 267
    const-string/jumbo v0, "startTime"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v0, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 270
    const-string v0, "distance"

    const-wide/16 v14, 0x0

    invoke-virtual {v5, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 271
    const-string v0, "duration"

    move-wide/from16 v24, v8

    const-wide/16 v14, 0x0

    invoke-virtual {v5, v0, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 272
    const-string v0, "calorie"

    const-wide/16 v14, 0x0

    invoke-virtual {v5, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v28

    .line 273
    const-string/jumbo v0, "totalSteps"

    const-wide/16 v14, 0x0

    invoke-virtual {v5, v0, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v37

    .line 274
    const-string v0, "accumulativeUpliftedHeight"

    const-wide/16 v14, 0x0

    invoke-virtual {v5, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v39

    .line 275
    const-string v0, "accumulativeClimbingDistance"

    invoke-virtual {v5, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v41

    .line 276
    const-string v0, "averagePace"

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v43

    .line 277
    const-string v0, "averageSpeed"

    invoke-virtual {v5, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v44

    .line 278
    const-string v0, "heartRate"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 279
    const-string v2, "averageHeartRate"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v2, v18

    goto :goto_c

    :cond_13
    const/4 v4, 0x0

    move v2, v4

    :goto_c
    if-eqz v0, :cond_14

    .line 280
    const-string v14, "maxHeartRate"

    invoke-virtual {v0, v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    goto :goto_d

    :cond_14
    const/4 v14, 0x0

    .line 284
    :goto_d
    iget-object v4, v1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/KeepApi;

    if-eqz v0, :cond_15

    const-string v15, "heartRates"

    invoke-virtual {v0, v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    :cond_15
    move-object v0, v6

    :cond_16
    invoke-static {v4, v0}, Lcom/jichi/ob/api/KeepApi;->access$decodeHeartRateCurve(Lcom/jichi/ob/api/KeepApi;Ljava/lang/String;)Ljava/util/List;

    move-result-object v33

    .line 285
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Keep \u5fc3\u7387\u66f2\u7ebf: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\u4e2a\u91c7\u6837\u70b9, avgHR="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " maxHR="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v0, "averageStepFrequency"

    move-wide/from16 v26, v8

    move/from16 v31, v14

    const-wide/16 v14, 0x0

    invoke-virtual {v5, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 290
    const-string/jumbo v0, "stepPoints"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v4, v1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/KeepApi;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v0, v12, v13}, Lcom/jichi/ob/api/KeepApi;->access$decodeStepPoints(Lcom/jichi/ob/api/KeepApi;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v34

    .line 292
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Keep \u6b65\u9891\u66f2\u7ebf: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\u4e2a\u91c7\u6837\u70b9, avgStepFreq="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " SPM"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 301
    const-string v4, "rawDataURL"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v4

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_17

    goto :goto_e

    :cond_17
    const/4 v4, 0x0

    .line 302
    :goto_e
    const-string v14, "geoPoints"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v14

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    if-nez v15, :cond_18

    goto :goto_f

    :cond_18
    const/4 v14, 0x0

    .line 305
    :goto_f
    const-string/jumbo v15, "\u70b9\uff08"

    if-eqz v14, :cond_1a

    .line 306
    :try_start_a
    iget-object v0, v1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/KeepApi;

    invoke-static {v0, v14}, Lcom/jichi/ob/api/KeepApi;->access$decodeGeoPoints(Lcom/jichi/ob/api/KeepApi;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 307
    move-object/from16 v19, v0

    check-cast v19, Ljava/util/Collection;

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_19

    move-object/from16 v19, v0

    .line 308
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v30, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v35, v8

    const-string v8, "Keep geoPoints \u89e3\u7801\u6210\u529f: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u5b8c\u6574\u8f68\u8ff9\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_19
    move-object/from16 v19, v0

    move/from16 v30, v2

    move-wide/from16 v35, v8

    .line 310
    const-string v0, "Keep geoPoints \u89e3\u7801\u5931\u8d25\uff0c\u5c1d\u8bd5 rawDataURL \u515c\u5e95"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1a
    move/from16 v30, v2

    move-wide/from16 v35, v8

    move-object/from16 v19, v0

    .line 314
    :goto_10
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    if-eqz v0, :cond_1e

    if-eqz v4, :cond_1e

    .line 316
    :try_start_b
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 317
    iget-object v2, v1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/KeepApi;

    invoke-static {v2}, Lcom/jichi/ob/api/KeepApi;->access$getClient$p(Lcom/jichi/ob/api/KeepApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :try_start_c
    move-object v0, v2

    check-cast v0, Lokhttp3/Response;

    .line 318
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 319
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v0, :cond_1c

    const/4 v8, 0x0

    .line 317
    :try_start_d
    invoke-static {v2, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 321
    iget-object v2, v1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/KeepApi;

    invoke-static {v2, v0}, Lcom/jichi/ob/api/KeepApi;->access$decodeRunmap(Lcom/jichi/ob/api/KeepApi;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 322
    move-object/from16 v0, v19

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 323
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keep rawDataURL \u8f68\u8ff9\u89e3\u7801\u6210\u529f: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 325
    :cond_1b
    const-string v0, "Keep rawDataURL \u89e3\u7801\u4e3a\u7a7a\uff0c\u8d70 region \u515c\u5e95"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_11

    .line 319
    :cond_1c
    :try_start_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v8, "Keep \u8f68\u8ff9\u83b7\u53d6\u5931\u8d25"

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1d
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v9

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v0

    move-object v8, v0

    .line 317
    :try_start_f
    throw v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_10
    invoke-static {v2, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    :catch_1
    move-exception v0

    .line 328
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keep rawDataURL \u8f68\u8ff9\u83b7\u53d6\u5931\u8d25\uff0c\u8d70 region \u515c\u5e95: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1e
    :goto_11
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-nez v14, :cond_1f

    if-nez v4, :cond_1f

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keep \u65e0 rawDataURL \u4e14\u65e0 geoPoints\uff0c\u8d70\u5143\u6570\u636e+region \u515c\u5e95: distance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v8, v24

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "m duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v10, v26

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v17

    goto :goto_12

    :cond_1f
    move-wide/from16 v8, v24

    move-wide/from16 v10, v26

    const/4 v0, 0x0

    .line 335
    :goto_12
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    move/from16 v0, v17

    .line 337
    :cond_20
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v4, 0x4

    if-eqz v2, :cond_24

    .line 339
    const-string v0, "region"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 340
    const-string v2, "latitude"

    const-wide/16 v14, 0x0

    invoke-virtual {v0, v2, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v20

    goto :goto_13

    :cond_21
    const-wide/16 v14, 0x0

    move-wide/from16 v20, v14

    :goto_13
    if-eqz v0, :cond_22

    .line 341
    const-string v2, "longitude"

    invoke-virtual {v0, v2, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v22

    goto :goto_14

    :cond_22
    move-wide/from16 v22, v14

    :goto_14
    cmpg-double v0, v20, v14

    if-nez v0, :cond_23

    cmpg-double v0, v22, v14

    if-nez v0, :cond_23

    :goto_15
    move/from16 v0, v17

    goto :goto_16

    :cond_23
    long-to-double v14, v12

    .line 343
    new-array v0, v4, [D

    const/16 v18, 0x0

    aput-wide v20, v0, v18

    aput-wide v22, v0, v17

    aput-wide v14, v0, p1

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    aput-wide v14, v0, v16

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    goto :goto_15

    .line 349
    :cond_24
    :goto_16
    move-object/from16 v2, v19

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    .line 350
    move-object/from16 v2, v19

    check-cast v2, Ljava/lang/Iterable;

    .line 721
    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v2, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v14, Ljava/util/Collection;

    .line 722
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 723
    check-cast v15, [D

    .line 351
    sget-object v4, Lcom/jichi/ob/util/FitGcj02Fixer;->INSTANCE:Lcom/jichi/ob/util/FitGcj02Fixer;

    move-object/from16 v23, v7

    move-wide/from16 v24, v8

    const/16 v18, 0x0

    aget-wide v7, v15, v18

    move-wide/from16 v26, v10

    aget-wide v9, v15, v17

    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/jichi/ob/util/FitGcj02Fixer;->gcj02ToWgs84(DD)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    .line 352
    aget-wide v19, v15, p1

    aget-wide v21, v15, v16

    const/4 v4, 0x4

    new-array v11, v4, [D

    const/16 v18, 0x0

    aput-wide v7, v11, v18

    aput-wide v9, v11, v17

    aput-wide v19, v11, p1

    aput-wide v21, v11, v16

    .line 723
    invoke-interface {v14, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v23

    move-wide/from16 v8, v24

    move-wide/from16 v10, v26

    goto :goto_17

    :cond_25
    move-object/from16 v23, v7

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    .line 724
    move-object/from16 v19, v14

    check-cast v19, Ljava/util/List;

    .line 354
    invoke-static/range {v19 .. v19}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    if-eqz v2, :cond_27

    .line 356
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    const/16 v18, 0x0

    aget-wide v7, v2, v18

    aget-wide v9, v2, v17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Keep GCJ-02\u2192WGS-84 \u5750\u6807\u8f6c\u6362: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\u70b9, \u9996\u70b9("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_26
    move-object/from16 v23, v7

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    :cond_27
    :goto_18
    move-object/from16 v20, v19

    .line 365
    const-string v2, "dataType"

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    move-object/from16 v2, v23

    :cond_28
    move-object/from16 v32, v2

    check-cast v32, Ljava/lang/String;

    .line 366
    iget-object v2, v1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;->this$0:Lcom/jichi/ob/api/KeepApi;

    .line 367
    invoke-static/range {v32 .. v32}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v19, v2

    move-wide/from16 v21, v12

    .line 366
    invoke-static/range {v19 .. v45}, Lcom/jichi/ob/api/KeepApi;->access$buildGpx(Lcom/jichi/ob/api/KeepApi;Ljava/util/List;JLjava/lang/String;DJDIILjava/lang/String;Ljava/util/List;Ljava/util/List;DJDDID)[B

    move-result-object v2

    if-eqz v0, :cond_29

    .line 372
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keep \u65e0\u8f68\u8ff9\uff0c\u4f7f\u7528 region \u5750\u6807\u515c\u5e95\u4e0a\u4f20("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\u70b9)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-object v2

    .line 266
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Keep \u8be6\u60c5\u89e3\u6790\u5931\u8d25(\u6240\u6709\u63a5\u53e3\u5747\u65e0data)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    :catch_2
    move-exception v0

    .line 376
    const-string v2, "Keep downloadGpx error"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    throw v0

    .line 211
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

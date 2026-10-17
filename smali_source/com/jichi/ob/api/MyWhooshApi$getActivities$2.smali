.class final Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MyWhooshApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/MyWhooshApi;->getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nMyWhooshApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyWhooshApi.kt\ncom/jichi/ob/api/MyWhooshApi$getActivities$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,277:1\n1669#2,8:278\n*S KotlinDebug\n*F\n+ 1 MyWhooshApi.kt\ncom/jichi/ob/api/MyWhooshApi$getActivities$2\n*L\n172#1:278,8\n*E\n"
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
    c = "com.jichi.ob.api.MyWhooshApi$getActivities$2"
    f = "MyWhooshApi.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xaa
    }
    m = "invokeSuspend"
    n = {
        "out",
        "page",
        "payload",
        "req",
        "body",
        "batch",
        "code"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $skip:I

.field final synthetic $token:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/MyWhooshApi;


# direct methods
.method constructor <init>(IILjava/lang/String;Lcom/jichi/ob/api/MyWhooshApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/MyWhooshApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->$skip:I

    iput p2, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->$limit:I

    iput-object p3, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->this$0:Lcom/jichi/ob/api/MyWhooshApi;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;

    iget v1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->$skip:I

    iget v2, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->$limit:I

    iget-object v3, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->$token:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->this$0:Lcom/jichi/ob/api/MyWhooshApi;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;-><init>(IILjava/lang/String;Lcom/jichi/ob/api/MyWhooshApi;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 138
    iget v1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->label:I

    const-string v2, "MyWhooshApi"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->L$5:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->L$3:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Request;

    iget-object v1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 142
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 143
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v3, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object v4, p1

    .line 144
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    iget v5, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->$skip:I

    iget v6, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->$limit:I

    add-int/2addr v5, v6

    if-ge p1, v5, :cond_7

    .line 145
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 146
    const-string v5, "page"

    iget v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    const-string v5, "limit"

    const/16 v6, 0x32

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v5, "sortDate"

    const-string v7, "DESC"

    invoke-virtual {p1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 151
    const-string v7, "https://service14.mywhoosh.com/v2/rider/profile/activities"

    invoke-virtual {v5, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 152
    const-string v7, "Authorization"

    iget-object v8, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->$token:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bearer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 153
    const-string v7, "Content-Type"

    const-string v8, "application/json; charset=utf-8"

    invoke-virtual {v5, v7, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 154
    const-string v7, "User-Agent"

    const-string v8, "MyWhoosh-Python-Client/1.0"

    invoke-virtual {v5, v7, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 155
    iget-object v7, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->this$0:Lcom/jichi/ob/api/MyWhooshApi;

    invoke-static {v7, p1}, Lcom/jichi/ob/api/MyWhooshApi;->access$jsonBody(Lcom/jichi/ob/api/MyWhooshApi;Lorg/json/JSONObject;)Lokhttp3/RequestBody;

    move-result-object v7

    invoke-virtual {v5, v7}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 156
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 157
    iget-object v7, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->this$0:Lcom/jichi/ob/api/MyWhooshApi;

    invoke-static {v7}, Lcom/jichi/ob/api/MyWhooshApi;->access$getClient$p(Lcom/jichi/ob/api/MyWhooshApi;)Lokhttp3/OkHttpClient;

    move-result-object v7

    invoke-virtual {v7, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v7

    invoke-interface {v7}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7

    check-cast v7, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v8, v7

    check-cast v8, Lokhttp3/Response;

    .line 158
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v9

    const/16 v10, 0x191

    if-eq v9, v10, :cond_6

    .line 159
    new-instance v9, Lkotlin/Pair;

    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v10

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    :cond_3
    const-string v8, ""

    :cond_4
    invoke-direct {v9, v10, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x0

    .line 157
    :try_start_3
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/16 v9, 0xc8

    if-eq v7, v9, :cond_5

    const/16 p1, 0x96

    .line 162
    invoke-static {v8, p1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyWhoosh activities HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 165
    :cond_5
    iget-object v9, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->this$0:Lcom/jichi/ob/api/MyWhooshApi;

    const/4 v10, 0x0

    invoke-static {v9, v8, v10, v6}, Lcom/jichi/ob/api/MyWhooshApi;->access$parseActivities(Lcom/jichi/ob/api/MyWhooshApi;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v9

    .line 166
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 167
    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v4, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v6, :cond_7

    .line 169
    iget v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v6, v3

    iput v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 170
    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->L$3:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->L$4:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->L$5:Ljava/lang/Object;

    iput v7, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->I$0:I

    iput v3, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->label:I

    const-wide/16 v7, 0x96

    invoke-static {v7, v8, v6}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 158
    :cond_6
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MyWhoosh token \u8fc7\u671f(401)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 157
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v7, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 172
    :cond_7
    :goto_1
    check-cast v4, Ljava/lang/Iterable;

    .line 278
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 281
    move-object v5, v4

    check-cast v5, Lcom/jichi/ob/model/ActivityRecord;

    .line 172
    invoke-virtual {v5}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v5

    .line 282
    invoke-virtual {p1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 283
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 285
    :cond_9
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 172
    iget p1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->$skip:I

    iget v1, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->$limit:I

    add-int/2addr p1, v1

    invoke-static {p1, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget v0, p0, Lcom/jichi/ob/api/MyWhooshApi$getActivities$2;->$skip:I

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 174
    const-string v0, "MyWhoosh getActivities error"

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    throw p1
.end method

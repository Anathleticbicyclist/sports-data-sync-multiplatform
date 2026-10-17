.class final Lcom/jichi/ob/api/GarminApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GarminApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi;->getActivities(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nGarminApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$getActivities$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1768:1\n216#2,2:1769\n216#2,2:1772\n1#3:1771\n*S KotlinDebug\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$getActivities$2\n*L\n1296#1:1769,2\n1359#1:1772,2\n*E\n"
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
    c = "com.jichi.ob.api.GarminApi$getActivities$2"
    f = "GarminApi.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x535,
        0x536
    }
    m = "invokeSuspend"
    n = {
        "sess",
        "url",
        "sess",
        "url"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $cred:Ljava/lang/String;

.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field final synthetic $limit:I

.field final synthetic $offset:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/GarminApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminApi;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/model/DataSource;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$cred:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iput p4, p0, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$offset:I

    iput p5, p0, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$limit:I

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

    new-instance v0, Lcom/jichi/ob/api/GarminApi$getActivities$2;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$cred:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget v4, p0, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$offset:I

    iget v5, p0, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$limit:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/GarminApi$getActivities$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;IILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/GarminApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/GarminApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 46

    move-object/from16 v1, p0

    const-string v0, "getActivities: ds="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1286
    iget v3, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->label:I

    const-string v4, "[]"

    const-string/jumbo v6, "typeKey"

    const-string v7, ""

    const-string v8, "activityType"

    const-string v10, "duration"

    const-string v15, "distance"

    const-wide v16, 0x408f400000000000L    # 1000.0

    const-string v11, "ifBlank(...)"

    const-string/jumbo v12, "\u4f73\u660e\u6d3b\u52a8"

    const-string v13, "activityName"

    const-string v14, "activityId"

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    const/4 v0, 0x2

    if-ne v3, v0, :cond_0

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/api/GarminApi$GarminSession;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v33, v0

    move-object/from16 v31, v4

    move-object/from16 v24, v7

    move-object v7, v11

    move-object/from16 v25, v12

    move-object/from16 v0, p1

    goto/16 :goto_a

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/jichi/ob/api/GarminApi$GarminSession;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v31, v4

    move-object/from16 v24, v7

    move-object v7, v11

    move-object/from16 v25, v12

    move-object/from16 v4, p1

    goto/16 :goto_8

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1288
    :try_start_2
    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v5, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$cred:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/jichi/ob/api/GarminApi;->access$parseCredential(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;

    move-result-object v25

    .line 1289
    sget-object v3, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    iget-object v5, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    if-eqz v25, :cond_3

    invoke-virtual/range {v25 .. v25}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiToken()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_3

    check-cast v24, Ljava/lang/CharSequence;

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v24

    if-lez v24, :cond_3

    move-object/from16 v31, v4

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v31, v4

    const/4 v9, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", diToken="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1293
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v3, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "&limit="

    const-string v5, "/activitylist-service/activities/search/activities?start="

    if-eq v0, v3, :cond_5

    :try_start_3
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v3, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    move-object/from16 v24, v7

    move-object v7, v11

    move-object/from16 v3, v25

    move-object/from16 v25, v12

    goto/16 :goto_7

    :cond_5
    :goto_1
    if-eqz v25, :cond_6

    invoke-virtual/range {v25 .. v25}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getOauthToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v25, :cond_4

    invoke-virtual/range {v25 .. v25}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1294
    :goto_2
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {v0, v2}, Lcom/jichi/ob/api/GarminApi;->access$connectApiHost(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$offset:I

    iget v3, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$limit:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1295
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v4, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    const/16 v29, 0x8

    const/16 v30, 0x0

    const/16 v28, 0x0

    move-object/from16 v27, v0

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    .line 1296
    invoke-static/range {v24 .. v30}, Lcom/jichi/ob/api/GarminApi;->connectHeaders$default(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/api/GarminApi$GarminSession;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1769
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1296
    invoke-virtual {v2, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_3

    .line 1297
    :cond_7
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 1298
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v2}, Lcom/jichi/ob/api/GarminApi;->access$getClient$p(Lcom/jichi/ob/api/GarminApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    move-object v4, v2

    check-cast v4, Lokhttp3/Response;

    .line 1299
    sget-object v5, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v9

    move-object/from16 v39, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v4

    const-string v4, "getActivities DI: HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1300
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_9

    .line 1301
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const/16 v4, 0x96

    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActivities DI\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1302
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v3, 0x0

    :try_start_5
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v0

    .line 1304
    :cond_9
    :try_start_6
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    :cond_a
    move-object/from16 v4, v31

    :cond_b
    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1305
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 1306
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v5, :cond_10

    move/from16 p1, v5

    .line 1307
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1308
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1309
    invoke-static/range {v33 .. v33}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v21, v33

    check-cast v21, Ljava/lang/CharSequence;

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    if-nez v21, :cond_c

    move-object/from16 v21, v3

    move-object/from16 v24, v7

    move-object v7, v11

    move-object/from16 v25, v12

    goto :goto_6

    .line 1310
    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v21, v3

    invoke-static {v0, v5}, Lcom/jichi/ob/api/GarminApi;->access$resolveGarminTime(Lcom/jichi/ob/api/GarminApi;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v7

    .line 1312
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 1313
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_e

    :cond_d
    move-object/from16 v7, v24

    .line 1314
    :cond_e
    invoke-static {v0, v7}, Lcom/jichi/ob/api/GarminApi;->access$garminTypeKeyToSport(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1317
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_f

    move-object v7, v12

    :cond_f
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v34, v7

    check-cast v34, Ljava/lang/String;

    move-object v7, v11

    move-object/from16 v25, v12

    const-wide/16 v11, 0x0

    .line 1319
    invoke-virtual {v5, v15, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v22

    div-double v36, v22, v16

    const/4 v11, 0x0

    .line 1320
    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v38

    .line 1322
    sget-object v5, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    invoke-virtual {v5, v3}, Lcom/jichi/ob/util/ActivityCache$Companion;->parseStartTimeMs(Ljava/lang/String;)J

    move-result-wide v41

    .line 1315
    new-instance v32, Lcom/jichi/ob/model/ActivityRecord;

    const/16 v40, 0x0

    const/16 v44, 0x40

    const/16 v45, 0x0

    move-object/from16 v35, v3

    invoke-direct/range {v32 .. v45}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v32

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p1

    move-object v11, v7

    move-object/from16 v3, v21

    move-object/from16 v7, v24

    move-object/from16 v12, v25

    goto/16 :goto_5

    .line 1326
    :cond_10
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActivities DI\u6210\u529f: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\u6761"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v3, 0x0

    .line 1327
    :try_start_7
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-object v4

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1331
    :goto_7
    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {v0, v9}, Lcom/jichi/ob/api/GarminApi;->access$gcApiHost(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v0

    iget v9, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$offset:I

    iget v11, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$limit:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1332
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSharedWebView$cp()Landroid/webkit/WebView;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 1333
    iget-object v4, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v5, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$cred:Ljava/lang/String;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    move-object v11, v1

    check-cast v11, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->L$1:Ljava/lang/Object;

    const/4 v12, 0x1

    iput v12, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->label:I

    invoke-static {v4, v5, v9, v11}, Lcom/jichi/ob/api/GarminApi;->access$prepareWebView(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_11

    goto :goto_9

    :cond_11
    :goto_8
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1334
    iget-object v4, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    const-string v34, "GET"

    iget-object v5, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$cred:Ljava/lang/String;

    invoke-static {v4, v5, v9}, Lcom/jichi/ob/api/GarminApi;->access$apiHeaders(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v35

    move-object/from16 v37, v1

    check-cast v37, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->label:I

    const/16 v36, 0x0

    const/16 v38, 0x8

    const/16 v39, 0x0

    move-object/from16 v33, v0

    move-object/from16 v32, v4

    invoke-static/range {v32 .. v39}, Lcom/jichi/ob/api/GarminApi;->fetchViaWebView$default(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_12

    :goto_9
    return-object v2

    .line 1286
    :cond_12
    :goto_a
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 1336
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1338
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v3, :cond_17

    .line 1339
    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1340
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1341
    invoke-static/range {v32 .. v32}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v5, v32

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_13

    move-object/from16 p1, v2

    move v9, v3

    goto :goto_c

    .line 1342
    :cond_13
    iget-object v5, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5, v4}, Lcom/jichi/ob/api/GarminApi;->access$resolveGarminTime(Lcom/jichi/ob/api/GarminApi;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 1344
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 1345
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_15

    :cond_14
    move-object/from16 v9, v24

    .line 1346
    :cond_15
    iget-object v12, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v12, v9}, Lcom/jichi/ob/api/GarminApi;->access$garminTypeKeyToSport(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1347
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_16

    move-object/from16 v9, v25

    :cond_16
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v33, v9

    check-cast v33, Ljava/lang/String;

    move-object/from16 p1, v2

    move v9, v3

    const-wide/16 v2, 0x0

    .line 1349
    invoke-virtual {v4, v15, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v20

    div-double v35, v20, v16

    const/4 v2, 0x0

    invoke-virtual {v4, v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v37

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    .line 1350
    sget-object v3, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    invoke-virtual {v3, v5}, Lcom/jichi/ob/util/ActivityCache$Companion;->parseStartTimeMs(Ljava/lang/String;)J

    move-result-wide v40

    .line 1347
    new-instance v31, Lcom/jichi/ob/model/ActivityRecord;

    const/16 v39, 0x0

    const/16 v43, 0x40

    const/16 v44, 0x0

    move-object/from16 v38, v2

    move-object/from16 v34, v5

    invoke-direct/range {v31 .. v44}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v31

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    move v3, v9

    goto :goto_b

    :cond_17
    return-object v0

    :cond_18
    move-object/from16 v0, v33

    goto :goto_d

    :cond_19
    move-object/from16 v33, v0

    .line 1357
    :cond_1a
    :goto_d
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    const-string v3, "getActivities: \u8d70OkHttp\u5206\u652f"

    invoke-virtual {v2, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1358
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v4, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$cred:Ljava/lang/String;

    .line 1359
    invoke-static {v2, v3, v4}, Lcom/jichi/ob/api/GarminApi;->access$apiHeaders(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1772
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1359
    invoke-virtual {v0, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_e

    .line 1360
    :cond_1b
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 1361
    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v2}, Lcom/jichi/ob/api/GarminApi;->access$getClient$p(Lcom/jichi/ob/api/GarminApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v3, v1, Lcom/jichi/ob/api/GarminApi$getActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    move-object v4, v2

    check-cast v4, Lokhttp3/Response;

    .line 1362
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1c

    .line 1363
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActivities OkHttp HTTP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1364
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/4 v3, 0x0

    :try_start_b
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    return-object v0

    .line 1366
    :cond_1c
    :try_start_c
    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1e

    :cond_1d
    move-object/from16 v4, v31

    :cond_1e
    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1367
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 1368
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v11, 0x0

    :goto_f
    if-ge v11, v6, :cond_21

    .line 1369
    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1370
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1371
    invoke-static/range {v33 .. v33}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v9, v33

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_1f

    move-object v12, v0

    move-object/from16 v39, v3

    const/4 v0, 0x0

    goto :goto_10

    .line 1372
    :cond_1f
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v8}, Lcom/jichi/ob/api/GarminApi;->access$resolveGarminTime(Lcom/jichi/ob/api/GarminApi;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    .line 1373
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_20

    move-object/from16 v12, v25

    :cond_20
    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v34, v12

    check-cast v34, Ljava/lang/String;

    move-object v12, v0

    const-wide/16 v0, 0x0

    .line 1375
    invoke-virtual {v8, v15, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v18

    div-double v36, v18, v16

    const/4 v0, 0x0

    invoke-virtual {v8, v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v38

    .line 1376
    sget-object v1, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    invoke-virtual {v1, v9}, Lcom/jichi/ob/util/ActivityCache$Companion;->parseStartTimeMs(Ljava/lang/String;)J

    move-result-wide v41

    .line 1373
    new-instance v32, Lcom/jichi/ob/model/ActivityRecord;

    const/16 v40, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x140

    const/16 v45, 0x0

    move-object/from16 v39, v3

    move-object/from16 v35, v9

    invoke-direct/range {v32 .. v45}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v32

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_10
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object v0, v12

    move-object/from16 v3, v39

    goto :goto_f

    :cond_21
    const/4 v3, 0x0

    .line 1361
    :try_start_d
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    return-object v4

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_f
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :catch_0
    move-exception v0

    .line 1381
    sget-object v1, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getActivities\u5f02\u5e38: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1382
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

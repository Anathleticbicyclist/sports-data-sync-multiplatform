.class final Lcom/jichi/ob/api/KomootApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KomootApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/KomootApi;->getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nKomootApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KomootApi.kt\ncom/jichi/ob/api/KomootApi$getActivities$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,315:1\n1#2:316\n1669#3,8:317\n*S KotlinDebug\n*F\n+ 1 KomootApi.kt\ncom/jichi/ob/api/KomootApi$getActivities$2\n*L\n180#1:317,8\n*E\n"
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
    c = "com.jichi.ob.api.KomootApi$getActivities$2"
    f = "KomootApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $email:Ljava/lang/String;

.field final synthetic $limit:I

.field final synthetic $skip:I

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/KomootApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/KomootApi;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/KomootApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$email:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/KomootApi$getActivities$2;->this$0:Lcom/jichi/ob/api/KomootApi;

    iput-object p3, p0, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$token:Ljava/lang/String;

    iput p4, p0, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$skip:I

    iput p5, p0, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$limit:I

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

    new-instance v0, Lcom/jichi/ob/api/KomootApi$getActivities$2;

    iget-object v1, p0, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$email:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/KomootApi$getActivities$2;->this$0:Lcom/jichi/ob/api/KomootApi;

    iget-object v3, p0, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$token:Ljava/lang/String;

    iget v4, p0, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$skip:I

    iget v5, p0, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$limit:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/KomootApi$getActivities$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/KomootApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/KomootApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/KomootApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/KomootApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v1, p0

    const-string v0, "date"

    const-string v2, "KomootApi"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 138
    iget v3, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->label:I

    if-nez v3, :cond_12

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x1

    move v7, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_f

    .line 144
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 145
    iget-object v8, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$email:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://api.komoot.de/v007/users/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tours/?limit=50&page="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 146
    const-string v8, "Authorization"

    iget-object v9, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->this$0:Lcom/jichi/ob/api/KomootApi;

    iget-object v10, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$email:Ljava/lang/String;

    iget-object v11, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$token:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/jichi/ob/api/KomootApi;->access$basicAuth(Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 147
    const-string v8, "User-Agent"

    const-string v9, "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"

    invoke-virtual {v7, v8, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 148
    invoke-virtual {v7}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v7

    .line 149
    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    .line 150
    iget-object v8, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->this$0:Lcom/jichi/ob/api/KomootApi;

    invoke-static {v8}, Lcom/jichi/ob/api/KomootApi;->access$getClient$p(Lcom/jichi/ob/api/KomootApi;)Lokhttp3/OkHttpClient;

    move-result-object v8

    invoke-virtual {v8, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v7

    invoke-interface {v7}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7

    check-cast v7, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v8, v7

    check-cast v8, Lokhttp3/Response;

    .line 151
    new-instance v9, Lkotlin/Pair;

    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v10

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, ""

    :cond_1
    invoke-direct {v9, v10, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    .line 150
    :try_start_2
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v10, 0x191

    if-eq v7, v10, :cond_e

    const/16 v10, 0x193

    if-eq v7, v10, :cond_e

    const/16 v10, 0xc8

    if-eq v7, v10, :cond_2

    const/16 v0, 0x78

    .line 155
    invoke-static {v9, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Komoot list HTTP "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    .line 158
    :cond_2
    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-object v7, v8

    :goto_1
    if-nez v7, :cond_3

    goto/16 :goto_8

    .line 160
    :cond_3
    :try_start_4
    const-string v9, "page"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 161
    const-string/jumbo v10, "totalPages"

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    goto :goto_2

    :cond_4
    move v9, v5

    .line 162
    :goto_2
    const-string v10, "_embedded"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_5

    goto/16 :goto_8

    .line 163
    :cond_5
    const-string/jumbo v10, "tours"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-nez v7, :cond_6

    goto/16 :goto_8

    .line 164
    :cond_6
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_c

    .line 165
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_7

    :goto_4
    move v8, v6

    goto/16 :goto_7

    .line 166
    :cond_7
    const-string v13, "id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v13

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v16, v13

    goto :goto_5

    :cond_8
    move-object/from16 v16, v8

    :goto_5
    if-nez v16, :cond_9

    goto :goto_4

    .line 167
    :cond_9
    const-string v13, "name"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v13

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v14, :cond_a

    goto :goto_6

    :cond_a
    move-object v13, v8

    :goto_6
    const-string v14, "optString(...)"

    const-string/jumbo v15, "sport"

    if-nez v13, :cond_b

    :try_start_5
    iget-object v13, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->this$0:Lcom/jichi/ob/api/KomootApi;

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v4}, Lcom/jichi/ob/api/KomootApi;->access$sportToChinese(Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 168
    :cond_b
    iget-object v4, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->this$0:Lcom/jichi/ob/api/KomootApi;

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lcom/jichi/ob/api/KomootApi;->access$formatTime(Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 169
    const-string v4, "distance"

    move v8, v6

    const-wide/16 v5, 0x0

    invoke-virtual {v12, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-wide v19, 0x408f400000000000L    # 1000.0

    div-double v19, v4, v19

    .line 170
    const-string v4, "duration"

    const-wide/16 v5, 0x0

    invoke-virtual {v12, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v4, v4

    .line 171
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 172
    iget-object v6, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->this$0:Lcom/jichi/ob/api/KomootApi;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, v5}, Lcom/jichi/ob/api/KomootApi;->access$sportToChinese(Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 174
    new-instance v15, Lcom/jichi/ob/model/ActivityRecord;

    sget-object v22, Lcom/jichi/ob/model/DataSource;->KOMOT:Lcom/jichi/ob/model/DataSource;

    .line 175
    sget-object v5, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jichi/ob/util/ActivityCache$Companion;->parseStartTimeMs(Ljava/lang/String;)J

    move-result-wide v24

    const/16 v27, 0x100

    const/16 v28, 0x0

    const/16 v26, 0x0

    move-object/from16 v23, v16

    move/from16 v21, v4

    .line 174
    invoke-direct/range {v15 .. v28}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v11, v11, 0x1

    move v6, v8

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_c
    move v8, v6

    add-int/lit8 v6, v8, 0x1

    .line 178
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iget v5, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$skip:I

    iget v7, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$limit:I

    add-int/2addr v5, v7

    if-lt v4, v5, :cond_d

    goto :goto_8

    :cond_d
    move v7, v9

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 153
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Komoot \u767b\u5f55\u5931\u6548(HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 150
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {v7, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 180
    :cond_f
    :goto_8
    check-cast v3, Ljava/lang/Iterable;

    .line 317
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 318
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 319
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 320
    move-object v6, v5

    check-cast v6, Lcom/jichi/ob/model/ActivityRecord;

    .line 180
    invoke-virtual {v6}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v6

    .line 321
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 322
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 324
    :cond_11
    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .line 180
    iget v0, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$skip:I

    iget v3, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$limit:I

    add-int/2addr v0, v3

    const/4 v14, 0x1

    invoke-static {v0, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget v3, v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;->$skip:I

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 182
    const-string v3, "Komoot getActivities error"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    throw v0

    .line 138
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

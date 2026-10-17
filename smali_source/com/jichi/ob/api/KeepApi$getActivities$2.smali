.class final Lcom/jichi/ob/api/KeepApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KeepApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/KeepApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nKeepApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepApi.kt\ncom/jichi/ob/api/KeepApi$getActivities$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,719:1\n1#2:720\n1669#3,8:721\n1068#3:729\n*S KotlinDebug\n*F\n+ 1 KeepApi.kt\ncom/jichi/ob/api/KeepApi$getActivities$2\n*L\n188#1:721,8\n189#1:729\n*E\n"
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
    c = "com.jichi.ob.api.KeepApi$getActivities$2"
    f = "KeepApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $skip:I

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/KeepApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/jichi/ob/api/KeepApi;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/KeepApi;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/KeepApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/KeepApi$getActivities$2;->$token:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/KeepApi$getActivities$2;->this$0:Lcom/jichi/ob/api/KeepApi;

    iput p3, p0, Lcom/jichi/ob/api/KeepApi$getActivities$2;->$skip:I

    iput p4, p0, Lcom/jichi/ob/api/KeepApi$getActivities$2;->$limit:I

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

    new-instance v0, Lcom/jichi/ob/api/KeepApi$getActivities$2;

    iget-object v1, p0, Lcom/jichi/ob/api/KeepApi$getActivities$2;->$token:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/KeepApi$getActivities$2;->this$0:Lcom/jichi/ob/api/KeepApi;

    iget v3, p0, Lcom/jichi/ob/api/KeepApi$getActivities$2;->$skip:I

    iget v4, p0, Lcom/jichi/ob/api/KeepApi$getActivities$2;->$limit:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/KeepApi$getActivities$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/KeepApi;IILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/KeepApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/KeepApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/KeepApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/KeepApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 40

    move-object/from16 v1, p0

    const-string/jumbo v0, "startTime"

    const-string v2, "hiking"

    const-string v3, "cycling"

    const-string v4, "running"

    const-string v5, "KeepApi"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 137
    iget v6, v1, Lcom/jichi/ob/api/KeepApi$getActivities$2;->label:I

    if-nez v6, :cond_1c

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 139
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x3

    .line 141
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v9, 0x1

    aput-object v3, v7, v9

    const/4 v10, 0x2

    aput-object v2, v7, v10

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v10, v8

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-wide/16 v14, 0x0

    .line 147
    :goto_1
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://api.gotokeep.com/pd/v3/stats/detail?dateUnit=all&type="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "&lastDate="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 149
    const-string v9, "Authorization"

    iget-object v12, v1, Lcom/jichi/ob/api/KeepApi$getActivities$2;->$token:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v7

    const-string v7, "Bearer "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 150
    const-string v8, "User-Agent"

    const-string v9, "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"

    invoke-virtual {v7, v8, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 151
    invoke-virtual {v7}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v7

    .line 152
    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    .line 153
    iget-object v8, v1, Lcom/jichi/ob/api/KeepApi$getActivities$2;->this$0:Lcom/jichi/ob/api/KeepApi;

    invoke-static {v8}, Lcom/jichi/ob/api/KeepApi;->access$getClient$p(Lcom/jichi/ob/api/KeepApi;)Lokhttp3/OkHttpClient;

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

    .line 154
    new-instance v9, Lkotlin/Pair;

    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v12

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, ""

    :cond_1
    invoke-direct {v9, v12, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    .line 153
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

    const/16 v12, 0x191

    if-eq v7, v12, :cond_18

    const/16 v12, 0xc8

    if-eq v7, v12, :cond_2

    const/16 v8, 0x78

    .line 158
    invoke-static {v9, v8}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Keep list HTTP "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 161
    :cond_2
    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-object v7, v8

    :goto_2
    if-nez v7, :cond_3

    goto :goto_3

    .line 162
    :cond_3
    :try_start_4
    const-string v9, "data"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 163
    :cond_4
    const-string v9, "records"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-nez v9, :cond_5

    :goto_3
    move-object/from16 v7, v16

    :goto_4
    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 164
    :cond_5
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_14

    .line 165
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_6

    move-object/from16 v21, v3

    move-object/from16 v17, v9

    :goto_6
    move/from16 v18, v10

    :goto_7
    move/from16 v36, v12

    move/from16 v37, v13

    move-wide/from16 v38, v14

    goto/16 :goto_11

    :cond_6
    move-object/from16 v17, v9

    .line 166
    const-string v9, "logs"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_8

    :cond_7
    move-object/from16 v21, v3

    goto :goto_6

    .line 167
    :cond_8
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-eqz v9, :cond_7

    .line 169
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    move/from16 v18, v10

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v9, :cond_13

    move/from16 v19, v9

    .line 170
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_12

    move-object/from16 v20, v8

    const-string/jumbo v8, "stats"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_9

    goto :goto_a

    .line 171
    :cond_9
    const-string v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v21, v9

    check-cast v21, Ljava/lang/CharSequence;

    invoke-static/range {v21 .. v21}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_a

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    :goto_9
    if-nez v9, :cond_b

    :goto_a
    move-object/from16 v21, v3

    move/from16 v36, v12

    move/from16 v37, v13

    move-wide/from16 v38, v14

    goto/16 :goto_10

    .line 172
    :cond_b
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v21
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string/jumbo v22, "\u8fd0\u52a8"

    sparse-switch v21, :sswitch_data_0

    :goto_b
    move-object/from16 v21, v3

    goto :goto_d

    :sswitch_0
    :try_start_5
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    goto :goto_b

    :cond_c
    const-string/jumbo v22, "\u8dd1\u6b65"

    goto :goto_c

    :sswitch_1
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    goto :goto_b

    :cond_d
    const-string/jumbo v22, "\u9a91\u884c"

    :goto_c
    move-object/from16 v21, v3

    goto :goto_f

    :sswitch_2
    move-object/from16 v21, v3

    const-string v3, "other"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_d

    :sswitch_3
    move-object/from16 v21, v3

    const-string/jumbo v3, "swimming"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_d

    :cond_e
    const-string/jumbo v22, "\u6e38\u6cf3"

    goto :goto_f

    :sswitch_4
    move-object/from16 v21, v3

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_d

    :cond_f
    const-string/jumbo v22, "\u5f92\u6b65"

    goto :goto_f

    :goto_d
    move-object v3, v11

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_10

    goto :goto_e

    :cond_10
    move-object/from16 v22, v3

    :goto_e
    check-cast v22, Ljava/lang/String;

    :cond_11
    :goto_f
    move-object/from16 v24, v22

    .line 173
    iget-object v3, v1, Lcom/jichi/ob/api/KeepApi$getActivities$2;->this$0:Lcom/jichi/ob/api/KeepApi;

    move/from16 v36, v12

    move/from16 v37, v13

    move-wide/from16 v38, v14

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v0, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v3, v14, v15}, Lcom/jichi/ob/api/KeepApi;->access$formatTime(Lcom/jichi/ob/api/KeepApi;J)Ljava/lang/String;

    move-result-object v25

    .line 174
    const-string v3, "distance"

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v3, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double v26, v12, v14

    .line 175
    const-string v3, "duration"

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v3, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    long-to-int v3, v14

    .line 176
    new-instance v22, Lcom/jichi/ob/model/ActivityRecord;

    sget-object v29, Lcom/jichi/ob/model/DataSource;->KEEP:Lcom/jichi/ob/model/DataSource;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v0, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v31

    const/16 v34, 0x100

    const/16 v35, 0x0

    const/16 v33, 0x0

    move/from16 v28, v3

    move-object/from16 v23, v9

    invoke-direct/range {v22 .. v35}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v22

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_12
    move-object/from16 v20, v8

    goto/16 :goto_a

    :goto_10
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v19

    move-object/from16 v8, v20

    move-object/from16 v3, v21

    move/from16 v12, v36

    move/from16 v13, v37

    move-wide/from16 v14, v38

    goto/16 :goto_8

    :cond_13
    move-object/from16 v21, v3

    goto/16 :goto_7

    :goto_11
    add-int/lit8 v13, v37, 0x1

    move-object/from16 v9, v17

    move/from16 v10, v18

    move-object/from16 v3, v21

    move/from16 v12, v36

    move-wide/from16 v14, v38

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_14
    move-object/from16 v21, v3

    move/from16 v18, v10

    move-wide/from16 v38, v14

    .line 179
    const-string v3, "lastTimestamp"

    const-wide/16 v12, 0x0

    invoke-virtual {v7, v3, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    add-int/lit8 v10, v18, 0x1

    cmp-long v3, v7, v12

    if-lez v3, :cond_17

    cmp-long v3, v7, v38

    if-nez v3, :cond_15

    goto :goto_12

    .line 184
    :cond_15
    rem-int/lit8 v3, v10, 0x2

    if-nez v3, :cond_16

    goto :goto_12

    :cond_16
    move-wide v14, v7

    move-object/from16 v7, v16

    move-object/from16 v3, v21

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_17
    :goto_12
    move-object/from16 v7, v16

    move-object/from16 v3, v21

    goto/16 :goto_4

    .line 156
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Keep token \u8fc7\u671f(401)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 153
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {v7, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 188
    :cond_19
    check-cast v6, Ljava/lang/Iterable;

    .line 721
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 722
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 723
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 724
    move-object v6, v4

    check-cast v6, Lcom/jichi/ob/model/ActivityRecord;

    .line 188
    invoke-virtual {v6}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v6

    .line 725
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 726
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 728
    :cond_1b
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 729
    new-instance v0, Lcom/jichi/ob/api/KeepApi$getActivities$2$invokeSuspend$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/jichi/ob/api/KeepApi$getActivities$2$invokeSuspend$$inlined$sortedByDescending$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 190
    iget v2, v1, Lcom/jichi/ob/api/KeepApi$getActivities$2;->$skip:I

    iget v3, v1, Lcom/jichi/ob/api/KeepApi$getActivities$2;->$limit:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 191
    iget v2, v1, Lcom/jichi/ob/api/KeepApi$getActivities$2;->$skip:I

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 193
    const-string v2, "Keep getActivities error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    throw v0

    .line 137
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x488e1fe8 -> :sswitch_4
        -0x5734d23 -> :sswitch_3
        0x6527f10 -> :sswitch_2
        0x49291423 -> :sswitch_1
        0x5c6f15bf -> :sswitch_0
    .end sparse-switch
.end method

.class final Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BlackbirdApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/BlackbirdApi;->downloadActivity(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nBlackbirdApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlackbirdApi.kt\ncom/jichi/ob/api/BlackbirdApi$downloadActivity$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,831:1\n1#2:832\n216#3,2:833\n216#3,2:841\n1563#4:835\n1634#4,3:836\n295#4,2:839\n1563#4:843\n1634#4,3:844\n1573#4:847\n1604#4,3:848\n1573#4:851\n1604#4,4:852\n1607#4:856\n*S KotlinDebug\n*F\n+ 1 BlackbirdApi.kt\ncom/jichi/ob/api/BlackbirdApi$downloadActivity$2\n*L\n190#1:833,2\n211#1:841,2\n202#1:835\n202#1:836,3\n203#1:839,2\n248#1:843\n248#1:844,3\n258#1:847\n258#1:848,3\n260#1:851\n260#1:852,4\n258#1:856\n*E\n"
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
    c = "com.jichi.ob.api.BlackbirdApi$downloadActivity$2"
    f = "BlackbirdApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $convertCoord:Z

.field final synthetic $cookie:Ljava/lang/String;

.field final synthetic $recordId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/BlackbirdApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/jichi/ob/api/BlackbirdApi;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/BlackbirdApi;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$recordId:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    iput-boolean p3, p0, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$convertCoord:Z

    iput-object p4, p0, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$cookie:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;

    iget-object v1, p0, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$recordId:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    iget-boolean v3, p0, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$convertCoord:Z

    iget-object v4, p0, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$cookie:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/BlackbirdApi;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 188
    iget v0, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->label:I

    if-nez v0, :cond_25

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 189
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$recordId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://www.blackbirdsport.com/api/records/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 190
    iget-object v2, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    iget-object v3, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$cookie:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/jichi/ob/api/BlackbirdApi;->access$authHeaders(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 833
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v5, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 192
    iget-object v2, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    invoke-static {v2}, Lcom/jichi/ob/api/BlackbirdApi;->access$getClient$p(Lcom/jichi/ob/api/BlackbirdApi;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 194
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_23

    .line 196
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    :cond_1
    const/16 v3, 0xa

    .line 200
    new-array v0, v3, [Ljava/lang/String;

    const-string v5, "fitUrl"

    const/4 v6, 0x0

    aput-object v5, v0, v6

    const-string v5, "fit_url"

    const/4 v7, 0x1

    aput-object v5, v0, v7

    const-string v5, "downloadUrl"

    const/4 v8, 0x2

    aput-object v5, v0, v8

    const-string v5, "download_url"

    const/4 v9, 0x3

    aput-object v5, v0, v9

    const-string v5, "fileUrl"

    const/4 v10, 0x4

    aput-object v5, v0, v10

    .line 201
    const-string v5, "file_url"

    const/4 v11, 0x5

    aput-object v5, v0, v11

    const-string v5, "fitFileUrl"

    const/4 v12, 0x6

    aput-object v5, v0, v12

    const-string v5, "fit_file_url"

    const/4 v13, 0x7

    aput-object v5, v0, v13

    const-string v5, "fitDownloadUrl"

    const/16 v14, 0x8

    aput-object v5, v0, v14

    const-string v5, "fit_download_url"

    const/16 v15, 0x9

    aput-object v5, v0, v15

    .line 200
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 835
    new-instance v5, Ljava/util/ArrayList;

    move/from16 p1, v9

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 836
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    move/from16 v16, v10

    const-string v10, ""

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 837
    check-cast v9, Ljava/lang/String;

    .line 202
    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 837
    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v10, v16

    goto :goto_1

    .line 838
    :cond_2
    check-cast v5, Ljava/util/List;

    .line 202
    check-cast v5, Ljava/lang/Iterable;

    .line 839
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move/from16 v17, v12

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    .line 203
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v18, v12

    check-cast v18, Ljava/lang/CharSequence;

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-lez v18, :cond_3

    move/from16 v18, v13

    const-string v13, "http"

    invoke-static {v12, v13, v6, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_3
    move/from16 v18, v13

    :cond_4
    move/from16 v12, v17

    move/from16 v13, v18

    goto :goto_2

    :cond_5
    move/from16 v17, v12

    move/from16 v18, v13

    move-object v5, v9

    :goto_3
    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_6

    move-object v5, v10

    .line 205
    :cond_6
    move-object v0, v5

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v12, ")"

    const-string v13, "BlackbirdApi"

    if-lez v0, :cond_b

    .line 208
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 209
    const-string v5, "User-Agent"

    const-string v9, "Mozilla/5.0"

    invoke-virtual {v0, v5, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 210
    const-string v5, "Referer"

    iget-object v9, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$recordId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v20, v14

    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 211
    iget-object v4, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    iget-object v5, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$cookie:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/jichi/ob/api/BlackbirdApi;->access$authHeaders(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 841
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 211
    invoke-virtual {v0, v9, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_4

    .line 212
    :cond_7
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 213
    iget-object v4, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    invoke-static {v4}, Lcom/jichi/ob/api/BlackbirdApi;->access$getClient$p(Lcom/jichi/ob/api/BlackbirdApi;)Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_9

    .line 215
    array-length v4, v0

    const/16 v5, 0x64

    if-le v4, v5, :cond_9

    .line 216
    array-length v4, v0

    const/16 v5, 0xe

    if-lt v4, v5, :cond_9

    aget-byte v4, v0, v20

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_9

    aget-byte v4, v0, v15

    const/16 v5, 0x46

    if-ne v4, v5, :cond_9

    .line 217
    array-length v4, v0

    iget-object v5, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$recordId:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\u2705 \u9ed1\u9e1fFIT\u4e0b\u8f7d\u6210\u529f: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " bytes (id="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_9
    if-eqz v0, :cond_a

    .line 220
    array-length v0, v0

    goto :goto_6

    :cond_a
    move v0, v6

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u9ed1\u9e1fFIT\u4e0b\u8f7d\u8fd4\u56de\u975eFIT\u6570\u636e("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "bytes)\uff0c\u56de\u9000GPX\u6784\u5efa"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move/from16 v20, v14

    .line 222
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u9ed1\u9e1fFIT\u4e0b\u8f7d\u5f02\u5e38: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\uff0c\u56de\u9000GPX\u6784\u5efa"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_b
    move/from16 v20, v14

    .line 225
    const-string/jumbo v0, "\u9ed1\u9e1f\u6d3b\u52a8\u65e0FIT\u4e0b\u8f7d\u5730\u5740\uff0c\u4f7f\u7528GPX\u6784\u5efa"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_8
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v4, "startTime"

    aput-object v4, v0, v6

    const-string/jumbo v4, "start_time"

    aput-object v4, v0, v7

    const-string v4, "beginTime"

    aput-object v4, v0, v8

    const-string v4, "begin_time"

    aput-object v4, v0, p1

    const-string/jumbo v4, "startDate"

    aput-object v4, v0, v16

    const-string/jumbo v4, "start_date"

    aput-object v4, v0, v11

    const-string v4, "date"

    aput-object v4, v0, v17

    const-string/jumbo v4, "time"

    aput-object v4, v0, v18

    const-string/jumbo v4, "startTimestamp"

    aput-object v4, v0, v20

    const-string/jumbo v4, "start_timestamp"

    aput-object v4, v0, v15

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    move-object v14, v12

    const-wide/16 v11, 0x0

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 233
    invoke-virtual {v2, v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 234
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v17, v5

    check-cast v17, Ljava/lang/CharSequence;

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-lez v17, :cond_f

    .line 235
    invoke-static {v5}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    if-nez v17, :cond_d

    invoke-static {v5}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    double-to-long v8, v8

    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_a

    :cond_c
    const/16 v17, 0x0

    :cond_d
    :goto_a
    if-eqz v17, :cond_e

    .line 236
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v8, v11

    if-lez v5, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_c

    :cond_e
    move-object v12, v14

    const/4 v8, 0x2

    goto :goto_b

    :cond_f
    move-object v12, v14

    :goto_b
    const/4 v11, 0x5

    goto :goto_9

    :cond_10
    move-wide v4, v11

    :goto_c
    cmp-long v8, v4, v11

    if-nez v8, :cond_12

    .line 240
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 241
    invoke-virtual {v2, v8, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v17, v8, v11

    if-lez v17, :cond_11

    move-wide v4, v8

    .line 248
    :cond_12
    invoke-virtual {v2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    const-string v8, ","

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-static {v6, v9}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 843
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v9, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v11, Ljava/util/Collection;

    .line 844
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    move-object v12, v9

    check-cast v12, Lkotlin/collections/IntIterator;

    invoke-virtual {v12}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v12

    .line 248
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    .line 845
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 846
    :cond_13
    check-cast v11, Ljava/util/List;

    .line 843
    move-object/from16 v21, v11

    check-cast v21, Ljava/lang/Iterable;

    .line 248
    move-object/from16 v22, v8

    check-cast v22, Ljava/lang/CharSequence;

    const/16 v28, 0x3e

    const/16 v29, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v21 .. v29}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    :cond_14
    const-string v0, "(\u65e0)"

    .line 249
    :cond_15
    const-string v11, "points"

    invoke-virtual {v2, v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v12, "track"

    invoke-virtual {v2, v12, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 250
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v23, v22

    check-cast v23, Ljava/lang/CharSequence;

    new-array v9, v7, [Ljava/lang/String;

    const-string v17, ";"

    aput-object v17, v9, v6

    const/16 v27, 0x6

    const/16 v28, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v9

    invoke-static/range {v23 .. v28}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    move/from16 v19, v6

    const/4 v6, 0x2

    invoke-static {v9, v6}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v9

    move-object/from16 v24, v9

    check-cast v24, Ljava/lang/Iterable;

    const-string v6, " | "

    move-object/from16 v25, v6

    check-cast v25, Ljava/lang/CharSequence;

    const/16 v31, 0x3e

    const/16 v32, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v24 .. v32}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide v24, 0xe8d4a51000L

    cmp-long v9, v4, v24

    if-lez v9, :cond_16

    const/16 v9, 0x3e8

    move-object/from16 v29, v8

    int-to-long v7, v9

    .line 252
    div-long v7, v4, v7

    goto :goto_e

    :cond_16
    move-object/from16 v29, v8

    move-wide v7, v4

    .line 253
    :goto_e
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v30, v15

    const-string v15, "===== \u9ed1\u9e1f\u6d3b\u52a8\u8c03\u8bd5 ===== keys="

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " startTimeRaw="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startTimeSec="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "===== track\u524d2\u70b9: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ====="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v4, Lcom/jichi/ob/api/BlackbirdApi;->Companion:Lcom/jichi/ob/api/BlackbirdApi$Companion;

    invoke-virtual {v4, v0}, Lcom/jichi/ob/api/BlackbirdApi$Companion;->setLastRawKeys(Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/jichi/ob/api/BlackbirdApi;->Companion:Lcom/jichi/ob/api/BlackbirdApi$Companion;

    invoke-virtual {v0, v7, v8}, Lcom/jichi/ob/api/BlackbirdApi$Companion;->setLastStartTime(J)V

    .line 258
    sget-object v0, Lcom/jichi/ob/api/BlackbirdApi;->Companion:Lcom/jichi/ob/api/BlackbirdApi$Companion;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v17, v5, v19

    const/16 v27, 0x6

    const/16 v28, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v5

    invoke-static/range {v23 .. v28}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    const/4 v9, 0x5

    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 847
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 849
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v6, v19

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v17, v6, 0x1

    if-gez v6, :cond_17

    .line 850
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_17
    check-cast v15, Ljava/lang/String;

    .line 259
    move-object/from16 v31, v15

    check-cast v31, Ljava/lang/CharSequence;

    const/4 v15, 0x1

    new-array v9, v15, [Ljava/lang/String;

    aput-object v29, v9, v19

    const/16 v35, 0x6

    const/16 v36, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v32, v9

    invoke-static/range {v31 .. v36}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 260
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    check-cast v9, Ljava/lang/Iterable;

    move-object/from16 v24, v4

    .line 851
    new-instance v4, Ljava/util/ArrayList;

    move-wide/from16 v33, v7

    invoke-static {v9, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 853
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move/from16 v8, v19

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v25, v8, 0x1

    if-gez v8, :cond_18

    .line 854
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_18
    check-cast v9, Ljava/lang/String;

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v27, v7

    const-string v7, "["

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "]="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 854
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v8, v25

    move-object/from16 v7, v27

    const/16 v3, 0xa

    goto :goto_10

    .line 855
    :cond_19
    check-cast v4, Ljava/util/List;

    .line 851
    move-object/from16 v35, v4

    check-cast v35, Ljava/lang/Iterable;

    .line 260
    const-string v3, " "

    move-object/from16 v36, v3

    check-cast v36, Ljava/lang/CharSequence;

    const/16 v42, 0x3e

    const/16 v43, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-static/range {v35 .. v43}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u70b9#"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\u5b57\u6bb5): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 850
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v6, v17

    move-object/from16 v4, v24

    move-wide/from16 v7, v33

    const/16 v3, 0xa

    goto/16 :goto_f

    :cond_1a
    move-wide/from16 v33, v7

    .line 856
    check-cast v5, Ljava/util/List;

    .line 847
    move-object/from16 v35, v5

    check-cast v35, Ljava/lang/Iterable;

    .line 261
    const-string v3, "\n"

    move-object/from16 v36, v3

    check-cast v36, Ljava/lang/CharSequence;

    const/16 v42, 0x3e

    const/16 v43, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-static/range {v35 .. v43}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-virtual {v0, v3}, Lcom/jichi/ob/api/BlackbirdApi$Companion;->setLastRawTrackSample(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :cond_1b
    move-object/from16 v31, v0

    if-eqz v31, :cond_1c

    .line 265
    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 266
    iget-object v0, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    iget-object v2, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$recordId:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$convertCoord:Z

    move-object/from16 v30, v0

    move-object/from16 v32, v2

    move/from16 v35, v3

    invoke-static/range {v30 .. v35}, Lcom/jichi/ob/api/BlackbirdApi;->access$buildGpx(Lcom/jichi/ob/api/BlackbirdApi;Lorg/json/JSONArray;Ljava/lang/String;JZ)[B

    move-result-object v0

    .line 267
    array-length v2, v0

    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GPX built: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " bytes from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " points"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1c
    const/4 v9, 0x5

    .line 272
    new-array v0, v9, [Ljava/lang/String;

    const-string v3, "distance"

    aput-object v3, v0, v19

    const-string/jumbo v3, "totalDistance"

    const/16 v21, 0x1

    aput-object v3, v0, v21

    const-string/jumbo v3, "total_distance"

    const/16 v18, 0x2

    aput-object v3, v0, v18

    const-string v3, "dist"

    aput-object v3, v0, p1

    const-string v3, "mileage"

    aput-object v3, v0, v16

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    invoke-virtual {v2, v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_1d

    .line 277
    invoke-static {v4}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 278
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double v7, v7, v5

    if-lez v7, :cond_1d

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_11

    :cond_1e
    move-wide v3, v5

    :goto_11
    cmpg-double v7, v3, v5

    if-nez v7, :cond_20

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 283
    invoke-virtual {v2, v7, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    cmpl-double v9, v7, v5

    if-lez v9, :cond_1f

    move-wide v3, v7

    .line 289
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6d3b\u52a8\u603b\u8ddd\u79bb: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "m (%.2fkm)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double v5, v3, v5

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v15, 0x1

    invoke-static {v2, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static/range {v23 .. v23}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 293
    iget-object v0, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    iget-object v2, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$recordId:Ljava/lang/String;

    iget-boolean v5, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$convertCoord:Z

    move-object/from16 v21, v0

    move-object/from16 v23, v2

    move-wide/from16 v27, v3

    move/from16 v26, v5

    move-wide/from16 v24, v33

    invoke-static/range {v21 .. v28}, Lcom/jichi/ob/api/BlackbirdApi;->access$buildFitFromTrackString(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;Ljava/lang/String;JZD)[B

    move-result-object v0

    if-eqz v0, :cond_21

    .line 294
    array-length v2, v0

    const/16 v3, 0x64

    if-le v2, v3, :cond_21

    aget-byte v2, v0, v20

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_21

    aget-byte v2, v0, v30

    const/16 v3, 0x46

    if-ne v2, v3, :cond_21

    .line 295
    array-length v2, v0

    iget-object v3, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$recordId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2705 \u9ed1\u9e1fFIT\u6784\u5efa\u6210\u529f: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " bytes (id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 298
    :cond_21
    const-string/jumbo v0, "\u9ed1\u9e1fFIT\u6784\u5efa\u5931\u8d25\u6216\u975eFIT\u683c\u5f0f\uff0c\u56de\u9000GPX"

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->this$0:Lcom/jichi/ob/api/BlackbirdApi;

    iget-object v2, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$recordId:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$convertCoord:Z

    move-object/from16 v21, v0

    move-object/from16 v23, v2

    move/from16 v26, v3

    move-wide/from16 v24, v33

    invoke-static/range {v21 .. v26}, Lcom/jichi/ob/api/BlackbirdApi;->access$buildGpxFromTrackString(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;Ljava/lang/String;JZ)[B

    move-result-object v0

    move-wide/from16 v4, v24

    .line 300
    array-length v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "GPX built from track string: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes (startTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 304
    :cond_22
    new-instance v0, Ljava/lang/Exception;

    iget-object v2, v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;->$recordId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u65e0\u6cd5\u83b7\u53d6\u6d3b\u52a8\u6570\u636e (recordId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_23
    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u9ed1\u9e1f\u6570\u636e HTTP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_24
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "\u6570\u636e\u7a7a\u54cd\u5e94"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

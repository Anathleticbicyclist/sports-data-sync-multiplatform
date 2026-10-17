.class final Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BrytonApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/BrytonApi;->uploadWorkout(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrytonApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrytonApi.kt\ncom/jichi/ob/api/BrytonApi$uploadWorkout$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,262:1\n1869#2,2:263\n*S KotlinDebug\n*F\n+ 1 BrytonApi.kt\ncom/jichi/ob/api/BrytonApi$uploadWorkout$2\n*L\n212#1:263,2\n*E\n"
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
    c = "com.jichi.ob.api.BrytonApi$uploadWorkout$2"
    f = "BrytonApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cookie:Ljava/lang/String;

.field final synthetic $fitBytes:[B

.field final synthetic $name:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/BrytonApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/jichi/ob/api/BrytonApi;Ljava/lang/String;[BLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/BrytonApi;",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->$cookie:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->this$0:Lcom/jichi/ob/api/BrytonApi;

    iput-object p3, p0, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->$fitBytes:[B

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

    new-instance v0, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;

    iget-object v1, p0, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->$cookie:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->this$0:Lcom/jichi/ob/api/BrytonApi;

    iget-object v3, p0, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->$fitBytes:[B

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/BrytonApi;Ljava/lang/String;[BLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "BrytonApi"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 208
    iget v0, v1, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->label:I

    if-nez v0, :cond_b

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 212
    :try_start_0
    iget-object v0, v1, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->$cookie:Ljava/lang/String;

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const-string v6, ";"

    aput-object v6, v5, v3

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 263
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    move-object v6, v5

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "id"

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 213
    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/CharSequence;

    new-array v11, v0, [Ljava/lang/String;

    const-string v7, "="

    aput-object v7, v11, v3

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 214
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 215
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "toLowerCase(...)"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 217
    const-string/jumbo v12, "userid"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, "user_id"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    const-string v13, "meteor_login_token"

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v12, v13, v3, v11, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    :cond_1
    move-object v12, v7

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 218
    check-cast v10, Ljava/lang/CharSequence;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v10, v8, v3, v11, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    new-instance v9, Lkotlin/text/Regex;

    const-string v10, "\\d+"

    invoke-direct {v9, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v6, v7

    goto/16 :goto_0

    .line 222
    :cond_2
    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "Cookie"

    const/16 v10, 0xc8

    if-nez v4, :cond_6

    .line 224
    :try_start_3
    iget-object v4, v1, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->this$0:Lcom/jichi/ob/api/BrytonApi;

    invoke-static {v4}, Lcom/jichi/ob/api/BrytonApi;->access$getClient$p(Lcom/jichi/ob/api/BrytonApi;)Lokhttp3/OkHttpClient;

    move-result-object v4

    .line 225
    new-instance v11, Lokhttp3/Request$Builder;

    invoke-direct {v11}, Lokhttp3/Request$Builder;-><init>()V

    const-string v12, "https://active.brytonsport.com/api/users/me"

    invoke-virtual {v11, v12}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 226
    iget-object v12, v1, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->$cookie:Ljava/lang/String;

    invoke-virtual {v11, v7, v12}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v11

    .line 224
    invoke-virtual {v4, v11}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    .line 227
    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 228
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v11

    if-ne v11, v10, :cond_5

    .line 229
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    :cond_3
    const-string/jumbo v11, "{}"

    :cond_4
    invoke-direct {v6, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 230
    const-string v11, "_id"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "optString(...)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    :cond_5
    invoke-virtual {v4}, Lokhttp3/Response;->close()V

    .line 234
    :cond_6
    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 235
    const-string/jumbo v0, "uploadWorkout: cannot get userId"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 239
    :cond_7
    iget-object v4, v1, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->$name:Ljava/lang/String;

    const/16 v8, 0x14

    invoke-static {v4, v8}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v8, Lkotlin/text/Regex;

    const-string v11, "[^a-zA-Z0-9]"

    invoke-direct {v8, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v11, "_"

    invoke-virtual {v8, v4, v11}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".fit"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    new-instance v8, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v8, v9, v0, v9}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 241
    sget-object v9, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v8, v9}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v8

    .line 242
    const-string v9, "name"

    invoke-virtual {v8, v9, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v8

    .line 243
    const-string v9, "provider"

    const-string v11, "bryton"

    invoke-virtual {v8, v9, v11}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v8

    .line 244
    const-string v9, "file"

    sget-object v11, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v12, v1, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->$fitBytes:[B

    sget-object v13, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v14, "application/octet-stream"

    invoke-virtual {v13, v14}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v13

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v11

    invoke-virtual {v8, v9, v4, v11}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v4

    .line 245
    invoke-virtual {v4}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v4

    .line 246
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    .line 247
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://active.brytonsport.com/workout/upload/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 248
    iget-object v8, v1, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->$cookie:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 249
    const-string v7, "User-Agent"

    const-string v8, "Mozilla/5.0"

    invoke-virtual {v6, v7, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 250
    check-cast v4, Lokhttp3/RequestBody;

    invoke-virtual {v6, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 251
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 252
    iget-object v6, v1, Lcom/jichi/ob/api/BrytonApi$uploadWorkout$2;->this$0:Lcom/jichi/ob/api/BrytonApi;

    invoke-static {v6}, Lcom/jichi/ob/api/BrytonApi;->access$getClient$p(Lcom/jichi/ob/api/BrytonApi;)Lokhttp3/OkHttpClient;

    move-result-object v6

    invoke-virtual {v6, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 253
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    move-object v5, v6

    .line 254
    :cond_9
    :goto_1
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-static {v5, v10}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bryton workout upload: HTTP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v2, v10, :cond_a

    move v3, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 257
    const-string/jumbo v4, "uploadWorkout error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    :cond_a
    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 208
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

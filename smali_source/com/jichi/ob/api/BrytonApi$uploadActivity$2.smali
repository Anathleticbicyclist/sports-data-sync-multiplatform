.class final Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BrytonApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/BrytonApi;->uploadActivity(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.BrytonApi$uploadActivity$2"
    f = "BrytonApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cookie:Ljava/lang/String;

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $fitData:[B

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/BrytonApi;


# direct methods
.method constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/jichi/ob/api/BrytonApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/BrytonApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->$fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->$fitData:[B

    iput-object p3, p0, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->$cookie:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->this$0:Lcom/jichi/ob/api/BrytonApi;

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

    new-instance v0, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;

    iget-object v1, p0, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->$fitData:[B

    iget-object v3, p0, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->$cookie:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->this$0:Lcom/jichi/ob/api/BrytonApi;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/jichi/ob/api/BrytonApi;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "BrytonApi"

    const-string/jumbo v0, "\u767e\u9510\u817e\u4e0a\u4f20\u8ba4\u8bc1\u5931\u8d25: HTTP "

    const-string/jumbo v3, "\u767e\u9510\u817e\u4e0a\u4f20\u88ab\u91cd\u5b9a\u5411(\u53ef\u80fd\u672a\u767b\u5f55): "

    const-string v4, "Bryton upload: HTTP "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 173
    iget v5, v1, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->label:I

    if-nez v5, :cond_6

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 175
    :try_start_0
    new-instance v6, Lokhttp3/MultipartBody$Builder;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v6, v8, v7, v8}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 176
    sget-object v9, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v6, v9}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v6

    .line 177
    const-string v9, "file"

    iget-object v10, v1, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->$fileName:Ljava/lang/String;

    sget-object v11, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v12, v1, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->$fitData:[B

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

    invoke-virtual {v6, v9, v10, v11}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v6

    .line 178
    invoke-virtual {v6}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v6

    .line 179
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    .line 180
    const-string v10, "https://active.brytonsport.com/api/activity/upload"

    invoke-virtual {v9, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    .line 181
    const-string v10, "Cookie"

    iget-object v11, v1, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->$cookie:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    .line 182
    const-string v10, "User-Agent"

    const-string v11, "Mozilla/5.0"

    invoke-virtual {v9, v10, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    .line 183
    check-cast v6, Lokhttp3/RequestBody;

    invoke-virtual {v9, v6}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 184
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    .line 185
    iget-object v9, v1, Lcom/jichi/ob/api/BrytonApi$uploadActivity$2;->this$0:Lcom/jichi/ob/api/BrytonApi;

    invoke-static {v9}, Lcom/jichi/ob/api/BrytonApi;->access$getClient$p(Lcom/jichi/ob/api/BrytonApi;)Lokhttp3/OkHttpClient;

    move-result-object v9

    invoke-virtual {v9, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v6

    .line 186
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    const-string v9, ""

    .line 187
    :cond_1
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v10

    const/16 v11, 0x12c

    invoke-static {v9, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " resp="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v10, 0x12d

    const/4 v11, 0x2

    if-gt v10, v4, :cond_2

    const/16 v10, 0x135

    if-ge v4, v10, :cond_2

    .line 189
    const-string v0, "Location"

    invoke-static {v6, v0, v8, v11, v8}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 192
    :cond_2
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x191

    if-gt v4, v3, :cond_3

    const/16 v4, 0x194

    if-ge v3, v4, :cond_3

    .line 193
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 196
    :cond_3
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_5

    move-object v0, v9

    check-cast v0, Ljava/lang/CharSequence;

    const-string v3, "\"code\":0"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v5, v11, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v9

    check-cast v0, Ljava/lang/CharSequence;

    const-string v3, "\"code\":200"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v5, v11, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    check-cast v9, Ljava/lang/CharSequence;

    const-string/jumbo v0, "success"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v9, v0, v5, v11, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    :cond_4
    move v5, v7

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    const-string v3, "Bryton upload error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :cond_5
    :goto_0
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 173
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

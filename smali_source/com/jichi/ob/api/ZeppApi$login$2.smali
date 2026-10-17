.class final Lcom/jichi/ob/api/ZeppApi$login$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ZeppApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/ZeppApi;->login(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/jichi/ob/api/ZeppApi$LoginResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZeppApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZeppApi.kt\ncom/jichi/ob/api/ZeppApi$login$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,482:1\n1#2:483\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/jichi/ob/api/ZeppApi$LoginResult;",
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
    c = "com.jichi.ob.api.ZeppApi$login$2"
    f = "ZeppApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $account:Ljava/lang/String;

.field final synthetic $password:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/ZeppApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/ZeppApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/ZeppApi$login$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/ZeppApi$login$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    iput-object p2, p0, Lcom/jichi/ob/api/ZeppApi$login$2;->$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/ZeppApi$login$2;->$password:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/jichi/ob/api/ZeppApi$login$2;

    iget-object v1, p0, Lcom/jichi/ob/api/ZeppApi$login$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    iget-object v2, p0, Lcom/jichi/ob/api/ZeppApi$login$2;->$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/ZeppApi$login$2;->$password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/jichi/ob/api/ZeppApi$login$2;-><init>(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/jichi/ob/api/ZeppApi$login$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/ZeppApi$login$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/jichi/ob/api/ZeppApi$LoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/ZeppApi$login$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/ZeppApi$login$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/ZeppApi$login$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v1, p0

    const-string/jumbo v0, "token_info"

    const-string v2, "Dalvik/2.1.0 (Linux; U; Android 9; MI 6 MIUI/20.6.18)"

    const-string v3, "User-Agent"

    const-string v4, "com.xiaomi.hm.health"

    const-string v5, "ZeppApi"

    const-string v6, "Zepp step3 \u65e0app_token: "

    const-string v7, "Zepp step3 \u54cd\u5e94\u975eJSON: "

    const-string v8, "Zepp step3 app_token HTTP "

    const-string v9, "https://account-cn.huami.com/v1/client/app_tokens?"

    const-string v10, "login_token="

    const-string v11, "Zepp step2 \u65e0login_token: "

    const-string v12, "Zepp step2 \u65e0token_info: "

    const-string v13, "Zepp step2 \u54cd\u5e94\u975eJSON: "

    const-string v14, "Zepp step2 login HTTP "

    const-string v15, "Zepp step1 access code \u83b7\u53d6\u5931\u8d25: "

    move-object/from16 v16, v6

    const-string v6, "+86"

    move-object/from16 v17, v7

    iget-object v7, v1, Lcom/jichi/ob/api/ZeppApi$login$2;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 106
    iget v7, v1, Lcom/jichi/ob/api/ZeppApi$login$2;->label:I

    if-nez v7, :cond_1a

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    :try_start_0
    iget-object v7, v1, Lcom/jichi/ob/api/ZeppApi$login$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    move-object/from16 v18, v8

    iget-object v8, v1, Lcom/jichi/ob/api/ZeppApi$login$2;->$account:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/jichi/ob/api/ZeppApi;->access$setLastAccount$p(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;)V

    .line 109
    iget-object v7, v1, Lcom/jichi/ob/api/ZeppApi$login$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    iget-object v8, v1, Lcom/jichi/ob/api/ZeppApi$login$2;->$password:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/jichi/ob/api/ZeppApi;->access$setLastPassword$p(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;)V

    .line 111
    iget-object v7, v1, Lcom/jichi/ob/api/ZeppApi$login$2;->$account:Ljava/lang/String;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 112
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    const-string v19, "@"

    move-object/from16 v20, v9

    move-object/from16 v9, v19

    check-cast v9, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v19, v10

    const/4 v10, 0x2

    move-object/from16 v21, v11

    const/4 v11, 0x0

    move-object/from16 v22, v12

    const/4 v12, 0x0

    :try_start_1
    invoke-static {v8, v9, v11, v10, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v8, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    :goto_0
    iget-object v6, v1, Lcom/jichi/ob/api/ZeppApi$login$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    iget-object v9, v1, Lcom/jichi/ob/api/ZeppApi$login$2;->$password:Ljava/lang/String;

    invoke-static {v6, v7, v9}, Lcom/jichi/ob/api/ZeppApi;->access$fetchAccessCode(Lcom/jichi/ob/api/ZeppApi;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 117
    const-string v9, ""

    if-nez v7, :cond_2

    .line 118
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lcom/jichi/ob/api/ZeppApi$LoginResult;

    if-nez v6, :cond_1

    const-string/jumbo v6, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    :cond_1
    invoke-direct {v0, v9, v9, v6}, Lcom/jichi/ob/api/ZeppApi$LoginResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 123
    :cond_2
    new-instance v6, Lokhttp3/FormBody$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    const/4 v12, 0x1

    const/4 v15, 0x0

    :try_start_4
    invoke-direct {v6, v15, v12, v15}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 124
    :try_start_5
    const-string v12, "app_name"

    invoke-virtual {v6, v12, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v6

    .line 125
    const-string v12, "country_code"

    const-string v15, "CN"

    invoke-virtual {v6, v12, v15}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v6

    .line 126
    const-string v12, "code"

    invoke-virtual {v6, v12, v7}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v6

    .line 127
    const-string v7, "device_id"

    iget-object v12, v1, Lcom/jichi/ob/api/ZeppApi$login$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    invoke-static {v12}, Lcom/jichi/ob/api/ZeppApi;->access$deviceId(Lcom/jichi/ob/api/ZeppApi;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v6

    .line 128
    const-string v7, "device_model"

    const-string v12, "android_phone"

    invoke-virtual {v6, v7, v12}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v6

    .line 129
    const-string v7, "app_version"

    const-string v12, "6.12.0"

    invoke-virtual {v6, v7, v12}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v6

    .line 130
    const-string v7, "grant_type"

    const-string v12, "access_token"

    invoke-virtual {v6, v7, v12}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v6

    .line 131
    const-string v7, "allow_registration"

    const-string v12, "false"

    invoke-virtual {v6, v7, v12}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v6

    .line 132
    const-string/jumbo v7, "source"

    invoke-virtual {v6, v7, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v4

    .line 133
    const-string/jumbo v6, "third_name"

    if-eqz v8, :cond_3

    const-string v7, "huami"

    goto :goto_1

    :cond_3
    const-string v7, "huami_phone"

    :goto_1
    invoke-virtual {v4, v6, v7}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v4

    .line 134
    invoke-virtual {v4}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v4

    .line 135
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    .line 136
    const-string v7, "https://account.huami.com/v2/client/login"

    invoke-virtual {v6, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 137
    invoke-virtual {v6, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 138
    check-cast v4, Lokhttp3/RequestBody;

    invoke-virtual {v6, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 139
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 140
    iget-object v6, v1, Lcom/jichi/ob/api/ZeppApi$login$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    invoke-static {v6}, Lcom/jichi/ob/api/ZeppApi;->access$getClient$p(Lcom/jichi/ob/api/ZeppApi;)Lokhttp3/OkHttpClient;

    move-result-object v6

    invoke-virtual {v6, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    move-object v6, v4

    check-cast v6, Lokhttp3/Response;

    .line 141
    new-instance v7, Lkotlin/Pair;

    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v6, :cond_5

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v12, 0x0

    goto/16 :goto_e

    :cond_4
    :goto_2
    move-object v6, v9

    :cond_5
    :try_start_8
    invoke-direct {v7, v8, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v15, 0x0

    .line 140
    :try_start_9
    invoke-static {v4, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :try_start_a
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 143
    const-string v7, ")\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const-string/jumbo v15, "too many"

    const-string/jumbo v23, "\u8bf7\u6c42\u8fc7\u4e8e\u9891\u7e41\uff0c\u5df2\u88ab\u534e\u7c73\u98ce\u63a7\uff0c\u8bf7\u7a0d\u7b49\u51e0\u5206\u949f\u518d\u8bd5"

    const-string v12, ": "

    const/16 v10, 0xc8

    const/16 v11, 0x96

    const-string/jumbo v8, "\u767b\u5f55\u5931\u8d25(HTTP "

    if-eq v4, v10, :cond_a

    .line 144
    :try_start_b
    invoke-static {v6, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1ad

    if-eq v4, v0, :cond_9

    .line 146
    check-cast v6, Ljava/lang/CharSequence;

    check-cast v15, Ljava/lang/CharSequence;

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v12, 0x0

    invoke-static {v6, v15, v2, v0, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/16 v0, 0x191

    if-eq v4, v0, :cond_8

    const/16 v0, 0x193

    if-ne v4, v0, :cond_7

    goto :goto_3

    .line 148
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_4

    .line 147
    :cond_8
    :goto_3
    const-string/jumbo v23, "\u8d26\u53f7\u6216\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    :cond_9
    :goto_4
    move-object/from16 v0, v23

    .line 150
    new-instance v2, Lcom/jichi/ob/api/ZeppApi$LoginResult;

    invoke-direct {v2, v9, v9, v0}, Lcom/jichi/ob/api/ZeppApi$LoginResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    return-object v2

    .line 152
    :cond_a
    :try_start_c
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_5

    :catch_0
    const/4 v4, 0x0

    :goto_5
    const/16 v14, 0x78

    const-string/jumbo v10, "\u767b\u5f55\u54cd\u5e94\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    if-nez v4, :cond_b

    .line 153
    :try_start_d
    invoke-static {v6, v14}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Lcom/jichi/ob/api/ZeppApi$LoginResult;

    invoke-direct {v0, v9, v9, v10}, Lcom/jichi/ob/api/ZeppApi$LoginResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 156
    :cond_b
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_c

    .line 157
    invoke-static {v6, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Lcom/jichi/ob/api/ZeppApi$LoginResult;

    invoke-direct {v0, v9, v9, v10}, Lcom/jichi/ob/api/ZeppApi$LoginResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 160
    :cond_c
    const-string v13, "login_token"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v22, v13

    check-cast v22, Ljava/lang/CharSequence;

    invoke-static/range {v22 .. v22}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_d

    goto :goto_6

    :cond_d
    const/4 v13, 0x0

    :goto_6
    if-nez v13, :cond_e

    .line 161
    invoke-static {v6, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Lcom/jichi/ob/api/ZeppApi$LoginResult;

    invoke-direct {v0, v9, v9, v10}, Lcom/jichi/ob/api/ZeppApi$LoginResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 164
    :cond_e
    const-string/jumbo v6, "user_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 167
    invoke-static {v13}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v13, v19

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    .line 169
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v14, v20

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 170
    invoke-virtual {v4, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 173
    iget-object v3, v1, Lcom/jichi/ob/api/ZeppApi$login$2;->this$0:Lcom/jichi/ob/api/ZeppApi;

    invoke-static {v3}, Lcom/jichi/ob/api/ZeppApi;->access$getClient$p(Lcom/jichi/ob/api/ZeppApi;)Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :try_start_e
    move-object v3, v2

    check-cast v3, Lokhttp3/Response;

    .line 174
    new-instance v4, Lkotlin/Pair;

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v3, :cond_f

    :try_start_f
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-nez v3, :cond_10

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v0

    const/4 v12, 0x0

    goto/16 :goto_d

    :cond_f
    :goto_7
    move-object v3, v9

    :cond_10
    :try_start_10
    invoke-direct {v4, v6, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/4 v3, 0x0

    .line 173
    :try_start_11
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    :try_start_12
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_15

    .line 177
    invoke-static {v3, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1ad

    if-eq v2, v0, :cond_14

    .line 179
    check-cast v3, Ljava/lang/CharSequence;

    check-cast v15, Ljava/lang/CharSequence;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    const/4 v0, 0x2

    const/4 v4, 0x0

    const/4 v12, 0x0

    :try_start_13
    invoke-static {v3, v15, v4, v0, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_9

    :cond_11
    const/16 v0, 0x191

    if-eq v2, v0, :cond_13

    const/16 v0, 0x193

    if-ne v2, v0, :cond_12

    goto :goto_8

    .line 181
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_9

    .line 180
    :cond_13
    :goto_8
    const-string/jumbo v23, "\u767b\u5f55\u51ed\u8bc1\u5df2\u5931\u6548\u6216\u88ab\u98ce\u63a7\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    goto :goto_9

    :cond_14
    const/4 v12, 0x0

    :goto_9
    move-object/from16 v0, v23

    .line 183
    new-instance v2, Lcom/jichi/ob/api/ZeppApi$LoginResult;

    invoke-direct {v2, v9, v9, v0}, Lcom/jichi/ob/api/ZeppApi$LoginResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    return-object v2

    :cond_15
    const/4 v12, 0x0

    .line 185
    :try_start_14
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    goto :goto_a

    :catch_1
    move-object v2, v12

    :goto_a
    if-nez v2, :cond_16

    const/16 v4, 0x78

    .line 186
    :try_start_15
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Lcom/jichi/ob/api/ZeppApi$LoginResult;

    invoke-direct {v0, v9, v9, v10}, Lcom/jichi/ob/api/ZeppApi$LoginResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 189
    :cond_16
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_b

    :cond_17
    move-object v2, v0

    .line 190
    :goto_b
    const-string v0, "app_token"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v25, v0

    goto :goto_c

    :cond_18
    move-object/from16 v25, v12

    :goto_c
    if-nez v25, :cond_19

    .line 191
    invoke-static {v3, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Lcom/jichi/ob/api/ZeppApi$LoginResult;

    const-string/jumbo v2, "\u767b\u5f55\u54cd\u5e94\u7f3a\u5c11\u4ee4\u724c\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {v0, v9, v9, v2}, Lcom/jichi/ob/api/ZeppApi$LoginResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 194
    :cond_19
    new-instance v24, Lcom/jichi/ob/api/ZeppApi$LoginResult;

    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v28, 0x4

    const/16 v29, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v29}, Lcom/jichi/ob/api/ZeppApi$LoginResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    move-object/from16 v7, v24

    goto :goto_10

    :catch_2
    move-exception v0

    move-object v12, v3

    goto :goto_f

    :catchall_2
    move-exception v0

    const/4 v12, 0x0

    move-object v3, v0

    .line 173
    :goto_d
    :try_start_16
    throw v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_17
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4

    :catchall_4
    move-exception v0

    const/4 v12, 0x0

    move-object v2, v0

    .line 140
    :goto_e
    :try_start_18
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_19
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    :catch_3
    move-exception v0

    move-object v12, v15

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_f

    :catch_5
    move-exception v0

    const/4 v12, 0x0

    .line 196
    :goto_f
    const-string v2, "Zepp login error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v12

    :goto_10
    return-object v7

    .line 106
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

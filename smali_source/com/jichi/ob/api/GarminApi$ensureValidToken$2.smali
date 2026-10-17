.class final Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GarminApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi;->ensureValidToken(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.api.GarminApi$ensureValidToken$2"
    f = "GarminApi.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x32a
    }
    m = "invokeSuspend"
    n = {
        "sess",
        "now",
        "expired"
    }
    s = {
        "L$0",
        "J$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $cred:Ljava/lang/String;

.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/GarminApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminApi;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->$cred:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->$ds:Lcom/jichi/ob/model/DataSource;

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

    new-instance p1, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->$cred:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;-><init>(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const-string v0, ""

    const-string v1, "ensureValidToken: \u5237\u65b0\u5931\u8d25\uff0c\u81ea\u52a8\u7528\u4fdd\u5b58\u7684\u8d26\u53f7\u91cd\u65b0\u767b\u5f55\u4f73\u660e\u4e2d\u56fd("

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 803
    iget v3, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/api/GarminApi$GarminSession;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 804
    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v3, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->$cred:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/jichi/ob/api/GarminApi;->access$parseCredential(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->$cred:Ljava/lang/String;

    return-object p1

    .line 805
    :cond_2
    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiToken()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->$cred:Ljava/lang/String;

    return-object p1

    .line 806
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v3, 0x3e8

    int-to-long v8, v3

    div-long/2addr v6, v8

    .line 807
    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiExpiresAt()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_5

    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminApi$GarminSession;->getDiExpiresAt()J

    move-result-wide v8

    const/16 v3, 0x3c

    int-to-long v10, v3

    sub-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-ltz v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v5

    :goto_1
    if-nez v3, :cond_6

    .line 808
    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->$cred:Ljava/lang/String;

    return-object p1

    .line 809
    :cond_6
    sget-object v8, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    const-string v9, "ensureValidToken: DI token\u5df2\u8fc7\u671f\uff0c\u5c1d\u8bd5\u9759\u9ed8\u5237\u65b0..."

    invoke-virtual {v8, v9}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 810
    iget-object v8, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v9, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v10, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->$cred:Ljava/lang/String;

    move-object v11, p0

    check-cast v11, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->L$0:Ljava/lang/Object;

    iput-wide v6, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->J$0:J

    iput v3, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->I$0:I

    iput v5, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->label:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/jichi/ob/api/GarminApi;->refreshDiToken(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    return-object v2

    .line 803
    :cond_7
    :goto_2
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    return-object p1

    .line 813
    :cond_8
    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v2, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p1, v2, :cond_e

    .line 815
    :try_start_0
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getAppContext$cp()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    const-string v3, "jichi_ob"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_3

    :cond_9
    move-object p1, v2

    :goto_3
    if-eqz p1, :cond_a

    .line 816
    const-string v3, "garmin_cn_email"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_a
    move-object v3, v2

    :goto_4
    if-eqz p1, :cond_b

    .line 817
    const-string v4, "garmin_cn_password"

    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 818
    :cond_b
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_5

    :cond_c
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_5

    .line 819
    :cond_d
    sget-object v4, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")..."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 820
    sget-object v1, Lcom/jichi/ob/api/GarminOAuthHelper;->INSTANCE:Lcom/jichi/ob/api/GarminOAuthHelper;

    invoke-virtual {v1, v3, v2}, Lcom/jichi/ob/api/GarminOAuthHelper;->loginWithCredentialsCn(Ljava/lang/String;Ljava/lang/String;)Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;

    move-result-object v1

    .line 821
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 822
    const-string v4, "di_token"

    invoke-virtual {v1}, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    const-string v4, "di_refresh_token"

    invoke-virtual {v1}, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    const-string v1, "di_client_id"

    const-string v4, "GCM_ANDROID_DARK"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 825
    const-string v1, "jwt_web"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 826
    const-string v1, "session"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 827
    const-string v1, "csrf"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    const-string v1, "email"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 829
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "garmin_cn_token"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "garmin_cn_cookie"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 831
    sget-object p1, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    const-string v0, "ensureValidToken: \u2705 \u4f73\u660e\u4e2d\u56fd\u81ea\u52a8\u91cd\u65b0\u767b\u5f55\u6210\u529f"

    invoke-virtual {p1, v0}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 835
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ensureValidToken: \u81ea\u52a8\u91cd\u65b0\u767b\u5f55\u5931\u8d25: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 838
    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$ensureValidToken$2;->$cred:Ljava/lang/String;

    return-object p1
.end method

.class final Lcom/jichi/ob/api/GarminApi$loginMobile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GarminApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi;->loginMobile(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGarminApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$loginMobile$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1768:1\n3829#2:1769\n4344#2,2:1770\n*S KotlinDebug\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$loginMobile$2\n*L\n274#1:1769\n274#1:1770,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.api.GarminApi$loginMobile$2"
    f = "GarminApi.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x15f
    }
    m = "invokeSuspend"
    n = {
        "ds",
        "channels",
        "ssoOrigin",
        "locale",
        "loginUrl",
        "available",
        "ch",
        "loginJson",
        "loginReq",
        "loginResp",
        "loginBody",
        "res",
        "respType",
        "ticket",
        "lastCode"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$7",
        "L$8",
        "L$9",
        "L$10",
        "L$11",
        "L$12",
        "L$13",
        "L$14",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $email:Ljava/lang/String;

.field final synthetic $isCN:Z

.field final synthetic $password:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$12:Ljava/lang/Object;

.field L$13:Ljava/lang/Object;

.field L$14:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/GarminApi;


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/GarminApi;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminApi$loginMobile$2;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$isCN:Z

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iput-object p4, p0, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$password:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/GarminApi$loginMobile$2;

    iget-boolean v1, p0, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$isCN:Z

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$email:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    iget-object v4, p0, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$password:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/GarminApi$loginMobile$2;-><init>(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v1, p0

    const-string v0, "application/json"

    const-string v2, ""

    const-string v3, "loginMobile["

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 267
    iget v5, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->label:I

    const-string v6, ")"

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    if-ne v5, v7, :cond_0

    iget v5, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->I$0:I

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$14:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$13:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$12:Ljava/lang/Object;

    check-cast v9, Lorg/json/JSONObject;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$11:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$10:Ljava/lang/Object;

    check-cast v9, Lokhttp3/Response;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$9:Ljava/lang/Object;

    check-cast v9, Lokhttp3/Request;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$8:Ljava/lang/Object;

    check-cast v9, Lorg/json/JSONObject;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$7:Ljava/lang/Object;

    check-cast v9, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    iget-object v9, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$6:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$5:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$1:Ljava/lang/Object;

    check-cast v14, [Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    iget-object v15, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/jichi/ob/model/DataSource;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v21, v0

    move-object/from16 v19, v2

    move-object v2, v4

    move-object/from16 v25, v6

    const/16 v17, 0x0

    move-object/from16 v0, p1

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 268
    :try_start_1
    iget-boolean v5, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$isCN:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;

    .line 269
    :goto_0
    iget-boolean v9, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$isCN:Z

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSSO_CHANNELS_CN$cp()[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    move-result-object v9

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSSO_CHANNELS_COM$cp()[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    move-result-object v9

    .line 270
    :goto_1
    iget-boolean v10, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$isCN:Z

    if-eqz v10, :cond_4

    const-string v11, "https://sso.garmin.cn"

    goto :goto_2

    :cond_4
    const-string v11, "https://sso.garmin.com"

    :goto_2
    if-eqz v10, :cond_5

    .line 271
    const-string/jumbo v12, "zh-CN"

    goto :goto_3

    :cond_5
    const-string v12, "en-US"

    :goto_3
    if-eqz v10, :cond_6

    .line 272
    const-string v10, "https://sso.garmin.cn/mobile/api/login"

    goto :goto_4

    :cond_6
    const-string v10, "https://sso.garmin.com/mobile/api/login"

    .line 274
    :goto_4
    iget-object v13, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$email:Ljava/lang/String;

    .line 1769
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    check-cast v14, Ljava/util/Collection;

    .line 1770
    array-length v15, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v16, 0x0

    move/from16 v8, v16

    const/16 v17, 0x0

    :goto_5
    if-ge v8, v15, :cond_8

    :try_start_2
    aget-object v7, v9, v8

    move/from16 p1, v8

    .line 274
    sget-object v8, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    move-object/from16 v18, v10

    invoke-virtual {v7}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v5, v13, v10}, Lcom/jichi/ob/api/GarminApi$Companion;->isCooldown(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1770
    invoke-interface {v14, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v8, p1, 0x1

    move-object/from16 v10, v18

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v18, v10

    .line 1771
    check-cast v14, Ljava/util/List;

    .line 275
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 276
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$email:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownRemainAnyMinutes(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)J

    move-result-wide v2

    .line 277
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    iget-object v4, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$email:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loginMobile: \u8d26\u53f7["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\u6240\u6709SSO\u901a\u9053\u5747\u5904\u4e8e\u98ce\u63a7\u51b7\u5374\u671f("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5206\u949f)\uff0c\u8df3\u8fc7\u767b\u5f55"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    return-object v17

    .line 280
    :cond_9
    sget-object v7, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    array-length v10, v9

    iget-object v13, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$email:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v5

    const-string v5, "loginMobile: \u53ef\u7528\u901a\u9053 "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (\u8d26\u53f7="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 284
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, -0x1

    move-object/from16 v15, p1

    move-object v13, v11

    move-object v10, v14

    move-object/from16 v11, v18

    move-object v14, v9

    move-object v9, v5

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    .line 285
    sget-object v7, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v5}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 p1, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v10

    const-string v10, "loginMobile: \u5c1d\u8bd5\u901a\u9053 clientId="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 286
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$email:Ljava/lang/String;

    iget-object v8, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$password:Ljava/lang/String;

    .line 287
    const-string/jumbo v10, "username"

    invoke-virtual {v5, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v7, "password"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v7, "rememberMe"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 290
    const-string v7, "captchaToken"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 293
    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getServiceUrl()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v2

    const-string v2, "UTF-8"

    invoke-static {v10, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v20, v5

    const-string v5, "?clientId="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "&locale="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "&service="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 294
    const-string v5, "User-Agent"

    const-string v7, "Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148"

    invoke-virtual {v2, v5, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 295
    const-string v5, "Accept"

    const-string v7, "application/json, text/plain, */*"

    invoke-virtual {v2, v5, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 296
    const-string v5, "Content-Type"

    invoke-virtual {v2, v5, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 297
    const-string v5, "Origin"

    invoke-virtual {v2, v5, v13}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 298
    sget-object v5, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "toString(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v8, v0}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v5

    invoke-virtual {v2, v5}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 299
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 300
    iget-object v5, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static {v5}, Lcom/jichi/ob/api/GarminApi;->access$getClient$p(Lcom/jichi/ob/api/GarminApi;)Lokhttp3/OkHttpClient;

    move-result-object v5

    invoke-virtual {v5, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5

    .line 301
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    :cond_a
    move-object/from16 v7, v19

    .line 302
    :cond_b
    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v8

    .line 303
    sget-object v10, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v2

    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v2

    move-object/from16 v23, v5

    const/16 v5, 0x96

    invoke-static {v7, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "]: HTTP "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", body="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_c

    .line 307
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    iget-object v2, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$email:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v15, v2, v4}, Lcom/jichi/ob/api/GarminApi$Companion;->access$writeCooldown(Lcom/jichi/ob/api/GarminApi$Companion;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: 429\u98ce\u63a7\u2014\u2014\u8d26\u53f7\u7ea7\u4fe1\u53f7\uff08\u5bc6\u7801\u9519/\u4e24\u6b65\u9a8c\u8bc1/\u771f\u98ce\u63a7\uff09\uff0c\u7acb\u5373\u505c\u6b62\u540e\u7eed\u901a\u9053"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    const-string/jumbo v2, "\u98ce\u63a7\u9650\u6d41"

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->setLastGarminAuthError(Ljava/lang/String;)V

    return-object v17

    .line 312
    :cond_c
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->code()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v2, 0xc8

    const-string/jumbo v5, "\u5bc6\u7801\u9519\u8bef"

    const-string/jumbo v10, "\u4e24\u6b65\u9a8c\u8bc1"

    const-string v14, "MFA_REQUIRED"

    move-object/from16 v25, v6

    const-string/jumbo v6, "type"

    move-object/from16 v26, v4

    const-string v4, "responseStatus"

    if-eq v0, v2, :cond_12

    .line 315
    :try_start_3
    move-object v0, v7

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v0, :cond_11

    .line 317
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_d
    move-object/from16 v0, v19

    .line 319
    :cond_e
    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v4, ")\uff0c\u6807\u8bb0\u81f4\u547d\u9519\u8bef\u5e76\u505c\u6b62\u5168\u90e8SSO\u901a\u9053"

    if-eqz v2, :cond_f

    .line 320
    :try_start_5
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->code()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "]: \u9700\u8981MFA\u9a8c\u8bc1(HTTP "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0, v10}, Lcom/jichi/ob/api/GarminApi$Companion;->setLastGarminAuthError(Ljava/lang/String;)V

    return-object v17

    .line 324
    :cond_f
    const-string v2, "INVALID_USERNAME_PASSWORD"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "INVALID_PASSWORD"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 325
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v6, "INVALID"

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_10

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v6, "PASSWORD"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v2, v6, v7}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 326
    :cond_10
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->code()I

    move-result v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "]: \u8d26\u53f7\u5bc6\u7801\u4e0d\u5339\u914d type="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " (HTTP "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0, v5}, Lcom/jichi/ob/api/GarminApi$Companion;->setLastGarminAuthError(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v17

    :catch_0
    :cond_11
    move v7, v8

    move-object/from16 v10, v18

    move-object/from16 v2, v19

    move-object/from16 v0, v21

    move-object/from16 v14, v24

    move-object/from16 v6, v25

    move-object/from16 v4, v26

    goto/16 :goto_6

    .line 334
    :cond_12
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    :cond_13
    move-object/from16 v2, v19

    .line 336
    :cond_14
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 338
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: \u9700\u8981MFA\u9a8c\u8bc1\uff0c\u6807\u8bb0\u81f4\u547d\u9519\u8bef\u5e76\u505c\u6b62\u5168\u90e8SSO\u901a\u9053"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0, v10}, Lcom/jichi/ob/api/GarminApi$Companion;->setLastGarminAuthError(Ljava/lang/String;)V

    return-object v17

    .line 342
    :cond_15
    const-string v4, "SUCCESSFUL"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 344
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: \u767b\u5f55\u5931\u8d25 type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\uff0c\u6807\u8bb0\u81f4\u547d\u9519\u8bef\u5e76\u505c\u6b62\u5168\u90e8SSO\u901a\u9053"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 345
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0, v5}, Lcom/jichi/ob/api/GarminApi$Companion;->setLastGarminAuthError(Ljava/lang/String;)V

    return-object v17

    .line 348
    :cond_16
    const-string v4, "serviceTicketId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 349
    sget-object v4, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: \u83b7\u53d6serviceTicket\u6210\u529f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 351
    iget-object v4, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v5, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$isCN:Z

    iget-object v6, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->$email:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getServiceUrl()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v32, v1

    check-cast v32, Lkotlin/coroutines/Continuation;

    iput-object v15, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$0:Ljava/lang/Object;

    invoke-static/range {v24 .. v24}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$1:Ljava/lang/Object;

    iput-object v13, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$2:Ljava/lang/Object;

    iput-object v12, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$3:Ljava/lang/Object;

    iput-object v11, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$4:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$5:Ljava/lang/Object;

    iput-object v9, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$6:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$7:Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$8:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$9:Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$10:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$11:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$12:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$13:Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->L$14:Ljava/lang/Object;

    iput v8, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->I$0:I

    const/4 v7, 0x1

    iput v7, v1, Lcom/jichi/ob/api/GarminApi$loginMobile$2;->label:I

    move-object/from16 v27, v4

    move/from16 v29, v5

    move-object/from16 v30, v6

    invoke-static/range {v27 .. v32}, Lcom/jichi/ob/api/GarminApi;->access$exchangeDiToken(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v26

    if-ne v0, v2, :cond_17

    return-object v2

    :cond_17
    move v5, v8

    move-object/from16 v10, v18

    move-object/from16 v14, v24

    .line 267
    :goto_7
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_18

    return-object v0

    :cond_18
    move-object v4, v2

    move v7, v5

    move-object/from16 v2, v19

    move-object/from16 v0, v21

    move-object/from16 v6, v25

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_19
    move-object/from16 v25, v6

    .line 354
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginMobile: \u6240\u6709\u53ef\u7528\u901a\u9053\u5c1d\u8bd5\u5b8c\u6bd5\uff0c\u767b\u5f55\u5931\u8d25 (lastCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_9

    :catch_2
    move-exception v0

    const/16 v17, 0x0

    .line 357
    :goto_8
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loginMobile\u5f02\u5e38: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 358
    const-string v2, "loginMobile error"

    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "GarminApi"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-object v17
.end method

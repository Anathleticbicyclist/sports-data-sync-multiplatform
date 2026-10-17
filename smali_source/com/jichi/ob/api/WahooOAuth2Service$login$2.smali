.class final Lcom/jichi/ob/api/WahooOAuth2Service$login$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WahooOAuth2Service.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/WahooOAuth2Service;->login(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWahooOAuth2Service.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WahooOAuth2Service.kt\ncom/jichi/ob/api/WahooOAuth2Service$login$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,425:1\n1869#2,2:426\n1869#2,2:428\n1869#2,2:430\n295#2,2:432\n*S KotlinDebug\n*F\n+ 1 WahooOAuth2Service.kt\ncom/jichi/ob/api/WahooOAuth2Service$login$2\n*L\n159#1:426,2\n200#1:428,2\n268#1:430,2\n304#1:432,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
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
    c = "com.jichi.ob.api.WahooOAuth2Service$login$2"
    f = "WahooOAuth2Service.kt"
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
        0x0,
        0x0
    }
    l = {
        0x146
    }
    m = "invokeSuspend"
    n = {
        "codeChallenge",
        "authUrl",
        "redirectClient",
        "authRequest",
        "authResp",
        "loginHtml",
        "currentUrl",
        "loginDoc",
        "loginForm",
        "loginAction",
        "loginFormData",
        "samlResp",
        "samlDoc",
        "samlForm",
        "samlAction",
        "samlFormData",
        "callbackResp",
        "callbackLocation",
        "authorizePageUrl",
        "authorizePageResp",
        "authorizeDoc",
        "authorizeForm",
        "authorizeAction",
        "authorizeFormData",
        "finalResp",
        "finalLocation",
        "code",
        "verifier",
        "api",
        "authCode"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "L$9",
        "L$10",
        "L$11",
        "L$12",
        "L$13",
        "L$14",
        "L$15",
        "L$16",
        "L$17",
        "L$18",
        "L$19",
        "L$20",
        "L$21",
        "L$22",
        "L$23",
        "L$24",
        "L$25",
        "L$26",
        "L$27",
        "L$28",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $email:Ljava/lang/String;

.field final synthetic $password:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$12:Ljava/lang/Object;

.field L$13:Ljava/lang/Object;

.field L$14:Ljava/lang/Object;

.field L$15:Ljava/lang/Object;

.field L$16:Ljava/lang/Object;

.field L$17:Ljava/lang/Object;

.field L$18:Ljava/lang/Object;

.field L$19:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$20:Ljava/lang/Object;

.field L$21:Ljava/lang/Object;

.field L$22:Ljava/lang/Object;

.field L$23:Ljava/lang/Object;

.field L$24:Ljava/lang/Object;

.field L$25:Ljava/lang/Object;

.field L$26:Ljava/lang/Object;

.field L$27:Ljava/lang/Object;

.field L$28:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$GuUWMakN4aHZYAshcIXl5qAiFhA(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->invokeSuspend$lambda$4(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/WahooOAuth2Service$login$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->$email:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->$password:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$4(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 325
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-static {v0, p0}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;

    iget-object v0, p0, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->$email:Ljava/lang/String;

    iget-object v1, p0, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->$password:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 48

    move-object/from16 v1, p0

    const-string v0, "input"

    const-string v2, "select(...)"

    const-string v3, "action"

    const-string v4, "form"

    const-string v5, "parse(...)"

    const-string v6, "UTF-8"

    const-string v7, "code="

    const-string v8, "attr(...)"

    const-string v9, "  \u767b\u5f55\u8868\u5355action: "

    const-string v10, "  HTML\u957f\u5ea6: "

    const-string v11, "  \u72b6\u6001\u7801: "

    const-string v12, "https://api.wahooligan.com/oauth/authorize?client_id="

    const-string v13, "  \ud83d\udd11 PKCE code_verifier\u957f\u5ea6: "

    const-string/jumbo v14, "\u8d26\u53f7: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    .line 93
    iget v15, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->label:I

    move-object/from16 v17, v7

    if-eqz v15, :cond_1

    const/4 v7, 0x1

    if-ne v15, v7, :cond_0

    iget-object v0, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$28:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/api/WahooApi;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$27:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$26:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$25:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$24:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$23:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$22:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$21:Ljava/lang/Object;

    check-cast v2, Lorg/jsoup/nodes/Element;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$20:Ljava/lang/Object;

    check-cast v2, Lorg/jsoup/nodes/Document;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$19:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$18:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$17:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$16:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$15:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$14:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$13:Ljava/lang/Object;

    check-cast v2, Lorg/jsoup/nodes/Element;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$12:Ljava/lang/Object;

    check-cast v2, Lorg/jsoup/nodes/Document;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$11:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$10:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$9:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$8:Ljava/lang/Object;

    check-cast v2, Lorg/jsoup/nodes/Element;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$7:Ljava/lang/Object;

    check-cast v2, Lorg/jsoup/nodes/Document;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$4:Ljava/lang/Object;

    check-cast v2, Lokhttp3/Response;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$3:Ljava/lang/Object;

    check-cast v2, Lokhttp3/Request;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$2:Ljava/lang/Object;

    check-cast v2, Lokhttp3/OkHttpClient;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-object/from16 v42, v0

    move-object v15, v1

    move-object/from16 v0, p1

    goto/16 :goto_e

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    :try_start_1
    invoke-static {}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$getCookieStore$p()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 96
    sget-object v7, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string v15, "========== Wahoo OAuth2 \u767b\u5f55\u5f00\u59cb =========="

    invoke-static {v7, v15}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 97
    sget-object v7, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    iget-object v15, v1, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->$email:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string v7, "Step 1: \u8bbf\u95ee\u6388\u6743URL..."

    invoke-static {v1, v7}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 102
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-static {v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$generateCodeVerifier(Lcom/jichi/ob/api/WahooOAuth2Service;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$setCurrentCodeVerifier$p(Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-static {}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$getCurrentCodeVerifier$p()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v7}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$generateCodeChallenge(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    sget-object v7, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-static {}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$getCurrentCodeVerifier$p()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v20, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", code_challenge\u957f\u5ea6: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 106
    sget-object v2, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v2}, Lcom/jichi/ob/api/WahooApi$Companion;->getBUILTIN_CLIENT_ID()Ljava/lang/String;

    move-result-object v2

    .line 107
    const-string v7, "https://localhost:8080/"

    invoke-static {v7, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 108
    const-string/jumbo v13, "workouts_read workouts_write offline_data user_read"

    invoke-static {v13, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 110
    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "&redirect_uri="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "&scope="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "&response_type=code&code_challenge="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "&code_challenge_method=S256"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance v6, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v6}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 114
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x1e

    invoke-virtual {v6, v12, v13, v7}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    .line 115
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v12, v13, v7}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    .line 116
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v12, v13, v7}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 117
    invoke-virtual {v6, v7}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    .line 118
    invoke-virtual {v6, v7}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    .line 119
    invoke-static {}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$getCookieJar$p()Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1;

    move-result-object v7

    check-cast v7, Lokhttp3/CookieJar;

    invoke-virtual {v6, v7}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    .line 120
    invoke-virtual {v6}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v6

    .line 122
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 123
    invoke-virtual {v7, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 124
    const-string v12, "User-Agent"

    const-string v13, "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v7, v12, v13}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 125
    const-string v12, "Accept"

    const-string/jumbo v13, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {v7, v12, v13}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 126
    const-string v12, "Accept-Language"

    const-string/jumbo v13, "zh-CN,zh;q=0.9,en;q=0.8"

    invoke-virtual {v7, v12, v13}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 127
    invoke-virtual {v7}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v7

    .line 128
    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    .line 130
    invoke-virtual {v6, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v12

    invoke-interface {v12}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v12

    .line 131
    invoke-virtual {v12}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    const-string v14, ""

    if-eqz v13, :cond_2

    :try_start_3
    invoke-virtual {v13}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3

    :cond_2
    move-object v13, v14

    .line 132
    :cond_3
    invoke-virtual {v12}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v15

    invoke-virtual {v15}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v15

    invoke-virtual {v15}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v1

    .line 133
    invoke-virtual {v12}, Lokhttp3/Response;->code()I

    move-result v1

    .line 134
    invoke-virtual {v12}, Lokhttp3/Response;->close()V

    move-object/from16 v21, v2

    .line 136
    sget-object v2, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    move-object/from16 v22, v6

    const/16 v6, 0x64

    move-object/from16 v23, v7

    invoke-static {v15, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v25, v12

    const-string v12, ", \u6700\u7ec8URL: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 137
    sget-object v2, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 139
    move-object v2, v13

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 140
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string/jumbo v1, "\u767b\u5f55\u9875\u9762HTML\u4e3a\u7a7a"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v3

    .line 145
    :cond_4
    sget-object v2, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string v6, "Step 2: \u89e3\u6790SAML\u767b\u5f55\u8868\u5355..."

    invoke-static {v2, v6}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 146
    invoke-static {v13}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    const/16 v7, 0x1f4

    .line 148
    const-string v10, "  \u9875\u9762\u524d500\u5b57: "

    const-string v12, "  \u9875\u9762\u6807\u9898: "

    if-nez v6, :cond_5

    .line 149
    :try_start_4
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string/jumbo v1, "\u672a\u627e\u5230\u767b\u5f55\u8868\u5355\uff0c\u9875\u9762\u53ef\u80fd\u662f\u9519\u8bef\u9875"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3, v4}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-static {v13, v7}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    const/16 v19, 0x0

    return-object v19

    .line 155
    :cond_5
    sget-object v7, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    move-object/from16 v26, v2

    sget-object v2, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    move-object/from16 v27, v13

    invoke-virtual {v6, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v13}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$decodeHtmlEntities(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v15, v2}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$resolveUrl(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    sget-object v7, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 158
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    .line 159
    invoke-virtual {v6, v0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v9

    move-object/from16 v13, v20

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Iterable;

    .line 426
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v28, v6

    const-string v6, "name"

    move-object/from16 v29, v9

    const-string/jumbo v9, "value"

    if-eqz v20, :cond_7

    :try_start_5
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v30, v14

    move-object/from16 v14, v20

    check-cast v14, Lorg/jsoup/nodes/Element;

    .line 160
    invoke-virtual {v14, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v14, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v15

    .line 162
    const-string/jumbo v15, "type"

    invoke-virtual {v14, v15}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "toLowerCase(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    move-object v15, v6

    check-cast v15, Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_6

    const-string v15, "checkbox"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string/jumbo v15, "submit"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 164
    invoke-interface {v7, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object/from16 v15, v20

    move-object/from16 v6, v28

    move-object/from16 v9, v29

    move-object/from16 v14, v30

    goto :goto_0

    :cond_7
    move-object/from16 v30, v14

    move-object/from16 v20, v15

    .line 167
    const-string v14, "email"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-object/from16 v15, p0

    move/from16 v29, v1

    :try_start_6
    iget-object v1, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->$email:Ljava/lang/String;

    invoke-interface {v7, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "password"

    iget-object v14, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->$password:Ljava/lang/String;

    invoke-interface {v7, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v9

    const-string v9, "  \u767b\u5f55\u8868\u5355\u5b57\u6bb5: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 172
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string v9, "Step 3: \u63d0\u4ea4\u767b\u5f55\u8868\u5355..."

    invoke-static {v1, v9}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 173
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-static {v1, v2, v7}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$executePost(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/util/Map;)Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;

    move-result-object v1

    .line 174
    sget-object v9, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v1}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getCode()I

    move-result v14

    invoke-virtual {v1}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v32, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, ", \u54cd\u5e94\u957f\u5ea6: "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {v32 .. v32}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getCode()I

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    const/16 v9, 0xc8

    const-string v14, "  \u54cd\u5e94\u524d500\u5b57: "

    if-eq v1, v9, :cond_8

    .line 177
    :try_start_8
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual/range {v32 .. v32}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u767b\u5f55\u63d0\u4ea4\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 178
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual/range {v32 .. v32}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    const/16 v19, 0x0

    return-object v19

    .line 183
    :cond_8
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string v9, "Step 4: \u89e3\u6790SAMLResponse..."

    invoke-static {v1, v9}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {v32 .. v32}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v9

    if-nez v9, :cond_a

    .line 187
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string/jumbo v2, "\u672a\u627e\u5230SAMLResponse\u8868\u5355\uff08\u767b\u5f55\u53ef\u80fd\u5931\u8d25\uff09"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3, v4}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 188
    const-string v0, ".alert, .error, .flash, [class*=error]"

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "text(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_9

    sget-object v2, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  \u9519\u8bef\u4fe1\u606f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 190
    :cond_9
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual/range {v32 .. v32}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    const/16 v19, 0x0

    return-object v19

    .line 196
    :cond_a
    sget-object v15, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    move-object/from16 v33, v1

    invoke-virtual/range {v32 .. v32}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v34, v2

    sget-object v2, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    move-object/from16 v35, v7

    invoke-virtual {v9, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$decodeHtmlEntities(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v1, v2}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$resolveUrl(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    sget-object v2, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  SAML\u56de\u8c03action: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 199
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 200
    const-string v7, "input[type=hidden]"

    invoke-virtual {v9, v7}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Iterable;

    .line 428
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/jsoup/nodes/Element;

    move-object/from16 v36, v7

    .line 201
    invoke-virtual {v15, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v37, v9

    move-object/from16 v9, v31

    .line 202
    invoke-virtual {v15, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    move-object/from16 v31, v7

    check-cast v31, Ljava/lang/CharSequence;

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->length()I

    move-result v31

    if-lez v31, :cond_b

    invoke-interface {v2, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    move-object/from16 v31, v9

    move-object/from16 v7, v36

    move-object/from16 v9, v37

    goto :goto_1

    :cond_c
    move-object/from16 v37, v9

    move-object/from16 v9, v31

    .line 205
    sget-object v7, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    move-object/from16 v31, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v13

    const-string v13, "  SAML\u8868\u5355\u5b57\u6bb5: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 208
    sget-object v6, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string v7, "Step 5: \u63d0\u4ea4SAMLResponse..."

    invoke-static {v6, v7}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 209
    sget-object v6, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-static {v6, v1, v2}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$executePost(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/util/Map;)Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;

    move-result-object v6

    .line 210
    sget-object v7, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v6}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getCode()I

    move-result v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v6}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getCode()I

    move-result v7

    const/16 v13, 0x12e

    if-eq v7, v13, :cond_d

    .line 213
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v6}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SAML\u56de\u8c03\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 214
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v6}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    const/16 v19, 0x0

    return-object v19

    .line 218
    :cond_d
    sget-object v7, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v6}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getLocation()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$decodeHtmlEntities(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 219
    sget-object v13, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const/16 v15, 0x64

    invoke-static {v7, v15}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v24, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v6

    const-string v6, "  \u56de\u8c03\u91cd\u5b9a\u5411: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 222
    sget-object v2, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string v6, "Step 6: \u83b7\u53d6\u6388\u6743\u786e\u8ba4\u9875\u9762..."

    invoke-static {v2, v6}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 223
    sget-object v2, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-static {v2, v1, v7}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$resolveUrl(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    sget-object v6, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-static {v6, v2}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$executeGet(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;

    move-result-object v6

    .line 225
    sget-object v13, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v6}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getCode()I

    move-result v15

    invoke-virtual {v6}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v40, v1

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v39, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ", \u54cd\u5e94\u957f\u5ea6: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {v39 .. v39}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getCode()I

    move-result v1

    const/16 v6, 0xc8

    if-eq v1, v6, :cond_e

    .line 228
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual/range {v39 .. v39}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6388\u6743\u786e\u8ba4\u9875\u9762\u83b7\u53d6\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v3

    .line 233
    :cond_e
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string v6, "Step 7: \u89e3\u6790Authorize\u8868\u5355..."

    invoke-static {v1, v6}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {v39 .. v39}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-string v5, "iterator(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "next(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 239
    const-string v6, "input[name=commit]"

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 240
    invoke-virtual {v6, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10

    :cond_f
    move-object/from16 v6, v30

    .line 241
    :cond_10
    const-string v13, "Authorize"

    const/4 v15, 0x1

    invoke-static {v6, v13, v15}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_12

    .line 242
    const-string/jumbo v13, "\u6388\u6743"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 243
    const-string v13, "Allow"

    invoke-static {v6, v13, v15}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_12

    .line 244
    const-string/jumbo v13, "\u540c\u610f"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    goto :goto_3

    :cond_11
    const/4 v13, 0x0

    goto :goto_4

    :cond_12
    :goto_3
    const/4 v13, 0x1

    .line 246
    :goto_4
    const-string v15, "Cancel"

    move-object/from16 v41, v1

    const/4 v1, 0x1

    invoke-static {v6, v15, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_14

    .line 247
    const-string/jumbo v15, "\u53d6\u6d88"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    .line 248
    const-string v15, "Deny"

    invoke-static {v6, v15, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_14

    .line 249
    const-string/jumbo v1, "\u62d2\u7edd"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_5

    :cond_13
    const/4 v1, 0x0

    goto :goto_6

    :cond_14
    :goto_5
    const/4 v1, 0x1

    :goto_6
    if-eqz v13, :cond_15

    if-nez v1, :cond_15

    .line 252
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  \u5339\u914d\u5230\u6388\u6743\u6309\u94ae: value="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    goto :goto_7

    :cond_15
    move-object/from16 v1, v41

    goto/16 :goto_2

    :cond_16
    move-object/from16 v41, v1

    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_17

    .line 258
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string/jumbo v1, "\u672a\u627e\u5230Authorize\u8868\u5355"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 259
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual/range {v41 .. v41}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual/range {v39 .. v39}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    const/16 v19, 0x0

    return-object v19

    .line 264
    :cond_17
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    sget-object v4, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v5, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$decodeHtmlEntities(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$resolveUrl(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    sget-object v3, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Authorize\u8868\u5355action: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 267
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 268
    invoke-virtual {v5, v0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    move-object/from16 v13, v36

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 430
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    move-object/from16 v6, v31

    .line 269
    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v4, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v13, "type"

    invoke-virtual {v4, v13}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "toLowerCase(...)"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    move-object v13, v10

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_18

    const-string v13, "checkbox"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18

    const-string/jumbo v13, "submit"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 273
    invoke-interface {v3, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    move-object/from16 v31, v6

    goto :goto_8

    .line 276
    :cond_19
    const-string v0, "commit"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 277
    const-string v0, "commit"

    const-string v4, "Authorize"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_1a
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Authorize\u8868\u5355\u5b57\u6bb5: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string v4, "Step 8: \u63d0\u4ea4Authorize\u8868\u5355..."

    invoke-static {v0, v4}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-static {v0, v1, v3}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$executePost(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/util/Map;)Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;

    move-result-object v0

    .line 284
    sget-object v4, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v0}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getCode()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getCode()I

    move-result v4

    const/16 v6, 0x12e

    if-eq v4, v6, :cond_1b

    .line 287
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v0}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authorize\u63d0\u4ea4\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 288
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v0}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f4

    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    const/16 v19, 0x0

    return-object v19

    .line 292
    :cond_1b
    invoke-virtual {v0}, Lcom/jichi/ob/api/WahooOAuth2Service$HttpResponse;->getLocation()Ljava/lang/String;

    move-result-object v4

    .line 293
    sget-object v6, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  \u6700\u7ec8\u91cd\u5b9a\u5411URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 296
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    move-object/from16 v8, v17

    check-cast v8, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    :try_start_9
    invoke-static {v6, v8, v9, v10, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    if-nez v6, :cond_1c

    .line 297
    :try_start_a
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string/jumbo v1, "\u91cd\u5b9a\u5411URL\u4e2d\u6ca1\u6709\u6388\u6743\u7801"

    invoke-static {v0, v1, v11, v10, v11}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    return-object v11

    .line 302
    :cond_1c
    :try_start_b
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v6}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1d

    move-object/from16 v14, v30

    goto :goto_9

    :cond_1d
    move-object v14, v6

    .line 304
    :goto_9
    move-object v8, v14

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v15, 0x1

    new-array v9, v15, [Ljava/lang/String;

    const-string v6, "&"

    const/16 v18, 0x0

    aput-object v6, v9, v18

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 432
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-object/from16 v10, v17

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    .line 304
    :try_start_c
    invoke-static {v9, v10, v11, v12, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v9, :cond_1e

    goto :goto_b

    :cond_1e
    move-object/from16 v17, v10

    goto :goto_a

    :catch_0
    move-object v11, v13

    goto :goto_c

    :cond_1f
    move-object/from16 v10, v17

    const/4 v8, 0x0

    :goto_b
    :try_start_d
    check-cast v8, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    if-eqz v8, :cond_20

    const/4 v11, 0x0

    const/4 v12, 0x2

    :try_start_e
    invoke-static {v8, v10, v11, v12, v11}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_d

    :cond_20
    const/4 v6, 0x0

    goto :goto_d

    :catch_1
    move-object/from16 v10, v17

    :catch_2
    const/4 v11, 0x0

    const/4 v12, 0x2

    .line 306
    :catch_3
    :goto_c
    :try_start_f
    invoke-static {v4, v10, v11, v12, v11}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "&"

    invoke-static {v6, v8, v11, v12, v11}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    :goto_d
    move-object/from16 v43, v6

    .line 309
    :try_start_10
    move-object/from16 v6, v43

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_28

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_21

    goto/16 :goto_11

    .line 314
    :cond_21
    sget-object v6, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  \u2705 \u6388\u6743\u7801\u83b7\u53d6\u6210\u529f\uff0c\u957f\u5ea6: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 317
    sget-object v6, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string v8, "Step 10: \u6362\u53d6access_token..."

    invoke-static {v6, v8}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$getCurrentCodeVerifier$p()Ljava/lang/String;

    move-result-object v46

    .line 319
    move-object/from16 v6, v46

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_27

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_22

    goto/16 :goto_10

    .line 324
    :cond_22
    new-instance v6, Lcom/jichi/ob/api/WahooApi;

    invoke-direct {v6}, Lcom/jichi/ob/api/WahooApi;-><init>()V

    .line 325
    new-instance v8, Lcom/jichi/ob/api/WahooOAuth2Service$login$2$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/jichi/ob/api/WahooOAuth2Service$login$2$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v6, v8}, Lcom/jichi/ob/api/WahooApi;->setDebugLogCallback(Lkotlin/jvm/functions/Function1;)V

    .line 326
    sget-object v8, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v8}, Lcom/jichi/ob/api/WahooApi$Companion;->getBUILTIN_CLIENT_ID()Ljava/lang/String;

    move-result-object v44

    sget-object v8, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v8}, Lcom/jichi/ob/api/WahooApi$Companion;->getBUILTIN_CLIENT_SECRET()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v47, p0

    check-cast v47, Lkotlin/coroutines/Continuation;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    move-object/from16 v15, p0

    :try_start_11
    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$0:Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$1:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$2:Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$3:Ljava/lang/Object;

    invoke-static/range {v25 .. v25}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$4:Ljava/lang/Object;

    invoke-static/range {v27 .. v27}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$5:Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$6:Ljava/lang/Object;

    invoke-static/range {v26 .. v26}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$7:Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$8:Ljava/lang/Object;

    invoke-static/range {v34 .. v34}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$9:Ljava/lang/Object;

    invoke-static/range {v35 .. v35}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$10:Ljava/lang/Object;

    invoke-static/range {v32 .. v32}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$11:Ljava/lang/Object;

    invoke-static/range {v33 .. v33}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$12:Ljava/lang/Object;

    invoke-static/range {v37 .. v37}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$13:Ljava/lang/Object;

    invoke-static/range {v40 .. v40}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$14:Ljava/lang/Object;

    invoke-static/range {v24 .. v24}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$15:Ljava/lang/Object;

    invoke-static/range {v38 .. v38}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$16:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$17:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$18:Ljava/lang/Object;

    invoke-static/range {v39 .. v39}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$19:Ljava/lang/Object;

    invoke-static/range {v41 .. v41}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$20:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$21:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$22:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$23:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$24:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$25:Ljava/lang/Object;

    invoke-static/range {v43 .. v43}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$26:Ljava/lang/Object;

    invoke-static/range {v46 .. v46}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$27:Ljava/lang/Object;

    iput-object v6, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->L$28:Ljava/lang/Object;

    move/from16 v0, v29

    iput v0, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->I$0:I

    const/4 v7, 0x1

    iput v7, v15, Lcom/jichi/ob/api/WahooOAuth2Service$login$2;->label:I

    move-object/from16 v42, v6

    invoke-virtual/range {v42 .. v47}, Lcom/jichi/ob/api/WahooApi;->exchangeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_23

    return-object v1

    .line 93
    :cond_23
    :goto_e
    check-cast v0, Lkotlin/Pair;

    .line 328
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$setCurrentCodeVerifier$p(Ljava/lang/String;)V

    if-nez v0, :cond_26

    .line 331
    invoke-virtual/range {v42 .. v42}, Lcom/jichi/ob/api/WahooApi;->getLastExchangeError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "\u672a\u77e5\u9519\u8bef"

    .line 332
    :cond_24
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "Too many unrevoked access tokens"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v2, v9, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 333
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string v1, "TOKEN_LIMIT_EXCEEDED"

    invoke-virtual {v0, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->setLastError(Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string v1, "Wahoo\u4ee4\u724c\u6570\u91cf\u8d85\u9650\uff1a\u8be5\u8d26\u53f7\u4e0b\u672a\u64a4\u9500token\u5df2\u8fbe10\u679a\u4e0a\u9650"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 335
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string/jumbo v1, "\ud83d\udccc \u89e3\u51b3\u65b9\u6cd5\uff1a\u6253\u5f00Wahoo\u5b98\u65b9App \u2192 \u8bbe\u7f6e(Settings) \u2192 \u5df2\u6388\u6743\u5e94\u7528(Authorized Apps) \u2192 \u627e\u5230\"\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB\" \u2192 \u70b9\u51fb\u64a4\u9500\u6388\u6743(Deauthorize) \u2192 \u56de\u5230\u672c\u5e94\u7528\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_f

    .line 337
    :cond_25
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-virtual {v1, v0}, Lcom/jichi/ob/api/WahooOAuth2Service;->setLastError(Ljava/lang/String;)V

    .line 338
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token\u6362\u53d6\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_f
    return-object v3

    .line 343
    :cond_26
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string/jumbo v2, "\u2705\u2705\u2705 Wahoo\u767b\u5f55\u6210\u529f!"

    invoke-static {v1, v2}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    move-object v7, v0

    goto :goto_14

    :catch_4
    move-exception v0

    goto :goto_12

    :cond_27
    :goto_10
    move-object/from16 v15, p0

    .line 320
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string v1, "PKCE code_verifier\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u6362\u53d6token"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v3

    :cond_28
    :goto_11
    move-object/from16 v15, p0

    .line 310
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string/jumbo v1, "\u6388\u6743\u7801\u63d0\u53d6\u5931\u8d25"
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_12
    invoke-static {v0, v1, v3, v2, v3}, Lcom/jichi/ob/api/WahooOAuth2Service;->logError$default(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    return-object v3

    :catch_5
    move-exception v0

    goto :goto_13

    :catch_6
    move-exception v0

    move-object/from16 v15, p0

    move-object v3, v11

    goto :goto_13

    :catch_7
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_12

    :catch_8
    move-exception v0

    move-object v15, v1

    :goto_12
    const/4 v3, 0x0

    .line 346
    :goto_13
    sget-object v1, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    const-string/jumbo v2, "\u767b\u5f55\u5f02\u5e38"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v1, v2, v4}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$logError(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v3

    :goto_14
    return-object v7
.end method

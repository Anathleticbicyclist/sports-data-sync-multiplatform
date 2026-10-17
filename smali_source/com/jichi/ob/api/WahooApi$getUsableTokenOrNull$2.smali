.class final Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WahooApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/WahooApi;->getUsableTokenOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nWahooApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WahooApi.kt\ncom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,458:1\n216#2,2:459\n*S KotlinDebug\n*F\n+ 1 WahooApi.kt\ncom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2\n*L\n200#1:459,2\n*E\n"
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
    c = "com.jichi.ob.api.WahooApi$getUsableTokenOrNull$2"
    f = "WahooApi.kt"
    i = {
        0x1,
        0x1,
        0x1,
        0x2
    }
    l = {
        0xc4,
        0xd0,
        0xd5
    }
    m = "invokeSuspend"
    n = {
        "testReq",
        "resp",
        "$i$a$-use-WahooApi$getUsableTokenOrNull$2$1",
        "e"
    }
    s = {
        "L$0",
        "L$2",
        "I$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $clientId:Ljava/lang/String;

.field final synthetic $clientSecret:Ljava/lang/String;

.field final synthetic $currentToken:Ljava/lang/String;

.field final synthetic $refreshToken:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/WahooApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/WahooApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$currentToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$refreshToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    iput-object p4, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$clientId:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$clientSecret:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final synthetic access$invokeSuspend$refreshAndVerify(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->invokeSuspend$refreshAndVerify(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$refreshAndVerify(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/WahooApi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;

    iget v1, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;

    invoke-direct {v0, p4}, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 190
    iget v2, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlin/Pair;

    iget-object p1, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/api/WahooApi;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$3:Ljava/lang/Object;

    move-object p3, p0

    check-cast p3, Ljava/lang/String;

    iget-object p0, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$2:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    iget-object p0, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    iget-object p0, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/jichi/ob/api/WahooApi;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p1, :cond_4

    .line 191
    const-string p4, ""

    goto :goto_1

    :cond_4
    move-object p4, p1

    :goto_1
    iput-object p0, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$1:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$2:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$3:Ljava/lang/Object;

    iput v5, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->label:I

    invoke-virtual {p0, p4, p2, p3, v0}, Lcom/jichi/ob/api/WahooApi;->refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    check-cast p4, Lkotlin/Pair;

    if-nez p4, :cond_6

    return-object v3

    .line 192
    :cond_6
    invoke-virtual {p4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$1:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$2:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$3:Ljava/lang/Object;

    iput-object p4, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->label:I

    invoke-virtual {p0, v2, v0}, Lcom/jichi/ob/api/WahooApi;->verifyToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    move-object v6, p4

    move-object p4, p0

    move-object p0, v6

    :goto_4
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    return-object p0

    :cond_8
    return-object v3
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

    new-instance v0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;

    iget-object v1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$currentToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$refreshToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    iget-object v4, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$clientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$clientSecret:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 188
    iget v1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "WahooApi"

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Response;

    iget-object v1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v3, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lokhttp3/Request;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$currentToken:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_7

    .line 199
    :cond_4
    :try_start_1
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "https://api.wahooligan.com/v1/user"

    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    iget-object v4, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$currentToken:Ljava/lang/String;

    .line 200
    invoke-static {v1, v4}, Lcom/jichi/ob/api/WahooApi;->access$authHeaders(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 459
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 200
    invoke-virtual {p1, v7, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 201
    :cond_5
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 202
    iget-object v1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    invoke-static {v1}, Lcom/jichi/ob/api/WahooApi;->access$getClient$p(Lcom/jichi/ob/api/WahooApi;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    iget-object v4, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$currentToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$refreshToken:Ljava/lang/String;

    iget-object v8, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    iget-object v9, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$clientId:Ljava/lang/String;

    iget-object v10, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$clientSecret:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v11, v1

    check-cast v11, Lokhttp3/Response;

    .line 203
    invoke-virtual {v11}, Lokhttp3/Response;->code()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_7

    .line 204
    const-string p1, "Wahoo\u5df2\u5b58token\u4ecd\u6709\u6548\uff0c\u76f4\u63a5\u590d\u7528"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_6

    .line 205
    const-string v7, ""

    :cond_6
    invoke-static {v4, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_3

    .line 206
    :cond_7
    move-object v4, v7

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    .line 207
    :cond_8
    invoke-virtual {v11}, Lokhttp3/Response;->code()I

    move-result v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Wahoo\u5df2\u5b58token\u8fc7\u671f(HTTP "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ")\uff0c\u5c1d\u8bd5refresh\u5237\u65b0..."

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->L$1:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->L$2:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->I$0:I

    iput v3, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->label:I

    invoke-static {v8, v7, v9, v10, p0}, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->invokeSuspend$refreshAndVerify(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    goto :goto_8

    :cond_9
    :goto_1
    check-cast p1, Lkotlin/Pair;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_a
    :goto_2
    move-object p1, v6

    .line 202
    :goto_3
    :try_start_3
    invoke-static {v1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    :goto_4
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 212
    const-string v1, "getUsableTokenOrNull\u5f02\u5e38"

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v5, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    iget-object v1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$refreshToken:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    iget-object v3, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$refreshToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$clientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$clientSecret:Ljava/lang/String;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->label:I

    invoke-static {v1, v3, v4, v5, v7}, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->invokeSuspend$refreshAndVerify(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    goto :goto_8

    :cond_c
    :goto_5
    move-object v6, p1

    check-cast v6, Lkotlin/Pair;

    :cond_d
    :goto_6
    return-object v6

    .line 195
    :cond_e
    :goto_7
    iget-object p1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$refreshToken:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_9

    .line 196
    :cond_f
    iget-object p1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->this$0:Lcom/jichi/ob/api/WahooApi;

    iget-object v1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$refreshToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->$clientSecret:Ljava/lang/String;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->label:I

    invoke-static {p1, v1, v2, v3, v5}, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->invokeSuspend$refreshAndVerify(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    :goto_8
    return-object v0

    :cond_10
    return-object p1

    :cond_11
    :goto_9
    return-object v6
.end method

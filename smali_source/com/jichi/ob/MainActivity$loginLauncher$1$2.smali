.class final Lcom/jichi/ob/MainActivity$loginLauncher$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;-><init>()V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.MainActivity$loginLauncher$1$2"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x10a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $clientId:Ljava/lang/String;

.field final synthetic $clientSecret:Ljava/lang/String;

.field final synthetic $code:Ljava/lang/String;

.field final synthetic $subKey:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$jHYCrr3J_V3IJAHOYw9Wj3BhkPo(Lcom/jichi/ob/api/SuuntoApi$LoginResult;Lcom/jichi/ob/MainActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->invokeSuspend$lambda$0(Lcom/jichi/ob/api/SuuntoApi$LoginResult;Lcom/jichi/ob/MainActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/MainActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$loginLauncher$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->$code:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->$clientId:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->$clientSecret:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->$subKey:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/jichi/ob/api/SuuntoApi$LoginResult;Lcom/jichi/ob/MainActivity;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 269
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v1

    const-string v2, "prefs"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/jichi/ob/api/SuuntoApi$LoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jichi/ob/util/PrefsManager;->saveSuuntoToken(Ljava/lang/String;)V

    .line 270
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/jichi/ob/api/SuuntoApi$LoginResult;->getRefreshToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/jichi/ob/util/PrefsManager;->saveSuuntoRefresh(Ljava/lang/String;)V

    .line 271
    const-string/jumbo p0, "\u2705 \u677e\u62d3\u767b\u5f55\u6210\u529f"

    invoke-static {p1, p0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    sget-object p0, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    invoke-static {p1, p0}, Lcom/jichi/ob/MainActivity;->access$fetchUsernameAfterLogin(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;)V

    goto :goto_0

    .line 272
    :cond_2
    const-string/jumbo p0, "\u26a0\ufe0f \u677e\u62d3token\u6362\u53d6\u5931\u8d25"

    invoke-static {p1, p0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 273
    :goto_0
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getLoginFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/LoginFragment;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "loginFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Lcom/jichi/ob/ui/LoginFragment;->updateStatus()V

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

    new-instance v0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->$code:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->$clientId:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->$clientSecret:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->$subKey:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;-><init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 265
    iget v1, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 266
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getSuuntoApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/SuuntoApi;

    move-result-object p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "suuntoApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    move-object v3, p1

    iget-object v4, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->$code:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->$clientId:Ljava/lang/String;

    iget-object v6, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->$clientSecret:Ljava/lang/String;

    iget-object v7, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->$subKey:Ljava/lang/String;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->label:I

    invoke-virtual/range {v3 .. v8}, Lcom/jichi/ob/api/SuuntoApi;->exchangeCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 265
    :cond_3
    :goto_0
    check-cast p1, Lcom/jichi/ob/api/SuuntoApi$LoginResult;

    .line 267
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v1, Lcom/jichi/ob/MainActivity$loginLauncher$1$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/jichi/ob/MainActivity$loginLauncher$1$2$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/api/SuuntoApi$LoginResult;Lcom/jichi/ob/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 275
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

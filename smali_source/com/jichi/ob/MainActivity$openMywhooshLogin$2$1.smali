.class final Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->openMywhooshLogin$app_devRelease()V
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
    c = "com.jichi.ob.MainActivity$openMywhooshLogin$2$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x40c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $account:Ljava/lang/String;

.field final synthetic $password:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$fbBT2LrW5nKq8MEIWo3R9Nuc_-A(Lcom/jichi/ob/api/MyWhooshApi$LoginResult;Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->invokeSuspend$lambda$0(Lcom/jichi/ob/api/MyWhooshApi$LoginResult;Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/MainActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->$password:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/jichi/ob/api/MyWhooshApi$LoginResult;Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1039
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v1

    const-string v2, "prefs"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/jichi/ob/api/MyWhooshApi$LoginResult;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jichi/ob/util/PrefsManager;->saveMywhooshToken(Ljava/lang/String;)V

    .line 1040
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/jichi/ob/api/MyWhooshApi$LoginResult;->getWhooshId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jichi/ob/util/PrefsManager;->saveMywhooshWhooshId(Ljava/lang/String;)V

    .line 1041
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/jichi/ob/api/MyWhooshApi$LoginResult;->getRefreshToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/jichi/ob/util/PrefsManager;->saveMywhooshRefreshToken(Ljava/lang/String;)V

    .line 1042
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/jichi/ob/util/PrefsManager;->saveMywhooshPassword(Ljava/lang/String;)V

    .line 1043
    const-string/jumbo p0, "\u2705 MyWhoosh\u767b\u5f55\u6210\u529f\uff08\u5df2\u8bb0\u4f4f\u8d26\u53f7\uff0c\u8fc7\u671f\u81ea\u52a8\u91cd\u767b\uff09"

    invoke-static {p1, p0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 1044
    sget-object p0, Lcom/jichi/ob/model/DataSource;->MYWHOOSH:Lcom/jichi/ob/model/DataSource;

    invoke-static {p1, p0}, Lcom/jichi/ob/MainActivity;->access$fetchUsernameAfterLogin(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;)V

    goto :goto_0

    .line 1046
    :cond_4
    const-string/jumbo p0, "\u274c MyWhoosh\u767b\u5f55\u5931\u8d25\uff1a\u8d26\u53f7\u6216\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-static {p1, p0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 1048
    :goto_0
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getLoginFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/LoginFragment;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, "loginFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_5
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginFragment;->updateStatus()V

    .line 1049
    :try_start_0
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getSettingsFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/SyncSettingsFragment;

    move-result-object p0

    if-nez p0, :cond_6

    const-string/jumbo p0, "settingsFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Lcom/jichi/ob/ui/SyncSettingsFragment;->refreshLoginState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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

    new-instance p1, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->$account:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->$password:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;-><init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1035
    iget v1, p0, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->label:I

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

    .line 1036
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getMywhooshApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/MyWhooshApi;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "mywhooshApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    iget-object v1, p0, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->$password:Ljava/lang/String;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->label:I

    invoke-virtual {p1, v1, v3, v4}, Lcom/jichi/ob/api/MyWhooshApi;->login(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 1035
    :cond_3
    :goto_0
    check-cast p1, Lcom/jichi/ob/api/MyWhooshApi$LoginResult;

    .line 1037
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1;->$password:Ljava/lang/String;

    new-instance v2, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0, v1}, Lcom/jichi/ob/MainActivity$openMywhooshLogin$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/api/MyWhooshApi$LoginResult;Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1051
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

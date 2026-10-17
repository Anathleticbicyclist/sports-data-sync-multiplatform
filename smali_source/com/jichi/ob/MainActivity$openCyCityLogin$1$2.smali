.class final Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->openCyCityLogin$app_devRelease()V
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
    c = "com.jichi.ob.MainActivity$openCyCityLogin$1$2"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x3d5
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $btnLogin:Landroid/widget/Button;

.field final synthetic $cycityDlg:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $password:Ljava/lang/String;

.field final synthetic $phone:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$VgtJOsOdkQI4SuZGha8EZthJ7cE(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->invokeSuspend$lambda$1$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p2ebN-Pq_dRvPzhPWHsV2TU5yCI(Lcom/jichi/ob/api/CyCityApi$LoginResult;Lcom/jichi/ob/MainActivity;Ljava/lang/String;Landroid/widget/Button;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->invokeSuspend$lambda$1(Lcom/jichi/ob/api/CyCityApi$LoginResult;Lcom/jichi/ob/MainActivity;Ljava/lang/String;Landroid/widget/Button;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/MainActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/widget/Button;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/app/AlertDialog;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->$phone:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->$btnLogin:Landroid/widget/Button;

    iput-object p5, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->$cycityDlg:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lcom/jichi/ob/api/CyCityApi$LoginResult;Lcom/jichi/ob/MainActivity;Ljava/lang/String;Landroid/widget/Button;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 984
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v1

    const-string v2, "prefs"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/jichi/ob/api/CyCityApi$LoginResult;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jichi/ob/util/PrefsManager;->saveCyCityToken(Ljava/lang/String;)V

    .line 985
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_1
    invoke-virtual {v1, p2}, Lcom/jichi/ob/util/PrefsManager;->saveCyCityPassword(Ljava/lang/String;)V

    .line 986
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_2
    sget-object v1, Lcom/jichi/ob/model/DataSource;->CYCITY:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {p0}, Lcom/jichi/ob/api/CyCityApi$LoginResult;->getNickname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Lcom/jichi/ob/util/PrefsManager;->saveUsername(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)V

    .line 987
    const-string/jumbo p0, "\u2705 CyCity\u767b\u5f55\u6210\u529f\uff08\u5df2\u8bb0\u4f4f\u8d26\u53f7\uff0c\u8fc7\u671f\u81ea\u52a8\u91cd\u767b\uff09"

    invoke-static {p1, p0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 988
    sget-object p0, Lcom/jichi/ob/model/DataSource;->CYCITY:Lcom/jichi/ob/model/DataSource;

    invoke-static {p1, p0}, Lcom/jichi/ob/MainActivity;->access$fetchUsernameAfterLogin(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;)V

    .line 989
    new-instance p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2$$ExternalSyntheticLambda1;

    invoke-direct {p0, p4}, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, p0}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 991
    :cond_3
    const-string/jumbo p0, "\u274c CyCity\u767b\u5f55\u5931\u8d25\uff1a\u8d26\u53f7\u6216\u5bc6\u7801\u9519\u8bef"

    invoke-static {p1, p0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    .line 993
    invoke-virtual {p3, p0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 994
    const-string/jumbo p0, "\u767b\u5f55"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 995
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getLoginFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/LoginFragment;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "loginFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_4
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginFragment;->updateStatus()V

    .line 996
    :try_start_0
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getSettingsFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/SyncSettingsFragment;

    move-result-object p0

    if-nez p0, :cond_5

    const-string/jumbo p0, "settingsFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Lcom/jichi/ob/ui/SyncSettingsFragment;->refreshLoginState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final invokeSuspend$lambda$1$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 989
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string p0, "cycityDlg"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/app/AlertDialog;

    :goto_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

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

    new-instance v0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->$phone:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->$password:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->$btnLogin:Landroid/widget/Button;

    iget-object v5, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->$cycityDlg:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;-><init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 980
    iget v1, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->label:I

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

    .line 981
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getCycityApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/CyCityApi;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "cycityApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    iget-object v1, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->$phone:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->$password:Ljava/lang/String;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->label:I

    invoke-virtual {p1, v1, v3, v4}, Lcom/jichi/ob/api/CyCityApi;->login(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 980
    :cond_3
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/jichi/ob/api/CyCityApi$LoginResult;

    .line 982
    iget-object v2, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->$password:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->$btnLogin:Landroid/widget/Button;

    iget-object v5, p0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2;->$cycityDlg:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v0, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2$$ExternalSyntheticLambda0;

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/MainActivity$openCyCityLogin$1$2$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/api/CyCityApi$LoginResult;Lcom/jichi/ob/MainActivity;Ljava/lang/String;Landroid/widget/Button;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v2, v0}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 998
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

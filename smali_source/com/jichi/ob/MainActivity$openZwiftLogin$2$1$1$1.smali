.class final Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.jichi.ob.MainActivity$openZwiftLogin$2$1$1$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x44a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $result:Lcom/jichi/ob/api/ZwiftApi$LoginResult;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$fnL5zlMEXq77yjzQcV_jH7W-T_c(Ljava/lang/String;Lcom/jichi/ob/MainActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;->invokeSuspend$lambda$0(Ljava/lang/String;Lcom/jichi/ob/MainActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/api/ZwiftApi$LoginResult;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/MainActivity;",
            "Lcom/jichi/ob/api/ZwiftApi$LoginResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;->$result:Lcom/jichi/ob/api/ZwiftApi$LoginResult;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Ljava/lang/String;Lcom/jichi/ob/MainActivity;)V
    .locals 2

    .line 1100
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "prefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p0}, Lcom/jichi/ob/util/PrefsManager;->saveZwiftPlayerId(Ljava/lang/String;)V

    .line 1101
    :cond_2
    :goto_0
    const-string/jumbo p0, "\u2705 Zwift\u767b\u5f55\u6210\u529f"

    invoke-static {p1, p0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 1102
    sget-object p0, Lcom/jichi/ob/model/DataSource;->ZWIFT:Lcom/jichi/ob/model/DataSource;

    invoke-static {p1, p0}, Lcom/jichi/ob/MainActivity;->access$fetchUsernameAfterLogin(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;)V

    .line 1103
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getLoginFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/LoginFragment;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "loginFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginFragment;->updateStatus()V

    .line 1104
    :try_start_0
    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getSettingsFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/SyncSettingsFragment;

    move-result-object p0

    if-nez p0, :cond_4

    const-string/jumbo p0, "settingsFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Lcom/jichi/ob/ui/SyncSettingsFragment;->refreshLoginState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
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

    new-instance p1, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;->$result:Lcom/jichi/ob/api/ZwiftApi$LoginResult;

    invoke-direct {p1, v0, v1, p2}, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;-><init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/api/ZwiftApi$LoginResult;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1097
    iget v1, p0, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;->label:I

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

    .line 1098
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getZwiftApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/ZwiftApi;

    move-result-object p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "zwiftApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    iget-object v1, p0, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;->$result:Lcom/jichi/ob/api/ZwiftApi$LoginResult;

    invoke-virtual {v1}, Lcom/jichi/ob/api/ZwiftApi$LoginResult;->getToken()Ljava/lang/String;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;->label:I

    invoke-virtual {p1, v1, v3}, Lcom/jichi/ob/api/ZwiftApi;->getProfileId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 1097
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 1099
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v1, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/jichi/ob/MainActivity$openZwiftLogin$2$1$1$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/jichi/ob/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1106
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

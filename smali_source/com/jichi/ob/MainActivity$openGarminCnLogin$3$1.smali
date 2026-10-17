.class final Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->openGarminCnLogin$app_devRelease()V
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
    c = "com.jichi.ob.MainActivity$openGarminCnLogin$3$1"
    f = "MainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $dialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic $email:Ljava/lang/String;

.field final synthetic $password:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$9xFXVY0aaOODCHvqYhqcZX5A4v8(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->invokeSuspend$lambda$1(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AZ37nAXS5eKYgy6q9YZ8GsqLthI(Lcom/jichi/ob/MainActivity;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->invokeSuspend$lambda$2(Lcom/jichi/ob/MainActivity;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$JKzVhqFkmkjT1nnwArVhI6mx2ko(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->invokeSuspend$lambda$3(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/MainActivity;Landroidx/appcompat/app/AlertDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/MainActivity;",
            "Landroidx/appcompat/app/AlertDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$email:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$password:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p4, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$dialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V
    .locals 3

    .line 814
    invoke-static {p0}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v0

    const-string v1, "prefs"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, p1}, Lcom/jichi/ob/util/PrefsManager;->saveGarminCnToken(Ljava/lang/String;)V

    .line 815
    invoke-static {p0}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/jichi/ob/util/PrefsManager;->saveGarminCnCookie(Ljava/lang/String;)V

    .line 816
    invoke-static {p0}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/jichi/ob/util/PrefsManager;->saveGarminCnCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string/jumbo p1, "\u2705 \u4f73\u660e\u4e2d\u56fd\u767b\u5f55\u6210\u529f\uff08\u5df2\u8bb0\u4f4f\u8d26\u53f7\uff0c\u8fc7\u671f\u81ea\u52a8\u91cd\u767b\uff09"

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 818
    sget-object p1, Lcom/jichi/ob/util/GarminLoginHint;->INSTANCE:Lcom/jichi/ob/util/GarminLoginHint;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    const-string/jumbo p3, "\u4f73\u660e\u4e2d\u56fd"

    invoke-virtual {p1, p2, p3}, Lcom/jichi/ob/util/GarminLoginHint;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 819
    sget-object p1, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity;->access$fetchUsernameAfterLogin(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;)V

    .line 820
    invoke-static {p0}, Lcom/jichi/ob/MainActivity;->access$getLoginFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/LoginFragment;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "loginFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/jichi/ob/ui/LoginFragment;->updateStatus()V

    .line 821
    invoke-virtual {p4}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private static final invokeSuspend$lambda$2(Lcom/jichi/ob/MainActivity;J)V
    .locals 2

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u274c \u4f73\u660e\u4e2d\u56fd\u89e6\u53d1\u98ce\u63a7\u9650\u6d41(429)\uff0c\u7ea6"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5206\u949f\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 830
    invoke-static {p0}, Lcom/jichi/ob/MainActivity;->access$getLoginFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/LoginFragment;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "loginFragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/LoginFragment;->updateStatus()V

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u89e6\u53d1\u98ce\u63a7\u9650\u6d41(429)\uff0c\u8be5\u8d26\u53f7\u8bf7\u7ea6"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "\u5206\u949f\u540e\u91cd\u8bd5\u3002"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "\u4f73\u660e\u4e2d\u56fd"

    invoke-static {p0, p2, p1}, Lcom/jichi/ob/MainActivity;->access$showGarminLoginFailDialog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$3(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V
    .locals 5

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u274c \u4f73\u660e\u4e2d\u56fd\u767b\u5f55\u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 836
    invoke-static {p0}, Lcom/jichi/ob/MainActivity;->access$getLoginFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/LoginFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "loginFragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/LoginFragment;->updateStatus()V

    .line 838
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "401"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo p1, "\u8d26\u53f7\u6216\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u8bd5\u3002"

    goto :goto_1

    .line 839
    :cond_1
    const-string v2, "MFA"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v3, v4, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "two"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v3, v4, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "verify"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v3, v4, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 841
    :cond_2
    const-string v2, "captcha"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v3, v4, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p1, "\u89e6\u53d1\u4eba\u673a\u9a8c\u8bc1\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    goto :goto_1

    .line 842
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u767b\u5f55\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 840
    :cond_4
    :goto_0
    const-string/jumbo p1, "\u8be5\u8d26\u53f7\u5f00\u542f\u4e86\u4e24\u6b65\u9a8c\u8bc1\uff0c\u8bf7\u5148\u5173\u95ed\u540e\u518d\u767b\u5f55\u3002"

    .line 844
    :goto_1
    const-string/jumbo v0, "\u4f73\u660e\u4e2d\u56fd"

    invoke-static {p0, v0, p1}, Lcom/jichi/ob/MainActivity;->access$showGarminLoginFailDialog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance v0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$email:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v4, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$dialog:Landroidx/appcompat/app/AlertDialog;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/MainActivity;Landroidx/appcompat/app/AlertDialog;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string v1, "GCM_ANDROID_DARK"

    const-string v2, ""

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 801
    iget v0, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 803
    :try_start_0
    sget-object p1, Lcom/jichi/ob/api/GarminOAuthHelper;->INSTANCE:Lcom/jichi/ob/api/GarminOAuthHelper;

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$email:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$password:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/jichi/ob/api/GarminOAuthHelper;->loginWithCredentialsCn(Ljava/lang/String;Ljava/lang/String;)Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;

    move-result-object p1

    .line 804
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$email:Ljava/lang/String;

    .line 805
    const-string v4, "di_token"

    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 806
    const-string v4, "di_refresh_token"

    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 807
    const-string p1, "di_client_id"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 808
    const-string p1, "jwt_web"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 809
    const-string p1, "session"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 810
    const-string p1, "csrf"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 811
    const-string p1, "email"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 812
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo p1, "toString(...)"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    iget-object v5, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v7, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$email:Ljava/lang/String;

    iget-object v8, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$password:Ljava/lang/String;

    iget-object v9, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$dialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v4, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1$$ExternalSyntheticLambda0;

    invoke-direct/range {v4 .. v9}, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v5, v4}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 824
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 825
    :goto_0
    move-object p1, v2

    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "429"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rate limit"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\u9650\u6d41"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 834
    :cond_1
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, v2}, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 826
    :cond_2
    :goto_1
    sget-object p1, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    sget-object v0, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$email:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcom/jichi/ob/api/GarminApi$Companion;->writeCooldownFor(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    sget-object p1, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    sget-object v0, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->$email:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownRemainMinutes(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 828
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v2, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v0, v1}, Lcom/jichi/ob/MainActivity$openGarminCnLogin$3$1$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/ob/MainActivity;J)V

    invoke-virtual {p1, v2}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 848
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 801
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

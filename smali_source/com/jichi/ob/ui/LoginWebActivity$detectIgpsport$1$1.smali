.class final Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginWebActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/LoginWebActivity;->detectIgpsport()V
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
    c = "com.jichi.ob.ui.LoginWebActivity$detectIgpsport$1$1"
    f = "LoginWebActivity.kt"
    i = {}
    l = {
        0x62a,
        0x62b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $isIntl:Z

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/LoginWebActivity;


# direct methods
.method public static synthetic $r8$lambda$1VBaLay7HqwkLrV4nExnkabeKGQ(Ljava/lang/String;Ljava/lang/String;ZLcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->invokeSuspend$lambda$3(Ljava/lang/String;Ljava/lang/String;ZLcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6-hgu-Yd3IS8RLIlz1NV6vqiwek(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->invokeSuspend$lambda$3$lambda$2$lambda$1(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F-XBxpNn25cg99U9I0XxpIFDIvY(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->invokeSuspend$lambda$3$lambda$2(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_-_w_TgFbyw0_I0Ai-x6W3sl04s(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->invokeSuspend$lambda$3$lambda$2$lambda$1$lambda$0(Lcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/ui/LoginWebActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->$isIntl:Z

    iput-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$3(Ljava/lang/String;Ljava/lang/String;ZLcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 4

    const/4 v0, 0x1

    .line 1582
    const-string v1, "LoginWeb"

    if-eqz p0, :cond_0

    .line 1583
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u2705 iGPSPORT token\u6709\u6548 len="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " intl="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    invoke-static {p3, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$setDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;Z)V

    .line 1585
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 1586
    const-string p2, "***"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 1587
    const-string p1, "login_type"

    invoke-static {p3}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getLoginType$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, -0x1

    .line 1585
    invoke-virtual {p3, p1, p0}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1588
    invoke-virtual {p3}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void

    .line 1591
    :cond_0
    invoke-static {p3}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getIgpReloadCount$p(Lcom/jichi/ob/ui/LoginWebActivity;)I

    move-result p0

    const/4 p1, 0x2

    if-ge p0, p1, :cond_2

    .line 1592
    invoke-static {p3}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getIgpReloadCount$p(Lcom/jichi/ob/ui/LoginWebActivity;)I

    move-result p0

    add-int/2addr p0, v0

    invoke-static {p3, p0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$setIgpReloadCount$p(Lcom/jichi/ob/ui/LoginWebActivity;I)V

    .line 1593
    invoke-static {p3}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getIgpReloadCount$p(Lcom/jichi/ob/ui/LoginWebActivity;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[igp] token\u65e0\u6548(\u7b2c"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "\u6b21)\uff0c\u6e05\u7f13\u5b58\u91cd\u8f7d\u767b\u5f55\u9875"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    invoke-static {p3}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getWebView$p(Lcom/jichi/ob/ui/LoginWebActivity;)Landroid/webkit/WebView;

    move-result-object p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "webView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    new-instance p1, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1$$ExternalSyntheticLambda2;

    invoke-direct {p1, p3}, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    const-string p2, "localStorage.clear();"

    invoke-virtual {p0, p2, p1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 1601
    :cond_2
    const-string p0, "[igp] token\u591a\u6b21\u6821\u9a8c\u65e0\u6548\uff0c\u653e\u5f03\u767b\u5f55"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    invoke-static {p3, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$setDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;Z)V

    const/4 p0, 0x0

    .line 1603
    invoke-virtual {p3, p0}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(I)V

    .line 1604
    invoke-virtual {p3}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void
.end method

.method private static final invokeSuspend$lambda$3$lambda$2(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 1

    .line 1596
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$3$lambda$2$lambda$1(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/Boolean;)V
    .locals 3

    .line 1597
    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getWebView$p(Lcom/jichi/ob/ui/LoginWebActivity;)Landroid/webkit/WebView;

    move-result-object p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "webView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1$$ExternalSyntheticLambda3;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final invokeSuspend$lambda$3$lambda$2$lambda$1$lambda$0(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    .line 1597
    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getWebView$p(Lcom/jichi/ob/ui/LoginWebActivity;)Landroid/webkit/WebView;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "webView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

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

    new-instance p1, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;

    iget-boolean v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->$isIntl:Z

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->$token:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;-><init>(ZLjava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1576
    iget v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1578
    :try_start_2
    iget-boolean p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->$isIntl:Z

    if-eqz p1, :cond_4

    new-instance p1, Lcom/jichi/ob/api/IgpsportApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/IgpsportApi;-><init>()V

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->$token:Ljava/lang/String;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->label:I

    invoke-virtual {p1, v1, v3, v2}, Lcom/jichi/ob/api/IgpsportApi;->getUsername(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    goto :goto_3

    .line 1579
    :cond_4
    new-instance v1, Lcom/jichi/ob/api/IgpsportApi;

    invoke-direct {v1}, Lcom/jichi/ob/api/IgpsportApi;-><init>()V

    move p1, v2

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->$token:Ljava/lang/String;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/jichi/ob/api/IgpsportApi;->getUsername$default(Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    const/4 p1, 0x0

    .line 1581
    :goto_3
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->$token:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;->$isIntl:Z

    new-instance v3, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v1, v2, v0}, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v0, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1608
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

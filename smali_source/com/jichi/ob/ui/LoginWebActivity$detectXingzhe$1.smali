.class final Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginWebActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/LoginWebActivity;->detectXingzhe()V
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
    c = "com.jichi.ob.ui.LoginWebActivity$detectXingzhe$1"
    f = "LoginWebActivity.kt"
    i = {}
    l = {
        0x65e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $all:Ljava/lang/String;

.field final synthetic $sessionId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/LoginWebActivity;


# direct methods
.method public static synthetic $r8$lambda$5b2yGEgAOpOw2suExlJ4J3Is59g(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->invokeSuspend$lambda$0(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/ui/LoginWebActivity;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->$sessionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iput-object p3, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->$all:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1632
    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getVerifying$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    .line 1633
    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1634
    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$setDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;Z)V

    .line 1635
    const-string p1, "csrftoken"

    invoke-static {p0, p2, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$extractCookieValue(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    .line 1636
    invoke-static {p1, p2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2705 \u884c\u8005\u767b\u5f55\u6210\u529f, csrf="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LoginWeb"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 1638
    const-string v0, "session_id"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 1639
    const-string p3, "extra"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1640
    const-string p2, "login_type"

    const-string/jumbo p3, "xingzhe"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    .line 1637
    invoke-virtual {p0, p2, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1641
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    :cond_0
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

    new-instance p1, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;

    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->$sessionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->$all:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;-><init>(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1629
    iget v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1630
    :try_start_1
    new-instance p1, Lcom/jichi/ob/api/XingzheApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/XingzheApi;-><init>()V

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->$sessionId:Ljava/lang/String;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->label:I

    invoke-virtual {p1, v1, v3}, Lcom/jichi/ob/api/XingzheApi;->verifySession(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 1631
    :goto_1
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->$all:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;->$sessionId:Ljava/lang/String;

    new-instance v3, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p1, v1, v2}, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1644
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

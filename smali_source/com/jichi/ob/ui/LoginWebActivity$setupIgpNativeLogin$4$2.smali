.class final Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginWebActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/LoginWebActivity;->setupIgpNativeLogin()V
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
    c = "com.jichi.ob.ui.LoginWebActivity$setupIgpNativeLogin$4$2"
    f = "LoginWebActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $btnLogin:Lcom/google/android/material/button/MaterialButton;

.field final synthetic $code:Ljava/lang/String;

.field final synthetic $phone:Ljava/lang/String;

.field final synthetic $tvStatus:Landroid/widget/TextView;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/LoginWebActivity;


# direct methods
.method public static synthetic $r8$lambda$udfv3PVs6cEyJXIoNCvw26GApCQ(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->invokeSuspend$lambda$0(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/ui/LoginWebActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/material/button/MaterialButton;",
            "Landroid/widget/TextView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iput-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->$phone:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->$code:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->$btnLogin:Lcom/google/android/material/button/MaterialButton;

    iput-object p5, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->$tvStatus:Landroid/widget/TextView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 778
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2705 iGPSPORT \u539f\u751f\u9a8c\u8bc1\u7801\u767b\u5f55\u6210\u529f len="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LoginWeb"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :try_start_0
    new-instance p2, Lcom/jichi/ob/util/PrefsManager;

    move-object p3, p1

    check-cast p3, Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p0}, Lcom/jichi/ob/util/PrefsManager;->saveIgpsportToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    :catch_0
    invoke-static {p1, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$setDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;Z)V

    .line 781
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 782
    const-string p3, "***"

    invoke-virtual {p2, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 783
    const-string p2, "login_type"

    const-string p3, "igpsport"

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 p2, -0x1

    .line 781
    invoke-virtual {p1, p2, p0}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 784
    invoke-virtual {p1}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void

    .line 786
    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 787
    const-string/jumbo p0, "\u767b\u5f55"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 788
    const-string/jumbo p0, "\u274c \u767b\u5f55\u5931\u8d25\uff1a\u9a8c\u8bc1\u7801\u9519\u8bef\u6216\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u83b7\u53d6\u540e\u91cd\u8bd5"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->$phone:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->$code:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->$btnLogin:Lcom/google/android/material/button/MaterialButton;

    iget-object v5, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->$tvStatus:Landroid/widget/TextView;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 774
    iget v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 775
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->$phone:Ljava/lang/String;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->$code:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$loginIgpBySms(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 776
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->$btnLogin:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;->$tvStatus:Landroid/widget/TextView;

    new-instance v3, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 791
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 774
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

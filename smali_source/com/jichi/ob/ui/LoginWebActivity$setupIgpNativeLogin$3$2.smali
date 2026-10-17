.class final Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;
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
    c = "com.jichi.ob.ui.LoginWebActivity$setupIgpNativeLogin$3$2"
    f = "LoginWebActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $btnSend:Lcom/google/android/material/button/MaterialButton;

.field final synthetic $phone:Ljava/lang/String;

.field final synthetic $tvStatus:Landroid/widget/TextView;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/LoginWebActivity;


# direct methods
.method public static synthetic $r8$lambda$M0uIht4TrHdvD5tV687DBskdC4w(ZLandroid/widget/TextView;Lcom/jichi/ob/ui/LoginWebActivity;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->invokeSuspend$lambda$0(ZLandroid/widget/TextView;Lcom/jichi/ob/ui/LoginWebActivity;Lcom/google/android/material/button/MaterialButton;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/ui/LoginWebActivity;",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            "Lcom/google/android/material/button/MaterialButton;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iput-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->$phone:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->$tvStatus:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->$btnSend:Lcom/google/android/material/button/MaterialButton;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(ZLandroid/widget/TextView;Lcom/jichi/ob/ui/LoginWebActivity;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 755
    const-string/jumbo p0, "\u2705 \u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\uff0c\u8bf7\u67e5\u770b\u624b\u673a\u77ed\u4fe1"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, p3}, Lcom/jichi/ob/ui/LoginWebActivity;->access$startIgpCountdown(Lcom/jichi/ob/ui/LoginWebActivity;Lcom/google/android/material/button/MaterialButton;)V

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 758
    invoke-virtual {p3, p0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 759
    const-string/jumbo p0, "\u274c \u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff08\u6ce8\u610f\u53d1\u9001\u9891\u7387\u9650\u5236\uff0c\u52ff\u9891\u7e41\u70b9\u51fb\uff09"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->$phone:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->$tvStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->$btnSend:Lcom/google/android/material/button/MaterialButton;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 751
    iget v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 752
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->$phone:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$sendIgpSmsCode(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)Z

    move-result p1

    .line 753
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->$tvStatus:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;->$btnSend:Lcom/google/android/material/button/MaterialButton;

    new-instance v3, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v1, v0, v2}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2$$ExternalSyntheticLambda0;-><init>(ZLandroid/widget/TextView;Lcom/jichi/ob/ui/LoginWebActivity;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v0, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 762
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 751
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

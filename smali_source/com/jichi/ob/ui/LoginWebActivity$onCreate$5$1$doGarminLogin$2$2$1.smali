.class final Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginWebActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->invokeSuspend$doGarminLogin(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.ui.LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1"
    f = "LoginWebActivity.kt"
    i = {}
    l = {
        0x193
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $btnLogin:Lcom/google/android/material/button/MaterialButton;

.field final synthetic $dsCooldown:Lcom/jichi/ob/model/DataSource;

.field final synthetic $email:Ljava/lang/String;

.field final synthetic $garminApi:Lcom/jichi/ob/api/GarminApi;

.field final synthetic $isCN:Z

.field final synthetic $password:Ljava/lang/String;

.field final synthetic $tvStatus:Landroid/widget/TextView;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/LoginWebActivity;


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/GarminApi;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lcom/jichi/ob/ui/LoginWebActivity;",
            "Landroid/widget/TextView;",
            "Lcom/google/android/material/button/MaterialButton;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$isCN:Z

    iput-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$garminApi:Lcom/jichi/ob/api/GarminApi;

    iput-object p4, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$dsCooldown:Lcom/jichi/ob/model/DataSource;

    iput-object p6, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iput-object p7, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$tvStatus:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$btnLogin:Lcom/google/android/material/button/MaterialButton;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;

    iget-boolean v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$isCN:Z

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$email:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$garminApi:Lcom/jichi/ob/api/GarminApi;

    iget-object v4, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$password:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$dsCooldown:Lcom/jichi/ob/model/DataSource;

    iget-object v6, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v7, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$tvStatus:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$btnLogin:Lcom/google/android/material/button/MaterialButton;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;-><init>(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 403
    iget v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->label:I

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

    iget-boolean v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$isCN:Z

    move p1, v2

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$email:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$garminApi:Lcom/jichi/ob/api/GarminApi;

    iget-object v4, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$password:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$dsCooldown:Lcom/jichi/ob/model/DataSource;

    iget-object v6, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v7, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$tvStatus:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->$btnLogin:Lcom/google/android/material/button/MaterialButton;

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;->label:I

    const/4 v9, 0x1

    invoke-static/range {v1 .. v10}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->access$invokeSuspend$doGarminLogin(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

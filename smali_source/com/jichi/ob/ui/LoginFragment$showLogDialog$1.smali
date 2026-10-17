.class final Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/LoginFragment;->showLogDialog(Lcom/jichi/ob/model/DataSource;)V
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
    c = "com.jichi.ob.ui.LoginFragment$showLogDialog$1"
    f = "LoginFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $act:Lcom/jichi/ob/MainActivity;

.field final synthetic $body:Landroid/widget/TextView;

.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/LoginFragment;


# direct methods
.method public static synthetic $r8$lambda$9_WbD7PBwinv8MxawWbkOnLLL8E(Lcom/jichi/ob/util/ActivityCache$PlatformLog;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->invokeSuspend$lambda$1$lambda$0(Lcom/jichi/ob/util/ActivityCache$PlatformLog;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AYeoHP5Bk6ecbaKf3sRvXYEo4TY(Landroid/widget/TextView;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->invokeSuspend$lambda$1(Landroid/widget/TextView;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/ui/LoginFragment;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/MainActivity;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/ui/LoginFragment;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lcom/jichi/ob/MainActivity;",
            "Landroid/widget/TextView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->this$0:Lcom/jichi/ob/ui/LoginFragment;

    iput-object p2, p0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->$ds:Lcom/jichi/ob/model/DataSource;

    iput-object p3, p0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->$act:Lcom/jichi/ob/MainActivity;

    iput-object p4, p0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->$body:Landroid/widget/TextView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Landroid/widget/TextView;Ljava/util/List;)V
    .locals 9

    .line 693
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "\uff08\u6682\u65e0\u65e5\u5fd7\uff09"

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 694
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const-string p1, "\n"

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v6, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1$$ExternalSyntheticLambda1;-><init>()V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 693
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1$lambda$0(Lcom/jichi/ob/util/ActivityCache$PlatformLog;)Ljava/lang/CharSequence;
    .locals 5

    .line 695
    const-string v0, ""

    .line 696
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$PlatformLog;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 698
    :goto_0
    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$PlatformLog;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xc88

    if-eq v3, v4, :cond_5

    const/16 v4, 0xddc

    if-eq v3, v4, :cond_4

    const v4, 0x18965

    if-eq v3, v4, :cond_2

    const v4, 0x35e57f

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "skip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 699
    :cond_1
    const-string/jumbo v2, "\u23ed \u8df3\u8fc7"

    goto :goto_2

    .line 698
    :cond_2
    const-string v3, "err"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 699
    :cond_3
    const-string/jumbo v2, "\u274c \u5931\u8d25"

    goto :goto_2

    .line 698
    :cond_4
    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 699
    const-string/jumbo v2, "\u2705 \u4e0a\u4f20\u6210\u529f"

    goto :goto_2

    .line 698
    :cond_5
    const-string v3, "dl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    :goto_1
    move-object v2, v0

    goto :goto_2

    .line 699
    :cond_7
    const-string/jumbo v2, "\u2b07 \u4e0b\u8f7d"

    .line 701
    :goto_2
    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$PlatformLog;->getMsg()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$PlatformLog;->getMsg()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "] "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
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

    new-instance v0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->this$0:Lcom/jichi/ob/ui/LoginFragment;

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v3, p0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->$act:Lcom/jichi/ob/MainActivity;

    iget-object v4, p0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->$body:Landroid/widget/TextView;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;-><init>(Lcom/jichi/ob/ui/LoginFragment;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/MainActivity;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 689
    iget v0, p0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 690
    :try_start_0
    sget-object p1, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    iget-object v0, p0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->this$0:Lcom/jichi/ob/ui/LoginFragment;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/LoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jichi/ob/util/ActivityCache$Companion;->get(Landroid/content/Context;)Lcom/jichi/ob/util/ActivityCache;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 691
    :try_start_1
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/jichi/ob/util/ActivityCache;->getPlatformLogs(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 692
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->$act:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1;->$body:Landroid/widget/TextView;

    new-instance v2, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/jichi/ob/ui/LoginFragment$showLogDialog$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 704
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 689
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

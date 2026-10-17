.class final Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->fetchUsernameAfterLogin(Lcom/jichi/ob/model/DataSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3$WhenMappings;
    }
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
    c = "com.jichi.ob.MainActivity$fetchUsernameAfterLogin$3"
    f = "MainActivity.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x3,
        0x4,
        0x5,
        0x6,
        0x7,
        0x8,
        0x9,
        0xa,
        0xb,
        0xc,
        0xd,
        0xe,
        0xf,
        0x10,
        0x10,
        0x11,
        0x12
    }
    l = {
        0x76d,
        0x76e,
        0x76f,
        0x770,
        0x771,
        0x772,
        0x773,
        0x774,
        0x778,
        0x779,
        0x77a,
        0x77b,
        0x77d,
        0x784,
        0x785,
        0x786,
        0x789,
        0x78b,
        0x792
    }
    m = "invokeSuspend"
    n = {
        "cred",
        "cred",
        "cred",
        "cred",
        "cred",
        "cred",
        "cred",
        "cred",
        "cred",
        "cred",
        "cred",
        "cred",
        "cred",
        "cred",
        "cred",
        "cred",
        "cred",
        "email",
        "cred",
        "cred"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$8BCVXaaJsMpFGEw8m5mn8VxJpMs(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->invokeSuspend$lambda$2(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0ubblu_1KvuLYraM97dERT_d6c(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->invokeSuspend$lambda$2$lambda$1(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hTP6e3zcHy89bQrsevSRitw55SQ(Lcom/jichi/ob/MainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->invokeSuspend$lambda$0(Lcom/jichi/ob/MainActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/MainActivity;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->$ds:Lcom/jichi/ob/model/DataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/jichi/ob/MainActivity;)V
    .locals 0

    .line 1944
    invoke-static {p0}, Lcom/jichi/ob/MainActivity;->access$getLoginFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/LoginFragment;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "loginFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginFragment;->updateStatus()V

    return-void
.end method

.method private static final invokeSuspend$lambda$2(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;)V
    .locals 4

    const-string/jumbo v0, "\u5df2\u767b\u5f55 "

    .line 1949
    :try_start_0
    invoke-virtual {p0}, Lcom/jichi/ob/MainActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jichi/ob/MainActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1950
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1951
    const-string/jumbo v2, "\u62c9\u53d6\u6700\u8fd1\u8fd0\u52a8\u8bb0\u5f55\uff1f"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 1952
    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u3002\u662f\u5426\u7acb\u5373\u62c9\u53d6\u6700\u8fd1\u8fd0\u52a8\u8bb0\u5f55\u5230\u8bb0\u5f55\u4e2d\u5fc3\uff1f\n\uff08\u540e\u53f0\u6267\u884c\u4e0d\u5f71\u54cd\u4f7f\u7528\uff1b\u4e5f\u53ef\u5728\u6279\u91cf\u540c\u6b65\u65f6\u81ea\u52a8\u5199\u5165\u7f13\u5b58\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1953
    const-string/jumbo v1, "\u7acb\u5373\u62c9\u53d6"

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 1954
    const-string/jumbo p1, "\u6682\u4e0d"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 1955
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static final invokeSuspend$lambda$2$lambda$1(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1953
    invoke-virtual {p0, p1}, Lcom/jichi/ob/MainActivity;->preloadRecent(Lcom/jichi/ob/model/DataSource;)V

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

    new-instance p1, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-direct {p1, v0, v1, p2}, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;-><init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1898
    iget v1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    const-string/jumbo v2, "zwiftApi"

    const-string v3, "prefs"

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_7
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_8
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_9
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_a
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_b
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_c
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_d
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_e
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_f
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_10
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_11
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_12
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1899
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_0
    iget-object v1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {p1, v1}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1900
    :cond_1
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v1, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const-string v1, "corosApi"

    const-string v5, "igpsportApi"

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_1

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1939
    :pswitch_14
    const-string/jumbo p1, "\u672c\u5730\u6587\u4ef6\u5939"

    goto/16 :goto_16

    .line 1938
    :pswitch_15
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getCycityApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/CyCityApi;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "cycityApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_2
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/16 v2, 0x13

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/CyCityApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto/16 :goto_14

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1937
    :pswitch_16
    const-string p1, "TrainingPeaks\u7528\u6237"

    goto/16 :goto_16

    .line 1936
    :pswitch_17
    const-string p1, "Withings\u7528\u6237"

    goto/16 :goto_16

    .line 1935
    :pswitch_18
    const-string p1, "Fitbit\u7528\u6237"

    goto/16 :goto_16

    .line 1934
    :pswitch_19
    const-string p1, "Polar\u7528\u6237"

    goto/16 :goto_16

    .line 1933
    :pswitch_1a
    const-string p1, "Strava\u7528\u6237"

    goto/16 :goto_16

    .line 1932
    :pswitch_1b
    const-string/jumbo p1, "\u4e24\u6b65\u8def\u7528\u6237"

    goto/16 :goto_16

    .line 1931
    :pswitch_1c
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getSuuntoApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/SuuntoApi;

    move-result-object p1

    if-nez p1, :cond_4

    const-string/jumbo p1, "suuntoApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_4
    iget-object v1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v1}, Lcom/jichi/ob/MainActivity;->access$suuntoSubscriptionKey(Lcom/jichi/ob/MainActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, ""

    :cond_5
    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/16 v5, 0x12

    iput v5, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1, v2}, Lcom/jichi/ob/api/SuuntoApi;->getUsername(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto/16 :goto_14

    :cond_6
    :goto_1
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1928
    :pswitch_1d
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_7
    invoke-virtual {p1}, Lcom/jichi/ob/util/PrefsManager;->getKomootAccount()Ljava/lang/String;

    move-result-object p1

    .line 1929
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_b

    :cond_8
    iget-object v1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v1}, Lcom/jichi/ob/MainActivity;->access$getKomootApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/KomootApi;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "komootApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_9
    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$1:Ljava/lang/Object;

    const/16 v5, 0x11

    iput v5, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {v1, p1, v6, v2}, Lcom/jichi/ob/api/KomootApi;->getUsername(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    goto/16 :goto_14

    :cond_a
    :goto_2
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1926
    :pswitch_1e
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getZeppApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/ZeppApi;

    move-result-object p1

    if-nez p1, :cond_b

    const-string/jumbo p1, "zeppApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_b
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/16 v2, 0x10

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/ZeppApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    goto/16 :goto_14

    :cond_c
    :goto_3
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1925
    :pswitch_1f
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getCodoonApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/CodoonApi;

    move-result-object p1

    if-nez p1, :cond_d

    const-string p1, "codoonApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_d
    iget-object v1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_e
    invoke-virtual {v1}, Lcom/jichi/ob/util/PrefsManager;->getCodoonUserId()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/16 v5, 0xf

    iput v5, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1, v2}, Lcom/jichi/ob/api/CodoonApi;->getUsername(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_f

    goto/16 :goto_14

    :cond_f
    :goto_4
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1924
    :pswitch_20
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getKeepApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/KeepApi;

    move-result-object p1

    if-nez p1, :cond_10

    const-string p1, "keepApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_10
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/16 v2, 0xe

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/KeepApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_11

    goto/16 :goto_14

    :cond_11
    :goto_5
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1923
    :pswitch_21
    const-string p1, "Intervals.icu\u7528\u6237"

    goto/16 :goto_16

    .line 1917
    :pswitch_22
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getZwiftApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/ZwiftApi;

    move-result-object p1

    if-nez p1, :cond_12

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_12
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object v6, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/16 v5, 0xd

    iput v5, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/ZwiftApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_13

    goto/16 :goto_14

    :cond_13
    move-object v0, v6

    .line 1898
    :goto_6
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2e

    .line 1918
    iget-object v1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v1}, Lcom/jichi/ob/MainActivity;->access$getZwiftApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/ZwiftApi;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_14
    invoke-virtual {v1, v0}, Lcom/jichi/ob/api/ZwiftApi;->isTrialAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1919
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    const-string/jumbo v1, "\u26a0\ufe0f Zwift \u4e3a\u8bd5\u7528\u8ba2\u9605\u8d26\u53f7\uff1a\u53ef\u67e5\u770b\u6d3b\u52a8\u5217\u8868\uff0c\u4f46 Zwift \u4e0d\u63d0\u4f9b FIT \u6587\u4ef6\u4e0b\u8f7d\uff0c\u9700\u5347\u7ea7\u4f1a\u5458"

    invoke-static {v0, v1}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1915
    :pswitch_23
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getMywhooshApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/MyWhooshApi;

    move-result-object p1

    if-nez p1, :cond_15

    const-string p1, "mywhooshApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_15
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/16 v2, 0xc

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/MyWhooshApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_16

    goto/16 :goto_14

    :cond_16
    :goto_7
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1914
    :pswitch_24
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getWahooApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/WahooApi;

    move-result-object p1

    if-nez p1, :cond_17

    const-string/jumbo p1, "wahooApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_17
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/16 v2, 0xb

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/WahooApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_18

    goto/16 :goto_14

    :cond_18
    :goto_8
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1913
    :pswitch_25
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getCorosApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/CorosApi;

    move-result-object p1

    if-nez p1, :cond_19

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_19
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/16 v2, 0xa

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/CorosApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1a

    goto/16 :goto_14

    :cond_1a
    :goto_9
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1912
    :pswitch_26
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getCorosApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/CorosApi;

    move-result-object p1

    if-nez p1, :cond_1b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_1b
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/16 v2, 0x9

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/CorosApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1c

    goto/16 :goto_14

    :cond_1c
    :goto_a
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    :cond_1d
    :goto_b
    :pswitch_27
    move-object p1, v4

    goto/16 :goto_16

    .line 1908
    :pswitch_28
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getOutbaseApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/OutbaseApi;

    move-result-object p1

    if-nez p1, :cond_1e

    const-string p1, "outbaseApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_1e
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/16 v2, 0x8

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/OutbaseApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1f

    goto/16 :goto_14

    :cond_1f
    :goto_c
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1907
    :pswitch_29
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getGiantApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/GiantApi;

    move-result-object p1

    if-nez p1, :cond_20

    const-string p1, "giantApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_20
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/4 v2, 0x7

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/GiantApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_21

    goto/16 :goto_14

    :cond_21
    :goto_d
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1906
    :pswitch_2a
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getBrytonApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/BrytonApi;

    move-result-object p1

    if-nez p1, :cond_22

    const-string p1, "brytonApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_22
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/BrytonApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_23

    goto/16 :goto_14

    :cond_23
    :goto_e
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1905
    :pswitch_2b
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getBlackbirdApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/BlackbirdApi;

    move-result-object p1

    if-nez p1, :cond_24

    const-string p1, "blackbirdApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_24
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/BlackbirdApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    goto/16 :goto_14

    :cond_25
    :goto_f
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1904
    :pswitch_2c
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getMageneApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/MageneApi;

    move-result-object p1

    if-nez p1, :cond_26

    const-string p1, "mageneApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_26
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/MageneApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    goto/16 :goto_14

    :cond_27
    :goto_10
    check-cast p1, Ljava/lang/String;

    goto/16 :goto_16

    .line 1903
    :pswitch_2d
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getXingzheApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/XingzheApi;

    move-result-object p1

    if-nez p1, :cond_28

    const-string/jumbo p1, "xingzheApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_28
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v1}, Lcom/jichi/ob/api/XingzheApi;->getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    goto :goto_14

    :cond_29
    :goto_11
    check-cast p1, Ljava/lang/String;

    goto :goto_16

    .line 1902
    :pswitch_2e
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getIgpsportApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/IgpsportApi;

    move-result-object p1

    if-nez p1, :cond_2a

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_2a
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    invoke-virtual {p1, v6, v7, v1}, Lcom/jichi/ob/api/IgpsportApi;->getUsername(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2b

    goto :goto_14

    :cond_2b
    :goto_12
    check-cast p1, Ljava/lang/String;

    goto :goto_16

    .line 1901
    :pswitch_2f
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getIgpsportApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/IgpsportApi;

    move-result-object p1

    if-nez p1, :cond_2c

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    goto :goto_13

    :cond_2c
    move-object v5, p1

    :goto_13
    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->L$0:Ljava/lang/Object;

    iput v7, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->label:I

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/jichi/ob/api/IgpsportApi;->getUsername$default(Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    :goto_14
    return-object v0

    :cond_2d
    :goto_15
    check-cast p1, Ljava/lang/String;

    :cond_2e
    :goto_16
    if-eqz p1, :cond_30

    .line 1942
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v0}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v0

    if-nez v0, :cond_2f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_17

    :cond_2f
    move-object v4, v0

    :goto_17
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v4, v0, p1}, Lcom/jichi/ob/util/PrefsManager;->saveUsername(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)V

    .line 1943
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\ud83d\udc64 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u7528\u6237: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 1944
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/ob/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1947
    :cond_30
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3;->$ds:Lcom/jichi/ob/model/DataSource;

    new-instance v1, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, v0}, Lcom/jichi/ob/MainActivity$fetchUsernameAfterLogin$3$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;)V

    invoke-virtual {p1, v1}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1959
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

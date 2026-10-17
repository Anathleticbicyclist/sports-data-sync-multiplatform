.class final Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginWebActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/LoginWebActivity;->onCreate(Landroid/os/Bundle;)V
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
    c = "com.jichi.ob.ui.LoginWebActivity$onCreate$5$1"
    f = "LoginWebActivity.kt"
    i = {}
    l = {
        0x1ae
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
.method public static synthetic $r8$lambda$BXr2uIFrlvZbECvk5-M_qmnxCZE(Lcom/google/android/material/button/MaterialButton;ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->invokeSuspend$doGarminLogin$lambda$3$lambda$1(Lcom/google/android/material/button/MaterialButton;ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LNEa7Mjbdy31e9HUQy5QSsuGCCA()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->invokeSuspend$doGarminLogin$lambda$3$lambda$2()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$c3Lzmsf35ZryR5MbKYsFyQxN_9Q(Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->invokeSuspend$lambda$4(Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xI0grvniH3VHEZdGZ1aez4aZ4xY(Ljava/lang/String;Landroid/widget/TextView;Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/material/button/MaterialButton;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/api/GarminApi;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->invokeSuspend$doGarminLogin$lambda$3(Ljava/lang/String;Landroid/widget/TextView;Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/material/button/MaterialButton;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/api/GarminApi;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/ui/LoginWebActivity;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/GarminApi;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/model/DataSource;",
            "Landroid/widget/TextView;",
            "Lcom/google/android/material/button/MaterialButton;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iput-boolean p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$isCN:Z

    iput-object p3, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$email:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$garminApi:Lcom/jichi/ob/api/GarminApi;

    iput-object p5, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$password:Ljava/lang/String;

    iput-object p6, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$dsCooldown:Lcom/jichi/ob/model/DataSource;

    iput-object p7, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$tvStatus:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$btnLogin:Lcom/google/android/material/button/MaterialButton;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final synthetic access$invokeSuspend$doGarminLogin(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->invokeSuspend$doGarminLogin(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$doGarminLogin(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
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
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p8

    move-object/from16 v5, p9

    instance-of v6, v5, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;

    iget v7, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->label:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget v5, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->label:I

    sub-int/2addr v5, v8

    iput v5, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;

    invoke-direct {v6, v5}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v5, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 343
    iget v8, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->label:I

    const-string v9, "["

    const-string/jumbo v10, "\u4f73\u660e\u4e2d\u56fd"

    const-string/jumbo v11, "\u4f73\u660e\u56fd\u9645"

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-eqz v8, :cond_4

    if-eq v8, v15, :cond_3

    if-eq v8, v12, :cond_2

    if-ne v8, v14, :cond_1

    iget-boolean v0, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->Z$1:Z

    iget-boolean v0, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->Z$0:Z

    iget-object v1, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$8:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$7:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$6:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    iget-object v3, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$5:Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v7, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lcom/jichi/ob/model/DataSource;

    iget-object v8, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v12, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lcom/jichi/ob/api/GarminApi;

    iget-object v6, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->Z$1:Z

    iget-boolean v1, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->Z$0:Z

    iget-object v2, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$8:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$7:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$6:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    iget-object v4, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$5:Ljava/lang/Object;

    check-cast v4, Landroid/widget/TextView;

    iget-object v8, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v12, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lcom/jichi/ob/model/DataSource;

    iget-object v13, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v15, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lcom/jichi/ob/api/GarminApi;

    iget-object v14, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget-boolean v0, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->Z$1:Z

    iget-boolean v1, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->Z$0:Z

    iget-object v2, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$6:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    iget-object v3, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$5:Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v8, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lcom/jichi/ob/model/DataSource;

    iget-object v14, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lcom/jichi/ob/api/GarminApi;

    iget-object v12, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v24, v1

    move v1, v0

    move/from16 v0, v24

    goto/16 :goto_2

    :cond_4
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 344
    sget-object v5, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v5, v13}, Lcom/jichi/ob/api/GarminApi$Companion;->setLastGarminAuthError(Ljava/lang/String;)V

    .line 345
    sget-object v5, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    if-eqz v0, :cond_5

    move-object v8, v10

    goto :goto_1

    :cond_5
    move-object v8, v11

    :goto_1
    const/4 v12, 0x3

    invoke-static {v1, v12}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "] \u5f00\u59cb\u767b\u5f55 email="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "*** ignoreFatal="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    if-nez v0, :cond_7

    .line 347
    iput-object v1, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$0:Ljava/lang/Object;

    iput-object v2, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$1:Ljava/lang/Object;

    iput-object v3, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$2:Ljava/lang/Object;

    move-object/from16 v5, p4

    iput-object v5, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$3:Ljava/lang/Object;

    move-object/from16 v8, p5

    iput-object v8, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$4:Ljava/lang/Object;

    move-object/from16 v12, p6

    iput-object v12, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$5:Ljava/lang/Object;

    move-object/from16 v14, p7

    iput-object v14, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$6:Ljava/lang/Object;

    iput-boolean v0, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->Z$0:Z

    iput-boolean v4, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->Z$1:Z

    const/4 v15, 0x1

    iput v15, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->label:I

    const/4 v15, 0x0

    invoke-virtual {v2, v1, v3, v15, v6}, Lcom/jichi/ob/api/GarminApi;->loginOAuth1(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v7, :cond_6

    goto/16 :goto_7

    :cond_6
    move-object/from16 v24, v12

    move-object v12, v1

    move v1, v4

    move-object v4, v8

    move-object v8, v5

    move-object v5, v15

    move-object v15, v2

    move-object v2, v14

    move-object v14, v3

    move-object/from16 v3, v24

    .line 343
    :goto_2
    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move-object/from16 v12, p6

    move-object/from16 v14, p7

    move-object v15, v2

    move-object v2, v14

    move-object v14, v3

    move-object v3, v12

    move-object v12, v1

    move v1, v4

    move-object v4, v8

    move-object v8, v5

    move-object v5, v13

    :goto_3
    if-eqz v1, :cond_8

    goto :goto_4

    .line 348
    :cond_8
    sget-object v13, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v13}, Lcom/jichi/ob/api/GarminApi$Companion;->getLastGarminAuthError()Ljava/lang/String;

    move-result-object v13

    :goto_4
    if-nez v5, :cond_a

    if-nez v13, :cond_a

    .line 349
    iput-object v12, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$0:Ljava/lang/Object;

    iput-object v15, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$1:Ljava/lang/Object;

    iput-object v14, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$2:Ljava/lang/Object;

    iput-object v8, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$3:Ljava/lang/Object;

    iput-object v4, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$4:Ljava/lang/Object;

    iput-object v3, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$5:Ljava/lang/Object;

    iput-object v2, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$6:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$7:Ljava/lang/Object;

    iput-object v13, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$8:Ljava/lang/Object;

    iput-boolean v0, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->Z$0:Z

    iput-boolean v1, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->Z$1:Z

    const/4 v5, 0x2

    iput v5, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->label:I

    invoke-virtual {v15, v12, v14, v0, v6}, Lcom/jichi/ob/api/GarminApi;->loginMobile(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_9

    goto/16 :goto_7

    :cond_9
    move/from16 v24, v1

    move v1, v0

    move/from16 v0, v24

    move-object/from16 v24, v3

    move-object v3, v2

    move-object v2, v13

    move-object v13, v14

    move-object v14, v12

    move-object v12, v8

    move-object v8, v4

    move-object/from16 v4, v24

    .line 343
    :goto_5
    check-cast v5, Ljava/lang/String;

    move/from16 v24, v1

    move v1, v0

    move/from16 v0, v24

    move-object/from16 v24, v14

    move-object v14, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v8

    move-object v8, v12

    move-object/from16 v12, v24

    goto :goto_6

    :cond_a
    move-object/from16 v24, v14

    move-object v14, v13

    move-object/from16 v13, v24

    :goto_6
    if-nez v5, :cond_b

    if-nez v14, :cond_b

    .line 350
    sget-object v14, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v14}, Lcom/jichi/ob/api/GarminApi$Companion;->getLastGarminAuthError()Ljava/lang/String;

    move-result-object v14

    :cond_b
    if-nez v5, :cond_d

    if-nez v14, :cond_d

    if-eqz v0, :cond_d

    .line 351
    iput-object v12, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$0:Ljava/lang/Object;

    iput-object v15, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$1:Ljava/lang/Object;

    iput-object v13, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$2:Ljava/lang/Object;

    iput-object v8, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$3:Ljava/lang/Object;

    iput-object v4, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$4:Ljava/lang/Object;

    iput-object v3, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$5:Ljava/lang/Object;

    iput-object v2, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$6:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$7:Ljava/lang/Object;

    iput-object v14, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->L$8:Ljava/lang/Object;

    iput-boolean v0, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->Z$0:Z

    iput-boolean v1, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->Z$1:Z

    const/4 v1, 0x3

    iput v1, v6, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->label:I

    const/4 v1, 0x1

    invoke-virtual {v15, v12, v13, v1, v6}, Lcom/jichi/ob/api/GarminApi;->loginOAuth1(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_c

    :goto_7
    return-object v7

    :cond_c
    move-object v7, v8

    move-object v6, v12

    move-object v8, v13

    move-object v1, v14

    move-object v12, v15

    .line 343
    :goto_8
    check-cast v5, Ljava/lang/String;

    move-object/from16 v19, v8

    move-object/from16 v23, v12

    move-object v12, v6

    move-object v8, v7

    move/from16 v17, v0

    move-object/from16 v20, v2

    move-object v15, v3

    move-object/from16 v16, v4

    :goto_9
    move-object v14, v5

    goto :goto_a

    :cond_d
    move-object/from16 v19, v13

    move-object v1, v14

    move-object/from16 v23, v15

    move/from16 v17, v0

    move-object/from16 v20, v2

    move-object/from16 v16, v4

    move-object v15, v3

    goto :goto_9

    :goto_a
    if-eqz v14, :cond_e

    .line 353
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0, v8, v12}, Lcom/jichi/ob/api/GarminApi$Companion;->clearCooldownFor(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)V

    .line 356
    :cond_e
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    if-eqz v17, :cond_f

    goto :goto_b

    :cond_f
    move-object v10, v11

    :goto_b
    if-eqz v14, :cond_10

    const-string/jumbo v2, "\u6210\u529f"

    goto :goto_c

    :cond_10
    const-string/jumbo v2, "\u5931\u8d25"

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \u767b\u5f55\u7ed3\u679c: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fatal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 357
    new-instance v13, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$$ExternalSyntheticLambda1;

    move-object/from16 v21, v1

    move-object/from16 v22, v8

    move-object/from16 v18, v12

    invoke-direct/range {v13 .. v23}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/widget/TextView;Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/material/button/MaterialButton;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/api/GarminApi;)V

    move-object/from16 v4, v16

    invoke-virtual {v4, v13}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 429
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invokeSuspend$doGarminLogin$lambda$3(Ljava/lang/String;Landroid/widget/TextView;Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/material/button/MaterialButton;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/api/GarminApi;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 359
    const-string/jumbo v1, "\u2705 \u767b\u5f55\u6210\u529f\uff01"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-static {v7, v4}, Lcom/jichi/ob/ui/LoginWebActivity;->access$setDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;Z)V

    .line 362
    new-instance v1, Lcom/jichi/ob/util/PrefsManager;

    move-object v2, v7

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    .line 363
    invoke-virtual {v1, v3, v5}, Lcom/jichi/ob/util/PrefsManager;->saveGarminCnCredentials(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {v1, v3, v5}, Lcom/jichi/ob/util/PrefsManager;->saveGarminComCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 366
    const-string v2, "***"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 367
    const-string v1, "login_type"

    invoke-static {v7}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getLoginType$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 365
    invoke-virtual {v7, v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 368
    invoke-virtual {v7}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void

    .line 370
    :cond_1
    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 371
    const-string/jumbo v0, "\u767b\u5f55"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-static {v7}, Lcom/jichi/ob/ui/LoginWebActivity;->access$flushGarminDebugToPersist(Lcom/jichi/ob/ui/LoginWebActivity;)V

    const/16 v0, 0x12

    .line 375
    :try_start_0
    new-instance v4, Lcom/jichi/ob/util/PrefsManager;

    move-object v6, v7

    check-cast v6, Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/jichi/ob/util/PrefsManager;->getPersistLogs()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/Iterable;

    const-string v4, "\n"

    move-object v10, v4

    check-cast v10, Ljava/lang/CharSequence;

    const/16 v16, 0x3e

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 376
    :catch_0
    const-string v4, ""

    .line 377
    :goto_1
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 378
    sget-object v4, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v4}, Lcom/jichi/ob/api/GarminApi$Companion;->getDebugLogs()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 379
    :try_start_1
    sget-object v6, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v6}, Lcom/jichi/ob/api/GarminApi$Companion;->getDebugLogs()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/Iterable;

    const-string v0, "\n"

    move-object v10, v0

    check-cast v10, Ljava/lang/CharSequence;

    const/16 v16, 0x3e

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    monitor-exit v4

    move-object v9, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    move-object v9, v4

    :goto_2
    if-eqz v2, :cond_a

    .line 386
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v4, 0x252bb836

    if-eq v0, v4, :cond_7

    const v4, 0x2b8cdc31    # 1.0008714E-12f

    if-eq v0, v4, :cond_5

    const v4, 0x46fec34a

    if-eq v0, v4, :cond_3

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "\u98ce\u63a7\u9650\u6d41"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 389
    :cond_4
    const-string/jumbo v0, "\u8be5\u8d26\u53f7\u5df2\u89e6\u53d1\u4f73\u660e\u98ce\u63a7\u9650\u6d41\uff08\u53ef\u80fd\u662f\u5bc6\u7801\u6709\u8bef\uff0c\u4e5f\u53ef\u80fd\u662f\u8be5\u8d26\u53f7\u88ab\u4e34\u65f6\u9650\u6d41\uff09\u3002\n\u8bf7\u5148\u68c0\u67e5\u8d26\u53f7\u5bc6\u7801\u662f\u5426\u6b63\u786e\uff0c\u5e76\u7b49\u5f85\u51b7\u5374\u7ed3\u675f\u540e\u518d\u767b\u5f55\u3002\n\uff08\u7ee7\u7eed\u5c1d\u8bd5\u5176\u4ed6\u901a\u9053\u4f1a\u89e6\u53d1\u66f4\u4e25\u98ce\u63a7\uff0c\u53ef\u80fd\u5bfc\u81f4 24H \u65e0\u6cd5\u767b\u5f55\uff09"

    goto :goto_4

    .line 386
    :cond_5
    const-string/jumbo v0, "\u5bc6\u7801\u9519\u8bef"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 387
    :cond_6
    const-string/jumbo v0, "\u8d26\u53f7\u6216\u5bc6\u7801\u4e0d\u5339\u914d\uff0c\u8bf7\u68c0\u67e5\u90ae\u7bb1\u548c\u5bc6\u7801\u540e\u91cd\u8bd5\u3002\n\uff08\u4f73\u660e\u5bf9\u9519\u8bef\u5bc6\u7801\u654f\u611f\uff1a\u8f93\u9519\u4e00\u6b21\u5373\u53ef\u80fd\u89e6\u53d1\u98ce\u63a7\uff0c\u7ee7\u7eed\u5c1d\u8bd5\u5176\u4ed6\u901a\u9053\u4f1a\u5bfc\u81f4 24H \u65e0\u6cd5\u767b\u5f55\uff0c\u8bf7\u5148\u786e\u8ba4\u5bc6\u7801\u6b63\u786e\uff09"

    goto :goto_4

    .line 386
    :cond_7
    const-string/jumbo v0, "\u4e24\u6b65\u9a8c\u8bc1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_3
    move-object v0, v2

    goto :goto_4

    .line 388
    :cond_8
    const-string/jumbo v0, "\u68c0\u6d4b\u5230\u8be5\u8d26\u53f7\u5f00\u542f\u4e86\u4e24\u6b65\u9a8c\u8bc1\uff08\u77ed\u4fe1/\u90ae\u7bb1\u9a8c\u8bc1\u7801\uff09\u3002\n\u8bf7\u5148\u5728\u4f73\u660e\u5b98\u7f51\u8d26\u53f7\u8bbe\u7f6e\u4e2d\u5173\u95ed\u4e24\u6b65\u9a8c\u8bc1\uff0c\u518d\u56de App \u767b\u5f55\u3002\n\uff08\u7ee7\u7eed\u5c1d\u8bd5\u5176\u4ed6\u901a\u9053\u4f1a\u89e6\u53d1\u98ce\u63a7\uff0c\u53ef\u80fd\u5bfc\u81f4 24H \u65e0\u6cd5\u767b\u5f55\uff09"

    .line 392
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u274c \u767b\u5f55\u5931\u8d25\uff1a"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n\u5982\u679c\u4e0d\u786e\u5b9a\u53ef\u4ee5\u5c06\u62a5\u9519\u65e5\u5fd7\u901a\u8fc7\u6296\u97f3\u53d1\u7ed9\u300c\u591a\u5403\u4e24\u53e3\u300d\u6392\u67e5\u3002"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz p3, :cond_9

    .line 396
    const-string/jumbo v0, "\u4e2d\u56fd"

    goto :goto_5

    :cond_9
    const-string/jumbo v0, "\u56fd\u9645"

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u4f73\u660e"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u767b\u5f55\u5931\u8d25"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 395
    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$$ExternalSyntheticLambda2;

    move/from16 v2, p3

    move-object/from16 v6, p8

    move-object/from16 v4, p9

    invoke-direct/range {v0 .. v8}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/button/MaterialButton;ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;)V

    const/4 v1, 0x1

    move-object/from16 p3, p2

    move-object/from16 p8, v0

    move/from16 p7, v1

    move-object/from16 p6, v9

    move-object/from16 p5, v10

    move-object/from16 p4, v11

    invoke-static/range {p3 .. p8}, Lcom/jichi/ob/ui/LoginWebActivity;->access$showGarminResultDialog(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    return-void

    :cond_a
    move-object v0, v9

    .line 411
    sget-object v1, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    move-object/from16 v6, p8

    invoke-virtual {v1, v6, v3}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownRemainAnyMinutes(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_b

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u767b\u5f55\u5931\u8d25\uff0c\u8be5\u8d26\u53f7\u6240\u6709\u4f73\u660e\u767b\u5f55\u901a\u9053\u5747\u89e6\u53d1\u98ce\u63a7\u9650\u6d41\n\u8bf7\u7ea6"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5206\u949f\u540e\u91cd\u8bd5\uff08\u51b7\u5374\u671f\u5185\u53cd\u590d\u5c1d\u8bd5\u4f1a\u5ef6\u957f\u5c01\u7981\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 415
    :cond_b
    const-string/jumbo v1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u90ae\u7bb1\u5bc6\u7801\n\uff08\u5f00\u542f\u4e86\u4e24\u6b65\u9a8c\u8bc1\u9700\u5148\u5173\u95ed\uff09\n\u4f73\u660e\u5bf9\u9891\u7e41\u767b\u5f55\u6709\u98ce\u63a7\uff1a\u8bf7\u4fdd\u8bc1\u8d26\u53f7\u5bc6\u7801\u4e00\u6b21\u8f93\u5bf9\uff0c\u52ff\u540c\u65f6\u767b\u5f55\u5f00\u53d1\u4f53\u9a8c\u7248\u4e0e\u6b63\u5f0f\u7248\uff1b\u591a\u6b21\u5931\u8d25\u4f1a\u89e6\u53d1\u9650\u6d41\uff0c\u8bf7\u8fc7\u51e0\u5c0f\u65f6\u6216\u6b21\u65e5\u518d\u8bd5"

    .line 417
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u274c "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u82e5\u5df2\u5f00\u542f\u4e24\u6b65\u9a8c\u8bc1\uff08\u77ed\u4fe1/\u90ae\u7bb1\u9a8c\u8bc1\u7801\uff09\uff0c\u8bf7\u5173\u95ed\u540e\u518d\u8bd5\uff1b\u5426\u5219\u8bf7\u786e\u8ba4\u8d26\u53f7\u5bc6\u7801\u6b63\u786e\u3002\n\n\u5982\u679c\u4e0d\u786e\u5b9a\u53ef\u4ee5\u5c06\u62a5\u9519\u65e5\u5fd7\u901a\u8fc7\u6296\u97f3\u53d1\u7ed9\u300c\u591a\u5403\u4e24\u53e3\u300d\u6392\u67e5\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_c

    .line 421
    const-string/jumbo v2, "\u4e2d\u56fd"

    goto :goto_7

    :cond_c
    const-string/jumbo v2, "\u56fd\u9645"

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u4f73\u660e"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u767b\u5f55\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    new-instance v3, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$$ExternalSyntheticLambda3;-><init>()V

    const/4 v4, 0x0

    move-object/from16 p3, p2

    move-object/from16 p6, v0

    move-object/from16 p5, v1

    move-object/from16 p4, v2

    move-object/from16 p8, v3

    move/from16 p7, v4

    .line 420
    invoke-static/range {p3 .. p8}, Lcom/jichi/ob/ui/LoginWebActivity;->access$showGarminResultDialog(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final invokeSuspend$doGarminLogin$lambda$3$buildMsgWithLog(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n\n\u2014\u2014\u2014 \u4f73\u660e\u767b\u5f55\u65e5\u5fd7 \u2014\u2014\u2014\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static final invokeSuspend$doGarminLogin$lambda$3$lambda$1(Lcom/google/android/material/button/MaterialButton;ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;)Lkotlin/Unit;
    .locals 12

    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 402
    const-string/jumbo v0, "\u767b\u5f55\u4e2d(\u5ffd\u7565\u8b66\u544a)..."

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 403
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;

    const/4 v11, 0x0

    move-object v10, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v11}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$2$2$1;-><init>(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lkotlin/coroutines/Continuation;)V

    move-object p3, v2

    check-cast p3, Lkotlin/jvm/functions/Function2;

    const/4 p0, 0x2

    const/4 p1, 0x0

    const/4 p2, 0x0

    move/from16 p4, p0

    move-object/from16 p5, p1

    move-object p0, v0

    move-object p1, v1

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 404
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$doGarminLogin$lambda$3$lambda$2()Lkotlin/Unit;
    .locals 1

    .line 425
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invokeSuspend$lambda$4(Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x1

    .line 433
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 434
    const-string/jumbo v0, "\u767b\u5f55"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u274c \u767b\u5f55\u5f02\u5e38: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-boolean v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$isCN:Z

    iget-object v3, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$email:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$garminApi:Lcom/jichi/ob/api/GarminApi;

    iget-object v5, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$password:Ljava/lang/String;

    iget-object v6, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$dsCooldown:Lcom/jichi/ob/model/DataSource;

    iget-object v7, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$tvStatus:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$btnLogin:Lcom/google/android/material/button/MaterialButton;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 335
    iget v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 338
    :try_start_1
    sget-object p1, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {p1, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->setEnableDebugLogs(Z)V

    .line 430
    iget-boolean v3, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$isCN:Z

    iget-object v4, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$email:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$garminApi:Lcom/jichi/ob/api/GarminApi;

    iget-object v6, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$password:Ljava/lang/String;

    iget-object v7, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$dsCooldown:Lcom/jichi/ob/model/DataSource;

    iget-object v8, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v9, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$tvStatus:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$btnLogin:Lcom/google/android/material/button/MaterialButton;

    move-object v12, p0

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->label:I

    const/4 v11, 0x0

    invoke-static/range {v3 .. v12}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->invokeSuspend$doGarminLogin(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 432
    :goto_0
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$btnLogin:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->$tvStatus:Landroid/widget/TextView;

    new-instance v3, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2, p1}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Ljava/lang/Exception;)V

    invoke-virtual {v0, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 438
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

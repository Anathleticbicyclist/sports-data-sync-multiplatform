.class final Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "LoginWebActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->invokeSuspend$doGarminLogin(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
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
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x15b,
        0x15d,
        0x15f
    }
    m = "invokeSuspend$doGarminLogin"
    n = {
        "email",
        "garminApi",
        "password",
        "dsCooldown",
        "this$0",
        "tvStatus",
        "btnLogin",
        "isCN",
        "ignoreFatal",
        "email",
        "garminApi",
        "password",
        "dsCooldown",
        "this$0",
        "tvStatus",
        "btnLogin",
        "cred",
        "fatalErr",
        "isCN",
        "ignoreFatal",
        "email",
        "garminApi",
        "password",
        "dsCooldown",
        "this$0",
        "tvStatus",
        "btnLogin",
        "cred",
        "fatalErr",
        "isCN",
        "ignoreFatal"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "Z$0",
        "Z$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "Z$0",
        "Z$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "Z$0",
        "Z$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field Z$0:Z

.field Z$1:Z

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1$doGarminLogin$1;->label:I

    const/4 v8, 0x0

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;->access$invokeSuspend$doGarminLogin(ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

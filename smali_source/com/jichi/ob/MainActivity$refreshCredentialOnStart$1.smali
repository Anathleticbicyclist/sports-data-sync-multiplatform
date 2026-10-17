.class final Lcom/jichi/ob/MainActivity$refreshCredentialOnStart$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->refreshCredentialOnStart(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.MainActivity"
    f = "MainActivity.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x7,
        0x7,
        0x7,
        0x7,
        0x8,
        0x8,
        0x8,
        0x8,
        0x9,
        0x9,
        0x9,
        0x9,
        0xa,
        0xa,
        0xa,
        0xa,
        0xb,
        0xb,
        0xb,
        0xb,
        0xc,
        0xc,
        0xd,
        0xd,
        0xd,
        0xd,
        0xd,
        0xd
    }
    l = {
        0x68a,
        0x697,
        0x6a3,
        0x6af,
        0x6c3,
        0x6c5,
        0x6da,
        0x6e8,
        0x6f9,
        0x71a,
        0x72a,
        0x73a,
        0x747,
        0x753
    }
    m = "refreshCredentialOnStart"
    n = {
        "ds",
        "cred",
        "account",
        "password",
        "ds",
        "cred",
        "refresh",
        "ds",
        "cred",
        "refresh",
        "clientId",
        "clientSecret",
        "ds",
        "cred",
        "ds",
        "cred",
        "refreshed",
        "email",
        "password",
        "ds",
        "cred",
        "refreshed",
        "email",
        "password",
        "ds",
        "cred",
        "refresh",
        "ds",
        "cred",
        "account",
        "password",
        "ds",
        "cred",
        "account",
        "password",
        "ds",
        "cred",
        "account",
        "password",
        "ds",
        "cred",
        "account",
        "password",
        "ds",
        "cred",
        "account",
        "password",
        "ds",
        "cred",
        "ds",
        "cred",
        "refresh",
        "clientId",
        "clientSecret",
        "subKey"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method constructor <init>(Lcom/jichi/ob/MainActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/MainActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$refreshCredentialOnStart$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$refreshCredentialOnStart$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$refreshCredentialOnStart$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/jichi/ob/MainActivity$refreshCredentialOnStart$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/MainActivity$refreshCredentialOnStart$1;->label:I

    iget-object p1, p0, Lcom/jichi/ob/MainActivity$refreshCredentialOnStart$1;->this$0:Lcom/jichi/ob/MainActivity;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v0, v1}, Lcom/jichi/ob/MainActivity;->access$refreshCredentialOnStart(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

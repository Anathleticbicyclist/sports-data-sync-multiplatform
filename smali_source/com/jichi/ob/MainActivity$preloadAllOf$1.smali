.class final Lcom/jichi/ob/MainActivity$preloadAllOf$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->preloadAllOf(Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x1
    }
    l = {
        0x7f7,
        0x815
    }
    m = "preloadAllOf"
    n = {
        "ds",
        "all",
        "seen",
        "skip",
        "BATCH",
        "MAX",
        "batches",
        "ds",
        "all",
        "seen",
        "token",
        "fmt",
        "rec",
        "skip",
        "BATCH",
        "MAX",
        "batches",
        "missingCount",
        "fixed"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "I$2",
        "I$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$6",
        "I$0",
        "I$1",
        "I$2",
        "I$3",
        "I$4",
        "I$5"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field I$4:I

.field I$5:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

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
            "Lcom/jichi/ob/MainActivity$preloadAllOf$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$preloadAllOf$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$preloadAllOf$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/jichi/ob/MainActivity$preloadAllOf$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/MainActivity$preloadAllOf$1;->label:I

    iget-object p1, p0, Lcom/jichi/ob/MainActivity$preloadAllOf$1;->this$0:Lcom/jichi/ob/MainActivity;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v1}, Lcom/jichi/ob/MainActivity;->access$preloadAllOf(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

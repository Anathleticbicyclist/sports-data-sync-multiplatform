.class final Lcom/jichi/ob/BrytonWebApi$getActivities$2$1;
.super Ljava/lang/Object;
.source "BrytonWebApi.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/BrytonWebApi;->getActivities(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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


# instance fields
.field final synthetic $cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $limit:I

.field final synthetic $skip:I

.field final synthetic this$0:Lcom/jichi/ob/BrytonWebApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/BrytonWebApi;IILkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/BrytonWebApi;",
            "II",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/BrytonWebApi$getActivities$2$1;->this$0:Lcom/jichi/ob/BrytonWebApi;

    iput p2, p0, Lcom/jichi/ob/BrytonWebApi$getActivities$2$1;->$skip:I

    iput p3, p0, Lcom/jichi/ob/BrytonWebApi$getActivities$2$1;->$limit:I

    iput-object p4, p0, Lcom/jichi/ob/BrytonWebApi$getActivities$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebApi$getActivities$2$1;->this$0:Lcom/jichi/ob/BrytonWebApi;

    iget v1, p0, Lcom/jichi/ob/BrytonWebApi$getActivities$2$1;->$skip:I

    iget v2, p0, Lcom/jichi/ob/BrytonWebApi$getActivities$2$1;->$limit:I

    new-instance v3, Lcom/jichi/ob/BrytonWebApi$getActivities$2$1$1;

    iget-object v4, p0, Lcom/jichi/ob/BrytonWebApi$getActivities$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {v3, v4}, Lcom/jichi/ob/BrytonWebApi$getActivities$2$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3}, Lcom/jichi/ob/BrytonWebApi;->access$doGetActivities(Lcom/jichi/ob/BrytonWebApi;IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

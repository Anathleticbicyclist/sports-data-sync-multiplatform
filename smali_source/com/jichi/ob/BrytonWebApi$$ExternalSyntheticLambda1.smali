.class public final synthetic Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Lcom/jichi/ob/BrytonWebApi;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda1;->f$1:Lcom/jichi/ob/BrytonWebApi;

    iput-object p3, p0, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda1;->f$1:Lcom/jichi/ob/BrytonWebApi;

    iget-object v2, p0, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3}, Lcom/jichi/ob/BrytonWebApi;->$r8$lambda$72YhoPPveaksF31l2ql46lWhp_M(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

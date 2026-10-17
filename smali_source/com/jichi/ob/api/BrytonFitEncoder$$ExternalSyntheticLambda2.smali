.class public final synthetic Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/api/BrytonFitEncoder$Step;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/api/BrytonFitEncoder$Step;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda2;->f$0:Lcom/jichi/ob/api/BrytonFitEncoder$Step;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda2;->f$0:Lcom/jichi/ob/api/BrytonFitEncoder$Step;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lcom/jichi/ob/api/BrytonFitEncoder;->$r8$lambda$4nsOX7hP02-b07wcMCsr8CUhQZE(Lcom/jichi/ob/api/BrytonFitEncoder$Step;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, p1}, Lcom/jichi/ob/api/BrytonFitEncoder;->$r8$lambda$-opn_IJbM4kAZrzAtrDNC4I8AQ0(Ljava/util/List;Ljava/lang/String;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

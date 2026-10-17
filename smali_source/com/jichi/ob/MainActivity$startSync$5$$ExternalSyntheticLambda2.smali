.class public final synthetic Lcom/jichi/ob/MainActivity$startSync$5$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/MainActivity;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/MainActivity;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$startSync$5$$ExternalSyntheticLambda2;->f$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$startSync$5$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$startSync$5$$ExternalSyntheticLambda2;->f$0:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$startSync$5$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/jichi/ob/MainActivity$startSync$5;->$r8$lambda$ivTsbnyV9mH_I_vccoK_NVEFOE0(Lcom/jichi/ob/MainActivity;Ljava/lang/Exception;)V

    return-void
.end method

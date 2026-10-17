.class public final synthetic Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/slider/Slider$OnChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/ui/SyncFragment;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/ui/SyncFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda20;->f$0:Lcom/jichi/ob/ui/SyncFragment;

    iput-object p2, p0, Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda20;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onValueChange(Lcom/google/android/material/slider/Slider;FZ)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda20;->f$0:Lcom/jichi/ob/ui/SyncFragment;

    iget-object v1, p0, Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda20;->f$1:Landroid/widget/TextView;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/jichi/ob/ui/SyncFragment;->$r8$lambda$xv2viDJ_qpz_tW3OsQaTOdVYXLE(Lcom/jichi/ob/ui/SyncFragment;Landroid/widget/TextView;Lcom/google/android/material/slider/Slider;FZ)V

    return-void
.end method

.method public final bridge synthetic onValueChange(Ljava/lang/Object;FZ)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/material/slider/Slider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda20;->onValueChange(Lcom/google/android/material/slider/Slider;FZ)V

    return-void
.end method

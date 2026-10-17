.class public final synthetic Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/google/android/material/slider/Slider;

.field public final synthetic f$4:Landroid/widget/TextView;

.field public final synthetic f$5:Lcom/jichi/ob/ui/SyncSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;IILcom/google/android/material/slider/Slider;Landroid/widget/TextView;Lcom/jichi/ob/ui/SyncSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda14;->f$0:Landroid/widget/EditText;

    iput p2, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda14;->f$1:I

    iput p3, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda14;->f$2:I

    iput-object p4, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda14;->f$3:Lcom/google/android/material/slider/Slider;

    iput-object p5, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda14;->f$4:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda14;->f$5:Lcom/jichi/ob/ui/SyncSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda14;->f$0:Landroid/widget/EditText;

    iget v1, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda14;->f$1:I

    iget v2, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda14;->f$2:I

    iget-object v3, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda14;->f$3:Lcom/google/android/material/slider/Slider;

    iget-object v4, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda14;->f$4:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda14;->f$5:Lcom/jichi/ob/ui/SyncSettingsFragment;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/jichi/ob/ui/SyncSettingsFragment;->$r8$lambda$z1Ou252ibGvksnsIkWWfO0x5BaA(Landroid/widget/EditText;IILcom/google/android/material/slider/Slider;Landroid/widget/TextView;Lcom/jichi/ob/ui/SyncSettingsFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

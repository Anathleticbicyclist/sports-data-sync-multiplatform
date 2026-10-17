.class public final synthetic Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public final synthetic f$1:Lcom/jichi/ob/ui/SyncSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/jichi/ob/ui/SyncSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda21;->f$0:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iput-object p2, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda21;->f$1:Lcom/jichi/ob/ui/SyncSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda21;->f$0:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v1, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda21;->f$1:Lcom/jichi/ob/ui/SyncSettingsFragment;

    invoke-static {v0, v1, p1, p2}, Lcom/jichi/ob/ui/SyncSettingsFragment;->$r8$lambda$ltJUZ7x_WbQt8VU5CWou58J9T0Q(Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/jichi/ob/ui/SyncSettingsFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

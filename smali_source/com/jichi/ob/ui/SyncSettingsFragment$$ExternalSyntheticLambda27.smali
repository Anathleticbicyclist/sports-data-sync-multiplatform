.class public final synthetic Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Lcom/jichi/ob/ui/SyncSettingsFragment;

.field public final synthetic f$2:Lcom/jichi/ob/util/TrialLicense;

.field public final synthetic f$3:Landroid/app/Dialog;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/jichi/ob/ui/SyncSettingsFragment;Lcom/jichi/ob/util/TrialLicense;Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda27;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda27;->f$1:Lcom/jichi/ob/ui/SyncSettingsFragment;

    iput-object p3, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda27;->f$2:Lcom/jichi/ob/util/TrialLicense;

    iput-object p4, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda27;->f$3:Landroid/app/Dialog;

    iput-object p5, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda27;->f$4:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda27;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda27;->f$1:Lcom/jichi/ob/ui/SyncSettingsFragment;

    iget-object v2, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda27;->f$2:Lcom/jichi/ob/util/TrialLicense;

    iget-object v3, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda27;->f$3:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/jichi/ob/ui/SyncSettingsFragment$$ExternalSyntheticLambda27;->f$4:Lkotlin/jvm/functions/Function0;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/jichi/ob/ui/SyncSettingsFragment;->showTrialDialogForFeature$lambda$36(Landroid/view/View;Lcom/jichi/ob/ui/SyncSettingsFragment;Lcom/jichi/ob/util/TrialLicense;Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

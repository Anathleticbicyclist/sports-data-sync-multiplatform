.class public final synthetic Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda81;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Lcom/jichi/ob/ui/MergeFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda81;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda81;->f$1:Lcom/jichi/ob/ui/MergeFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda81;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$$ExternalSyntheticLambda81;->f$1:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/jichi/ob/ui/MergeFragment;->$r8$lambda$-BIRP-OaGfmP6DQrMO2IaO1oXk4(Landroid/widget/EditText;Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

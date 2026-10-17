.class public final synthetic Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/ui/CreateTaskFragment;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/CompoundButton;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/ui/CreateTaskFragment;Landroid/widget/EditText;Landroid/widget/CompoundButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda27;->f$0:Lcom/jichi/ob/ui/CreateTaskFragment;

    iput-object p2, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda27;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda27;->f$2:Landroid/widget/CompoundButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda27;->f$0:Lcom/jichi/ob/ui/CreateTaskFragment;

    iget-object v1, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda27;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda27;->f$2:Landroid/widget/CompoundButton;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/jichi/ob/ui/CreateTaskFragment;->wellnessDaysConfirm(Lcom/jichi/ob/ui/CreateTaskFragment;Landroid/widget/EditText;Landroid/widget/CompoundButton;Landroid/content/DialogInterface;I)V

    return-void
.end method

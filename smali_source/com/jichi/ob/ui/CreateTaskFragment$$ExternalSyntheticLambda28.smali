.class public final synthetic Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/CompoundButton;

.field public final synthetic f$1:Lcom/jichi/ob/ui/CreateTaskFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CompoundButton;Lcom/jichi/ob/ui/CreateTaskFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda28;->f$0:Landroid/widget/CompoundButton;

    iput-object p2, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda28;->f$1:Lcom/jichi/ob/ui/CreateTaskFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda28;->f$0:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda28;->f$1:Lcom/jichi/ob/ui/CreateTaskFragment;

    invoke-static {v0, v1, p1, p2}, Lcom/jichi/ob/ui/CreateTaskFragment;->wellnessDaysCancel(Landroid/widget/CompoundButton;Lcom/jichi/ob/ui/CreateTaskFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

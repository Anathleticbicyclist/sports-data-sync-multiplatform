.class public final synthetic Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/jichi/bikecomputer/DisplayActivity;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/bikecomputer/DisplayActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda2;->f$0:Lcom/jichi/bikecomputer/DisplayActivity;

    iput-object p2, p0, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda2;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda2;->f$0:Lcom/jichi/bikecomputer/DisplayActivity;

    iget-object v1, p0, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda2;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Lcom/jichi/bikecomputer/DisplayActivity;->lambda$onCreate$1$com-jichi-bikecomputer-DisplayActivity(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

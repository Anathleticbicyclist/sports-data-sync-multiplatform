.class public final synthetic Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/jichi/bikecomputer/DisplayActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/bikecomputer/DisplayActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda0;->f$0:Lcom/jichi/bikecomputer/DisplayActivity;

    iput-object p2, p0, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda0;->f$0:Lcom/jichi/bikecomputer/DisplayActivity;

    iget-object v1, p0, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/jichi/bikecomputer/DisplayActivity;->lambda$bindSwitch$3$com-jichi-bikecomputer-DisplayActivity(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

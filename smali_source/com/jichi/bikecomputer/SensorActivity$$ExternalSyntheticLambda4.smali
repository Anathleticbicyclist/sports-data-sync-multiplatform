.class public final synthetic Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/jichi/bikecomputer/SensorActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/bikecomputer/SensorActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda4;->f$0:Lcom/jichi/bikecomputer/SensorActivity;

    iput-object p2, p0, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda4;->f$0:Lcom/jichi/bikecomputer/SensorActivity;

    iget-object v1, p0, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jichi/bikecomputer/SensorActivity;->lambda$promptType$4$com-jichi-bikecomputer-SensorActivity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

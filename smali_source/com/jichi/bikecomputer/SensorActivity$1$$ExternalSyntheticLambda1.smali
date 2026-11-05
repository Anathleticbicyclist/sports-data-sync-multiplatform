.class public final synthetic Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/jichi/bikecomputer/SensorActivity$1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/bikecomputer/SensorActivity$1;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda1;->f$0:Lcom/jichi/bikecomputer/SensorActivity$1;

    iput-object p2, p0, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda1;->f$3:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    iput p5, p0, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda1;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda1;->f$0:Lcom/jichi/bikecomputer/SensorActivity$1;

    iget-object v1, p0, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda1;->f$3:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    iget v4, p0, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda1;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jichi/bikecomputer/SensorActivity$1;->lambda$onScannedDevice$0$com-jichi-bikecomputer-SensorActivity$1(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V

    return-void
.end method

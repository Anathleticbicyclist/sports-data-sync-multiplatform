.class Lcom/jichi/bikecomputer/SensorActivity$1;
.super Ljava/lang/Object;
.source "SensorActivity.java"

# interfaces
.implements Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/bikecomputer/SensorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/bikecomputer/SensorActivity;


# direct methods
.method constructor <init>(Lcom/jichi/bikecomputer/SensorActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity$1;->this$0:Lcom/jichi/bikecomputer/SensorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onScannedDevice$0$com-jichi-bikecomputer-SensorActivity$1(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity$1;->this$0:Lcom/jichi/bikecomputer/SensorActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/jichi/bikecomputer/SensorActivity;->access$300(Lcom/jichi/bikecomputer/SensorActivity;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V

    return-void
.end method

.method synthetic lambda$onSensorStatus$1$com-jichi-bikecomputer-SensorActivity$1(Ljava/lang/String;)V
    .locals 2

    .line 0
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity$1;->this$0:Lcom/jichi/bikecomputer/SensorActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity$1;->this$0:Lcom/jichi/bikecomputer/SensorActivity;

    invoke-static {p1}, Lcom/jichi/bikecomputer/SensorActivity;->access$200(Lcom/jichi/bikecomputer/SensorActivity;)V

    return-void
.end method

.method public onCadence(I)V
    .locals 0

    return-void
.end method

.method public onHeartRate(I)V
    .locals 0

    return-void
.end method

.method public onPower(I)V
    .locals 0

    return-void
.end method

.method public onRunCadence(I)V
    .locals 0

    return-void
.end method

.method public onScannedDevice(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V
    .locals 8

    .line 142
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity$1;->this$0:Lcom/jichi/bikecomputer/SensorActivity;

    new-instance v7, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/bikecomputer/SensorActivity$1;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V

    invoke-virtual {v0, v7}, Lcom/jichi/bikecomputer/SensorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSensorStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity$1;->this$0:Lcom/jichi/bikecomputer/SensorActivity;

    new-instance v0, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/jichi/bikecomputer/SensorActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/bikecomputer/SensorActivity$1;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jichi/bikecomputer/SensorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWheelSpeed(F)V
    .locals 0

    return-void
.end method

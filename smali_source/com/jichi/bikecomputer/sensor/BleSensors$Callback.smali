.class public interface abstract Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;
.super Ljava/lang/Object;
.source "BleSensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/sensor/BleSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCadence(I)V
.end method

.method public abstract onHeartRate(I)V
.end method

.method public abstract onPower(I)V
.end method

.method public abstract onRunCadence(I)V
.end method

.method public abstract onScannedDevice(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V
.end method

.method public abstract onSensorStatus(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onWheelSpeed(F)V
.end method

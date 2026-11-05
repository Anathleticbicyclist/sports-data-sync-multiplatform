.class Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;
.super Ljava/lang/Object;
.source "BleSensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/sensor/BleSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleDevice"
.end annotation


# instance fields
.field connected:Z

.field gatt:Landroid/bluetooth/BluetoothGatt;

.field lastCrankRev:J

.field lastCrankTime:J

.field lastWheelRev:J

.field lastWheelTime:J

.field name:Ljava/lang/String;

.field type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 98
    iput-wide v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastCrankRev:J

    .line 99
    iput-wide v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastCrankTime:J

    .line 100
    iput-wide v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastWheelRev:J

    .line 101
    iput-wide v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastWheelTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/jichi/bikecomputer/sensor/BleSensors$1;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;-><init>()V

    return-void
.end method

.class Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;
.super Ljava/lang/Object;
.source "SensorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/SensorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScannedItem"
.end annotation


# instance fields
.field mac:Ljava/lang/String;

.field name:Ljava/lang/String;

.field rssi:I

.field type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->name:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->mac:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    .line 54
    iput p4, p0, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->rssi:I

    return-void
.end method

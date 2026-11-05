.class Lcom/jichi/bikecomputer/sensor/BleSensors$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "BleSensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/sensor/BleSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;


# direct methods
.method constructor <init>(Lcom/jichi/bikecomputer/sensor/BleSensors;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$1;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$1;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {v0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$100(Lcom/jichi/bikecomputer/sensor/BleSensors;)Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$1;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {v0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$100(Lcom/jichi/bikecomputer/sensor/BleSensors;)Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u626b\u63cf\u5931\u8d25 code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, v1, p1}, Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;->onSensorStatus(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 4

    .line 176
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 177
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 180
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 184
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 185
    :cond_4
    iget-object v2, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$1;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {v2, p2}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$000(Lcom/jichi/bikecomputer/sensor/BleSensors;Landroid/bluetooth/le/ScanResult;)Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    move-result-object v2

    .line 186
    sget-object v3, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    if-ne v2, v3, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 187
    :goto_2
    invoke-static {v0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->detectTypeByName(Ljava/lang/String;)Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    move-result-object v2

    .line 189
    :cond_6
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$1;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {v0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$100(Lcom/jichi/bikecomputer/sensor/BleSensors;)Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 190
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$1;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {v0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$100(Lcom/jichi/bikecomputer/sensor/BleSensors;)Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result p2

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;->onScannedDevice(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V

    :cond_7
    :goto_3
    return-void
.end method

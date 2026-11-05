.class Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleSensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/sensor/BleSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GattHandler"
.end annotation


# instance fields
.field private final mac:Ljava/lang/String;

.field final synthetic this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;


# direct methods
.method constructor <init>(Lcom/jichi/bikecomputer/sensor/BleSensors;Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 324
    iput-object p2, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->mac:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 396
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    .line 397
    invoke-static {}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$800()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$1200(Lcom/jichi/bikecomputer/sensor/BleSensors;[B)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$900()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$1300(Lcom/jichi/bikecomputer/sensor/BleSensors;[B)V

    goto :goto_0

    .line 399
    :cond_1
    invoke-static {}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$1000()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$1400(Lcom/jichi/bikecomputer/sensor/BleSensors;[B)V

    goto :goto_0

    .line 400
    :cond_2
    invoke-static {}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$1100()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$1500(Lcom/jichi/bikecomputer/sensor/BleSensors;[B)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    iget-object p1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {p1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$100(Lcom/jichi/bikecomputer/sensor/BleSensors;)Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {p1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$100(Lcom/jichi/bikecomputer/sensor/BleSensors;)Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "\u5fc3\u7387\u9700\u8981\u300c\u8eab\u4f53\u4f20\u611f\u5668\u300d\u6743\u9650\uff0c\u8bf7\u5230\u7cfb\u7edf\u8bbe\u7f6e\u5f00\u542f"

    invoke-interface {p1, p2, v0}, Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;->onSensorStatus(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    .line 329
    iget-object p2, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {p2}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$300(Lcom/jichi/bikecomputer/sensor/BleSensors;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->mac:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    .line 331
    iput-boolean p3, p2, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->connected:Z

    .line 332
    :cond_0
    iget-object p2, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {p2}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$100(Lcom/jichi/bikecomputer/sensor/BleSensors;)Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {p2}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$100(Lcom/jichi/bikecomputer/sensor/BleSensors;)Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    move-result-object p2

    iget-object p3, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->mac:Ljava/lang/String;

    const-string v0, "\u5df2\u8fde\u63a5"

    invoke-interface {p2, p3, v0}, Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;->onSensorStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    :cond_2
    if-nez p3, :cond_6

    if-eqz p2, :cond_3

    const/4 p3, 0x0

    .line 335
    iput-boolean p3, p2, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->connected:Z

    .line 336
    :cond_3
    iget-object p3, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {p3}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$100(Lcom/jichi/bikecomputer/sensor/BleSensors;)Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {p3}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$100(Lcom/jichi/bikecomputer/sensor/BleSensors;)Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    move-result-object p3

    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->mac:Ljava/lang/String;

    const-string v1, "\u5df2\u65ad\u5f00"

    invoke-interface {p3, v0, v1}, Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;->onSensorStatus(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 337
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_5
    if-eqz p2, :cond_6

    const/4 p1, 0x0

    .line 338
    iput-object p1, p2, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    :cond_6
    :goto_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5

    .line 345
    iget-object p2, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {p2}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$300(Lcom/jichi/bikecomputer/sensor/BleSensors;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->mac:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;

    if-eqz p2, :cond_5

    .line 346
    iget-object v0, p2, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    sget-object v1, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    if-ne v0, v1, :cond_5

    .line 347
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    .line 348
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 349
    invoke-static {}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$400()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->HEART_RATE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    goto :goto_1

    .line 353
    :cond_1
    invoke-static {}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$500()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->POWER:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    goto :goto_1

    .line 357
    :cond_2
    invoke-static {}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$600()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 358
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->CADENCE_RUN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    goto :goto_1

    .line 361
    :cond_3
    invoke-static {}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$700()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->CADENCE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    goto :goto_0

    .line 365
    :cond_4
    :goto_1
    sget-object v1, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    if-eq v0, v1, :cond_5

    .line 366
    iput-object v0, p2, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    .line 367
    iget-object p2, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {p2}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$100(Lcom/jichi/bikecomputer/sensor/BleSensors;)Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->this$0:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {p2}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$100(Lcom/jichi/bikecomputer/sensor/BleSensors;)Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    move-result-object p2

    iget-object v1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;->mac:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bc6\u522b\u4e3a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->label:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;->onSensorStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 371
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 372
    invoke-static {}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$800()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$900()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 373
    invoke-static {}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$1000()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/jichi/bikecomputer/sensor/BleSensors;->access$1100()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_8
    const/4 v2, 0x1

    .line 375
    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 380
    :catch_1
    :try_start_1
    const-string v2, "00002902-0000-1000-8000-00805f9b34fb"

    .line 381
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 380
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 383
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 384
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_9
    return-void
.end method

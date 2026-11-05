.class public Lcom/jichi/bikecomputer/sensor/BleSensors;
.super Ljava/lang/Object;
.source "BleSensors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;,
        Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;,
        Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;,
        Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;
    }
.end annotation


# static fields
.field private static final CP_POWER:Ljava/util/UUID;

.field private static final CP_SERVICE:Ljava/util/UUID;

.field private static final CSC_MEASURE:Ljava/util/UUID;

.field private static final CSC_SERVICE:Ljava/util/UUID;

.field private static final HR_MEASURE:Ljava/util/UUID;

.field private static final HR_SERVICE:Ljava/util/UUID;

.field private static final RSC_MEASURE:Ljava/util/UUID;

.field private static final RSC_SERVICE:Ljava/util/UUID;


# instance fields
.field private adapter:Landroid/bluetooth/BluetoothAdapter;

.field private final bm:Landroid/bluetooth/BluetoothManager;

.field private cb:Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

.field private final devices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final main:Landroid/os/Handler;

.field private final scanCb:Landroid/bluetooth/le/ScanCallback;

.field private scanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private scanning:Z

.field private wheelCircumference:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-string v0, "0000180d-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->HR_SERVICE:Ljava/util/UUID;

    .line 52
    const-string v0, "00002a37-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->HR_MEASURE:Ljava/util/UUID;

    .line 53
    const-string v0, "00001818-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->CP_SERVICE:Ljava/util/UUID;

    .line 54
    const-string v0, "00002a63-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->CP_POWER:Ljava/util/UUID;

    .line 55
    const-string v0, "00001816-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->CSC_SERVICE:Ljava/util/UUID;

    .line 56
    const-string v0, "00002a5b-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->CSC_MEASURE:Ljava/util/UUID;

    .line 57
    const-string v0, "00001814-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->RSC_SERVICE:Ljava/util/UUID;

    .line 58
    const-string v0, "00002a53-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->RSC_MEASURE:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->scanning:Z

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->main:Landroid/os/Handler;

    const-wide v0, 0x4000c49ba5e353f8L    # 2.096

    .line 86
    iput-wide v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->wheelCircumference:D

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->devices:Ljava/util/Map;

    .line 173
    new-instance v0, Lcom/jichi/bikecomputer/sensor/BleSensors$1;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/sensor/BleSensors$1;-><init>(Lcom/jichi/bikecomputer/sensor/BleSensors;)V

    iput-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->scanCb:Landroid/bluetooth/le/ScanCallback;

    .line 105
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->bm:Landroid/bluetooth/BluetoothManager;

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->adapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/jichi/bikecomputer/sensor/BleSensors;Landroid/bluetooth/le/ScanResult;)Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->detectType(Landroid/bluetooth/le/ScanResult;)Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/jichi/bikecomputer/sensor/BleSensors;)Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->cb:Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/util/UUID;
    .locals 1

    .line 32
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->CSC_MEASURE:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/UUID;
    .locals 1

    .line 32
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->RSC_MEASURE:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jichi/bikecomputer/sensor/BleSensors;[B)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->parseHeartRate([B)V

    return-void
.end method

.method static synthetic access$1300(Lcom/jichi/bikecomputer/sensor/BleSensors;[B)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->parsePower([B)V

    return-void
.end method

.method static synthetic access$1400(Lcom/jichi/bikecomputer/sensor/BleSensors;[B)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->parseCsc([B)V

    return-void
.end method

.method static synthetic access$1500(Lcom/jichi/bikecomputer/sensor/BleSensors;[B)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->parseRsc([B)V

    return-void
.end method

.method static synthetic access$300(Lcom/jichi/bikecomputer/sensor/BleSensors;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->devices:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/UUID;
    .locals 1

    .line 32
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->HR_SERVICE:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/UUID;
    .locals 1

    .line 32
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->CP_SERVICE:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/UUID;
    .locals 1

    .line 32
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->RSC_SERVICE:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/UUID;
    .locals 1

    .line 32
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->CSC_SERVICE:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/UUID;
    .locals 1

    .line 32
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->HR_MEASURE:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/UUID;
    .locals 1

    .line 32
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->CP_POWER:Ljava/util/UUID;

    return-object v0
.end method

.method public static crankRpm(JJ)F
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/high16 v3, -0x40800000    # -1.0f

    if-ltz v2, :cond_1

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-double p0, p0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    mul-double/2addr p0, v0

    long-to-double p2, p2

    div-double/2addr p0, p2

    const-wide/high16 p2, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, p2

    const-wide/16 p2, 0x0

    cmpl-double p2, p0, p2

    if-lez p2, :cond_1

    const-wide p2, 0x4072c00000000000L    # 300.0

    cmpg-double p2, p0, p2

    if-gtz p2, :cond_1

    double-to-float v3, p0

    :cond_1
    :goto_0
    return v3
.end method

.method private detectType(Landroid/bluetooth/le/ScanResult;)Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;
    .locals 2

    .line 123
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object p1

    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 128
    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/jichi/bikecomputer/sensor/BleSensors;->HR_SERVICE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->HEART_RATE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object p1

    .line 130
    :cond_2
    sget-object v1, Lcom/jichi/bikecomputer/sensor/BleSensors;->CP_SERVICE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->POWER:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object p1

    .line 131
    :cond_3
    sget-object v1, Lcom/jichi/bikecomputer/sensor/BleSensors;->CSC_SERVICE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->CADENCE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object p1

    .line 132
    :cond_4
    sget-object v1, Lcom/jichi/bikecomputer/sensor/BleSensors;->RSC_SERVICE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->CADENCE_RUN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object p1

    .line 134
    :cond_5
    sget-object p1, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object p1

    .line 124
    :cond_6
    :goto_0
    sget-object p1, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object p1
.end method

.method public static detectTypeByName(Ljava/lang/String;)Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;
    .locals 1

    if-nez p0, :cond_0

    .line 142
    sget-object p0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object p0

    .line 143
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 144
    const-string v0, "power"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "pwr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "quarq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "power2max"

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "assioma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "4iiii"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "stages"

    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "favero"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "vector"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "p2m"

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "\u529f\u7387"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 149
    :cond_1
    const-string v0, "heart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "tickr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "magene h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "mooch"

    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "beats"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "chest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "\u5fc3\u7387"

    .line 151
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "h10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "h9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "h7"

    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "dual"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "verity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "hr-"

    .line 153
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "-hr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "hrm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "heartrate"

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "hr "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 157
    :cond_2
    const-string v0, "stryd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u8dd1\u6b65"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "rsc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "spm"

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "run cad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "cadence run"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "footpod"

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u6b65\u9891"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 161
    :cond_3
    const-string v0, "cad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "speed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "rpm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "bike"

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "garmin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "wahoo"

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "bryton"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "igpsport"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "xoss"

    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "magene"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\u8fc8\u91d1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\u884c\u8005"

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\u767e\u9510\u817e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\u9ed1\u9e1f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "igp"

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "duo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "topeak"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cateye"

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "sigma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "vetta"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "wheel"

    .line 168
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\u8f6e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    .line 170
    :cond_4
    sget-object p0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object p0

    .line 169
    :cond_5
    :goto_0
    sget-object p0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->CADENCE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object p0

    .line 160
    :cond_6
    :goto_1
    sget-object p0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->CADENCE_RUN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object p0

    .line 155
    :cond_7
    :goto_2
    sget-object p0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->HEART_RATE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object p0

    .line 148
    :cond_8
    :goto_3
    sget-object p0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->POWER:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object p0
.end method

.method private static le([BII)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v3, p1, v2

    .line 515
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private parseCsc([B)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_c

    .line 477
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v2, 0x0

    .line 478
    aget-byte v2, v1, v2

    and-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    if-eqz v4, :cond_1

    .line 481
    array-length v4, v1

    const/4 v8, 0x7

    if-lt v4, v8, :cond_1

    const/4 v4, 0x4

    .line 482
    invoke-static {v1, v5, v4}, Lcom/jichi/bikecomputer/sensor/BleSensors;->le([BII)J

    move-result-wide v4

    const/4 v9, 0x5

    .line 483
    invoke-static {v1, v9, v3}, Lcom/jichi/bikecomputer/sensor/BleSensors;->le([BII)J

    move-result-wide v9

    goto :goto_0

    :cond_1
    move v8, v5

    move-wide v4, v6

    move-wide v9, v4

    :goto_0
    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 486
    array-length v2, v1

    add-int/lit8 v11, v8, 0x4

    if-lt v2, v11, :cond_2

    .line 487
    invoke-static {v1, v8, v3}, Lcom/jichi/bikecomputer/sensor/BleSensors;->le([BII)J

    move-result-wide v6

    add-int/2addr v8, v3

    .line 488
    invoke-static {v1, v8, v3}, Lcom/jichi/bikecomputer/sensor/BleSensors;->le([BII)J

    move-result-wide v1

    goto :goto_1

    :cond_2
    move-wide v1, v6

    .line 492
    :goto_1
    iget-object v3, v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->devices:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;

    .line 493
    iget-boolean v11, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->connected:Z

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v11, 0x0

    cmp-long v13, v6, v11

    if-ltz v13, :cond_5

    cmp-long v15, v1, v11

    if-ltz v15, :cond_5

    .line 494
    iget-wide v14, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastCrankRev:J

    cmp-long v14, v14, v11

    if-ltz v14, :cond_5

    iget-wide v14, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastCrankTime:J

    cmp-long v14, v14, v11

    if-ltz v14, :cond_5

    .line 495
    iget-wide v14, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastCrankRev:J

    sub-long v14, v6, v14

    .line 496
    iget-wide v11, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastCrankTime:J

    sub-long v11, v1, v11

    .line 497
    invoke-static {v14, v15, v11, v12}, Lcom/jichi/bikecomputer/sensor/BleSensors;->crankRpm(JJ)F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v14, v11, v12

    if-lez v14, :cond_4

    .line 498
    iget-object v12, v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->cb:Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    if-eqz v12, :cond_4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {v12, v11}, Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;->onCadence(I)V

    :cond_4
    const-wide/16 v11, 0x0

    :cond_5
    cmp-long v14, v4, v11

    if-ltz v14, :cond_6

    cmp-long v15, v9, v11

    if-ltz v15, :cond_6

    move-wide/from16 v16, v6

    .line 500
    iget-wide v6, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastWheelRev:J

    cmp-long v6, v6, v11

    if-ltz v6, :cond_7

    iget-wide v6, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastWheelTime:J

    cmp-long v6, v6, v11

    if-ltz v6, :cond_7

    .line 501
    iget-wide v6, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastWheelRev:J

    sub-long v18, v4, v6

    .line 502
    iget-wide v6, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastWheelTime:J

    sub-long v20, v9, v6

    .line 503
    iget-wide v6, v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->wheelCircumference:D

    move-wide/from16 v22, v6

    invoke-static/range {v18 .. v23}, Lcom/jichi/bikecomputer/sensor/BleSensors;->wheelMps(JJD)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_7

    .line 504
    iget-object v7, v0, Lcom/jichi/bikecomputer/sensor/BleSensors;->cb:Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    if-eqz v7, :cond_7

    invoke-interface {v7, v6}, Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;->onWheelSpeed(F)V

    goto :goto_3

    :cond_6
    move-wide/from16 v16, v6

    :cond_7
    :goto_3
    if-ltz v13, :cond_8

    move-wide/from16 v6, v16

    goto :goto_4

    .line 506
    :cond_8
    iget-wide v6, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastCrankRev:J

    :goto_4
    iput-wide v6, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastCrankRev:J

    const-wide/16 v6, 0x0

    cmp-long v11, v1, v6

    if-ltz v11, :cond_9

    move-wide v11, v1

    goto :goto_5

    .line 507
    :cond_9
    iget-wide v11, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastCrankTime:J

    :goto_5
    iput-wide v11, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastCrankTime:J

    if-ltz v14, :cond_a

    move-wide v11, v4

    goto :goto_6

    .line 508
    :cond_a
    iget-wide v11, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastWheelRev:J

    :goto_6
    iput-wide v11, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastWheelRev:J

    cmp-long v6, v9, v6

    if-ltz v6, :cond_b

    move-wide v6, v9

    goto :goto_7

    .line 509
    :cond_b
    iget-wide v6, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastWheelTime:J

    :goto_7
    iput-wide v6, v8, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->lastWheelTime:J

    move-wide/from16 v6, v16

    goto/16 :goto_2

    :cond_c
    :goto_8
    return-void
.end method

.method private parseHeartRate([B)V
    .locals 5

    if-eqz p1, :cond_3

    .line 410
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 411
    aget-byte v0, p1, v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    const/16 v3, 0xff

    if-nez v0, :cond_1

    .line 414
    aget-byte p1, p1, v2

    and-int/2addr p1, v3

    goto :goto_0

    .line 416
    :cond_1
    array-length v0, p1

    const/4 v4, 0x3

    if-ge v0, v4, :cond_2

    return-void

    .line 417
    :cond_2
    aget-byte v0, p1, v1

    and-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x8

    aget-byte p1, p1, v2

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    :goto_0
    if-lez p1, :cond_3

    if-ge p1, v3, :cond_3

    .line 419
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->cb:Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;->onHeartRate(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private parsePower([B)V
    .locals 1

    .line 431
    invoke-static {p1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->parsePowerBytes([B)I

    move-result p1

    if-ltz p1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->cb:Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;->onPower(I)V

    :cond_0
    return-void
.end method

.method public static parsePowerBytes([B)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p0, :cond_2

    .line 424
    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 425
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x2

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    if-ltz p0, :cond_2

    const/16 v1, 0xfa0

    if-le p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private parseRsc([B)V
    .locals 1

    .line 451
    invoke-static {p1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->rscCadence([B)I

    move-result p1

    if-lez p1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->cb:Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;->onRunCadence(I)V

    :cond_0
    return-void
.end method

.method public static rscCadence([B)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    .line 440
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 441
    aget-byte v1, p0, v1

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    .line 444
    :cond_1
    array-length v1, p0

    add-int/lit8 v4, v3, 0x1

    if-ge v1, v4, :cond_2

    return v0

    .line 445
    :cond_2
    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    mul-int/2addr p0, v2

    if-lez p0, :cond_3

    const/16 v1, 0x12c

    if-gt p0, v1, :cond_3

    move v0, p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static wheelMps(JJD)F
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/high16 v3, -0x40800000    # -1.0f

    if-ltz v2, :cond_1

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    const-wide/32 v0, 0xf000

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-double p0, p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    long-to-double p2, p2

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p2, v0

    mul-double/2addr p0, p4

    div-double/2addr p0, p2

    double-to-float p0, p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_1

    const/high16 p1, 0x42700000    # 60.0f

    cmpg-float p1, p0, p1

    if-gtz p1, :cond_1

    move v3, p0

    :cond_1
    :goto_0
    return v3
.end method


# virtual methods
.method public anyConnected()Z
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->connectedCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public connect(Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;)V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->devices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;

    if-eqz v0, :cond_1

    .line 232
    iget-boolean v1, v0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->connected:Z

    if-eqz v1, :cond_1

    .line 233
    iput-object p2, v0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-void

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 238
    new-instance v0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;

    invoke-direct {v0, v2}, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;-><init>(Lcom/jichi/bikecomputer/sensor/BleSensors$1;)V

    .line 239
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, p1

    :goto_0
    iput-object v3, v0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->name:Ljava/lang/String;

    .line 240
    iput-object p2, v0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    .line 241
    iget-object v3, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->devices:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_3
    iput-object p2, v0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    .line 244
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->stopScan()V

    .line 246
    :try_start_0
    new-instance p2, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;

    invoke-direct {p2, p0, p1}, Lcom/jichi/bikecomputer/sensor/BleSensors$GattHandler;-><init>(Lcom/jichi/bikecomputer/sensor/BleSensors;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    iput-object p2, v0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 248
    :catch_0
    iget-object p2, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->cb:Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    if-eqz p2, :cond_4

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff1a\u65e0\u84dd\u7259\u6743\u9650"

    invoke-interface {p2, p1, v0}, Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;->onSensorStatus(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public connectedCount()I
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;

    iget-boolean v2, v2, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->connected:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->devices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;

    if-nez p1, :cond_0

    return-void

    .line 270
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public disconnectAll()V
    .locals 2

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->devices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    invoke-virtual {p0, v1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->disconnect(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forget(Ljava/lang/String;)V
    .locals 1

    .line 277
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->disconnect(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->devices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;

    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p1, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 281
    :try_start_0
    iget-object p1, p1, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public hasBluetooth()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->devices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;

    if-eqz p1, :cond_0

    .line 296
    iget-boolean p1, p1, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->connected:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public nameOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->devices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;

    if-eqz v0, :cond_0

    .line 306
    iget-object p1, v0, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->name:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public restoreBindings(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 257
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->valueOf(Ljava/lang/String;)Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    move-result-object v1

    .line 258
    sget-object v2, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->connect(Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setCallback(Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->cb:Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;

    return-void
.end method

.method public setWheelCircumference(D)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide p1, 0x4000c49ba5e353f8L    # 2.096

    .line 114
    :goto_0
    iput-wide p1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->wheelCircumference:D

    return-void
.end method

.method public startScan()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-boolean v1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->scanning:Z

    if-eqz v1, :cond_1

    return-void

    .line 204
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->scanning:Z

    .line 207
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x2

    .line 208
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->scanCb:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v2, v0, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 520
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->stopScan()V

    .line 521
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->disconnectAll()V

    return-void
.end method

.method public stopScan()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->scanning:Z

    if-eqz v1, :cond_0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->scanCb:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->scanning:Z

    return-void
.end method

.method public typeOf(Ljava/lang/String;)Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BleSensors;->devices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p1, Lcom/jichi/bikecomputer/sensor/BleSensors$BleDevice;->type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    :goto_0
    return-object p1
.end method

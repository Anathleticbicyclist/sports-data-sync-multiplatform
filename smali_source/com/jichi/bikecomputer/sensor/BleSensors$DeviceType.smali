.class public final enum Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;
.super Ljava/lang/Enum;
.source "BleSensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/sensor/BleSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

.field public static final enum CADENCE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

.field public static final enum CADENCE_RUN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

.field public static final enum HEART_RATE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

.field public static final enum POWER:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

.field public static final enum SPEED:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

.field public static final enum UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;


# instance fields
.field public final label:Ljava/lang/String;

.field public final serviceUuid:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;
    .locals 6

    .line 34
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->HEART_RATE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    sget-object v1, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->POWER:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    sget-object v2, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->CADENCE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    sget-object v3, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->SPEED:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    sget-object v4, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->CADENCE_RUN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    sget-object v5, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    filled-new-array/range {v0 .. v5}, [Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    const-string v1, "\u5fc3\u7387\u8ba1"

    const-string v2, "0000180d-0000-1000-8000-00805f9b34fb"

    const-string v3, "HEART_RATE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->HEART_RATE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    .line 36
    new-instance v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    const-string v1, "\u529f\u7387\u8ba1"

    const-string v2, "00001818-0000-1000-8000-00805f9b34fb"

    const-string v3, "POWER"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->POWER:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    .line 37
    new-instance v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    const-string v1, "CADENCE"

    const/4 v2, 0x2

    const-string v3, "\u8e0f\u9891\u8ba1"

    const-string v4, "00001816-0000-1000-8000-00805f9b34fb"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->CADENCE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    .line 38
    new-instance v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    const/4 v1, 0x3

    const-string v2, "\u901f\u5ea6\u8ba1"

    const-string v3, "SPEED"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->SPEED:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    .line 39
    new-instance v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    const-string v1, "\u6b65\u9891\u8ba1"

    const-string v2, "00001814-0000-1000-8000-00805f9b34fb"

    const-string v3, "CADENCE_RUN"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->CADENCE_RUN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    .line 40
    new-instance v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    const-string v1, "\u672a\u77e5\u8bbe\u5907"

    const/4 v2, 0x0

    const-string v3, "UNKNOWN"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    .line 34
    invoke-static {}, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->$values()[Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    move-result-object v0

    sput-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->$VALUES:[Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->label:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->serviceUuid:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;
    .locals 1

    .line 34
    const-class v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;
    .locals 1

    .line 34
    sget-object v0, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->$VALUES:[Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    invoke-virtual {v0}, [Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    return-object v0
.end method

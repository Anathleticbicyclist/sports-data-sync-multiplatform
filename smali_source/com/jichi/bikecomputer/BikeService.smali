.class public Lcom/jichi/bikecomputer/BikeService;
.super Landroid/app/Service;
.source "BikeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/bikecomputer/BikeService$Listener;,
        Lcom/jichi/bikecomputer/BikeService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_PAUSE:Ljava/lang/String; = "com.jichi.bikecomputer.action.PAUSE"

.field public static final ACTION_RESUME:Ljava/lang/String; = "com.jichi.bikecomputer.action.RESUME"

.field public static final ACTION_START:Ljava/lang/String; = "com.jichi.bikecomputer.action.START"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.jichi.bikecomputer.action.STOP"

.field public static final EXTRA_SPORT:Ljava/lang/String; = "sport"

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_RECORDING:I = 0x1


# instance fields
.field private accel:Landroid/hardware/Sensor;

.field private baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

.field private final binder:Landroid/os/IBinder;

.field private ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

.field private gps:Lcom/jichi/bikecomputer/sensor/GpsTracker;

.field private lastBaroAlt:D

.field private lastCad:I

.field private lastHr:I

.field private lastPressure:F

.field private lastRunCad:I

.field private lastStepAtMs:J

.field private lastWheelSpeed:F

.field private listener:Lcom/jichi/bikecomputer/BikeService$Listener;

.field private final main:Landroid/os/Handler;

.field private pauseStartTs:J

.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/bikecomputer/model/TrackPoint;",
            ">;"
        }
    .end annotation
.end field

.field private power3s:I

.field private final powerBuf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation
.end field

.field private prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

.field private recordFile:Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;

.field private sm:Landroid/hardware/SensorManager;

.field private sport:Lcom/jichi/bikecomputer/model/SportType;

.field private startMs:J

.field private state:I

.field private stats:Lcom/jichi/bikecomputer/model/TrackStats;

.field private stepCount:I

.field private volatile stepFreqSpm:I

.field private final stepListener:Landroid/hardware/SensorEventListener;

.field private stepWindowStartMs:J

.field private store:Lcom/jichi/bikecomputer/store/TrackStore;

.field private totalPausedMs:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    new-instance v0, Lcom/jichi/bikecomputer/BikeService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/BikeService$LocalBinder;-><init>(Lcom/jichi/bikecomputer/BikeService;)V

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->binder:Landroid/os/IBinder;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->main:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/jichi/bikecomputer/BikeService;->state:I

    .line 63
    sget-object v1, Lcom/jichi/bikecomputer/model/SportType;->CYCLING:Lcom/jichi/bikecomputer/model/SportType;

    iput-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->sport:Lcom/jichi/bikecomputer/model/SportType;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->points:Ljava/util/List;

    .line 65
    new-instance v1, Lcom/jichi/bikecomputer/model/TrackStats;

    invoke-direct {v1}, Lcom/jichi/bikecomputer/model/TrackStats;-><init>()V

    iput-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->stats:Lcom/jichi/bikecomputer/model/TrackStats;

    const-wide/16 v1, 0x0

    .line 66
    iput-wide v1, p0, Lcom/jichi/bikecomputer/BikeService;->startMs:J

    const-wide/16 v3, -0x1

    .line 67
    iput-wide v3, p0, Lcom/jichi/bikecomputer/BikeService;->pauseStartTs:J

    .line 68
    iput-wide v1, p0, Lcom/jichi/bikecomputer/BikeService;->totalPausedMs:J

    const/4 v3, 0x0

    .line 69
    iput v3, p0, Lcom/jichi/bikecomputer/BikeService;->lastPressure:F

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 70
    iput-wide v4, p0, Lcom/jichi/bikecomputer/BikeService;->lastBaroAlt:D

    .line 71
    iput v0, p0, Lcom/jichi/bikecomputer/BikeService;->lastHr:I

    .line 72
    iput v0, p0, Lcom/jichi/bikecomputer/BikeService;->lastCad:I

    .line 73
    iput v0, p0, Lcom/jichi/bikecomputer/BikeService;->lastRunCad:I

    .line 74
    iput v3, p0, Lcom/jichi/bikecomputer/BikeService;->lastWheelSpeed:F

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/jichi/bikecomputer/BikeService;->powerBuf:Ljava/util/List;

    .line 77
    iput v0, p0, Lcom/jichi/bikecomputer/BikeService;->power3s:I

    .line 81
    iput-wide v1, p0, Lcom/jichi/bikecomputer/BikeService;->lastStepAtMs:J

    .line 82
    iput v0, p0, Lcom/jichi/bikecomputer/BikeService;->stepCount:I

    .line 83
    iput-wide v1, p0, Lcom/jichi/bikecomputer/BikeService;->stepWindowStartMs:J

    .line 84
    iput v0, p0, Lcom/jichi/bikecomputer/BikeService;->stepFreqSpm:I

    .line 421
    new-instance v0, Lcom/jichi/bikecomputer/BikeService$4;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/BikeService$4;-><init>(Lcom/jichi/bikecomputer/BikeService;)V

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->stepListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jichi/bikecomputer/BikeService;Landroid/location/Location;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/BikeService;->onGpsLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jichi/bikecomputer/BikeService;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/jichi/bikecomputer/BikeService;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/jichi/bikecomputer/BikeService;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/jichi/bikecomputer/BikeService;->lastWheelSpeed:F

    return p1
.end method

.method static synthetic access$1100(Lcom/jichi/bikecomputer/BikeService;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/jichi/bikecomputer/BikeService;->lastStepAtMs:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/jichi/bikecomputer/BikeService;J)J
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/jichi/bikecomputer/BikeService;->lastStepAtMs:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/jichi/bikecomputer/BikeService;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/jichi/bikecomputer/BikeService;->stepCount:I

    return p0
.end method

.method static synthetic access$1202(Lcom/jichi/bikecomputer/BikeService;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/jichi/bikecomputer/BikeService;->stepCount:I

    return p1
.end method

.method static synthetic access$1208(Lcom/jichi/bikecomputer/BikeService;)I
    .locals 2

    .line 37
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->stepCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jichi/bikecomputer/BikeService;->stepCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/jichi/bikecomputer/BikeService;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/jichi/bikecomputer/BikeService;->stepWindowStartMs:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/jichi/bikecomputer/BikeService;J)J
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/jichi/bikecomputer/BikeService;->stepWindowStartMs:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/jichi/bikecomputer/BikeService;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/jichi/bikecomputer/BikeService;->stepFreqSpm:I

    return p1
.end method

.method static synthetic access$200(Lcom/jichi/bikecomputer/BikeService;)Lcom/jichi/bikecomputer/BikeService$Listener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/jichi/bikecomputer/BikeService;->listener:Lcom/jichi/bikecomputer/BikeService$Listener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jichi/bikecomputer/BikeService;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/jichi/bikecomputer/BikeService;->lastPressure:F

    return p1
.end method

.method static synthetic access$402(Lcom/jichi/bikecomputer/BikeService;D)D
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/jichi/bikecomputer/BikeService;->lastBaroAlt:D

    return-wide p1
.end method

.method static synthetic access$502(Lcom/jichi/bikecomputer/BikeService;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/jichi/bikecomputer/BikeService;->lastHr:I

    return p1
.end method

.method static synthetic access$600(Lcom/jichi/bikecomputer/BikeService;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/jichi/bikecomputer/BikeService;->powerBuf:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jichi/bikecomputer/BikeService;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/jichi/bikecomputer/BikeService;->power3s:I

    return p1
.end method

.method static synthetic access$802(Lcom/jichi/bikecomputer/BikeService;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/jichi/bikecomputer/BikeService;->lastCad:I

    return p1
.end method

.method static synthetic access$902(Lcom/jichi/bikecomputer/BikeService;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/jichi/bikecomputer/BikeService;->lastRunCad:I

    return p1
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 6

    .line 493
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->state:I

    const-string v1, " \u00b7 "

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u8bb0\u5f55\u4e2d \u00b7 "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jichi/bikecomputer/BikeService;->elapsedMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/jichi/bikecomputer/BikeService;->fmtTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->stats:Lcom/jichi/bikecomputer/model/TrackStats;

    iget-wide v3, v1, Lcom/jichi/bikecomputer/model/TrackStats;->distanceM:D

    invoke-static {v3, v4}, Lcom/jichi/bikecomputer/BikeService;->fmtKm(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u5df2\u6682\u505c \u00b7 "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jichi/bikecomputer/BikeService;->elapsedMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/jichi/bikecomputer/BikeService;->fmtTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->stats:Lcom/jichi/bikecomputer/model/TrackStats;

    iget-wide v3, v1, Lcom/jichi/bikecomputer/model/TrackStats;->distanceM:D

    invoke-static {v3, v4}, Lcom/jichi/bikecomputer/BikeService;->fmtKm(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 498
    :cond_1
    const-string v0, "\u7801\u8868"

    .line 500
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/jichi/bikecomputer/BikeActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    .line 501
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 503
    new-instance v3, Landroid/app/Notification$Builder;

    const-string v4, "bike_record"

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4e34\u65f6\u7801\u8868 \u00b7 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jichi/bikecomputer/BikeService;->sport:Lcom/jichi/bikecomputer/model/SportType;

    iget-object v5, v5, Lcom/jichi/bikecomputer/model/SportType;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 504
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 505
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v3, 0x1080047

    .line 506
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 507
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 508
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private createChannel()V
    .locals 5

    .line 181
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/BikeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 182
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "\u7801\u8868\u8bb0\u5f55"

    const/4 v3, 0x2

    const-string v4, "bike_record"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 184
    const-string v2, "\u8bb0\u5f55\u8fdb\u884c\u4e2d\u7684\u901a\u77e5"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method static fmtKm(D)Ljava/lang/String;
    .locals 3

    const-wide v0, 0x408f400000000000L    # 1000.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    .line 518
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.0fm"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 519
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.2fkm"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static fmtTime(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3e8

    .line 513
    div-long/2addr p0, v0

    .line 514
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-wide/16 v1, 0xe10

    div-long v1, p0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x3c

    div-long v4, p0, v2

    rem-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    rem-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v1, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d:%02d:%02d"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onCreateBody()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/BikeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-direct {v1, v0}, Lcom/jichi/bikecomputer/sensor/GpsTracker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->gps:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    .line 107
    new-instance v1, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    invoke-direct {v1, v0}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    .line 108
    new-instance v1, Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-direct {v1, v0}, Lcom/jichi/bikecomputer/sensor/BleSensors;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    .line 109
    new-instance v1, Lcom/jichi/bikecomputer/store/TrackStore;

    invoke-direct {v1, v0}, Lcom/jichi/bikecomputer/store/TrackStore;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->store:Lcom/jichi/bikecomputer/store/TrackStore;

    .line 110
    new-instance v1, Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-direct {v1, v0}, Lcom/jichi/bikecomputer/store/PrefsManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    .line 111
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeService;->createChannel()V

    .line 112
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->gps:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    new-instance v1, Lcom/jichi/bikecomputer/BikeService$1;

    invoke-direct {v1, p0}, Lcom/jichi/bikecomputer/BikeService$1;-><init>(Lcom/jichi/bikecomputer/BikeService;)V

    invoke-virtual {v0, v1}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->setCallback(Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;)V

    .line 125
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    new-instance v1, Lcom/jichi/bikecomputer/BikeService$2;

    invoke-direct {v1, p0}, Lcom/jichi/bikecomputer/BikeService$2;-><init>(Lcom/jichi/bikecomputer/BikeService;)V

    invoke-virtual {v0, v1}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->setCallback(Lcom/jichi/bikecomputer/sensor/BaroAltimeter$Callback;)V

    .line 132
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    new-instance v1, Lcom/jichi/bikecomputer/BikeService$3;

    invoke-direct {v1, p0}, Lcom/jichi/bikecomputer/BikeService$3;-><init>(Lcom/jichi/bikecomputer/BikeService;)V

    invoke-virtual {v0, v1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->setCallback(Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;)V

    return-void
.end method

.method private onGpsLocation(Landroid/location/Location;)V
    .locals 11

    .line 308
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 310
    iget-wide v4, p0, Lcom/jichi/bikecomputer/BikeService;->startMs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_1
    move-wide v5, v2

    .line 311
    new-instance v0, Lcom/jichi/bikecomputer/model/TrackPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/jichi/bikecomputer/model/TrackPoint;-><init>(JDD)V

    .line 312
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    iput-wide v2, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->altGps:D

    .line 313
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput v2, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->speed:F

    .line 314
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput v2, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->bearing:F

    .line 315
    iget v2, p0, Lcom/jichi/bikecomputer/BikeService;->lastPressure:F

    iput v2, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->pressure:F

    .line 318
    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    invoke-virtual {v2}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->hasBarometer()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    invoke-virtual {v2}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->isCalibrated()Z

    move-result v2

    if-nez v2, :cond_5

    iget-wide v4, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->altGps:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/jichi/bikecomputer/BikeService;->lastPressure:F

    const/high16 v4, 0x43fa0000    # 500.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    .line 319
    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    iget-wide v4, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->altGps:D

    iget v6, p0, Lcom/jichi/bikecomputer/BikeService;->lastPressure:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->calibrate(DF)V

    .line 321
    :cond_5
    iget-wide v4, p0, Lcom/jichi/bikecomputer/BikeService;->lastBaroAlt:D

    iput-wide v4, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->altBaro:D

    .line 322
    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    iget-wide v4, p0, Lcom/jichi/bikecomputer/BikeService;->lastBaroAlt:D

    iget-wide v6, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->altGps:D

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->resolve(DD)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->alt:D

    .line 323
    iget v2, p0, Lcom/jichi/bikecomputer/BikeService;->lastHr:I

    iput v2, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->heartRate:I

    .line 324
    iget v2, p0, Lcom/jichi/bikecomputer/BikeService;->lastCad:I

    iput v2, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->cadence:I

    .line 325
    iget v2, p0, Lcom/jichi/bikecomputer/BikeService;->power3s:I

    iput v2, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->power:I

    .line 326
    iget v2, p0, Lcom/jichi/bikecomputer/BikeService;->lastWheelSpeed:F

    iput v2, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->wheelSpeed:F

    .line 328
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v3

    :cond_6
    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float v2, v3, p1

    if-lez v2, :cond_7

    .line 330
    iput v3, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->speed:F

    goto :goto_3

    .line 331
    :cond_7
    iget v2, p0, Lcom/jichi/bikecomputer/BikeService;->lastWheelSpeed:F

    cmpl-float p1, v2, p1

    if-lez p1, :cond_8

    .line 332
    iput v2, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->speed:F

    .line 335
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jichi/bikecomputer/model/TrackPoint;

    .line 336
    :goto_4
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->points:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->stats:Lcom/jichi/bikecomputer/model/TrackStats;

    invoke-virtual {v1, p1, v0}, Lcom/jichi/bikecomputer/model/TrackStats;->update(Lcom/jichi/bikecomputer/model/TrackPoint;Lcom/jichi/bikecomputer/model/TrackPoint;)V

    .line 338
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService;->recordFile:Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 339
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService;->recordFile:Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;

    invoke-virtual {p1, v0}, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->append(Lcom/jichi/bikecomputer/model/TrackPoint;)V

    .line 341
    :cond_a
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService;->main:Landroid/os/Handler;

    new-instance v0, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda4;-><init>(Lcom/jichi/bikecomputer/BikeService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startStepSensor()V
    .locals 4

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->sm:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/BikeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->sm:Landroid/hardware/SensorManager;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->accel:Landroid/hardware/Sensor;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->accel:Landroid/hardware/Sensor;

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->accel:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeService;->sm:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/jichi/bikecomputer/BikeService;->stepListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private stopStepSensor()V
    .locals 2

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->sm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->stepListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private updateNotification()V
    .locals 3

    .line 487
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/BikeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    .line 488
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeService;->buildNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized activeMs()J
    .locals 2

    monitor-enter p0

    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/BikeService;->elapsedMs()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized baroAltitude()D
    .locals 2

    monitor-enter p0

    .line 387
    :try_start_0
    iget-wide v0, p0, Lcom/jichi/bikecomputer/BikeService;->lastBaroAlt:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized baroStatus()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    if-nez v0, :cond_0

    const-string v0, "\u6c14\u538b\u8ba1\u4e0d\u53ef\u7528"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 396
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->hasBarometer()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u65e0\u6c14\u538b\u8ba1(GPS\u6d77\u62d4)"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 397
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->isRegisterFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6c14\u538b\u8ba1\u6ce8\u518c\u5931\u8d25"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 398
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->hasData()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u6c14\u538b\u8ba1(\u7b49\u5f85\u6570\u636e)"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 399
    :cond_3
    :try_start_4
    const-string v0, "\u6c14\u538b\u8ba1"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bleConnected()Z
    .locals 1

    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->anyConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized elapsedMs()J
    .locals 6

    monitor-enter p0

    .line 347
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->stats:Lcom/jichi/bikecomputer/model/TrackStats;

    iget-wide v0, v0, Lcom/jichi/bikecomputer/model/TrackStats;->elapsedMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 348
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jichi/bikecomputer/BikeService;->startMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/jichi/bikecomputer/BikeService;->totalPausedMs:J

    sub-long/2addr v0, v2

    .line 349
    iget-wide v2, p0, Lcom/jichi/bikecomputer/BikeService;->pauseStartTs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jichi/bikecomputer/BikeService;->pauseStartTs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 350
    :cond_1
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/bikecomputer/model/TrackPoint;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 362
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->points:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSport()Lcom/jichi/bikecomputer/model/SportType;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->sport:Lcom/jichi/bikecomputer/model/SportType;

    return-object v0
.end method

.method public declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    .line 366
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStats()Lcom/jichi/bikecomputer/model/TrackStats;
    .locals 1

    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->stats:Lcom/jichi/bikecomputer/model/TrackStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized gpsAccuracy()F
    .locals 1

    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->gps:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->getLastAccuracy()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const v0, 0x4479c000    # 999.0f

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized gpsFix()Z
    .locals 1

    monitor-enter p0

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->gps:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->hasFix()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasBaro()Z
    .locals 1

    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->hasBarometer()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isGpsSpeedPrimary()Z
    .locals 2

    monitor-enter p0

    .line 479
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->lastWheelSpeed:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$onGpsLocation$4$com-jichi-bikecomputer-BikeService()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->listener:Lcom/jichi/bikecomputer/BikeService$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jichi/bikecomputer/BikeService$Listener;->onTick()V

    :cond_0
    return-void
.end method

.method synthetic lambda$pause$1$com-jichi-bikecomputer-BikeService()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->listener:Lcom/jichi/bikecomputer/BikeService$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jichi/bikecomputer/BikeService$Listener;->onTick()V

    :cond_0
    return-void
.end method

.method synthetic lambda$resume$2$com-jichi-bikecomputer-BikeService()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->listener:Lcom/jichi/bikecomputer/BikeService$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jichi/bikecomputer/BikeService$Listener;->onTick()V

    :cond_0
    return-void
.end method

.method synthetic lambda$startRecording$0$com-jichi-bikecomputer-BikeService()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->listener:Lcom/jichi/bikecomputer/BikeService$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jichi/bikecomputer/BikeService$Listener;->onTick()V

    :cond_0
    return-void
.end method

.method synthetic lambda$stopRecording$3$com-jichi-bikecomputer-BikeService(Ljava/io/File;Ljava/io/File;Lcom/jichi/bikecomputer/model/TrackStats;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->listener:Lcom/jichi/bikecomputer/BikeService$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/jichi/bikecomputer/BikeService$Listener;->onFinished(Ljava/io/File;Ljava/io/File;Lcom/jichi/bikecomputer/model/TrackStats;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized lastCadence()I
    .locals 1

    monitor-enter p0

    .line 456
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->lastCad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastHeartRate()I
    .locals 1

    monitor-enter p0

    .line 452
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->lastHr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastRunCadence()I
    .locals 1

    monitor-enter p0

    .line 461
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->lastRunCad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastWheelSpeed()F
    .locals 1

    monitor-enter p0

    .line 475
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->lastWheelSpeed:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 524
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 96
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeService;->onCreateBody()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 100
    const-string v1, "BikeService"

    const-string v2, "onCreate failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 529
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->gps:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->stop()V

    .line 532
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->stop()V

    .line 533
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    .line 192
    const-string v0, "com.jichi.bikecomputer.action.START"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    const-string p3, "sport"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/jichi/bikecomputer/model/SportType;

    if-eqz p1, :cond_1

    .line 194
    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeService;->sport:Lcom/jichi/bikecomputer/model/SportType;

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/BikeService;->startRecording()V

    goto :goto_0

    .line 196
    :cond_2
    const-string p1, "com.jichi.bikecomputer.action.PAUSE"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 197
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/BikeService;->pause()V

    goto :goto_0

    .line 198
    :cond_3
    const-string p1, "com.jichi.bikecomputer.action.RESUME"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 199
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/BikeService;->resume()V

    goto :goto_0

    .line 200
    :cond_4
    const-string p1, "com.jichi.bikecomputer.action.STOP"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 201
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/BikeService;->stopRecording()V

    :cond_5
    :goto_0
    return p2
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    .line 240
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 241
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jichi/bikecomputer/BikeService;->pauseStartTs:J

    .line 242
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->gps:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->stop()V

    .line 243
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->stop()V

    .line 244
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeService;->stopStepSensor()V

    const/4 v0, 0x2

    .line 245
    iput v0, p0, Lcom/jichi/bikecomputer/BikeService;->state:I

    .line 246
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeService;->updateNotification()V

    .line 247
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->main:Landroid/os/Handler;

    new-instance v1, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/bikecomputer/BikeService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized power3s()I
    .locals 1

    monitor-enter p0

    .line 448
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->power3s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 6

    monitor-enter p0

    .line 253
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 254
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/jichi/bikecomputer/BikeService;->pauseStartTs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/jichi/bikecomputer/BikeService;->totalPausedMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jichi/bikecomputer/BikeService;->pauseStartTs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jichi/bikecomputer/BikeService;->totalPausedMs:J

    :cond_1
    const-wide/16 v0, -0x1

    .line 255
    iput-wide v0, p0, Lcom/jichi/bikecomputer/BikeService;->pauseStartTs:J

    .line 256
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->gps:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->start()V

    .line 257
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->start()V

    .line 258
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeService;->startStepSensor()V

    const/4 v0, 0x1

    .line 259
    iput v0, p0, Lcom/jichi/bikecomputer/BikeService;->state:I

    .line 260
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeService;->updateNotification()V

    .line 261
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->main:Landroid/os/Handler;

    new-instance v1, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda3;-><init>(Lcom/jichi/bikecomputer/BikeService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized runCadence()I
    .locals 1

    monitor-enter p0

    .line 471
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->lastRunCad:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->stepFreqSpm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setListener(Lcom/jichi/bikecomputer/BikeService$Listener;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeService;->listener:Lcom/jichi/bikecomputer/BikeService$Listener;

    return-void
.end method

.method public declared-synchronized startRecording()V
    .locals 7

    monitor-enter p0

    .line 207
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 208
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jichi/bikecomputer/BikeService;->startMs:J

    const-wide/16 v2, 0x0

    .line 209
    iput-wide v2, p0, Lcom/jichi/bikecomputer/BikeService;->totalPausedMs:J

    const-wide/16 v4, -0x1

    .line 210
    iput-wide v4, p0, Lcom/jichi/bikecomputer/BikeService;->pauseStartTs:J

    .line 211
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    new-instance v0, Lcom/jichi/bikecomputer/model/TrackStats;

    invoke-direct {v0}, Lcom/jichi/bikecomputer/model/TrackStats;-><init>()V

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->stats:Lcom/jichi/bikecomputer/model/TrackStats;

    const/4 v0, 0x0

    .line 213
    iput v0, p0, Lcom/jichi/bikecomputer/BikeService;->lastPressure:F

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 214
    iput-wide v4, p0, Lcom/jichi/bikecomputer/BikeService;->lastBaroAlt:D

    const/4 v4, 0x0

    .line 215
    iput v4, p0, Lcom/jichi/bikecomputer/BikeService;->lastHr:I

    .line 216
    iput v4, p0, Lcom/jichi/bikecomputer/BikeService;->lastCad:I

    .line 217
    iput v4, p0, Lcom/jichi/bikecomputer/BikeService;->lastRunCad:I

    .line 218
    iput v0, p0, Lcom/jichi/bikecomputer/BikeService;->lastWheelSpeed:F

    .line 219
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->powerBuf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    iput v4, p0, Lcom/jichi/bikecomputer/BikeService;->power3s:I

    .line 221
    iput v4, p0, Lcom/jichi/bikecomputer/BikeService;->stepCount:I

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/jichi/bikecomputer/BikeService;->stepWindowStartMs:J

    .line 223
    iput-wide v2, p0, Lcom/jichi/bikecomputer/BikeService;->lastStepAtMs:J

    .line 224
    iput v4, p0, Lcom/jichi/bikecomputer/BikeService;->stepFreqSpm:I

    .line 225
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->store:Lcom/jichi/bikecomputer/store/TrackStore;

    iget-wide v2, p0, Lcom/jichi/bikecomputer/BikeService;->startMs:J

    invoke-virtual {v0, v2, v3}, Lcom/jichi/bikecomputer/store/TrackStore;->createRecord(J)Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->recordFile:Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;

    .line 227
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeService;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {v2}, Lcom/jichi/bikecomputer/store/PrefsManager;->getWheelCircumference()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/jichi/bikecomputer/sensor/BleSensors;->setWheelCircumference(D)V

    .line 228
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeService;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {v2}, Lcom/jichi/bikecomputer/store/PrefsManager;->getAllBinds()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jichi/bikecomputer/sensor/BleSensors;->restoreBindings(Ljava/util/Map;)V

    .line 229
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->gps:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->start()V

    .line 230
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->start()V

    .line 231
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeService;->startStepSensor()V

    .line 232
    iput v1, p0, Lcom/jichi/bikecomputer/BikeService;->state:I

    .line 233
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeService;->buildNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/jichi/bikecomputer/BikeService;->startForeground(ILandroid/app/Notification;)V

    .line 234
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->main:Landroid/os/Handler;

    new-instance v1, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/bikecomputer/BikeService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stepFreq()I
    .locals 1

    monitor-enter p0

    .line 466
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->stepFreqSpm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRecording()V
    .locals 12

    monitor-enter p0

    .line 267
    :try_start_0
    iget v0, p0, Lcom/jichi/bikecomputer/BikeService;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 269
    :try_start_1
    iget-wide v2, p0, Lcom/jichi/bikecomputer/BikeService;->pauseStartTs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-wide v2, p0, Lcom/jichi/bikecomputer/BikeService;->totalPausedMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/jichi/bikecomputer/BikeService;->pauseStartTs:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jichi/bikecomputer/BikeService;->totalPausedMs:J

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->gps:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->stop()V

    .line 272
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->baro:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->stop()V

    .line 273
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->stop()V

    .line 274
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeService;->stopStepSensor()V

    const/4 v0, 0x0

    .line 275
    iput v0, p0, Lcom/jichi/bikecomputer/BikeService;->state:I

    .line 277
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->points:Ljava/util/List;

    invoke-static {v0}, Lcom/jichi/bikecomputer/model/TrackStats;->fromPoints(Ljava/util/List;)Lcom/jichi/bikecomputer/model/TrackStats;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->stats:Lcom/jichi/bikecomputer/model/TrackStats;

    .line 278
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->recordFile:Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->close()V

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_6

    .line 283
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jichi/bikecomputer/BikeService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "exports"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 285
    :cond_3
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/jichi/bikecomputer/BikeService;->startMs:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeService;->sport:Lcom/jichi/bikecomputer/model/SportType;

    invoke-virtual {v2}, Lcom/jichi/bikecomputer/model/SportType;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".fit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 288
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".gpx"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    iget-object v6, p0, Lcom/jichi/bikecomputer/BikeService;->points:Ljava/util/List;

    iget-object v7, p0, Lcom/jichi/bikecomputer/BikeService;->sport:Lcom/jichi/bikecomputer/model/SportType;

    iget-wide v8, p0, Lcom/jichi/bikecomputer/BikeService;->startMs:J

    iget-object v10, p0, Lcom/jichi/bikecomputer/BikeService;->stats:Lcom/jichi/bikecomputer/model/TrackStats;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/jichi/bikecomputer/export/FitExporter;->export(Ljava/util/List;Lcom/jichi/bikecomputer/model/SportType;JLcom/jichi/bikecomputer/model/TrackStats;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v4, v3

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->points:Ljava/util/List;

    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeService;->sport:Lcom/jichi/bikecomputer/model/SportType;

    iget-wide v6, p0, Lcom/jichi/bikecomputer/BikeService;->startMs:J

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v2, v6, v7, v8}, Lcom/jichi/bikecomputer/export/GpxExporter;->export(Ljava/util/List;Lcom/jichi/bikecomputer/model/SportType;JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v5, v3

    :cond_5
    move-object v3, v4

    goto :goto_0

    :cond_6
    move-object v5, v3

    .line 297
    :goto_0
    invoke-virtual {p0, v1}, Lcom/jichi/bikecomputer/BikeService;->stopForeground(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/BikeService;->stopSelf()V

    .line 301
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService;->stats:Lcom/jichi/bikecomputer/model/TrackStats;

    .line 302
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeService;->main:Landroid/os/Handler;

    new-instance v2, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v3, v5, v0}, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/bikecomputer/BikeService;Ljava/io/File;Ljava/io/File;Lcom/jichi/bikecomputer/model/TrackStats;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

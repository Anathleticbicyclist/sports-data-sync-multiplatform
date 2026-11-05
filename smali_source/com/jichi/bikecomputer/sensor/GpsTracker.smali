.class public Lcom/jichi/bikecomputer/sensor/GpsTracker;
.super Ljava/lang/Object;
.source "GpsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;
    }
.end annotation


# instance fields
.field private cb:Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;

.field private haveFix:Z

.field private lastAccuracy:F

.field private final listener:Landroid/location/LocationListener;

.field private final lm:Landroid/location/LocationManager;

.field private running:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->running:Z

    .line 21
    iput-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->haveFix:Z

    const v0, 0x4479c000    # 999.0f

    .line 22
    iput v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->lastAccuracy:F

    .line 24
    new-instance v0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;-><init>(Lcom/jichi/bikecomputer/sensor/GpsTracker;)V

    iput-object v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->listener:Landroid/location/LocationListener;

    .line 53
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->lm:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/jichi/bikecomputer/sensor/GpsTracker;Landroid/location/Location;)Z
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->isValid(Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/jichi/bikecomputer/sensor/GpsTracker;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->haveFix:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jichi/bikecomputer/sensor/GpsTracker;)F
    .locals 0

    .line 11
    iget p0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->lastAccuracy:F

    return p0
.end method

.method static synthetic access$202(Lcom/jichi/bikecomputer/sensor/GpsTracker;F)F
    .locals 0

    .line 11
    iput p1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->lastAccuracy:F

    return p1
.end method

.method static synthetic access$300(Lcom/jichi/bikecomputer/sensor/GpsTracker;)Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->cb:Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;

    return-object p0
.end method

.method private isValid(Landroid/location/Location;)Z
    .locals 2

    .line 62
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getLastAccuracy()F
    .locals 1

    .line 108
    iget v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->lastAccuracy:F

    return v0
.end method

.method public hasFix()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->haveFix:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->running:Z

    return v0
.end method

.method public setCallback(Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->cb:Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;

    return-void
.end method

.method public start()V
    .locals 8

    .line 69
    const-string v0, "gps"

    iget-boolean v1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->running:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->running:Z

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->haveFix:Z

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->lm:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v2, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->lm:Landroid/location/LocationManager;

    const-string v3, "gps"

    iget-object v7, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->listener:Landroid/location/LocationListener;

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->lm:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v2, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->lm:Landroid/location/LocationManager;

    const-string v3, "network"

    iget-object v7, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->listener:Landroid/location/LocationListener;

    const-wide/16 v4, 0x1388

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 80
    :cond_2
    iget-boolean v1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->haveFix:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    .line 82
    :try_start_1
    iget-object v1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->lm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->listener:Landroid/location/LocationListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public stop()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->running:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->running:Z

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker;->listener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

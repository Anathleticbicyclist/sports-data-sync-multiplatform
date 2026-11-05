.class public Lcom/jichi/bikecomputer/sensor/BaroAltimeter;
.super Ljava/lang/Object;
.source "BaroAltimeter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/bikecomputer/sensor/BaroAltimeter$Callback;
    }
.end annotation


# instance fields
.field private buf:[F

.field private bufCount:I

.field private bufIdx:I

.field private calibrated:Z

.field private cb:Lcom/jichi/bikecomputer/sensor/BaroAltimeter$Callback;

.field private final listener:Landroid/hardware/SensorEventListener;

.field private p0:D

.field private pressureSensor:Landroid/hardware/Sensor;

.field private registerFailed:Z

.field private running:Z

.field private final sm:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter$1;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter$1;-><init>(Lcom/jichi/bikecomputer/sensor/BaroAltimeter;)V

    iput-object v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->listener:Landroid/hardware/SensorEventListener;

    const/4 v0, 0x5

    .line 35
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->buf:[F

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->bufIdx:I

    .line 37
    iput v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->bufCount:I

    const-wide v1, 0x408faa0000000000L    # 1013.25

    .line 39
    iput-wide v1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->p0:D

    .line 40
    iput-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->calibrated:Z

    .line 42
    iput-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->running:Z

    .line 43
    iput-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->registerFailed:Z

    .line 46
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->sm:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    .line 48
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->pressureSensor:Landroid/hardware/Sensor;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/jichi/bikecomputer/sensor/BaroAltimeter;F)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->addSample(F)V

    return-void
.end method

.method private addSample(F)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->buf:[F

    iget v1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->bufIdx:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 109
    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->bufIdx:I

    .line 110
    iget p1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->bufCount:I

    add-int/lit8 p1, p1, 0x1

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->bufCount:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 113
    :goto_0
    iget v1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->bufCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->buf:[F

    aget v1, v1, v0

    add-float/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 115
    iget-wide v2, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->p0:D

    div-double/2addr v0, v2

    const-wide v2, 0x3fc85b95ccd9456cL    # 0.19029495718363465

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide v0, 0x40e5a5599999999aL    # 44330.8

    mul-double/2addr v2, v0

    .line 116
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->cb:Lcom/jichi/bikecomputer/sensor/BaroAltimeter$Callback;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, v2, v3}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter$Callback;->onBaroReading(FD)V

    :cond_2
    return-void
.end method


# virtual methods
.method public calibrate(DF)V
    .locals 4

    .line 62
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x43fa0000    # 500.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    float-to-double v0, p3

    const-wide v2, 0x40e5a5599999999aL    # 44330.8

    div-double/2addr p1, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p1

    const-wide p1, 0x4015051eb851eb85L    # 5.255

    .line 63
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->p0:D

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->calibrated:Z

    :cond_0
    return-void
.end method

.method public hasBarometer()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->pressureSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasData()Z
    .locals 2

    .line 91
    iget v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->bufCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCalibrated()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->calibrated:Z

    return v0
.end method

.method public isRegisterFailed()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->registerFailed:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->running:Z

    return v0
.end method

.method public lastPressureHpa()F
    .locals 3

    .line 101
    iget v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->bufCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    iget v2, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->bufCount:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->buf:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public resolve(DD)D
    .locals 4

    .line 121
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p3

    .line 122
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    sub-double v0, p1, p3

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    return-wide p3

    :cond_1
    return-wide p1
.end method

.method public setCallback(Lcom/jichi/bikecomputer/sensor/BaroAltimeter$Callback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->cb:Lcom/jichi/bikecomputer/sensor/BaroAltimeter$Callback;

    return-void
.end method

.method public start()V
    .locals 6

    .line 69
    iget-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->running:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->pressureSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->running:Z

    const/4 v2, 0x0

    .line 71
    iput-boolean v2, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->registerFailed:Z

    .line 73
    :try_start_0
    iget-object v3, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->sm:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->listener:Landroid/hardware/SensorEventListener;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    iput-boolean v2, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->running:Z

    .line 76
    iput-boolean v1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->registerFailed:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 81
    iget-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->running:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->running:Z

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->listener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.class Lcom/jichi/bikecomputer/BikeService$4;
.super Ljava/lang/Object;
.source "BikeService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/BikeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/bikecomputer/BikeService;


# direct methods
.method constructor <init>(Lcom/jichi/bikecomputer/BikeService;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeService$4;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 424
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    mul-float/2addr v0, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v0, 0x4134cccd    # 11.3f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 427
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$4;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeService;->access$1100(Lcom/jichi/bikecomputer/BikeService;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x15e

    cmp-long p1, v4, v6

    if-lez p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$4;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1, v2, v3}, Lcom/jichi/bikecomputer/BikeService;->access$1102(Lcom/jichi/bikecomputer/BikeService;J)J

    .line 429
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$4;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeService;->access$1208(Lcom/jichi/bikecomputer/BikeService;)I

    .line 431
    :cond_0
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$4;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeService;->access$1300(Lcom/jichi/bikecomputer/BikeService;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1770

    cmp-long p1, v4, v6

    if-ltz p1, :cond_1

    .line 432
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$4;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeService;->access$1200(Lcom/jichi/bikecomputer/BikeService;)I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v4, v6

    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$4;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v0}, Lcom/jichi/bikecomputer/BikeService;->access$1300(Lcom/jichi/bikecomputer/BikeService;)J

    move-result-wide v6

    sub-long v6, v2, v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {p1, v0}, Lcom/jichi/bikecomputer/BikeService;->access$1402(Lcom/jichi/bikecomputer/BikeService;I)I

    .line 433
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$4;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1, v1}, Lcom/jichi/bikecomputer/BikeService;->access$1202(Lcom/jichi/bikecomputer/BikeService;I)I

    .line 434
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$4;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1, v2, v3}, Lcom/jichi/bikecomputer/BikeService;->access$1302(Lcom/jichi/bikecomputer/BikeService;J)J

    :cond_1
    return-void
.end method

.class Lcom/jichi/bikecomputer/sensor/BaroAltimeter$1;
.super Ljava/lang/Object;
.source "BaroAltimeter.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/sensor/BaroAltimeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;


# direct methods
.method constructor <init>(Lcom/jichi/bikecomputer/sensor/BaroAltimeter;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter$1;->this$0:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 26
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-void

    .line 27
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 28
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/BaroAltimeter$1;->this$0:Lcom/jichi/bikecomputer/sensor/BaroAltimeter;

    invoke-static {v0, p1}, Lcom/jichi/bikecomputer/sensor/BaroAltimeter;->access$000(Lcom/jichi/bikecomputer/sensor/BaroAltimeter;F)V

    return-void
.end method

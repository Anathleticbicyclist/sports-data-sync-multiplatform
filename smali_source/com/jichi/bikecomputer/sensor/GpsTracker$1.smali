.class Lcom/jichi/bikecomputer/sensor/GpsTracker$1;
.super Ljava/lang/Object;
.source "GpsTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/sensor/GpsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;


# direct methods
.method constructor <init>(Lcom/jichi/bikecomputer/sensor/GpsTracker;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;->this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;->this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-static {v0, p1}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->access$000(Lcom/jichi/bikecomputer/sensor/GpsTracker;Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;->this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->access$102(Lcom/jichi/bikecomputer/sensor/GpsTracker;Z)Z

    .line 30
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;->this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v0, v2}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->access$202(Lcom/jichi/bikecomputer/sensor/GpsTracker;F)F

    .line 31
    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;->this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-static {v0}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->access$300(Lcom/jichi/bikecomputer/sensor/GpsTracker;)Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;->this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-static {v0}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->access$300(Lcom/jichi/bikecomputer/sensor/GpsTracker;)Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;->onLocation(Landroid/location/Location;)V

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;->this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-static {p1}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->access$300(Lcom/jichi/bikecomputer/sensor/GpsTracker;)Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;->this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-static {p1}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->access$300(Lcom/jichi/bikecomputer/sensor/GpsTracker;)Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;->this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-static {v0}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->access$200(Lcom/jichi/bikecomputer/sensor/GpsTracker;)F

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;->onGpsStatus(ZF)V

    :cond_3
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 37
    const-string p3, "gps"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;->this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->access$102(Lcom/jichi/bikecomputer/sensor/GpsTracker;Z)Z

    .line 40
    iget-object p1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;->this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-static {p1}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->access$300(Lcom/jichi/bikecomputer/sensor/GpsTracker;)Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;->this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-static {p1}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->access$300(Lcom/jichi/bikecomputer/sensor/GpsTracker;)Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;

    move-result-object p1

    iget-object p3, p0, Lcom/jichi/bikecomputer/sensor/GpsTracker$1;->this$0:Lcom/jichi/bikecomputer/sensor/GpsTracker;

    invoke-static {p3}, Lcom/jichi/bikecomputer/sensor/GpsTracker;->access$200(Lcom/jichi/bikecomputer/sensor/GpsTracker;)F

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;->onGpsStatus(ZF)V

    :cond_0
    return-void
.end method

.class Lcom/jichi/bikecomputer/BikeService$3;
.super Ljava/lang/Object;
.source "BikeService.java"

# interfaces
.implements Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/bikecomputer/BikeService;->onCreateBody()V
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

    .line 132
    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSensorStatus$0$com-jichi-bikecomputer-BikeService$3()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v0}, Lcom/jichi/bikecomputer/BikeService;->access$200(Lcom/jichi/bikecomputer/BikeService;)Lcom/jichi/bikecomputer/BikeService$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v0}, Lcom/jichi/bikecomputer/BikeService;->access$200(Lcom/jichi/bikecomputer/BikeService;)Lcom/jichi/bikecomputer/BikeService$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jichi/bikecomputer/BikeService$Listener;->onTick()V

    :cond_0
    return-void
.end method

.method public onCadence(I)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v0, p1}, Lcom/jichi/bikecomputer/BikeService;->access$802(Lcom/jichi/bikecomputer/BikeService;I)I

    return-void
.end method

.method public onHeartRate(I)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v0, p1}, Lcom/jichi/bikecomputer/BikeService;->access$502(Lcom/jichi/bikecomputer/BikeService;I)I

    return-void
.end method

.method public onPower(I)V
    .locals 11

    .line 140
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v0}, Lcom/jichi/bikecomputer/BikeService;->access$600(Lcom/jichi/bikecomputer/BikeService;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v1}, Lcom/jichi/bikecomputer/BikeService;->access$600(Lcom/jichi/bikecomputer/BikeService;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    const/4 p1, 0x2

    new-array p1, p1, [J

    const/4 v6, 0x0

    aput-wide v2, p1, v6

    const/4 v2, 0x1

    aput-wide v4, p1, v2

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 143
    :goto_0
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeService;->access$600(Lcom/jichi/bikecomputer/BikeService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeService;->access$600(Lcom/jichi/bikecomputer/BikeService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    aget-wide v7, p1, v6

    sub-long v7, v3, v7

    const-wide/16 v9, 0xbb8

    cmp-long p1, v7, v9

    if-lez p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeService;->access$600(Lcom/jichi/bikecomputer/BikeService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeService;->access$600(Lcom/jichi/bikecomputer/BikeService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    aget-wide v7, v1, v2

    add-long/2addr v3, v7

    goto :goto_1

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeService;->access$600(Lcom/jichi/bikecomputer/BikeService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v1}, Lcom/jichi/bikecomputer/BikeService;->access$600(Lcom/jichi/bikecomputer/BikeService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    div-long/2addr v3, v1

    long-to-int v6, v3

    :goto_2
    invoke-static {p1, v6}, Lcom/jichi/bikecomputer/BikeService;->access$702(Lcom/jichi/bikecomputer/BikeService;I)I

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRunCadence(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v0, p1}, Lcom/jichi/bikecomputer/BikeService;->access$902(Lcom/jichi/bikecomputer/BikeService;I)I

    return-void
.end method

.method public onScannedDevice(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V
    .locals 0

    return-void
.end method

.method public onSensorStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeService;->access$100(Lcom/jichi/bikecomputer/BikeService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/jichi/bikecomputer/BikeService$3$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/jichi/bikecomputer/BikeService$3$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/bikecomputer/BikeService$3;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWheelSpeed(F)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$3;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v0, p1}, Lcom/jichi/bikecomputer/BikeService;->access$1002(Lcom/jichi/bikecomputer/BikeService;F)F

    return-void
.end method

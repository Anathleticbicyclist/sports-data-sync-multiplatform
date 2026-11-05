.class Lcom/jichi/bikecomputer/BikeService$1;
.super Ljava/lang/Object;
.source "BikeService.java"

# interfaces
.implements Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;


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

    .line 112
    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeService$1;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onGpsStatus$0$com-jichi-bikecomputer-BikeService$1()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$1;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v0}, Lcom/jichi/bikecomputer/BikeService;->access$200(Lcom/jichi/bikecomputer/BikeService;)Lcom/jichi/bikecomputer/BikeService$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$1;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v0}, Lcom/jichi/bikecomputer/BikeService;->access$200(Lcom/jichi/bikecomputer/BikeService;)Lcom/jichi/bikecomputer/BikeService$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jichi/bikecomputer/BikeService$Listener;->onTick()V

    :cond_0
    return-void
.end method

.method public onGpsStatus(ZF)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$1;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeService;->access$100(Lcom/jichi/bikecomputer/BikeService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/jichi/bikecomputer/BikeService$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/jichi/bikecomputer/BikeService$1$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/bikecomputer/BikeService$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLocation(Landroid/location/Location;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$1;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v0, p1}, Lcom/jichi/bikecomputer/BikeService;->access$000(Lcom/jichi/bikecomputer/BikeService;Landroid/location/Location;)V

    return-void
.end method

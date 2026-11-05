.class Lcom/jichi/bikecomputer/BikeService$2;
.super Ljava/lang/Object;
.source "BikeService.java"

# interfaces
.implements Lcom/jichi/bikecomputer/sensor/BaroAltimeter$Callback;


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

    .line 125
    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeService$2;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBaroReading(FD)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$2;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {v0, p1}, Lcom/jichi/bikecomputer/BikeService;->access$302(Lcom/jichi/bikecomputer/BikeService;F)F

    .line 129
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeService$2;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-static {p1, p2, p3}, Lcom/jichi/bikecomputer/BikeService;->access$402(Lcom/jichi/bikecomputer/BikeService;D)D

    return-void
.end method

.class public final synthetic Lcom/jichi/bikecomputer/BikeService$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/jichi/bikecomputer/BikeService$3;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/bikecomputer/BikeService$3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeService$3$$ExternalSyntheticLambda0;->f$0:Lcom/jichi/bikecomputer/BikeService$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$3$$ExternalSyntheticLambda0;->f$0:Lcom/jichi/bikecomputer/BikeService$3;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/BikeService$3;->lambda$onSensorStatus$0$com-jichi-bikecomputer-BikeService$3()V

    return-void
.end method

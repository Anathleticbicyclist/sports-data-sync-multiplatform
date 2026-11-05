.class public final synthetic Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/jichi/bikecomputer/BikeService;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/bikecomputer/BikeService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda2;->f$0:Lcom/jichi/bikecomputer/BikeService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda2;->f$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/BikeService;->lambda$pause$1$com-jichi-bikecomputer-BikeService()V

    return-void
.end method

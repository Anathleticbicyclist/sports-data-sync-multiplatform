.class public final synthetic Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/jichi/bikecomputer/BikeService;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Lcom/jichi/bikecomputer/model/TrackStats;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/bikecomputer/BikeService;Ljava/io/File;Ljava/io/File;Lcom/jichi/bikecomputer/model/TrackStats;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda1;->f$0:Lcom/jichi/bikecomputer/BikeService;

    iput-object p2, p0, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda1;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda1;->f$3:Lcom/jichi/bikecomputer/model/TrackStats;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda1;->f$0:Lcom/jichi/bikecomputer/BikeService;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda1;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/jichi/bikecomputer/BikeService$$ExternalSyntheticLambda1;->f$3:Lcom/jichi/bikecomputer/model/TrackStats;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jichi/bikecomputer/BikeService;->lambda$stopRecording$3$com-jichi-bikecomputer-BikeService(Ljava/io/File;Ljava/io/File;Lcom/jichi/bikecomputer/model/TrackStats;)V

    return-void
.end method

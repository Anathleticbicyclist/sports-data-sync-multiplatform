.class public interface abstract Lcom/jichi/bikecomputer/BikeService$Listener;
.super Ljava/lang/Object;
.source "BikeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/BikeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFinished(Ljava/io/File;Ljava/io/File;Lcom/jichi/bikecomputer/model/TrackStats;)V
.end method

.method public abstract onTick()V
.end method

.class public interface abstract Lcom/jichi/bikecomputer/sensor/GpsTracker$Callback;
.super Ljava/lang/Object;
.source "GpsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/sensor/GpsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onGpsStatus(ZF)V
.end method

.method public abstract onLocation(Landroid/location/Location;)V
.end method

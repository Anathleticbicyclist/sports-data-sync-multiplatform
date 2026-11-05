.class public Lcom/jichi/bikecomputer/BikeService$LocalBinder;
.super Landroid/os/Binder;
.source "BikeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/BikeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/bikecomputer/BikeService;


# direct methods
.method public constructor <init>(Lcom/jichi/bikecomputer/BikeService;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeService$LocalBinder;->this$0:Lcom/jichi/bikecomputer/BikeService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/jichi/bikecomputer/BikeService;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeService$LocalBinder;->this$0:Lcom/jichi/bikecomputer/BikeService;

    return-object v0
.end method

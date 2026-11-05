.class Lcom/jichi/bikecomputer/BikeActivity$1;
.super Ljava/lang/Object;
.source "BikeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/BikeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/bikecomputer/BikeActivity;


# direct methods
.method constructor <init>(Lcom/jichi/bikecomputer/BikeActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity$1;->this$0:Lcom/jichi/bikecomputer/BikeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity$1;->this$0:Lcom/jichi/bikecomputer/BikeActivity;

    invoke-static {v0}, Lcom/jichi/bikecomputer/BikeActivity;->access$000(Lcom/jichi/bikecomputer/BikeActivity;)V

    .line 55
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity$1;->this$0:Lcom/jichi/bikecomputer/BikeActivity;

    invoke-static {v0}, Lcom/jichi/bikecomputer/BikeActivity;->access$100(Lcom/jichi/bikecomputer/BikeActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

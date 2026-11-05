.class Lcom/jichi/bikecomputer/BikeActivity$2;
.super Ljava/lang/Object;
.source "BikeActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 59
    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity$2;->this$0:Lcom/jichi/bikecomputer/BikeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity$2;->this$0:Lcom/jichi/bikecomputer/BikeActivity;

    check-cast p2, Lcom/jichi/bikecomputer/BikeService$LocalBinder;

    invoke-virtual {p2}, Lcom/jichi/bikecomputer/BikeService$LocalBinder;->getService()Lcom/jichi/bikecomputer/BikeService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jichi/bikecomputer/BikeActivity;->access$202(Lcom/jichi/bikecomputer/BikeActivity;Lcom/jichi/bikecomputer/BikeService;)Lcom/jichi/bikecomputer/BikeService;

    .line 63
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity$2;->this$0:Lcom/jichi/bikecomputer/BikeActivity;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeActivity;->access$200(Lcom/jichi/bikecomputer/BikeActivity;)Lcom/jichi/bikecomputer/BikeService;

    move-result-object p1

    iget-object p2, p0, Lcom/jichi/bikecomputer/BikeActivity$2;->this$0:Lcom/jichi/bikecomputer/BikeActivity;

    invoke-virtual {p1, p2}, Lcom/jichi/bikecomputer/BikeService;->setListener(Lcom/jichi/bikecomputer/BikeService$Listener;)V

    .line 64
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity$2;->this$0:Lcom/jichi/bikecomputer/BikeActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/jichi/bikecomputer/BikeActivity;->access$302(Lcom/jichi/bikecomputer/BikeActivity;Z)Z

    .line 65
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity$2;->this$0:Lcom/jichi/bikecomputer/BikeActivity;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeActivity;->access$400(Lcom/jichi/bikecomputer/BikeActivity;)V

    .line 66
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity$2;->this$0:Lcom/jichi/bikecomputer/BikeActivity;

    invoke-static {p1}, Lcom/jichi/bikecomputer/BikeActivity;->access$000(Lcom/jichi/bikecomputer/BikeActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity$2;->this$0:Lcom/jichi/bikecomputer/BikeActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jichi/bikecomputer/BikeActivity;->access$302(Lcom/jichi/bikecomputer/BikeActivity;Z)Z

    .line 72
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity$2;->this$0:Lcom/jichi/bikecomputer/BikeActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jichi/bikecomputer/BikeActivity;->access$202(Lcom/jichi/bikecomputer/BikeActivity;Lcom/jichi/bikecomputer/BikeService;)Lcom/jichi/bikecomputer/BikeService;

    return-void
.end method

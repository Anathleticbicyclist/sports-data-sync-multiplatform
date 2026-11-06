.class Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;
.super Ljava/lang/Object;
.source "HeatmapTileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/heatmap/HeatmapTileLoader;->requestTile(IIIZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;


# direct methods
.method constructor <init>(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 118
    nop

    :goto_1
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->-$$Nest$fgetqueue(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 119
    :try_start_8
    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    invoke-static {v1}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->-$$Nest$fgetqueue(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 120
    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->-$$Nest$fputworker(Lcom/jichi/ob/heatmap/HeatmapTileLoader;Ljava/lang/Thread;)V

    .line 121
    monitor-exit v0

    return-void

    .line 123
    :cond_1c
    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    invoke-static {v1}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->-$$Nest$fgetqueue(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 124
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_30

    .line 126
    :try_start_2a
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    .line 128
    goto :goto_2f

    .line 127
    :catchall_2e
    move-exception v0

    .line 129
    :goto_2f
    goto :goto_1

    .line 124
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

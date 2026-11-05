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
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->access$300(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    invoke-static {v1}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->access$300(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->access$502(Lcom/jichi/ob/heatmap/HeatmapTileLoader;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 95
    monitor-exit v0

    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    invoke-static {v1}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->access$300(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 98
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

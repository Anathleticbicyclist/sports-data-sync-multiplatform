.class Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;
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

.field final synthetic val$dark:Z

.field final synthetic val$done:Ljava/lang/Runnable;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$x:I

.field final synthetic val$y:I

.field final synthetic val$z:I


# direct methods
.method constructor <init>(Lcom/jichi/ob/heatmap/HeatmapTileLoader;IIIZLjava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    iput p2, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$z:I

    iput p3, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$x:I

    iput p4, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$y:I

    iput-boolean p5, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$dark:Z

    iput-object p6, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$done:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    iget v1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$z:I

    iget v2, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$x:I

    iget v3, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$y:I

    iget-boolean v4, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$dark:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->access$000(Lcom/jichi/ob/heatmap/HeatmapTileLoader;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    iget v2, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$z:I

    iget v3, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$x:I

    iget v4, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$y:I

    invoke-static {v1, v2, v3, v4}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->access$100(Lcom/jichi/ob/heatmap/HeatmapTileLoader;III)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->access$200(Lcom/jichi/ob/heatmap/HeatmapTileLoader;Ljava/io/File;Landroid/graphics/Bitmap;)V

    .line 79
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$done:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->access$300(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    invoke-static {v1}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->access$400(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

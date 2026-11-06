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
.method constructor <init>(Lcom/jichi/ob/heatmap/HeatmapTileLoader;IIIZLjava/lang/String;Ljava/lang/Runnable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    iput p2, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$z:I

    iput p3, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$x:I

    iput p4, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$y:I

    iput-boolean p5, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$dark:Z

    iput-object p6, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$key:Ljava/lang/String;

    iput-object p7, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 97
    nop

    .line 98
    nop

    .line 100
    const/4 v0, 0x0

    :try_start_3
    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    iget v2, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$z:I

    iget v3, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$x:I

    iget v4, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$y:I

    iget-boolean v5, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$dark:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->-$$Nest$mdownload(Lcom/jichi/ob/heatmap/HeatmapTileLoader;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_22

    .line 101
    :try_start_11
    iget-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    iget v3, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$z:I

    iget v4, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$x:I

    iget v5, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$y:I

    iget-boolean v6, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$dark:Z

    invoke-static {v2, v3, v4, v5, v6}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->-$$Nest$mtileFile(Lcom/jichi/ob/heatmap/HeatmapTileLoader;IIIZ)Ljava/io/File;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_20

    .line 103
    goto :goto_24

    .line 102
    :catchall_20
    move-exception v2

    goto :goto_24

    :catchall_22
    move-exception v1

    move-object v1, v0

    .line 104
    :goto_24
    iget-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    iget-object v3, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$key:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->-$$Nest$mhandleResult(Lcom/jichi/ob/heatmap/HeatmapTileLoader;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 105
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;->val$done:Ljava/lang/Runnable;

    if-eqz v0, :cond_32

    .line 106
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 108
    :cond_32
    return-void
.end method

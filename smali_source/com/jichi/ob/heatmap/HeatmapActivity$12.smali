.class Lcom/jichi/ob/heatmap/HeatmapActivity$12;
.super Ljava/lang/Object;
.source "HeatmapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/heatmap/HeatmapActivity;->regenerate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

.field final synthetic val$sigma:I


# direct methods
.method constructor <init>(Lcom/jichi/ob/heatmap/HeatmapActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    iput p2, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12;->val$sigma:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 378
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/Download/\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-static {v0}, Lcom/jichi/ob/heatmap/TrackFileParser;->scanFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    .line 381
    new-array v2, v2, [I

    .line 382
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :try_start_1
    invoke-static {v3}, Lcom/jichi/ob/heatmap/TrackFileParser;->parseFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 385
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_0

    .line 386
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x0

    .line 387
    aget v6, v2, v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v6, v3

    aput v6, v2, v5

    .line 388
    aget v3, v2, v4

    add-int/2addr v3, v4

    aput v3, v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 393
    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_2

    const/16 v0, 0x40

    invoke-static {v1, v0}, Lcom/jichi/ob/heatmap/HeatmapEngine;->tileBounds(Ljava/util/List;I)[I

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1400(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jichi/ob/heatmap/HeatmapActivity$12$1;

    invoke-direct {v1, p0}, Lcom/jichi/ob/heatmap/HeatmapActivity$12$1;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity$12;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 400
    :cond_3
    iget v3, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12;->val$sigma:I

    int-to-float v3, v3

    aget v2, v2, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v4}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1500(Lcom/jichi/ob/heatmap/HeatmapActivity;)Z

    move-result v4

    invoke-static {v1, v0, v3, v2, v4}, Lcom/jichi/ob/heatmap/HeatmapEngine;->generate(Ljava/util/List;[IFIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 401
    iget-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v2}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1400(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/jichi/ob/heatmap/HeatmapActivity$12$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/jichi/ob/heatmap/HeatmapActivity$12$2;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity$12;Landroid/graphics/Bitmap;[I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 409
    :catchall_0
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1400(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jichi/ob/heatmap/HeatmapActivity$12$3;

    invoke-direct {v1, p0}, Lcom/jichi/ob/heatmap/HeatmapActivity$12$3;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity$12;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method

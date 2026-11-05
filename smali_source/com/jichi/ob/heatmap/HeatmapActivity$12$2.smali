.class Lcom/jichi/ob/heatmap/HeatmapActivity$12$2;
.super Ljava/lang/Object;
.source "HeatmapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/heatmap/HeatmapActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$12;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$tb:[I


# direct methods
.method constructor <init>(Lcom/jichi/ob/heatmap/HeatmapActivity$12;Landroid/graphics/Bitmap;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12$2;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$12;

    iput-object p2, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12$2;->val$bmp:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12$2;->val$tb:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 403
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12$2;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$12;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$12;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1000(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12$2;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$12;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$12;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1102(Lcom/jichi/ob/heatmap/HeatmapActivity;Z)Z

    .line 405
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12$2;->val$bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12$2;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$12;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$12;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$100(Lcom/jichi/ob/heatmap/HeatmapActivity;)Lcom/jichi/ob/heatmap/HeatmapView;

    move-result-object v2

    iget-object v3, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12$2;->val$bmp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12$2;->val$tb:[I

    aget v4, v0, v1

    const/4 v1, 0x1

    aget v5, v0, v1

    const/4 v1, 0x2

    aget v6, v0, v1

    const/4 v1, 0x3

    aget v7, v0, v1

    const/4 v1, 0x4

    aget v8, v0, v1

    invoke-virtual/range {v2 .. v8}, Lcom/jichi/ob/heatmap/HeatmapView;->setHeatmap(Landroid/graphics/Bitmap;IIIII)V

    :cond_0
    return-void
.end method

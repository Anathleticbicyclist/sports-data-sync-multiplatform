.class Lcom/jichi/ob/heatmap/HeatmapView$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "HeatmapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/heatmap/HeatmapView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/ob/heatmap/HeatmapView;


# direct methods
.method constructor <init>(Lcom/jichi/ob/heatmap/HeatmapView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapView$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 44
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 45
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 46
    iget-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapView$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapView;

    invoke-static {v2}, Lcom/jichi/ob/heatmap/HeatmapView;->access$000(Lcom/jichi/ob/heatmap/HeatmapView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v0, v1, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 47
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapView$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapView;

    invoke-virtual {p1}, Lcom/jichi/ob/heatmap/HeatmapView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

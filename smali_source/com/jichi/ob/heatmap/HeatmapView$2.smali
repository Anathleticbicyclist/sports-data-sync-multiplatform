.class Lcom/jichi/ob/heatmap/HeatmapView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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

    .line 51
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapView$2;->this$0:Lcom/jichi/ob/heatmap/HeatmapView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapView$2;->this$0:Lcom/jichi/ob/heatmap/HeatmapView;

    invoke-static {p1}, Lcom/jichi/ob/heatmap/HeatmapView;->access$000(Lcom/jichi/ob/heatmap/HeatmapView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float p2, p3

    neg-float p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 58
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapView$2;->this$0:Lcom/jichi/ob/heatmap/HeatmapView;

    invoke-virtual {p1}, Lcom/jichi/ob/heatmap/HeatmapView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

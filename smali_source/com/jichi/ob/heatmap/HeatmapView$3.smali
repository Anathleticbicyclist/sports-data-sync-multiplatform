.class Lcom/jichi/ob/heatmap/HeatmapView$3;
.super Ljava/lang/Object;
.source "HeatmapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/heatmap/HeatmapView;->setHeatmap(Landroid/graphics/Bitmap;IIIII)V
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

    .line 75
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapView$3;->this$0:Lcom/jichi/ob/heatmap/HeatmapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapView$3;->this$0:Lcom/jichi/ob/heatmap/HeatmapView;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapView;->access$100(Lcom/jichi/ob/heatmap/HeatmapView;)V

    return-void
.end method

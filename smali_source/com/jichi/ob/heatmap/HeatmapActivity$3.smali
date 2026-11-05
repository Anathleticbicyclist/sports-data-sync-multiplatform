.class Lcom/jichi/ob/heatmap/HeatmapActivity$3;
.super Ljava/lang/Object;
.source "HeatmapActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/heatmap/HeatmapActivity;->buildUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;


# direct methods
.method constructor <init>(Lcom/jichi/ob/heatmap/HeatmapActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$3;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$3;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {p1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$100(Lcom/jichi/ob/heatmap/HeatmapActivity;)Lcom/jichi/ob/heatmap/HeatmapView;

    move-result-object p1

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/jichi/ob/heatmap/HeatmapView;->setHeatAlpha(F)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

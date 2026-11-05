.class Lcom/jichi/ob/heatmap/HeatmapActivity$4;
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

    .line 182
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$4;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 183
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$4;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$200(Lcom/jichi/ob/heatmap/HeatmapActivity;I)V

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

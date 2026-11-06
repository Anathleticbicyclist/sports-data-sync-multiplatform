.class Lcom/jichi/ob/heatmap/HeatmapActivity$13;
.super Ljava/lang/Object;
.source "HeatmapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$13;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$13;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$100(Lcom/jichi/ob/heatmap/HeatmapActivity;)Lcom/jichi/ob/heatmap/HeatmapView;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/jichi/ob/heatmap/HeatmapView;->getOnlineTiles()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jichi/ob/heatmap/HeatmapView;->setOnlineTiles(Z)V

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1600(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v2, :cond_2

    const-string/jumbo v2, "\u5e95\u56fe: \u5728\u7ebf"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "\u5e95\u56fe: \u79bb\u7ebf"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

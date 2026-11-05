.class Lcom/jichi/ob/heatmap/HeatmapActivity$5;
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

    .line 199
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$5;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$5;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$300(Lcom/jichi/ob/heatmap/HeatmapActivity;Z)V

    .line 202
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$5;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {p1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$400(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, -0x17a6f4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 203
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$5;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {p1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$500(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, -0xc5c2bc

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 204
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$5;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {p1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$400(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 205
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$5;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {p1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$500(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, -0x13100d

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

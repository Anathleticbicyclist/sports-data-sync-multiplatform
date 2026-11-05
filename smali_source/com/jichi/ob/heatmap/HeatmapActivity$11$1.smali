.class Lcom/jichi/ob/heatmap/HeatmapActivity$11$1;
.super Ljava/lang/Object;
.source "HeatmapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/heatmap/HeatmapActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;


# direct methods
.method constructor <init>(Lcom/jichi/ob/heatmap/HeatmapActivity$11;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$1;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$1;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$11;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1000(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$1;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$11;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1102(Lcom/jichi/ob/heatmap/HeatmapActivity;Z)Z

    .line 337
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$1;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$11;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1200(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "\u672a\u627e\u5230\u53ef\u7528\u8f68\u8ff9\u6587\u4ef6\uff08\u9700\u8981 \u226510 \u4e2a\u8f68\u8ff9\u70b9\uff09"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$1;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$11;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1300(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.class Lcom/jichi/ob/heatmap/HeatmapActivity$12$1;
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


# direct methods
.method constructor <init>(Lcom/jichi/ob/heatmap/HeatmapActivity$12;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12$1;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12$1;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$12;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$12;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1000(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$12$1;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$12;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$12;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1102(Lcom/jichi/ob/heatmap/HeatmapActivity;Z)Z

    return-void
.end method

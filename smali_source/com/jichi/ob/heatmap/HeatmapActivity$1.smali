.class Lcom/jichi/ob/heatmap/HeatmapActivity$1;
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

    .line 79
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$1;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-virtual {p1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->finish()V

    return-void
.end method

.class Lcom/jichi/ob/heatmap/HeatmapActivity$9;
.super Ljava/lang/Object;
.source "HeatmapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/heatmap/HeatmapActivity;->showDownloadDialog()V
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

    .line 280
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$9;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 282
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$9;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$800()[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-static {p1, p2}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$900(Lcom/jichi/ob/heatmap/HeatmapActivity;Ljava/lang/String;)V

    return-void
.end method

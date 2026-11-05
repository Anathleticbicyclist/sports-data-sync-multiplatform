.class Lcom/jichi/ob/heatmap/HeatmapActivity$11$3;
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

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/jichi/ob/heatmap/HeatmapActivity$11;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 358
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$3;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iput-object p2, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$3;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$3;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$11;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1000(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$3;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$11;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1102(Lcom/jichi/ob/heatmap/HeatmapActivity;Z)Z

    .line 362
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$3;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$11;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1200(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u626b\u63cf\u5931\u8d25: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$3;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$3;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$3;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

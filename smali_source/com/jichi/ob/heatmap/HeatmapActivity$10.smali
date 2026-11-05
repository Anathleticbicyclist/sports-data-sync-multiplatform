.class Lcom/jichi/ob/heatmap/HeatmapActivity$10;
.super Ljava/lang/Object;
.source "HeatmapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/heatmap/HeatmapActivity;->showCountDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

.field final synthetic val$platform:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jichi/ob/heatmap/HeatmapActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$10;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    iput-object p2, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$10;->val$platform:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 294
    const-string p2, "50"

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    const-string p2, "100"

    goto :goto_0

    :cond_1
    const-string p2, "\u5168\u90e8"

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$10;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u5728\u4e0b\u8f7d\u4e2d\u5fc3\u9009\u62e9\u300c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$10;->val$platform:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u300d\u4e0b\u8f7d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u6761\uff0c\u5b8c\u6210\u540e\u8fd4\u56de\u70ed\u529b\u56fe\u81ea\u52a8\u53e0\u52a0"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 298
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$10;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {p1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$000(Lcom/jichi/ob/heatmap/HeatmapActivity;)V

    return-void
.end method

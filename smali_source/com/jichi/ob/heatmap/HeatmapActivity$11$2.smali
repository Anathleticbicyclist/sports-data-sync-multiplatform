.class Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;
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

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$counts:[I

.field final synthetic val$tb:[I


# direct methods
.method constructor <init>(Lcom/jichi/ob/heatmap/HeatmapActivity$11;Landroid/graphics/Bitmap;[I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iput-object p2, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->val$bmp:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->val$tb:[I

    iput-object p4, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->val$counts:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 346
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$11;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1000(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$11;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1102(Lcom/jichi/ob/heatmap/HeatmapActivity;Z)Z

    .line 348
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$11;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1300(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->val$bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$11;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$100(Lcom/jichi/ob/heatmap/HeatmapActivity;)Lcom/jichi/ob/heatmap/HeatmapView;

    move-result-object v3

    iget-object v4, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->val$bmp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->val$tb:[I

    aget v5, v0, v2

    const/4 v1, 0x1

    aget v6, v0, v1

    const/4 v10, 0x2

    aget v7, v0, v10

    const/4 v8, 0x3

    aget v8, v0, v8

    const/4 v9, 0x4

    aget v9, v0, v9

    invoke-virtual/range {v3 .. v9}, Lcom/jichi/ob/heatmap/HeatmapView;->setHeatmap(Landroid/graphics/Bitmap;IIIII)V

    .line 351
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$11;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1200(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u53e0\u52a0 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->val$counts:[I

    aget v4, v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u4e2a\u6587\u4ef6 \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->val$counts:[I

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u4e2a\u8f68\u8ff9\u70b9 \u00b7 zoom "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->val$tb:[I

    aget v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity$11$2;->this$1:Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    iget-object v0, v0, Lcom/jichi/ob/heatmap/HeatmapActivity$11;->this$0:Lcom/jichi/ob/heatmap/HeatmapActivity;

    invoke-static {v0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->access$1200(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u751f\u6210\u5931\u8d25\uff08\u6570\u636e\u91cf\u8fc7\u5927\u6216\u5f02\u5e38\uff09"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

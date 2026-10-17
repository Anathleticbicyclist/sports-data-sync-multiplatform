.class public final Lcom/jichi/ob/ui/TrackPreviewView$scaleDetector$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TrackPreviewView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/TrackPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/jichi/ob/ui/TrackPreviewView$scaleDetector$1",
        "Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;",
        "onScale",
        "",
        "detector",
        "Landroid/view/ScaleGestureDetector;",
        "app_devRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/ob/ui/TrackPreviewView;


# direct methods
.method constructor <init>(Lcom/jichi/ob/ui/TrackPreviewView;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$scaleDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    .line 354
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView$scaleDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getStickerPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView$scaleDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getPoints()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView$scaleDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/jichi/ob/ui/TrackPreviewView;->setScale(F)V

    .line 359
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$scaleDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    invoke-static {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->access$pushTransform(Lcom/jichi/ob/ui/TrackPreviewView;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

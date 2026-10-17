.class public final Lcom/jichi/ob/ui/TrackPreviewView$gestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/jichi/ob/ui/TrackPreviewView$gestureDetector$1",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "onScroll",
        "",
        "e1",
        "Landroid/view/MotionEvent;",
        "e2",
        "distanceX",
        "",
        "distanceY",
        "onDown",
        "e",
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

    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$gestureDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    .line 332
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$gestureDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->access$setSwipeAccumX$p(Lcom/jichi/ob/ui/TrackPreviewView;F)V

    .line 350
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$gestureDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->getStickerPreview()Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$gestureDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->getStickerPreview()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$gestureDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->getPoints()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 340
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$gestureDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 341
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView$gestureDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getDx()F

    move-result v1

    div-float/2addr p3, p1

    sub-float/2addr v1, p3

    invoke-virtual {v0, v1}, Lcom/jichi/ob/ui/TrackPreviewView;->setDx(F)V

    .line 342
    iget-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView$gestureDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    invoke-virtual {p3}, Lcom/jichi/ob/ui/TrackPreviewView;->getDy()F

    move-result v0

    div-float/2addr p4, p1

    sub-float/2addr v0, p4

    invoke-virtual {p3, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setDy(F)V

    .line 343
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$gestureDetector$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    invoke-static {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->access$pushTransform(Lcom/jichi/ob/ui/TrackPreviewView;)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

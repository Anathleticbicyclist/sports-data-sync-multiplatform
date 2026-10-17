.class public final Lcom/jichi/ob/ui/LinearProgressView;
.super Landroid/view/View;
.source "LinearProgressView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\tJ\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\tJ\u000e\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u000cJ\u0008\u0010\u001b\u001a\u00020\u0015H\u0002J\u0008\u0010\u001c\u001a\u00020\u0015H\u0002J\u0008\u0010\u001d\u001a\u00020\u0015H\u0014J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020 H\u0014J8\u0010!\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u000eH\u0002J\u0010\u0010\'\u001a\u00020\t2\u0006\u0010(\u001a\u00020\u000eH\u0002J \u0010)\u001a\u00020\t2\u0006\u0010*\u001a\u00020\t2\u0006\u0010+\u001a\u00020\t2\u0006\u0010,\u001a\u00020\u000eH\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/jichi/ob/ui/LinearProgressView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "max",
        "",
        "progress",
        "indeterminate",
        "",
        "breath",
        "",
        "anim",
        "Landroid/animation/ValueAnimator;",
        "paint",
        "Landroid/graphics/Paint;",
        "corner",
        "setProgressMax",
        "",
        "m",
        "setProgress",
        "c",
        "setProgressIndeterminate",
        "v",
        "startBreath",
        "stopBreath",
        "onDetachedFromWindow",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawSeg",
        "start",
        "end",
        "color",
        "ph",
        "h",
        "colorFor",
        "f",
        "lerpColor",
        "a",
        "b",
        "t",
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
.field private anim:Landroid/animation/ValueAnimator;

.field private breath:F

.field private final corner:F

.field private indeterminate:Z

.field private max:I

.field private final paint:Landroid/graphics/Paint;

.field private progress:I


# direct methods
.method public static synthetic $r8$lambda$m1J8WN9VZcKP4SMRQ0-rmca7FxY(Lcom/jichi/ob/ui/LinearProgressView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LinearProgressView;->startBreath$lambda$1$lambda$0(Lcom/jichi/ob/ui/LinearProgressView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/jichi/ob/ui/LinearProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 23
    iput p1, p0, Lcom/jichi/ob/ui/LinearProgressView;->max:I

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    const/high16 p1, 0x40e00000    # 7.0f

    .line 30
    iput p1, p0, Lcom/jichi/ob/ui/LinearProgressView;->corner:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/ui/LinearProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final colorFor(F)I
    .locals 7

    const v0, -0xdd3aa2

    const v1, -0x10bbbc

    const v2, -0xd47301

    const v3, -0x74a30a

    .line 117
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x4

    .line 118
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 120
    aget v4, v1, v3

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 121
    :cond_0
    aget v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 122
    aget v1, v1, v4

    cmpl-float v5, v1, v3

    const/4 v6, 0x0

    if-lez v5, :cond_1

    sub-float/2addr p1, v3

    sub-float/2addr v1, v3

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 123
    invoke-static {p1, v6, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v6

    .line 124
    :cond_1
    aget p1, v0, v2

    aget v0, v0, v4

    invoke-direct {p0, p1, v0, v6}, Lcom/jichi/ob/ui/LinearProgressView;->lerpColor(IIF)I

    move-result p1

    return p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3ea8f5c3    # 0.33f
        0x3f28f5c3    # 0.66f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final drawSeg(Landroid/graphics/Canvas;FFIFF)V
    .locals 5

    .line 102
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LinearProgressView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    .line 103
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LinearProgressView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p3

    cmpg-float v0, p3, p2

    if-gtz v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object p4, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    const/16 v0, 0x2d

    int-to-float v0, v0

    const/16 v2, 0x3c

    int-to-float v2, v2

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr p5, v3

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p5, v3

    float-to-double v3, p5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p5, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr p5, v3

    add-float/2addr p5, v3

    mul-float/2addr v2, p5

    add-float/2addr v0, v2

    float-to-int p5, v0

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    new-instance p4, Landroid/graphics/RectF;

    const/high16 p5, 0x40800000    # 4.0f

    sub-float v0, p2, p5

    add-float/2addr p5, p3

    invoke-direct {p4, v0, v1, p5, p6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p5, p0, Lcom/jichi/ob/ui/LinearProgressView;->corner:F

    iget-object v0, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p5, p5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 110
    iget-object p4, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    const/16 p5, 0xff

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 111
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4, p2, v1, p3, p6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p2, p0, Lcom/jichi/ob/ui/LinearProgressView;->corner:F

    iget-object p3, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p2, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 112
    iget-object p1, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private final lerpColor(IIF)I
    .locals 3

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    add-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    add-int/2addr v1, v2

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, p2, 0xff

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    const/high16 p2, -0x1000000

    shl-int/lit8 p3, v0, 0x10

    or-int/2addr p2, p3

    shl-int/lit8 p3, v1, 0x8

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private final startBreath()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/jichi/ob/ui/LinearProgressView;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 51
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 54
    new-instance v1, Lcom/jichi/ob/ui/LinearProgressView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/jichi/ob/ui/LinearProgressView$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/ui/LinearProgressView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 51
    iput-object v0, p0, Lcom/jichi/ob/ui/LinearProgressView;->anim:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final startBreath$lambda$1$lambda$0(Lcom/jichi/ob/ui/LinearProgressView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/jichi/ob/ui/LinearProgressView;->breath:F

    .line 56
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LinearProgressView;->invalidate()V

    return-void
.end method

.method private final stopBreath()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/jichi/ob/ui/LinearProgressView;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/jichi/ob/ui/LinearProgressView;->anim:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/jichi/ob/ui/LinearProgressView;->stopBreath()V

    .line 69
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LinearProgressView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 75
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LinearProgressView;->getHeight()I

    move-result v1

    int-to-float v8, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-lez v2, :cond_2

    cmpg-float v2, v8, v1

    if-gtz v2, :cond_0

    goto/16 :goto_0

    .line 79
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1, v1, v0, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 80
    iget-object v1, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v1, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    const v3, -0x17120e

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v1, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    iget v1, p0, Lcom/jichi/ob/ui/LinearProgressView;->corner:F

    iget-object v3, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 84
    iget-object v1, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v1, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v1, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    const v3, -0x473f38

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget v1, p0, Lcom/jichi/ob/ui/LinearProgressView;->corner:F

    iget-object v3, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 88
    iget-object v1, p0, Lcom/jichi/ob/ui/LinearProgressView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-boolean v1, p0, Lcom/jichi/ob/ui/LinearProgressView;->indeterminate:Z

    if-eqz v1, :cond_1

    const v1, 0x3ea3d70a    # 0.32f

    mul-float/2addr v1, v0

    neg-float v2, v1

    .line 93
    iget v3, p0, Lcom/jichi/ob/ui/LinearProgressView;->breath:F

    add-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float v4, v2, v0

    add-float v5, v4, v1

    .line 94
    invoke-direct {p0, v3}, Lcom/jichi/ob/ui/LinearProgressView;->colorFor(F)I

    move-result v6

    iget v7, p0, Lcom/jichi/ob/ui/LinearProgressView;->breath:F

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/jichi/ob/ui/LinearProgressView;->drawSeg(Landroid/graphics/Canvas;FFIFF)V

    return-void

    :cond_1
    move-object v2, p0

    move-object v3, p1

    .line 95
    iget p1, v2, Lcom/jichi/ob/ui/LinearProgressView;->progress:I

    if-lez p1, :cond_2

    int-to-float p1, p1

    .line 96
    iget v1, v2, Lcom/jichi/ob/ui/LinearProgressView;->max:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float v5, v0, p1

    .line 97
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LinearProgressView;->colorFor(F)I

    move-result v6

    iget v7, v2, Lcom/jichi/ob/ui/LinearProgressView;->breath:F

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/jichi/ob/ui/LinearProgressView;->drawSeg(Landroid/graphics/Canvas;FFIFF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setProgress(I)V
    .locals 2

    .line 38
    iget v0, p0, Lcom/jichi/ob/ui/LinearProgressView;->max:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/jichi/ob/ui/LinearProgressView;->progress:I

    .line 39
    iput-boolean v1, p0, Lcom/jichi/ob/ui/LinearProgressView;->indeterminate:Z

    .line 40
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LinearProgressView;->invalidate()V

    return-void
.end method

.method public final setProgressIndeterminate(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/jichi/ob/ui/LinearProgressView;->indeterminate:Z

    if-eqz p1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/jichi/ob/ui/LinearProgressView;->startBreath()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/jichi/ob/ui/LinearProgressView;->stopBreath()V

    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LinearProgressView;->invalidate()V

    return-void
.end method

.method public final setProgressMax(I)V
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 33
    :goto_0
    iput p1, p0, Lcom/jichi/ob/ui/LinearProgressView;->max:I

    .line 34
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LinearProgressView;->invalidate()V

    return-void
.end method

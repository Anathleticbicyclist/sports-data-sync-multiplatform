.class public Lcom/jichi/ob/heatmap/HeatmapView;
.super Landroid/view/View;
.source "HeatmapView.java"


# instance fields
.field private baseOnline:Z

.field private dark:Z

.field private fitted:Z

.field private final gd:Landroid/view/GestureDetector;

.field private final gridPaint:Landroid/graphics/Paint;

.field private heat:Landroid/graphics/Bitmap;

.field private heatAlpha:F

.field private final heatPaint:Landroid/graphics/Paint;

.field private lastFocusX:F

.field private lastFocusY:F

.field private final mat:Landroid/graphics/Matrix;

.field private final sgd:Landroid/view/ScaleGestureDetector;

.field private tiles:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

.field private xtMax:I

.field private xtMin:I

.field private ytMax:I

.field private ytMin:I

.field private zoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xd

    .line 24
    iput v0, p0, Lcom/jichi/ob/heatmap/HeatmapView;->zoom:I

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapView;->dark:Z

    iput-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapView;->baseOnline:Z

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapView;->fitted:Z

    .line 30
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapView;->mat:Landroid/graphics/Matrix;

    .line 34
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapView;->gridPaint:Landroid/graphics/Paint;

    const v2, 0x3f666666    # 0.9f

    .line 35
    iput v2, p0, Lcom/jichi/ob/heatmap/HeatmapView;->heatAlpha:F

    .line 36
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapView;->heatPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v2, Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    invoke-direct {v2, p1}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapView;->tiles:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    .line 41
    new-instance v2, Landroid/view/ScaleGestureDetector;

    new-instance v3, Lcom/jichi/ob/heatmap/HeatmapView$1;

    invoke-direct {v3, p0}, Lcom/jichi/ob/heatmap/HeatmapView$1;-><init>(Lcom/jichi/ob/heatmap/HeatmapView;)V

    invoke-direct {v2, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapView;->sgd:Landroid/view/ScaleGestureDetector;

    .line 51
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/jichi/ob/heatmap/HeatmapView$2;

    invoke-direct {v3, p0}, Lcom/jichi/ob/heatmap/HeatmapView$2;-><init>(Lcom/jichi/ob/heatmap/HeatmapView;)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapView;->gd:Landroid/view/GestureDetector;

    .line 62
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/jichi/ob/heatmap/HeatmapView;)Landroid/graphics/Matrix;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/jichi/ob/heatmap/HeatmapView;->mat:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jichi/ob/heatmap/HeatmapView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapView;->fitView()V

    return-void
.end method

.method private fitView()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapView;->heat:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget v0, p0, Lcom/jichi/ob/heatmap/HeatmapView;->xtMax:I

    iget v1, p0, Lcom/jichi/ob/heatmap/HeatmapView;->xtMin:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x100

    .line 85
    iget v2, p0, Lcom/jichi/ob/heatmap/HeatmapView;->ytMax:I

    iget v3, p0, Lcom/jichi/ob/heatmap/HeatmapView;->ytMin:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    mul-int/lit16 v2, v2, 0x100

    if-lez v0, :cond_4

    if-gtz v2, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/jichi/ob/heatmap/HeatmapView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/jichi/ob/heatmap/HeatmapView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-lez v2, :cond_2

    .line 88
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/high16 v0, 0x3e800000    # 0.25f

    .line 89
    :cond_3
    iget-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapView;->mat:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 90
    iget-object v2, p0, Lcom/jichi/ob/heatmap/HeatmapView;->mat:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 91
    iput-boolean v1, p0, Lcom/jichi/ob/heatmap/HeatmapView;->fitted:Z

    .line 92
    invoke-virtual {p0}, Lcom/jichi/ob/heatmap/HeatmapView;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method

.method private textPaint()Landroid/graphics/Paint;
    .locals 2

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 174
    iget-boolean v1, p0, Lcom/jichi/ob/heatmap/HeatmapView;->dark:Z

    if-eqz v1, :cond_0

    const v1, -0x757068

    goto :goto_0

    :cond_0
    const v1, -0xa5a19a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41e00000    # 28.0f

    .line 175
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 118
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    iget-boolean v2, v0, Lcom/jichi/ob/heatmap/HeatmapView;->dark:Z

    if-eqz v2, :cond_0

    const v2, -0xf3f1ee

    goto :goto_0

    :cond_0
    const v2, -0x171512

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-direct/range {p0 .. p1}, Lcom/jichi/ob/heatmap/HeatmapView;->drawBase(Landroid/graphics/Canvas;)V

    .line 122
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapView;->heat:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/heatmap/HeatmapView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-direct/range {p0 .. p0}, Lcom/jichi/ob/heatmap/HeatmapView;->textPaint()Landroid/graphics/Paint;

    move-result-object v3

    const-string v4, "\u6682\u65e0\u70ed\u529b\u6570\u636e\uff0c\u8bf7\u5148\u626b\u63cf\u672c\u5730\u8f68\u8ff9"

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-direct/range {p0 .. p1}, Lcom/jichi/ob/heatmap/HeatmapView;->drawOverlay(Landroid/graphics/Canvas;)V

    return-void

    .line 128
    :cond_1
    iget-boolean v2, v0, Lcom/jichi/ob/heatmap/HeatmapView;->fitted:Z

    if-nez v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/jichi/ob/heatmap/HeatmapView;->fitView()V

    .line 131
    :cond_2
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapView;->tiles:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    if-eqz v2, :cond_5

    const/16 v2, 0x9

    .line 132
    new-array v2, v2, [F

    .line 133
    iget-object v3, v0, Lcom/jichi/ob/heatmap/HeatmapView;->mat:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x0

    .line 134
    aget v4, v2, v3

    const/4 v5, 0x4

    .line 135
    aget v5, v2, v5

    const/4 v6, 0x2

    .line 136
    aget v6, v2, v6

    const/4 v7, 0x5

    .line 137
    aget v2, v2, v7

    neg-float v7, v6

    div-float/2addr v7, v4

    const/high16 v8, 0x43800000    # 256.0f

    div-float/2addr v7, v8

    float-to-double v9, v7

    .line 139
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v7, v9

    add-int/lit8 v7, v7, -0x1

    neg-float v9, v2

    div-float/2addr v9, v5

    div-float/2addr v9, v8

    float-to-double v9, v9

    .line 140
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    add-int/lit8 v9, v9, -0x1

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/heatmap/HeatmapView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v6

    div-float/2addr v10, v4

    div-float/2addr v10, v8

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    add-int/lit8 v10, v10, 0x1

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/heatmap/HeatmapView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v2

    div-float/2addr v11, v5

    div-float/2addr v11, v8

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    add-int/lit8 v11, v11, 0x1

    .line 143
    iget v12, v0, Lcom/jichi/ob/heatmap/HeatmapView;->xtMin:I

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v12, v0, Lcom/jichi/ob/heatmap/HeatmapView;->xtMax:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 144
    iget v12, v0, Lcom/jichi/ob/heatmap/HeatmapView;->ytMin:I

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v12, v0, Lcom/jichi/ob/heatmap/HeatmapView;->ytMax:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 145
    new-instance v12, Landroid/graphics/Rect;

    const/16 v13, 0x100

    invoke-direct {v12, v3, v3, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 146
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    :goto_1
    if-gt v7, v10, :cond_5

    move v15, v9

    :goto_2
    if-gt v15, v11, :cond_4

    .line 149
    iget-object v14, v0, Lcom/jichi/ob/heatmap/HeatmapView;->tiles:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    iget v8, v0, Lcom/jichi/ob/heatmap/HeatmapView;->zoom:I

    iget-boolean v13, v0, Lcom/jichi/ob/heatmap/HeatmapView;->dark:Z

    invoke-virtual {v14, v8, v7, v15, v13}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->getCachedTile(IIIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_3

    .line 152
    iget-object v14, v0, Lcom/jichi/ob/heatmap/HeatmapView;->tiles:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    iget v8, v0, Lcom/jichi/ob/heatmap/HeatmapView;->zoom:I

    iget-boolean v13, v0, Lcom/jichi/ob/heatmap/HeatmapView;->dark:Z

    move/from16 v20, v9

    new-instance v9, Lcom/jichi/ob/heatmap/HeatmapView$4;

    invoke-direct {v9, v0}, Lcom/jichi/ob/heatmap/HeatmapView$4;-><init>(Lcom/jichi/ob/heatmap/HeatmapView;)V

    move/from16 v21, v15

    move v15, v8

    move/from16 v16, v7

    move/from16 v17, v21

    move/from16 v18, v13

    move-object/from16 v19, v9

    invoke-virtual/range {v14 .. v19}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->requestTile(IIIZLjava/lang/Runnable;)V

    const/high16 v16, 0x43800000    # 256.0f

    goto :goto_3

    :cond_3
    move/from16 v20, v9

    move/from16 v21, v15

    .line 157
    iget v9, v0, Lcom/jichi/ob/heatmap/HeatmapView;->xtMin:I

    sub-int v9, v7, v9

    const/16 v13, 0x100

    mul-int/lit16 v9, v9, 0x100

    int-to-float v9, v9

    mul-float v9, v9, v4

    add-float/2addr v9, v6

    .line 158
    iget v14, v0, Lcom/jichi/ob/heatmap/HeatmapView;->ytMin:I

    sub-int v15, v21, v14

    mul-int/lit16 v15, v15, 0x100

    int-to-float v14, v15

    mul-float v14, v14, v5

    add-float/2addr v14, v2

    float-to-int v15, v9

    float-to-int v13, v14

    const/high16 v16, 0x43800000    # 256.0f

    mul-float v17, v4, v16

    add-float v9, v9, v17

    float-to-int v9, v9

    mul-float v17, v5, v16

    add-float v14, v14, v17

    float-to-int v14, v14

    .line 159
    invoke-virtual {v3, v15, v13, v9, v14}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v9, 0x0

    .line 160
    invoke-virtual {v1, v8, v12, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v15, v21, 0x1

    move/from16 v9, v20

    const/high16 v8, 0x43800000    # 256.0f

    const/16 v13, 0x100

    goto :goto_2

    :cond_4
    move/from16 v20, v9

    const/high16 v16, 0x43800000    # 256.0f

    add-int/lit8 v7, v7, 0x1

    const/high16 v8, 0x43800000    # 256.0f

    const/16 v13, 0x100

    goto :goto_1

    .line 166
    :cond_5
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapView;->heat:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 167
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapView;->heatPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/jichi/ob/heatmap/HeatmapView;->heatAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 168
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapView;->heat:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/jichi/ob/heatmap/HeatmapView;->mat:Landroid/graphics/Matrix;

    iget-object v4, v0, Lcom/jichi/ob/heatmap/HeatmapView;->heatPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/jichi/ob/heatmap/HeatmapView;->drawOverlay(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapView;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 108
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapView;->sgd:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 111
    iput p1, p0, Lcom/jichi/ob/heatmap/HeatmapView;->lastFocusX:F

    iput p1, p0, Lcom/jichi/ob/heatmap/HeatmapView;->lastFocusY:F

    :cond_1
    return v1
.end method

.method public setDark(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/jichi/ob/heatmap/HeatmapView;->dark:Z

    .line 97
    invoke-virtual {p0}, Lcom/jichi/ob/heatmap/HeatmapView;->invalidate()V

    return-void
.end method

.method public setHeatAlpha(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 101
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/jichi/ob/heatmap/HeatmapView;->heatAlpha:F

    .line 102
    invoke-virtual {p0}, Lcom/jichi/ob/heatmap/HeatmapView;->invalidate()V

    return-void
.end method

.method public setHeatmap(Landroid/graphics/Bitmap;IIIII)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapView;->heat:Landroid/graphics/Bitmap;

    .line 68
    iput p2, p0, Lcom/jichi/ob/heatmap/HeatmapView;->zoom:I

    .line 69
    iput p3, p0, Lcom/jichi/ob/heatmap/HeatmapView;->xtMin:I

    .line 70
    iput p4, p0, Lcom/jichi/ob/heatmap/HeatmapView;->xtMax:I

    .line 71
    iput p5, p0, Lcom/jichi/ob/heatmap/HeatmapView;->ytMin:I

    .line 72
    iput p6, p0, Lcom/jichi/ob/heatmap/HeatmapView;->ytMax:I

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/jichi/ob/heatmap/HeatmapView;->fitted:Z

    .line 75
    new-instance p1, Lcom/jichi/ob/heatmap/HeatmapView$3;

    invoke-direct {p1, p0}, Lcom/jichi/ob/heatmap/HeatmapView$3;-><init>(Lcom/jichi/ob/heatmap/HeatmapView;)V

    invoke-virtual {p0, p1}, Lcom/jichi/ob/heatmap/HeatmapView;->post(Ljava/lang/Runnable;)Z

    .line 78
    invoke-virtual {p0}, Lcom/jichi/ob/heatmap/HeatmapView;->invalidate()V

    return-void
.end method

.method private drawBase(Landroid/graphics/Canvas;)V
    .locals 14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x9

    new-array v3, v2, [F

    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapView;->mat:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x0

    aget v4, v3, v2

    const/4 v2, 0x4

    aget v5, v3, v2

    const/4 v2, 0x2

    aget v6, v3, v2

    const/4 v2, 0x5

    aget v7, v3, v2

    const/high16 v2, 0x43800000    # 256.0f

    mul-float v8, v4, v2

    mul-float v9, v5, v2

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iget-boolean v2, v0, Lcom/jichi/ob/heatmap/HeatmapView;->dark:Z

    if-eqz v2, :cond_light_lines

    const v2, 0x33ffffff

    goto :goto_line_color

    :cond_light_lines
    const v2, 0x33000000

    :goto_line_color
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0}, Lcom/jichi/ob/heatmap/HeatmapView;->getWidth()I

    move-result v2

    int-to-float v12, v2

    invoke-virtual {v0}, Lcom/jichi/ob/heatmap/HeatmapView;->getHeight()I

    move-result v2

    int-to-float v13, v2

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    cmpg-float v2, v8, v4

    if-gez v2, :cond_vskip

    cmpl-float v2, v8, v12

    if-lez v2, :cond_vskip

    rem-float v5, v6, v8

    cmpg-float v2, v5, v3

    if-gez v2, :cond_vnorm_done

    add-float v5, v5, v8

    :cond_vnorm_done
    :cond_vloop
    cmpl-float v2, v5, v12

    if-lez v2, :cond_vskip

    invoke-virtual {v11, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v11, v5, v13}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v5, v5, v8

    goto :cond_vloop

    :cond_vskip
    cmpg-float v2, v9, v4

    if-gez v2, :cond_hdone

    cmpl-float v2, v9, v13

    if-lez v2, :cond_hdone

    rem-float v5, v7, v9

    cmpg-float v2, v5, v3

    if-gez v2, :cond_hnorm_done

    add-float v5, v5, v9

    :cond_hnorm_done
    :cond_hloop
    cmpl-float v2, v5, v13

    if-lez v2, :cond_hdone

    invoke-virtual {v11, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v11, v12, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v5, v5, v9

    goto :cond_hloop

    :cond_hdone
    invoke-virtual {v1, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
.method private drawOverlay(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jichi/ob/heatmap/HeatmapView;->drawStatus(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/jichi/ob/heatmap/HeatmapView;->drawLegend(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawStatus(Landroid/graphics/Canvas;)V
    .locals 10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0}, Lcom/jichi/ob/heatmap/HeatmapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41400000    # 12.0f

    mul-float v4, v4, v3

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-boolean v4, v0, Lcom/jichi/ob/heatmap/HeatmapView;->dark:Z

    if-eqz v4, :cond_text_light

    const v4, -0x13100d

    goto :goto_text_color

    :cond_text_light
    const v4, -0xd4d0ca

    :goto_text_color
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, v0, Lcom/jichi/ob/heatmap/HeatmapView;->tiles:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    if-nez v9, :cond_status_none

    invoke-virtual {v9}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->getOnlineEnabled()Z

    move-result v4

    if-eqz v4, :cond_status_off

    invoke-virtual {v9}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->isOffline()Z

    move-result v4

    if-nez v4, :cond_status_not_offline

    const-string v5, "\u5e95\u56fe\u52a0\u8f7d\u5931\u8d25\uff0c\u5df2\u4f7f\u7528\u79bb\u7ebf\u7f51\u683c"

    goto :goto_status_done

    :cond_status_not_offline
    invoke-virtual {v9}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->getPendingTiles()I

    move-result v4

    if-lez v4, :cond_status_not_loading

    const-string v5, "\u5728\u7ebf\u5e95\u56fe\u52a0\u8f7d\u4e2d\u2026"

    goto :goto_status_done

    :cond_status_not_loading
    invoke-virtual {v9}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->getOkTiles()I

    move-result v4

    if-lez v4, :cond_status_grid

    const-string v5, "\u5728\u7ebf\u5e95\u56fe"

    goto :goto_status_done

    :cond_status_grid
    const-string v5, "\u79bb\u7ebf\u7f51\u683c\u5e95\u56fe"

    goto :goto_status_done

    :cond_status_off
    const-string v5, "\u79bb\u7ebf\u7f51\u683c \u00b7 \u5728\u7ebf\u5e95\u56fe\u5df2\u5173\u95ed"

    goto :goto_status_done

    :cond_status_none
    const-string v5, "\u79bb\u7ebf\u7f51\u683c\u5e95\u56fe"

    :goto_status_done
    const/high16 v4, 0x41200000    # 10.0f

    mul-float v4, v4, v3

    const/high16 v6, 0x41b00000    # 22.0f

    mul-float v6, v6, v3

    invoke-virtual {v1, v5, v4, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLegend(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0}, Lcom/jichi/ob/heatmap/HeatmapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v4, v4, v3

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-boolean v4, v0, Lcom/jichi/ob/heatmap/HeatmapView;->dark:Z

    if-eqz v4, :cond_text_light

    const v4, -0x13100d

    goto :goto_text_color

    :cond_text_light
    const v4, -0xd4d0ca

    :goto_text_color
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v4, v4, v3

    invoke-virtual {v0}, Lcom/jichi/ob/heatmap/HeatmapView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41b00000    # 22.0f

    mul-float v6, v6, v3

    sub-float v5, v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v6, v6, v3

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float v7, v7, v3

    add-float v8, v4, v6

    add-float v9, v5, v7

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v4, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v11, Landroid/graphics/LinearGradient;

    move v12, v4

    move v13, v5

    move v14, v8

    move v15, v9

    const v16, 0xff3b30

    const v17, -0xc4d0

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v13, v13, v3

    sub-float v13, v8, v13

    const/high16 v14, 0x40800000    # 4.0f

    mul-float v14, v14, v3

    sub-float v14, v5, v14

    sget-object v15, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v15, "\u591a"

    invoke-virtual {v1, v15, v13, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v15, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v15, "\u5c11"

    invoke-virtual {v1, v15, v4, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
.method public getOnlineTiles()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapView;->baseOnline:Z

    return v0
.end method

.method public resetView()V
    .locals 1

    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapView;->fitView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapView;->fitted:Z

    invoke-virtual {p0}, Lcom/jichi/ob/heatmap/HeatmapView;->invalidate()V

    return-void
.end method

.method public setOnlineTiles(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jichi/ob/heatmap/HeatmapView;->baseOnline:Z

    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapView;->tiles:Lcom/jichi/ob/heatmap/HeatmapTileLoader;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->setOnlineEnabled(Z)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/jichi/ob/heatmap/HeatmapView;->invalidate()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->resetTiles()V

    invoke-virtual {p0}, Lcom/jichi/ob/heatmap/HeatmapView;->invalidate()V

    return-void
.end method
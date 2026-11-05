.class public Lcom/jichi/bikecomputer/ui/TrackPreviewView;
.super Landroid/view/View;
.source "TrackPreviewView.java"


# instance fields
.field private final bgPaint:Landroid/graphics/Paint;

.field private final endPaint:Landroid/graphics/Paint;

.field private final linePaint:Landroid/graphics/Paint;

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/bikecomputer/model/TrackPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final startPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->linePaint:Landroid/graphics/Paint;

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->startPaint:Landroid/graphics/Paint;

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->endPaint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->bgPaint:Landroid/graphics/Paint;

    .line 28
    invoke-direct {p0}, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->linePaint:Landroid/graphics/Paint;

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->startPaint:Landroid/graphics/Paint;

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->endPaint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->bgPaint:Landroid/graphics/Paint;

    .line 33
    invoke-direct {p0}, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->init()V

    return-void
.end method

.method private dp(F)F
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    return p1
.end method

.method private init()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v0, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p0, v1}, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->dp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-object v0, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 40
    iget-object v0, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 41
    iget-object v0, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->linePaint:Landroid/graphics/Paint;

    const v1, -0xd182ce

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->startPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->startPaint:Landroid/graphics/Paint;

    const v1, -0xb350b0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->endPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->endPaint:Landroid/graphics/Paint;

    const v1, -0x10acb0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->bgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 60
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    iget-object v2, v0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->points:Ljava/util/List;

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_4

    .line 65
    :cond_0
    iget-object v2, v0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-lez v5, :cond_c

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    goto/16 :goto_3

    .line 72
    :cond_1
    iget-object v4, v0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide v5, 0x4056800000000000L    # 90.0

    const-wide v7, -0x3fa9800000000000L    # -90.0

    const-wide v9, 0x4066800000000000L    # 180.0

    const-wide v11, -0x3f99800000000000L    # -180.0

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jichi/bikecomputer/model/TrackPoint;

    .line 73
    iget-wide v14, v13, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    cmpg-double v14, v14, v5

    if-gez v14, :cond_3

    iget-wide v5, v13, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    .line 74
    :cond_3
    iget-wide v14, v13, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    cmpl-double v14, v14, v7

    if-lez v14, :cond_4

    iget-wide v7, v13, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    .line 75
    :cond_4
    iget-wide v14, v13, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    cmpg-double v14, v14, v9

    if-gez v14, :cond_5

    iget-wide v9, v13, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    .line 76
    :cond_5
    iget-wide v14, v13, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    cmpl-double v14, v14, v11

    if-lez v14, :cond_2

    iget-wide v11, v13, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    goto :goto_0

    :cond_6
    sub-double v13, v7, v5

    sub-double/2addr v11, v9

    const-wide/16 v15, 0x0

    cmpl-double v4, v13, v15

    if-nez v4, :cond_7

    cmpl-double v17, v11, v15

    if-nez v17, :cond_7

    return-void

    :cond_7
    add-double/2addr v5, v7

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v5, v5, v17

    .line 81
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v11, v5

    cmpl-double v15, v11, v15

    if-nez v15, :cond_8

    const-wide v11, 0x3f1a36e2eb1c432dL    # 1.0E-4

    mul-double/2addr v11, v13

    :cond_8
    if-nez v4, :cond_9

    move-wide v13, v11

    :cond_9
    const/high16 v4, 0x41200000    # 10.0f

    .line 88
    invoke-direct {v0, v4}, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->dp(F)F

    move-result v4

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v4, v15

    sub-float v16, v2, v4

    sub-float v4, v3, v4

    double-to-float v11, v11

    div-float v12, v16, v11

    double-to-float v13, v13

    div-float/2addr v4, v13

    .line 91
    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v11, v4

    mul-float/2addr v13, v4

    sub-float/2addr v2, v11

    div-float/2addr v2, v15

    sub-float/2addr v3, v13

    div-float/2addr v3, v15

    .line 97
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    const/4 v13, 0x0

    .line 98
    :goto_1
    iget-object v14, v0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->points:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_b

    .line 99
    iget-object v14, v0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->points:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jichi/bikecomputer/model/TrackPoint;

    move/from16 v16, v13

    .line 100
    iget-wide v12, v14, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    sub-double/2addr v12, v9

    mul-double/2addr v12, v5

    double-to-float v12, v12

    mul-float/2addr v12, v4

    add-float/2addr v12, v2

    .line 101
    iget-wide v13, v14, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    sub-double v13, v7, v13

    double-to-float v13, v13

    mul-float/2addr v13, v4

    add-float/2addr v13, v3

    if-nez v16, :cond_a

    .line 102
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2

    .line 103
    :cond_a
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-int/lit8 v13, v16, 0x1

    goto :goto_1

    .line 105
    :cond_b
    iget-object v12, v0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 107
    iget-object v11, v0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->points:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jichi/bikecomputer/model/TrackPoint;

    .line 108
    iget-wide v12, v11, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    sub-double/2addr v12, v9

    mul-double/2addr v12, v5

    double-to-float v12, v12

    mul-float/2addr v12, v4

    add-float/2addr v12, v2

    .line 109
    iget-wide v13, v11, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    sub-double v13, v7, v13

    double-to-float v11, v13

    mul-float/2addr v11, v4

    add-float/2addr v11, v3

    .line 110
    iget-object v13, v0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->points:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jichi/bikecomputer/model/TrackPoint;

    .line 111
    iget-wide v14, v13, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    sub-double/2addr v14, v9

    mul-double/2addr v14, v5

    double-to-float v5, v14

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    .line 112
    iget-wide v5, v13, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    sub-double/2addr v7, v5

    double-to-float v5, v7

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    const/high16 v4, 0x40a00000    # 5.0f

    .line 113
    invoke-direct {v0, v4}, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->dp(F)F

    move-result v4

    .line 114
    iget-object v5, v0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->startPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v11, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 115
    iget-object v5, v0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->endPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_c
    :goto_3
    return-void

    .line 62
    :cond_d
    :goto_4
    iget-object v2, v0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/bikecomputer/model/TrackPoint;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->points:Ljava/util/List;

    .line 55
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

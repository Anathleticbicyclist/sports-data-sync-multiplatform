.class public Lcom/jichi/ob/heatmap/HeatmapActivity;
.super Landroid/app/Activity;
.source "HeatmapActivity.java"


# static fields
.field private static final PLATFORMS:[Ljava/lang/String;


# instance fields
.field private alphaBar:Landroid/widget/SeekBar;

.field private btnDark:Landroid/widget/Button;

.field private btnBase:Landroid/widget/Button;

.field private btnDownload:Landroid/widget/Button;

.field private btnLight:Landroid/widget/Button;

.field private btnScan:Landroid/widget/Button;

.field private controlRow:Landroid/widget/LinearLayout;

.field private emptyLayout:Landroid/widget/LinearLayout;

.field private emptyView:Landroid/widget/TextView;

.field private volatile generating:Z

.field private loading:Landroid/widget/ProgressBar;

.field private main:Landroid/os/Handler;

.field private mapView:Lcom/jichi/ob/heatmap/HeatmapView;

.field private sigmaBar:Landroid/widget/SeekBar;

.field private statusView:Landroid/widget/TextView;

.field private tipView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u884c\u8005"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u8fc8\u91d1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "\u4f73\u660e"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "iGPSPORT"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "\u9ad8\u9a70"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Wahoo"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "\u767e\u9510\u817e"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "\u9ed1\u9e1f\u5355\u8f66"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Keep"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "\u5495\u549a"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Zepp"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "\u6377\u5b89\u7279"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "Outbase"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "Suunto"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "Komoot"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "Strava"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->PLATFORMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->main:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->generating:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jichi/ob/heatmap/HeatmapActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->openDownloadCenter()V

    return-void
.end method

.method static synthetic access$100(Lcom/jichi/ob/heatmap/HeatmapActivity;)Lcom/jichi/ob/heatmap/HeatmapView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->mapView:Lcom/jichi/ob/heatmap/HeatmapView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->loading:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/jichi/ob/heatmap/HeatmapActivity;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->generating:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jichi/ob/heatmap/HeatmapActivity;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->isDarkTheme()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->btnBase:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jichi/ob/heatmap/HeatmapActivity;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->regenerate(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/jichi/ob/heatmap/HeatmapActivity;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->setDark(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/Button;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->btnDark:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jichi/ob/heatmap/HeatmapActivity;)Landroid/widget/Button;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->btnLight:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jichi/ob/heatmap/HeatmapActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->scanLocal()V

    return-void
.end method

.method static synthetic access$700(Lcom/jichi/ob/heatmap/HeatmapActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->showDownloadDialog()V

    return-void
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->PLATFORMS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jichi/ob/heatmap/HeatmapActivity;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->showCountDialog(Ljava/lang/String;)V

    return-void
.end method

.method private buildUi()V
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0xc

    .line 60
    invoke-direct {v0, v1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v1

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->isDarkTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, -0xe8e6e2

    goto :goto_0

    :cond_0
    const v2, -0xa0908

    .line 62
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->isDarkTheme()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, -0x13100d

    goto :goto_1

    :cond_1
    const v3, -0xd4d0ca

    .line 64
    :goto_1
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 65
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v6, 0x8

    .line 67
    invoke-direct {v0, v6}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v7

    invoke-virtual {v4, v1, v7, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 70
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    .line 71
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x10

    .line 72
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 73
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74
    const-string v10, "\u2039 \u8fd4\u56de"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41800000    # 16.0f

    .line 75
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v10, -0x17a6f4

    .line 77
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    invoke-direct {v0, v6}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v8}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v12

    invoke-direct {v0, v6}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v13

    invoke-virtual {v9, v7, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 79
    new-instance v11, Lcom/jichi/ob/heatmap/HeatmapActivity$1;

    invoke-direct {v11, v0}, Lcom/jichi/ob/heatmap/HeatmapActivity$1;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    const-string v12, "\u70ed\u529b\u56fe"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41900000    # 18.0f

    .line 84
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 85
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    const-string v13, "  \u4ec5\u53e0\u52a0\u672c\u5730\u7f13\u5b58\u8fc7\u7684\u8f68\u8ff9\u6587\u4ef6"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v13, 0x41400000    # 12.0f

    .line 89
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    const v14, -0x757068

    .line 90
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const v15, 0x800005

    .line 91
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v9, v7, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->tipView:Landroid/widget/TextView;

    .line 99
    const-string v9, "\u26a0 \u70ed\u529b\u56fe\u53e0\u52a0\u672c\u5730\u8f68\u8ff9\uff1a\u81ea\u52a8\u8bfb\u53d6\u300c\u4e0b\u8f7d/\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB\u300d\u4e0e App \u4e0b\u8f7d\u8bb0\u5f55\uff1b\u53ef\u70b9\u4e0b\u65b9\u300c\u9009\u62e9\u6587\u4ef6\u5939\u300d\u624b\u52a8\u6307\u5b9a\u76ee\u5f55\u3002\u5e95\u56fe\u79bb\u7ebf\u65f6\u70ed\u529b\u7167\u5e38\u663e\u793a\u3002"

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->tipView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    iget-object v1, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->tipView:Landroid/widget/TextView;

    const v9, -0x4bacf7

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v1, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->tipView:Landroid/widget/TextView;

    const v9, 0x1affa94d

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 103
    iget-object v1, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->tipView:Landroid/widget/TextView;

    const/16 v9, 0xa

    invoke-direct {v0, v9}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v12

    invoke-direct {v0, v6}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v13

    invoke-direct {v0, v9}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v9

    invoke-direct {v0, v6}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v15

    invoke-virtual {v1, v12, v13, v9, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 104
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v1, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    invoke-direct {v0, v6}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v12

    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 107
    iget-object v12, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->tipView:Landroid/widget/TextView;

    invoke-virtual {v4, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->isDarkTheme()Z

    move-result v12

    if-eqz v12, :cond_2

    const v12, -0xf3f1ee

    goto :goto_2

    :cond_2
    const v12, -0x171512

    :goto_2
    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 113
    new-instance v12, Lcom/jichi/ob/heatmap/HeatmapView;

    invoke-direct {v12, v0}, Lcom/jichi/ob/heatmap/HeatmapView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->mapView:Lcom/jichi/ob/heatmap/HeatmapView;

    .line 114
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyLayout:Landroid/widget/LinearLayout;

    .line 118
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    iget-object v12, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyLayout:Landroid/widget/LinearLayout;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 120
    iget-object v12, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 121
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyView:Landroid/widget/TextView;

    .line 122
    const-string v12, "\ud83d\udcc2 \u672a\u627e\u5230\u672c\u5730\u8f68\u8ff9\u6587\u4ef6\n\n\u5df2\u81ea\u52a8\u626b\u63cf\uff1aDownload/\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB\u3001App \u4e0b\u8f7d\u8bb0\u5f55\u4e0e\u5df2\u9009\u6587\u4ef6\u5939\n\u53ef\u70b9\u300c\u9009\u62e9\u6587\u4ef6\u5939\u300d\u624b\u52a8\u6307\u5b9a GPX/FIT/TCX \u76ee\u5f55\n\uff08\u6bcf\u4e2a\u6587\u4ef6\u9700 \u226510 \u4e2a\u8f68\u8ff9\u70b9\u624d\u53c2\u4e0e\u70ed\u529b\u53e0\u52a0\uff09"

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 125
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyView:Landroid/widget/TextView;

    const/16 v12, 0x14

    invoke-direct {v0, v12}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v15

    invoke-direct {v0, v12}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v12

    invoke-direct {v0, v8}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v5

    invoke-virtual {v2, v15, v7, v12, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 127
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 129
    const-string v5, "\u53bb\u540c\u6b65\u6570\u636e\u5230\u6587\u4ef6\u5939"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 131
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 132
    new-instance v5, Lcom/jichi/ob/heatmap/HeatmapActivity$2;

    invoke-direct {v5, v0}, Lcom/jichi/ob/heatmap/HeatmapActivity$2;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v5, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V


    .line 136
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    iget-object v5, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v5, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->emptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->loading:Landroid/widget/ProgressBar;

    .line 142
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x30

    invoke-direct {v0, v5}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v10

    invoke-direct {v0, v5}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v5

    invoke-direct {v2, v10, v5, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 143
    iget-object v5, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->loading:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    iget-object v5, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->loading:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v9, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 148
    invoke-direct {v0, v6}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 149
    invoke-virtual {v4, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->statusView:Landroid/widget/TextView;

    .line 153
    const-string v2, "\u672a\u626b\u63cf"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->statusView:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 155
    iget-object v1, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v1, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->statusView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v5

    const/4 v9, 0x6

    invoke-direct {v0, v9}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v10

    invoke-direct {v0, v2}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v12

    const/4 v13, 0x4

    invoke-direct {v0, v13}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v13

    invoke-virtual {v1, v5, v10, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 157
    iget-object v1, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 162
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 163
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 164
    const-string v10, "\u900f\u660e\u5ea6"

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41400000    # 12.0f

    .line 165
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 166
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    new-instance v10, Landroid/widget/SeekBar;

    invoke-direct {v10, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->alphaBar:Landroid/widget/SeekBar;

    const/16 v12, 0x64

    .line 168
    invoke-virtual {v10, v12}, Landroid/widget/SeekBar;->setMax(I)V

    .line 169
    iget-object v10, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->alphaBar:Landroid/widget/SeekBar;

    const/16 v12, 0x5a

    invoke-virtual {v10, v12}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 170
    iget-object v10, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->alphaBar:Landroid/widget/SeekBar;

    new-instance v12, Lcom/jichi/ob/heatmap/HeatmapActivity$3;

    invoke-direct {v12, v0}, Lcom/jichi/ob/heatmap/HeatmapActivity$3;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;)V

    invoke-virtual {v10, v12}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 175
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 176
    const-string v12, "\u5e73\u6ed1\u5ea6"

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41400000    # 12.0f

    .line 177
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 178
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    new-instance v3, Landroid/widget/SeekBar;

    invoke-direct {v3, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->sigmaBar:Landroid/widget/SeekBar;

    .line 180
    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 181
    iget-object v3, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->sigmaBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 182
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->sigmaBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/jichi/ob/heatmap/HeatmapActivity$4;

    invoke-direct {v3, v0}, Lcom/jichi/ob/heatmap/HeatmapActivity$4;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 187
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->alphaBar:Landroid/widget/SeekBar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->sigmaBar:Landroid/widget/SeekBar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 195
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 196
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 197
    invoke-direct {v0, v9}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v2

    invoke-virtual {v1, v7, v2, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 198
    const-string v2, "\u6df1\u8272\u5e95"

    invoke-direct/range {p0 .. p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->isDarkTheme()Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/jichi/ob/heatmap/HeatmapActivity;->mkButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->btnDark:Landroid/widget/Button;

    .line 199
    new-instance v3, Lcom/jichi/ob/heatmap/HeatmapActivity$5;

    invoke-direct {v3, v0}, Lcom/jichi/ob/heatmap/HeatmapActivity$5;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->isDarkTheme()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v3, "\u6d45\u8272\u5e95"

    invoke-direct {v0, v3, v2}, Lcom/jichi/ob/heatmap/HeatmapActivity;->mkButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->btnLight:Landroid/widget/Button;

    .line 209
    new-instance v3, Lcom/jichi/ob/heatmap/HeatmapActivity$6;

    invoke-direct {v3, v0}, Lcom/jichi/ob/heatmap/HeatmapActivity$6;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const-string v2, "\u626b\u63cf\u672c\u5730\u8f68\u8ff9"

    invoke-direct {v0, v2, v7}, Lcom/jichi/ob/heatmap/HeatmapActivity;->mkButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->btnScan:Landroid/widget/Button;

    .line 219
    new-instance v3, Lcom/jichi/ob/heatmap/HeatmapActivity$7;

    invoke-direct {v3, v0}, Lcom/jichi/ob/heatmap/HeatmapActivity$7;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const-string v2, "\u5e73\u53f0\u4e0b\u8f7d"

    invoke-direct {v0, v2, v7}, Lcom/jichi/ob/heatmap/HeatmapActivity;->mkButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->btnDownload:Landroid/widget/Button;

    .line 223
    new-instance v3, Lcom/jichi/ob/heatmap/HeatmapActivity$8;

    invoke-direct {v3, v0}, Lcom/jichi/ob/heatmap/HeatmapActivity$8;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->btnDark:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->btnLight:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->btnScan:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->btnDownload:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v2, "\u5e95\u56fe: \u5728\u7ebf"

    invoke-direct {v0, v2, v7}, Lcom/jichi/ob/heatmap/HeatmapActivity;->mkButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->btnBase:Landroid/widget/Button;

    new-instance v3, Lcom/jichi/ob/heatmap/HeatmapActivity$13;

    invoke-direct {v3, v0}, Lcom/jichi/ob/heatmap/HeatmapActivity$13;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "\u9009\u62e9\u6587\u4ef6\u5939"

    invoke-direct {v0, v2, v7}, Lcom/jichi/ob/heatmap/HeatmapActivity;->mkButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/jichi/ob/heatmap/HeatmapActivity$14;

    invoke-direct {v3, v0}, Lcom/jichi/ob/heatmap/HeatmapActivity$14;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    invoke-virtual {v0, v4}, Lcom/jichi/ob/heatmap/HeatmapActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 418
    invoke-virtual {p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private invalidateUiColors()V
    .locals 0

    return-void
.end method

.method private isDarkTheme()Z
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mkButton(Ljava/lang/String;Z)Landroid/widget/Button;
    .locals 3

    .line 236
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 238
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p1, 0x0

    .line 239
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/16 v1, 0xa

    .line 240
    invoke-direct {p0, v1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, p1, v1, p1}, Landroid/widget/Button;->setPadding(IIII)V

    if-eqz p2, :cond_0

    const p1, -0x17a6f4

    .line 242
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 p1, -0x1

    .line 243
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->isDarkTheme()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, -0xc5c2bc

    goto :goto_0

    :cond_1
    const p1, -0x1c1a16

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 246
    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->isDarkTheme()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, -0x13100d

    goto :goto_1

    :cond_2
    const p1, -0xd4d0ca

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_2
    return-object v0
.end method

.method private openDownloadCenter()V
    .locals 2

    .line 268
    :try_start_0
    const-string v0, "com.jichi.ob.MainActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 269
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/jichi/ob/heatmap/HeatmapActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    const-string v0, "\u65e0\u6cd5\u6253\u5f00\u4e0b\u8f7d\u4e2d\u5fc3"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private regenerate(I)V
    .locals 2

    .line 372
    iget-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->generating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->generating:Z

    .line 374
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->loading:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 375
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jichi/ob/heatmap/HeatmapActivity$12;

    invoke-direct {v1, p0, p1}, Lcom/jichi/ob/heatmap/HeatmapActivity$12;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 414
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private scanLocal()V
    .locals 3

    .line 307
    iget-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->generating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->generating:Z

    .line 309
    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->loading:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->sigmaBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 311
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/jichi/ob/heatmap/HeatmapActivity$11;

    invoke-direct {v2, p0, v0}, Lcom/jichi/ob/heatmap/HeatmapActivity$11;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;F)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 367
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setDark(Z)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapActivity;->mapView:Lcom/jichi/ob/heatmap/HeatmapView;

    invoke-virtual {v0, p1}, Lcom/jichi/ob/heatmap/HeatmapView;->setDark(Z)V

    .line 259
    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->invalidateUiColors()V

    return-void
.end method

.method private showCountDialog(Ljava/lang/String;)V
    .locals 4

    .line 290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4ece "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u4e0b\u8f7d\u6570\u91cf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u6700\u8fd1 50 \u6761"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u6700\u8fd1 100 \u6761"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "\u5168\u90e8"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/jichi/ob/heatmap/HeatmapActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/jichi/ob/heatmap/HeatmapActivity$10;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    .line 301
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 302
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showDownloadDialog()V
    .locals 5

    .line 276
    sget-object v0, Lcom/jichi/ob/heatmap/HeatmapActivity;->PLATFORMS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 277
    :goto_0
    sget-object v2, Lcom/jichi/ob/heatmap/HeatmapActivity;->PLATFORMS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4ece "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u4e0b\u8f7d"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5e73\u53f0\u4e0b\u8f7d\uff08\u65b9\u5f0fB\uff09"

    .line 279
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/jichi/ob/heatmap/HeatmapActivity$9;

    invoke-direct {v2, p0}, Lcom/jichi/ob/heatmap/HeatmapActivity$9;-><init>(Lcom/jichi/ob/heatmap/HeatmapActivity;)V

    .line 280
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->buildUi()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x55

    if-ne p1, v0, :cond_done

    if-nez p2, :cond_done

    if-nez p3, :cond_done

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_done

    invoke-static {p0, v1}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->setFolderUri(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->scanLocal()V

    :cond_done
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapActivity;->scanLocal()V

    return-void
.end method

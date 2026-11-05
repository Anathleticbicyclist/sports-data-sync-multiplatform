.class public Lcom/jichi/bikecomputer/BikeActivity;
.super Landroid/app/Activity;
.source "BikeActivity.java"

# interfaces
.implements Lcom/jichi/bikecomputer/BikeService$Listener;


# instance fields
.field private blockCad:Landroid/view/View;

.field private blockHr:Landroid/view/View;

.field private blockPower:Landroid/view/View;

.field private bound:Z

.field private btnPause:Landroid/widget/Button;

.field private btnStart:Landroid/widget/Button;

.field private btnStop:Landroid/widget/Button;

.field private cardAscent:Landroid/view/View;

.field private cardDist:Landroid/view/View;

.field private final conn:Landroid/content/ServiceConnection;

.field private itemAlt:Landroid/view/View;

.field private itemAvg:Landroid/view/View;

.field private itemBaro:Landroid/view/View;

.field private itemGrade:Landroid/view/View;

.field private itemMax:Landroid/view/View;

.field private mainMode:Ljava/lang/String;

.field private prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

.field private rowTime:Landroid/view/View;

.field private service:Lcom/jichi/bikecomputer/BikeService;

.field private sport:Lcom/jichi/bikecomputer/model/SportType;

.field private final ticker:Ljava/lang/Runnable;

.field private trackView:Lcom/jichi/bikecomputer/ui/TrackPreviewView;

.field private tvAlt:Landroid/widget/TextView;

.field private tvAscent:Landroid/widget/TextView;

.field private tvAvg:Landroid/widget/TextView;

.field private tvAvgLabel:Landroid/widget/TextView;

.field private tvBaro:Landroid/widget/TextView;

.field private tvBaroAlt:Landroid/widget/TextView;

.field private tvBle:Landroid/widget/TextView;

.field private tvCad:Landroid/widget/TextView;

.field private tvCadLabel:Landroid/widget/TextView;

.field private tvDist:Landroid/widget/TextView;

.field private tvGpsState:Landroid/widget/TextView;

.field private tvGrade:Landroid/widget/TextView;

.field private tvHr:Landroid/widget/TextView;

.field private tvMain:Landroid/widget/TextView;

.field private tvMainLabel:Landroid/widget/TextView;

.field private tvMainUnit:Landroid/widget/TextView;

.field private tvMax:Landroid/widget/TextView;

.field private tvMaxLabel:Landroid/widget/TextView;

.field private tvPower:Landroid/widget/TextView;

.field private tvSportName:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;

.field private tvTimeText:Landroid/widget/TextView;

.field private final ui:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->bound:Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->ui:Landroid/os/Handler;

    .line 49
    sget-object v0, Lcom/jichi/bikecomputer/model/SportType;->CYCLING:Lcom/jichi/bikecomputer/model/SportType;

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    .line 50
    const-string v0, "speed"

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->mainMode:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/jichi/bikecomputer/BikeActivity$1;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/BikeActivity$1;-><init>(Lcom/jichi/bikecomputer/BikeActivity;)V

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->ticker:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/jichi/bikecomputer/BikeActivity$2;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/BikeActivity$2;-><init>(Lcom/jichi/bikecomputer/BikeActivity;)V

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->conn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/jichi/bikecomputer/BikeActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeActivity;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/jichi/bikecomputer/BikeActivity;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/jichi/bikecomputer/BikeActivity;->ui:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jichi/bikecomputer/BikeActivity;)Lcom/jichi/bikecomputer/BikeService;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jichi/bikecomputer/BikeActivity;Lcom/jichi/bikecomputer/BikeService;)Lcom/jichi/bikecomputer/BikeService;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    return-object p1
.end method

.method static synthetic access$302(Lcom/jichi/bikecomputer/BikeActivity;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->bound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/jichi/bikecomputer/BikeActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeActivity;->updateButtons()V

    return-void
.end method

.method private applyDisplayConfig()V
    .locals 7

    .line 244
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    sget-object v1, Lcom/jichi/bikecomputer/model/SportType;->RUNNING:Lcom/jichi/bikecomputer/model/SportType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    sget-object v1, Lcom/jichi/bikecomputer/model/SportType;->WALKING:Lcom/jichi/bikecomputer/model/SportType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 245
    :goto_1
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    sget-object v4, Lcom/jichi/bikecomputer/model/SportType;->RUNNING:Lcom/jichi/bikecomputer/model/SportType;

    const/16 v5, 0x8

    if-ne v1, v4, :cond_2

    .line 246
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->blockPower:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    sget-object v4, Lcom/jichi/bikecomputer/model/SportType;->WALKING:Lcom/jichi/bikecomputer/model/SportType;

    if-ne v1, v4, :cond_3

    .line 248
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->blockPower:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->blockPower:Landroid/view/View;

    iget-object v4, p0, Lcom/jichi/bikecomputer/BikeActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    const-string v6, "show_power"

    invoke-virtual {v4, v6}, Lcom/jichi/bikecomputer/store/PrefsManager;->isShow(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :goto_3
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->blockCad:Landroid/view/View;

    iget-object v4, p0, Lcom/jichi/bikecomputer/BikeActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    const-string v6, "show_cad"

    invoke-virtual {v4, v6}, Lcom/jichi/bikecomputer/store/PrefsManager;->isShow(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvCadLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const-string v0, "\u6b65\u9891 spm"

    goto :goto_5

    :cond_6
    const-string v0, "\u8e0f\u9891 rpm"

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    sget-object v1, Lcom/jichi/bikecomputer/model/SportType;->RUNNING:Lcom/jichi/bikecomputer/model/SportType;

    if-ne v0, v1, :cond_7

    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v3

    .line 256
    :goto_6
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvAvgLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    const-string v4, "\u5747\u914d"

    goto :goto_7

    :cond_8
    const-string v4, "\u5747\u901f"

    :goto_7
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMaxLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    const-string v0, "\u6700\u5feb"

    goto :goto_8

    :cond_9
    const-string v0, "\u6700\u5927"

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->rowTime:Landroid/view/View;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    const-string v4, "show_time"

    invoke-virtual {v1, v4}, Lcom/jichi/bikecomputer/store/PrefsManager;->isShow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_9

    :cond_a
    move v1, v5

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->blockHr:Landroid/view/View;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    const-string v4, "show_hr"

    invoke-virtual {v1, v4}, Lcom/jichi/bikecomputer/store/PrefsManager;->isShow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_a

    :cond_b
    move v1, v5

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->cardDist:Landroid/view/View;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    const-string v4, "show_dist"

    invoke-virtual {v1, v4}, Lcom/jichi/bikecomputer/store/PrefsManager;->isShow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v3

    goto :goto_b

    :cond_c
    move v1, v5

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->cardAscent:Landroid/view/View;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    const-string v4, "show_ascent"

    invoke-virtual {v1, v4}, Lcom/jichi/bikecomputer/store/PrefsManager;->isShow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v3

    goto :goto_c

    :cond_d
    move v1, v5

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->itemGrade:Landroid/view/View;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    const-string v4, "show_grade"

    invoke-virtual {v1, v4}, Lcom/jichi/bikecomputer/store/PrefsManager;->isShow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_d

    :cond_e
    move v1, v5

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->itemAlt:Landroid/view/View;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    const-string v4, "show_alt"

    invoke-virtual {v1, v4}, Lcom/jichi/bikecomputer/store/PrefsManager;->isShow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_e

    :cond_f
    move v1, v5

    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->itemAvg:Landroid/view/View;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    const-string v4, "show_avg"

    invoke-virtual {v1, v4}, Lcom/jichi/bikecomputer/store/PrefsManager;->isShow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v3

    goto :goto_f

    :cond_10
    move v1, v5

    :goto_f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->itemMax:Landroid/view/View;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    const-string v4, "show_max"

    invoke-virtual {v1, v4}, Lcom/jichi/bikecomputer/store/PrefsManager;->isShow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v3

    goto :goto_10

    :cond_11
    move v1, v5

    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->itemBaro:Landroid/view/View;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    const-string v4, "show_baro"

    invoke-virtual {v1, v4}, Lcom/jichi/bikecomputer/store/PrefsManager;->isShow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_11

    :cond_12
    move v3, v5

    :goto_11
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    if-nez v0, :cond_13

    return-void

    .line 271
    :cond_13
    invoke-virtual {v0}, Lcom/jichi/bikecomputer/BikeService;->power3s()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v1}, Lcom/jichi/bikecomputer/BikeService;->lastHeartRate()I

    move-result v1

    .line 274
    iget-object v3, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v3}, Lcom/jichi/bikecomputer/BikeService;->getPoints()Ljava/util/List;

    move-result-object v3

    .line 275
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget v4, v4, Lcom/jichi/bikecomputer/model/TrackPoint;->speed:F

    goto :goto_12

    :cond_14
    const/4 v4, 0x0

    .line 277
    :goto_12
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v2, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->alt:D

    goto :goto_13

    :cond_15
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 279
    :goto_13
    const-string v5, "power"

    iget-object v6, p0, Lcom/jichi/bikecomputer/BikeActivity;->mainMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "--"

    if-eqz v5, :cond_17

    .line 280
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMain:Landroid/widget/TextView;

    if-lez v0, :cond_16

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :cond_16
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMainUnit:Landroid/widget/TextView;

    const-string v1, "W"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMainLabel:Landroid/widget/TextView;

    const-string v1, "3\u79d2\u529f\u7387 \u00b7 \u70b9\u51fb\u5207\u6362"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 283
    :cond_17
    const-string v0, "hr"

    iget-object v5, p0, Lcom/jichi/bikecomputer/BikeActivity;->mainMode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 284
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMain:Landroid/widget/TextView;

    if-lez v1, :cond_18

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :cond_18
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMainUnit:Landroid/widget/TextView;

    const-string v1, "bpm"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMainLabel:Landroid/widget/TextView;

    const-string v1, "\u5fc3\u7387 \u00b7 \u70b9\u51fb\u5207\u6362"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 287
    :cond_19
    const-string v0, "pace"

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->mainMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 288
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMain:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/jichi/bikecomputer/BikeActivity;->fmtPace(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMainUnit:Landroid/widget/TextView;

    const-string v1, "/km"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMainLabel:Landroid/widget/TextView;

    const-string v1, "\u914d\u901f \u00b7 \u70b9\u51fb\u5207\u6362"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 291
    :cond_1a
    const-string v0, "alt"

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->mainMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 292
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMain:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_14

    :cond_1b
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.0f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_14
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMainUnit:Landroid/widget/TextView;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMainLabel:Landroid/widget/TextView;

    const-string v1, "\u6d77\u62d4 \u00b7 \u70b9\u51fb\u5207\u6362"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 296
    :cond_1c
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMain:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v2, 0x40666666    # 3.6f

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.1f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMainUnit:Landroid/widget/TextView;

    const-string v1, "km/h"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMainLabel:Landroid/widget/TextView;

    const-string v1, "\u901f\u5ea6 \u00b7 \u70b9\u51fb\u5207\u6362"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    return-void
.end method

.method private static defaultMode(Lcom/jichi/bikecomputer/model/SportType;)Ljava/lang/String;
    .locals 1

    .line 210
    sget-object v0, Lcom/jichi/bikecomputer/model/SportType;->RUNNING:Lcom/jichi/bikecomputer/model/SportType;

    if-ne p0, v0, :cond_0

    const-string p0, "pace"

    return-object p0

    .line 211
    :cond_0
    sget-object v0, Lcom/jichi/bikecomputer/model/SportType;->WALKING:Lcom/jichi/bikecomputer/model/SportType;

    if-ne p0, v0, :cond_1

    const-string p0, "alt"

    return-object p0

    .line 212
    :cond_1
    const-string p0, "speed"

    return-object p0
.end method

.method static fmtPace(F)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    .line 229
    const-string v1, "--"

    if-lez v0, :cond_3

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v2, 0x408f400000000000L    # 1000.0

    float-to-double v4, p0

    div-double/2addr v2, v4

    const-wide v4, 0x40ac200000000000L    # 3600.0

    cmpl-double p0, v2, v4

    if-lez p0, :cond_1

    return-object v1

    :cond_1
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    div-double v0, v2, v0

    double-to-int p0, v0

    mul-int/lit8 v0, p0, 0x3c

    int-to-double v0, v0

    sub-double/2addr v2, v0

    .line 233
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    add-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    .line 238
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%d\'%02d\""

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method private initMainMode()V
    .locals 6

    .line 217
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/store/PrefsManager;->getMainDisplay()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    invoke-static {v1}, Lcom/jichi/bikecomputer/BikeActivity;->validModes(Lcom/jichi/bikecomputer/model/SportType;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 219
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 220
    iput-object v4, p0, Lcom/jichi/bikecomputer/BikeActivity;->mainMode:Ljava/lang/String;

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    invoke-static {v0}, Lcom/jichi/bikecomputer/BikeActivity;->defaultMode(Lcom/jichi/bikecomputer/model/SportType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->mainMode:Ljava/lang/String;

    return-void
.end method

.method private onCreateBody(Landroid/os/Bundle;)V
    .locals 2

    const p1, 0x7f0b007b

    .line 93
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->setContentView(I)V

    .line 94
    new-instance p1, Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-direct {p1, p0}, Lcom/jichi/bikecomputer/store/PrefsManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    .line 95
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/BikeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "sport"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/jichi/bikecomputer/model/SportType;

    if-eqz p1, :cond_0

    .line 96
    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    :cond_0
    const p1, 0x7f080381

    .line 98
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMain:Landroid/widget/TextView;

    const p1, 0x7f080383

    .line 99
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMainUnit:Landroid/widget/TextView;

    const p1, 0x7f080382

    .line 100
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMainLabel:Landroid/widget/TextView;

    const p1, 0x7f08038e

    .line 101
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvTime:Landroid/widget/TextView;

    const p1, 0x7f08038f

    .line 102
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvTimeText:Landroid/widget/TextView;

    const p1, 0x7f080386

    .line 103
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvPower:Landroid/widget/TextView;

    const p1, 0x7f080380

    .line 104
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvHr:Landroid/widget/TextView;

    const p1, 0x7f08036e

    .line 105
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvCad:Landroid/widget/TextView;

    const p1, 0x7f080370

    .line 106
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvCadLabel:Landroid/widget/TextView;

    const p1, 0x7f08037a

    .line 107
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvDist:Landroid/widget/TextView;

    const p1, 0x7f080368

    .line 108
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvAscent:Landroid/widget/TextView;

    const p1, 0x7f08037c

    .line 109
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvGrade:Landroid/widget/TextView;

    const p1, 0x7f080367

    .line 110
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvAlt:Landroid/widget/TextView;

    const p1, 0x7f080369

    .line 111
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvAvg:Landroid/widget/TextView;

    const p1, 0x7f080384

    .line 112
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMax:Landroid/widget/TextView;

    const p1, 0x7f08036a

    .line 113
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvAvgLabel:Landroid/widget/TextView;

    const p1, 0x7f080385

    .line 114
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMaxLabel:Landroid/widget/TextView;

    const p1, 0x7f08036c

    .line 115
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvBaroAlt:Landroid/widget/TextView;

    const p1, 0x7f08037b

    .line 116
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvGpsState:Landroid/widget/TextView;

    const p1, 0x7f08036b

    .line 117
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvBaro:Landroid/widget/TextView;

    const p1, 0x7f08036d

    .line 118
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvBle:Landroid/widget/TextView;

    const p1, 0x7f08038d

    .line 119
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvSportName:Landroid/widget/TextView;

    const p1, 0x7f08035a

    .line 120
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->rowTime:Landroid/view/View;

    const p1, 0x7f080330

    .line 121
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->blockPower:Landroid/view/View;

    const p1, 0x7f08032f

    .line 122
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->blockHr:Landroid/view/View;

    const p1, 0x7f08032e

    .line 123
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->blockCad:Landroid/view/View;

    const p1, 0x7f080343

    .line 124
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->cardDist:Landroid/view/View;

    const p1, 0x7f080341

    .line 125
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->cardAscent:Landroid/view/View;

    const p1, 0x7f08034a

    .line 126
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->itemGrade:Landroid/view/View;

    const p1, 0x7f080347

    .line 127
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->itemAlt:Landroid/view/View;

    const p1, 0x7f080348

    .line 128
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->itemAvg:Landroid/view/View;

    const p1, 0x7f08034b

    .line 129
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->itemMax:Landroid/view/View;

    const p1, 0x7f080349

    .line 130
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->itemBaro:Landroid/view/View;

    const p1, 0x7f080366

    .line 131
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jichi/bikecomputer/ui/TrackPreviewView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->trackView:Lcom/jichi/bikecomputer/ui/TrackPreviewView;

    const p1, 0x7f08033f

    .line 132
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->btnStart:Landroid/widget/Button;

    const p1, 0x7f080338

    .line 133
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->btnPause:Landroid/widget/Button;

    const p1, 0x7f080340

    .line 134
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->btnStop:Landroid/widget/Button;

    .line 136
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvSportName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    iget-object v0, v0, Lcom/jichi/bikecomputer/model/SportType;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeActivity;->initMainMode()V

    .line 138
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->btnStart:Landroid/widget/Button;

    new-instance v0, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/bikecomputer/BikeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->btnPause:Landroid/widget/Button;

    new-instance v0, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/bikecomputer/BikeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->btnStop:Landroid/widget/Button;

    new-instance v0, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/jichi/bikecomputer/BikeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080359

    .line 149
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda4;-><init>(Lcom/jichi/bikecomputer/BikeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08034e

    .line 152
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/jichi/bikecomputer/BikeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/jichi/bikecomputer/BikeService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 160
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->conn:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jichi/bikecomputer/BikeActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const p1, 0x7f080331

    .line 162
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda6;-><init>(Lcom/jichi/bikecomputer/BikeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private refresh()V
    .locals 12

    .line 315
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {v0}, Lcom/jichi/bikecomputer/BikeService;->getStats()Lcom/jichi/bikecomputer/model/TrackStats;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v1}, Lcom/jichi/bikecomputer/BikeService;->elapsedMs()J

    move-result-wide v1

    .line 318
    iget-object v3, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v3}, Lcom/jichi/bikecomputer/BikeService;->getPoints()Ljava/util/List;

    move-result-object v3

    .line 319
    iget-object v4, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v4}, Lcom/jichi/bikecomputer/BikeService;->getState()I

    move-result v4

    .line 322
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeActivity;->applyDisplayConfig()V

    .line 323
    iget-object v5, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvTime:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/jichi/bikecomputer/BikeService;->fmtTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v5, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvTimeText:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/jichi/bikecomputer/BikeService;->fmtTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v1}, Lcom/jichi/bikecomputer/BikeService;->power3s()I

    move-result v1

    .line 328
    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v2}, Lcom/jichi/bikecomputer/BikeService;->lastHeartRate()I

    move-result v2

    .line 329
    iget-object v5, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    sget-object v6, Lcom/jichi/bikecomputer/model/SportType;->RUNNING:Lcom/jichi/bikecomputer/model/SportType;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    sget-object v6, Lcom/jichi/bikecomputer/model/SportType;->WALKING:Lcom/jichi/bikecomputer/model/SportType;

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    iget-object v5, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v5}, Lcom/jichi/bikecomputer/BikeService;->lastCadence()I

    move-result v5

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v5}, Lcom/jichi/bikecomputer/BikeService;->runCadence()I

    move-result v5

    .line 331
    :goto_1
    iget-object v6, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvPower:Landroid/widget/TextView;

    const-string v7, "--"

    if-lez v1, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v7

    :goto_2
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvHr:Landroid/widget/TextView;

    if-lez v2, :cond_4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v7

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvCad:Landroid/widget/TextView;

    if-lez v5, :cond_5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v7

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvDist:Landroid/widget/TextView;

    iget-wide v5, v0, Lcom/jichi/bikecomputer/model/TrackStats;->distanceM:D

    invoke-static {v5, v6}, Lcom/jichi/bikecomputer/BikeService;->fmtKm(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvAscent:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v5, v0, Lcom/jichi/bikecomputer/model/TrackStats;->ascentM:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%.0fm"

    invoke-static {v2, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-wide v1, v0, Lcom/jichi/bikecomputer/model/TrackStats;->distanceM:D

    const-wide/16 v8, 0x0

    cmpl-double v1, v1, v8

    if-lez v1, :cond_6

    iget-wide v1, v0, Lcom/jichi/bikecomputer/model/TrackStats;->ascentM:D

    iget-wide v10, v0, Lcom/jichi/bikecomputer/model/TrackStats;->distanceM:D

    div-double/2addr v1, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v10

    goto :goto_5

    :cond_6
    move-wide v1, v8

    .line 339
    :goto_5
    iget-object v5, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvGrade:Landroid/widget/TextView;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.1f%%"

    invoke-static {v10, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v1, v1, Lcom/jichi/bikecomputer/model/TrackPoint;->alt:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    .line 341
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v8, v1, Lcom/jichi/bikecomputer/model/TrackPoint;->alt:D

    .line 342
    :cond_8
    :goto_6
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvAlt:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    sget-object v2, Lcom/jichi/bikecomputer/model/SportType;->RUNNING:Lcom/jichi/bikecomputer/model/SportType;

    if-ne v1, v2, :cond_9

    .line 345
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/model/TrackStats;->avgSpeedMs()D

    move-result-wide v8

    double-to-float v2, v8

    invoke-static {v2}, Lcom/jichi/bikecomputer/BikeActivity;->fmtPace(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMax:Landroid/widget/TextView;

    iget v0, v0, Lcom/jichi/bikecomputer/model/TrackStats;->maxSpeedMs:F

    invoke-static {v0}, Lcom/jichi/bikecomputer/BikeActivity;->fmtPace(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 348
    :cond_9
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvAvg:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/model/TrackStats;->avgSpeedMs()D

    move-result-wide v8

    const-wide v10, 0x400cccccc0000000L    # 3.5999999046325684

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "%.1f"

    invoke-static {v2, v8, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvMax:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v0, v0, Lcom/jichi/bikecomputer/model/TrackStats;->maxSpeedMs:F

    const v5, 0x40666666    # 3.6f

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v8, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :goto_7
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/BikeService;->baroAltitude()D

    move-result-wide v0

    .line 352
    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvBaroAlt:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_8

    :cond_a
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_8
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/BikeService;->gpsFix()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5b9a\u4f4d\u4e2d \u00b7 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v2}, Lcom/jichi/bikecomputer/BikeService;->gpsAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 357
    :cond_b
    const-string v0, "\u7b49\u5f85\u5b9a\u4f4d\u2026"

    .line 358
    :goto_9
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvGpsState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvGpsState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v1}, Lcom/jichi/bikecomputer/BikeService;->gpsFix()Z

    move-result v1

    const v2, -0xa8400

    const v5, -0xb350b0

    if-eqz v1, :cond_c

    move v1, v5

    goto :goto_a

    :cond_c
    move v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/BikeService;->baroStatus()Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvBaro:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const-string v1, "\u6c14\u538b\u8ba1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v6, -0x655c51

    if-eqz v1, :cond_d

    move v2, v5

    goto :goto_b

    .line 365
    :cond_d
    const-string v1, "\u6c14\u538b\u8ba1(\u7b49\u5f85\u6570\u636e)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_b

    .line 367
    :cond_e
    const-string v1, "\u6c14\u538b\u8ba1\u6ce8\u518c\u5931\u8d25"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v2, -0x39d7d8

    goto :goto_b

    :cond_f
    move v2, v6

    .line 372
    :goto_b
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvBaro:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvBle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v1}, Lcom/jichi/bikecomputer/BikeService;->bleConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "\u4f20\u611f\u5668\u5df2\u8fde"

    goto :goto_c

    :cond_10
    const-string v1, "\u4f20\u611f\u5668\u672a\u8fde"

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->tvBle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    invoke-virtual {v1}, Lcom/jichi/bikecomputer/BikeService;->bleConnected()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_d

    :cond_11
    move v5, v6

    :goto_d
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v4, :cond_12

    .line 377
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->trackView:Lcom/jichi/bikecomputer/ui/TrackPreviewView;

    invoke-virtual {v0, v3}, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->setPoints(Ljava/util/List;)V

    .line 379
    :cond_12
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeActivity;->updateButtons()V

    return-void
.end method

.method private sendAction(Ljava/lang/String;)V
    .locals 2

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jichi/bikecomputer/BikeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string p1, "sport"

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/BikeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private shareFiles(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 426
    const-string v2, "com.jichi.bikecomputer.fileprovider"

    if-eqz p1, :cond_0

    .line 427
    invoke-static {p0, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 430
    invoke-static {p0, v2, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_1
    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 433
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 435
    :try_start_0
    const-string p1, "\u5206\u4eab\u8f68\u8ff9\u6587\u4ef6"

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    const-string p1, "\u65e0\u53ef\u7528\u5206\u4eab\u5e94\u7528"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private updateButtons()V
    .locals 5

    .line 303
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/BikeService;->getState()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 304
    :goto_0
    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeActivity;->btnStart:Landroid/widget/Button;

    const/16 v3, 0x8

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeActivity;->btnPause:Landroid/widget/Button;

    if-nez v0, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeActivity;->btnStop:Landroid/widget/Button;

    if-nez v0, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 308
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->btnPause:Landroid/widget/Button;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->btnPause:Landroid/widget/Button;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method private static validModes(Lcom/jichi/bikecomputer/model/SportType;)[Ljava/lang/String;
    .locals 3

    .line 204
    sget-object v0, Lcom/jichi/bikecomputer/model/SportType;->RUNNING:Lcom/jichi/bikecomputer/model/SportType;

    const-string v1, "speed"

    const-string v2, "hr"

    if-ne p0, v0, :cond_0

    const-string p0, "pace"

    filled-new-array {p0, v2, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 205
    :cond_0
    sget-object v0, Lcom/jichi/bikecomputer/model/SportType;->WALKING:Lcom/jichi/bikecomputer/model/SportType;

    if-ne p0, v0, :cond_1

    const-string p0, "alt"

    filled-new-array {p0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 206
    :cond_1
    const-string p0, "power"

    filled-new-array {v1, p0, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-static {p1}, Lcom/jichi/bikecomputer/util/NightContext;->apply(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$onCreateBody$0$com-jichi-bikecomputer-BikeActivity(Landroid/view/View;)V
    .locals 0

    .line 138
    const-string p1, "com.jichi.bikecomputer.action.START"

    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->sendAction(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateBody$1$com-jichi-bikecomputer-BikeActivity(Landroid/view/View;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jichi/bikecomputer/BikeService;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 141
    const-string p1, "com.jichi.bikecomputer.action.PAUSE"

    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->sendAction(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    const-string p1, "com.jichi.bikecomputer.action.RESUME"

    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->sendAction(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateBody$2$com-jichi-bikecomputer-BikeActivity(Landroid/view/View;)V
    .locals 0

    .line 146
    const-string p1, "com.jichi.bikecomputer.action.STOP"

    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->sendAction(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateBody$3$com-jichi-bikecomputer-BikeActivity(Landroid/view/View;)V
    .locals 1

    .line 150
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/jichi/bikecomputer/SensorActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$onCreateBody$4$com-jichi-bikecomputer-BikeActivity(Landroid/view/View;)V
    .locals 2

    .line 153
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/jichi/bikecomputer/DisplayActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    const-string v0, "sport"

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$onCreateBody$5$com-jichi-bikecomputer-BikeActivity(Landroid/view/View;)V
    .locals 0

    .line 162
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/BikeActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onFinished$6$com-jichi-bikecomputer-BikeActivity(Ljava/io/File;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/jichi/bikecomputer/BikeActivity;->shareFiles(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/BikeActivity;->onCreateBody(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7801\u8868\u9875\u9762\u52a0\u8f7d\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 88
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/BikeActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 195
    iget-boolean v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->bound:Z

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jichi/bikecomputer/BikeService;->setListener(Lcom/jichi/bikecomputer/BikeService$Listener;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/BikeActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->bound:Z

    :cond_1
    return-void
.end method

.method public onFinished(Ljava/io/File;Ljava/io/File;Lcom/jichi/bikecomputer/model/TrackStats;)V
    .locals 7

    .line 389
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeActivity;->updateButtons()V

    .line 390
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->trackView:Lcom/jichi/bikecomputer/ui/TrackPreviewView;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->service:Lcom/jichi/bikecomputer/BikeService;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jichi/bikecomputer/BikeService;->getPoints()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/jichi/bikecomputer/ui/TrackPreviewView;->setPoints(Ljava/util/List;)V

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 392
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "\u8bb0\u5f55\u5b8c\u6210"

    .line 393
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u8f68\u8ff9\u70b9\u6570\u4e0d\u8db3\uff08\u5c11\u4e8e2\u4e2a\u6709\u6548\u70b9\uff09\uff0c\u672a\u5bfc\u51fa\u6587\u4ef6"

    .line 394
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u597d\u7684"

    .line 395
    invoke-virtual {p1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 399
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_3

    .line 401
    const-string v1, "\u8ddd\u79bb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p3, Lcom/jichi/bikecomputer/model/TrackStats;->distanceM:D

    invoke-static {v3, v4}, Lcom/jichi/bikecomputer/BikeService;->fmtKm(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u00b7 \u65f6\u957f "

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p3, Lcom/jichi/bikecomputer/model/TrackStats;->durationMs:J

    invoke-static {v3, v4}, Lcom/jichi/bikecomputer/BikeService;->fmtTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u722c\u5347 "

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v3, p3, Lcom/jichi/bikecomputer/model/TrackStats;->ascentM:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.0f"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "m \u00b7 "

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    sget-object v3, Lcom/jichi/bikecomputer/model/SportType;->RUNNING:Lcom/jichi/bikecomputer/model/SportType;

    if-ne v1, v3, :cond_2

    .line 406
    const-string v1, "\u5747\u914d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/jichi/bikecomputer/model/TrackStats;->avgSpeedMs()D

    move-result-wide v3

    double-to-float p3, v3

    invoke-static {p3}, Lcom/jichi/bikecomputer/BikeActivity;->fmtPace(F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/km\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 408
    :cond_2
    const-string v1, "\u5747\u901f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3}, Lcom/jichi/bikecomputer/model/TrackStats;->avgSpeedMs()D

    move-result-wide v3

    const-wide v5, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v3, "%.1f"

    invoke-static {v1, v3, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "km/h\n"

    .line 409
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 412
    const-string p3, "FIT: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p2, :cond_5

    .line 413
    const-string p3, "GPX: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_5
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u8bb0\u5f55\u5b8c\u6210 \u00b7 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jichi/bikecomputer/BikeActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    iget-object v3, v3, Lcom/jichi/bikecomputer/model/SportType;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/bikecomputer/BikeActivity;Ljava/io/File;Ljava/io/File;)V

    .line 417
    const-string p1, "\u5206\u4eab\u6587\u4ef6"

    invoke-virtual {p3, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u5173\u95ed"

    .line 418
    invoke-virtual {p1, p2, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 419
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeActivity;->initMainMode()V

    .line 188
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeActivity;->applyDisplayConfig()V

    .line 189
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeActivity;->refresh()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 175
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->ui:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 181
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity;->ui:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTick()V
    .locals 0

    .line 384
    invoke-direct {p0}, Lcom/jichi/bikecomputer/BikeActivity;->refresh()V

    return-void
.end method

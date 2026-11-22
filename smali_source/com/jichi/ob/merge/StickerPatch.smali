.class public final Lcom/jichi/ob/merge/StickerPatch;
.super Ljava/lang/Object;
.source "StickerPatch.java"


# static fields
.field private static sAvgKmh:D

.field private static sDistM:D

.field private static sDur:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .registers 2

    const-wide/16 v0, 0x0

    .line 28
    sput-wide v0, Lcom/jichi/ob/merge/StickerPatch;->sDur:J

    const-wide/16 v0, 0x0

    .line 29
    sput-wide v0, Lcom/jichi/ob/merge/StickerPatch;->sDistM:D

    .line 30
    sput-wide v0, Lcom/jichi/ob/merge/StickerPatch;->sAvgKmh:D

    return-void
.end method

.method public static getDurSec()J
    .registers 2

    .line 34
    sget-wide v0, Lcom/jichi/ob/merge/StickerPatch;->sDur:J

    return-wide v0
.end method

.method public static patch(Lcom/jichi/ob/merge/StickerCore$TrackStats;)Lcom/jichi/ob/merge/StickerCore$TrackStats;
    .registers 17

    if-eqz p0, :cond_39

    .line 38
    sget-wide v3, Lcom/jichi/ob/merge/StickerPatch;->sDur:J

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_b

    goto :goto_39

    .line 41
    :cond_b
    sget-wide v0, Lcom/jichi/ob/merge/StickerPatch;->sDistM:D

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double v1, v0, v5

    .line 42
    sget-wide v5, Lcom/jichi/ob/merge/StickerPatch;->sAvgKmh:D

    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getMaxSpeedKmh()D

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAscentM()D

    move-result-wide v9

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgHr()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getMaxHr()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgCad()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgPower()I

    move-result v14

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getCaloriesKcal()I

    move-result v15

    move-object/from16 v0, p0

    .line 42
    invoke-virtual/range {v0 .. v15}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->copy(DJDDDIIIII)Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v0

    return-object v0

    :cond_39
    :goto_39
    return-object p0
.end method

.method public static setFromMetrics(Lcom/jichi/ob/merge/MergeMetrics;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/jichi/ob/merge/MergeMetrics;->getTotalTimerSec()J

    move-result-wide v0

    .line 18
    invoke-virtual {p0}, Lcom/jichi/ob/merge/MergeMetrics;->getTotalDistanceM()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-gtz p0, :cond_12

    return-void

    .line 22
    :cond_12
    sput-wide v0, Lcom/jichi/ob/merge/StickerPatch;->sDur:J

    .line 23
    sput-wide v2, Lcom/jichi/ob/merge/StickerPatch;->sDistM:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    long-to-double v0, v0

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v4

    div-double/2addr v2, v0

    .line 24
    sput-wide v2, Lcom/jichi/ob/merge/StickerPatch;->sAvgKmh:D

    return-void
.end method

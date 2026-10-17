.class public final Lcom/jichi/ob/merge/TrackMerger$MergedResult;
.super Ljava/lang/Object;
.source "TrackMerger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/merge/TrackMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MergedResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008/\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0006\u0012\u0006\u0010\u0013\u001a\u00020\u0006\u0012\u0006\u0010\u0014\u001a\u00020\u0006\u0012\u0006\u0010\u0015\u001a\u00020\u0006\u0012\u0006\u0010\u0016\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u0006H\u00c6\u0003J\t\u0010/\u001a\u00020\u0008H\u00c6\u0003J\t\u00100\u001a\u00020\nH\u00c6\u0003J\t\u00101\u001a\u00020\nH\u00c6\u0003J\t\u00102\u001a\u00020\nH\u00c6\u0003J\t\u00103\u001a\u00020\u000eH\u00c6\u0003J\t\u00104\u001a\u00020\u000eH\u00c6\u0003J\t\u00105\u001a\u00020\u000eH\u00c6\u0003J\t\u00106\u001a\u00020\u0006H\u00c6\u0003J\t\u00107\u001a\u00020\u0006H\u00c6\u0003J\t\u00108\u001a\u00020\u0006H\u00c6\u0003J\t\u00109\u001a\u00020\u0006H\u00c6\u0003J\t\u0010:\u001a\u00020\u0006H\u00c6\u0003J\t\u0010;\u001a\u00020\u0006H\u00c6\u0003J\u00a5\u0001\u0010<\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010=\u001a\u00020>2\u0008\u0010?\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010@\u001a\u00020\u0006H\u00d6\u0001J\t\u0010A\u001a\u00020\u0008H\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010 R\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010 R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010$R\u0011\u0010\u0010\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010$R\u0011\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001cR\u0011\u0010\u0012\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001cR\u0011\u0010\u0013\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001cR\u0011\u0010\u0014\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001cR\u0011\u0010\u0015\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001cR\u0011\u0010\u0016\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001c\u00a8\u0006B"
    }
    d2 = {
        "Lcom/jichi/ob/merge/TrackMerger$MergedResult;",
        "",
        "points",
        "",
        "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
        "sport",
        "",
        "sportName",
        "",
        "startTime",
        "",
        "endTime",
        "totalDurationSec",
        "totalDistanceKm",
        "",
        "ascentM",
        "descentM",
        "avgHr",
        "maxHr",
        "avgCad",
        "avgPower",
        "segmentCount",
        "pointCount",
        "<init>",
        "(Ljava/util/List;ILjava/lang/String;JJJDDDIIIIII)V",
        "getPoints",
        "()Ljava/util/List;",
        "getSport",
        "()I",
        "getSportName",
        "()Ljava/lang/String;",
        "getStartTime",
        "()J",
        "getEndTime",
        "getTotalDurationSec",
        "getTotalDistanceKm",
        "()D",
        "getAscentM",
        "getDescentM",
        "getAvgHr",
        "getMaxHr",
        "getAvgCad",
        "getAvgPower",
        "getSegmentCount",
        "getPointCount",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final ascentM:D

.field private final avgCad:I

.field private final avgHr:I

.field private final avgPower:I

.field private final descentM:D

.field private final endTime:J

.field private final maxHr:I

.field private final pointCount:I

.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final segmentCount:I

.field private final sport:I

.field private final sportName:Ljava/lang/String;

.field private final startTime:J

.field private final totalDistanceKm:D

.field private final totalDurationSec:J


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/lang/String;JJJDDDIIIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;I",
            "Ljava/lang/String;",
            "JJJDDDIIIIII)V"
        }
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sportName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->points:Ljava/util/List;

    .line 40
    iput p2, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sport:I

    .line 41
    iput-object p3, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sportName:Ljava/lang/String;

    .line 42
    iput-wide p4, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->startTime:J

    .line 43
    iput-wide p6, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->endTime:J

    .line 44
    iput-wide p8, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDurationSec:J

    .line 45
    iput-wide p10, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDistanceKm:D

    .line 46
    iput-wide p12, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->ascentM:D

    move-wide p1, p14

    .line 47
    iput-wide p1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->descentM:D

    move/from16 p1, p16

    .line 48
    iput p1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgHr:I

    move/from16 p1, p17

    .line 49
    iput p1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->maxHr:I

    move/from16 p1, p18

    .line 50
    iput p1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgCad:I

    move/from16 p1, p19

    .line 51
    iput p1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgPower:I

    move/from16 p1, p20

    .line 52
    iput p1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->segmentCount:I

    move/from16 p1, p21

    .line 53
    iput p1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->pointCount:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/merge/TrackMerger$MergedResult;Ljava/util/List;ILjava/lang/String;JJJDDDIIIIIIILjava/lang/Object;)Lcom/jichi/ob/merge/TrackMerger$MergedResult;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p22

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->points:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sport:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sportName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->startTime:J

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->endTime:J

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-wide v9, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDurationSec:J

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p8

    :goto_5
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_6

    iget-wide v11, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDistanceKm:D

    goto :goto_6

    :cond_6
    move-wide/from16 v11, p10

    :goto_6
    and-int/lit16 v13, v1, 0x80

    if-eqz v13, :cond_7

    iget-wide v13, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->ascentM:D

    goto :goto_7

    :cond_7
    move-wide/from16 v13, p12

    :goto_7
    and-int/lit16 v15, v1, 0x100

    move-object/from16 p1, v2

    move/from16 p2, v3

    if-eqz v15, :cond_8

    iget-wide v2, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->descentM:D

    goto :goto_8

    :cond_8
    move-wide/from16 v2, p14

    :goto_8
    and-int/lit16 v15, v1, 0x200

    if-eqz v15, :cond_9

    iget v15, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgHr:I

    goto :goto_9

    :cond_9
    move/from16 v15, p16

    :goto_9
    move-wide/from16 p3, v2

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->maxHr:I

    goto :goto_a

    :cond_a
    move/from16 v2, p17

    :goto_a
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_b

    iget v3, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgCad:I

    goto :goto_b

    :cond_b
    move/from16 v3, p18

    :goto_b
    move/from16 p5, v2

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    iget v2, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgPower:I

    goto :goto_c

    :cond_c
    move/from16 v2, p19

    :goto_c
    move/from16 p6, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget v2, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->segmentCount:I

    goto :goto_d

    :cond_d
    move/from16 v2, p20

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget v1, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->pointCount:I

    move/from16 p22, v1

    goto :goto_e

    :cond_e
    move/from16 p22, p21

    :goto_e
    move-wide/from16 p15, p3

    move/from16 p18, p5

    move/from16 p20, p6

    move/from16 p21, v2

    move/from16 p19, v3

    move-object/from16 p4, v4

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move-wide/from16 p9, v9

    move-wide/from16 p11, v11

    move-wide/from16 p13, v13

    move/from16 p17, v15

    move/from16 p3, p2

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p22}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->copy(Ljava/util/List;ILjava/lang/String;JJJDDDIIIIII)Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->points:Ljava/util/List;

    return-object v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgHr:I

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->maxHr:I

    return v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgCad:I

    return v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgPower:I

    return v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->segmentCount:I

    return v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->pointCount:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sport:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sportName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->startTime:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->endTime:J

    return-wide v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDurationSec:J

    return-wide v0
.end method

.method public final component7()D
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDistanceKm:D

    return-wide v0
.end method

.method public final component8()D
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->ascentM:D

    return-wide v0
.end method

.method public final component9()D
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->descentM:D

    return-wide v0
.end method

.method public final copy(Ljava/util/List;ILjava/lang/String;JJJDDDIIIIII)Lcom/jichi/ob/merge/TrackMerger$MergedResult;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;I",
            "Ljava/lang/String;",
            "JJJDDDIIIIII)",
            "Lcom/jichi/ob/merge/TrackMerger$MergedResult;"
        }
    .end annotation

    const-string v0, "points"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sportName"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    move/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    invoke-direct/range {v1 .. v22}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;-><init>(Ljava/util/List;ILjava/lang/String;JJJDDDIIIIII)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    iget-object v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->points:Ljava/util/List;

    iget-object v3, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->points:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sport:I

    iget v3, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sport:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sportName:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sportName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->startTime:J

    iget-wide v5, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->startTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->endTime:J

    iget-wide v5, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->endTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDurationSec:J

    iget-wide v5, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDurationSec:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDistanceKm:D

    iget-wide v5, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDistanceKm:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->ascentM:D

    iget-wide v5, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->ascentM:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->descentM:D

    iget-wide v5, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->descentM:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgHr:I

    iget v3, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgHr:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->maxHr:I

    iget v3, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->maxHr:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgCad:I

    iget v3, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgCad:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgPower:I

    iget v3, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgPower:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->segmentCount:I

    iget v3, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->segmentCount:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->pointCount:I

    iget p1, p1, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->pointCount:I

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getAscentM()D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->ascentM:D

    return-wide v0
.end method

.method public final getAvgCad()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgCad:I

    return v0
.end method

.method public final getAvgHr()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgHr:I

    return v0
.end method

.method public final getAvgPower()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgPower:I

    return v0
.end method

.method public final getDescentM()D
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->descentM:D

    return-wide v0
.end method

.method public final getEndTime()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->endTime:J

    return-wide v0
.end method

.method public final getMaxHr()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->maxHr:I

    return v0
.end method

.method public final getPointCount()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->pointCount:I

    return v0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->points:Ljava/util/List;

    return-object v0
.end method

.method public final getSegmentCount()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->segmentCount:I

    return v0
.end method

.method public final getSport()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sport:I

    return v0
.end method

.method public final getSportName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sportName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->startTime:J

    return-wide v0
.end method

.method public final getTotalDistanceKm()D
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDistanceKm:D

    return-wide v0
.end method

.method public final getTotalDurationSec()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDurationSec:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->points:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sport:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sportName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->startTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->endTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDurationSec:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDistanceKm:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->ascentM:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->descentM:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgHr:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->maxHr:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgCad:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgPower:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->segmentCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->pointCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->points:Ljava/util/List;

    iget v2, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sport:I

    iget-object v3, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->sportName:Ljava/lang/String;

    iget-wide v4, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->startTime:J

    iget-wide v6, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->endTime:J

    iget-wide v8, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDurationSec:J

    iget-wide v10, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->totalDistanceKm:D

    iget-wide v12, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->ascentM:D

    iget-wide v14, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->descentM:D

    move-wide/from16 v16, v14

    iget v14, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgHr:I

    iget v15, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->maxHr:I

    move/from16 v18, v15

    iget v15, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgCad:I

    move/from16 v19, v15

    iget v15, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->avgPower:I

    move/from16 v20, v15

    iget v15, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->segmentCount:I

    move/from16 v21, v15

    iget v15, v0, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->pointCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v22, v15

    const-string v15, "MergedResult(points="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sportName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalDurationSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalDistanceKm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ascentM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descentM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgHr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxHr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgCad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segmentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pointCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

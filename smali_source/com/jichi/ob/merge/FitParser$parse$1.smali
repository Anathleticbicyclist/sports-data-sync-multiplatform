.class public final Lcom/jichi/ob/merge/FitParser$parse$1;
.super Ljava/lang/Object;
.source "FitParser.kt"

# interfaces
.implements Lcom/garmin/fit/RecordMesgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/merge/FitParser;->parse([B)Lcom/jichi/ob/merge/FitParser$FitResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFitParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FitParser.kt\ncom/jichi/ob/merge/FitParser$parse$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/jichi/ob/merge/FitParser$parse$1",
        "Lcom/garmin/fit/RecordMesgListener;",
        "onMesg",
        "",
        "mesg",
        "Lcom/garmin/fit/RecordMesg;",
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
.field final synthetic $lastTs:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Ljava/util/ArrayList<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/merge/FitParser$parse$1;->$lastTs:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lcom/jichi/ob/merge/FitParser$parse$1;->$records:Ljava/util/ArrayList;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMesg(Lcom/garmin/fit/RecordMesg;)V
    .locals 27

    move-object/from16 v1, p0

    const-string v0, "mesg"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Lcom/garmin/fit/RecordMesg;->getPositionLat()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 54
    invoke-virtual {v2}, Lcom/garmin/fit/RecordMesg;->getPositionLong()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 55
    invoke-virtual {v2}, Lcom/garmin/fit/RecordMesg;->getAltitude()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v7, v4

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    .line 56
    :goto_0
    invoke-virtual {v2}, Lcom/garmin/fit/RecordMesg;->getTimestamp()Lcom/garmin/fit/DateTime;

    move-result-object v4

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    const-wide/32 v13, 0x259d4c00

    add-long/2addr v11, v13

    goto :goto_1

    :cond_1
    move-wide v11, v9

    :goto_1
    cmp-long v4, v11, v9

    if-lez v4, :cond_2

    .line 57
    iget-object v9, v1, Lcom/jichi/ob/merge/FitParser$parse$1;->$lastTs:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide v11, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 58
    :cond_2
    iget-object v9, v1, Lcom/jichi/ob/merge/FitParser$parse$1;->$records:Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/jichi/ob/merge/FitParser$parse$1;->$lastTs:Lkotlin/jvm/internal/Ref$LongRef;

    monitor-enter v9

    .line 60
    :try_start_0
    new-instance v13, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    int-to-double v14, v0

    const-wide v16, 0x4066800000000000L    # 180.0

    mul-double v14, v14, v16

    const-wide/high16 v18, 0x41e0000000000000L    # 2.147483648E9

    div-double v14, v14, v18

    const-wide/16 v20, 0x0

    int-to-double v5, v3

    mul-double v5, v5, v16

    div-double v16, v5, v18

    cmpl-double v0, v7, v20

    if-lez v0, :cond_3

    move-wide/from16 v18, v7

    goto :goto_2

    :cond_3
    move-wide/from16 v18, v20

    :goto_2
    if-lez v4, :cond_4

    goto :goto_3

    .line 64
    :cond_4
    iget-wide v11, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :goto_3
    move-wide/from16 v20, v11

    .line 65
    invoke-virtual {v2}, Lcom/garmin/fit/RecordMesg;->getHeartRate()Ljava/lang/Short;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_4

    :cond_5
    move v0, v3

    :goto_4
    const/16 v4, 0xff

    invoke-static {v0, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v22

    .line 66
    invoke-virtual {v2}, Lcom/garmin/fit/RecordMesg;->getCadence()Ljava/lang/Short;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_5

    :cond_6
    move v0, v3

    :goto_5
    invoke-static {v0, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v23

    .line 67
    invoke-virtual {v2}, Lcom/garmin/fit/RecordMesg;->getPower()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    :cond_7
    move v0, v3

    :goto_6
    const v4, 0xffff

    invoke-static {v0, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v24

    .line 68
    invoke-virtual {v2}, Lcom/garmin/fit/RecordMesg;->getDistance()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    goto :goto_7

    :cond_8
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_7
    move-wide/from16 v25, v2

    .line 60
    invoke-direct/range {v13 .. v26}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;-><init>(DDDJIIID)V

    .line 59
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_9
    return-void
.end method

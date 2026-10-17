.class public final Lcom/jichi/ob/merge/StickerCore;
.super Ljava/lang/Object;
.source "StickerCore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/merge/StickerCore$StickerBg;,
        Lcom/jichi/ob/merge/StickerCore$StickerLayout;,
        Lcom/jichi/ob/merge/StickerCore$StickerTemplate;,
        Lcom/jichi/ob/merge/StickerCore$StickerTemplates;,
        Lcom/jichi/ob/merge/StickerCore$StickerText;,
        Lcom/jichi/ob/merge/StickerCore$StickerTrack;,
        Lcom/jichi/ob/merge/StickerCore$SummaryItem;,
        Lcom/jichi/ob/merge/StickerCore$SummaryStats;,
        Lcom/jichi/ob/merge/StickerCore$TerrainGeom;,
        Lcom/jichi/ob/merge/StickerCore$TrackStats;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStickerCore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerCore.kt\ncom/jichi/ob/merge/StickerCore\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,496:1\n1#2:497\n1563#3:498\n1634#3,3:499\n1563#3:502\n1634#3,3:503\n1573#3:506\n1604#3,4:507\n1563#3:511\n1634#3,3:512\n1573#3:515\n1604#3,4:516\n1563#3:520\n1634#3,3:521\n*S KotlinDebug\n*F\n+ 1 StickerCore.kt\ncom/jichi/ob/merge/StickerCore\n*L\n114#1:498\n114#1:499,3\n133#1:502\n133#1:503,3\n175#1:506\n175#1:507,4\n182#1:511\n182#1:512,3\n232#1:515\n232#1:516,4\n446#1:520\n446#1:521,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0014\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010$\n\u0002\u0008\u000b\n\u0002\u0010\u0006\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\nXYZ[\\]^_`aB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eJ@\u0010\u0010\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00110\u000e2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0007J^\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00110\u000e2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0007JH\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00072\u0008\u0008\u0002\u0010 \u001a\u00020\nJ\u0014\u0010!\u001a\u00020\"2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eJF\u0010#\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00110\u000e2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u0007J\u0014\u0010$\u001a\u00020\"2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eJ\u000e\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\'J\u0016\u00109\u001a\u00020\u00052\u0006\u0010:\u001a\u00020\n2\u0006\u0010;\u001a\u00020\u000cJ\u000e\u0010<\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u0005J\u0014\u0010>\u001a\u00020?2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0010\u0010@\u001a\u0004\u0018\u00010\u00052\u0006\u0010A\u001a\u00020\u0005J0\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000e2\u0006\u0010C\u001a\u00020\n2\u0006\u0010D\u001a\u00020\u00072\u0008\u0008\u0002\u0010E\u001a\u00020\u00072\u0008\u0008\u0002\u0010F\u001a\u00020\u0007J&\u0010G\u001a\u00020?2\u0006\u0010H\u001a\u00020?2\u0006\u0010I\u001a\u00020?2\u0006\u0010J\u001a\u00020?2\u0006\u0010K\u001a\u00020?J\u0014\u0010L\u001a\u00020M2\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0016\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020P2\u0006\u0010R\u001a\u00020MJ2\u0010S\u001a\u00020P2\u001a\u0010T\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020U\u0012\u0006\u0012\u0004\u0018\u00010M0\u00110\u000e2\u0006\u0010V\u001a\u00020\n2\u0006\u0010W\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R)\u00102\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001103\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R\u0017\u00106\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108\u00a8\u0006b"
    }
    d2 = {
        "Lcom/jichi/ob/merge/StickerCore;",
        "",
        "<init>",
        "()V",
        "WATERMARK_TEXT",
        "",
        "WATERMARK_TEXT_RATIO",
        "",
        "WATERMARK_BOTTOM_RATIO",
        "WATERMARK_ALPHA",
        "",
        "computeStats",
        "Lcom/jichi/ob/merge/StickerCore$TrackStats;",
        "pts",
        "",
        "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
        "projectTrack",
        "Lkotlin/Pair;",
        "w",
        "h",
        "pad",
        "projectTrackEx",
        "dx",
        "dy",
        "scale",
        "elevationTerrain",
        "Lcom/jichi/ob/merge/StickerCore$TerrainGeom;",
        "l",
        "t",
        "r",
        "b",
        "thickness",
        "layers",
        "cumulativeDist",
        "",
        "elevationProfile",
        "pointSpeeds",
        "fmtDur",
        "sec",
        "",
        "ITEM_DIST",
        "ITEM_DUR",
        "ITEM_AVG_SPEED",
        "ITEM_MAX_SPEED",
        "ITEM_ASCENT",
        "ITEM_AVG_HR",
        "ITEM_AVG_POWER",
        "ITEM_CALORIES",
        "ITEM_AVG_CAD",
        "ITEM_MAX_ELE",
        "ITEM_DEFS",
        "",
        "getITEM_DEFS",
        "()Ljava/util/Map;",
        "ITEM_DEFAULT",
        "getITEM_DEFAULT",
        "()Ljava/util/List;",
        "itemValue",
        "id",
        "s",
        "shrinkNum",
        "text",
        "maxEle",
        "",
        "dateFromName",
        "name",
        "stickerColumns",
        "n",
        "size",
        "leftRatio",
        "rightRatio",
        "haversineM",
        "lat1",
        "lon1",
        "lat2",
        "lon2",
        "summaryOfPoints",
        "Lcom/jichi/ob/merge/StickerCore$SummaryItem;",
        "points",
        "mergeSummary",
        "Lcom/jichi/ob/merge/StickerCore$SummaryStats;",
        "base",
        "add",
        "summarizeLocalFiles",
        "items",
        "Ljava/io/File;",
        "year",
        "month",
        "TrackStats",
        "TerrainGeom",
        "StickerBg",
        "StickerTrack",
        "StickerLayout",
        "StickerText",
        "StickerTemplate",
        "StickerTemplates",
        "SummaryStats",
        "SummaryItem",
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


# static fields
.field public static final INSTANCE:Lcom/jichi/ob/merge/StickerCore;

.field public static final ITEM_ASCENT:I = 0x5

.field public static final ITEM_AVG_CAD:I = 0x9

.field public static final ITEM_AVG_HR:I = 0x6

.field public static final ITEM_AVG_POWER:I = 0x7

.field public static final ITEM_AVG_SPEED:I = 0x3

.field public static final ITEM_CALORIES:I = 0x8

.field private static final ITEM_DEFAULT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ITEM_DEFS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final ITEM_DIST:I = 0x1

.field public static final ITEM_DUR:I = 0x2

.field public static final ITEM_MAX_ELE:I = 0xa

.field public static final ITEM_MAX_SPEED:I = 0x4

.field public static final WATERMARK_ALPHA:I = 0x99

.field public static final WATERMARK_BOTTOM_RATIO:F = 0.028f

.field public static final WATERMARK_TEXT:Ljava/lang/String; = "\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB"

.field public static final WATERMARK_TEXT_RATIO:F = 0.03f


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/jichi/ob/merge/StickerCore;

    invoke-direct {v0}, Lcom/jichi/ob/merge/StickerCore;-><init>()V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    const/16 v0, 0xa

    .line 275
    new-array v1, v0, [Lkotlin/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "\u8ddd\u79bb"

    const-string v5, "km"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const/4 v4, 0x2

    .line 276
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "\u65f6\u957f"

    const-string v8, ""

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v1, v2

    const/4 v7, 0x3

    .line 277
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "\u5e73\u5747\u901f\u5ea6"

    const-string v10, "km/h"

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v1, v4

    const/4 v9, 0x4

    .line 278
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "\u6700\u5927\u901f\u5ea6"

    invoke-static {v12, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v1, v7

    const/4 v10, 0x5

    .line 279
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "\u7d2f\u8ba1\u722c\u5347"

    const-string v13, "m"

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    aput-object v12, v1, v9

    const/4 v12, 0x6

    .line 280
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string/jumbo v15, "\u5e73\u5747\u5fc3\u7387"

    move/from16 v16, v0

    const-string v0, "bpm"

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v14, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v10

    const/4 v0, 0x7

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v17, v0

    const-string/jumbo v0, "\u5e73\u5747\u529f\u7387"

    move/from16 v18, v2

    const-string v2, "W"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v12

    const/16 v0, 0x8

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v12, "\u5361\u8def\u91cc"

    const-string v15, "kcal"

    invoke-static {v12, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    invoke-static {v2, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v17

    const/16 v2, 0x9

    .line 283
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v15, "\u5e73\u5747\u8e0f\u9891"

    move/from16 v17, v0

    const-string v0, "rpm"

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v12, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v17

    .line 284
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v12, "\u6700\u9ad8\u6d77\u62d4"

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    invoke-static {v0, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v2

    .line 274
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/merge/StickerCore;->ITEM_DEFS:Ljava/util/Map;

    .line 288
    new-array v0, v10, [Ljava/lang/Integer;

    aput-object v3, v0, v5

    aput-object v8, v0, v18

    aput-object v6, v0, v4

    aput-object v11, v0, v7

    aput-object v14, v0, v9

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/merge/StickerCore;->ITEM_DEFAULT:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic elevationTerrain$default(Lcom/jichi/ob/merge/StickerCore;Ljava/util/List;FFFFFIILjava/lang/Object;)Lcom/jichi/ob/merge/StickerCore$TerrainGeom;
    .locals 8

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/high16 p6, 0x41400000    # 12.0f

    :cond_0
    move v6, p6

    and-int/lit8 p6, p8, 0x40

    if-eqz p6, :cond_1

    const/4 p6, 0x5

    move v7, p6

    goto :goto_0

    :cond_1
    move v7, p7

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 154
    invoke-virtual/range {v0 .. v7}, Lcom/jichi/ob/merge/StickerCore;->elevationTerrain(Ljava/util/List;FFFFFI)Lcom/jichi/ob/merge/StickerCore$TerrainGeom;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic projectTrack$default(Lcom/jichi/ob/merge/StickerCore;Ljava/util/List;FFFILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/high16 p4, 0x41900000    # 18.0f

    .line 94
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jichi/ob/merge/StickerCore;->projectTrack(Ljava/util/List;FFF)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic projectTrackEx$default(Lcom/jichi/ob/merge/StickerCore;Ljava/util/List;FFFFFFILjava/lang/Object;)Ljava/util/List;
    .locals 8

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const/high16 p4, 0x41900000    # 18.0f

    :cond_0
    move v4, p4

    and-int/lit8 p4, p8, 0x10

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    and-int/lit8 p4, p8, 0x20

    if-eqz p4, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, p6

    :goto_1
    and-int/lit8 p4, p8, 0x40

    if-eqz p4, :cond_3

    const/high16 p4, 0x3f800000    # 1.0f

    move v7, p4

    goto :goto_2

    :cond_3
    move v7, p7

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 124
    invoke-virtual/range {v0 .. v7}, Lcom/jichi/ob/merge/StickerCore;->projectTrackEx(Ljava/util/List;FFFFFF)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic stickerColumns$default(Lcom/jichi/ob/merge/StickerCore;IFFFILjava/lang/Object;)Ljava/util/List;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const v0, 0x3d23d70a    # 0.04f

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    .line 441
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jichi/ob/merge/StickerCore;->stickerColumns(IFFF)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final computeStats(Ljava/util/List;)Lcom/jichi/ob/merge/StickerCore$TrackStats;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;)",
            "Lcom/jichi/ob/merge/StickerCore$TrackStats;"
        }
    .end annotation

    const-string v0, "pts"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/jichi/ob/merge/StickerCore$TrackStats;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v16}, Lcom/jichi/ob/merge/StickerCore$TrackStats;-><init>(DJDDDIIIII)V

    return-object v1

    .line 47
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v6, 0x0

    move-wide v12, v6

    move-wide v14, v12

    move-wide/from16 v22, v14

    move-wide/from16 v24, v22

    move-wide/from16 v26, v24

    move-wide/from16 v28, v26

    const/4 v2, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const-wide v30, 0x400ccccccccccccdL    # 3.6

    if-eqz v17, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    if-eqz v8, :cond_1

    .line 50
    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v33

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v35

    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v37

    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v39

    move-object/from16 v32, p0

    invoke-virtual/range {v32 .. v40}, Lcom/jichi/ob/merge/StickerCore;->haversineM(DDDD)D

    move-result-wide v33

    add-double v9, v9, v33

    .line 52
    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v35

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v37

    const-wide/16 v39, 0x0

    sub-long v3, v35, v37

    long-to-double v3, v3

    cmpl-double v5, v3, v39

    if-lez v5, :cond_2

    div-double v33, v33, v3

    mul-double v33, v33, v30

    cmpl-double v3, v33, v18

    if-lez v3, :cond_2

    move-wide/from16 v18, v33

    goto :goto_1

    :cond_1
    const-wide/16 v39, 0x0

    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    .line 59
    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v3

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    cmpl-double v3, v3, v30

    if-lez v3, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v3

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    sub-double v3, v3, v30

    add-double v20, v20, v3

    .line 60
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v3

    const-wide/16 v30, 0x1

    int-to-long v4, v3

    add-long/2addr v12, v4

    add-long v14, v14, v30

    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v3

    if-le v3, v2, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v2

    goto :goto_2

    :cond_4
    const-wide/16 v30, 0x1

    .line 61
    :cond_5
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v3

    int-to-long v3, v3

    add-long v22, v22, v3

    add-long v24, v24, v30

    .line 62
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v3

    int-to-long v3, v3

    add-long v26, v26, v3

    add-long v28, v28, v30

    .line 63
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v3

    cmpl-double v3, v3, v39

    if-lez v3, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v11, v3

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v8, v17

    goto/16 :goto_0

    :cond_9
    const-wide/16 v39, 0x0

    .line 65
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v0}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_a

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_5

    :cond_b
    move-wide v3, v6

    .line 66
    :goto_5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v0}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v32

    cmp-long v1, v32, v6

    if-lez v1, :cond_c

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_7

    :cond_d
    move-wide v0, v6

    :goto_7
    sub-long/2addr v0, v3

    .line 67
    invoke-static {v0, v1, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    cmp-long v3, v0, v6

    const-wide v32, 0x408f400000000000L    # 1000.0

    if-lez v3, :cond_e

    div-double v34, v9, v32

    const-wide v36, 0x40ac200000000000L    # 3600.0

    long-to-double v4, v0

    div-double v4, v4, v36

    div-double v4, v34, v4

    goto :goto_8

    :cond_e
    const-wide v36, 0x40ac200000000000L    # 3600.0

    move-wide/from16 v4, v39

    :goto_8
    cmp-long v3, v28, v6

    move-wide/from16 v34, v6

    if-lez v3, :cond_f

    .line 71
    div-long v6, v26, v28

    long-to-int v3, v6

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :goto_9
    if-lez v3, :cond_10

    int-to-double v6, v3

    move v8, v2

    move/from16 p1, v3

    long-to-double v2, v0

    div-double v2, v2, v36

    mul-double/2addr v6, v2

    mul-double v6, v6, v30

    double-to-int v2, v6

    goto :goto_a

    :cond_10
    move v8, v2

    move/from16 p1, v3

    div-double v2, v9, v32

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    :goto_a
    move/from16 v26, v2

    .line 76
    new-instance v11, Lcom/jichi/ob/merge/StickerCore$TrackStats;

    div-double v9, v9, v32

    cmp-long v2, v14, v34

    if-lez v2, :cond_11

    .line 82
    div-long/2addr v12, v14

    long-to-int v2, v12

    goto :goto_b

    :cond_11
    const/4 v2, 0x0

    :goto_b
    cmp-long v3, v24, v34

    if-lez v3, :cond_12

    .line 84
    div-long v6, v22, v24

    long-to-int v3, v6

    move/from16 v24, v3

    goto :goto_c

    :cond_12
    const/16 v24, 0x0

    :goto_c
    move/from16 v25, p1

    move-wide v14, v0

    move/from16 v22, v2

    move-wide/from16 v16, v4

    move/from16 v23, v8

    move-wide v12, v9

    .line 76
    invoke-direct/range {v11 .. v26}, Lcom/jichi/ob/merge/StickerCore$TrackStats;-><init>(DJDDDIIIII)V

    return-object v11
.end method

.method public final cumulativeDist(Ljava/util/List;)[F
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;)[F"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "pts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_0

    add-int/lit8 v4, v3, -0x1

    .line 207
    aget v5, v1, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v6}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v8

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v4}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v10

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v4}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v12

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v4}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v14

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v15}, Lcom/jichi/ob/merge/StickerCore;->haversineM(DDDD)D

    move-result-wide v8

    double-to-float v4, v8

    add-float/2addr v5, v4

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final dateFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(\\d{4})(\\d{2})(\\d{2})"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v3

    .line 436
    :cond_0
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getDestructured()Lkotlin/text/MatchResult$Destructured;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p1

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 437
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x7d0

    if-gt v5, v4, :cond_1

    const/16 v5, 0x835

    if-ge v4, v5, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gt v1, v4, :cond_1

    const/16 v5, 0xd

    if-ge v4, v5, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gt v1, v4, :cond_1

    const/16 v1, 0x20

    if-ge v4, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v3
.end method

.method public final elevationProfile(Ljava/util/List;FFFF)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;FFFF)",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "pts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 223
    invoke-virtual/range {p0 .. p1}, Lcom/jichi/ob/merge/StickerCore;->cumulativeDist(Ljava/util/List;)[F

    move-result-object v3

    add-int/lit8 v1, v1, -0x1

    .line 224
    aget v1, v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const v7, -0x800001

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 227
    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v11

    cmpl-double v9, v11, v9

    if-lez v9, :cond_1

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v9

    float-to-double v11, v6

    cmpg-double v9, v9, v11

    if-gez v9, :cond_2

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v9

    double-to-float v6, v9

    :cond_2
    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v9

    float-to-double v11, v7

    cmpl-double v9, v9, v11

    if-lez v9, :cond_1

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v7

    double-to-float v7, v7

    goto :goto_0

    :cond_3
    cmpg-float v5, v7, v6

    if-gtz v5, :cond_4

    const/4 v6, 0x0

    move v7, v4

    :cond_4
    sub-float v5, p5, p3

    .line 232
    check-cast v0, Ljava/lang/Iterable;

    .line 515
    new-instance v8, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v0, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 517
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    if-gez v11, :cond_5

    .line 518
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    check-cast v12, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 233
    aget v11, v3, v11

    div-float/2addr v11, v1

    sub-float v14, p4, p2

    mul-float/2addr v11, v14

    add-float v11, p2, v11

    .line 234
    invoke-virtual {v12}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v14

    cmpl-double v14, v14, v9

    if-lez v14, :cond_6

    invoke-virtual {v12}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v14

    double-to-float v12, v14

    goto :goto_2

    :cond_6
    move v12, v6

    :goto_2
    sub-float/2addr v12, v6

    sub-float v14, v7, v6

    div-float/2addr v12, v14

    const/high16 v14, 0x40800000    # 4.0f

    add-float v15, p3, v14

    sub-float v12, v4, v12

    int-to-float v4, v2

    mul-float/2addr v14, v4

    sub-float v4, v5, v14

    mul-float/2addr v12, v4

    add-float/2addr v15, v12

    .line 237
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v4, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 518
    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v11, v13

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    .line 519
    :cond_7
    check-cast v8, Ljava/util/List;

    return-object v8
.end method

.method public final elevationTerrain(Ljava/util/List;FFFFFI)Lcom/jichi/ob/merge/StickerCore$TerrainGeom;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;FFFFFI)",
            "Lcom/jichi/ob/merge/StickerCore$TerrainGeom;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p7

    const-string v3, "pts"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 161
    new-instance v0, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;FF)V

    return-object v0

    .line 163
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 164
    invoke-virtual/range {p0 .. p1}, Lcom/jichi/ob/merge/StickerCore;->cumulativeDist(Ljava/util/List;)[F

    move-result-object v4

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 165
    aget v3, v4, v3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const v9, -0x800001

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 168
    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v13

    cmpl-double v11, v13, v11

    if-lez v11, :cond_1

    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v11

    float-to-double v13, v8

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v11

    double-to-float v8, v11

    :cond_2
    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v11

    float-to-double v13, v9

    cmpl-double v11, v11, v13

    if-lez v11, :cond_1

    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v9

    double-to-float v9, v9

    goto :goto_0

    :cond_3
    cmpg-float v7, v9, v8

    if-gtz v7, :cond_4

    const/4 v8, 0x0

    move v9, v6

    :cond_4
    sub-float v7, v1, p3

    .line 171
    invoke-static {v7, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v6

    const v7, 0x3da3d70a    # 0.08f

    mul-float/2addr v7, v6

    sub-float/2addr v6, v7

    const/high16 v7, 0x40800000    # 4.0f

    .line 174
    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v6

    .line 175
    check-cast v0, Ljava/lang/Iterable;

    .line 506
    new-instance v7, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v0, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 508
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v13, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v13, 0x1

    if-gez v13, :cond_5

    .line 509
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    check-cast v14, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 176
    aget v13, v4, v13

    div-float/2addr v13, v3

    sub-float v16, p4, p2

    mul-float v13, v13, v16

    add-float v13, p2, v13

    .line 177
    invoke-virtual {v14}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v16

    cmpl-double v16, v16, v11

    if-lez v16, :cond_6

    invoke-virtual {v14}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v11

    double-to-float v11, v11

    goto :goto_2

    :cond_6
    move v11, v8

    :goto_2
    sub-float/2addr v11, v8

    sub-float v12, v9, v8

    div-float/2addr v11, v12

    mul-float/2addr v11, v6

    sub-float v11, v1, v11

    .line 180
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v12, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    .line 509
    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v13, v15

    const-wide/16 v11, 0x0

    goto :goto_1

    .line 510
    :cond_7
    check-cast v7, Ljava/util/List;

    .line 182
    move-object v0, v7

    check-cast v0, Ljava/lang/Iterable;

    .line 511
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 512
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 513
    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 182
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    add-float v4, v4, p6

    invoke-static {v4, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 513
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 514
    :cond_8
    check-cast v3, Ljava/util/List;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-gt v5, v2, :cond_c

    :goto_4
    int-to-float v10, v5

    int-to-float v11, v2

    div-float/2addr v10, v11

    mul-float v11, v10, v6

    sub-float v11, v1, v11

    sub-float v12, v9, v8

    mul-float/2addr v12, v10

    add-float/2addr v12, v8

    .line 191
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_9
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/Pair;

    invoke-virtual {v14}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v15

    invoke-virtual {v14}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v16, v11, v16

    cmpg-float v14, v14, v16

    if-gtz v14, :cond_9

    .line 193
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 195
    :cond_a
    move-object v11, v10

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    .line 196
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eq v5, v2, :cond_c

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 200
    :cond_c
    new-instance v1, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;

    check-cast v0, Ljava/util/List;

    check-cast v4, Ljava/util/List;

    move-object/from16 p4, v0

    move-object/from16 p1, v1

    move-object/from16 p3, v3

    move-object/from16 p5, v4

    move-object/from16 p2, v7

    move/from16 p6, v8

    move/from16 p7, v9

    invoke-direct/range {p1 .. p7}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;FF)V

    move-object/from16 v0, p1

    return-object v0
.end method

.method public final fmtDur(J)Ljava/lang/String;
    .locals 6

    const/16 v0, 0xe10

    int-to-long v0, v0

    .line 254
    div-long v2, p1, v0

    rem-long v0, p1, v0

    const/16 v4, 0x3c

    int-to-long v4, v4

    div-long/2addr v0, v4

    rem-long/2addr p1, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    .line 255
    const-string v5, "format(...)"

    if-lez v4, :cond_0

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v2, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d:%02d:%02d"

    invoke-static {v4, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 256
    :cond_0
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d:%02d"

    invoke-static {v2, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getITEM_DEFAULT()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/jichi/ob/merge/StickerCore;->ITEM_DEFAULT:Ljava/util/List;

    return-object v0
.end method

.method public final getITEM_DEFS()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/jichi/ob/merge/StickerCore;->ITEM_DEFS:Ljava/util/Map;

    return-object v0
.end method

.method public final haversineM(DDDD)D
    .locals 4

    .line 451
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    sub-double/2addr p5, p1

    .line 452
    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    sub-double/2addr p7, p3

    invoke-static {p7, p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    const/4 p5, 0x2

    int-to-double p5, p5

    div-double/2addr p1, p5

    .line 453
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p7

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr p7, p1

    .line 454
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr p1, v0

    div-double/2addr p3, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr p1, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double/2addr p1, p3

    add-double/2addr p7, p1

    const-wide p1, 0x41584dae00000000L    # 6371000.0

    mul-double/2addr p5, p1

    .line 455
    invoke-static {p7, p8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    mul-double/2addr p5, p1

    return-wide p5
.end method

.method public final itemValue(ILcom/jichi/ob/merge/StickerCore$TrackStats;)Ljava/lang/String;
    .locals 5

    const-string v0, "s"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    const-string v0, "%.1f"

    const-string v1, "format(...)"

    const/4 v2, 0x1

    const-string/jumbo v3, "\u2014"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object v3

    .line 301
    :pswitch_1
    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgCad()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgCad()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v3

    .line 300
    :pswitch_2
    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getCaloriesKcal()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getCaloriesKcal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v3

    .line 299
    :pswitch_3
    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgPower()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgPower()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v3

    .line 298
    :pswitch_4
    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgHr()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgHr()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v3

    .line 297
    :pswitch_5
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAscentM()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%.0f"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 296
    :pswitch_6
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getMaxSpeedKmh()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 295
    :pswitch_7
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgSpeedKmh()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 294
    :pswitch_8
    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getDurationSec()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/merge/StickerCore;->fmtDur(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 293
    :pswitch_9
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getDistKm()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final maxEle(Ljava/util/List;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;)D"
        }
    .end annotation

    const-string v0, "pts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v3

    cmpl-double v3, v3, v0

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final mergeSummary(Lcom/jichi/ob/merge/StickerCore$SummaryStats;Lcom/jichi/ob/merge/StickerCore$SummaryItem;)Lcom/jichi/ob/merge/StickerCore$SummaryStats;
    .locals 9

    const-string v0, "base"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "add"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    new-instance v1, Lcom/jichi/ob/merge/StickerCore$SummaryStats;

    .line 470
    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;->getCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->getCount()I

    move-result v2

    add-int/2addr v2, v0

    .line 471
    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;->getTotalKm()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->getKm()D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 472
    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;->getTotalSec()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->getSec()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 473
    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;->getTotalAscentM()D

    move-result-wide v7

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->getAscentM()D

    move-result-wide p1

    add-double/2addr v7, p1

    .line 469
    invoke-direct/range {v1 .. v8}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;-><init>(IDJD)V

    return-object v1
.end method

.method public final pointSpeeds(Ljava/util/List;)[F
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;)[F"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "pts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    .line 244
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 245
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 246
    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    .line 247
    invoke-virtual {v4}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v9

    invoke-virtual {v4}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v13

    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v15

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v16}, Lcom/jichi/ob/merge/StickerCore;->haversineM(DDDD)D

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_0

    div-double/2addr v4, v6

    double-to-float v4, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 248
    :goto_1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final projectTrack(Ljava/util/List;FFF)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;FFF)",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    const-string v0, "pts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 101
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v2, -0x10000000000001L

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v6, v4

    move-wide v8, v6

    move-wide v4, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 102
    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v11

    cmpg-double v11, v11, v6

    if-gez v11, :cond_2

    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v6

    .line 103
    :cond_2
    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v11

    cmpl-double v11, v11, v2

    if-lez v11, :cond_3

    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v2

    .line 104
    :cond_3
    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v11

    cmpg-double v11, v11, v8

    if-gez v11, :cond_4

    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v8

    .line 105
    :cond_4
    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v11

    cmpl-double v11, v11, v4

    if-lez v11, :cond_1

    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v4

    goto :goto_0

    :cond_5
    sub-double v6, v2, v6

    const-wide v10, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 107
    invoke-static {v6, v7, v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v6

    sub-double/2addr v4, v8

    .line 108
    invoke-static {v4, v5, v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v4

    int-to-float v0, v1

    mul-float v0, v0, p4

    sub-float v1, p2, v0

    sub-float v0, p3, v0

    double-to-float v4, v4

    div-float/2addr v1, v4

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 111
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v4, v0

    sub-float v1, p2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    mul-float/2addr v5, v0

    sub-float v5, p3, v5

    div-float/2addr v5, v4

    .line 114
    check-cast p1, Ljava/lang/Iterable;

    .line 498
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {p1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 499
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 500
    check-cast v6, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 115
    invoke-virtual {v6}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v10

    sub-double/2addr v10, v8

    double-to-float v7, v10

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v10

    sub-double v10, v2, v10

    double-to-float v6, v10

    mul-float/2addr v6, v0

    add-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 500
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 501
    :cond_6
    check-cast v4, Ljava/util/List;

    return-object v4
.end method

.method public final projectTrackEx(Ljava/util/List;FFFFFF)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;FFFFFF)",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    const-string v0, "pts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jichi/ob/merge/StickerCore;->projectTrack(Ljava/util/List;FFF)Ljava/util/List;

    move-result-object p1

    const/4 p4, 0x0

    cmpg-float v0, p5, p4

    if-nez v0, :cond_1

    cmpg-float p4, p6, p4

    if-nez p4, :cond_1

    const/high16 p4, 0x3f800000    # 1.0f

    cmpg-float p4, p7, p4

    if-nez p4, :cond_1

    return-object p1

    :cond_1
    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    div-float/2addr p3, p4

    .line 133
    check-cast p1, Ljava/lang/Iterable;

    .line 502
    new-instance p4, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p4, Ljava/util/Collection;

    .line 503
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 504
    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float/2addr v1, p2

    mul-float/2addr v1, p7

    add-float/2addr v1, p2

    add-float/2addr v1, p5

    .line 134
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sub-float/2addr v0, p3

    mul-float/2addr v0, p7

    add-float/2addr v0, p3

    add-float/2addr v0, p6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 504
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    :cond_2
    check-cast p4, Ljava/util/List;

    return-object p4
.end method

.method public final shrinkNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(\\d+\\.\\d)\\d"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 309
    :cond_0
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 310
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final stickerColumns(IFFF)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFF)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-gtz p1, :cond_0

    .line 442
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    mul-float/2addr p3, p2

    mul-float/2addr p4, p2

    sub-float/2addr p2, p4

    sub-float/2addr p2, p3

    int-to-float p4, p1

    div-float/2addr p2, p4

    const/4 p4, 0x0

    .line 446
    invoke-static {p4, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 520
    new-instance p4, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p4, Ljava/util/Collection;

    .line 521
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lkotlin/collections/IntIterator;

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr v0, p3

    .line 446
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 522
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    :cond_1
    check-cast p4, Ljava/util/List;

    return-object p4
.end method

.method public final summarizeLocalFiles(Ljava/util/List;II)Lcom/jichi/ob/merge/StickerCore$SummaryStats;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Ljava/io/File;",
            "Lcom/jichi/ob/merge/StickerCore$SummaryItem;",
            ">;>;II)",
            "Lcom/jichi/ob/merge/StickerCore$SummaryStats;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    new-instance v1, Lcom/jichi/ob/merge/StickerCore$SummaryStats;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;-><init>(IDJD)V

    .line 482
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%04d-%02d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 484
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jichi/ob/merge/StickerCore$SummaryItem;

    .line 485
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getName(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/jichi/ob/merge/StickerCore;->dateFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 487
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x1

    .line 488
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%04d-%02d-%02d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 490
    invoke-static {v5, p2, v4, p3, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 491
    invoke-virtual {p0, v1, v3}, Lcom/jichi/ob/merge/StickerCore;->mergeSummary(Lcom/jichi/ob/merge/StickerCore$SummaryStats;Lcom/jichi/ob/merge/StickerCore$SummaryItem;)Lcom/jichi/ob/merge/StickerCore$SummaryStats;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final summaryOfPoints(Ljava/util/List;)Lcom/jichi/ob/merge/StickerCore$SummaryItem;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;)",
            "Lcom/jichi/ob/merge/StickerCore$SummaryItem;"
        }
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/jichi/ob/merge/StickerCore$SummaryItem;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/jichi/ob/merge/StickerCore$SummaryItem;-><init>(IDJD)V

    return-object v1

    .line 464
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jichi/ob/merge/StickerCore;->computeStats(Ljava/util/List;)Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object p1

    .line 465
    new-instance v0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getDistKm()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getDurationSec()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAscentM()D

    move-result-wide v6

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/jichi/ob/merge/StickerCore$SummaryItem;-><init>(IDJD)V

    return-object v0
.end method

.class public final Lcom/jichi/ob/GpxToFitConverter;
.super Ljava/lang/Object;
.source "GpxToFitConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/GpxToFitConverter$DefBuilder;,
        Lcom/jichi/ob/GpxToFitConverter$Meta;,
        Lcom/jichi/ob/GpxToFitConverter$TrackPoint;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGpxToFitConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GpxToFitConverter.kt\ncom/jichi/ob/GpxToFitConverter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,529:1\n1#2:530\n295#3,2:531\n295#3,2:533\n295#3,2:535\n*S KotlinDebug\n*F\n+ 1 GpxToFitConverter.kt\ncom/jichi/ob/GpxToFitConverter\n*L\n202#1:531,2\n233#1:533,2\n250#1:535,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003KLMB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0010\u0010 \u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0016\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020&H\u0002J(\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020&2\u0006\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020&2\u0006\u0010+\u001a\u00020&H\u0002J\u0018\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u001bH\u0002J\u0018\u00101\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u001bH\u0002J\u0018\u00102\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u0005H\u0002J\u001c\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b052\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u00106\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u001f2\u0008\u0008\u0002\u00107\u001a\u00020\u001bJ\u001e\u00108\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u0001052\u0008\u00109\u001a\u0004\u0018\u00010\u0019J\u0018\u0010:\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u001f2\u0008\u00109\u001a\u0004\u0018\u00010\u0019Jd\u0010;\u001a\u00020\u001f2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0008\u0008\u0002\u00107\u001a\u00020\u001b2\u0008\u0008\u0002\u0010=\u001a\u00020&2\u0008\u0008\u0002\u0010>\u001a\u00020\u00052\u0008\u0008\u0002\u0010?\u001a\u00020\u001b2\u0008\u0008\u0002\u0010@\u001a\u00020\u001b2\u0008\u0008\u0002\u0010A\u001a\u00020&2\u0008\u0008\u0002\u0010B\u001a\u00020&2\u0008\u0008\u0002\u0010C\u001a\u00020&J\u0014\u0010D\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010\u0018\u001a\u00020\u001fJ\u0010\u0010E\u001a\u00020\u001f2\u0006\u0010F\u001a\u00020\u001fH\u0002Jd\u0010G\u001a\u00020\u001f2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010H\u001a\u00020\u00052\u0008\u0008\u0002\u00107\u001a\u00020\u001b2\u0008\u0008\u0002\u0010?\u001a\u00020\u001b2\u0008\u0008\u0002\u0010I\u001a\u00020&2\u0008\u0008\u0002\u0010J\u001a\u00020\u00052\u0008\u0008\u0002\u0010A\u001a\u00020&2\u0008\u0008\u0002\u0010B\u001a\u00020&2\u0008\u0008\u0002\u0010C\u001a\u00020&H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u00103\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006N"
    }
    d2 = {
        "Lcom/jichi/ob/GpxToFitConverter;",
        "",
        "<init>",
        "()V",
        "FIT_EPOCH_OFFSET",
        "",
        "CRC_TABLE",
        "",
        "TRKPT_RE",
        "Ljava/util/regex/Pattern;",
        "kotlin.jvm.PlatformType",
        "ELE_RE",
        "TIME_RE",
        "HR_RE",
        "CAD_RE",
        "POWER_RE",
        "META_DIST_RE",
        "META_DUR_RE",
        "META_CAL_RE",
        "META_AVGHR_RE",
        "META_MAXHR_RE",
        "META_AVGCAD_RE",
        "parseMeta",
        "Lcom/jichi/ob/GpxToFitConverter$Meta;",
        "gpx",
        "",
        "MAX_POINTS",
        "",
        "isFit",
        "",
        "data",
        "",
        "fitCrc",
        "parseGpx",
        "",
        "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
        "degToSemicircle",
        "deg",
        "",
        "haversineM",
        "lat1",
        "lon1",
        "lat2",
        "lon2",
        "u8",
        "",
        "out",
        "Ljava/io/ByteArrayOutputStream;",
        "v",
        "u16",
        "u32",
        "NAME_RE",
        "detectSportFromGpx",
        "Lkotlin/Pair;",
        "convert",
        "sport",
        "sportTypeToFitPair",
        "sportType",
        "convertWithSportType",
        "convertPoints",
        "pts",
        "metaDistKeep",
        "metaDurKeep",
        "subSport",
        "metaAvgCadence",
        "overrideDistM",
        "overrideAscentM",
        "overrideDescentM",
        "parseGpxBytes",
        "buildFitFile",
        "body",
        "buildFitBody",
        "startUnix",
        "metaDist",
        "metaDur",
        "Meta",
        "TrackPoint",
        "DefBuilder",
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
.field private static final CAD_RE:Ljava/util/regex/Pattern;

.field private static final CRC_TABLE:[I

.field private static final ELE_RE:Ljava/util/regex/Pattern;

.field private static final FIT_EPOCH_OFFSET:J = 0x259d4c00L

.field private static final HR_RE:Ljava/util/regex/Pattern;

.field public static final INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

.field private static final MAX_POINTS:I = 0xc350

.field private static final META_AVGCAD_RE:Ljava/util/regex/Pattern;

.field private static final META_AVGHR_RE:Ljava/util/regex/Pattern;

.field private static final META_CAL_RE:Ljava/util/regex/Pattern;

.field private static final META_DIST_RE:Ljava/util/regex/Pattern;

.field private static final META_DUR_RE:Ljava/util/regex/Pattern;

.field private static final META_MAXHR_RE:Ljava/util/regex/Pattern;

.field private static final NAME_RE:Ljava/util/regex/Pattern;

.field private static final POWER_RE:Ljava/util/regex/Pattern;

.field private static final TIME_RE:Ljava/util/regex/Pattern;

.field private static final TRKPT_RE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/GpxToFitConverter;

    invoke-direct {v0}, Lcom/jichi/ob/GpxToFitConverter;-><init>()V

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    const/16 v0, 0x10

    .line 27
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 25
    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->CRC_TABLE:[I

    .line 32
    const-string v0, "<trkpt\\s+(?:lat=\"([-\\d.]+)\"\\s+lon=\"([-\\d.]+)\"|lon=\"([-\\d.]+)\"\\s+lat=\"([-\\d.]+)\")[^>]*>(.*?)</trkpt>"

    const/16 v1, 0x20

    .line 31
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->TRKPT_RE:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "<ele>([-\\d.]+)</ele>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->ELE_RE:Ljava/util/regex/Pattern;

    .line 36
    const-string v0, "<time>([^<]+)</time>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->TIME_RE:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "<gpxtpx:hr>(\\d+)</gpxtpx:hr>|<hr>(\\d+)</hr>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->HR_RE:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "<gpxtpx:cad>(\\d+)</gpxtpx:cad>|<cadence>(\\d+)</cadence>|<cad>(\\d+)</cad>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->CAD_RE:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "<gpxtpx:power>(\\d+)</gpxtpx:power>|<power>(\\d+)</power>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->POWER_RE:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "<jichi:distance>([\\d.]+)</jichi:distance>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->META_DIST_RE:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "<jichi:duration>(\\d+)</jichi:duration>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->META_DUR_RE:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "<jichi:calorie>(\\d+)</jichi:calorie>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->META_CAL_RE:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "<jichi:avgHr>(\\d+)</jichi:avgHr>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->META_AVGHR_RE:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "<jichi:maxHr>(\\d+)</jichi:maxHr>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->META_MAXHR_RE:Ljava/util/regex/Pattern;

    .line 46
    const-string v0, "<jichi:avgCadence>([\\d.]+)</jichi:avgCadence>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->META_AVGCAD_RE:Ljava/util/regex/Pattern;

    .line 154
    const-string v0, "<name>([^<]+)</name>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/GpxToFitConverter;->NAME_RE:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xcc01
        0xd801
        0x1400
        0xf001
        0x3c00
        0x2800
        0xe401
        0xa001
        0x6c00
        0x7800
        0xb401
        0x5000
        0x9c01
        0x8801
        0x4400
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$u16(Lcom/jichi/ob/GpxToFitConverter;Ljava/io/ByteArrayOutputStream;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    return-void
.end method

.method public static final synthetic access$u8(Lcom/jichi/ob/GpxToFitConverter;Ljava/io/ByteArrayOutputStream;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    return-void
.end method

.method private final buildFitBody(Ljava/util/List;JIIDJDDD)[B
    .locals 57
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;JIIDJDDD)[B"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p4

    .line 283
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    .line 285
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v4}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-lez v4, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v4}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    .line 286
    :goto_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-lez v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p2

    .line 287
    :goto_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v11}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v6

    if-lez v12, :cond_3

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    const-wide/16 v12, 0x1

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v5

    int-to-long v14, v11

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    add-long v14, p2, v14

    .line 291
    :goto_4
    new-instance v11, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    invoke-direct {v11, v3, v3}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;-><init>(II)V

    invoke-virtual {v11, v3, v5, v3}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v11

    move-wide/from16 v16, v6

    const/4 v6, 0x2

    const/16 v7, 0x84

    invoke-virtual {v11, v5, v6, v7}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v6, v7}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v11

    const/4 v10, 0x4

    const/16 v12, 0x86

    invoke-virtual {v11, v10, v10, v12}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->build()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 292
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 293
    sget-object v13, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    const/4 v6, 0x3

    invoke-direct {v13, v11, v6}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    invoke-direct {v13, v11, v3}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    invoke-direct {v13, v11, v7}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    invoke-direct {v13, v11, v5}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    const-wide/32 v21, 0x259d4c00

    sub-long v8, v8, v21

    invoke-direct {v13, v11, v8, v9}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    .line 294
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 292
    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 298
    new-instance v11, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    const/16 v7, 0x15

    invoke-direct {v11, v5, v7}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;-><init>(II)V

    const/16 v7, 0xfd

    .line 299
    invoke-virtual {v11, v7, v10, v12}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v11

    .line 300
    invoke-virtual {v11, v3, v5, v3}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v11

    .line 301
    invoke-virtual {v11, v5, v5, v3}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v11

    const/4 v7, 0x2

    .line 302
    invoke-virtual {v11, v7, v5, v3}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v11

    .line 303
    invoke-virtual {v11, v6, v5, v7}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->build()[B

    move-result-object v7

    .line 298
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 304
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 305
    invoke-direct {v13, v7, v5}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 306
    invoke-direct {v13, v7, v8, v9}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    .line 307
    invoke-direct {v13, v7, v3}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 308
    invoke-direct {v13, v7, v3}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 309
    invoke-direct {v13, v7, v3}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 310
    invoke-direct {v13, v7, v3}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 311
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 304
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 314
    new-instance v7, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    const/16 v11, 0x17

    const/4 v6, 0x2

    invoke-direct {v7, v6, v11}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;-><init>(II)V

    invoke-virtual {v7, v3, v5, v3}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v7

    const/16 v11, 0x84

    invoke-virtual {v7, v5, v6, v11}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v7

    const/16 v11, 0xfd

    invoke-virtual {v7, v11, v10, v12}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->build()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 315
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 316
    invoke-direct {v13, v7, v6}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    const/16 v6, 0xff

    invoke-direct {v13, v7, v6}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    invoke-direct {v13, v7, v5}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    invoke-direct {v13, v7, v8, v9}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    .line 317
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 315
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 320
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v4, :cond_5

    .line 322
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v4}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v4}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v29

    sub-long v3, v27, v29

    move-wide/from16 v27, v8

    const-wide/16 v7, 0x1

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_5

    :cond_5
    move-wide/from16 v27, v8

    const-wide/16 v7, 0x1

    add-int/lit8 v3, v6, -0x1

    int-to-long v3, v3

    .line 324
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_5
    if-ne v6, v5, :cond_6

    move v7, v5

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_7

    cmp-long v8, p8, v16

    if-lez v8, :cond_7

    move-wide/from16 v3, p8

    :cond_7
    const-wide/16 v29, 0x0

    cmpl-double v8, p10, v29

    if-lez v8, :cond_8

    move v8, v5

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_7
    move v11, v5

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    move-wide/from16 v35, v33

    move-wide/from16 v37, v35

    :goto_8
    const-wide v39, 0x40b3880000000000L    # 5000.0

    if-ge v11, v6, :cond_d

    if-eqz v8, :cond_9

    add-int/lit8 v13, v11, -0x1

    .line 336
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual/range {v41 .. v41}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v43

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v13}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v45

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v13}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v47

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v13}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v49

    move-object/from16 v42, p0

    invoke-direct/range {v42 .. v50}, Lcom/jichi/ob/GpxToFitConverter;->haversineM(DDDD)D

    move-result-wide v43

    cmpl-double v13, v43, v39

    if-lez v13, :cond_9

    move v13, v5

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    :goto_9
    if-nez v13, :cond_b

    add-int/lit8 v9, v11, -0x1

    .line 338
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual/range {v39 .. v39}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v46

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual/range {v39 .. v39}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v48

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual/range {v39 .. v39}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v50

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual/range {v39 .. v39}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v52

    move-object/from16 v45, p0

    invoke-direct/range {v45 .. v53}, Lcom/jichi/ob/GpxToFitConverter;->haversineM(DDDD)D

    move-result-wide v39

    add-double v31, v31, v39

    .line 339
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual/range {v39 .. v39}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v39

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v9}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v42

    move/from16 p8, v13

    sub-double v12, v39, v42

    cmpl-double v39, v12, v29

    if-lez v39, :cond_a

    add-double v35, v35, v12

    goto :goto_a

    :cond_a
    neg-double v12, v12

    add-double v33, v33, v12

    goto :goto_a

    :cond_b
    move/from16 p8, v13

    .line 342
    :goto_a
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v12}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v12

    add-int/lit8 v9, v11, -0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual/range {v39 .. v39}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v39

    sub-long v12, v12, v39

    cmp-long v39, v12, v16

    if-lez v39, :cond_c

    if-nez p8, :cond_c

    .line 344
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual/range {v39 .. v39}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v46

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v9}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v48

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v9}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v50

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v9}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v52

    move-object/from16 v45, p0

    invoke-direct/range {v45 .. v53}, Lcom/jichi/ob/GpxToFitConverter;->haversineM(DDDD)D

    move-result-wide v39

    long-to-double v12, v12

    div-double v39, v39, v12

    cmpl-double v9, v39, v37

    if-lez v9, :cond_c

    move-wide/from16 v37, v39

    :cond_c
    add-int/lit8 v11, v11, 0x1

    const/16 v12, 0x86

    goto/16 :goto_8

    :cond_d
    if-eqz v8, :cond_e

    move-wide/from16 v31, p10

    move-wide/from16 v11, p12

    move-wide/from16 v33, p14

    goto :goto_b

    :cond_e
    move-wide/from16 v11, v35

    :goto_b
    if-eqz v7, :cond_10

    cmpl-double v7, p6, v29

    if-lez v7, :cond_10

    cmp-long v7, v3, v16

    if-lez v7, :cond_f

    long-to-double v7, v3

    div-double v7, p6, v7

    move-wide/from16 v37, v7

    goto :goto_c

    :cond_f
    move-wide/from16 v37, v29

    :goto_c
    move-wide/from16 v31, p6

    .line 357
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide/from16 v35, v16

    move-wide/from16 v42, v35

    move-wide/from16 v44, v42

    move-wide/from16 v46, v44

    move-wide/from16 v48, v46

    move-wide/from16 v50, v48

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 358
    invoke-virtual/range {v52 .. v52}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v53

    if-lez v53, :cond_11

    invoke-virtual/range {v52 .. v52}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v10

    move/from16 v54, v6

    int-to-long v5, v10

    add-long v35, v35, v5

    const-wide/16 v18, 0x1

    add-long v42, v42, v18

    invoke-virtual/range {v52 .. v52}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v5

    if-le v5, v8, :cond_12

    invoke-virtual/range {v52 .. v52}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v5

    move v8, v5

    goto :goto_e

    :cond_11
    move/from16 v54, v6

    .line 359
    :cond_12
    :goto_e
    invoke-virtual/range {v52 .. v52}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v5

    if-lez v5, :cond_13

    invoke-virtual/range {v52 .. v52}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v5

    int-to-long v5, v5

    add-long v44, v44, v5

    const-wide/16 v18, 0x1

    add-long v46, v46, v18

    invoke-virtual/range {v52 .. v52}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v5

    if-le v5, v13, :cond_13

    invoke-virtual/range {v52 .. v52}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v5

    move v13, v5

    .line 360
    :cond_13
    invoke-virtual/range {v52 .. v52}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v5

    if-lez v5, :cond_14

    invoke-virtual/range {v52 .. v52}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v5

    int-to-long v5, v5

    add-long v48, v48, v5

    const-wide/16 v18, 0x1

    add-long v50, v50, v18

    invoke-virtual/range {v52 .. v52}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v5

    if-le v5, v9, :cond_15

    invoke-virtual/range {v52 .. v52}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v9

    goto :goto_f

    :cond_14
    const-wide/16 v18, 0x1

    :cond_15
    :goto_f
    move/from16 v6, v54

    const/4 v5, 0x1

    const/4 v10, 0x4

    goto :goto_d

    :cond_16
    move/from16 v54, v6

    cmp-long v5, v3, v16

    if-lez v5, :cond_17

    long-to-double v5, v3

    div-double v5, v31, v5

    goto :goto_10

    :cond_17
    move-wide/from16 v5, v29

    :goto_10
    cmp-long v7, v42, v16

    move-wide/from16 p6, v5

    if-lez v7, :cond_18

    .line 363
    div-long v5, v35, v42

    long-to-int v7, v5

    move v5, v7

    goto :goto_11

    :cond_18
    const/4 v5, 0x0

    :goto_11
    cmp-long v6, v46, v16

    if-lez v6, :cond_19

    .line 364
    div-long v6, v44, v46

    long-to-int v7, v6

    move v6, v7

    goto :goto_12

    :cond_19
    const/4 v6, 0x0

    :goto_12
    cmp-long v7, v50, v16

    move/from16 v18, v9

    if-lez v7, :cond_1a

    .line 365
    div-long v9, v48, v50

    long-to-int v7, v9

    move v10, v7

    goto :goto_13

    :cond_1a
    const/4 v10, 0x0

    :goto_13
    if-lez v10, :cond_1b

    move-wide/from16 v35, v14

    int-to-double v14, v10

    move-wide/from16 v42, v14

    long-to-double v14, v3

    const-wide v44, 0x40ac200000000000L    # 3600.0

    div-double v14, v14, v44

    mul-double v14, v14, v42

    const-wide v42, 0x400ccccccccccccdL    # 3.6

    :goto_14
    mul-double v14, v14, v42

    double-to-int v7, v14

    move v14, v7

    goto :goto_15

    :cond_1b
    move-wide/from16 v35, v14

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1c

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double v14, v31, v14

    const-wide/high16 v42, 0x404e000000000000L    # 60.0

    goto :goto_14

    :cond_1c
    const/4 v14, 0x0

    .line 378
    :goto_15
    new-instance v7, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    const/16 v15, 0x12

    const/4 v9, 0x3

    invoke-direct {v7, v9, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;-><init>(II)V

    move-wide/from16 v42, v3

    const/4 v3, 0x4

    const/16 v9, 0x86

    const/16 v15, 0xfd

    .line 379
    invoke-virtual {v7, v15, v3, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v4

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v3, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v4

    const/16 v15, 0x85

    const/4 v7, 0x3

    invoke-virtual {v4, v7, v3, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v4

    invoke-virtual {v4, v3, v3, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v4

    const/4 v7, 0x5

    const/4 v3, 0x0

    const/4 v15, 0x1

    .line 380
    invoke-virtual {v4, v7, v15, v3}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v4

    const/4 v7, 0x6

    invoke-virtual {v4, v7, v15, v3}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v4

    const/4 v3, 0x5

    const/4 v15, 0x7

    const/4 v7, 0x4

    invoke-virtual {v4, v15, v7, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v4

    const/16 v3, 0x8

    invoke-virtual {v4, v3, v7, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v4, 0x9

    .line 381
    invoke-virtual {v3, v4, v7, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    move/from16 v4, v18

    move-wide/from16 v55, v33

    const/16 v7, 0xb

    const/16 v9, 0x84

    const/4 v15, 0x2

    invoke-virtual {v3, v7, v15, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0xe

    invoke-virtual {v3, v7, v15, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0xf

    invoke-virtual {v3, v7, v15, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0x10

    const/4 v9, 0x1

    .line 382
    invoke-virtual {v3, v7, v9, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0x11

    invoke-virtual {v3, v7, v9, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0x12

    invoke-virtual {v3, v7, v9, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0x13

    invoke-virtual {v3, v7, v9, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0x14

    const/16 v9, 0x84

    .line 383
    invoke-virtual {v3, v7, v15, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0x15

    invoke-virtual {v3, v7, v15, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0x16

    invoke-virtual {v3, v7, v15, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0x17

    invoke-virtual {v3, v7, v15, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0x1a

    const/4 v9, 0x1

    .line 384
    invoke-virtual {v3, v7, v9, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0x21

    invoke-virtual {v3, v7, v9, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0x7c

    const/16 v9, 0x84

    invoke-virtual {v3, v7, v15, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v7, 0x7d

    invoke-virtual {v3, v7, v15, v9}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->build()[B

    move-result-object v3

    .line 378
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 385
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 386
    sget-object v7, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    const/4 v9, 0x3

    invoke-direct {v7, v3, v9}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    move-wide/from16 v18, v11

    sub-long v11, v35, v21

    .line 387
    invoke-direct {v7, v3, v11, v12}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    move-wide/from16 v33, v11

    move-wide/from16 v11, v27

    .line 388
    invoke-direct {v7, v3, v11, v12}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    const/4 v9, 0x0

    .line 389
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    move/from16 v27, v10

    invoke-virtual {v15}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v9

    invoke-direct {v7, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->degToSemicircle(D)I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v7, v3, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v10}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v9

    invoke-direct {v7, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->degToSemicircle(D)I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v7, v3, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    .line 390
    invoke-direct {v7, v3, v1}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    move/from16 v1, p5

    invoke-direct {v7, v3, v1}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    const/16 v1, 0x3e8

    int-to-long v9, v1

    mul-long v9, v9, v42

    .line 391
    invoke-direct {v7, v3, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    invoke-direct {v7, v3, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    const/16 v1, 0x64

    move-wide/from16 p4, v9

    int-to-double v9, v1

    move-wide/from16 v35, v9

    mul-double v9, v31, v35

    double-to-long v9, v9

    .line 392
    invoke-direct {v7, v3, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    const v1, 0xffff

    const/4 v15, 0x0

    .line 393
    invoke-static {v14, v15, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    invoke-direct {v7, v3, v1}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    const/16 v1, 0x3e8

    move/from16 v28, v14

    int-to-double v14, v1

    move-wide/from16 v31, v14

    mul-double v14, p6, v31

    double-to-int v1, v14

    .line 394
    invoke-direct {v7, v3, v1}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    mul-double v14, v37, v31

    double-to-int v14, v14

    .line 395
    invoke-direct {v7, v3, v14}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    .line 396
    invoke-direct {v7, v3, v5}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    invoke-direct {v7, v3, v8}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 397
    invoke-direct {v7, v3, v6}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    invoke-direct {v7, v3, v13}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    move/from16 v15, v27

    .line 398
    invoke-direct {v7, v3, v15}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    invoke-direct {v7, v3, v4}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    move/from16 v37, v4

    move/from16 v27, v5

    move-wide/from16 v4, v18

    double-to-int v4, v4

    .line 399
    invoke-direct {v7, v3, v4}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    move/from16 v18, v4

    move-wide/from16 v4, v55

    double-to-int v4, v4

    invoke-direct {v7, v3, v4}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    const/4 v5, 0x1

    .line 400
    invoke-direct {v7, v3, v5}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    const/4 v5, 0x0

    invoke-direct {v7, v3, v5}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 401
    invoke-direct {v7, v3, v1}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    .line 402
    invoke-direct {v7, v3, v14}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    .line 403
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 385
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 410
    new-instance v3, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move/from16 v19, v4

    const/4 v4, 0x4

    const/16 v5, 0x13

    invoke-direct {v3, v4, v5}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;-><init>(II)V

    move/from16 v38, v15

    const/16 v5, 0xfd

    const/16 v15, 0x86

    .line 411
    invoke-virtual {v3, v5, v4, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v5, 0x85

    const/4 v15, 0x3

    invoke-virtual {v3, v15, v4, v5}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v5}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/4 v5, 0x7

    const/16 v15, 0x86

    .line 412
    invoke-virtual {v3, v5, v4, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5, v4, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v5, 0x9

    invoke-virtual {v3, v5, v4, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    move-wide/from16 v4, p4

    const/16 v15, 0xb

    move/from16 v43, v6

    move/from16 v42, v13

    const/4 v6, 0x2

    const/16 v13, 0x84

    invoke-virtual {v3, v15, v6, v13}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v15, 0xd

    .line 413
    invoke-virtual {v3, v15, v6, v13}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v15, 0xe

    invoke-virtual {v3, v15, v6, v13}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v15, 0xf

    const/4 v13, 0x1

    invoke-virtual {v3, v15, v13, v6}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v15, 0x10

    invoke-virtual {v3, v15, v13, v6}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v15, 0x11

    .line 414
    invoke-virtual {v3, v15, v13, v6}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v15, 0x12

    invoke-virtual {v3, v15, v13, v6}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v13, 0x84

    const/16 v15, 0x13

    invoke-virtual {v3, v15, v6, v13}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v15, 0x14

    invoke-virtual {v3, v15, v6, v13}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v15, 0x15

    .line 415
    invoke-virtual {v3, v15, v6, v13}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v15, 0x16

    invoke-virtual {v3, v15, v6, v13}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v15, 0x20

    const/4 v13, 0x1

    invoke-virtual {v3, v15, v13, v6}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v13, 0x6e

    const/16 v15, 0x84

    invoke-virtual {v3, v13, v6, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    const/16 v13, 0x6f

    invoke-virtual {v3, v13, v6, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->build()[B

    move-result-object v3

    .line 410
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 416
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v6, 0x4

    .line 417
    invoke-direct {v7, v3, v6}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    move v15, v14

    move-wide/from16 v13, v33

    .line 418
    invoke-direct {v7, v3, v13, v14}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    .line 419
    invoke-direct {v7, v3, v11, v12}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    const/4 v6, 0x0

    .line 420
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v11}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v11

    invoke-direct {v7, v11, v12}, Lcom/jichi/ob/GpxToFitConverter;->degToSemicircle(D)I

    move-result v11

    int-to-long v11, v11

    invoke-direct {v7, v3, v11, v12}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v11}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v11

    invoke-direct {v7, v11, v12}, Lcom/jichi/ob/GpxToFitConverter;->degToSemicircle(D)I

    move-result v11

    int-to-long v11, v11

    invoke-direct {v7, v3, v11, v12}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    .line 421
    invoke-direct {v7, v3, v4, v5}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    invoke-direct {v7, v3, v4, v5}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    .line 422
    invoke-direct {v7, v3, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    const v9, 0xffff

    move/from16 v10, v28

    .line 423
    invoke-static {v10, v6, v9}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v9

    invoke-direct {v7, v3, v9}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    .line 424
    invoke-direct {v7, v3, v1}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    .line 425
    invoke-direct {v7, v3, v15}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    move/from16 v6, v27

    .line 426
    invoke-direct {v7, v3, v6}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    invoke-direct {v7, v3, v8}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    move/from16 v6, v43

    .line 427
    invoke-direct {v7, v3, v6}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    move/from16 v6, v42

    invoke-direct {v7, v3, v6}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    move/from16 v6, v38

    .line 428
    invoke-direct {v7, v3, v6}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    move/from16 v9, v37

    invoke-direct {v7, v3, v9}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    move/from16 v6, v18

    .line 429
    invoke-direct {v7, v3, v6}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    move/from16 v6, v19

    invoke-direct {v7, v3, v6}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    const/4 v9, 0x1

    .line 430
    invoke-direct {v7, v3, v9}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 431
    invoke-direct {v7, v3, v1}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    .line 432
    invoke-direct {v7, v3, v15}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    .line 433
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 416
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 440
    new-instance v1, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    const/16 v3, 0x22

    const/4 v6, 0x5

    invoke-direct {v1, v6, v3}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;-><init>(II)V

    const/4 v3, 0x4

    const/16 v11, 0xfd

    const/16 v15, 0x86

    .line 441
    invoke-virtual {v1, v11, v3, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    const/4 v8, 0x0

    .line 442
    invoke-virtual {v1, v8, v3, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    const/4 v10, 0x2

    const/16 v11, 0x84

    .line 443
    invoke-virtual {v1, v9, v10, v11}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    .line 444
    invoke-virtual {v1, v10, v9, v8}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    const/4 v10, 0x3

    .line 445
    invoke-virtual {v1, v10, v9, v8}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    .line 446
    invoke-virtual {v1, v3, v9, v8}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    .line 447
    invoke-virtual {v1, v6, v3, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    .line 448
    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->build()[B

    move-result-object v1

    .line 440
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 449
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 450
    invoke-direct {v7, v1, v6}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 451
    invoke-direct {v7, v1, v13, v14}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    .line 452
    invoke-direct {v7, v1, v4, v5}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    .line 453
    invoke-direct {v7, v1, v9}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    .line 454
    invoke-direct {v7, v1, v8}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    const/16 v3, 0x1a

    .line 455
    invoke-direct {v7, v1, v3}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 456
    invoke-direct {v7, v1, v9}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    const/16 v3, 0x7080

    int-to-long v3, v3

    add-long v11, v13, v3

    .line 457
    invoke-direct {v7, v1, v11, v12}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    .line 458
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 449
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 461
    new-instance v1, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    const/16 v3, 0x14

    const/4 v4, 0x6

    invoke-direct {v1, v4, v3}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;-><init>(II)V

    const/4 v3, 0x4

    const/16 v11, 0xfd

    const/16 v15, 0x86

    .line 462
    invoke-virtual {v1, v11, v3, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    const/16 v5, 0x85

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3, v5}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v3, v5}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    const/4 v7, 0x2

    const/16 v11, 0x84

    .line 463
    invoke-virtual {v1, v7, v7, v11}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    const/4 v10, 0x3

    invoke-virtual {v1, v10, v9, v7}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v9, v7}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    const/4 v5, 0x5

    .line 464
    invoke-virtual {v1, v5, v3, v15}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v7, v11}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    const/4 v5, 0x7

    invoke-virtual {v1, v5, v7, v11}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->build()[B

    move-result-object v1

    .line 461
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 467
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    move/from16 v3, v54

    .line 468
    invoke-static {v6, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Lkotlin/ranges/IntProgression;

    invoke-static {v3, v9}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v5

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_1d

    if-le v4, v5, :cond_1e

    :cond_1d
    if-gez v3, :cond_2b

    if-gt v5, v4, :cond_2b

    :cond_1e
    move-wide/from16 v6, v29

    .line 469
    :goto_16
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    if-lez v4, :cond_23

    .line 474
    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v9

    cmpl-double v9, v9, v29

    if-lez v9, :cond_1f

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v9

    cmpl-double v9, v9, v29

    if-lez v9, :cond_1f

    const/4 v9, 0x1

    goto :goto_17

    :cond_1f
    const/4 v9, 0x0

    :goto_17
    if-eqz v9, :cond_20

    .line 476
    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v10

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v18

    cmpl-double v10, v10, v18

    if-lez v10, :cond_20

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v9

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v11

    sub-double/2addr v9, v11

    goto :goto_18

    :cond_20
    if-eqz v9, :cond_22

    :cond_21
    move-wide/from16 v9, v29

    goto :goto_18

    .line 479
    :cond_22
    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v9

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v11

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v18

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v23

    move-object/from16 p4, p0

    move-wide/from16 p5, v9

    move-wide/from16 p7, v11

    move-wide/from16 p9, v18

    move-wide/from16 p11, v23

    invoke-direct/range {p4 .. p12}, Lcom/jichi/ob/GpxToFitConverter;->haversineM(DDDD)D

    move-result-wide v9

    cmpg-double v1, v9, v39

    if-gez v1, :cond_21

    :goto_18
    add-double/2addr v6, v9

    .line 486
    :cond_23
    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v16

    if-lez v9, :cond_24

    goto :goto_19

    :cond_24
    const/4 v1, 0x0

    :goto_19
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_1a

    :cond_25
    int-to-long v9, v4

    add-long v9, p2, v9

    :goto_1a
    if-lez v4, :cond_2a

    .line 488
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v11

    cmp-long v1, v11, v16

    if-lez v1, :cond_2a

    add-int/lit8 v1, v4, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v11}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v11

    cmp-long v11, v11, v16

    if-lez v11, :cond_2a

    .line 489
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v11}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v15}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v18

    sub-long v11, v11, v18

    cmp-long v15, v11, v16

    if-lez v15, :cond_2a

    .line 491
    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v18

    cmpl-double v15, v18, v29

    if-lez v15, :cond_26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v15}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v18

    cmpl-double v15, v18, v29

    if-lez v15, :cond_26

    const/4 v15, 0x1

    goto :goto_1b

    :cond_26
    const/4 v15, 0x0

    :goto_1b
    if-eqz v15, :cond_27

    .line 493
    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual/range {v20 .. v20}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v23

    cmpl-double v18, v18, v23

    if-lez v18, :cond_27

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v23

    sub-double v18, v18, v23

    goto :goto_1c

    :cond_27
    if-eqz v15, :cond_29

    :cond_28
    move-wide/from16 v18, v29

    goto :goto_1c

    .line 496
    :cond_29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v15}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v23

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v25

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v27

    move-object/from16 p4, p0

    move-wide/from16 p5, v18

    move-wide/from16 p7, v23

    move-wide/from16 p9, v25

    move-wide/from16 p11, v27

    invoke-direct/range {p4 .. p12}, Lcom/jichi/ob/GpxToFitConverter;->haversineM(DDDD)D

    move-result-wide v18

    cmpg-double v1, v18, v39

    if-gez v1, :cond_28

    :goto_1c
    long-to-double v11, v11

    div-double v18, v18, v11

    goto :goto_1d

    :cond_2a
    move-wide/from16 v18, v29

    .line 503
    :goto_1d
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 504
    sget-object v11, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    const/4 v12, 0x6

    invoke-direct {v11, v1, v12}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    sub-long v9, v9, v21

    .line 505
    invoke-direct {v11, v1, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    .line 506
    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v9

    invoke-direct {v11, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->degToSemicircle(D)I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v11, v1, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v9

    invoke-direct {v11, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->degToSemicircle(D)I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v11, v1, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    .line 507
    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v9

    const-wide v23, 0x407f400000000000L    # 500.0

    add-double v9, v9, v23

    const-wide/high16 v23, 0x4014000000000000L    # 5.0

    mul-double v9, v9, v23

    double-to-int v9, v9

    invoke-direct {v11, v1, v9}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    .line 508
    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v9

    invoke-direct {v11, v1, v9}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 509
    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v9

    invoke-direct {v11, v1, v9}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    mul-double v9, v6, v35

    double-to-long v9, v9

    .line 510
    invoke-direct {v11, v1, v9, v10}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    mul-double v9, v18, v31

    double-to-int v9, v9

    .line 511
    invoke-direct {v11, v1, v9}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    .line 512
    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v9

    invoke-direct {v11, v1, v9}, Lcom/jichi/ob/GpxToFitConverter;->u16(Ljava/io/ByteArrayOutputStream;I)V

    .line 513
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 503
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eq v4, v5, :cond_2b

    add-int/2addr v4, v3

    move-object v1, v8

    goto/16 :goto_16

    .line 517
    :cond_2b
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 518
    sget-object v1, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    const/4 v9, 0x1

    invoke-direct {v1, v0, v9}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 519
    invoke-direct {v1, v0, v13, v14}, Lcom/jichi/ob/GpxToFitConverter;->u32(Ljava/io/ByteArrayOutputStream;J)V

    const/4 v6, 0x0

    .line 520
    invoke-direct {v1, v0, v6}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 521
    invoke-direct {v1, v0, v9}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 522
    invoke-direct {v1, v0, v6}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 523
    invoke-direct {v1, v0, v6}, Lcom/jichi/ob/GpxToFitConverter;->u8(Ljava/io/ByteArrayOutputStream;I)V

    .line 524
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 517
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 526
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic buildFitBody$default(Lcom/jichi/ob/GpxToFitConverter;Ljava/util/List;JIIDJDDDILjava/lang/Object;)[B
    .locals 18

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    move v6, v1

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v7, v1

    goto :goto_1

    :cond_1
    move/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    move-wide v8, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    const-wide/16 v4, 0x0

    move-wide v10, v4

    goto :goto_3

    :cond_3
    move-wide/from16 v10, p8

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-wide v12, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v12, p10

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-wide v14, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v14, p12

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    move-wide/from16 v16, v2

    move-wide/from16 v4, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    goto :goto_6

    :cond_6
    move-wide/from16 v16, p14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    .line 282
    :goto_6
    invoke-direct/range {v2 .. v17}, Lcom/jichi/ob/GpxToFitConverter;->buildFitBody(Ljava/util/List;JIIDJDDD)[B

    move-result-object v0

    return-object v0
.end method

.method private final buildFitFile([B)[B
    .locals 6

    const/16 v0, 0xe

    .line 260
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 261
    aput-byte v0, v1, v2

    const/4 v0, 0x1

    const/16 v2, 0x10

    .line 262
    aput-byte v2, v1, v0

    const/4 v0, 0x2

    const/16 v3, 0x54

    .line 264
    aput-byte v3, v1, v0

    const/4 v0, 0x3

    const/16 v4, 0x8

    aput-byte v4, v1, v0

    .line 266
    array-length v0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v5, 0x4

    aput-byte v0, v1, v5

    array-length v0, p1

    shr-int/2addr v0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v5, 0x5

    aput-byte v0, v1, v5

    .line 267
    array-length v0, p1

    shr-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    array-length v0, p1

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    const/16 v0, 0x2e

    .line 268
    aput-byte v0, v1, v4

    const/16 v0, 0x9

    const/16 v2, 0x46

    aput-byte v2, v1, v0

    const/16 v0, 0xa

    const/16 v2, 0x49

    .line 269
    aput-byte v2, v1, v0

    const/16 v0, 0xb

    aput-byte v3, v1, v0

    const/16 v0, 0xc

    .line 271
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "copyOf(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/jichi/ob/GpxToFitConverter;->fitCrc([B)I

    move-result v2

    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    .line 272
    aput-byte v3, v1, v0

    shr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v2, 0xd

    aput-byte v0, v1, v2

    .line 274
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 275
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 276
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 277
    invoke-direct {p0, p1}, Lcom/jichi/ob/GpxToFitConverter;->fitCrc([B)I

    move-result p1

    and-int/lit16 v1, p1, 0xff

    .line 278
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/2addr p1, v4

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 279
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string/jumbo v0, "toByteArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic convert$default(Lcom/jichi/ob/GpxToFitConverter;[BIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 198
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/GpxToFitConverter;->convert([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic convertPoints$default(Lcom/jichi/ob/GpxToFitConverter;Ljava/util/List;IDJIIDDDILjava/lang/Object;)[B
    .locals 14

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p3

    :goto_1
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_2

    const-wide/16 v7, 0x0

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p5

    :goto_2
    and-int/lit8 v2, v0, 0x10

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    move v2, v9

    goto :goto_3

    :cond_3
    move/from16 v2, p7

    :goto_3
    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v9, p8

    :goto_4
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_5

    move-wide v10, v3

    goto :goto_5

    :cond_5
    move-wide/from16 v10, p9

    :goto_5
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_6

    move-wide v12, v3

    goto :goto_6

    :cond_6
    move-wide/from16 v12, p11

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    move-wide/from16 p15, v3

    goto :goto_7

    :cond_7
    move-wide/from16 p15, p13

    :goto_7
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move/from16 p9, v2

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move/from16 p10, v9

    move-wide/from16 p11, v10

    move-wide/from16 p13, v12

    .line 248
    invoke-virtual/range {p2 .. p16}, Lcom/jichi/ob/GpxToFitConverter;->convertPoints(Ljava/util/List;IDJIIDDD)[B

    move-result-object p0

    return-object p0
.end method

.method private final degToSemicircle(D)I
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x403f000000000000L    # 31.0

    .line 116
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    mul-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method private final detectSportFromGpx(Ljava/lang/String;)Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 166
    :try_start_0
    sget-object v2, Lcom/jichi/ob/GpxToFitConverter;->NAME_RE:Ljava/util/regex/Pattern;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p1, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 v2, 0x1

    .line 168
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "group(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "toLowerCase(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "indoorcycling"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v4, "spinning"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_9

    .line 172
    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "cycling"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "riding"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "bike"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "ebike"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_8

    .line 174
    :cond_2
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "indoorrunning"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    const/16 v4, 0xe

    if-nez v3, :cond_14

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v7, "treadmill"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v3, v7, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_7

    .line 175
    :cond_3
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v7, "running"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v3, v7, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v7, "run"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v3, v7, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_6

    .line 177
    :cond_4
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v7, "mountaineering"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v3, v7, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v7, "mountaineer"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v3, v7, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_5

    .line 178
    :cond_5
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v7, "hiking"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v3, v7, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v7, "hike"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v3, v7, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v7, "trail"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v3, v7, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_4

    .line 180
    :cond_6
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v7, "indoorwalking"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v3, v7, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance p1, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 181
    :cond_7
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v4, "walking"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v4, "walk"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_3

    .line 183
    :cond_8
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "indoorswimming"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_9

    new-instance p1, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 184
    :cond_9
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v4, "swimming"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2, v4, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v4, "swim"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2, v4, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_2

    .line 186
    :cond_a
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v3, "triathlon"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "multisport"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1

    .line 187
    :cond_b
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "fitness"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v3, "workout"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    check-cast p1, Ljava/lang/CharSequence;

    const-string/jumbo v2, "training"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_0

    .line 188
    :cond_c
    new-instance p1, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 187
    :cond_d
    :goto_0
    new-instance p1, Lkotlin/Pair;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 186
    :cond_e
    :goto_1
    new-instance p1, Lkotlin/Pair;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 184
    :cond_f
    :goto_2
    new-instance p1, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 181
    :cond_10
    :goto_3
    new-instance p1, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 178
    :cond_11
    :goto_4
    new-instance p1, Lkotlin/Pair;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 177
    :cond_12
    :goto_5
    new-instance p1, Lkotlin/Pair;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 175
    :cond_13
    :goto_6
    new-instance p1, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 174
    :cond_14
    :goto_7
    new-instance p1, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 172
    :cond_15
    :goto_8
    new-instance p1, Lkotlin/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 171
    :cond_16
    :goto_9
    new-instance p1, Lkotlin/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 190
    :catch_0
    new-instance p1, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private final fitCrc([B)I
    .locals 7

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v3, p1, v1

    and-int/lit16 v4, v3, 0xff

    .line 75
    sget-object v5, Lcom/jichi/ob/GpxToFitConverter;->CRC_TABLE:[I

    and-int/lit8 v6, v2, 0xf

    aget v6, v5, v6

    shr-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xfff

    xor-int/2addr v2, v6

    and-int/lit8 v3, v3, 0xf

    .line 77
    aget v3, v5, v3

    xor-int/2addr v2, v3

    and-int/lit8 v3, v2, 0xf

    .line 78
    aget v3, v5, v3

    shr-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xfff

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v4, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 80
    aget v3, v5, v3

    xor-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private final haversineM(DDDD)D
    .locals 4

    .line 120
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    sub-double/2addr p5, p1

    .line 121
    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    sub-double/2addr p7, p3

    invoke-static {p7, p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    const/4 p5, 0x2

    int-to-double p5, p5

    div-double/2addr p1, p5

    .line 122
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p7

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr p7, p1

    .line 123
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

    .line 124
    invoke-static {p7, p8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    mul-double/2addr p5, p1

    return-wide p5
.end method

.method private final parseGpx(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 87
    sget-object v1, Lcom/jichi/ob/GpxToFitConverter;->TRKPT_RE:Ljava/util/regex/Pattern;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const v3, 0xc350

    if-ge v2, v3, :cond_10

    const/4 v2, 0x1

    .line 89
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-wide v8, v5

    goto :goto_3

    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_0

    goto :goto_1

    :goto_3
    const/4 v3, 0x2

    .line 90
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    if-eqz v5, :cond_3

    invoke-static {v5}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_3

    :goto_4
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    goto :goto_6

    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v5}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    goto :goto_5

    :cond_4
    move-object v5, v4

    :goto_5
    if-eqz v5, :cond_0

    goto :goto_4

    :goto_6
    const/4 v5, 0x5

    .line 91
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    sget-object v7, Lcom/jichi/ob/GpxToFitConverter;->ELE_RE:Ljava/util/regex/Pattern;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    const-string v13, "group(...)"

    const-wide/16 v14, 0x0

    if-eqz v12, :cond_5

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 95
    :cond_5
    sget-object v7, Lcom/jichi/ob/GpxToFitConverter;->TIME_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 96
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    const/4 v6, 0x0

    if-eqz v12, :cond_7

    .line 97
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, " "

    const-string v18, "T"

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 98
    const-string v12, "Z"

    invoke-static {v7, v12, v6, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 100
    :cond_6
    :try_start_0
    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    :cond_7
    const-wide/16 v12, 0x0

    .line 107
    :goto_7
    sget-object v4, Lcom/jichi/ob/GpxToFitConverter;->HR_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    const-string v16, "0"

    if-eqz v7, :cond_9

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    move-object/from16 v7, v16

    :cond_8
    invoke-static {v7}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_8

    :cond_9
    move v4, v6

    .line 108
    :goto_8
    sget-object v7, Lcom/jichi/ob/GpxToFitConverter;->CAD_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_a

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_a

    const/4 v6, 0x3

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_a

    move-object/from16 v17, v16

    :cond_a
    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    :goto_9
    move/from16 v17, v6

    goto :goto_a

    :cond_c
    const/16 v17, 0x0

    .line 109
    :goto_a
    sget-object v6, Lcom/jichi/ob/GpxToFitConverter;->POWER_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_b

    :cond_d
    move-object/from16 v16, v2

    :goto_b
    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v6, v2

    goto :goto_c

    :cond_e
    const/4 v6, 0x0

    :goto_c
    move/from16 v18, v6

    goto :goto_d

    :cond_f
    const/16 v18, 0x0

    .line 110
    :goto_d
    new-instance v7, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    const/16 v21, 0x80

    const/16 v22, 0x0

    const-wide/16 v19, 0x0

    move-wide/from16 v23, v14

    move-wide v14, v12

    move-wide/from16 v12, v23

    move/from16 v16, v4

    invoke-direct/range {v7 .. v22}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;-><init>(DDDJIIIDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    return-object v0
.end method

.method private final parseMeta(Ljava/lang/String;)Lcom/jichi/ob/GpxToFitConverter$Meta;
    .locals 16

    .line 54
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->META_DIST_RE:Ljava/util/regex/Pattern;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const-wide/16 v3, 0x0

    const-string v5, "group(...)"

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :cond_0
    move-wide v8, v3

    .line 55
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->META_DUR_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_1
    move-wide v10, v3

    .line 56
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->META_CAL_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v12, v0

    goto :goto_0

    :cond_2
    move v12, v3

    .line 57
    :goto_0
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->META_AVGHR_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v13, v0

    goto :goto_1

    :cond_3
    move v13, v3

    .line 58
    :goto_1
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->META_MAXHR_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v14, v0

    goto :goto_2

    :cond_4
    move v14, v3

    .line 59
    :goto_2
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->META_AVGCAD_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v3, v0

    :cond_5
    move v15, v3

    .line 53
    new-instance v7, Lcom/jichi/ob/GpxToFitConverter$Meta;

    invoke-direct/range {v7 .. v15}, Lcom/jichi/ob/GpxToFitConverter$Meta;-><init>(DJIIII)V

    return-object v7
.end method

.method private final u16(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1

    and-int/lit16 v0, p2, 0xff

    .line 130
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method private final u32(Ljava/io/ByteArrayOutputStream;J)V
    .locals 4

    const-wide/16 v0, 0xff

    and-long v2, p2, v0

    long-to-int v2, v2

    .line 133
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x8

    shr-long v2, p2, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x10

    shr-long v2, p2, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    .line 134
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x18

    shr-long/2addr p2, v2

    and-long/2addr p2, v0

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method private final u8(Ljava/io/ByteArrayOutputStream;I)V
    .locals 0

    and-int/lit16 p2, p2, 0xff

    .line 128
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public final convert([BI)[B
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "gpx"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    .line 199
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 200
    invoke-direct {v1, v2}, Lcom/jichi/ob/GpxToFitConverter;->parseGpx(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 201
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 202
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .line 531
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 202
    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    check-cast v4, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-long v5, v5

    div-long/2addr v3, v5

    :goto_1
    if-lez p2, :cond_3

    .line 203
    new-instance v3, Lkotlin/Pair;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-direct {v1, v2}, Lcom/jichi/ob/GpxToFitConverter;->detectSportFromGpx(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v3

    :goto_2
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-lez v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x2

    :goto_3
    move v3, v4

    .line 205
    invoke-direct {v1, v2}, Lcom/jichi/ob/GpxToFitConverter;->parseMeta(Ljava/lang/String;)Lcom/jichi/ob/GpxToFitConverter$Meta;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lcom/jichi/ob/GpxToFitConverter$Meta;->getDist()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/jichi/ob/GpxToFitConverter$Meta;->getDur()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/jichi/ob/GpxToFitConverter$Meta;->getAvgCadence()I

    move-result v9

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v17}, Lcom/jichi/ob/GpxToFitConverter;->convertPoints$default(Lcom/jichi/ob/GpxToFitConverter;Ljava/util/List;IDJIIDDDILjava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 201
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GPX\u65e0\u6709\u6548\u8f68\u8ff9\u70b9"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final convertPoints(Ljava/util/List;IDJIIDDD)[B
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;IDJIIDDD)[B"
        }
    .end annotation

    move-object/from16 v2, p1

    const-string v0, "pts"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    .line 535
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 250
    invoke-virtual {v3}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v0, v3

    :goto_1
    move/from16 v5, p2

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v6, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide v3, v0

    move-object/from16 v1, p0

    .line 251
    invoke-direct/range {v1 .. v16}, Lcom/jichi/ob/GpxToFitConverter;->buildFitBody(Ljava/util/List;JIIDJDDD)[B

    move-result-object v0

    .line 252
    invoke-direct {v1, v0}, Lcom/jichi/ob/GpxToFitConverter;->buildFitFile([B)[B

    move-result-object v0

    return-object v0

    :cond_3
    move-object/from16 v1, p0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\u65e0\u6709\u6548\u8f68\u8ff9\u70b9"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final convertWithSportType([BLjava/lang/String;)[B
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "gpx"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    .line 230
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 231
    invoke-direct {v1, v2}, Lcom/jichi/ob/GpxToFitConverter;->parseGpx(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 232
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 233
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .line 533
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 233
    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    check-cast v4, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-long v5, v5

    div-long/2addr v3, v5

    :goto_1
    move-object/from16 v3, p2

    .line 235
    invoke-virtual {v1, v3}, Lcom/jichi/ob/GpxToFitConverter;->sportTypeToFitPair(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-direct {v1, v2}, Lcom/jichi/ob/GpxToFitConverter;->detectSportFromGpx(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v3

    :cond_3
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-lez v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x2

    :goto_2
    move v3, v4

    .line 237
    invoke-direct {v1, v2}, Lcom/jichi/ob/GpxToFitConverter;->parseMeta(Ljava/lang/String;)Lcom/jichi/ob/GpxToFitConverter$Meta;

    move-result-object v2

    .line 238
    invoke-virtual {v2}, Lcom/jichi/ob/GpxToFitConverter$Meta;->getDist()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/jichi/ob/GpxToFitConverter$Meta;->getDur()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/jichi/ob/GpxToFitConverter$Meta;->getAvgCadence()I

    move-result v9

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v17}, Lcom/jichi/ob/GpxToFitConverter;->convertPoints$default(Lcom/jichi/ob/GpxToFitConverter;Ljava/util/List;IDJIIDDDILjava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 232
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GPX\u65e0\u6709\u6548\u8f68\u8ff9\u70b9"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isFit([B)Z
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    array-length v0, p1

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/16 v0, 0x8

    aget-byte v0, p1, v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    aget-byte v0, p1, v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    .line 69
    aget-byte v0, p1, v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb

    aget-byte p1, p1, v0

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final parseGpxBytes([B)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;"
        }
    .end annotation

    const-string v0, "gpx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lcom/jichi/ob/GpxToFitConverter;->parseGpx(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final sportTypeToFitPair(Ljava/lang/String;)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 212
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 213
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "running"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 215
    :cond_1
    new-instance p1, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 213
    :sswitch_1
    const-string/jumbo v0, "training"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 223
    :cond_2
    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 213
    :sswitch_2
    const-string v0, "cycling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 214
    :cond_3
    new-instance p1, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 213
    :sswitch_3
    const-string/jumbo v0, "walking"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 217
    :cond_4
    new-instance p1, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 213
    :sswitch_4
    const-string v0, "mountaineering"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    .line 218
    :cond_5
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 213
    :sswitch_5
    const-string/jumbo v0, "swimming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 219
    :cond_6
    new-instance p1, Lkotlin/Pair;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 213
    :sswitch_6
    const-string/jumbo v0, "triathlon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 220
    :cond_7
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 213
    :sswitch_7
    const-string/jumbo v0, "skiing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    .line 221
    :cond_8
    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 213
    :sswitch_8
    const-string v0, "rowing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    .line 222
    :cond_9
    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 213
    :sswitch_9
    const-string v0, "hiking"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    .line 216
    :cond_a
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_b
    :goto_0
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x488e1fe8 -> :sswitch_9
        -0x3723a838 -> :sswitch_8
        -0x35ad8acf -> :sswitch_7
        -0x302fc5ff -> :sswitch_6
        -0x5734d23 -> :sswitch_5
        -0x3af9c63 -> :sswitch_4
        0x42afc579 -> :sswitch_3
        0x49291423 -> :sswitch_2
        0x4c1008da -> :sswitch_1
        0x5c6f15bf -> :sswitch_0
    .end sparse-switch
.end method

.class public final Lcom/jichi/ob/merge/TrackMerger;
.super Ljava/lang/Object;
.source "TrackMerger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/merge/TrackMerger$MergedResult;,
        Lcom/jichi/ob/merge/TrackMerger$Segment;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrackMerger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackMerger.kt\ncom/jichi/ob/merge/TrackMerger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n1617#2,9:269\n1869#2:278\n1870#2:280\n1626#2:281\n1573#2:282\n1604#2,3:283\n1607#2:287\n774#2:288\n865#2,2:289\n774#2:291\n865#2,2:292\n1056#2:294\n1#3:279\n1#3:286\n*S KotlinDebug\n*F\n+ 1 TrackMerger.kt\ncom/jichi/ob/merge/TrackMerger\n*L\n61#1:269,9\n61#1:278\n61#1:280\n61#1:281\n73#1:282\n73#1:283,3\n73#1:287\n75#1:288\n75#1:289,2\n82#1:291\n82#1:292,2\n83#1:294\n61#1:279\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0006\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002,-B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\n\u001a\u00020\u000b2\u0018\u0010\u000c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e0\r2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005JD\u0010\u0012\u001a\u00020\u000b2\u0012\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\r0\r2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00050\r2\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00050\rJ\u001e\u0010\u0017\u001a\u00020\u000b2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\r2\u0006\u0010\u0011\u001a\u00020\u0005H\u0002J\u0016\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000fJ\u000e\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000fJ\u0010\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000fH\u0002J(\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020#2\u0006\u0010\'\u001a\u00020#H\u0002J\u0010\u0010(\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020#H\u0002J\u0010\u0010*\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/jichi/ob/merge/TrackMerger;",
        "",
        "<init>",
        "()V",
        "SPORT_RUNNING",
        "",
        "SPORT_CYCLING",
        "SPORT_HIKING",
        "MAX_SEG_INTERVAL_S",
        "",
        "mergeGpxFiles",
        "Lcom/jichi/ob/merge/TrackMerger$MergedResult;",
        "files",
        "",
        "Lkotlin/Pair;",
        "",
        "",
        "forcedSport",
        "mergePointGroups",
        "groups",
        "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
        "ascents",
        "descents",
        "mergeSegments",
        "segments",
        "Lcom/jichi/ob/merge/TrackMerger$Segment;",
        "buildGpx",
        "result",
        "title",
        "sportName",
        "sport",
        "detectSportFromName",
        "name",
        "detectSport",
        "haversineKm",
        "",
        "lat1",
        "lon1",
        "lat2",
        "lon2",
        "trimNum",
        "v",
        "esc",
        "s",
        "Segment",
        "MergedResult",
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
.field public static final INSTANCE:Lcom/jichi/ob/merge/TrackMerger;

.field private static final MAX_SEG_INTERVAL_S:J = 0x5aL

.field public static final SPORT_CYCLING:I = 0x2

.field public static final SPORT_HIKING:I = 0x11

.field public static final SPORT_RUNNING:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jichi/ob/merge/TrackMerger;

    invoke-direct {v0}, Lcom/jichi/ob/merge/TrackMerger;-><init>()V

    sput-object v0, Lcom/jichi/ob/merge/TrackMerger;->INSTANCE:Lcom/jichi/ob/merge/TrackMerger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final detectSport(Ljava/lang/String;)I
    .locals 4

    .line 246
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "cycling"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "riding"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "bike"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "\u9a91\u884c"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "\u516c\u8def"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "\u5c71\u5730"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 249
    :cond_0
    const-string v0, "hiking"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "walking"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "trail"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "\u5f92\u6b65"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "\u767b\u5c71"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "\u5065\u8d70"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 250
    :cond_1
    const-string v0, "running"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "run"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "\u8dd1\u6b65"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const/16 p1, 0x11

    return p1

    :cond_5
    :goto_2
    return v2
.end method

.method private final esc(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 266
    const-string v1, "&"

    const-string v2, "&amp;"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "<"

    const-string v8, "&lt;"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\""

    const-string v8, "&quot;"

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final haversineKm(DDDD)D
    .locals 4

    sub-double v0, p5, p1

    .line 257
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p7, p3

    .line 258
    invoke-static {p7, p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    const/4 p7, 0x2

    int-to-double p7, p7

    div-double/2addr v0, p7

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    .line 260
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    mul-double/2addr p1, p5

    div-double/2addr p3, p7

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p5

    mul-double/2addr p1, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double/2addr p1, p3

    add-double/2addr v2, p1

    const-wide p1, 0x40b8e30240b78034L    # 6371.0088

    mul-double/2addr p7, p1

    .line 261
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const/4 p3, 0x1

    int-to-double p3, p3

    sub-double/2addr p3, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    mul-double/2addr p7, p1

    return-wide p7
.end method

.method public static synthetic mergeGpxFiles$default(Lcom/jichi/ob/merge/TrackMerger;Ljava/util/List;IILjava/lang/Object;)Lcom/jichi/ob/merge/TrackMerger$MergedResult;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/merge/TrackMerger;->mergeGpxFiles(Ljava/util/List;I)Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic mergePointGroups$default(Lcom/jichi/ob/merge/TrackMerger;Ljava/util/List;ILjava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/jichi/ob/merge/TrackMerger$MergedResult;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 72
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jichi/ob/merge/TrackMerger;->mergePointGroups(Ljava/util/List;ILjava/util/List;Ljava/util/List;)Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    move-result-object p0

    return-object p0
.end method

.method private final mergeSegments(Ljava/util/List;I)Lcom/jichi/ob/merge/TrackMerger$MergedResult;
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/merge/TrackMerger$Segment;",
            ">;I)",
            "Lcom/jichi/ob/merge/TrackMerger$MergedResult;"
        }
    .end annotation

    .line 82
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 292
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/jichi/ob/merge/TrackMerger$Segment;

    .line 82
    invoke-virtual {v3}, Lcom/jichi/ob/merge/TrackMerger$Segment;->getPoints()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 292
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 83
    check-cast v1, Ljava/lang/Iterable;

    .line 294
    new-instance v0, Lcom/jichi/ob/merge/TrackMerger$mergeSegments$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/jichi/ob/merge/TrackMerger$mergeSegments$$inlined$sortedBy$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    if-lez p2, :cond_2

    move/from16 v5, p2

    goto :goto_3

    .line 88
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/ob/merge/TrackMerger$Segment;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/jichi/ob/merge/TrackMerger$Segment;->getSport()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    :goto_2
    move v5, v2

    .line 96
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v8, -0x1

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-wide/16 v12, 0x1

    const-wide/16 v15, 0x0

    if-eqz v10, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jichi/ob/merge/TrackMerger$Segment;

    .line 102
    invoke-virtual {v10}, Lcom/jichi/ob/merge/TrackMerger$Segment;->getPoints()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x1

    const-wide/16 v17, -0x1

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v19

    check-cast v20, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 105
    invoke-virtual/range {v20 .. v20}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v21

    cmp-long v19, v21, v15

    if-gtz v19, :cond_7

    cmp-long v19, v8, v15

    if-gez v19, :cond_6

    move-wide/from16 v21, v12

    goto :goto_5

    :cond_6
    add-long v21, v8, v12

    :goto_5
    move-wide/from16 v6, v17

    move-wide/from16 v27, v21

    move-wide/from16 v18, v15

    goto :goto_7

    :cond_7
    cmp-long v19, v17, v15

    if-gez v19, :cond_9

    cmp-long v17, v8, v15

    if-gez v17, :cond_8

    .line 108
    invoke-virtual/range {v20 .. v20}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v17

    goto :goto_6

    :cond_8
    add-long v17, v8, v12

    :goto_6
    move-wide/from16 v21, v17

    .line 109
    invoke-virtual/range {v20 .. v20}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v17

    goto :goto_5

    .line 113
    :cond_9
    invoke-virtual/range {v20 .. v20}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v21

    sub-long v6, v21, v17

    move-wide/from16 v18, v15

    const-wide/16 v14, 0x5a

    invoke-static {v6, v7, v14, v15}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v6

    add-long v21, v8, v6

    .line 114
    invoke-virtual/range {v20 .. v20}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v6

    move-wide/from16 v27, v21

    :goto_7
    cmp-long v14, v27, v8

    if-lez v14, :cond_b

    if-eqz v11, :cond_a

    .line 118
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    :cond_a
    const/16 v34, 0xf7

    const/16 v35, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    .line 119
    invoke-static/range {v20 .. v35}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->copy$default(Lcom/jichi/ob/GpxToFitConverter$TrackPoint;DDDJIIIDILjava/lang/Object;)Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v15, v18

    move-wide/from16 v8, v27

    goto :goto_8

    :cond_b
    move-wide/from16 v15, v18

    :goto_8
    move-wide/from16 v17, v6

    goto/16 :goto_4

    :cond_c
    move-wide/from16 v18, v15

    .line 124
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    .line 141
    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v3

    .line 145
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    :goto_9
    if-ge v8, v4, :cond_f

    .line 146
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/jichi/ob/merge/TrackMerger$Segment;

    invoke-virtual/range {v20 .. v20}, Lcom/jichi/ob/merge/TrackMerger$Segment;->getAscentM()I

    move-result v1

    .line 147
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/jichi/ob/merge/TrackMerger$Segment;

    const-wide/16 v21, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/jichi/ob/merge/TrackMerger$Segment;->getDescentM()I

    move-result v6

    if-gtz v1, :cond_d

    if-lez v6, :cond_e

    :cond_d
    const/16 v16, 0x1

    :cond_e
    move-wide/from16 v23, v12

    int-to-double v11, v1

    add-double/2addr v9, v11

    int-to-double v6, v6

    add-double/2addr v14, v6

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v12, v23

    goto :goto_9

    :cond_f
    move-wide/from16 v23, v12

    const-wide/16 v21, 0x0

    .line 151
    move-object v1, v2

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v20, v0

    move-wide v7, v14

    move-wide/from16 v27, v18

    move-wide/from16 v29, v27

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    move-wide/from16 v35, v33

    move-wide/from16 v37, v35

    move-wide/from16 v11, v21

    move-wide v13, v11

    move-wide/from16 v25, v13

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_1b

    add-int/lit8 v39, v4, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v6, 0x0

    const/4 v15, 0x0

    :cond_10
    if-eqz v6, :cond_12

    .line 156
    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v41

    cmpl-double v4, v41, v21

    if-lez v4, :cond_11

    invoke-virtual {v6}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v41

    cmpl-double v4, v41, v21

    if-lez v4, :cond_11

    .line 157
    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v41

    invoke-virtual {v6}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v43

    sub-double v41, v41, v43

    const-wide v43, 0x408f400000000000L    # 1000.0

    div-double v41, v41, v43

    cmpl-double v4, v41, v21

    if-lez v4, :cond_12

    const-wide/high16 v43, 0x4014000000000000L    # 5.0

    cmpg-double v4, v41, v43

    if-gez v4, :cond_12

    add-double v13, v13, v41

    goto :goto_b

    .line 160
    :cond_11
    invoke-virtual {v6}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v42

    invoke-virtual {v6}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v44

    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v46

    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v48

    move-object/from16 v41, p0

    invoke-direct/range {v41 .. v49}, Lcom/jichi/ob/merge/TrackMerger;->haversineKm(DDDD)D

    move-result-wide v42

    add-double v13, v13, v42

    :cond_12
    :goto_b
    if-nez v16, :cond_15

    .line 164
    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v41

    cmpl-double v4, v41, v21

    if-lez v4, :cond_15

    if-nez v15, :cond_13

    .line 166
    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v41

    invoke-static/range {v41 .. v42}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 p2, v2

    move-object v15, v4

    move-object v4, v1

    goto :goto_d

    .line 168
    :cond_13
    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v41

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v43

    move-object v4, v1

    move-object/from16 p2, v2

    sub-double v1, v41, v43

    const-wide/high16 v41, 0x4020000000000000L    # 8.0

    cmpl-double v6, v1, v41

    if-ltz v6, :cond_14

    add-double/2addr v11, v1

    .line 170
    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_c
    move-object v15, v1

    goto :goto_d

    :cond_14
    const-wide/high16 v41, -0x3fe0000000000000L    # -8.0

    cmpg-double v6, v1, v41

    if-gtz v6, :cond_16

    neg-double v1, v1

    add-double v25, v25, v1

    .line 171
    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_c

    :cond_15
    move-object v4, v1

    move-object/from16 p2, v2

    .line 175
    :cond_16
    :goto_d
    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v1

    if-lez v1, :cond_17

    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v1

    int-to-long v1, v1

    add-long v27, v27, v1

    add-long v29, v29, v23

    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v1

    if-le v1, v0, :cond_17

    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v0

    .line 176
    :cond_17
    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v1

    if-lez v1, :cond_18

    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v1

    int-to-long v1, v1

    add-long v31, v31, v1

    add-long v33, v33, v23

    .line 177
    :cond_18
    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v1

    if-lez v1, :cond_19

    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v1

    int-to-long v1, v1

    add-long v35, v35, v1

    add-long v37, v37, v23

    .line 179
    :cond_19
    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v1

    cmpl-double v1, v1, v21

    if-lez v1, :cond_1a

    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    :cond_1a
    move-object/from16 v2, p2

    move-object v1, v4

    move/from16 v4, v39

    move-object/from16 v6, v40

    goto/16 :goto_a

    :cond_1b
    move-object/from16 p2, v2

    if-eqz v16, :cond_1c

    move-wide v15, v9

    move-wide/from16 v2, v18

    move-wide/from16 v17, v7

    goto :goto_e

    :cond_1c
    move-wide v15, v11

    move-wide/from16 v2, v18

    move-wide/from16 v17, v25

    :goto_e
    const/4 v1, 0x0

    .line 182
    move-object/from16 v4, p2

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v6}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_1d

    goto :goto_f

    :cond_1d
    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_10

    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v8, 0x3e8

    int-to-long v8, v8

    div-long/2addr v6, v8

    :goto_10
    move-wide v7, v6

    .line 183
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v6}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v2

    if-lez v9, :cond_1f

    goto :goto_11

    :cond_1f
    const/4 v6, 0x0

    :goto_11
    if-eqz v6, :cond_20

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_12

    :cond_20
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-long v9, v6

    add-long/2addr v9, v7

    :goto_12
    sub-long v11, v9, v7

    move-wide/from16 v21, v2

    move-wide/from16 v1, v23

    .line 184
    invoke-static {v11, v12, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v11

    .line 186
    new-instance v3, Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    move-object/from16 v1, p0

    .line 189
    invoke-virtual {v1, v5}, Lcom/jichi/ob/merge/TrackMerger;->sportName(I)Ljava/lang/String;

    move-result-object v6

    cmp-long v2, v29, v21

    if-lez v2, :cond_21

    move v2, v0

    .line 196
    div-long v0, v27, v29

    long-to-int v0, v0

    move/from16 v19, v0

    goto :goto_13

    :cond_21
    move v2, v0

    const/16 v19, 0x0

    :goto_13
    cmp-long v0, v33, v21

    if-lez v0, :cond_22

    .line 198
    div-long v0, v31, v33

    long-to-int v0, v0

    goto :goto_14

    :cond_22
    const/4 v0, 0x0

    :goto_14
    cmp-long v1, v37, v21

    move/from16 v21, v0

    if-lez v1, :cond_23

    .line 199
    div-long v0, v35, v37

    long-to-int v0, v0

    move/from16 v22, v0

    goto :goto_15

    :cond_23
    const/16 v22, 0x0

    .line 200
    :goto_15
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    .line 201
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v20, v2

    .line 186
    invoke-direct/range {v3 .. v24}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;-><init>(Ljava/util/List;ILjava/lang/String;JJJDDDIIIIII)V

    return-object v3

    .line 124
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u5408\u5e76\u540e\u65e0\u6709\u6548\u8f68\u8ff9\u70b9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final trimNum(D)Ljava/lang/String;
    .locals 2

    .line 264
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.7f"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final buildGpx(Lcom/jichi/ob/merge/TrackMerger$MergedResult;Ljava/lang/String;)[B
    .locals 8

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<gpx version=\"1.1\" creator=\"\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB\" xmlns=\"http://www.topografix.com/GPX/1/1\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd\">\n<trk>\n<name>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, p2}, Lcom/jichi/ob/merge/TrackMerger;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "</name>\n<type>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getSport()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/jichi/ob/merge/TrackMerger;->sportName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "</type>\n<trkseg>\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 218
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 219
    invoke-virtual {p1}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 220
    const-string v2, "<trkpt lat=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/jichi/ob/merge/TrackMerger;->trimNum(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" lon=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/jichi/ob/merge/TrackMerger;->trimNum(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const-string v2, "<ele>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/jichi/ob/merge/TrackMerger;->trimNum(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</ele>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "<time>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v4

    const/16 v6, 0x3e8

    int-to-long v6, v6

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</time>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_1
    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v2

    if-gtz v2, :cond_2

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v2

    if-gtz v2, :cond_2

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v2

    if-lez v2, :cond_6

    .line 224
    :cond_2
    const-string v2, "<extensions><gpxtpx:TrackPointExtension>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "<gpxtpx:hr>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</gpxtpx:hr>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_3
    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "<gpxtpx:cad>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</gpxtpx:cad>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_4
    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, "<gpxtpx:power>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</gpxtpx:power>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_5
    const-string v1, "</gpxtpx:TrackPointExtension></extensions>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_6
    const-string v1, "</trkpt>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 232
    :cond_7
    const-string p1, "</trkseg>\n</trk>\n</gpx>\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "getBytes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final detectSportFromName(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/jichi/ob/merge/TrackMerger;->detectSport(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final mergeGpxFiles(Ljava/util/List;I)Lcom/jichi/ob/merge/TrackMerger$MergedResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "[B>;>;I)",
            "Lcom/jichi/ob/merge/TrackMerger$MergedResult;"
        }
    .end annotation

    const-string v0, "files"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    check-cast p1, Ljava/lang/Iterable;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 278
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 277
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x0

    .line 63
    :try_start_0
    sget-object v3, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v3, v1}, Lcom/jichi/ob/GpxToFitConverter;->parseGpxBytes([B)Ljava/util/List;

    move-result-object v6

    .line 64
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/jichi/ob/merge/TrackMerger$Segment;

    sget-object v1, Lcom/jichi/ob/merge/TrackMerger;->INSTANCE:Lcom/jichi/ob/merge/TrackMerger;

    invoke-direct {v1, v4}, Lcom/jichi/ob/merge/TrackMerger;->detectSport(Ljava/lang/String;)I

    move-result v5

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/jichi/ob/merge/TrackMerger$Segment;-><init>(Ljava/lang/String;ILjava/util/List;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :catch_0
    :goto_1
    if-eqz v2, :cond_0

    .line 277
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 67
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 68
    invoke-direct {p0, v0, p2}, Lcom/jichi/ob/merge/TrackMerger;->mergeSegments(Ljava/util/List;I)Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    move-result-object p1

    return-object p1

    .line 67
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "\u6240\u6709\u8f68\u8ff9\u5747\u89e3\u6790\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mergePointGroups(Ljava/util/List;ILjava/util/List;Ljava/util/List;)Lcom/jichi/ob/merge/TrackMerger$MergedResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;>;I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/jichi/ob/merge/TrackMerger$MergedResult;"
        }
    .end annotation

    const-string v0, "groups"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ascents"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descents"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    check-cast p1, Ljava/lang/Iterable;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 284
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 284
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_0

    .line 285
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v8, v3

    check-cast v8, Ljava/util/List;

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "segment"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_1

    sget-object v3, Lcom/jichi/ob/merge/TrackMerger;->INSTANCE:Lcom/jichi/ob/merge/TrackMerger;

    const-string v5, ""

    invoke-direct {v3, v5}, Lcom/jichi/ob/merge/TrackMerger;->detectSport(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    move v7, v3

    if-ltz v1, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-ltz v1, :cond_3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v10

    new-instance v5, Lcom/jichi/ob/merge/TrackMerger$Segment;

    invoke-direct/range {v5 .. v10}, Lcom/jichi/ob/merge/TrackMerger$Segment;-><init>(Ljava/lang/String;ILjava/util/List;II)V

    .line 285
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    .line 287
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 282
    check-cast v0, Ljava/lang/Iterable;

    .line 288
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 289
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/jichi/ob/merge/TrackMerger$Segment;

    .line 75
    invoke-virtual {v0}, Lcom/jichi/ob/merge/TrackMerger$Segment;->getPoints()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 289
    invoke-interface {p1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 290
    :cond_6
    check-cast p1, Ljava/util/List;

    .line 76
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_7

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/merge/TrackMerger;->mergeSegments(Ljava/util/List;I)Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    move-result-object p1

    return-object p1

    .line 76
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "\u65e0\u53ef\u5408\u5e76\u7684\u8f68\u8ff9"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sportName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    .line 239
    const-string p1, "cycling"

    return-object p1

    .line 238
    :cond_0
    const-string p1, "hiking"

    return-object p1

    .line 237
    :cond_1
    const-string p1, "running"

    return-object p1
.end method

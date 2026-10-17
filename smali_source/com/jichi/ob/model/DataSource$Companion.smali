.class public final Lcom/jichi/ob/model/DataSource$Companion;
.super Ljava/lang/Object;
.source "Activity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/model/DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Activity.kt\ncom/jichi/ob/model/DataSource$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n1#2:151\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006J\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/jichi/ob/model/DataSource$Companion;",
        "",
        "<init>",
        "()V",
        "sourcePlatforms",
        "",
        "Lcom/jichi/ob/model/DataSource;",
        "targetPlatforms",
        "labPlatforms",
        "isLabPlatform",
        "",
        "ds",
        "labLoginPlatforms",
        "fromShortName",
        "s",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/jichi/ob/model/DataSource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;
    .locals 3

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/jichi/ob/model/DataSource;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v2}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/jichi/ob/model/DataSource;

    return-object v1
.end method

.method public final isLabPlatform(Lcom/jichi/ob/model/DataSource;)Z
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/jichi/ob/model/DataSource$Companion;->labPlatforms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final labLoginPlatforms()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/DataSource;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 73
    new-array v0, v0, [Lcom/jichi/ob/model/DataSource;

    const/4 v1, 0x0

    sget-object v2, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/jichi/ob/model/DataSource;->ZEPP:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/jichi/ob/model/DataSource;->TWO_BULU:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/jichi/ob/model/DataSource;->STRAVA:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/jichi/ob/model/DataSource;->POLAR:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/jichi/ob/model/DataSource;->FITBIT:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jichi/ob/model/DataSource;->WITHINGS:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jichi/ob/model/DataSource;->TRAININGPEAKS:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final labPlatforms()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/DataSource;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 70
    new-array v0, v0, [Lcom/jichi/ob/model/DataSource;

    const/4 v1, 0x0

    sget-object v2, Lcom/jichi/ob/model/DataSource;->ZEPP:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/jichi/ob/model/DataSource;->TWO_BULU:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/jichi/ob/model/DataSource;->STRAVA:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/jichi/ob/model/DataSource;->POLAR:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/jichi/ob/model/DataSource;->FITBIT:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jichi/ob/model/DataSource;->WITHINGS:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jichi/ob/model/DataSource;->TRAININGPEAKS:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final sourcePlatforms()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/DataSource;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1b

    .line 65
    new-array v0, v0, [Lcom/jichi/ob/model/DataSource;

    const/4 v1, 0x0

    sget-object v2, Lcom/jichi/ob/model/DataSource;->INTERVALS_ICU:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/jichi/ob/model/DataSource;->LOCAL_FOLDER:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/jichi/ob/model/DataSource;->IGPSPORT_INT:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/jichi/ob/model/DataSource;->XINGZHE:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/jichi/ob/model/DataSource;->MAGENE:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jichi/ob/model/DataSource;->BLACKBIRD:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jichi/ob/model/DataSource;->BRYTON:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jichi/ob/model/DataSource;->COROS_CN:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jichi/ob/model/DataSource;->COROS_INT:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/jichi/ob/model/DataSource;->WAHOO:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/jichi/ob/model/DataSource;->MYWHOOSH:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/jichi/ob/model/DataSource;->ZWIFT:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/jichi/ob/model/DataSource;->KEEP:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/jichi/ob/model/DataSource;->CODOON:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/jichi/ob/model/DataSource;->ZEPP:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/jichi/ob/model/DataSource;->KOMOT:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/jichi/ob/model/DataSource;->TWO_BULU:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/jichi/ob/model/DataSource;->STRAVA:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/jichi/ob/model/DataSource;->POLAR:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/jichi/ob/model/DataSource;->FITBIT:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/jichi/ob/model/DataSource;->WITHINGS:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/jichi/ob/model/DataSource;->TRAININGPEAKS:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/jichi/ob/model/DataSource;->CYCITY:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final targetPlatforms()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/DataSource;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x12

    .line 68
    new-array v0, v0, [Lcom/jichi/ob/model/DataSource;

    const/4 v1, 0x0

    sget-object v2, Lcom/jichi/ob/model/DataSource;->LOCAL_FOLDER:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/jichi/ob/model/DataSource;->OUTBASE:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/jichi/ob/model/DataSource;->IGPSPORT_INT:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/jichi/ob/model/DataSource;->XINGZHE:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/jichi/ob/model/DataSource;->MAGENE:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jichi/ob/model/DataSource;->BLACKBIRD:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jichi/ob/model/DataSource;->COROS_CN:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jichi/ob/model/DataSource;->COROS_INT:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jichi/ob/model/DataSource;->WAHOO:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/jichi/ob/model/DataSource;->KOMOT:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/jichi/ob/model/DataSource;->INTERVALS_ICU:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/jichi/ob/model/DataSource;->CYCITY:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/jichi/ob/model/DataSource;->GIANT:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/jichi/ob/model/DataSource;->STRAVA:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/jichi/ob/model/DataSource;->TRAININGPEAKS:Lcom/jichi/ob/model/DataSource;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

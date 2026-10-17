.class public final Lcom/jichi/ob/util/FileNameGenerator;
.super Ljava/lang/Object;
.source "FileNameGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileNameGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileNameGenerator.kt\ncom/jichi/ob/util/FileNameGenerator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1#2:131\n774#3:132\n865#3,2:133\n*S KotlinDebug\n*F\n+ 1 FileNameGenerator.kt\ncom/jichi/ob/util/FileNameGenerator\n*L\n126#1:132\n126#1:133,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0007H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/jichi/ob/util/FileNameGenerator;",
        "",
        "<init>",
        "()V",
        "TARGET_NAMES",
        "",
        "Lcom/jichi/ob/model/DataSource;",
        "",
        "SPORT_KEYWORDS",
        "",
        "illegalChars",
        "Lkotlin/text/Regex;",
        "generate",
        "target",
        "record",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "ext",
        "clean",
        "s",
        "formatTime",
        "startTime",
        "extractSportType",
        "title",
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
.field public static final INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

.field private static final SPORT_KEYWORDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TARGET_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final illegalChars:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/jichi/ob/util/FileNameGenerator;

    invoke-direct {v0}, Lcom/jichi/ob/util/FileNameGenerator;-><init>()V

    sput-object v0, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    const/16 v0, 0x9

    .line 19
    new-array v1, v0, [Lkotlin/Pair;

    sget-object v2, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    const-string v3, "iGPSPORT"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 20
    sget-object v2, Lcom/jichi/ob/model/DataSource;->XINGZHE:Lcom/jichi/ob/model/DataSource;

    const-string v4, "XingZhe"

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 21
    sget-object v2, Lcom/jichi/ob/model/DataSource;->MAGENE:Lcom/jichi/ob/model/DataSource;

    const-string v5, "Magene"

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 22
    sget-object v2, Lcom/jichi/ob/model/DataSource;->BLACKBIRD:Lcom/jichi/ob/model/DataSource;

    const-string v6, "Blackbird"

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 23
    sget-object v2, Lcom/jichi/ob/model/DataSource;->BRYTON:Lcom/jichi/ob/model/DataSource;

    const-string v7, "Bryton"

    invoke-static {v2, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 24
    sget-object v2, Lcom/jichi/ob/model/DataSource;->GIANT:Lcom/jichi/ob/model/DataSource;

    const-string v8, "Giant"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 25
    sget-object v2, Lcom/jichi/ob/model/DataSource;->OUTBASE:Lcom/jichi/ob/model/DataSource;

    const-string v9, "Outbase"

    invoke-static {v2, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 26
    sget-object v2, Lcom/jichi/ob/model/DataSource;->MYWHOOSH:Lcom/jichi/ob/model/DataSource;

    const-string v10, "MyWhoosh"

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    .line 27
    sget-object v2, Lcom/jichi/ob/model/DataSource;->ZWIFT:Lcom/jichi/ob/model/DataSource;

    const-string v11, "Zwift"

    invoke-static {v2, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v11, 0x8

    aput-object v2, v1, v11

    .line 18
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/jichi/ob/util/FileNameGenerator;->TARGET_NAMES:Ljava/util/Map;

    const/16 v1, 0x15

    .line 32
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "\u5ba4\u5185\u9a91\u884c"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u6237\u5916\u9a91\u884c"

    aput-object v2, v1, v4

    const-string/jumbo v2, "\u516c\u8def\u9a91\u884c"

    aput-object v2, v1, v5

    const-string/jumbo v2, "\u5c71\u5730\u9a91\u884c"

    aput-object v2, v1, v6

    const-string/jumbo v2, "\u5ba4\u5185\u8dd1\u6b65"

    aput-object v2, v1, v7

    const-string/jumbo v2, "\u6237\u5916\u8dd1\u6b65"

    aput-object v2, v1, v8

    .line 33
    const-string/jumbo v2, "\u9a91\u884c"

    aput-object v2, v1, v9

    const-string/jumbo v2, "\u8dd1\u6b65"

    aput-object v2, v1, v10

    const-string/jumbo v2, "\u6e38\u6cf3"

    aput-object v2, v1, v11

    const-string/jumbo v2, "\u5f92\u6b65"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string/jumbo v2, "\u767b\u5c71"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string/jumbo v2, "\u6ed1\u96ea"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string/jumbo v2, "\u6ed1\u51b0"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string/jumbo v2, "\u5065\u8eab"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string/jumbo v2, "\u745c\u4f3d"

    aput-object v2, v1, v0

    const/16 v0, 0xf

    .line 34
    const-string/jumbo v2, "\u5212\u8239\u673a"

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-string/jumbo v2, "\u692d\u5706\u673a"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string/jumbo v2, "\u52a8\u611f\u5355\u8f66"

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-string/jumbo v2, "\u94c1\u4eba\u4e09\u9879"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string/jumbo v2, "\u7ade\u8d70"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string/jumbo v2, "\u8d8a\u91ce\u8dd1"

    aput-object v2, v1, v0

    .line 31
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/util/FileNameGenerator;->SPORT_KEYWORDS:Ljava/util/List;

    .line 37
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[\\\\/:*?\"<>|\\s]+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/util/FileNameGenerator;->illegalChars:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 52
    sget-object v0, Lcom/jichi/ob/util/FileNameGenerator;->illegalChars:Lkotlin/text/Regex;

    check-cast p1, Ljava/lang/CharSequence;

    const-string v1, "_"

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x5f

    const/4 v2, 0x0

    aput-char v1, v0, v2

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "unknown"

    :cond_0
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private final extractSportType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 121
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "\u8fd0\u52a8"

    if-eqz v0, :cond_0

    return-object v1

    .line 122
    :cond_0
    sget-object v0, Lcom/jichi/ob/util/FileNameGenerator;->SPORT_KEYWORDS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p1, v4, v3, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 126
    :cond_2
    new-instance v0, Lkotlin/text/Regex;

    const-string v2, "[\\s,\uff0c\u3001]+"

    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 133
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 126
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 133
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 127
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    return-object p1

    :cond_6
    :goto_1
    return-object v1
.end method

.method private final formatTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    .line 56
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "unknown"

    if-eqz v1, :cond_0

    return-object v2

    .line 57
    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "/Date("

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    const-string v7, "-"

    const-string v8, "+"

    const/16 v9, 0x3e8

    const-string v12, "format(...)"

    const-string/jumbo v13, "yyyy-MM-dd_HHmmss"

    if-eqz v6, :cond_2

    const-string v6, ")/"

    invoke-static {v0, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 61
    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v1, v6}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8, v5, v4, v5}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7, v5, v4, v5}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 63
    new-instance v1, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v16, 0x426d1a94a2000000L    # 1.0E12

    long-to-double v10, v14

    cmpl-double v6, v10, v16

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v10, v9

    mul-long/2addr v14, v10

    :goto_0
    :try_start_1
    invoke-direct {v1, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 64
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v13, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_0
    :cond_2
    const-wide v16, 0x426d1a94a2000000L    # 1.0E12

    :catch_1
    const/16 v1, 0xf

    .line 69
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    aput-object v6, v1, v3

    const/4 v6, 0x1

    .line 70
    const-string/jumbo v10, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    aput-object v10, v1, v6

    .line 71
    const-string/jumbo v6, "yyyy-MM-dd\'T\'HH:mm:ss"

    aput-object v6, v1, v4

    const/4 v6, 0x3

    .line 72
    const-string/jumbo v10, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v10, v1, v6

    const/4 v6, 0x4

    .line 73
    const-string/jumbo v10, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    aput-object v10, v1, v6

    const/4 v6, 0x5

    .line 74
    const-string/jumbo v10, "yyyy-MM-dd\'T\'HH:mm:ssXXX"

    aput-object v10, v1, v6

    const/4 v6, 0x6

    .line 75
    const-string/jumbo v11, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    aput-object v11, v1, v6

    const/4 v6, 0x7

    .line 76
    aput-object v10, v1, v6

    const/16 v6, 0x8

    .line 77
    const-string/jumbo v11, "yyyy/MM/dd HH:mm:ss"

    aput-object v11, v1, v6

    const/16 v6, 0x9

    .line 78
    const-string/jumbo v11, "yyyy-MM-dd HH:mm"

    aput-object v11, v1, v6

    const/16 v6, 0xa

    .line 79
    const-string/jumbo v11, "yyyy-MM-dd"

    aput-object v11, v1, v6

    const/16 v6, 0xb

    .line 80
    const-string/jumbo v11, "yyyyMMdd HH:mm:ss"

    aput-object v11, v1, v6

    const/16 v6, 0xc

    .line 81
    const-string/jumbo v11, "yyyyMMdd\'T\'HH:mm:ss"

    aput-object v11, v1, v6

    const/16 v6, 0xd

    .line 82
    const-string v11, "MMM dd, yyyy HH:mm:ss"

    aput-object v11, v1, v6

    const/16 v6, 0xe

    .line 83
    const-string v11, "EEE MMM dd HH:mm:ss zzz yyyy"

    aput-object v11, v1, v6

    .line 68
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_2
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 87
    :try_start_2
    new-instance v11, Ljava/text/SimpleDateFormat;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v11, v6, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 88
    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 90
    new-instance v11, Ljava/text/SimpleDateFormat;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v11, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 91
    invoke-virtual {v11, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v6

    .line 96
    :cond_4
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v1, v8, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v1, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 98
    :cond_5
    :try_start_3
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "([+-]\\d{2})(\\d{2})$"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v4, "$1:$2"

    invoke-virtual {v3, v1, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v10, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 100
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 102
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v13, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object v1

    .line 107
    :catch_3
    :cond_6
    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 108
    new-instance v2, Ljava/util/Date;

    long-to-double v3, v0

    cmpl-double v3, v3, v16

    if-lez v3, :cond_7

    goto :goto_1

    :cond_7
    int-to-long v3, v9

    mul-long/2addr v0, v3

    :goto_1
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 109
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v13, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 112
    :cond_8
    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    cmpl-double v2, v0, v16

    if-lez v2, :cond_9

    goto :goto_2

    :cond_9
    int-to-double v2, v9

    mul-double/2addr v0, v2

    :goto_2
    double-to-long v0, v0

    .line 114
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v13, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_a
    return-object v2
.end method


# virtual methods
.method public final generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "record"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ext"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object p1, Lcom/jichi/ob/util/FileNameGenerator;->TARGET_NAMES:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/jichi/ob/model/ActivityRecord;->getSource()Lcom/jichi/ob/model/DataSource;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/jichi/ob/model/ActivityRecord;->getSource()Lcom/jichi/ob/model/DataSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    .line 43
    :cond_0
    invoke-virtual {p2}, Lcom/jichi/ob/model/ActivityRecord;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jichi/ob/util/FileNameGenerator;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p2}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jichi/ob/util/FileNameGenerator;->extractSportType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p2}, Lcom/jichi/ob/model/ActivityRecord;->getSource()Lcom/jichi/ob/model/DataSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0xc

    invoke-static {p2, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    .line 46
    new-array v2, v2, [C

    const/16 v3, 0x2e

    const/4 v4, 0x0

    aput-char v3, v2, v4

    invoke-static {p3, v2}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p3

    .line 47
    invoke-direct {p0, p1}, Lcom/jichi/ob/util/FileNameGenerator;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/jichi/ob/util/FileNameGenerator;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/jichi/ob/util/FileNameGenerator;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

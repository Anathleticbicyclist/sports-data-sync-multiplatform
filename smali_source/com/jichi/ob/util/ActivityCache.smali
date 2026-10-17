.class public final Lcom/jichi/ob/util/ActivityCache;
.super Ljava/lang/Object;
.source "ActivityCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/util/ActivityCache$Companion;,
        Lcom/jichi/ob/util/ActivityCache$Entry;,
        Lcom/jichi/ob/util/ActivityCache$PlatformLog;,
        Lcom/jichi/ob/util/ActivityCache$PlatformStat;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityCache.kt\ncom/jichi/ob/util/ActivityCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,434:1\n1#2:435\n37#3:436\n36#3,3:437\n*S KotlinDebug\n*F\n+ 1 ActivityCache.kt\ncom/jichi/ob/util/ActivityCache\n*L\n337#1:436\n337#1:437,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 ?2\u00020\u0001:\u0004>?@AB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J6\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u000bJ\u001e\u0010\u0014\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000bJ\u001e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\rJ\u001c\u0010\u001b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u0018J\u0016\u0010\u001e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u001dJ$\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00182\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011J\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00182\u0006\u0010\n\u001a\u00020\u000bJ\u001c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00182\u0006\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011J\u000e\u0010%\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010&\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000bJ\"\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u000b0(2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000b0*J&\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00182\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001a\u001a\u00020\rJ\u001e\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00182\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\rJ\u000e\u0010.\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010/\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u00100\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u000bJ\u001e\u00102\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u000b2\u0006\u00103\u001a\u00020\u000bJ\u001e\u00104\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u0011J\u0010\u00106\u001a\u00020\u00112\u0008\u00107\u001a\u0004\u0018\u00010\u000bJ\u0010\u00108\u001a\u00020\u00112\u0008\u00107\u001a\u0004\u0018\u00010\u000bJ\u0018\u00109\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010:\u001a\u00020\rJ\u0010\u0010;\u001a\u00020\u001d2\u0006\u0010<\u001a\u00020=H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006B"
    }
    d2 = {
        "Lcom/jichi/ob/util/ActivityCache;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "db",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "addPlatformStat",
        "",
        "platform",
        "",
        "okDelta",
        "",
        "skipDelta",
        "failDelta",
        "lastSyncMs",
        "",
        "getPlatformStat",
        "Lcom/jichi/ob/util/ActivityCache$PlatformStat;",
        "addPlatformLog",
        "type",
        "msg",
        "getPlatformLogs",
        "",
        "Lcom/jichi/ob/util/ActivityCache$PlatformLog;",
        "limit",
        "upsertBatch",
        "entries",
        "Lcom/jichi/ob/util/ActivityCache$Entry;",
        "upsert",
        "entry",
        "queryByDateRange",
        "startMs",
        "endMs",
        "queryByPlatform",
        "queryAllByDateRange",
        "getLastSyncTime",
        "getLastStartTimeMs",
        "existsIds",
        "",
        "ids",
        "",
        "queryNewSince",
        "sinceMs",
        "queryBadTime",
        "count",
        "clearPlatform",
        "deleteEntry",
        "id",
        "setFilename",
        "filename",
        "setStartTime",
        "startTimeMs",
        "parseStartTimeMs",
        "s",
        "parseIsoMs",
        "prune",
        "keepDays",
        "readEntry",
        "c",
        "Landroid/database/Cursor;",
        "Entry",
        "Companion",
        "PlatformStat",
        "PlatformLog",
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
.field public static final Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

.field public static final DB_NAME:Ljava/lang/String; = "activity_cache.db"

.field public static final MAX_PLOGS_PER_PLATFORM:I = 0xc8

.field public static final MAX_ROWS_PER_PLATFORM:I = 0xf4240

.field public static final TABLE:Ljava/lang/String; = "activity_cache"

.field public static final TABLE_PLOGS:Ljava/lang/String; = "platform_logs"

.field public static final TABLE_STATS:Ljava/lang/String; = "sync_stats"

.field private static volatile instance:Lcom/jichi/ob/util/ActivityCache;


# instance fields
.field private final db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public static synthetic $r8$lambda$OWrnAuR2NL_PIQzOJgX4lthSfkY(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/util/ActivityCache;->existsIds$lambda$8(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/util/ActivityCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/util/ActivityCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    const-string v2, "activity_cache.db"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "openOrCreateDatabase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 104
    const-string v0, "CREATE TABLE IF NOT EXISTS activity_cache (\n                    id TEXT NOT NULL,\n                    platform TEXT NOT NULL,\n                    start_time INTEGER NOT NULL,\n                    type TEXT DEFAULT \'\',\n                    title TEXT DEFAULT \'\',\n                    distance_km REAL DEFAULT 0,\n                    duration_sec INTEGER DEFAULT 0,\n                    filename TEXT DEFAULT \'\',\n                    extra TEXT DEFAULT \'\',\n                    PRIMARY KEY (platform, id)\n                )"

    .line 103
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    :try_start_0
    const-string v0, "ALTER TABLE activity_cache ADD COLUMN extra TEXT DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CREATE INDEX IF NOT EXISTS idx_platform_time ON activity_cache (platform, start_time)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :catch_1
    iget-object p1, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 127
    const-string v0, "CREATE TABLE IF NOT EXISTS sync_stats (\n                    platform TEXT PRIMARY KEY,\n                    ok INTEGER DEFAULT 0,\n                    skip INTEGER DEFAULT 0,\n                    fail INTEGER DEFAULT 0,\n                    last_sync INTEGER DEFAULT 0\n                )"

    .line 126
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 137
    const-string v0, "CREATE TABLE IF NOT EXISTS platform_logs (\n                    id INTEGER PRIMARY KEY AUTOINCREMENT,\n                    platform TEXT NOT NULL,\n                    time INTEGER NOT NULL,\n                    type TEXT DEFAULT \'\',\n                    msg TEXT DEFAULT \'\'\n                )"

    .line 136
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    :try_start_2
    iget-object p1, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CREATE INDEX IF NOT EXISTS idx_plogs_platform ON platform_logs (platform, id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jichi/ob/util/ActivityCache;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/jichi/ob/util/ActivityCache;
    .locals 1

    .line 18
    sget-object v0, Lcom/jichi/ob/util/ActivityCache;->instance:Lcom/jichi/ob/util/ActivityCache;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/jichi/ob/util/ActivityCache;)V
    .locals 0

    .line 18
    sput-object p0, Lcom/jichi/ob/util/ActivityCache;->instance:Lcom/jichi/ob/util/ActivityCache;

    return-void
.end method

.method public static synthetic addPlatformStat$default(Lcom/jichi/ob/util/ActivityCache;Ljava/lang/String;IIIJILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    move p4, v0

    :cond_2
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_3

    const-wide/16 p5, 0x0

    .line 155
    :cond_3
    invoke-virtual/range {p0 .. p6}, Lcom/jichi/ob/util/ActivityCache;->addPlatformStat(Ljava/lang/String;IIIJ)V

    return-void
.end method

.method private static final existsIds$lambda$8(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    const-string p0, "?"

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic getPlatformLogs$default(Lcom/jichi/ob/util/ActivityCache;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0xa

    .line 210
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/ActivityCache;->getPlatformLogs(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic prune$default(Lcom/jichi/ob/util/ActivityCache;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x16d

    .line 417
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/ActivityCache;->prune(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic queryBadTime$default(Lcom/jichi/ob/util/ActivityCache;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x64

    .line 361
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/ActivityCache;->queryBadTime(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryNewSince$default(Lcom/jichi/ob/util/ActivityCache;Ljava/lang/String;JIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/16 p4, 0x1f4

    .line 346
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jichi/ob/util/ActivityCache;->queryNewSince(Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final readEntry(Landroid/database/Cursor;)Lcom/jichi/ob/util/ActivityCache$Entry;
    .locals 14

    .line 422
    new-instance v0, Lcom/jichi/ob/util/ActivityCache$Entry;

    const/4 v1, 0x0

    .line 423
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 424
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 425
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x3

    .line 426
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    .line 427
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x5

    .line 428
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const/4 v10, 0x6

    .line 429
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x7

    .line 430
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const-string v12, ""

    const/16 v13, 0x8

    if-le v2, v13, :cond_1

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    move-wide v3, v4

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v8

    move v9, v10

    move-object v10, v11

    move-object v11, p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v3

    move-wide v3, v4

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v8

    move v9, v10

    move-object v10, v11

    move-object v11, v12

    .line 422
    :goto_1
    invoke-direct/range {v0 .. v11}, Lcom/jichi/ob/util/ActivityCache$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final addPlatformLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x4

    .line 193
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    aput-object p2, v1, v3

    const/4 p2, 0x3

    aput-object p3, v1, p2

    .line 191
    const-string p3, "INSERT INTO platform_logs (platform, time, type, msg) VALUES (?, ?, ?, ?)"

    invoke-virtual {v0, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :try_start_0
    iget-object p3, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 197
    const-string v0, "SELECT COUNT(*) FROM platform_logs WHERE platform = ?"

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v2

    .line 196
    invoke-virtual {p3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    check-cast p3, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :try_start_1
    move-object v0, p3

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/16 p3, 0xc8

    if-le v0, p3, :cond_1

    .line 200
    iget-object p3, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 201
    const-string v0, "platform_logs"

    .line 202
    const-string v1, "platform = ? AND id NOT IN (SELECT id FROM platform_logs WHERE platform = ? ORDER BY id DESC LIMIT ?)"

    .line 203
    new-array p2, p2, [Ljava/lang/String;

    aput-object p1, p2, v2

    aput-object p1, p2, v4

    const-string p1, "200"

    aput-object p1, p2, v3

    .line 200
    invoke-virtual {p3, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 198
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {p3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final addPlatformStat(Ljava/lang/String;IIIJ)V
    .locals 4

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 160
    const-string v1, "INSERT INTO sync_stats (platform, ok, skip, fail, last_sync)\n                       VALUES (?, ?, ?, ?, ?)\n                       ON CONFLICT(platform) DO UPDATE SET\n                         ok = ok + ?, skip = skip + ?, fail = fail + ?,\n                         last_sync = CASE WHEN ? > 0 THEN ? ELSE last_sync END"

    const/16 v2, 0xa

    .line 166
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v2, v3

    .line 167
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v2, p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v2, p2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v2, p2

    .line 168
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    aput-object p1, v2, p2

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    aput-object p1, v2, p2

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object p1, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object p1, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public final clearPlatform(Ljava/lang/String;)V
    .locals 3

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "activity_cache"

    const-string v2, "platform = ?"

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final count(Ljava/lang/String;)I
    .locals 3

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "SELECT COUNT(*) FROM activity_cache WHERE platform = ?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    .line 378
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v2

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final deleteEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "activity_cache"

    const-string p2, "platform = ? AND id = ?"

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final existsIds(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 331
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 332
    check-cast p2, Ljava/lang/Iterable;

    const/16 v1, 0x1f4

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->chunked(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2

    .line 333
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 334
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v3, ","

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v8, Lcom/jichi/ob/util/ActivityCache$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/jichi/ob/util/ActivityCache$$ExternalSyntheticLambda0;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 335
    iget-object v3, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT id FROM activity_cache WHERE platform = ? AND id IN ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 337
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    check-cast v1, Ljava/util/Collection;

    .line 439
    new-array v6, v5, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 337
    invoke-static {v4, v1}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 335
    invoke-virtual {v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .line 338
    :try_start_0
    move-object v2, v1

    check-cast v2, Landroid/database/Cursor;

    .line 339
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    :cond_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 338
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 342
    :cond_2
    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getLastStartTimeMs(Ljava/lang/String;)J
    .locals 3

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    .line 322
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 321
    const-string p1, "SELECT MAX(start_time) FROM activity_cache WHERE platform = ? AND start_time > 0"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 323
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    .line 324
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getLastSyncTime(Ljava/lang/String;)J
    .locals 3

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    .line 313
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 312
    const-string p1, "SELECT MAX(start_time) FROM activity_cache WHERE platform = ?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 314
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    .line 315
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getPlatformLogs(Ljava/lang/String;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/ActivityCache$PlatformLog;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "getString(...)"

    const-string v2, "platform"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p0

    .line 212
    iget-object v4, v3, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x3

    .line 214
    new-array v6, v5, [Ljava/lang/String;

    const-string/jumbo v5, "time"

    const/4 v13, 0x0

    aput-object v5, v6, v13

    const-string/jumbo v5, "type"

    const/4 v14, 0x1

    aput-object v5, v6, v14

    const-string v5, "msg"

    const/4 v15, 0x2

    aput-object v5, v6, v15

    .line 215
    new-array v8, v14, [Ljava/lang/String;

    aput-object v0, v8, v13

    const/16 v0, 0xc8

    move/from16 v5, p2

    .line 216
    invoke-static {v5, v14, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 212
    const-string v5, "platform_logs"

    const-string v7, "platform = ?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "id DESC"

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    .line 217
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/database/Cursor;

    .line 218
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/jichi/ob/util/ActivityCache$PlatformLog;

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/jichi/ob/util/ActivityCache$PlatformLog;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 217
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 220
    check-cast v2, Ljava/util/List;

    return-object v2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 217
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getPlatformStat(Ljava/lang/String;)Lcom/jichi/ob/util/ActivityCache$PlatformStat;
    .locals 10

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    .line 180
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 179
    const-string p1, "SELECT ok, skip, fail, last_sync FROM sync_stats WHERE platform = ?"

    invoke-virtual {v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 181
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    new-instance v4, Lcom/jichi/ob/util/ActivityCache$PlatformStat;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Lcom/jichi/ob/util/ActivityCache$PlatformStat;-><init>(IIIJ)V

    goto :goto_0

    .line 184
    :cond_0
    new-instance v1, Lcom/jichi/ob/util/ActivityCache$PlatformStat;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/util/ActivityCache$PlatformStat;-><init>(IIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v1

    :goto_0
    const/4 v0, 0x0

    .line 182
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final parseIsoMs(Ljava/lang/String;)J
    .locals 2

    .line 412
    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/ActivityCache;->parseStartTimeMs(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final parseStartTimeMs(Ljava/lang/String;)J
    .locals 2

    .line 409
    sget-object v0, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    invoke-virtual {v0, p1}, Lcom/jichi/ob/util/ActivityCache$Companion;->parseStartTimeMs(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final prune(Ljava/lang/String;I)V
    .locals 6

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0x15180

    mul-int/2addr p2, v2

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 419
    iget-object p2, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "activity_cache"

    const-string v0, "platform = ? AND start_time > 0 AND start_time < ?"

    invoke-virtual {p2, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final queryAllByDateRange(JJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/ActivityCache$Entry;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0x9

    .line 300
    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "id"

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "platform"

    const/4 v5, 0x1

    aput-object v2, v3, v5

    const-string/jumbo v2, "start_time"

    const/4 v6, 0x2

    aput-object v2, v3, v6

    const/4 v2, 0x3

    const-string/jumbo v7, "type"

    aput-object v7, v3, v2

    const/4 v2, 0x4

    const-string/jumbo v7, "title"

    aput-object v7, v3, v2

    const/4 v2, 0x5

    const-string v7, "distance_km"

    aput-object v7, v3, v2

    const/4 v2, 0x6

    const-string v7, "duration_sec"

    aput-object v7, v3, v2

    const/4 v2, 0x7

    const-string v7, "filename"

    aput-object v7, v3, v2

    const/16 v2, 0x8

    const-string v7, "extra"

    aput-object v7, v3, v2

    .line 302
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    const/4 v7, 0x0

    .line 303
    const-string/jumbo v8, "start_time DESC"

    move-object v5, v2

    .line 298
    const-string v2, "activity_cache"

    const-string/jumbo v4, "start_time >= ? AND start_time <= ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 304
    :try_start_0
    move-object p2, p1

    check-cast p2, Landroid/database/Cursor;

    .line 305
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/jichi/ob/util/ActivityCache;->readEntry(Landroid/database/Cursor;)Lcom/jichi/ob/util/ActivityCache$Entry;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 304
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 307
    check-cast v0, Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 304
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p3, v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final queryBadTime(Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/ActivityCache$Entry;",
            ">;"
        }
    .end annotation

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 363
    iget-object v2, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v3, 0x9

    .line 365
    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "id"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string/jumbo v6, "start_time"

    aput-object v6, v4, v0

    const/4 v0, 0x3

    const-string/jumbo v6, "type"

    aput-object v6, v4, v0

    const/4 v0, 0x4

    const-string/jumbo v6, "title"

    aput-object v6, v4, v0

    const/4 v0, 0x5

    const-string v6, "distance_km"

    aput-object v6, v4, v0

    const/4 v0, 0x6

    const-string v6, "duration_sec"

    aput-object v6, v4, v0

    const/4 v0, 0x7

    const-string v6, "filename"

    aput-object v6, v4, v0

    const/16 v0, 0x8

    const-string v6, "extra"

    aput-object v6, v4, v0

    .line 367
    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v5

    .line 368
    const-string v9, "rowid ASC"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 363
    const-string v3, "activity_cache"

    const-string v5, "platform = ? AND start_time <= 0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 369
    :try_start_0
    move-object p2, p1

    check-cast p2, Landroid/database/Cursor;

    .line 370
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/jichi/ob/util/ActivityCache;->readEntry(Landroid/database/Cursor;)Lcom/jichi/ob/util/ActivityCache$Entry;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 369
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 372
    check-cast v1, Ljava/util/List;

    return-object v1

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 369
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final queryByDateRange(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/ActivityCache$Entry;",
            ">;"
        }
    .end annotation

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v2, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v3, 0x9

    .line 272
    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "id"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const-string/jumbo v0, "start_time"

    const/4 v6, 0x2

    aput-object v0, v4, v6

    const-string/jumbo v0, "type"

    const/4 v7, 0x3

    aput-object v0, v4, v7

    const/4 v0, 0x4

    const-string/jumbo v8, "title"

    aput-object v8, v4, v0

    const/4 v0, 0x5

    const-string v8, "distance_km"

    aput-object v8, v4, v0

    const/4 v0, 0x6

    const-string v8, "duration_sec"

    aput-object v8, v4, v0

    const/4 v0, 0x7

    const-string v8, "filename"

    aput-object v8, v4, v0

    const/16 v0, 0x8

    const-string v8, "extra"

    aput-object v8, v4, v0

    .line 274
    new-array v0, v7, [Ljava/lang/String;

    aput-object p1, v0, v5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6

    const/4 v8, 0x0

    .line 275
    const-string/jumbo v9, "start_time DESC"

    .line 270
    const-string v3, "activity_cache"

    const-string v5, "platform = ? AND start_time >= ? AND start_time <= ?"

    const/4 v7, 0x0

    move-object v6, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 276
    :try_start_0
    move-object p2, p1

    check-cast p2, Landroid/database/Cursor;

    .line 277
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/jichi/ob/util/ActivityCache;->readEntry(Landroid/database/Cursor;)Lcom/jichi/ob/util/ActivityCache$Entry;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 276
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 279
    check-cast v1, Ljava/util/List;

    return-object v1

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 276
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p3, v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final queryByPlatform(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/ActivityCache$Entry;",
            ">;"
        }
    .end annotation

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    iget-object v2, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v3, 0x9

    .line 287
    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "id"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string/jumbo v6, "start_time"

    aput-object v6, v4, v0

    const/4 v0, 0x3

    const-string/jumbo v6, "type"

    aput-object v6, v4, v0

    const/4 v0, 0x4

    const-string/jumbo v6, "title"

    aput-object v6, v4, v0

    const/4 v0, 0x5

    const-string v6, "distance_km"

    aput-object v6, v4, v0

    const/4 v0, 0x6

    const-string v6, "duration_sec"

    aput-object v6, v4, v0

    const/4 v0, 0x7

    const-string v6, "filename"

    aput-object v6, v4, v0

    const/16 v0, 0x8

    const-string v6, "extra"

    aput-object v6, v4, v0

    .line 288
    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v5

    const/4 v8, 0x0

    const-string/jumbo v9, "start_time DESC"

    .line 285
    const-string v3, "activity_cache"

    const-string v5, "platform = ?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 289
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    .line 290
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/jichi/ob/util/ActivityCache;->readEntry(Landroid/database/Cursor;)Lcom/jichi/ob/util/ActivityCache$Entry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 289
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 292
    check-cast v1, Ljava/util/List;

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 289
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final queryNewSince(Ljava/lang/String;JI)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/ActivityCache$Entry;",
            ">;"
        }
    .end annotation

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    iget-object v2, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v3, 0x9

    .line 350
    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "id"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const-string/jumbo v0, "start_time"

    const/4 v6, 0x2

    aput-object v0, v4, v6

    const/4 v0, 0x3

    const-string/jumbo v7, "type"

    aput-object v7, v4, v0

    const/4 v0, 0x4

    const-string/jumbo v7, "title"

    aput-object v7, v4, v0

    const/4 v0, 0x5

    const-string v7, "distance_km"

    aput-object v7, v4, v0

    const/4 v0, 0x6

    const-string v7, "duration_sec"

    aput-object v7, v4, v0

    const/4 v0, 0x7

    const-string v7, "filename"

    aput-object v7, v4, v0

    const/16 v0, 0x8

    const-string v7, "extra"

    aput-object v7, v4, v0

    .line 352
    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    .line 353
    const-string/jumbo v9, "start_time ASC"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 348
    const-string v3, "activity_cache"

    const-string v5, "platform = ? AND start_time > ?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 354
    :try_start_0
    move-object p2, p1

    check-cast p2, Landroid/database/Cursor;

    .line 355
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/jichi/ob/util/ActivityCache;->readEntry(Landroid/database/Cursor;)Lcom/jichi/ob/util/ActivityCache$Entry;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 354
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 357
    check-cast v1, Ljava/util/List;

    return-object v1

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 354
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p3, v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final setFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x3

    .line 396
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const/4 p1, 0x2

    aput-object p2, v1, p1

    .line 394
    const-string p1, "UPDATE activity_cache SET filename = ? WHERE platform = ? AND id = ?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setStartTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x3

    .line 405
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const/4 p1, 0x2

    aput-object p2, v1, p1

    .line 403
    const-string p1, "UPDATE activity_cache SET start_time = ? WHERE platform = ? AND id = ?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final upsert(Ljava/lang/String;Lcom/jichi/ob/util/ActivityCache$Entry;)V
    .locals 1

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/ActivityCache;->upsertBatch(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final upsertBatch(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/ActivityCache$Entry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entries"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 231
    const-string v1, "INSERT OR REPLACE INTO activity_cache\n                       (id, platform, start_time, type, title, distance_km, duration_sec, filename, extra)\n                       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 230
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 235
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/util/ActivityCache$Entry;

    .line 236
    invoke-virtual {v1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 237
    invoke-virtual {v0, v3, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 238
    invoke-virtual {v1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 239
    invoke-virtual {v1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 240
    invoke-virtual {v1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDistanceKm()D

    move-result-wide v2

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 242
    invoke-virtual {v1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDurationSec()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 243
    invoke-virtual {v1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getFilename()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getExtra()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_0

    .line 247
    :cond_1
    iget-object p2, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object p2, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 253
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/ActivityCache;->count(Ljava/lang/String;)I

    move-result p2

    const v0, 0xf4240

    if-le p2, v0, :cond_2

    .line 255
    iget-object v1, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 256
    const-string v5, "activity_cache"

    .line 257
    const-string v6, "platform = ? AND id IN (SELECT id FROM activity_cache WHERE platform = ? ORDER BY start_time ASC LIMIT ?)"

    .line 258
    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v2, v7

    aput-object p1, v2, v4

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 255
    invoke-virtual {v1, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 249
    iget-object p2, p0, Lcom/jichi/ob/util/ActivityCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

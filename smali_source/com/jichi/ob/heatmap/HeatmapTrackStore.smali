.class public final Lcom/jichi/ob/heatmap/HeatmapTrackStore;
.super Ljava/lang/Object;
.source "HeatmapTrackStore.java"


# static fields
.field private static final KEY_FOLDER:Ljava/lang/String; = "folder_uri"

.field private static final PREFS:Ljava/lang/String; = "heatmap_prefs"

.field private static volatile mediaCount:I

.field private static volatile rawCount:I

.field private static volatile safCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->mediaCount:I

    .line 34
    sput v0, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->rawCount:I

    .line 35
    sput v0, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->safCount:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static addRaw(Ljava/io/File;Ljava/util/List;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 160
    if-nez p0, :cond_3

    .line 161
    return-void

    .line 165
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/jichi/ob/heatmap/TrackFileParser;->scanFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2c

    .line 168
    nop

    .line 169
    if-nez p0, :cond_b

    .line 170
    return-void

    .line 172
    :cond_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 173
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 174
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_2a
    goto :goto_f

    .line 177
    :cond_2b
    return-void

    .line 166
    :catchall_2c
    move-exception p0

    .line 167
    return-void
.end method

.method private static cacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 188
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "heatmap_tracks"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_14

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 192
    :cond_14
    return-object v0
.end method

.method private static collect(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/util/List;Ljava/util/Set;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/documentfile/provider/DocumentFile;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 124
    const/4 v0, 0x3

    if-le p4, v0, :cond_4

    .line 125
    return-void

    .line 129
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_4b

    .line 132
    nop

    .line 133
    if-nez p1, :cond_c

    .line 134
    return-void

    .line 136
    :cond_c
    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_4a

    aget-object v2, p1, v1

    .line 137
    if-nez v2, :cond_15

    .line 138
    goto :goto_47

    .line 140
    :cond_15
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 141
    add-int/lit8 v3, p4, 0x1

    invoke-static {p0, v2, p2, p3, v3}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->collect(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/util/List;Ljava/util/Set;I)V

    .line 142
    goto :goto_47

    .line 144
    :cond_21
    nop

    .line 146
    :try_start_22
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_27

    .line 148
    goto :goto_29

    .line 147
    :catchall_27
    move-exception v3

    const/4 v3, 0x0

    .line 149
    :goto_29
    invoke-static {v3}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->isTrackName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 150
    goto :goto_47

    .line 152
    :cond_30
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->materialize(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 153
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 154
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 157
    :cond_4a
    return-void

    .line 130
    :catchall_4b
    move-exception p0

    .line 131
    return-void
.end method

.method public static getFolderName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 243
    invoke-static {p0}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->getFolderUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 244
    const-string v1, ""

    if-nez v0, :cond_9

    .line 245
    return-object v1

    .line 248
    :cond_9
    :try_start_9
    invoke-static {p0, v0}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    .line 249
    if-eqz p0, :cond_16

    .line 250
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 251
    if-eqz p0, :cond_16

    .line 252
    return-object p0

    .line 256
    :cond_16
    goto :goto_18

    .line 255
    :catchall_17
    move-exception p0

    .line 257
    :goto_18
    return-object v1
.end method

.method public static getFolderUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4

    .line 231
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "heatmap_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 232
    const-string v1, "folder_uri"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 233
    if-nez p0, :cond_11

    .line 234
    return-object v0

    .line 236
    :cond_11
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    return-object p0

    .line 237
    :catchall_16
    move-exception p0

    .line 238
    return-object v0
.end method

.method public static getMediaCount()I
    .registers 1

    .line 273
    sget v0, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->mediaCount:I

    return v0
.end method

.method public static getRawCount()I
    .registers 1

    .line 277
    sget v0, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->rawCount:I

    return v0
.end method

.method public static getSafCount()I
    .registers 1

    .line 281
    sget v0, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->safCount:I

    return v0
.end method

.method private static isTrackName(Ljava/lang/String;)Z
    .registers 3

    .line 180
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 181
    return v0

    .line 183
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 184
    const-string v1, ".fit"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, ".gpx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, ".tcx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_20
    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method private static materialize(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;
    .registers 9

    .line 196
    const/4 v0, 0x0

    if-eqz p1, :cond_5d

    if-nez p2, :cond_6

    goto :goto_5d

    .line 200
    :cond_6
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->cacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    const-wide/16 v2, 0x10

    if-eqz p2, :cond_20

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-lez p2, :cond_20

    .line 202
    return-object v1

    .line 204
    :cond_20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 205
    if-nez p0, :cond_2b

    .line 206
    return-object v0

    .line 208
    :cond_2b
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_5b

    .line 210
    const/16 p2, 0x2000

    :try_start_32
    new-array p2, p2, [B

    .line 212
    :goto_34
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3f

    .line 213
    const/4 v5, 0x0

    invoke-virtual {p1, p2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_53

    goto :goto_34

    .line 216
    :cond_3f
    :try_start_3f
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 217
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 218
    nop

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-lez p0, :cond_4f

    .line 220
    return-object v1

    .line 222
    :cond_4f
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 223
    return-object v0

    .line 216
    :catchall_53
    move-exception p2

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 217
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 218
    throw p2
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_5b

    .line 224
    :catchall_5b
    move-exception p0

    .line 225
    return-object v0

    .line 197
    :cond_5d
    :goto_5d
    return-object v0
.end method

.method public static saveDir()Ljava/io/File;
    .registers 3

    .line 41
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static scan(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 48
    const/4 v2, 0x0

    sput v2, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->mediaCount:I

    .line 49
    sput v2, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->rawCount:I

    .line 50
    sput v2, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->safCount:I

    .line 51
    invoke-static {p0, v0, v1}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->scanMediaStore(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 53
    invoke-static {}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->saveDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->addRaw(Ljava/io/File;Ljava/util/List;Ljava/util/Set;)V

    .line 54
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->addRaw(Ljava/io/File;Ljava/util/List;Ljava/util/Set;)V

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    sput v3, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->rawCount:I

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 57
    invoke-static {p0, v0, v1}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->scanTree(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v2

    sput p0, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->safCount:I

    .line 59
    return-object v0
.end method

.method private static scanMediaStore(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    const-string v0, "_display_name"

    const-string v1, "_id"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_b

    .line 64
    return-void

    .line 66
    :cond_b
    nop

    .line 68
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 69
    sget-object v9, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 70
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v5, v4

    const/4 v10, 0x1

    aput-object v0, v5, v10

    const-string v6, "relative_path LIKE ?"

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "Download/\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB%"

    aput-object v8, v7, v4

    const/4 v8, 0x0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_7e

    .line 72
    if-nez v3, :cond_36

    .line 100
    if-eqz v3, :cond_34

    .line 101
    :try_start_2e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_34

    .line 103
    :catchall_32
    move-exception p0

    goto :goto_35

    .line 104
    :cond_34
    :goto_34
    nop

    .line 73
    :goto_35
    return-void

    .line 75
    :cond_36
    :try_start_36
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 76
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 77
    :goto_3e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_7b

    if-eqz v4, :cond_75

    .line 78
    nop

    .line 80
    :try_start_45
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_4a

    .line 82
    goto :goto_4c

    .line 81
    :catchall_4a
    move-exception v4

    move-object v4, v2

    .line 83
    :goto_4c
    :try_start_4c
    invoke-static {v4}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->isTrackName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_53

    .line 84
    goto :goto_3e

    .line 86
    :cond_53
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 87
    invoke-static {v9, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 88
    invoke-static {p0, v5, v4}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->materialize(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 89
    if-nez v4, :cond_62

    .line 90
    goto :goto_3e

    .line 92
    :cond_62
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 93
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget v4, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->mediaCount:I

    add-int/2addr v4, v10

    sput v4, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->mediaCount:I
    :try_end_74
    .catchall {:try_start_4c .. :try_end_74} :catchall_7b

    .line 96
    :cond_74
    goto :goto_3e

    .line 100
    :cond_75
    if-eqz v3, :cond_87

    .line 101
    :try_start_77
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_87

    .line 97
    :catchall_7b
    move-exception p0

    move-object v2, v3

    goto :goto_7f

    :catchall_7e
    move-exception p0

    .line 100
    :goto_7f
    if-eqz v2, :cond_87

    .line 101
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_84
    .catchall {:try_start_77 .. :try_end_84} :catchall_85

    goto :goto_87

    .line 103
    :catchall_85
    move-exception p0

    .line 105
    goto :goto_88

    .line 104
    :cond_87
    :goto_87
    nop

    .line 106
    :goto_88
    return-void
.end method

.method private static scanTree(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-static {p0}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->getFolderUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    if-nez v0, :cond_7

    .line 111
    return-void

    .line 114
    :cond_7
    :try_start_7
    invoke-static {p0, v0}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_19

    .line 118
    :cond_14
    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/jichi/ob/heatmap/HeatmapTrackStore;->collect(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/util/List;Ljava/util/Set;I)V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    .line 120
    goto :goto_1b

    .line 116
    :cond_19
    :goto_19
    return-void

    .line 119
    :catchall_1a
    move-exception p0

    .line 121
    :goto_1b
    return-void
.end method

.method public static setFolderUri(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4

    .line 262
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 265
    goto :goto_a

    .line 264
    :catchall_9
    move-exception v0

    .line 267
    :goto_a
    :try_start_a
    const-string v0, "heatmap_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "folder_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_23

    .line 269
    goto :goto_24

    .line 268
    :catchall_23
    move-exception p0

    .line 270
    :goto_24
    return-void
.end method

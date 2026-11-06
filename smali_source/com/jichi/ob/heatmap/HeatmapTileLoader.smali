.class public final Lcom/jichi/ob/heatmap/HeatmapTileLoader;
.super Ljava/lang/Object;
.source "HeatmapTileLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;
    }
.end annotation


# static fields
.field private static final DARK_SOURCES:[Ljava/lang/String;

.field private static final LIGHT_SOURCES:[Ljava/lang/String;

.field private static final MAX_FAILURES:I = 0x4

.field private static final TILE_TIMEOUT_MS:I = 0x9c4


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final ctx:Landroid/content/Context;

.field private volatile failTiles:I

.field private final failed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final memCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile offline:Z

.field private volatile okTiles:I

.field private volatile online:Z

.field private volatile pendingTiles:I

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private worker:Ljava/lang/Thread;


# direct methods
.method static bridge synthetic -$$Nest$fgetqueue(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->queue:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputworker(Lcom/jichi/ob/heatmap/HeatmapTileLoader;Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->worker:Ljava/lang/Thread;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdownload(Lcom/jichi/ob/heatmap/HeatmapTileLoader;IIIZ)Landroid/graphics/Bitmap;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->download(IIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleResult(Lcom/jichi/ob/heatmap/HeatmapTileLoader;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->handleResult(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtileFile(Lcom/jichi/ob/heatmap/HeatmapTileLoader;IIIZ)Ljava/io/File;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->tileFile(IIIZ)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    const-string v0, "https://basemaps.cartocdn.com/light_all/%d/%d/%d.png"

    const-string v1, "https://tile.openstreetmap.org/%d/%d/%d.png"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->LIGHT_SOURCES:[Ljava/lang/String;

    .line 27
    const-string v0, "https://basemaps.cartocdn.com/dark_all/%d/%d/%d.png"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->DARK_SOURCES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failed:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->queue:Ljava/util/List;

    .line 38
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->memCache:Landroid/util/LruCache;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->online:Z

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->offline:Z

    .line 42
    iput v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->okTiles:I

    .line 43
    iput v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failTiles:I

    .line 44
    iput v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->pendingTiles:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_2d

    move-object p1, v0

    :cond_2d
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->ctx:Landroid/content/Context;

    .line 49
    new-instance p1, Ljava/io/File;

    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->cacheRoot()Ljava/lang/String;

    move-result-object v0

    const-string v1, "heatmap_tiles"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_43

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 53
    :cond_43
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->cacheDir:Ljava/io/File;

    .line 54
    return-void
.end method

.method private cacheRoot()Ljava/lang/String;
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_e

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_e
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private download(IIIZ)Landroid/graphics/Bitmap;
    .registers 14

    .line 234
    if-eqz p4, :cond_5

    sget-object p4, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->DARK_SOURCES:[Ljava/lang/String;

    goto :goto_7

    :cond_5
    sget-object p4, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->LIGHT_SOURCES:[Ljava/lang/String;

    .line 235
    :goto_7
    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    const/4 v3, 0x0

    if-ge v2, v0, :cond_cb

    aget-object v4, p4, v2

    .line 236
    nop

    .line 237
    nop

    .line 239
    :try_start_11
    new-instance v5, Ljava/net/URL;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_37} :catch_b3
    .catchall {:try_start_11 .. :try_end_37} :catchall_9e

    .line 241
    const/16 v5, 0x9c4

    :try_start_39
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 242
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 243
    const-string v5, "User-Agent"

    const-string v6, "JichiOB-Dev/9.5.6 (Android heatmap)"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v5, "Accept"

    const-string v6, "image/png,image/*"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 246
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 247
    const/16 v6, 0xc8

    const/16 v7, 0x12c

    if-lt v5, v6, :cond_5c

    if-lt v5, v7, :cond_63

    :cond_5c
    if-lt v5, v7, :cond_90

    const/16 v6, 0x190

    if-lt v5, v6, :cond_63

    goto :goto_90

    .line 250
    :cond_63
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 251
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_6b} :catch_9c
    .catchall {:try_start_39 .. :try_end_6b} :catchall_9a

    .line 252
    if-eqz v5, :cond_81

    .line 253
    nop

    .line 258
    if-eqz v3, :cond_76

    .line 259
    :try_start_70
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_76

    .line 261
    :catch_74
    move-exception p1

    goto :goto_77

    .line 262
    :cond_76
    :goto_76
    nop

    .line 264
    :goto_77
    if-eqz v4, :cond_7f

    .line 265
    :try_start_79
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_7f

    .line 267
    :catch_7d
    move-exception p1

    goto :goto_80

    .line 268
    :cond_7f
    :goto_7f
    nop

    .line 253
    :goto_80
    return-object v5

    .line 258
    :cond_81
    if-eqz v3, :cond_89

    .line 259
    :try_start_83
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_89

    .line 261
    :catch_87
    move-exception v3

    goto :goto_8a

    .line 262
    :cond_89
    :goto_89
    nop

    .line 264
    :goto_8a
    if-eqz v4, :cond_c6

    .line 265
    :try_start_8c
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_c4

    goto :goto_c6

    .line 258
    :cond_90
    :goto_90
    nop

    .line 262
    nop

    .line 264
    if-eqz v4, :cond_c6

    .line 265
    :try_start_94
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_c6

    .line 267
    :catch_98
    move-exception v3

    .line 248
    goto :goto_c7

    .line 257
    :catchall_9a
    move-exception p1

    goto :goto_a0

    .line 255
    :catch_9c
    move-exception v5

    goto :goto_b5

    .line 257
    :catchall_9e
    move-exception p1

    move-object v4, v3

    .line 258
    :goto_a0
    if-eqz v3, :cond_a8

    .line 259
    :try_start_a2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_a8

    .line 261
    :catch_a6
    move-exception p2

    goto :goto_a9

    .line 262
    :cond_a8
    :goto_a8
    nop

    .line 264
    :goto_a9
    if-eqz v4, :cond_b1

    .line 265
    :try_start_ab
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_b1

    .line 267
    :catch_af
    move-exception p2

    goto :goto_b2

    .line 268
    :cond_b1
    :goto_b1
    nop

    .line 269
    :goto_b2
    throw p1

    .line 255
    :catch_b3
    move-exception v4

    move-object v4, v3

    .line 258
    :goto_b5
    if-eqz v3, :cond_bd

    .line 259
    :try_start_b7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_bd

    .line 261
    :catch_bb
    move-exception v3

    goto :goto_be

    .line 262
    :cond_bd
    :goto_bd
    nop

    .line 264
    :goto_be
    if-eqz v4, :cond_c6

    .line 265
    :try_start_c0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_c6

    .line 267
    :catch_c4
    move-exception v3

    .line 269
    goto :goto_c7

    .line 268
    :cond_c6
    :goto_c6
    nop

    .line 235
    :goto_c7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 271
    :cond_cb
    return-object v3
.end method

.method private handleResult(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .registers 5

    .line 182
    const/4 v0, 0x1

    if-eqz p2, :cond_21

    .line 183
    if-eqz p3, :cond_8

    .line 184
    invoke-direct {p0, p3, p2}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->save(Ljava/io/File;Landroid/graphics/Bitmap;)V

    .line 186
    :cond_8
    iget-object p3, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->memCache:Landroid/util/LruCache;

    invoke-virtual {p3, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    monitor-enter p0

    .line 188
    :try_start_e
    iget p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->okTiles:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->okTiles:I

    .line 189
    iget p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->pendingTiles:I

    if-lez p1, :cond_1c

    .line 190
    iget p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->pendingTiles:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->pendingTiles:I

    .line 192
    :cond_1c
    monitor-exit p0

    goto :goto_3d

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_1e

    throw p1

    .line 194
    :cond_21
    monitor-enter p0

    .line 195
    :try_start_22
    iget-object p2, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failed:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    iget p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failTiles:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failTiles:I

    .line 197
    iget p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->pendingTiles:I

    if-lez p1, :cond_35

    .line 198
    iget p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->pendingTiles:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->pendingTiles:I

    .line 200
    :cond_35
    iget p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failTiles:I

    const/4 p2, 0x4

    if-lt p1, p2, :cond_3c

    .line 201
    iput-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->offline:Z

    .line 203
    :cond_3c
    monitor-exit p0

    .line 205
    :goto_3d
    return-void

    .line 203
    :catchall_3e
    move-exception p1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method private queueContains(Ljava/lang/String;)Z
    .registers 5

    .line 208
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 209
    instance-of v2, v1, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;

    if-eqz v2, :cond_22

    check-cast v1, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;

    iget-object v1, v1, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 210
    const/4 p1, 0x1

    return p1

    .line 212
    :cond_22
    goto :goto_6

    .line 213
    :cond_23
    const/4 p1, 0x0

    return p1
.end method

.method private save(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 222
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_9

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 226
    :cond_9
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 227
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p2, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 228
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 230
    goto :goto_1a

    .line 229
    :catch_19
    move-exception p1

    .line 231
    :goto_1a
    return-void
.end method

.method private tileFile(IIIZ)Ljava/io/File;
    .registers 8

    .line 217
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->cacheDir:Ljava/io/File;

    if-eqz p4, :cond_9

    const-string p4, "_d.png"

    goto :goto_b

    :cond_9
    const-string p4, "_l.png"

    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCachedTile(IIIZ)Landroid/graphics/Bitmap;
    .registers 5

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->tileFile(IIIZ)Ljava/io/File;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 67
    iget-object p3, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->memCache:Landroid/util/LruCache;

    invoke-virtual {p3, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    .line 68
    if-eqz p3, :cond_13

    .line 69
    return-object p3

    .line 71
    :cond_13
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_1b

    .line 72
    return-object p3

    .line 75
    :cond_1b
    :try_start_1b
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 76
    if-eqz p1, :cond_26

    .line 77
    iget-object p4, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->memCache:Landroid/util/LruCache;

    invoke-virtual {p4, p2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_27

    .line 79
    :cond_26
    return-object p1

    .line 80
    :catch_27
    move-exception p1

    .line 81
    return-object p3
.end method

.method public getFailTiles()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failTiles:I

    return v0
.end method

.method public getOkTiles()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->okTiles:I

    return v0
.end method

.method public getOnlineEnabled()Z
    .registers 2

    .line 151
    iget-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->online:Z

    return v0
.end method

.method public getPendingTiles()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->pendingTiles:I

    return v0
.end method

.method public isOffline()Z
    .registers 2

    .line 155
    iget-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->offline:Z

    return v0
.end method

.method public requestTile(IIIZLjava/lang/Runnable;)V
    .registers 18

    .line 86
    move-object v9, p0

    iget-boolean v0, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->online:Z

    if-eqz v0, :cond_98

    iget-boolean v0, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->offline:Z

    if-eqz v0, :cond_b

    goto/16 :goto_98

    .line 89
    :cond_b
    if-eqz p4, :cond_10

    const-string v0, "d"

    goto :goto_12

    :cond_10
    const-string v0, "l"

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v3, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v4, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v5, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v10, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->queue:Ljava/util/List;

    monitor-enter v10

    .line 91
    :try_start_43
    iget-object v1, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failed:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    invoke-direct {p0, v0}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->queueContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_93

    .line 94
    :cond_52
    new-instance v11, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object v7, v0

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;-><init>(Lcom/jichi/ob/heatmap/HeatmapTileLoader;IIIZLjava/lang/String;Ljava/lang/Runnable;)V

    .line 110
    iget-object v1, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->queue:Ljava/util/List;

    new-instance v2, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;

    invoke-direct {v2, v0, v11}, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget v0, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->pendingTiles:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->pendingTiles:I

    .line 112
    iget-object v0, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_91

    .line 113
    :cond_7b
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;

    invoke-direct {v2, p0}, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;-><init>(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)V

    const-string v3, "heatmap-tiles"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->worker:Ljava/lang/Thread;

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 133
    iget-object v0, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 135
    :cond_91
    monitor-exit v10

    .line 136
    return-void

    .line 92
    :cond_93
    :goto_93
    monitor-exit v10

    return-void

    .line 135
    :catchall_95
    move-exception v0

    monitor-exit v10
    :try_end_97
    .catchall {:try_start_43 .. :try_end_97} :catchall_95

    throw v0

    .line 87
    :cond_98
    :goto_98
    return-void
.end method

.method public resetTiles()V
    .registers 2

    .line 171
    monitor-enter p0

    .line 172
    :try_start_1
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failed:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failTiles:I

    .line 174
    iput v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->okTiles:I

    .line 175
    iput v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->pendingTiles:I

    .line 176
    iput-boolean v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->offline:Z

    .line 177
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->memCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 178
    monitor-exit p0

    .line 179
    return-void

    .line 178
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public setOnlineEnabled(Z)V
    .registers 2

    .line 139
    iput-boolean p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->online:Z

    .line 140
    if-nez p1, :cond_5

    .line 141
    return-void

    .line 143
    :cond_5
    monitor-enter p0

    .line 144
    :try_start_6
    iget-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failed:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 145
    const/4 p1, 0x0

    iput p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failTiles:I

    .line 146
    iput-boolean p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->offline:Z

    .line 147
    monitor-exit p0

    .line 148
    return-void

    .line 147
    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p1
.end method

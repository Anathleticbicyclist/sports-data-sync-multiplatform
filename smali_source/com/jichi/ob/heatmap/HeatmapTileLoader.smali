.class public Lcom/jichi/ob/heatmap/HeatmapTileLoader;
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


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final ctx:Landroid/content/Context;

.field private final failed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    .line 28
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "https://tiles.openfreemap.org/styles/liberty/%d/%d/%d.png"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "https://basemaps.cartocdn.com/dark_all/%d/%d/%d.png"

    aput-object v5, v1, v4

    sput-object v1, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->DARK_SOURCES:[Ljava/lang/String;

    .line 32
    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v1, "https://basemaps.cartocdn.com/light_all/%d/%d/%d.png"

    aput-object v1, v0, v4

    sput-object v0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->LIGHT_SOURCES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->queue:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failed:Ljava/util/Set;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->ctx:Landroid/content/Context;

    .line 43
    new-instance p1, Ljava/io/File;

    invoke-direct {p0}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->cacheRoot()Ljava/lang/String;

    move-result-object v0

    const-string v1, "heatmap_tiles"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->cacheDir:Ljava/io/File;

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/jichi/ob/heatmap/HeatmapTileLoader;IIIZ)Landroid/graphics/Bitmap;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->download(IIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/jichi/ob/heatmap/HeatmapTileLoader;III)Ljava/io/File;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->tileFile(III)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/jichi/ob/heatmap/HeatmapTileLoader;Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->save(Ljava/io/File;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->queue:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)Ljava/util/Set;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failed:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$502(Lcom/jichi/ob/heatmap/HeatmapTileLoader;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->worker:Ljava/lang/Thread;

    return-object p1
.end method

.method private cacheRoot()Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private download(IIIZ)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p4, :cond_0

    .line 132
    sget-object p4, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->DARK_SOURCES:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->LIGHT_SOURCES:[Ljava/lang/String;

    .line 133
    :goto_0
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p4, v2

    .line 135
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v1

    const/4 v5, 0x1

    aput-object v6, v8, v5

    const/4 v5, 0x2

    aput-object v7, v8, v5

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const/16 v4, 0x1770

    .line 137
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 138
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 139
    const-string v4, "User-Agent"

    const-string v5, "JichiOB-Dev/9.4.0"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v4, "Accept"

    const-string v5, "image/png"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    .line 143
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 148
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    return-object v5

    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 149
    throw v3

    .line 151
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private queueContains(Ljava/lang/String;)Z
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 115
    instance-of v2, v1, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;

    iget-object v1, v1, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private save(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 161
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 162
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 163
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p2, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 164
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private tileFile(III)Ljava/io/File;
    .locals 3

    .line 128
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCachedTile(IIIZ)Landroid/graphics/Bitmap;
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->tileFile(III)Ljava/io/File;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 59
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public requestTile(IIIZLjava/lang/Runnable;)V
    .locals 14

    move-object v9, p0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v3, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v1, "d"

    goto :goto_0

    :cond_0
    const-string v1, "l"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v10, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->queue:Ljava/util/List;

    monitor-enter v10

    .line 72
    :try_start_0
    iget-object v1, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->failed:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v10

    return-void

    .line 73
    :cond_1
    invoke-direct {p0, v0}, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->queueContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v10

    return-void

    .line 74
    :cond_2
    iget-object v11, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->queue:Ljava/util/List;

    new-instance v12, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;

    new-instance v13, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/jichi/ob/heatmap/HeatmapTileLoader$1;-><init>(Lcom/jichi/ob/heatmap/HeatmapTileLoader;IIIZLjava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v12, v0, v13}, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;

    invoke-direct {v1, p0}, Lcom/jichi/ob/heatmap/HeatmapTileLoader$2;-><init>(Lcom/jichi/ob/heatmap/HeatmapTileLoader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->worker:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 108
    iget-object v0, v9, Lcom/jichi/ob/heatmap/HeatmapTileLoader;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 110
    :cond_4
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

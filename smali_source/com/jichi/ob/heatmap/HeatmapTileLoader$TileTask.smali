.class final Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;
.super Ljava/lang/Object;
.source "HeatmapTileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/heatmap/HeatmapTileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TileTask"
.end annotation


# instance fields
.field final body:Ljava/lang/Runnable;

.field final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;->key:Ljava/lang/String;

    .line 280
    iput-object p2, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;->body:Ljava/lang/Runnable;

    .line 281
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;->body:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 286
    return-void
.end method

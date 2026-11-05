.class Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;
.super Ljava/lang/Object;
.source "HeatmapTileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/heatmap/HeatmapTileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileTask"
.end annotation


# instance fields
.field final body:Ljava/lang/Runnable;

.field final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;->body:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/jichi/ob/heatmap/HeatmapTileLoader$TileTask;->body:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

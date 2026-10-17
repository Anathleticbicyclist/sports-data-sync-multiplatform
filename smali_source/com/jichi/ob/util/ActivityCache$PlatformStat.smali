.class public final Lcom/jichi/ob/util/ActivityCache$PlatformStat;
.super Ljava/lang/Object;
.source "ActivityCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/util/ActivityCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlatformStat"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/jichi/ob/util/ActivityCache$PlatformStat;",
        "",
        "ok",
        "",
        "skip",
        "fail",
        "lastSync",
        "",
        "<init>",
        "(IIIJ)V",
        "getOk",
        "()I",
        "getSkip",
        "getFail",
        "getLastSync",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final fail:I

.field private final lastSync:J

.field private final ok:I

.field private final skip:I


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->ok:I

    iput p2, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->skip:I

    iput p3, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->fail:I

    iput-wide p4, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->lastSync:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/util/ActivityCache$PlatformStat;IIIJILjava/lang/Object;)Lcom/jichi/ob/util/ActivityCache$PlatformStat;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->ok:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->skip:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->fail:I

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    iget-wide p4, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->lastSync:J

    :cond_3
    move-wide p6, p4

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->copy(IIIJ)Lcom/jichi/ob/util/ActivityCache$PlatformStat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->ok:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->skip:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->fail:I

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->lastSync:J

    return-wide v0
.end method

.method public final copy(IIIJ)Lcom/jichi/ob/util/ActivityCache$PlatformStat;
    .locals 6

    new-instance v0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/util/ActivityCache$PlatformStat;-><init>(IIIJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/util/ActivityCache$PlatformStat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/util/ActivityCache$PlatformStat;

    iget v1, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->ok:I

    iget v3, p1, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->ok:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->skip:I

    iget v3, p1, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->skip:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->fail:I

    iget v3, p1, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->fail:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->lastSync:J

    iget-wide v5, p1, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->lastSync:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFail()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->fail:I

    return v0
.end method

.method public final getLastSync()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->lastSync:J

    return-wide v0
.end method

.method public final getOk()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->ok:I

    return v0
.end method

.method public final getSkip()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->skip:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->ok:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->skip:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->fail:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->lastSync:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->ok:I

    iget v1, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->skip:I

    iget v2, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->fail:I

    iget-wide v3, p0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->lastSync:J

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PlatformStat(ok="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", skip="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

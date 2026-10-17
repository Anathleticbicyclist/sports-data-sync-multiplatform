.class public final Lcom/jichi/ob/api/WorkoutSyncEngine$Result;
.super Ljava/lang/Object;
.source "WorkoutSyncEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/WorkoutSyncEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000b\"\u0004\u0008\u0015\u0010\r\u00a8\u0006\""
    }
    d2 = {
        "Lcom/jichi/ob/api/WorkoutSyncEngine$Result;",
        "",
        "listed",
        "",
        "uploaded",
        "skipped",
        "failed",
        "noSteps",
        "<init>",
        "(IIIII)V",
        "getListed",
        "()I",
        "setListed",
        "(I)V",
        "getUploaded",
        "setUploaded",
        "getSkipped",
        "setSkipped",
        "getFailed",
        "setFailed",
        "getNoSteps",
        "setNoSteps",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field private failed:I

.field private listed:I

.field private noSteps:I

.field private skipped:I

.field private uploaded:I


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->listed:I

    .line 33
    iput p2, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->uploaded:I

    .line 34
    iput p3, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->skipped:I

    .line 35
    iput p4, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->failed:I

    .line 36
    iput p5, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->noSteps:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move p6, v0

    goto :goto_0

    :cond_4
    move p6, p5

    :goto_0
    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 31
    invoke-direct/range {p1 .. p6}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;-><init>(IIIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/api/WorkoutSyncEngine$Result;IIIIIILjava/lang/Object;)Lcom/jichi/ob/api/WorkoutSyncEngine$Result;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->listed:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->uploaded:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->skipped:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->failed:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget p5, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->noSteps:I

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->copy(IIIII)Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->listed:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->uploaded:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->skipped:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->failed:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->noSteps:I

    return v0
.end method

.method public final copy(IIIII)Lcom/jichi/ob/api/WorkoutSyncEngine$Result;
    .locals 6

    new-instance v0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;-><init>(IIIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    iget v1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->listed:I

    iget v3, p1, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->listed:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->uploaded:I

    iget v3, p1, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->uploaded:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->skipped:I

    iget v3, p1, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->skipped:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->failed:I

    iget v3, p1, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->failed:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->noSteps:I

    iget p1, p1, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->noSteps:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getFailed()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->failed:I

    return v0
.end method

.method public final getListed()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->listed:I

    return v0
.end method

.method public final getNoSteps()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->noSteps:I

    return v0
.end method

.method public final getSkipped()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->skipped:I

    return v0
.end method

.method public final getUploaded()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->uploaded:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->listed:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->uploaded:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->skipped:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->failed:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->noSteps:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setFailed(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->failed:I

    return-void
.end method

.method public final setListed(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->listed:I

    return-void
.end method

.method public final setNoSteps(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->noSteps:I

    return-void
.end method

.method public final setSkipped(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->skipped:I

    return-void
.end method

.method public final setUploaded(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->uploaded:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->listed:I

    iget v1, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->uploaded:I

    iget v2, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->skipped:I

    iget v3, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->failed:I

    iget v4, p0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->noSteps:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Result(listed="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", uploaded="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noSteps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

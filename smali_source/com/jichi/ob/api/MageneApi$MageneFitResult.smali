.class public final Lcom/jichi/ob/api/MageneApi$MageneFitResult;
.super Ljava/lang/Object;
.source "MageneApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/MageneApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MageneFitResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/jichi/ob/api/MageneApi$MageneFitResult;",
        "",
        "data",
        "",
        "fromFitContent",
        "",
        "<init>",
        "([BZ)V",
        "getData",
        "()[B",
        "getFromFitContent",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private final data:[B

.field private final fromFitContent:Z


# direct methods
.method public constructor <init>([BZ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->data:[B

    iput-boolean p2, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->fromFitContent:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/api/MageneApi$MageneFitResult;[BZILjava/lang/Object;)Lcom/jichi/ob/api/MageneApi$MageneFitResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->data:[B

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->fromFitContent:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->copy([BZ)Lcom/jichi/ob/api/MageneApi$MageneFitResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[B
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->data:[B

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->fromFitContent:Z

    return v0
.end method

.method public final copy([BZ)Lcom/jichi/ob/api/MageneApi$MageneFitResult;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;

    invoke-direct {v0, p1, p2}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;-><init>([BZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/api/MageneApi$MageneFitResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/api/MageneApi$MageneFitResult;

    iget-object v1, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->data:[B

    iget-object v3, p1, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->data:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->fromFitContent:Z

    iget-boolean p1, p1, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->fromFitContent:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getData()[B
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->data:[B

    return-object v0
.end method

.method public final getFromFitContent()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->fromFitContent:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->fromFitContent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->fromFitContent:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MageneFitResult(data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fromFitContent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/jichi/ob/api/StravaApi$SessionCheck;
.super Ljava/lang/Object;
.source "StravaApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/StravaApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionCheck"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/jichi/ob/api/StravaApi$SessionCheck;",
        "",
        "ok",
        "",
        "httpCode",
        "",
        "detail",
        "",
        "<init>",
        "(ZILjava/lang/String;)V",
        "getOk",
        "()Z",
        "getHttpCode",
        "()I",
        "getDetail",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "app_release"
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
.field private final detail:Ljava/lang/String;

.field private final httpCode:I

.field private final ok:Z


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .locals 1

    const-string v0, "detail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->ok:Z

    iput p2, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->httpCode:I

    iput-object p3, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->detail:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/api/StravaApi$SessionCheck;ZILjava/lang/String;ILjava/lang/Object;)Lcom/jichi/ob/api/StravaApi$SessionCheck;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->ok:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->httpCode:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->detail:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/jichi/ob/api/StravaApi$SessionCheck;->copy(ZILjava/lang/String;)Lcom/jichi/ob/api/StravaApi$SessionCheck;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->ok:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->httpCode:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZILjava/lang/String;)Lcom/jichi/ob/api/StravaApi$SessionCheck;
    .locals 1

    const-string v0, "detail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jichi/ob/api/StravaApi$SessionCheck;

    invoke-direct {v0, p1, p2, p3}, Lcom/jichi/ob/api/StravaApi$SessionCheck;-><init>(ZILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/api/StravaApi$SessionCheck;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/api/StravaApi$SessionCheck;

    iget-boolean v1, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->ok:Z

    iget-boolean v3, p1, Lcom/jichi/ob/api/StravaApi$SessionCheck;->ok:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->httpCode:I

    iget v3, p1, Lcom/jichi/ob/api/StravaApi$SessionCheck;->httpCode:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->detail:Ljava/lang/String;

    iget-object p1, p1, Lcom/jichi/ob/api/StravaApi$SessionCheck;->detail:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDetail()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpCode()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->httpCode:I

    return v0
.end method

.method public final getOk()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->ok:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->ok:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->httpCode:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->detail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->ok:Z

    iget v1, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->httpCode:I

    iget-object v2, p0, Lcom/jichi/ob/api/StravaApi$SessionCheck;->detail:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SessionCheck(ok="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", httpCode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

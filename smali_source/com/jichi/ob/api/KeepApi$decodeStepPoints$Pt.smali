.class public final Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;
.super Ljava/lang/Object;
.source "KeepApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/KeepApi;->decodeStepPoints(Ljava/lang/String;J)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pt"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\u008a\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\"\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "com/jichi/ob/api/KeepApi$decodeStepPoints$Pt",
        "",
        "ts",
        "",
        "steps",
        "",
        "<init>",
        "(JI)V",
        "getTs",
        "()J",
        "getSteps",
        "()I",
        "component1",
        "component2",
        "copy",
        "(JI)Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;",
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
.field private final steps:I

.field private final ts:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->ts:J

    iput p3, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->steps:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;JIILjava/lang/Object;)Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->ts:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget p3, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->steps:I

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->copy(JI)Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->ts:J

    return-wide v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->steps:I

    return v0
.end method

.method public final copy(JI)Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;
    .locals 1

    new-instance v0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;

    invoke-direct {v0, p1, p2, p3}, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;-><init>(JI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;

    iget-wide v3, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->ts:J

    iget-wide v5, p1, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->ts:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->steps:I

    iget p1, p1, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->steps:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getSteps()I
    .locals 1

    .line 591
    iget v0, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->steps:I

    return v0
.end method

.method public final getTs()J
    .locals 2

    .line 591
    iget-wide v0, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->ts:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->ts:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->steps:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->ts:J

    iget v2, p0, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->steps:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pt(ts="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

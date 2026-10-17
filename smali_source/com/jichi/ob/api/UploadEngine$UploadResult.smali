.class public final Lcom/jichi/ob/api/UploadEngine$UploadResult;
.super Ljava/lang/Object;
.source "UploadEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/UploadEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
        "",
        "success",
        "",
        "targetId",
        "",
        "message",
        "skipped",
        "pending",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/String;ZZ)V",
        "getSuccess",
        "()Z",
        "getTargetId",
        "()Ljava/lang/String;",
        "getMessage",
        "getSkipped",
        "getPending",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final message:Ljava/lang/String;

.field private final pending:Z

.field private final skipped:Z

.field private final success:Z

.field private final targetId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string/jumbo v0, "targetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->success:Z

    .line 62
    iput-object p2, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->targetId:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->message:Ljava/lang/String;

    .line 64
    iput-boolean p4, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->skipped:Z

    .line 65
    iput-boolean p5, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->pending:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    .line 60
    const-string v0, ""

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_2

    move p4, v0

    :cond_2
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_3

    move p6, v0

    goto :goto_0

    :cond_3
    move p6, p5

    :goto_0
    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/api/UploadEngine$UploadResult;ZLjava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/jichi/ob/api/UploadEngine$UploadResult;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->success:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->targetId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->message:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-boolean p4, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->skipped:Z

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-boolean p5, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->pending:Z

    :cond_4
    move p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/jichi/ob/api/UploadEngine$UploadResult;->copy(ZLjava/lang/String;Ljava/lang/String;ZZ)Lcom/jichi/ob/api/UploadEngine$UploadResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->success:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->skipped:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->pending:Z

    return v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/String;ZZ)Lcom/jichi/ob/api/UploadEngine$UploadResult;
    .locals 7

    const-string/jumbo v0, "targetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    iget-boolean v1, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->success:Z

    iget-boolean v3, p1, Lcom/jichi/ob/api/UploadEngine$UploadResult;->success:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->targetId:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/api/UploadEngine$UploadResult;->targetId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/api/UploadEngine$UploadResult;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->skipped:Z

    iget-boolean v3, p1, Lcom/jichi/ob/api/UploadEngine$UploadResult;->skipped:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->pending:Z

    iget-boolean p1, p1, Lcom/jichi/ob/api/UploadEngine$UploadResult;->pending:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getPending()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->pending:Z

    return v0
.end method

.method public final getSkipped()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->skipped:Z

    return v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->success:Z

    return v0
.end method

.method public final getTargetId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->success:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->targetId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->skipped:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->pending:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->success:Z

    iget-object v1, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->targetId:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->message:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->skipped:Z

    iget-boolean v4, p0, Lcom/jichi/ob/api/UploadEngine$UploadResult;->pending:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UploadResult(success="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", targetId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

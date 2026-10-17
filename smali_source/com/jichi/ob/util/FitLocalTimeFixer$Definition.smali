.class final Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;
.super Ljava/lang/Object;
.source "FitLocalTimeFixer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/util/FitLocalTimeFixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Definition"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003JA\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000eR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;",
        "",
        "globalMesg",
        "",
        "littleEndian",
        "",
        "fields",
        "",
        "Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;",
        "dataSize",
        "fieldCountPos",
        "<init>",
        "(IZLjava/util/List;II)V",
        "getGlobalMesg",
        "()I",
        "getLittleEndian",
        "()Z",
        "getFields",
        "()Ljava/util/List;",
        "getDataSize",
        "getFieldCountPos",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
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
.field private final dataSize:I

.field private final fieldCountPos:I

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;",
            ">;"
        }
    .end annotation
.end field

.field private final globalMesg:I

.field private final littleEndian:Z


# direct methods
.method public constructor <init>(IZLjava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "fields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->globalMesg:I

    .line 34
    iput-boolean p2, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->littleEndian:Z

    .line 35
    iput-object p3, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fields:Ljava/util/List;

    .line 36
    iput p4, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->dataSize:I

    .line 37
    iput p5, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fieldCountPos:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;IZLjava/util/List;IIILjava/lang/Object;)Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->globalMesg:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->littleEndian:Z

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fields:Ljava/util/List;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->dataSize:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget p5, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fieldCountPos:I

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->copy(IZLjava/util/List;II)Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->globalMesg:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->littleEndian:Z

    return v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fields:Ljava/util/List;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->dataSize:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fieldCountPos:I

    return v0
.end method

.method public final copy(IZLjava/util/List;II)Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;",
            ">;II)",
            "Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;"
        }
    .end annotation

    const-string v0, "fields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;-><init>(IZLjava/util/List;II)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;

    iget v1, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->globalMesg:I

    iget v3, p1, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->globalMesg:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->littleEndian:Z

    iget-boolean v3, p1, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->littleEndian:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fields:Ljava/util/List;

    iget-object v3, p1, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fields:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->dataSize:I

    iget v3, p1, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->dataSize:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fieldCountPos:I

    iget p1, p1, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fieldCountPos:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDataSize()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->dataSize:I

    return v0
.end method

.method public final getFieldCountPos()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fieldCountPos:I

    return v0
.end method

.method public final getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fields:Ljava/util/List;

    return-object v0
.end method

.method public final getGlobalMesg()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->globalMesg:I

    return v0
.end method

.method public final getLittleEndian()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->littleEndian:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->globalMesg:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->littleEndian:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fields:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->dataSize:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fieldCountPos:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->globalMesg:I

    iget-boolean v1, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->littleEndian:Z

    iget-object v2, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fields:Ljava/util/List;

    iget v3, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->dataSize:I

    iget v4, p0, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->fieldCountPos:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Definition(globalMesg="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", littleEndian="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fieldCountPos="

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

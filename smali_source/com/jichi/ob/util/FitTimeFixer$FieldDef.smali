.class final Lcom/jichi/ob/util/FitTimeFixer$FieldDef;
.super Ljava/lang/Object;
.source "FitTimeFixer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/util/FitTimeFixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FieldDef"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u00c6\u0003J\u000f\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0003J=\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/jichi/ob/util/FitTimeFixer$FieldDef;",
        "",
        "globalMesgNum",
        "",
        "architecture",
        "fields",
        "",
        "Lcom/jichi/ob/util/FitTimeFixer$FieldInfo;",
        "timeFieldOffsets",
        "<init>",
        "(IILjava/util/List;Ljava/util/List;)V",
        "getGlobalMesgNum",
        "()I",
        "getArchitecture",
        "getFields",
        "()Ljava/util/List;",
        "getTimeFieldOffsets",
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
.field private final architecture:I

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/FitTimeFixer$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final globalMesgNum:I

.field private final timeFieldOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/FitTimeFixer$FieldInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeFieldOffsets"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->globalMesgNum:I

    .line 211
    iput p2, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->architecture:I

    .line 212
    iput-object p3, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->fields:Ljava/util/List;

    .line 213
    iput-object p4, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->timeFieldOffsets:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/util/FitTimeFixer$FieldDef;IILjava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/jichi/ob/util/FitTimeFixer$FieldDef;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->globalMesgNum:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->architecture:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->fields:Ljava/util/List;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->timeFieldOffsets:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->copy(IILjava/util/List;Ljava/util/List;)Lcom/jichi/ob/util/FitTimeFixer$FieldDef;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->globalMesgNum:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->architecture:I

    return v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/FitTimeFixer$FieldInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->fields:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->timeFieldOffsets:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IILjava/util/List;Ljava/util/List;)Lcom/jichi/ob/util/FitTimeFixer$FieldDef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/FitTimeFixer$FieldInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/jichi/ob/util/FitTimeFixer$FieldDef;"
        }
    .end annotation

    const-string v0, "fields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeFieldOffsets"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;-><init>(IILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;

    iget v1, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->globalMesgNum:I

    iget v3, p1, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->globalMesgNum:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->architecture:I

    iget v3, p1, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->architecture:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->fields:Ljava/util/List;

    iget-object v3, p1, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->fields:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->timeFieldOffsets:Ljava/util/List;

    iget-object p1, p1, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->timeFieldOffsets:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getArchitecture()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->architecture:I

    return v0
.end method

.method public final getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/FitTimeFixer$FieldInfo;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->fields:Ljava/util/List;

    return-object v0
.end method

.method public final getGlobalMesgNum()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->globalMesgNum:I

    return v0
.end method

.method public final getTimeFieldOffsets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->timeFieldOffsets:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->globalMesgNum:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->architecture:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->fields:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->timeFieldOffsets:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->globalMesgNum:I

    iget v1, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->architecture:I

    iget-object v2, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->fields:Ljava/util/List;

    iget-object v3, p0, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->timeFieldOffsets:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FieldDef(globalMesgNum="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", architecture="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeFieldOffsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;
.super Ljava/lang/Object;
.source "FitDeviceFaker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/FitDeviceFaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileIdInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;",
        "",
        "manufacturer",
        "",
        "product",
        "<init>",
        "(II)V",
        "getManufacturer",
        "()I",
        "getProduct",
        "component1",
        "component2",
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
.field private final manufacturer:I

.field private final product:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->manufacturer:I

    iput p2, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->product:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;IIILjava/lang/Object;)Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->manufacturer:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->product:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->copy(II)Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->manufacturer:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->product:I

    return v0
.end method

.method public final copy(II)Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;
    .locals 1

    new-instance v0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;

    invoke-direct {v0, p1, p2}, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;

    iget v1, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->manufacturer:I

    iget v3, p1, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->manufacturer:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->product:I

    iget p1, p1, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->product:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getManufacturer()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->manufacturer:I

    return v0
.end method

.method public final getProduct()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->product:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->manufacturer:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->product:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->manufacturer:I

    iget v1, p0, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->product:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FileIdInfo(manufacturer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", product="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

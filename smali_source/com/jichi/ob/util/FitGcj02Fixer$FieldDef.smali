.class final Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;
.super Ljava/lang/Object;
.source "FitGcj02Fixer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/util/FitGcj02Fixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FieldDef"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;",
        "",
        "number",
        "",
        "size",
        "baseType",
        "offset",
        "<init>",
        "(IIII)V",
        "getNumber",
        "()I",
        "getSize",
        "getBaseType",
        "getOffset",
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
.field private final baseType:I

.field private final number:I

.field private final offset:I

.field private final size:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->number:I

    iput p2, p0, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->size:I

    iput p3, p0, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->baseType:I

    iput p4, p0, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->offset:I

    return-void
.end method


# virtual methods
.method public final getBaseType()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->baseType:I

    return v0
.end method

.method public final getNumber()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->number:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->offset:I

    return v0
.end method

.method public final getSize()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->size:I

    return v0
.end method

.class final Lcom/jichi/ob/util/FitGcj02Fixer$Definition;
.super Ljava/lang/Object;
.source "FitGcj02Fixer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/util/FitGcj02Fixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Definition"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/jichi/ob/util/FitGcj02Fixer$Definition;",
        "",
        "littleEndian",
        "",
        "fields",
        "",
        "Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;",
        "size",
        "",
        "<init>",
        "(ZLjava/util/List;I)V",
        "getLittleEndian",
        "()Z",
        "getFields",
        "()Ljava/util/List;",
        "getSize",
        "()I",
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
.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;",
            ">;"
        }
    .end annotation
.end field

.field private final littleEndian:Z

.field private final size:I


# direct methods
.method public constructor <init>(ZLjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "fields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;->littleEndian:Z

    iput-object p2, p0, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;->fields:Ljava/util/List;

    iput p3, p0, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;->size:I

    return-void
.end method


# virtual methods
.method public final getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;->fields:Ljava/util/List;

    return-object v0
.end method

.method public final getLittleEndian()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;->littleEndian:Z

    return v0
.end method

.method public final getSize()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;->size:I

    return v0
.end method

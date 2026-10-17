.class final Lcom/jichi/ob/api/FitDeviceFaker$Def;
.super Ljava/lang/Object;
.source "FitDeviceFaker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/FitDeviceFaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Def"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0006j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR-\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0006j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/jichi/ob/api/FitDeviceFaker$Def;",
        "",
        "globalNum",
        "",
        "arch",
        "fields",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "totalSize",
        "<init>",
        "(IILjava/util/HashMap;I)V",
        "getGlobalNum",
        "()I",
        "getArch",
        "getFields",
        "()Ljava/util/HashMap;",
        "getTotalSize",
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
.field private final arch:I

.field private final fields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final globalNum:I

.field private final totalSize:I


# direct methods
.method public constructor <init>(IILjava/util/HashMap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "fields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Lcom/jichi/ob/api/FitDeviceFaker$Def;->globalNum:I

    .line 292
    iput p2, p0, Lcom/jichi/ob/api/FitDeviceFaker$Def;->arch:I

    .line 293
    iput-object p3, p0, Lcom/jichi/ob/api/FitDeviceFaker$Def;->fields:Ljava/util/HashMap;

    .line 294
    iput p4, p0, Lcom/jichi/ob/api/FitDeviceFaker$Def;->totalSize:I

    return-void
.end method


# virtual methods
.method public final getArch()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/jichi/ob/api/FitDeviceFaker$Def;->arch:I

    return v0
.end method

.method public final getFields()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/jichi/ob/api/FitDeviceFaker$Def;->fields:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getGlobalNum()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/jichi/ob/api/FitDeviceFaker$Def;->globalNum:I

    return v0
.end method

.method public final getTotalSize()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/jichi/ob/api/FitDeviceFaker$Def;->totalSize:I

    return v0
.end method

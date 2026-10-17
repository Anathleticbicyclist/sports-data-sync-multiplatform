.class public final Lcom/jichi/ob/api/MageneApi$Companion;
.super Ljava/lang/Object;
.source "MageneApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/MageneApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/jichi/ob/api/MageneApi$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "LOGIN_URL",
        "BASE",
        "PER_PAGE",
        "",
        "lastFromFitContent",
        "",
        "getLastFromFitContent",
        "()Z",
        "setLastFromFitContent",
        "(Z)V",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/jichi/ob/api/MageneApi$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastFromFitContent()Z
    .locals 1

    .line 48
    invoke-static {}, Lcom/jichi/ob/api/MageneApi;->access$getLastFromFitContent$cp()Z

    move-result v0

    return v0
.end method

.method public final setLastFromFitContent(Z)V
    .locals 0

    .line 48
    invoke-static {p1}, Lcom/jichi/ob/api/MageneApi;->access$setLastFromFitContent$cp(Z)V

    return-void
.end method

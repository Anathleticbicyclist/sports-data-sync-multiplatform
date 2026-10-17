.class public final Lcom/jichi/ob/api/BlackbirdApi$Companion;
.super Ljava/lang/Object;
.source "BlackbirdApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/BlackbirdApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/jichi/ob/api/BlackbirdApi$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "LOGIN_URL",
        "BASE",
        "PER_PAGE",
        "",
        "lastRawTrackSample",
        "getLastRawTrackSample",
        "()Ljava/lang/String;",
        "setLastRawTrackSample",
        "(Ljava/lang/String;)V",
        "lastRawKeys",
        "getLastRawKeys",
        "setLastRawKeys",
        "lastStartTime",
        "",
        "getLastStartTime",
        "()J",
        "setLastStartTime",
        "(J)V",
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

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/jichi/ob/api/BlackbirdApi$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastRawKeys()Ljava/lang/String;
    .locals 1

    .line 80
    invoke-static {}, Lcom/jichi/ob/api/BlackbirdApi;->access$getLastRawKeys$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastRawTrackSample()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-static {}, Lcom/jichi/ob/api/BlackbirdApi;->access$getLastRawTrackSample$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastStartTime()J
    .locals 2

    .line 81
    invoke-static {}, Lcom/jichi/ob/api/BlackbirdApi;->access$getLastStartTime$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setLastRawKeys(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Lcom/jichi/ob/api/BlackbirdApi;->access$setLastRawKeys$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setLastRawTrackSample(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lcom/jichi/ob/api/BlackbirdApi;->access$setLastRawTrackSample$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setLastStartTime(J)V
    .locals 0

    .line 81
    invoke-static {p1, p2}, Lcom/jichi/ob/api/BlackbirdApi;->access$setLastStartTime$cp(J)V

    return-void
.end method

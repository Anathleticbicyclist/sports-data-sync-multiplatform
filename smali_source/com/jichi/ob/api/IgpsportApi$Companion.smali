.class public final Lcom/jichi/ob/api/IgpsportApi$Companion;
.super Ljava/lang/Object;
.source "IgpsportApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/IgpsportApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/jichi/ob/api/IgpsportApi$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "LOGIN_URL",
        "LOGIN_URL_INT",
        "BASE_CN",
        "BASE_INT",
        "ACTIVITY_PATH",
        "DOWNLOAD_PATH",
        "PER_PAGE",
        "",
        "FIT_EPOCH",
        "",
        "base",
        "intl",
        "",
        "activityUrl",
        "downloadUrl",
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/jichi/ob/api/IgpsportApi$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$activityUrl(Lcom/jichi/ob/api/IgpsportApi$Companion;Z)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/IgpsportApi$Companion;->activityUrl(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$base(Lcom/jichi/ob/api/IgpsportApi$Companion;Z)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/IgpsportApi$Companion;->base(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadUrl(Lcom/jichi/ob/api/IgpsportApi$Companion;Z)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/IgpsportApi$Companion;->downloadUrl(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final activityUrl(Z)Ljava/lang/String;
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/IgpsportApi$Companion;->base(Z)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/web-gateway/web-analyze/activity/queryMyActivity"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final base(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 46
    const-string p1, "https://prod.en.igpsport.com/service"

    return-object p1

    :cond_0
    const-string p1, "https://prod.zh.igpsport.com/service"

    return-object p1
.end method

.method private final downloadUrl(Z)Ljava/lang/String;
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/IgpsportApi$Companion;->base(Z)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/web-gateway/web-analyze/activity/getDownloadUrl"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

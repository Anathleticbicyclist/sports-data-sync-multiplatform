.class public final Lcom/jichi/ob/api/WahooApi$Companion;
.super Ljava/lang/Object;
.source "WahooApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/WahooApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/jichi/ob/api/WahooApi$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "API_BASE",
        "AUTHORIZE_URL",
        "TOKEN_URL",
        "REDIRECT_URI",
        "SCOPES",
        "UA",
        "BUILTIN_CLIENT_ID",
        "getBUILTIN_CLIENT_ID",
        "()Ljava/lang/String;",
        "BUILTIN_CLIENT_SECRET",
        "getBUILTIN_CLIENT_SECRET",
        "isBuiltinConfigured",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/jichi/ob/api/WahooApi$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBUILTIN_CLIENT_ID()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {}, Lcom/jichi/ob/api/WahooApi;->access$getBUILTIN_CLIENT_ID$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBUILTIN_CLIENT_SECRET()Ljava/lang/String;
    .locals 1

    .line 42
    invoke-static {}, Lcom/jichi/ob/api/WahooApi;->access$getBUILTIN_CLIENT_SECRET$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isBuiltinConfigured()Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/jichi/ob/api/WahooApi$Companion;->getBUILTIN_CLIENT_ID()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/jichi/ob/api/WahooApi$Companion;->getBUILTIN_CLIENT_SECRET()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

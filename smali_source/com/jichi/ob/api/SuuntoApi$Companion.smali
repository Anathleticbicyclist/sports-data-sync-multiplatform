.class public final Lcom/jichi/ob/api/SuuntoApi$Companion;
.super Ljava/lang/Object;
.source "SuuntoApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/SuuntoApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0015\u001a\u00020\u0016J\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000c\"\u0004\u0008\u0019\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/jichi/ob/api/SuuntoApi$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "API_BASE",
        "AUTH_BASE",
        "REDIRECT_URI",
        "UA",
        "BUILTIN_CLIENT_ID",
        "getBUILTIN_CLIENT_ID",
        "()Ljava/lang/String;",
        "setBUILTIN_CLIENT_ID",
        "(Ljava/lang/String;)V",
        "BUILTIN_CLIENT_SECRET",
        "getBUILTIN_CLIENT_SECRET",
        "setBUILTIN_CLIENT_SECRET",
        "BUILTIN_SUBSCRIPTION_KEY",
        "getBUILTIN_SUBSCRIPTION_KEY",
        "setBUILTIN_SUBSCRIPTION_KEY",
        "isBuiltinConfigured",
        "",
        "lastCodeVerifier",
        "getLastCodeVerifier",
        "setLastCodeVerifier",
        "newPkce",
        "Lkotlin/Pair;",
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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/jichi/ob/api/SuuntoApi$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBUILTIN_CLIENT_ID()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-static {}, Lcom/jichi/ob/api/SuuntoApi;->access$getBUILTIN_CLIENT_ID$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBUILTIN_CLIENT_SECRET()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {}, Lcom/jichi/ob/api/SuuntoApi;->access$getBUILTIN_CLIENT_SECRET$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBUILTIN_SUBSCRIPTION_KEY()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-static {}, Lcom/jichi/ob/api/SuuntoApi;->access$getBUILTIN_SUBSCRIPTION_KEY$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastCodeVerifier()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-static {}, Lcom/jichi/ob/api/SuuntoApi;->access$getLastCodeVerifier$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isBuiltinConfigured()Z
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/jichi/ob/api/SuuntoApi$Companion;->getBUILTIN_CLIENT_ID()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/jichi/ob/api/SuuntoApi$Companion;->getBUILTIN_CLIENT_SECRET()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/jichi/ob/api/SuuntoApi$Companion;->getBUILTIN_SUBSCRIPTION_KEY()Ljava/lang/String;

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

.method public final newPkce()Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x40

    .line 65
    new-array v0, v0, [B

    .line 66
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v1, 0xb

    .line 67
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "getBytes(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 69
    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final setBUILTIN_CLIENT_ID(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Lcom/jichi/ob/api/SuuntoApi;->access$setBUILTIN_CLIENT_ID$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setBUILTIN_CLIENT_SECRET(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lcom/jichi/ob/api/SuuntoApi;->access$setBUILTIN_CLIENT_SECRET$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setBUILTIN_SUBSCRIPTION_KEY(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Lcom/jichi/ob/api/SuuntoApi;->access$setBUILTIN_SUBSCRIPTION_KEY$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setLastCodeVerifier(Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-static {p1}, Lcom/jichi/ob/api/SuuntoApi;->access$setLastCodeVerifier$cp(Ljava/lang/String;)V

    return-void
.end method

.class public final Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;
.super Ljava/lang/Object;
.source "GarminOAuthHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/GarminOAuthHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OAuth2Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGarminOAuthHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GarminOAuthHelper.kt\ncom/jichi/ob/api/GarminOAuthHelper$OAuth2Token\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,337:1\n1#2:338\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 (2\u00020\u0001:\u0001(B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0019J\u0006\u0010\u001b\u001a\u00020\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003JI\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010#\u001a\u00020\u00192\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010%\u001a\u00020&H\u00d6\u0001J\t\u0010\'\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\rR\u0011\u0010\u0014\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010R\u0011\u0010\u0016\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010\u00a8\u0006)"
    }
    d2 = {
        "Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;",
        "",
        "accessToken",
        "",
        "refreshToken",
        "expiresIn",
        "",
        "refreshExpiresIn",
        "scope",
        "jti",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V",
        "getAccessToken",
        "()Ljava/lang/String;",
        "getRefreshToken",
        "getExpiresIn",
        "()J",
        "getRefreshExpiresIn",
        "getScope",
        "getJti",
        "expiresAt",
        "getExpiresAt",
        "refreshExpiresAt",
        "getRefreshExpiresAt",
        "isExpired",
        "",
        "isRefreshExpired",
        "toJson",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token$Companion;


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final expiresAt:J

.field private final expiresIn:J

.field private final jti:Ljava/lang/String;

.field private final refreshExpiresAt:J

.field private final refreshExpiresIn:J

.field private final refreshToken:Ljava/lang/String;

.field private final scope:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->Companion:Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->accessToken:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshToken:Ljava/lang/String;

    .line 34
    iput-wide p3, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->expiresIn:J

    .line 35
    iput-wide p5, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshExpiresIn:J

    .line 36
    iput-object p7, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->scope:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->jti:Ljava/lang/String;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const/16 p7, 0x3e8

    int-to-long p7, p7

    div-long/2addr p1, p7

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->expiresAt:J

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    div-long/2addr p1, p7

    add-long/2addr p1, p5

    iput-wide p1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshExpiresAt:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x10

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p7, v0

    :cond_0
    and-int/lit8 p9, p9, 0x20

    if-eqz p9, :cond_1

    move-object p9, v0

    goto :goto_0

    :cond_1
    move-object p9, p8

    :goto_0
    move-object p8, p7

    move-wide p6, p5

    move-wide p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 31
    invoke-direct/range {p1 .. p9}, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    iget-object p1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->accessToken:Ljava/lang/String;

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    iget-object p2, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshToken:Ljava/lang/String;

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    iget-wide p3, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->expiresIn:J

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    iget-wide p5, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshExpiresIn:J

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    iget-object p7, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->scope:Ljava/lang/String;

    :cond_4
    and-int/lit8 p9, p9, 0x20

    if-eqz p9, :cond_5

    iget-object p8, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->jti:Ljava/lang/String;

    :cond_5
    move-object p9, p7

    move-object p10, p8

    move-wide p7, p5

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p10}, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->copy(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->expiresIn:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshExpiresIn:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->jti:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;
    .locals 10

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->accessToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->accessToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->expiresIn:J

    iget-wide v5, p1, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->expiresIn:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshExpiresIn:J

    iget-wide v5, p1, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshExpiresIn:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->scope:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->scope:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->jti:Ljava/lang/String;

    iget-object p1, p1, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->jti:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiresAt()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->expiresAt:J

    return-wide v0
.end method

.method public final getExpiresIn()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->expiresIn:J

    return-wide v0
.end method

.method public final getJti()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->jti:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshExpiresAt()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshExpiresAt:J

    return-wide v0
.end method

.method public final getRefreshExpiresIn()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshExpiresIn:J

    return-wide v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->accessToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->expiresIn:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshExpiresIn:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->scope:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->jti:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isExpired()Z
    .locals 6

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->expiresAt:J

    const/16 v4, 0x3c

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isRefreshExpired()Z
    .locals 6

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshExpiresAt:J

    const/16 v4, 0x3c

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 4

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v1, "refresh_token"

    iget-object v2, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "expires_in"

    iget-wide v2, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->expiresIn:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    const-string v1, "refresh_token_expires_in"

    iget-wide v2, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshExpiresIn:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    const-string v1, "expires_at"

    iget-wide v2, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->expiresAt:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 51
    const-string v1, "refresh_expires_at"

    iget-wide v2, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshExpiresAt:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 52
    iget-object v1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->scope:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->jti:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "jti"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->accessToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshToken:Ljava/lang/String;

    iget-wide v2, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->expiresIn:J

    iget-wide v4, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->refreshExpiresIn:J

    iget-object v6, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->scope:Ljava/lang/String;

    iget-object v7, p0, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->jti:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OAuth2Token(accessToken="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", refreshToken="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refreshExpiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jti="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/jichi/ob/api/GarminApi$GarminSession;
.super Ljava/lang/Object;
.source "GarminApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/GarminApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GarminSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/GarminApi$GarminSession$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u001c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0082\u0008\u0018\u0000 +2\u00020\u0001:\u0001+B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0006\u0010\u001a\u001a\u00020\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\tH\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003Jc\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010(\u001a\u00020)H\u00d6\u0001J\t\u0010*\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010\u00a8\u0006,"
    }
    d2 = {
        "Lcom/jichi/ob/api/GarminApi$GarminSession;",
        "",
        "cookies",
        "",
        "csrf",
        "diToken",
        "diRefreshToken",
        "diClientId",
        "diExpiresAt",
        "",
        "email",
        "oauthToken",
        "oauthTokenSecret",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getCookies",
        "()Ljava/lang/String;",
        "getCsrf",
        "getDiToken",
        "getDiRefreshToken",
        "getDiClientId",
        "getDiExpiresAt",
        "()J",
        "getEmail",
        "getOauthToken",
        "getOauthTokenSecret",
        "toJson",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
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
.field public static final Companion:Lcom/jichi/ob/api/GarminApi$GarminSession$Companion;


# instance fields
.field private final cookies:Ljava/lang/String;

.field private final csrf:Ljava/lang/String;

.field private final diClientId:Ljava/lang/String;

.field private final diExpiresAt:J

.field private final diRefreshToken:Ljava/lang/String;

.field private final diToken:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final oauthToken:Ljava/lang/String;

.field private final oauthTokenSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/api/GarminApi$GarminSession$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/GarminApi$GarminSession$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/GarminApi$GarminSession;->Companion:Lcom/jichi/ob/api/GarminApi$GarminSession$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cookies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "csrf"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diRefreshToken"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diClientId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oauthToken"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oauthTokenSecret"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->cookies:Ljava/lang/String;

    .line 673
    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->csrf:Ljava/lang/String;

    .line 674
    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diToken:Ljava/lang/String;

    .line 675
    iput-object p4, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diRefreshToken:Ljava/lang/String;

    .line 676
    iput-object p5, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diClientId:Ljava/lang/String;

    .line 677
    iput-wide p6, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diExpiresAt:J

    .line 678
    iput-object p8, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->email:Ljava/lang/String;

    .line 680
    iput-object p9, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthToken:Ljava/lang/String;

    .line 681
    iput-object p10, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthTokenSecret:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x4

    .line 671
    const-string v0, ""

    if-eqz p12, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_2

    move-object p5, v0

    :cond_2
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_3

    const-wide/16 p6, 0x0

    :cond_3
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_4

    move-object p8, v0

    :cond_4
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_5

    move-object p9, v0

    :cond_5
    and-int/lit16 p11, p11, 0x100

    if-eqz p11, :cond_6

    move-object p11, v0

    goto :goto_0

    :cond_6
    move-object p11, p10

    :goto_0
    move-object p10, p9

    move-object p9, p8

    move-wide p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p11}, Lcom/jichi/ob/api/GarminApi$GarminSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/api/GarminApi$GarminSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jichi/ob/api/GarminApi$GarminSession;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->cookies:Ljava/lang/String;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    iget-object p2, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->csrf:Ljava/lang/String;

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    iget-object p3, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diToken:Ljava/lang/String;

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    iget-object p4, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diRefreshToken:Ljava/lang/String;

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    iget-object p5, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diClientId:Ljava/lang/String;

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    iget-wide p6, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diExpiresAt:J

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    iget-object p8, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->email:Ljava/lang/String;

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    iget-object p9, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthToken:Ljava/lang/String;

    :cond_7
    and-int/lit16 p11, p11, 0x100

    if-eqz p11, :cond_8

    iget-object p10, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthTokenSecret:Ljava/lang/String;

    :cond_8
    move-object p11, p9

    move-object p12, p10

    move-object p10, p8

    move-wide p8, p6

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p12}, Lcom/jichi/ob/api/GarminApi$GarminSession;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->cookies:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->csrf:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diClientId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diExpiresAt:J

    return-wide v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jichi/ob/api/GarminApi$GarminSession;
    .locals 12

    const-string v0, "cookies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "csrf"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diRefreshToken"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diClientId"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oauthToken"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oauthTokenSecret"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/jichi/ob/api/GarminApi$GarminSession;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v11}, Lcom/jichi/ob/api/GarminApi$GarminSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/api/GarminApi$GarminSession;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/api/GarminApi$GarminSession;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->cookies:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/api/GarminApi$GarminSession;->cookies:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->csrf:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/api/GarminApi$GarminSession;->csrf:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/api/GarminApi$GarminSession;->diToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diRefreshToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/api/GarminApi$GarminSession;->diRefreshToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diClientId:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/api/GarminApi$GarminSession;->diClientId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diExpiresAt:J

    iget-wide v5, p1, Lcom/jichi/ob/api/GarminApi$GarminSession;->diExpiresAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/api/GarminApi$GarminSession;->email:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthTokenSecret:Ljava/lang/String;

    iget-object p1, p1, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthTokenSecret:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCookies()Ljava/lang/String;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->cookies:Ljava/lang/String;

    return-object v0
.end method

.method public final getCsrf()Ljava/lang/String;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->csrf:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiClientId()Ljava/lang/String;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diClientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiExpiresAt()J
    .locals 2

    .line 677
    iget-wide v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diExpiresAt:J

    return-wide v0
.end method

.method public final getDiRefreshToken()Ljava/lang/String;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiToken()Ljava/lang/String;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getOauthToken()Ljava/lang/String;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getOauthTokenSecret()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->cookies:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->csrf:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diRefreshToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diClientId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diExpiresAt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->email:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthTokenSecret:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 5

    .line 683
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 684
    const-string v1, "cookies"

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->cookies:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    const-string v1, "csrf"

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->csrf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diToken:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "di_token"

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diRefreshToken:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "di_refresh_token"

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diRefreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diClientId:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "di_client_id"

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diClientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    :cond_2
    iget-wide v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diExpiresAt:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    const-string v3, "di_expires_at"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 690
    :cond_3
    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->email:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "email"

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    :cond_4
    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthToken:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "oauth_token"

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    :cond_5
    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthTokenSecret:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "oauth_token_secret"

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthTokenSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->cookies:Ljava/lang/String;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->csrf:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diRefreshToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diClientId:Ljava/lang/String;

    iget-wide v5, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->diExpiresAt:J

    iget-object v7, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->email:Ljava/lang/String;

    iget-object v8, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthToken:Ljava/lang/String;

    iget-object v9, p0, Lcom/jichi/ob/api/GarminApi$GarminSession;->oauthTokenSecret:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "GarminSession(cookies="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", csrf="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diRefreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diClientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diExpiresAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oauthToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oauthTokenSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

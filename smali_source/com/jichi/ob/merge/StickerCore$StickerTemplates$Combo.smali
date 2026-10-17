.class public final Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;
.super Ljava/lang/Object;
.source "StickerCore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/merge/StickerCore$StickerTemplates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Combo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u000bH\u00c6\u0003J;\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u000b2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010 \u001a\u00020!H\u00d6\u0001J\t\u0010\"\u001a\u00020#H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006$"
    }
    d2 = {
        "Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;",
        "",
        "bg",
        "Lcom/jichi/ob/merge/StickerCore$StickerBg;",
        "track",
        "Lcom/jichi/ob/merge/StickerCore$StickerTrack;",
        "layout",
        "Lcom/jichi/ob/merge/StickerCore$StickerLayout;",
        "text",
        "Lcom/jichi/ob/merge/StickerCore$StickerText;",
        "glow",
        "",
        "<init>",
        "(Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V",
        "getBg",
        "()Lcom/jichi/ob/merge/StickerCore$StickerBg;",
        "getTrack",
        "()Lcom/jichi/ob/merge/StickerCore$StickerTrack;",
        "getLayout",
        "()Lcom/jichi/ob/merge/StickerCore$StickerLayout;",
        "getText",
        "()Lcom/jichi/ob/merge/StickerCore$StickerText;",
        "getGlow",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final bg:Lcom/jichi/ob/merge/StickerCore$StickerBg;

.field private final glow:Z

.field private final layout:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

.field private final text:Lcom/jichi/ob/merge/StickerCore$StickerText;

.field private final track:Lcom/jichi/ob/merge/StickerCore$StickerTrack;


# direct methods
.method public constructor <init>(Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V
    .locals 1

    const-string v0, "bg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "track"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->bg:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    .line 405
    iput-object p2, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->track:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    .line 406
    iput-object p3, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->layout:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    .line 407
    iput-object p4, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->text:Lcom/jichi/ob/merge/StickerCore$StickerText;

    .line 408
    iput-boolean p5, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->glow:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 403
    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;-><init>(Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;ZILjava/lang/Object;)Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->bg:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->track:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->layout:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->text:Lcom/jichi/ob/merge/StickerCore$StickerText;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-boolean p5, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->glow:Z

    :cond_4
    move-object p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->copy(Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/jichi/ob/merge/StickerCore$StickerBg;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->bg:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    return-object v0
.end method

.method public final component2()Lcom/jichi/ob/merge/StickerCore$StickerTrack;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->track:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    return-object v0
.end method

.method public final component3()Lcom/jichi/ob/merge/StickerCore$StickerLayout;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->layout:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    return-object v0
.end method

.method public final component4()Lcom/jichi/ob/merge/StickerCore$StickerText;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->text:Lcom/jichi/ob/merge/StickerCore$StickerText;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->glow:Z

    return v0
.end method

.method public final copy(Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;
    .locals 7

    const-string v0, "bg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "track"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;-><init>(Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;

    iget-object v1, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->bg:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    iget-object v3, p1, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->bg:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->track:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    iget-object v3, p1, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->track:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->layout:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    iget-object v3, p1, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->layout:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->text:Lcom/jichi/ob/merge/StickerCore$StickerText;

    iget-object v3, p1, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->text:Lcom/jichi/ob/merge/StickerCore$StickerText;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->glow:Z

    iget-boolean p1, p1, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->glow:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBg()Lcom/jichi/ob/merge/StickerCore$StickerBg;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->bg:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    return-object v0
.end method

.method public final getGlow()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->glow:Z

    return v0
.end method

.method public final getLayout()Lcom/jichi/ob/merge/StickerCore$StickerLayout;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->layout:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    return-object v0
.end method

.method public final getText()Lcom/jichi/ob/merge/StickerCore$StickerText;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->text:Lcom/jichi/ob/merge/StickerCore$StickerText;

    return-object v0
.end method

.method public final getTrack()Lcom/jichi/ob/merge/StickerCore$StickerTrack;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->track:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->bg:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$StickerBg;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->track:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    invoke-virtual {v1}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->layout:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    invoke-virtual {v1}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->text:Lcom/jichi/ob/merge/StickerCore$StickerText;

    invoke-virtual {v1}, Lcom/jichi/ob/merge/StickerCore$StickerText;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->glow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->bg:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    iget-object v1, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->track:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    iget-object v2, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->layout:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    iget-object v3, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->text:Lcom/jichi/ob/merge/StickerCore$StickerText;

    iget-boolean v4, p0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;->glow:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Combo(bg="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", track="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", glow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

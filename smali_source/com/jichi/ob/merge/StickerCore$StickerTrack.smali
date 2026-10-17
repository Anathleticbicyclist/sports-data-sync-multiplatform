.class public final enum Lcom/jichi/ob/merge/StickerCore$StickerTrack;
.super Ljava/lang/Enum;
.source "StickerCore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/merge/StickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StickerTrack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jichi/ob/merge/StickerCore$StickerTrack;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/jichi/ob/merge/StickerCore$StickerTrack;",
        "",
        "key",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getKey",
        "()Ljava/lang/String;",
        "ORANGE_GRAD",
        "WHITE",
        "BLACK_FINE",
        "GRAY_FINE",
        "NEON",
        "HEAT",
        "ICE_3D",
        "PHANTOM",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/jichi/ob/merge/StickerCore$StickerTrack;

.field public static final enum BLACK_FINE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

.field public static final enum GRAY_FINE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

.field public static final enum HEAT:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

.field public static final enum ICE_3D:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

.field public static final enum NEON:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

.field public static final enum ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

.field public static final enum PHANTOM:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

.field public static final enum WHITE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/jichi/ob/merge/StickerCore$StickerTrack;
    .locals 8

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v1, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v2, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->BLACK_FINE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v3, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->GRAY_FINE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v4, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->NEON:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v5, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->HEAT:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v6, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ICE_3D:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v7, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->PHANTOM:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    filled-new-array/range {v0 .. v7}, [Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 336
    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u6a59\u7130"

    const-string v3, "ORANGE_GRAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    const/4 v1, 0x1

    const-string/jumbo v2, "\u7eaf\u767d"

    const-string v3, "WHITE"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    const/4 v1, 0x2

    const-string/jumbo v2, "\u9ed1\u7ec6"

    const-string v3, "BLACK_FINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->BLACK_FINE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    const/4 v1, 0x3

    const-string/jumbo v2, "\u7070\u7ec6"

    const-string v3, "GRAY_FINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->GRAY_FINE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    .line 337
    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    const/4 v1, 0x4

    const-string/jumbo v2, "\u9713\u8679"

    const-string v3, "NEON"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->NEON:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    const/4 v1, 0x5

    const-string/jumbo v2, "\u70ed\u529b"

    const-string v3, "HEAT"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->HEAT:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    const/4 v1, 0x6

    const-string/jumbo v2, "\u51b0\u84dd3D"

    const-string v3, "ICE_3D"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ICE_3D:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    const/4 v1, 0x7

    const-string/jumbo v2, "\u5149\u7ed8"

    const-string v3, "PHANTOM"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->PHANTOM:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    invoke-static {}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->$values()[Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->$VALUES:[Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->key:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/jichi/ob/merge/StickerCore$StickerTrack;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jichi/ob/merge/StickerCore$StickerTrack;
    .locals 1

    const-class v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    return-object p0
.end method

.method public static values()[Lcom/jichi/ob/merge/StickerCore$StickerTrack;
    .locals 1

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->$VALUES:[Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->key:Ljava/lang/String;

    return-object v0
.end method

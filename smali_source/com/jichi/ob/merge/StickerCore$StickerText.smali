.class public final enum Lcom/jichi/ob/merge/StickerCore$StickerText;
.super Ljava/lang/Enum;
.source "StickerCore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/merge/StickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StickerText"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jichi/ob/merge/StickerCore$StickerText;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/jichi/ob/merge/StickerCore$StickerText;",
        "",
        "key",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getKey",
        "()Ljava/lang/String;",
        "WHITE",
        "BLACK",
        "ORANGE",
        "SKY",
        "NEON_PINK",
        "CREAM",
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

.field private static final synthetic $VALUES:[Lcom/jichi/ob/merge/StickerCore$StickerText;

.field public static final enum BLACK:Lcom/jichi/ob/merge/StickerCore$StickerText;

.field public static final enum CREAM:Lcom/jichi/ob/merge/StickerCore$StickerText;

.field public static final enum NEON_PINK:Lcom/jichi/ob/merge/StickerCore$StickerText;

.field public static final enum ORANGE:Lcom/jichi/ob/merge/StickerCore$StickerText;

.field public static final enum SKY:Lcom/jichi/ob/merge/StickerCore$StickerText;

.field public static final enum WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/jichi/ob/merge/StickerCore$StickerText;
    .locals 6

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    sget-object v1, Lcom/jichi/ob/merge/StickerCore$StickerText;->BLACK:Lcom/jichi/ob/merge/StickerCore$StickerText;

    sget-object v2, Lcom/jichi/ob/merge/StickerCore$StickerText;->ORANGE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    sget-object v3, Lcom/jichi/ob/merge/StickerCore$StickerText;->SKY:Lcom/jichi/ob/merge/StickerCore$StickerText;

    sget-object v4, Lcom/jichi/ob/merge/StickerCore$StickerText;->NEON_PINK:Lcom/jichi/ob/merge/StickerCore$StickerText;

    sget-object v5, Lcom/jichi/ob/merge/StickerCore$StickerText;->CREAM:Lcom/jichi/ob/merge/StickerCore$StickerText;

    filled-new-array/range {v0 .. v5}, [Lcom/jichi/ob/merge/StickerCore$StickerText;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 348
    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u767d"

    const-string v3, "WHITE"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerText;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/4 v1, 0x1

    const-string/jumbo v2, "\u9ed1"

    const-string v3, "BLACK"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerText;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerText;->BLACK:Lcom/jichi/ob/merge/StickerCore$StickerText;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/4 v1, 0x2

    const-string/jumbo v2, "\u6a59"

    const-string v3, "ORANGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerText;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerText;->ORANGE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/4 v1, 0x3

    const-string/jumbo v2, "\u5929\u84dd"

    const-string v3, "SKY"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerText;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerText;->SKY:Lcom/jichi/ob/merge/StickerCore$StickerText;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/4 v1, 0x4

    const-string/jumbo v2, "\u9713\u8679"

    const-string v3, "NEON_PINK"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerText;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerText;->NEON_PINK:Lcom/jichi/ob/merge/StickerCore$StickerText;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/4 v1, 0x5

    const-string/jumbo v2, "\u7c73\u767d"

    const-string v3, "CREAM"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerText;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerText;->CREAM:Lcom/jichi/ob/merge/StickerCore$StickerText;

    invoke-static {}, Lcom/jichi/ob/merge/StickerCore$StickerText;->$values()[Lcom/jichi/ob/merge/StickerCore$StickerText;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerText;->$VALUES:[Lcom/jichi/ob/merge/StickerCore$StickerText;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerText;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 347
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/jichi/ob/merge/StickerCore$StickerText;->key:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/jichi/ob/merge/StickerCore$StickerText;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerText;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jichi/ob/merge/StickerCore$StickerText;
    .locals 1

    const-class v0, Lcom/jichi/ob/merge/StickerCore$StickerText;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jichi/ob/merge/StickerCore$StickerText;

    return-object p0
.end method

.method public static values()[Lcom/jichi/ob/merge/StickerCore$StickerText;
    .locals 1

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerText;->$VALUES:[Lcom/jichi/ob/merge/StickerCore$StickerText;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jichi/ob/merge/StickerCore$StickerText;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerText;->key:Ljava/lang/String;

    return-object v0
.end method

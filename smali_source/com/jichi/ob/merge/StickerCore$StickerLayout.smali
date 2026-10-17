.class public final enum Lcom/jichi/ob/merge/StickerCore$StickerLayout;
.super Ljava/lang/Enum;
.source "StickerCore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/merge/StickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StickerLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jichi/ob/merge/StickerCore$StickerLayout;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/jichi/ob/merge/StickerCore$StickerLayout;",
        "",
        "key",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getKey",
        "()Ljava/lang/String;",
        "TRIPLE",
        "CORNER",
        "GRID",
        "BIG",
        "DUAL",
        "BAR",
        "POSTER",
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

.field private static final synthetic $VALUES:[Lcom/jichi/ob/merge/StickerCore$StickerLayout;

.field public static final enum BAR:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

.field public static final enum BIG:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

.field public static final enum CORNER:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

.field public static final enum DUAL:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

.field public static final enum GRID:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

.field public static final enum POSTER:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

.field public static final enum TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/jichi/ob/merge/StickerCore$StickerLayout;
    .locals 7

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v1, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->CORNER:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v2, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->GRID:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v3, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->BIG:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v4, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->DUAL:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v5, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->BAR:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v6, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->POSTER:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    filled-new-array/range {v0 .. v6}, [Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 342
    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u4e09\u8fde\u6392"

    const-string v3, "TRIPLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    const/4 v1, 0x1

    const-string/jumbo v2, "\u89d2\u6807"

    const-string v3, "CORNER"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->CORNER:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    const/4 v1, 0x2

    const-string/jumbo v2, "\u516d\u5bab\u683c"

    const-string v3, "GRID"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->GRID:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    const/4 v1, 0x3

    const-string/jumbo v2, "\u7ad6\u6392\u5927\u5b57"

    const-string v3, "BIG"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->BIG:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    .line 343
    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    const/4 v1, 0x4

    const-string/jumbo v2, "\u5bf9\u6bd4\u5361"

    const-string v3, "DUAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->DUAL:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    const/4 v1, 0x5

    const-string/jumbo v2, "\u5e95\u90e8\u6761"

    const-string v3, "BAR"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->BAR:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    const/4 v1, 0x6

    const-string/jumbo v2, "\u6d77\u62a5\u5927\u5b57"

    const-string v3, "POSTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->POSTER:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    invoke-static {}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->$values()[Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->$VALUES:[Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->key:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/jichi/ob/merge/StickerCore$StickerLayout;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jichi/ob/merge/StickerCore$StickerLayout;
    .locals 1

    const-class v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    return-object p0
.end method

.method public static values()[Lcom/jichi/ob/merge/StickerCore$StickerLayout;
    .locals 1

    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->$VALUES:[Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->key:Ljava/lang/String;

    return-object v0
.end method

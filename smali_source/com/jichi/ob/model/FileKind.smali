.class public final enum Lcom/jichi/ob/model/FileKind;
.super Ljava/lang/Enum;
.source "Activity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jichi/ob/model/FileKind;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/jichi/ob/model/FileKind;",
        "",
        "ext",
        "",
        "displayName",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getExt",
        "()Ljava/lang/String;",
        "getDisplayName",
        "FIT",
        "GPX",
        "UNKNOWN",
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

.field private static final synthetic $VALUES:[Lcom/jichi/ob/model/FileKind;

.field public static final enum FIT:Lcom/jichi/ob/model/FileKind;

.field public static final enum GPX:Lcom/jichi/ob/model/FileKind;

.field public static final enum UNKNOWN:Lcom/jichi/ob/model/FileKind;


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final ext:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/jichi/ob/model/FileKind;
    .locals 3

    sget-object v0, Lcom/jichi/ob/model/FileKind;->FIT:Lcom/jichi/ob/model/FileKind;

    sget-object v1, Lcom/jichi/ob/model/FileKind;->GPX:Lcom/jichi/ob/model/FileKind;

    sget-object v2, Lcom/jichi/ob/model/FileKind;->UNKNOWN:Lcom/jichi/ob/model/FileKind;

    filled-new-array {v0, v1, v2}, [Lcom/jichi/ob/model/FileKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 79
    new-instance v0, Lcom/jichi/ob/model/FileKind;

    const/4 v1, 0x0

    const-string v2, "fit"

    const-string v3, "FIT"

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/jichi/ob/model/FileKind;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/model/FileKind;->FIT:Lcom/jichi/ob/model/FileKind;

    .line 80
    new-instance v0, Lcom/jichi/ob/model/FileKind;

    const/4 v1, 0x1

    const-string v2, "gpx"

    const-string v3, "GPX"

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/jichi/ob/model/FileKind;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/model/FileKind;->GPX:Lcom/jichi/ob/model/FileKind;

    .line 81
    new-instance v0, Lcom/jichi/ob/model/FileKind;

    const-string v1, ""

    const-string/jumbo v2, "\u672a\u77e5"

    const-string v3, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/jichi/ob/model/FileKind;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/model/FileKind;->UNKNOWN:Lcom/jichi/ob/model/FileKind;

    invoke-static {}, Lcom/jichi/ob/model/FileKind;->$values()[Lcom/jichi/ob/model/FileKind;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/model/FileKind;->$VALUES:[Lcom/jichi/ob/model/FileKind;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/model/FileKind;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/jichi/ob/model/FileKind;->ext:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/model/FileKind;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/jichi/ob/model/FileKind;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/jichi/ob/model/FileKind;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jichi/ob/model/FileKind;
    .locals 1

    const-class v0, Lcom/jichi/ob/model/FileKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jichi/ob/model/FileKind;

    return-object p0
.end method

.method public static values()[Lcom/jichi/ob/model/FileKind;
    .locals 1

    sget-object v0, Lcom/jichi/ob/model/FileKind;->$VALUES:[Lcom/jichi/ob/model/FileKind;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jichi/ob/model/FileKind;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/jichi/ob/model/FileKind;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getExt()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/jichi/ob/model/FileKind;->ext:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcom/jichi/bikecomputer/model/SportType;
.super Ljava/lang/Enum;
.source "SportType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jichi/bikecomputer/model/SportType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jichi/bikecomputer/model/SportType;

.field public static final enum CYCLING:Lcom/jichi/bikecomputer/model/SportType;

.field public static final enum RUNNING:Lcom/jichi/bikecomputer/model/SportType;

.field public static final enum WALKING:Lcom/jichi/bikecomputer/model/SportType;


# instance fields
.field public final fitSport:I

.field public final label:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/jichi/bikecomputer/model/SportType;
    .locals 3

    .line 6
    sget-object v0, Lcom/jichi/bikecomputer/model/SportType;->CYCLING:Lcom/jichi/bikecomputer/model/SportType;

    sget-object v1, Lcom/jichi/bikecomputer/model/SportType;->RUNNING:Lcom/jichi/bikecomputer/model/SportType;

    sget-object v2, Lcom/jichi/bikecomputer/model/SportType;->WALKING:Lcom/jichi/bikecomputer/model/SportType;

    filled-new-array {v0, v1, v2}, [Lcom/jichi/bikecomputer/model/SportType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/jichi/bikecomputer/model/SportType;

    const-string v1, "\u9a91\u884c"

    const-string v2, "CYCLING"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/jichi/bikecomputer/model/SportType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/jichi/bikecomputer/model/SportType;->CYCLING:Lcom/jichi/bikecomputer/model/SportType;

    .line 8
    new-instance v0, Lcom/jichi/bikecomputer/model/SportType;

    const/4 v1, 0x1

    const-string v2, "\u8dd1\u6b65"

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/jichi/bikecomputer/model/SportType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/jichi/bikecomputer/model/SportType;->RUNNING:Lcom/jichi/bikecomputer/model/SportType;

    .line 9
    new-instance v0, Lcom/jichi/bikecomputer/model/SportType;

    const/16 v1, 0xb

    const-string v2, "\u5f92\u6b65"

    const-string v3, "WALKING"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/jichi/bikecomputer/model/SportType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/jichi/bikecomputer/model/SportType;->WALKING:Lcom/jichi/bikecomputer/model/SportType;

    .line 6
    invoke-static {}, Lcom/jichi/bikecomputer/model/SportType;->$values()[Lcom/jichi/bikecomputer/model/SportType;

    move-result-object v0

    sput-object v0, Lcom/jichi/bikecomputer/model/SportType;->$VALUES:[Lcom/jichi/bikecomputer/model/SportType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/jichi/bikecomputer/model/SportType;->fitSport:I

    .line 16
    iput-object p4, p0, Lcom/jichi/bikecomputer/model/SportType;->label:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jichi/bikecomputer/model/SportType;
    .locals 1

    .line 6
    const-class v0, Lcom/jichi/bikecomputer/model/SportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jichi/bikecomputer/model/SportType;

    return-object p0
.end method

.method public static values()[Lcom/jichi/bikecomputer/model/SportType;
    .locals 1

    .line 6
    sget-object v0, Lcom/jichi/bikecomputer/model/SportType;->$VALUES:[Lcom/jichi/bikecomputer/model/SportType;

    invoke-virtual {v0}, [Lcom/jichi/bikecomputer/model/SportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jichi/bikecomputer/model/SportType;

    return-object v0
.end method

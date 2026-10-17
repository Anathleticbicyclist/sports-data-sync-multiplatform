.class public final Lcom/jichi/ob/MergeTrial;
.super Ljava/lang/Object;
.source "MergeTrial.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\rR\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/jichi/ob/MergeTrial;",
        "",
        "<init>",
        "()V",
        "DEADLINE",
        "",
        "getDEADLINE",
        "()J",
        "DEADLINE$delegate",
        "Lkotlin/Lazy;",
        "isAvailable",
        "",
        "remainingDays",
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


# static fields
.field private static final DEADLINE$delegate:Lkotlin/Lazy;

.field public static final INSTANCE:Lcom/jichi/ob/MergeTrial;


# direct methods
.method public static synthetic $r8$lambda$eN61lG_4NEXHWApjMUThGQyWLc0()J
    .locals 2

    invoke-static {}, Lcom/jichi/ob/MergeTrial;->DEADLINE_delegate$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jichi/ob/MergeTrial;

    invoke-direct {v0}, Lcom/jichi/ob/MergeTrial;-><init>()V

    sput-object v0, Lcom/jichi/ob/MergeTrial;->INSTANCE:Lcom/jichi/ob/MergeTrial;

    .line 13
    new-instance v0, Lcom/jichi/ob/MergeTrial$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/jichi/ob/MergeTrial$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/MergeTrial;->DEADLINE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final DEADLINE_delegate$lambda$0()J
    .locals 7

    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/16 v5, 0x3b

    const/16 v6, 0x3b

    const/16 v1, 0x7ea

    const/16 v2, 0x8

    const/16 v3, 0x1e

    const/16 v4, 0x17

    .line 16
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 17
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getDEADLINE()J
    .locals 2

    .line 13
    sget-object v0, Lcom/jichi/ob/MergeTrial;->DEADLINE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 4

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/jichi/ob/MergeTrial;->getDEADLINE()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remainingDays()I
    .locals 4

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    invoke-direct {p0}, Lcom/jichi/ob/MergeTrial;->getDEADLINE()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/jichi/ob/MergeTrial;->getDEADLINE()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265bff

    add-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    .line 28
    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

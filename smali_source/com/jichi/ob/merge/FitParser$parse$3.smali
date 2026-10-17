.class public final Lcom/jichi/ob/merge/FitParser$parse$3;
.super Ljava/lang/Object;
.source "FitParser.kt"

# interfaces
.implements Lcom/garmin/fit/SessionMesgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/merge/FitParser;->parse([B)Lcom/jichi/ob/merge/FitParser$FitResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFitParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FitParser.kt\ncom/jichi/ob/merge/FitParser$parse$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/jichi/ob/merge/FitParser$parse$3",
        "Lcom/garmin/fit/SessionMesgListener;",
        "onMesg",
        "",
        "mesg",
        "Lcom/garmin/fit/SessionMesg;",
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
.field final synthetic $sessionAscent:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $sessionDescent:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $sport:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/merge/FitParser$parse$3;->$sport:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/jichi/ob/merge/FitParser$parse$3;->$sessionAscent:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/jichi/ob/merge/FitParser$parse$3;->$sessionDescent:Lkotlin/jvm/internal/Ref$IntRef;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMesg(Lcom/garmin/fit/SessionMesg;)V
    .locals 2

    const-string v0, "mesg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/jichi/ob/merge/FitParser$parse$3;->$sport:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/garmin/fit/SessionMesg;->getSport()Lcom/garmin/fit/Sport;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v1, Lcom/garmin/fit/Sport;->INVALID:Lcom/garmin/fit/Sport;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/jichi/ob/merge/FitParser$parse$3;->$sport:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-virtual {v0}, Lcom/garmin/fit/Sport;->getValue()S

    move-result v0

    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/garmin/fit/SessionMesg;->getTotalAscent()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jichi/ob/merge/FitParser$parse$3;->$sessionAscent:Lkotlin/jvm/internal/Ref$IntRef;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 87
    :cond_1
    invoke-virtual {p1}, Lcom/garmin/fit/SessionMesg;->getTotalDescent()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/jichi/ob/merge/FitParser$parse$3;->$sessionDescent:Lkotlin/jvm/internal/Ref$IntRef;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_2
    return-void
.end method

.class public final Lcom/jichi/ob/merge/FitParser$parse$2;
.super Ljava/lang/Object;
.source "FitParser.kt"

# interfaces
.implements Lcom/garmin/fit/SportMesgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/merge/FitParser;->parse([B)Lcom/jichi/ob/merge/FitParser$FitResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/jichi/ob/merge/FitParser$parse$2",
        "Lcom/garmin/fit/SportMesgListener;",
        "onMesg",
        "",
        "mesg",
        "Lcom/garmin/fit/SportMesg;",
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
.field final synthetic $sport:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/merge/FitParser$parse$2;->$sport:Lkotlin/jvm/internal/Ref$IntRef;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMesg(Lcom/garmin/fit/SportMesg;)V
    .locals 1

    const-string v0, "mesg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/garmin/fit/SportMesg;->getSport()Lcom/garmin/fit/Sport;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    sget-object v0, Lcom/garmin/fit/Sport;->INVALID:Lcom/garmin/fit/Sport;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/merge/FitParser$parse$2;->$sport:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-virtual {p1}, Lcom/garmin/fit/Sport;->getValue()S

    move-result p1

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_0
    return-void
.end method

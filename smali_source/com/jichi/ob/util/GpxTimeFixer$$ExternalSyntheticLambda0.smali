.class public final synthetic Lcom/jichi/ob/util/GpxTimeFixer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/text/SimpleDateFormat;

.field public final synthetic f$1:Ljava/text/SimpleDateFormat;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;ILkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/util/GpxTimeFixer$$ExternalSyntheticLambda0;->f$0:Ljava/text/SimpleDateFormat;

    iput-object p2, p0, Lcom/jichi/ob/util/GpxTimeFixer$$ExternalSyntheticLambda0;->f$1:Ljava/text/SimpleDateFormat;

    iput p3, p0, Lcom/jichi/ob/util/GpxTimeFixer$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/jichi/ob/util/GpxTimeFixer$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/util/GpxTimeFixer$$ExternalSyntheticLambda0;->f$0:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/jichi/ob/util/GpxTimeFixer$$ExternalSyntheticLambda0;->f$1:Ljava/text/SimpleDateFormat;

    iget v2, p0, Lcom/jichi/ob/util/GpxTimeFixer$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/jichi/ob/util/GpxTimeFixer$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/internal/Ref$IntRef;

    check-cast p1, Lkotlin/text/MatchResult;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/jichi/ob/util/GpxTimeFixer;->$r8$lambda$wfJToyY5Awy-UXQjTFvJ3s8B1QE(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;ILkotlin/jvm/internal/Ref$IntRef;Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

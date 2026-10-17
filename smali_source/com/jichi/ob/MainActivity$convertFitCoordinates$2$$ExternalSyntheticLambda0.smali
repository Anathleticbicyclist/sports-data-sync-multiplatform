.class public final synthetic Lcom/jichi/ob/MainActivity$convertFitCoordinates$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CompletableDeferred;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->$r8$lambda$itqxIQYmMElIjHoLq32wXWUSI2Y(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/String;)V

    return-void
.end method

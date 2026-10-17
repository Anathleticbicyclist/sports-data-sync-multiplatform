.class public final synthetic Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/ui/TrackPreviewView;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/ui/TrackPreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda9;->f$0:Lcom/jichi/ob/ui/TrackPreviewView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda9;->f$0:Lcom/jichi/ob/ui/TrackPreviewView;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->$r8$lambda$mQuUca6pUFndAXVm3W9W4L-dexQ(Lcom/jichi/ob/ui/TrackPreviewView;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

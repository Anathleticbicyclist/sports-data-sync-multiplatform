.class public final synthetic Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ILandroid/webkit/WebView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function0;

    iput p2, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda5;->f$2:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function0;

    iget v1, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda5;->f$2:Landroid/webkit/WebView;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->$r8$lambda$OT-OMEK4yd4DReFor8oDsDGM2uk(Lkotlin/jvm/functions/Function0;ILandroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

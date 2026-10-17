.class public final synthetic Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Ljava/lang/StringBuilder;

.field public final synthetic f$2:Lcom/jichi/ob/ui/TrackPreviewView;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/StringBuilder;Lcom/jichi/ob/ui/TrackPreviewView;ILandroid/webkit/WebView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda13;->f$0:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda13;->f$1:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda13;->f$2:Lcom/jichi/ob/ui/TrackPreviewView;

    iput p4, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda13;->f$3:I

    iput-object p5, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda13;->f$4:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda13;->f$0:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda13;->f$1:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda13;->f$2:Lcom/jichi/ob/ui/TrackPreviewView;

    iget v3, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda13;->f$3:I

    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda13;->f$4:Landroid/webkit/WebView;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/jichi/ob/ui/TrackPreviewView;->$r8$lambda$btVrASMXxFX4rSoll8HFm33dF7U(Lkotlin/jvm/functions/Function0;Ljava/lang/StringBuilder;Lcom/jichi/ob/ui/TrackPreviewView;ILandroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

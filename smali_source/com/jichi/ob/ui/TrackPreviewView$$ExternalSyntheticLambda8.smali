.class public final synthetic Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/webkit/WebView;

.field public final synthetic f$1:Lcom/jichi/ob/ui/TrackPreviewView;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Lcom/jichi/ob/ui/TrackPreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda8;->f$0:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda8;->f$1:Lcom/jichi/ob/ui/TrackPreviewView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda8;->f$0:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda8;->f$1:Lcom/jichi/ob/ui/TrackPreviewView;

    invoke-static {v0, v1}, Lcom/jichi/ob/ui/TrackPreviewView;->$r8$lambda$f801f09hpYA9dlVdBrUC3i0trq8(Landroid/webkit/WebView;Lcom/jichi/ob/ui/TrackPreviewView;)V

    return-void
.end method

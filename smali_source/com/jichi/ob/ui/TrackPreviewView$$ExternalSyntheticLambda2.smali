.class public final synthetic Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;Landroid/webkit/WebView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda2;->f$2:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda2;->f$2:Landroid/webkit/WebView;

    invoke-static {v0, v1, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->$r8$lambda$CDc1bh5SR79NYUYtMmRlnqpOIVk(ILkotlin/jvm/functions/Function0;Landroid/webkit/WebView;)V

    return-void
.end method

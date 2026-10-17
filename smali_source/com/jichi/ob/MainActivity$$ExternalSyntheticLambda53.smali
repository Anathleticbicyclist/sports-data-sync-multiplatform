.class public final synthetic Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda53;->f$0:Lcom/jichi/ob/MainActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda53;->f$0:Lcom/jichi/ob/MainActivity;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/jichi/ob/MainActivity;->$r8$lambda$akhzaYvO85tync5J4wDK-LXFgdk(Lcom/jichi/ob/MainActivity;Landroid/net/Uri;)V

    return-void
.end method

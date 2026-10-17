.class public final synthetic Lcom/jichi/ob/ui/LoginFragment$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/ui/LoginFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/ui/LoginFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginFragment$$ExternalSyntheticLambda13;->f$0:Lcom/jichi/ob/ui/LoginFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginFragment$$ExternalSyntheticLambda13;->f$0:Lcom/jichi/ob/ui/LoginFragment;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/jichi/ob/ui/LoginFragment;->$r8$lambda$C-_kR97cu-rDdqY9DdiRRFgkrM8(Lcom/jichi/ob/ui/LoginFragment;Landroid/net/Uri;)V

    return-void
.end method

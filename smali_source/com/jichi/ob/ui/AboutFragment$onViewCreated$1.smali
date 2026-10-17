.class public final Lcom/jichi/ob/ui/AboutFragment$onViewCreated$1;
.super Landroid/text/style/ClickableSpan;
.source "AboutFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/AboutFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/jichi/ob/ui/AboutFragment$onViewCreated$1",
        "Landroid/text/style/ClickableSpan;",
        "onClick",
        "",
        "widget",
        "Landroid/view/View;",
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
.field final synthetic this$0:Lcom/jichi/ob/ui/AboutFragment;


# direct methods
.method constructor <init>(Lcom/jichi/ob/ui/AboutFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/ui/AboutFragment$onViewCreated$1;->this$0:Lcom/jichi/ob/ui/AboutFragment;

    .line 48
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/jichi/ob/ui/AboutFragment$onViewCreated$1;->this$0:Lcom/jichi/ob/ui/AboutFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jichi/ob/ui/AboutFragment$onViewCreated$1;->this$0:Lcom/jichi/ob/ui/AboutFragment;

    invoke-static {v1}, Lcom/jichi/ob/ui/AboutFragment;->access$getClubUrl$p(Lcom/jichi/ob/ui/AboutFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lcom/jichi/ob/ui/AboutFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

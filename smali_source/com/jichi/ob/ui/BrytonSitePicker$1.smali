.class final Lcom/jichi/ob/ui/BrytonSitePicker$1;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;
.source "BrytonSitePicker.java"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final fragment:Lcom/jichi/ob/ui/LoginFragment;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/jichi/ob/ui/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/BrytonSitePicker$1;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/jichi/ob/ui/BrytonSitePicker$1;->fragment:Lcom/jichi/ob/ui/LoginFragment;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    if-nez p2, :cond_0

    const-string v0, "cn"

    goto :goto_0

    :cond_0
    const-string v0, "int"

    :goto_0
    iget-object v1, p0, Lcom/jichi/ob/ui/BrytonSitePicker$1;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/jichi/ob/util/PrefsManager;

    invoke-direct {v2, v1}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/jichi/ob/util/PrefsManager;->setBrytonSite(Ljava/lang/String;)V

    sget-object v3, Lcom/jichi/ob/model/DataSource;->BRYTON:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v2, v3}, Lcom/jichi/ob/util/PrefsManager;->clearCredential(Lcom/jichi/ob/model/DataSource;)V

    :cond_1
    sget-object v1, Lcom/jichi/ob/ui/LoginWebActivity;->Companion:Lcom/jichi/ob/ui/LoginWebActivity$Companion;

    const-string v2, "bryton"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jichi/ob/ui/LoginWebActivity$Companion;->clearPlatformWebLogin(Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_2
    iget-object v1, p0, Lcom/jichi/ob/ui/BrytonSitePicker$1;->fragment:Lcom/jichi/ob/ui/LoginFragment;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/jichi/ob/ui/LoginFragment;->updateStatus()V

    :cond_3
    return-void
.end method

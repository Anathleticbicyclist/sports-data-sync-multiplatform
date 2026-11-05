.class public final Lcom/jichi/ob/ui/BrytonSitePicker;
.super Ljava/lang/Object;
.source "BrytonSitePicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/jichi/ob/ui/LoginFragment;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u767e\u9510\u817e\u7ad9\u70b9"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "\u56fd\u5185\u7ad9\uff08www.brytonsports.cn\uff09"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u56fd\u9645\u7ad9\uff08active.brytonsport.com\uff09"

    aput-object v3, v1, v2

    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->isInt()Z

    move-result v2

    new-instance v3, Lcom/jichi/ob/ui/BrytonSitePicker$1;

    invoke-direct {v3, p0, p1}, Lcom/jichi/ob/ui/BrytonSitePicker$1;-><init>(Landroid/content/Context;Lcom/jichi/ob/ui/LoginFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.class public final Lcom/jichi/ob/ui/BrytonSiteRowClick;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "BrytonSiteRowClick.java"


# instance fields
.field private final fragment:Lcom/jichi/ob/ui/LoginFragment;


# direct methods
.method public constructor <init>(Lcom/jichi/ob/ui/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/BrytonSiteRowClick;->fragment:Lcom/jichi/ob/ui/LoginFragment;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jichi/ob/ui/BrytonSiteRowClick;->fragment:Lcom/jichi/ob/ui/LoginFragment;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0, v1}, Lcom/jichi/ob/ui/BrytonSitePicker;->show(Landroid/content/Context;Lcom/jichi/ob/ui/LoginFragment;)V

    return-void
.end method

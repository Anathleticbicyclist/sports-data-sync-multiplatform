.class public final synthetic Lcom/jichi/ob/ui/LoginFragment$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/MainActivity;

.field public final synthetic f$1:Lcom/jichi/ob/model/DataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginFragment$$ExternalSyntheticLambda15;->f$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/ui/LoginFragment$$ExternalSyntheticLambda15;->f$1:Lcom/jichi/ob/model/DataSource;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginFragment$$ExternalSyntheticLambda15;->f$0:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginFragment$$ExternalSyntheticLambda15;->f$1:Lcom/jichi/ob/model/DataSource;

    invoke-static {v0, v1, p1, p2}, Lcom/jichi/ob/ui/LoginFragment;->$r8$lambda$-EY-n9b3YjG8BSNdVLMzaEa46-M(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Landroid/content/DialogInterface;I)V

    return-void
.end method

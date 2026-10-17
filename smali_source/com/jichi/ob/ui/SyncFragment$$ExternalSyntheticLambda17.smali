.class public final synthetic Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/jichi/ob/model/SyncTask;

.field public final synthetic f$2:Lcom/jichi/ob/ui/SyncFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/jichi/ob/model/SyncTask;Lcom/jichi/ob/ui/SyncFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda17;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda17;->f$1:Lcom/jichi/ob/model/SyncTask;

    iput-object p3, p0, Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda17;->f$2:Lcom/jichi/ob/ui/SyncFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda17;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda17;->f$1:Lcom/jichi/ob/model/SyncTask;

    iget-object v2, p0, Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda17;->f$2:Lcom/jichi/ob/ui/SyncFragment;

    invoke-static {v0, v1, v2, p1}, Lcom/jichi/ob/ui/SyncFragment;->$r8$lambda$vXCi2CT5o8QptLHi1BgtFeV_L_s(Landroid/content/Context;Lcom/jichi/ob/model/SyncTask;Lcom/jichi/ob/ui/SyncFragment;Landroid/view/View;)V

    return-void
.end method

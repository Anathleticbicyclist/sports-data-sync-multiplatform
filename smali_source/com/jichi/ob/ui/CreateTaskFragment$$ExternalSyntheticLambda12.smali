.class public final synthetic Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Lcom/jichi/ob/model/DataSource;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Lcom/jichi/ob/model/DataSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda12;->f$0:Z

    iput-object p2, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda12;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda12;->f$2:Lcom/jichi/ob/model/DataSource;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-boolean v0, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda12;->f$0:Z

    iget-object v1, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda12;->f$1:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/jichi/ob/ui/CreateTaskFragment$$ExternalSyntheticLambda12;->f$2:Lcom/jichi/ob/model/DataSource;

    invoke-static {v0, v1, v2, p1}, Lcom/jichi/ob/ui/CreateTaskFragment;->$r8$lambda$wz3SB21Qc91hc3cWeATiYHBYCRw(ZLkotlin/jvm/functions/Function1;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V

    return-void
.end method

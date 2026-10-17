.class public final synthetic Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Lcom/jichi/ob/MainActivity;

.field public final synthetic f$3:Lcom/jichi/ob/model/DataSource;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda41;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda41;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda41;->f$2:Lcom/jichi/ob/MainActivity;

    iput-object p4, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda41;->f$3:Lcom/jichi/ob/model/DataSource;

    iput-object p5, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda41;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda41;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda41;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda41;->f$2:Lcom/jichi/ob/MainActivity;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda41;->f$3:Lcom/jichi/ob/model/DataSource;

    iget-object v4, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda41;->f$4:Ljava/lang/String;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/jichi/ob/MainActivity;->$r8$lambda$fFiZvSX5mNPyfwnrVEIrfmvylgM(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

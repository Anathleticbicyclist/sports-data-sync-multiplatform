.class public final synthetic Lcom/jichi/ob/MainActivity$preloadRecent$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/MainActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/jichi/ob/model/DataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/MainActivity;ILcom/jichi/ob/model/DataSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$preloadRecent$1$$ExternalSyntheticLambda1;->f$0:Lcom/jichi/ob/MainActivity;

    iput p2, p0, Lcom/jichi/ob/MainActivity$preloadRecent$1$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$preloadRecent$1$$ExternalSyntheticLambda1;->f$2:Lcom/jichi/ob/model/DataSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$preloadRecent$1$$ExternalSyntheticLambda1;->f$0:Lcom/jichi/ob/MainActivity;

    iget v1, p0, Lcom/jichi/ob/MainActivity$preloadRecent$1$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$preloadRecent$1$$ExternalSyntheticLambda1;->f$2:Lcom/jichi/ob/model/DataSource;

    invoke-static {v0, v1, v2}, Lcom/jichi/ob/MainActivity$preloadRecent$1;->$r8$lambda$_74sCsajci2d7TN2rPB4oxEFSDE(Lcom/jichi/ob/MainActivity;ILcom/jichi/ob/model/DataSource;)V

    return-void
.end method

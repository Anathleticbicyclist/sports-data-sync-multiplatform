.class public final synthetic Lcom/jichi/ob/MainActivity$loginLauncher$1$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/jichi/ob/MainActivity;

.field public final synthetic f$2:Lcom/jichi/ob/model/DataSource;


# direct methods
.method public synthetic constructor <init>(ZLcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$3$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$3$$ExternalSyntheticLambda0;->f$1:Lcom/jichi/ob/MainActivity;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$3$$ExternalSyntheticLambda0;->f$2:Lcom/jichi/ob/model/DataSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-boolean v0, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$3$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$3$$ExternalSyntheticLambda0;->f$1:Lcom/jichi/ob/MainActivity;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$3$$ExternalSyntheticLambda0;->f$2:Lcom/jichi/ob/model/DataSource;

    invoke-static {v0, v1, v2}, Lcom/jichi/ob/MainActivity$loginLauncher$1$3;->$r8$lambda$sBLZsAGh968I0eETD4Qn66ffV6s(ZLcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;)V

    return-void
.end method

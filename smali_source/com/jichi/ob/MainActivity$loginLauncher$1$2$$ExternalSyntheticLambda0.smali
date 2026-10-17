.class public final synthetic Lcom/jichi/ob/MainActivity$loginLauncher$1$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/api/SuuntoApi$LoginResult;

.field public final synthetic f$1:Lcom/jichi/ob/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/api/SuuntoApi$LoginResult;Lcom/jichi/ob/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2$$ExternalSyntheticLambda0;->f$0:Lcom/jichi/ob/api/SuuntoApi$LoginResult;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2$$ExternalSyntheticLambda0;->f$1:Lcom/jichi/ob/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2$$ExternalSyntheticLambda0;->f$0:Lcom/jichi/ob/api/SuuntoApi$LoginResult;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$2$$ExternalSyntheticLambda0;->f$1:Lcom/jichi/ob/MainActivity;

    invoke-static {v0, v1}, Lcom/jichi/ob/MainActivity$loginLauncher$1$2;->$r8$lambda$jHYCrr3J_V3IJAHOYw9Wj3BhkPo(Lcom/jichi/ob/api/SuuntoApi$LoginResult;Lcom/jichi/ob/MainActivity;)V

    return-void
.end method

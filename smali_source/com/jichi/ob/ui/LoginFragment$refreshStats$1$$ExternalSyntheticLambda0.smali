.class public final synthetic Lcom/jichi/ob/ui/LoginFragment$refreshStats$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Lcom/jichi/ob/ui/LoginFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/jichi/ob/ui/LoginFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1$$ExternalSyntheticLambda0;->f$2:Lcom/jichi/ob/ui/LoginFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1$$ExternalSyntheticLambda0;->f$2:Lcom/jichi/ob/ui/LoginFragment;

    invoke-static {v0, v1, v2}, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->$r8$lambda$BsASbauHE7KuTm5sE4rVXckfrW8(Ljava/util/Map;Ljava/util/Map;Lcom/jichi/ob/ui/LoginFragment;)V

    return-void
.end method

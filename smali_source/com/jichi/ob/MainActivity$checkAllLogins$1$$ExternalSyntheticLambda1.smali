.class public final synthetic Lcom/jichi/ob/MainActivity$checkAllLogins$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/MainActivity;

.field public final synthetic f$1:Lcom/jichi/ob/model/DataSource;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$checkAllLogins$1$$ExternalSyntheticLambda1;->f$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$checkAllLogins$1$$ExternalSyntheticLambda1;->f$1:Lcom/jichi/ob/model/DataSource;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$checkAllLogins$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$checkAllLogins$1$$ExternalSyntheticLambda1;->f$0:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$checkAllLogins$1$$ExternalSyntheticLambda1;->f$1:Lcom/jichi/ob/model/DataSource;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$checkAllLogins$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/jichi/ob/MainActivity$checkAllLogins$1;->$r8$lambda$UfwCU75F9nVAqVOF6K5-JN9FIAY(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)V

    return-void
.end method

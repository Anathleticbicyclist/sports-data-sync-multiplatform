.class public final synthetic Lcom/jichi/ob/MainActivity$openKeepLogin$2$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/api/KeepApi$LoginResult;

.field public final synthetic f$1:Lcom/jichi/ob/MainActivity;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/api/KeepApi$LoginResult;Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$openKeepLogin$2$1$$ExternalSyntheticLambda0;->f$0:Lcom/jichi/ob/api/KeepApi$LoginResult;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$openKeepLogin$2$1$$ExternalSyntheticLambda0;->f$1:Lcom/jichi/ob/MainActivity;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$openKeepLogin$2$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$openKeepLogin$2$1$$ExternalSyntheticLambda0;->f$0:Lcom/jichi/ob/api/KeepApi$LoginResult;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$openKeepLogin$2$1$$ExternalSyntheticLambda0;->f$1:Lcom/jichi/ob/MainActivity;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$openKeepLogin$2$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/jichi/ob/MainActivity$openKeepLogin$2$1;->$r8$lambda$4YOUaZpyQd68Rbx6OHFxwNlUCd0(Lcom/jichi/ob/api/KeepApi$LoginResult;Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    return-void
.end method

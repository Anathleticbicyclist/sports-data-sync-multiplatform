.class public final synthetic Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/ui/LoginWebActivity;

.field public final synthetic f$1:Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/ui/LoginWebActivity;Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda5;->f$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iput-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda5;->f$1:Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;

    iput-boolean p3, p0, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda5;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda5;->f$0:Lcom/jichi/ob/ui/LoginWebActivity;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda5;->f$1:Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;

    iget-boolean v2, p0, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda5;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/jichi/ob/ui/LoginWebActivity;->$r8$lambda$PyLURnGIQBWm6VeyqCzagwrVQnI(Lcom/jichi/ob/ui/LoginWebActivity;Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;Z)V

    return-void
.end method

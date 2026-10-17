.class public final synthetic Lcom/jichi/ob/ui/LoginWebActivity$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/jichi/ob/ui/LoginWebActivity$Companion;->$r8$lambda$J8XVI-djlKfWzNJEuW5F4ro1UXc(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V

    return-void
.end method

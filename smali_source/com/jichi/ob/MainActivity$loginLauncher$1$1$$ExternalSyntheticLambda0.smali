.class public final synthetic Lcom/jichi/ob/MainActivity$loginLauncher$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/Pair;

.field public final synthetic f$1:Lcom/jichi/ob/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lkotlin/Pair;Lcom/jichi/ob/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/Pair;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$1$$ExternalSyntheticLambda0;->f$1:Lcom/jichi/ob/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/Pair;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$loginLauncher$1$1$$ExternalSyntheticLambda0;->f$1:Lcom/jichi/ob/MainActivity;

    invoke-static {v0, v1}, Lcom/jichi/ob/MainActivity$loginLauncher$1$1;->$r8$lambda$tOm-2C0DHsmNapHuYpW-Fn1cVoM(Lkotlin/Pair;Lcom/jichi/ob/MainActivity;)V

    return-void
.end method

.class public final synthetic Lcom/jichi/ob/ui/SyncFragment$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p1}, Lcom/jichi/ob/ui/SyncFragment;->$r8$lambda$cLjILQTsZVoW2h-qlw1HnG-7Gf0(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

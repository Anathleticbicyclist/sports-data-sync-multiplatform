.class public final synthetic Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/jichi/bikecomputer/HistoryActivity;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/bikecomputer/HistoryActivity;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda5;->f$0:Lcom/jichi/bikecomputer/HistoryActivity;

    iput-object p2, p0, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda5;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda5;->f$0:Lcom/jichi/bikecomputer/HistoryActivity;

    iget-object v1, p0, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda5;->f$1:Ljava/io/File;

    invoke-virtual {v0, v1, p1, p2}, Lcom/jichi/bikecomputer/HistoryActivity;->lambda$scan$3$com-jichi-bikecomputer-HistoryActivity(Ljava/io/File;Landroid/content/DialogInterface;I)V

    return-void
.end method

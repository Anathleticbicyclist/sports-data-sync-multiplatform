.class public final Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;
.super Ljava/lang/Object;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity$runTask$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Downloaded"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "com/jichi/ob/MainActivity$runTask$6$Downloaded",
        "",
        "act",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "fileData",
        "",
        "localFile",
        "Ljava/io/File;",
        "<init>",
        "(Lcom/jichi/ob/model/ActivityRecord;[BLjava/io/File;)V",
        "getAct",
        "()Lcom/jichi/ob/model/ActivityRecord;",
        "getFileData",
        "()[B",
        "getLocalFile",
        "()Ljava/io/File;",
        "app_devRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final act:Lcom/jichi/ob/model/ActivityRecord;

.field private final fileData:[B

.field private final localFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/jichi/ob/model/ActivityRecord;[BLjava/io/File;)V
    .locals 1

    const-string v0, "act"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;->act:Lcom/jichi/ob/model/ActivityRecord;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;->fileData:[B

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;->localFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final getAct()Lcom/jichi/ob/model/ActivityRecord;
    .locals 1

    .line 2598
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;->act:Lcom/jichi/ob/model/ActivityRecord;

    return-object v0
.end method

.method public final getFileData()[B
    .locals 1

    .line 2598
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;->fileData:[B

    return-object v0
.end method

.method public final getLocalFile()Ljava/io/File;
    .locals 1

    .line 2598
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$runTask$6$Downloaded;->localFile:Ljava/io/File;

    return-object v0
.end method

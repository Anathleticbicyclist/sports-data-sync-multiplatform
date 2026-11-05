.class public Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;
.super Ljava/lang/Object;
.source "TrackStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/store/TrackStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordFile"
.end annotation


# instance fields
.field public final file:Ljava/io/File;

.field private open:Z

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method constructor <init>(Ljava/io/File;Z)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->file:Ljava/io/File;

    if-eqz p2, :cond_0

    .line 66
    :try_start_0
    new-instance p2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p2, p0, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->writer:Ljava/io/BufferedWriter;

    .line 68
    iput-boolean v2, p0, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->open:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->open:Z

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public append(Lcom/jichi/bikecomputer/model/TrackPoint;)V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->open:Z

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Lcom/jichi/bikecomputer/model/TrackPoint;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 84
    iget-object p1, p0, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->open:Z

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->open:Z

    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/jichi/bikecomputer/store/TrackStore$RecordFile;->open:Z

    return v0
.end method

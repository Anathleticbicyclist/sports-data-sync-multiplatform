.class public Lcom/jichi/bikecomputer/export/GpxExporter;
.super Ljava/lang/Object;
.source "GpxExporter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static export(Ljava/util/List;Lcom/jichi/bikecomputer/model/SportType;JLjava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/bikecomputer/model/TrackPoint;",
            ">;",
            "Lcom/jichi/bikecomputer/model/SportType;",
            "J",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 22
    const-string v0, "</time>\n"

    .line 0
    const-string v1, "    <type>"

    const-string v2, "    <name>"

    const-string v3, "    <time>"

    const/4 v4, 0x0

    if-eqz p0, :cond_5

    .line 22
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 23
    :cond_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 24
    invoke-virtual {p1}, Lcom/jichi/bikecomputer/model/SportType;->name()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 26
    :try_start_0
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object p4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, p4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 28
    const-string p4, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {v7, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 29
    const-string p4, "<gpx version=\"1.1\" creator=\"BikeComputer\"\n"

    invoke-virtual {v7, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 30
    const-string p4, "  xmlns=\"http://www.topografix.com/GPX/1/1\"\n"

    invoke-virtual {v7, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 31
    const-string p4, "  xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n"

    invoke-virtual {v7, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 32
    const-string p4, "  xsi:schemaLocation=\"http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd\">\n"

    invoke-virtual {v7, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 33
    const-string p4, "  <metadata>\n"

    invoke-virtual {v7, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 34
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v7, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 35
    const-string p4, "  </metadata>\n"

    invoke-virtual {v7, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 36
    const-string p4, "  <trk>\n"

    invoke-virtual {v7, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 37
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/jichi/bikecomputer/model/SportType;->label:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</name>\n"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</type>\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 39
    const-string p1, "    <trkseg>\n"

    invoke-virtual {v7, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jichi/bikecomputer/model/TrackPoint;

    .line 41
    iget-wide p2, p1, Lcom/jichi/bikecomputer/model/TrackPoint;->timestamp:J

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-gtz p2, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      <trkpt lat=\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p1, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    invoke-static {p3, p4}, Lcom/jichi/bikecomputer/export/GpxExporter;->trim(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" lon=\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p1, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    invoke-static {p3, p4}, Lcom/jichi/bikecomputer/export/GpxExporter;->trim(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\">\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 43
    iget-wide p2, p1, Lcom/jichi/bikecomputer/model/TrackPoint;->alt:D

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_2

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "        <ele>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p1, Lcom/jichi/bikecomputer/model/TrackPoint;->alt:D

    invoke-static {p3, p4}, Lcom/jichi/bikecomputer/export/GpxExporter;->trim(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "</ele>\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 46
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "        <time>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/util/Date;

    iget-wide v1, p1, Lcom/jichi/bikecomputer/model/TrackPoint;->timestamp:J

    invoke-direct {p3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 47
    iget p2, p1, Lcom/jichi/bikecomputer/model/TrackPoint;->speed:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_3

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "        <speed>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/jichi/bikecomputer/model/TrackPoint;->speed:F

    float-to-double p3, p1

    invoke-static {p3, p4}, Lcom/jichi/bikecomputer/export/GpxExporter;->trim(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</speed>\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 50
    :cond_3
    const-string p1, "      </trkpt>\n"

    invoke-virtual {v7, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    :cond_4
    const-string p0, "    </trkseg>\n"

    invoke-virtual {v7, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 53
    const-string p0, "  </trk>\n"

    invoke-virtual {v7, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 54
    const-string p0, "</gpx>\n"

    invoke-virtual {v7, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 58
    const-string p1, "GpxExporter"

    const-string p2, "\u5bfc\u51fa\u5931\u8d25"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    return v4
.end method

.method private static trim(D)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p0, v0

    .line 64
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    .line 65
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

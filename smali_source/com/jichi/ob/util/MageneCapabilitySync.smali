.class public final Lcom/jichi/ob/util/MageneCapabilitySync;
.super Ljava/lang/Object;
.source "MageneCapabilitySync.java"


# static fields
.field private static final MAX_ROUNDS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MageneApi"

.field private static final THROTTLE_MS:J = 0x4e20L

.field private static final UA:Ljava/lang/String; = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"

.field private static final URL_SYNC:Ljava/lang/String; = "https://otm.onelap.cn/api/otm/ride_record/capability_list"

.field private static volatile lastAt:J

.field private static volatile lastToken:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static sync(Ljava/lang/String;)I
    .locals 6

    .line 51
    const-string v0, "MageneApi"

    const/4 v1, -0x1

    if-eqz p0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 54
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 55
    sget-object v4, Lcom/jichi/ob/util/MageneCapabilitySync;->lastToken:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-wide v4, Lcom/jichi/ob/util/MageneCapabilitySync;->lastAt:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 56
    const/4 p0, -0x2

    return p0

    .line 58
    :cond_1
    sput-object p0, Lcom/jichi/ob/util/MageneCapabilitySync;->lastToken:Ljava/lang/String;

    .line 60
    nop

    .line 61
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_4

    .line 62
    invoke-static {p0}, Lcom/jichi/ob/util/MageneCapabilitySync;->syncOnce(Ljava/lang/String;)I

    move-result v4

    .line 63
    const/4 v5, -0x3

    if-ne v4, v5, :cond_2

    .line 64
    const-string p0, "capability sync \u88ab\u98ce\u63a7\u62d2\u7edd(403)\uff0c\u8df3\u8fc7\u9884\u5bfc\u5165"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v5

    .line 67
    :cond_2
    if-gtz v4, :cond_3

    .line 68
    goto :goto_1

    .line 70
    :cond_3
    add-int/2addr v3, v4

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/jichi/ob/util/MageneCapabilitySync;->lastAt:J

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capability sync inserted="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    return v3

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capability sync \u5931\u8d25(\u5ffd\u7565): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v1

    .line 52
    :cond_5
    :goto_2
    return v1
.end method

.method private static syncOnce(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    const-string v0, "UTF-8"

    .line 84
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "https://otm.onelap.cn/api/otm/ride_record/capability_list"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 85
    :try_start_1
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 87
    const/16 v1, 0x3a98

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 88
    const/16 v1, 0x7530

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 89
    const-string v1, "Authorization"

    invoke-virtual {v2, v1, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string p0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v2, p0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string p0, "Origin"

    const-string v1, "https://otm.onelap.cn"

    invoke-virtual {v2, p0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string p0, "Referer"

    const-string v1, "https://otm.onelap.cn/calendar"

    invoke-virtual {v2, p0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string p0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"

    invoke-virtual {v2, p0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string p0, "{}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 96
    array-length v1, p0

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 97
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 98
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 99
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 100
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 102
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 103
    const/16 v1, 0x193

    if-ne p0, v1, :cond_1

    .line 104
    nop

    .line 130
    if-eqz v2, :cond_0

    .line 132
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    goto :goto_0

    .line 133
    :catchall_0
    move-exception p0

    .line 104
    :cond_0
    :goto_0
    const/4 p0, -0x3

    return p0

    .line 106
    :cond_1
    const/16 v1, 0xc8

    if-lt p0, v1, :cond_2

    const/16 v1, 0x12c

    if-ge p0, v1, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 107
    :goto_1
    const/4 v1, 0x0

    if-nez p0, :cond_4

    .line 108
    nop

    .line 130
    if-eqz v2, :cond_3

    .line 132
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    goto :goto_2

    .line 133
    :catchall_1
    move-exception p0

    .line 108
    :cond_3
    :goto_2
    return v1

    .line 110
    :cond_4
    :try_start_5
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 113
    :goto_3
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_5

    .line 114
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 116
    :cond_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 118
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {p0, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    const-string p0, "data"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 121
    if-nez p0, :cond_7

    .line 122
    nop

    .line 130
    if-eqz v2, :cond_6

    .line 132
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 134
    goto :goto_4

    .line 133
    :catchall_2
    move-exception p0

    .line 122
    :cond_6
    :goto_4
    return v1

    .line 124
    :cond_7
    :try_start_7
    const-string v0, "sync"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 125
    if-nez p0, :cond_9

    .line 126
    nop

    .line 130
    if-eqz v2, :cond_8

    .line 132
    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 134
    goto :goto_5

    .line 133
    :catchall_3
    move-exception p0

    .line 126
    :cond_8
    :goto_5
    return v1

    .line 128
    :cond_9
    :try_start_9
    const-string v0, "inserted"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 130
    if-eqz v2, :cond_a

    .line 132
    :try_start_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 134
    goto :goto_6

    .line 133
    :catchall_4
    move-exception v0

    .line 128
    :cond_a
    :goto_6
    return p0

    .line 130
    :catchall_5
    move-exception p0

    move-object v1, v2

    goto :goto_7

    :catchall_6
    move-exception p0

    :goto_7
    if-eqz v1, :cond_b

    .line 132
    :try_start_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 134
    goto :goto_8

    .line 133
    :catchall_7
    move-exception v0

    .line 136
    :cond_b
    :goto_8
    throw p0
.end method

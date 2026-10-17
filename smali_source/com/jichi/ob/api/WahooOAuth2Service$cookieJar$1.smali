.class public final Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1;
.super Ljava/lang/Object;
.source "WahooOAuth2Service.kt"

# interfaces
.implements Lokhttp3/CookieJar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/WahooOAuth2Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWahooOAuth2Service.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WahooOAuth2Service.kt\ncom/jichi/ob/api/WahooOAuth2Service$cookieJar$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,425:1\n1869#2,2:426\n774#2:428\n865#2,2:429\n*S KotlinDebug\n*F\n+ 1 WahooOAuth2Service.kt\ncom/jichi/ob/api/WahooOAuth2Service$cookieJar$1\n*L\n67#1:426,2\n76#1:428\n76#1:429,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/jichi/ob/api/WahooOAuth2Service$cookieJar$1",
        "Lokhttp3/CookieJar;",
        "saveFromResponse",
        "",
        "url",
        "Lokhttp3/HttpUrl;",
        "cookies",
        "",
        "Lokhttp3/Cookie;",
        "loadForRequest",
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


# direct methods
.method public static synthetic $r8$lambda$3Jiakz9vEc_fdPbCokVs6Y0KGfY(Lokhttp3/Cookie;Lokhttp3/Cookie;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1;->saveFromResponse$lambda$1$lambda$0(Lokhttp3/Cookie;Lokhttp3/Cookie;)Z

    move-result p0

    return p0
.end method

.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final saveFromResponse$lambda$1$lambda$0(Lokhttp3/Cookie;Lokhttp3/Cookie;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 76
    invoke-static {}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$getCookieStore$p()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 428
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 429
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lokhttp3/Cookie;

    .line 76
    invoke-virtual {v5, p1}, Lokhttp3/Cookie;->matches(Lokhttp3/HttpUrl;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lokhttp3/Cookie;->expiresAt()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-lez v5, :cond_0

    .line 429
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 77
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  \ud83c\udf6a \u53d1\u9001Cookie: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4e2a, domain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    return-object v3
.end method

.method public saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cookies"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .line 426
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Cookie;

    .line 69
    invoke-static {}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$getCookieStore$p()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1$$ExternalSyntheticLambda0;-><init>(Lokhttp3/Cookie;)V

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 70
    invoke-static {}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$getCookieStore$p()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Lcom/jichi/ob/api/WahooOAuth2Service;->INSTANCE:Lcom/jichi/ob/api/WahooOAuth2Service;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$getCookieStore$p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  \ud83c\udf6a \u4fdd\u5b58Cookie: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo v2, "\u4e2a, domain="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", \u603b\u6570="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jichi/ob/api/WahooOAuth2Service;->access$log(Lcom/jichi/ob/api/WahooOAuth2Service;Ljava/lang/String;)V

    return-void
.end method

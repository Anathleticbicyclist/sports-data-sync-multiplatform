.class public final synthetic Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lokhttp3/Cookie;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Cookie;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1$$ExternalSyntheticLambda0;->f$0:Lokhttp3/Cookie;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1$$ExternalSyntheticLambda0;->f$0:Lokhttp3/Cookie;

    check-cast p1, Lokhttp3/Cookie;

    invoke-static {v0, p1}, Lcom/jichi/ob/api/WahooOAuth2Service$cookieJar$1;->$r8$lambda$3Jiakz9vEc_fdPbCokVs6Y0KGfY(Lokhttp3/Cookie;Lokhttp3/Cookie;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

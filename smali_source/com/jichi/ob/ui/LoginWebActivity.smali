.class public final Lcom/jichi/ob/ui/LoginWebActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginWebActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/ui/LoginWebActivity$Companion;,
        Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginWebActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginWebActivity.kt\ncom/jichi/ob/ui/LoginWebActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,1887:1\n13472#2:1888\n13473#2:1891\n1869#3,2:1889\n1869#3,2:1893\n1#4:1892\n1069#5,2:1895\n1069#5,2:1897\n1069#5,2:1899\n*S KotlinDebug\n*F\n+ 1 LoginWebActivity.kt\ncom/jichi/ob/ui/LoginWebActivity\n*L\n190#1:1888\n190#1:1891\n194#1:1889,2\n1714#1:1893,2\n745#1:1895,2\n769#1:1897,2\n1279#1:1899,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000o\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u001d*\u0001\u0018\u0018\u0000 V2\u00020\u0001:\u0002VWB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\u001a\u001a\u00020\u001b2\u0012\u0010\u001c\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\t0\u001d\"\u00020\tH\u0003\u00a2\u0006\u0002\u0010\u001eJ\u0008\u0010\u001f\u001a\u00020 H\u0002J\u0012\u0010!\u001a\u00020\u001b2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0014J\u0008\u0010$\u001a\u00020\u001bH\u0002J\u0008\u0010%\u001a\u00020\u001bH\u0002J\u0008\u0010&\u001a\u00020\u001bH\u0002J\u0008\u0010\'\u001a\u00020\u001bH\u0003J\u0010\u0010(\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\tH\u0002J\u001a\u0010*\u001a\u0004\u0018\u00010\t2\u0006\u0010)\u001a\u00020\t2\u0006\u0010+\u001a\u00020\tH\u0002J\u0010\u0010,\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020.H\u0002J\u0008\u0010/\u001a\u00020\u001bH\u0002J\u0008\u00100\u001a\u00020\u001bH\u0002J\u0008\u00101\u001a\u00020\u001bH\u0002J\u0008\u00102\u001a\u00020\u001bH\u0002J\u0010\u00103\u001a\u00020\u001b2\u0006\u00104\u001a\u00020\tH\u0002J6\u00105\u001a\u00020\u001b2\u0006\u00106\u001a\u00020\t2\u0006\u00107\u001a\u00020\t2\u0006\u00108\u001a\u00020\t2\u0006\u00109\u001a\u00020\u000b2\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u001b0;H\u0002J\u0010\u0010<\u001a\u00020\u001b2\u0006\u0010=\u001a\u00020\u000bH\u0002J\u0018\u0010>\u001a\u00020\u001b2\u0006\u0010?\u001a\u00020\t2\u0006\u0010=\u001a\u00020\u000bH\u0002J\u0010\u0010@\u001a\u00020\u001b2\u0006\u0010=\u001a\u00020\u000bH\u0002J\u0012\u0010A\u001a\u0004\u0018\u00010\t2\u0006\u0010B\u001a\u00020\tH\u0002J\u0010\u0010C\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020\tH\u0002J\u0008\u0010E\u001a\u00020\u001bH\u0002J\u0008\u0010F\u001a\u00020\u001bH\u0002J\u0010\u0010I\u001a\u00020\u001b2\u0006\u0010J\u001a\u00020\tH\u0002J\u0010\u0010K\u001a\u00020\u001b2\u0006\u0010B\u001a\u00020\tH\u0002J\u0008\u0010L\u001a\u00020\u001bH\u0002J\u0008\u0010M\u001a\u00020\u001bH\u0002J\u0008\u0010N\u001a\u00020\u001bH\u0002J\u0008\u0010O\u001a\u00020\u001bH\u0002J\u0008\u0010P\u001a\u00020\u001bH\u0002J\u0018\u0010Q\u001a\u00020\t2\u0006\u0010J\u001a\u00020\t2\u0006\u0010R\u001a\u00020\tH\u0002J\u0008\u0010S\u001a\u00020\u001bH\u0014J\u0008\u0010T\u001a\u00020\u001bH\u0016J\u0008\u0010U\u001a\u00020\tH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0019R\u000e\u0010G\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006X"
    }
    d2 = {
        "Lcom/jichi/ob/ui/LoginWebActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "webView",
        "Landroid/webkit/WebView;",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "loginType",
        "",
        "detected",
        "",
        "igpReloadCount",
        "",
        "igpHttpErrorCount",
        "pendingClean",
        "pendingCleanDone",
        "urlHistory",
        "",
        "verifying",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "checkCount",
        "lastReportedLoginError",
        "checkRunnable",
        "com/jichi/ob/ui/LoginWebActivity$checkRunnable$1",
        "Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;",
        "clearDomainCookies",
        "",
        "domains",
        "",
        "([Ljava/lang/String;)V",
        "loginTypeToDataSource",
        "Lcom/jichi/ob/model/DataSource;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setupIgpNativeLogin",
        "switchToIgpWebLogin",
        "switchBackToIgpSms",
        "setupIgpWebView",
        "sendIgpSmsCode",
        "phone",
        "loginIgpBySms",
        "code",
        "startIgpCountdown",
        "btn",
        "Lcom/google/android/material/button/MaterialButton;",
        "detectLogin",
        "detectBlackbird",
        "detectBryton",
        "flushGarminDebugToPersist",
        "copyLogText",
        "text",
        "showGarminResultDialog",
        "title",
        "guide",
        "logTail",
        "showContinue",
        "onContinue",
        "Lkotlin/Function0;",
        "detectGarmin",
        "cn",
        "exchangeGarminTicket",
        "ticket",
        "detectCoros",
        "extractWahooCode",
        "url",
        "isOAuth2CallbackType",
        "t",
        "detectWahoo",
        "detectTwoBulu",
        "twoBuluBrowseMode",
        "lastKmlTrack",
        "enterTwoBuluBrowseMode",
        "cookie",
        "twoBuluInjectKmlClick",
        "confirmManualLogin",
        "detectIgpsport",
        "detectXingzhe",
        "detectMagene",
        "detectOutbase",
        "extractCookieValue",
        "key",
        "onDestroy",
        "onBackPressed",
        "injectGarminListener",
        "Companion",
        "GarminJsBridge",
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


# static fields
.field public static final Companion:Lcom/jichi/ob/ui/LoginWebActivity$Companion;

.field private static final DESKTOP_UA:Ljava/lang/String; = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"

.field public static final EXTRA_LOGIN_TYPE:Ljava/lang/String; = "login_type"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"

.field private static final MOBILE_UA:Ljava/lang/String; = "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36"

.field public static final RESULT_EXTRA:Ljava/lang/String; = "extra"

.field public static final RESULT_LOGIN_TYPE:Ljava/lang/String; = "login_type"

.field public static final RESULT_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final RESULT_TOKEN:Ljava/lang/String; = "***"

.field private static final TAG:Ljava/lang/String; = "LoginWeb"

.field public static final TYPE_BLACKBIRD:Ljava/lang/String; = "blackbird"

.field public static final TYPE_BRYTON:Ljava/lang/String; = "bryton"

.field public static final TYPE_COROS_CN:Ljava/lang/String; = "coros_cn"

.field public static final TYPE_COROS_INT:Ljava/lang/String; = "coros_int"

.field public static final TYPE_FITBIT:Ljava/lang/String; = "fitbit"

.field public static final TYPE_GARMIN_CN:Ljava/lang/String; = "garmin_cn"

.field public static final TYPE_GARMIN_COM:Ljava/lang/String; = "garmin_com"

.field public static final TYPE_IGPSPORT:Ljava/lang/String; = "igpsport"

.field public static final TYPE_IGPSPORT_INT:Ljava/lang/String; = "igpsport_int"

.field public static final TYPE_MAGENE:Ljava/lang/String; = "magene"

.field public static final TYPE_OUTBASE:Ljava/lang/String; = "outbase"

.field public static final TYPE_POLAR:Ljava/lang/String; = "polar"

.field public static final TYPE_STRAVA:Ljava/lang/String; = "strava"

.field public static final TYPE_SUUNTO:Ljava/lang/String; = "suunto"

.field public static final TYPE_TRAININGPEAKS:Ljava/lang/String; = "trainingpeaks"

.field public static final TYPE_TWO_BULU:Ljava/lang/String; = "2bulu"

.field public static final TYPE_WAHOO:Ljava/lang/String; = "wahoo"

.field public static final TYPE_WITHINGS:Ljava/lang/String; = "withings"

.field public static final TYPE_XINGZHE:Ljava/lang/String; = "xingzhe"


# instance fields
.field private checkCount:I

.field private final checkRunnable:Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;

.field private detected:Z

.field private igpHttpErrorCount:I

.field private igpReloadCount:I

.field private lastKmlTrack:Ljava/lang/String;

.field private lastReportedLoginError:Ljava/lang/String;

.field private loginType:Ljava/lang/String;

.field private pendingClean:Z

.field private pendingCleanDone:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field private twoBuluBrowseMode:Z

.field private final urlHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$-2Zw_36GBmVKiqKccu7-Nt1ZyRI(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin$lambda$46(Lcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0F2k_wmaR4ElL3S8O_qlfrxEenQ(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin$lambda$50(Lcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2-dSoTMp0sxbec0NJKdL-Yc1oAM(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/jichi/ob/ui/LoginWebActivity;->setupIgpNativeLogin$lambda$16(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5T46MfaLf56utZyNxoEHfyI5K68(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->setupIgpNativeLogin$lambda$12(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6IceXxurnnhABXtFlVKqox2xx-M(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/jichi/ob/ui/LoginWebActivity;->enterTwoBuluBrowseMode$lambda$41(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$6JpHxMixNynuao4zFKnEtkm2iOc(Lcom/jichi/ob/ui/LoginWebActivity;ZLandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->onCreate$lambda$4(Lcom/jichi/ob/ui/LoginWebActivity;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6P26n7Smi-yWmtvDs02j7AFDpmU(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->switchToIgpWebLogin$lambda$17(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7Nrbhg0OXq9V4J-sGGbda69SgLg(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin$lambda$45(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$84LZgnMG4k4W7sGtPLGVcH4_EiM(Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/LoginWebActivity;->setupIgpNativeLogin$lambda$14(Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8dzOVBCXoN8BozOFEQYBdC0Z2g0(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/LoginWebActivity;->detectCoros$lambda$37(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DRzB-yC63_tWGIR05a0-lQ-Uv7g(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/jichi/ob/ui/LoginWebActivity;->detectGarmin$lambda$31(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GEAj6SBQVEJnRDtJ87Gq2rzOEnc(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin$lambda$55(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gqa3GrYRpWdBB_dbloACcekDMx4(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->onCreate$lambda$2(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H5dhf2PPuQohsc1GqlK5EAC1x1E(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->showGarminResultDialog$lambda$25(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IaydwOZ6KWiXBl8RyGBqYSvuhvY(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/LoginWebActivity;->showGarminResultDialog$lambda$24(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IgHRx6a66sXwPJb329em0EfWA2k(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->onCreate$lambda$6(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J4itW9_PXoPmCMZYDk6ngyOifUU(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->detectBlackbird$lambda$21(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JYBwi4indKuyGL0_1Mykvi20RGs(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->showGarminResultDialog$lambda$29$lambda$27(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jdzk7w0TEVXaoRhI60r-QSP96E0(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->switchToIgpWebLogin$lambda$18(Lcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LIU6usx1zRgliwKoZDtWzPVcXhQ(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin$lambda$43(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N5b4e0dGhzTU5XEHvhCDJkBsxq8(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->detectBryton$lambda$22(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OT3kpNHl8RVuLxYQ6wI57Gd848I(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->showGarminResultDialog$lambda$29$lambda$26(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PyLURnGIQBWm6VeyqCzagwrVQnI(Lcom/jichi/ob/ui/LoginWebActivity;Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->exchangeGarminTicket$lambda$33$lambda$32(Lcom/jichi/ob/ui/LoginWebActivity;Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WDPI1w2-h_EOs27H8SXFBJv4keE(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;ZLcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/jichi/ob/ui/LoginWebActivity;->onCreate$lambda$7(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;ZLcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XU3temasxqmvgsFeShuD76s517c(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin$lambda$48$lambda$47(Lcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y3LEmBjkMd52DmmdQel1rywhZDE(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->detectMagene$lambda$57(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YMI3xFvYzcGBHpaVhRqnIX5pz8k(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->twoBuluInjectKmlClick$lambda$42(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YpKDPNoatlYcP9VAu66GMVWNTqg(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->setupIgpNativeLogin$lambda$11(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z_i7bjErwi_u8sl3UeaXs07xr0o(ZLjava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->exchangeGarminTicket$lambda$33(ZLjava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_2_Ani2kb5A6WN02qQTx2NTBsbc(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->detectBlackbird$lambda$21$lambda$20(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bfbqiY39QfKfq9sws5xlXoOZwHg(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin$lambda$45$lambda$44(Lcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dWq86H8FLdYo4nVhEiWgq3o5pN4(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin$lambda$53(Lcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dhAGWalVZ5Fpge5usE_vioNr_rc(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/jichi/ob/ui/LoginWebActivity;->detectCoros$lambda$37$lambda$36(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ePvhNX0HPzlzxZcjIhOwl9BZG74(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->onCreate$lambda$6$lambda$5(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fcqpe-JkjMynHNsRHDV57gYK4pI(Landroid/app/Dialog;Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/LoginWebActivity;->showGarminResultDialog$lambda$29(Landroid/app/Dialog;Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gQS0U0U0ZefHB5oo3A-WcGMP3xM(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin$lambda$51(Lcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i8ie5mVOBC9TC1lGeTB96PShyJU(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin$lambda$52(Lcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$keXpNGO3oHDbJftfZ0iiC6dVwbU(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->onCreate$lambda$3(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lKM1tKCaLogOHoOQCR39_lsvjts(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->detectIgpsport$lambda$56(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pAnypruB4D3a7mY3lWwxWvYczJI(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin$lambda$49(Lcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qeTyojGc4WVQeUa3cm00aC_ehiw(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin$lambda$55$lambda$54(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rOMVO9deHrxTvN23xCIjMIj6sac(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->onCreate$lambda$9(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t3AFjiriniqbxdxiExLEAekaXG4(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin$lambda$48(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t8fpO45avemwzqGtscRzGxPx-u8(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->detectTwoBulu$lambda$39(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u04XkF6ABcR_pQ0bThvWdn4DXGE(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->detectGarmin$lambda$31$lambda$30(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$yFMStgU1fi90TITH0WfDk4huv0Q(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->detectTwoBulu$lambda$39$lambda$38(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zAddeRwTHThBoDQu68fPum-e5F8(Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->showGarminResultDialog$lambda$29$lambda$28(Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/ui/LoginWebActivity;->Companion:Lcom/jichi/ob/ui/LoginWebActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 165
    const-string/jumbo v0, "xingzhe"

    iput-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->urlHistory:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 176
    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    iput-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->checkRunnable:Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;

    .line 1398
    const-string v0, ""

    iput-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->lastKmlTrack:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$detectLogin(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->detectLogin()V

    return-void
.end method

.method public static final synthetic access$exchangeGarminTicket(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->exchangeGarminTicket(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$extractCookieValue(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->extractCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$extractWahooCode(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->extractWahooCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$flushGarminDebugToPersist(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->flushGarminDebugToPersist()V

    return-void
.end method

.method public static final synthetic access$getCheckCount$p(Lcom/jichi/ob/ui/LoginWebActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->checkCount:I

    return p0
.end method

.method public static final synthetic access$getCheckRunnable$p(Lcom/jichi/ob/ui/LoginWebActivity;)Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->checkRunnable:Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;

    return-object p0
.end method

.method public static final synthetic access$getDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    return p0
.end method

.method public static final synthetic access$getIgpHttpErrorCount$p(Lcom/jichi/ob/ui/LoginWebActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->igpHttpErrorCount:I

    return p0
.end method

.method public static final synthetic access$getIgpReloadCount$p(Lcom/jichi/ob/ui/LoginWebActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->igpReloadCount:I

    return p0
.end method

.method public static final synthetic access$getLastReportedLoginError$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->lastReportedLoginError:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLoginType$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPendingClean$p(Lcom/jichi/ob/ui/LoginWebActivity;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->pendingClean:Z

    return p0
.end method

.method public static final synthetic access$getPendingCleanDone$p(Lcom/jichi/ob/ui/LoginWebActivity;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->pendingCleanDone:Z

    return p0
.end method

.method public static final synthetic access$getProgressBar$p(Lcom/jichi/ob/ui/LoginWebActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static final synthetic access$getUrlHistory$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->urlHistory:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getVerifying$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getWebView$p(Lcom/jichi/ob/ui/LoginWebActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static final synthetic access$injectGarminListener(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->injectGarminListener()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isOAuth2CallbackType(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->isOAuth2CallbackType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$loginIgpBySms(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->loginIgpBySms(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendIgpSmsCode(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->sendIgpSmsCode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setCheckCount$p(Lcom/jichi/ob/ui/LoginWebActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->checkCount:I

    return-void
.end method

.method public static final synthetic access$setDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    return-void
.end method

.method public static final synthetic access$setIgpHttpErrorCount$p(Lcom/jichi/ob/ui/LoginWebActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->igpHttpErrorCount:I

    return-void
.end method

.method public static final synthetic access$setIgpReloadCount$p(Lcom/jichi/ob/ui/LoginWebActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->igpReloadCount:I

    return-void
.end method

.method public static final synthetic access$setLastReportedLoginError$p(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->lastReportedLoginError:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setPendingCleanDone$p(Lcom/jichi/ob/ui/LoginWebActivity;Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->pendingCleanDone:Z

    return-void
.end method

.method public static final synthetic access$showGarminResultDialog(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/ui/LoginWebActivity;->showGarminResultDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$startIgpCountdown(Lcom/jichi/ob/ui/LoginWebActivity;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->startIgpCountdown(Lcom/google/android/material/button/MaterialButton;)V

    return-void
.end method

.method public static final synthetic access$twoBuluInjectKmlClick(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->twoBuluInjectKmlClick(Ljava/lang/String;)V

    return-void
.end method

.method private final varargs clearDomainCookies([Ljava/lang/String;)V
    .locals 13

    .line 189
    const-string v0, "https://"

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 1888
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 193
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, ""

    .line 194
    :cond_0
    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/String;

    const-string v6, ";"

    aput-object v6, v8, v3

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 1889
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 195
    const-string v8, "="

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v7, v8, v10, v9, v10}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 196
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "=; expires=Thu, 01 Jan 1970 00:00:00 GMT; domain=."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "; path=/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 203
    :cond_3
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method private final confirmManualLogin()V
    .locals 24

    move-object/from16 v0, p0

    .line 1444
    iget-boolean v1, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1445
    iput-boolean v1, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1446
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 1447
    iget-object v3, v0, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const-string v6, "; "

    const/4 v7, 0x2

    const/4 v8, 0x3

    const-string v9, ""

    const-string v10, "login_type"

    const-string v11, "session_id"

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-string/jumbo v14, "webView"

    const/4 v15, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    const-string v2, "garmin_cn"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_7

    .line 1517
    :cond_1
    invoke-direct {v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->detectGarmin(Z)V

    .line 1518
    iget-boolean v1, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    if-nez v1, :cond_17

    iput-boolean v15, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda19;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1447
    :sswitch_1
    const-string v4, "blackbird"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_7

    .line 1449
    :cond_2
    new-array v3, v8, [Ljava/lang/String;

    const-string v5, "https://www.blackbirdsport.com"

    invoke-virtual {v2, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v15

    const-string/jumbo v5, "www.blackbirdsport.com"

    invoke-virtual {v2, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    const-string v1, "blackbirdsport.com"

    invoke-virtual {v2, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/Iterable;

    move-object v14, v6

    check-cast v14, Ljava/lang/CharSequence;

    const/16 v20, 0x3e

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v21}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1450
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2705 \u9ed1\u9e1f\u5355\u8f66\u624b\u52a8\u786e\u8ba4\u767b\u5f55, cookie len="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LoginWeb"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_7

    .line 1447
    :sswitch_2
    const-string/jumbo v1, "wahoo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_7

    .line 1529
    :cond_3
    invoke-direct {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->detectWahoo()V

    .line 1530
    iget-boolean v1, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    if-nez v1, :cond_17

    .line 1531
    iput-boolean v15, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1533
    iget-object v1, v0, Lcom/jichi/ob/ui/LoginWebActivity;->urlHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "\uff08\u65e0URL\u8bb0\u5f55\uff09"

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/jichi/ob/ui/LoginWebActivity;->urlHistory:Ljava/util/List;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, "\n"

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1534
    :goto_0
    iget-object v2, v0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v2, :cond_5

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v13, v2

    :goto_1
    invoke-virtual {v13}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "\uff08\u65e0\uff09"

    .line 1535
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u672a\u68c0\u6d4b\u5230Wahoo\u6388\u6743\u7801\n\n\u5f53\u524dURL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n\u6700\u8fd1URL\u5386\u53f2:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u8bf7\u622a\u56fe\u53d1\u7ed9\u5f00\u53d1\u8005"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1536
    new-instance v2, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda23;

    invoke-direct {v2, v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda23;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1447
    :sswitch_3
    const-string v1, "garmin_com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_7

    .line 1513
    :cond_7
    invoke-direct {v0, v15}, Lcom/jichi/ob/ui/LoginWebActivity;->detectGarmin(Z)V

    .line 1514
    iget-boolean v1, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    if-nez v1, :cond_17

    iput-boolean v15, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda18;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1447
    :sswitch_4
    const-string v2, "coros_cn"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_7

    .line 1521
    :cond_8
    invoke-direct {v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->detectCoros(Z)V

    .line 1522
    iget-boolean v1, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    if-nez v1, :cond_17

    iput-boolean v15, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda20;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1447
    :sswitch_5
    const-string v1, "magene"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_7

    .line 1493
    :cond_9
    iget-object v1, v0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_a

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object v13, v1

    :goto_2
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda16;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    const-string v2, "(function(){try{return localStorage.getItem(\'token\')||\'\';}catch(e){return \'\';}})()"

    invoke-virtual {v13, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 1447
    :sswitch_6
    const-string v1, "outbase"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_7

    .line 1506
    :cond_b
    const-string v3, "https://outbase.cn"

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    move-object v3, v9

    :cond_c
    const-string v4, "sessionId"

    invoke-direct {v0, v3, v4}, Lcom/jichi/ob/ui/LoginWebActivity;->extractCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1507
    const-string v4, "https://melon-gateway.immomo.com"

    invoke-virtual {v2, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_3

    :cond_d
    move-object v9, v2

    .line 1508
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_e

    .line 1509
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_7

    .line 1510
    :cond_e
    iput-boolean v15, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda17;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1447
    :sswitch_7
    const-string v1, "coros_int"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_7

    .line 1525
    :cond_f
    invoke-direct {v0, v15}, Lcom/jichi/ob/ui/LoginWebActivity;->detectCoros(Z)V

    .line 1526
    iget-boolean v1, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    if-nez v1, :cond_17

    iput-boolean v15, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda21;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1447
    :sswitch_8
    const-string v4, "bryton"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_7

    .line 1454
    :cond_10
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "https://active.brytonsport.com"

    invoke-virtual {v2, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    const-string v4, "active.brytonsport.com"

    invoke-virtual {v2, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "brytonsport.com"

    invoke-virtual {v2, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/Iterable;

    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/CharSequence;

    const/16 v22, 0x3e

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v15 .. v23}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1456
    iget-object v2, v0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v2, :cond_11

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_11
    move-object v13, v2

    :goto_4
    new-instance v2, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V

    const-string v1, "(function(){return JSON.stringify({t:localStorage.getItem(\'Meteor.loginToken\')||\'\',u:localStorage.getItem(\'Meteor.userId\')||\'\'});})()"

    invoke-virtual {v13, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_7

    .line 1447
    :sswitch_9
    const-string v1, "igpsport"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_7

    .line 1474
    :cond_12
    iget-object v1, v0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_13

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    move-object v13, v1

    :goto_5
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda14;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    const-string v2, "(function(){try{return JSON.parse(localStorage.getItem(\'persist:app-store\')).global.token;}catch(e){return \'\';}})()"

    invoke-virtual {v13, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 1447
    :sswitch_a
    const-string/jumbo v1, "xingzhe"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_7

    .line 1487
    :cond_14
    const-string v3, "https://www.imxingzhe.com"

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    goto :goto_6

    :cond_15
    move-object v9, v2

    :goto_6
    const-string v2, "sessionid"

    invoke-direct {v0, v9, v2}, Lcom/jichi/ob/ui/LoginWebActivity;->extractCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1488
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_16

    .line 1489
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_7

    .line 1490
    :cond_16
    iput-boolean v15, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda15;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1552
    :cond_17
    :goto_7
    invoke-virtual {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7aa89db3 -> :sswitch_a
        -0x565ad45e -> :sswitch_9
        -0x5245d976 -> :sswitch_8
        -0x4c74f7e6 -> :sswitch_7
        -0x41f4a0e1 -> :sswitch_6
        -0x40788157 -> :sswitch_5
        -0x1b3d9520 -> :sswitch_4
        -0x6d093c4 -> :sswitch_3
        0x6ba993e -> :sswitch_2
        0x4f6f9d38 -> :sswitch_1
        0x525c5e50 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final confirmManualLogin$lambda$43(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 13

    .line 1459
    const-string v0, ";"

    const-string v1, "\""

    .line 0
    const-string/jumbo v2, "\u2705 \u767e\u9510\u817e\u624b\u52a8\u786e\u8ba4\u767b\u5f55, cookie len="

    .line 1460
    const-string v3, "bryton"

    const-string v4, "login_type"

    const-string v5, "session_id"

    const/4 v6, -0x1

    if-eqz p2, :cond_0

    :try_start_0
    move-object v7, v1

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {p2, v7}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p2, v1}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v8, "\\\""

    const-string v9, "\""

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v1, ""

    if-nez p2, :cond_1

    move-object p2, v1

    .line 1461
    :cond_1
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1462
    const-string/jumbo p2, "t"

    invoke-virtual {v7, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1463
    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1464
    const-string v7, "LoginWeb"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", token="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", userId="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1466
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 1467
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 1465
    invoke-virtual {p1, v6, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 1469
    :catch_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ";;"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, v6, p0}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private static final confirmManualLogin$lambda$45(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1475
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x22

    aput-char v2, v1, v0

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    .line 1476
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    .line 1477
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "***"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "login_type"

    const-string v1, "igpsport"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1478
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void

    .line 1480
    :cond_2
    iput-boolean v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1481
    new-instance p1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda4;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final confirmManualLogin$lambda$45$lambda$44(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 2

    .line 1481
    check-cast p0, Landroid/content/Context;

    const-string/jumbo v0, "\u672a\u68c0\u6d4b\u5230\u767b\u5f55\u6001\uff0c\u8bf7\u5148\u5b8c\u6210\u767b\u5f55"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final confirmManualLogin$lambda$46(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 2

    .line 1490
    check-cast p0, Landroid/content/Context;

    const-string/jumbo v0, "\u672a\u68c0\u6d4b\u5230\u767b\u5f55\u6001"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final confirmManualLogin$lambda$48(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1494
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x22

    aput-char v2, v1, v0

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    .line 1495
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    .line 1496
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "***"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "login_type"

    const-string v1, "magene"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1497
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void

    .line 1499
    :cond_2
    iput-boolean v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1500
    new-instance p1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda32;

    invoke-direct {p1, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda32;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final confirmManualLogin$lambda$48$lambda$47(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 2

    .line 1500
    check-cast p0, Landroid/content/Context;

    const-string/jumbo v0, "\u672a\u68c0\u6d4b\u5230\u767b\u5f55\u6001"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final confirmManualLogin$lambda$49(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 2

    .line 1510
    check-cast p0, Landroid/content/Context;

    const-string/jumbo v0, "\u672a\u68c0\u6d4b\u5230\u767b\u5f55\u6001"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final confirmManualLogin$lambda$50(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 2

    .line 1514
    check-cast p0, Landroid/content/Context;

    const-string/jumbo v0, "\u672a\u68c0\u6d4b\u5230\u4f73\u660e\u56fd\u9645\u767b\u5f55\u6001"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final confirmManualLogin$lambda$51(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 2

    .line 1518
    check-cast p0, Landroid/content/Context;

    const-string/jumbo v0, "\u672a\u68c0\u6d4b\u5230\u4f73\u660e\u4e2d\u56fd\u767b\u5f55\u6001"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final confirmManualLogin$lambda$52(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 2

    .line 1522
    check-cast p0, Landroid/content/Context;

    const-string/jumbo v0, "\u672a\u68c0\u6d4b\u5230\u9ad8\u9a70\u4e2d\u56fd\u767b\u5f55\u6001"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final confirmManualLogin$lambda$53(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 2

    .line 1526
    check-cast p0, Landroid/content/Context;

    const-string/jumbo v0, "\u672a\u68c0\u6d4b\u5230\u9ad8\u9a70\u56fd\u9645\u767b\u5f55\u6001"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final confirmManualLogin$lambda$55(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 3

    .line 1537
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1538
    const-string v1, "Wahoo\u8c03\u8bd5\u4fe1\u606f"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1539
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1540
    const-string/jumbo v1, "\u590d\u5236\u5230\u526a\u8d34\u677f"

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda36;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1545
    const-string/jumbo p1, "\u5173\u95ed"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1546
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static final confirmManualLogin$lambda$55$lambda$54(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1541
    const-string p2, "clipboard"

    invoke-virtual {p0, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/ClipboardManager;

    .line 1542
    const-string p3, "Wahoo\u8c03\u8bd5"

    check-cast p3, Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1543
    check-cast p0, Landroid/content/Context;

    const-string/jumbo p1, "\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final copyLogText(Ljava/lang/String;)V
    .locals 2

    .line 1095
    :try_start_0
    const-class v0, Landroid/content/ClipboardManager;

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 1096
    const-string v1, "garminLog"

    check-cast v1, Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1097
    :cond_0
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u65e5\u5fd7\u5df2\u590d\u5236\uff0c\u53ef\u7c98\u8d34\u53cd\u9988"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final detectBlackbird()V
    .locals 14

    .line 991
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x3

    .line 993
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "https://www.blackbirdsport.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 994
    const-string/jumbo v2, "www.blackbirdsport.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 995
    const-string v2, "blackbirdsport.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 992
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 996
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    const-string v0, "; "

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v12, 0x3e

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x14

    if-ge v1, v5, :cond_0

    goto :goto_0

    .line 998
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v5, "JSESSIONID"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v1, v5, v3, v2, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 999
    :cond_1
    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 1001
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    .line 1032
    new-instance v2, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V

    .line 1001
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1032
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final detectBlackbird$lambda$21(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 9

    .line 1002
    const-string v0, "LoginWeb"

    .line 0
    const-string/jumbo v1, "\u2705 \u9ed1\u9e1f\u5355\u8f66\u767b\u5f55\u9a8c\u8bc1\u901a\u8fc7, cookie len="

    const-string/jumbo v2, "\u9ed1\u9e1fcookie\u9a8c\u8bc1\u672a\u901a\u8fc7(\u672a\u767b\u5f55), \u7ee7\u7eed\u68c0\u6d4b: "

    const/4 v3, 0x0

    .line 1003
    :try_start_0
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 1004
    const-string v5, "https://www.blackbirdsport.com/api/user"

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 1005
    const-string v5, "Cookie"

    invoke-virtual {v4, v5, p0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 1006
    const-string v5, "User-Agent"

    const-string v6, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 1007
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 1008
    new-instance v5, Lokhttp3/OkHttpClient;

    invoke-direct {v5}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 1009
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, ""

    .line 1010
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1011
    const-string/jumbo v6, "status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ok"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 1012
    const-string v7, "content"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    :cond_2
    const/4 v5, 0x1

    if-eqz v7, :cond_3

    .line 1013
    const-string v8, "nickname"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_4

    .line 1014
    const-string/jumbo v8, "userName"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_4

    :goto_0
    move v7, v5

    goto :goto_1

    :cond_4
    move v7, v3

    :goto_1
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 1016
    iput-boolean v5, p1, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1017
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda11;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    const/16 p0, 0x50

    .line 1025
    invoke-static {v4, p0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object p0, p1, Lcom/jichi/ob/ui/LoginWebActivity;->verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1029
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u9ed1\u9e1f\u9a8c\u8bc1\u5f02\u5e38: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object p0, p1, Lcom/jichi/ob/ui/LoginWebActivity;->verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static final detectBlackbird$lambda$21$lambda$20(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 2

    .line 1019
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1020
    const-string v1, "session_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1021
    const-string v0, "login_type"

    const-string v1, "blackbird"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    .line 1019
    invoke-virtual {p0, v0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1022
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void
.end method

.method private final detectBryton()V
    .locals 10

    .line 1038
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x5

    .line 1040
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "https://active.brytonsport.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1041
    const-string v2, "active.brytonsport.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1042
    const-string v2, "brytonsport.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1043
    const-string v2, ".brytonsport.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 1044
    const-string v2, "https://www.brytonsport.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 1039
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1045
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, "; "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    const-string/jumbo v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    new-instance v2, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda31;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    const-string v0, "(function(){return JSON.stringify({t:localStorage.getItem(\'Meteor.loginToken\')||\'\',u:localStorage.getItem(\'Meteor.userId\')||\'\'});})()"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static final detectBryton$lambda$22(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1050
    const-string v3, ";"

    const-string v4, "\""

    .line 0
    const-string v5, ";;"

    const-string/jumbo v6, "\u2705 \u767e\u9510\u817e\u767b\u5f55\u6210\u529f (Meteor token len="

    const-string/jumbo v7, "\u2705 \u767e\u9510\u817e\u767b\u5f55\u6210\u529f (cookie len="

    .line 1050
    iget-boolean v8, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    if-nez v8, :cond_4

    invoke-virtual {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 1052
    :try_start_0
    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v2, v8}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2, v4}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v9, "\\\""

    const-string v10, "\""

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v4, ""

    if-nez v2, :cond_2

    move-object v2, v4

    .line 1053
    :cond_2
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v2, "t"

    invoke-virtual {v8, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1055
    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1056
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v9, 0xa

    const-string v10, "bryton"

    const-string v11, "login_type"

    const-string v12, "session_id"

    const-string v14, ")"

    const-string v15, "LoginWeb"

    const/4 v13, 0x1

    if-le v8, v9, :cond_3

    :try_start_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 1057
    iput-boolean v13, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1058
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1060
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1061
    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    .line 1059
    invoke-virtual {v0, v2, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1062
    invoke-virtual {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void

    .line 1063
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_4

    .line 1064
    iput-boolean v13, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1065
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1067
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1068
    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    .line 1066
    invoke-virtual {v0, v2, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1069
    invoke-virtual {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method

.method private final detectCoros(Z)V
    .locals 12

    if-eqz p1, :cond_0

    .line 1246
    const-string v0, "https://trainingcn.coros.com"

    goto :goto_0

    :cond_0
    const-string v0, "https://training.coros.com"

    :goto_0
    if-eqz p1, :cond_1

    .line 1247
    const-string/jumbo v2, "trainingcn.coros.com"

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "training.coros.com"

    .line 1248
    :goto_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const/4 v4, 0x2

    .line 1250
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 1251
    invoke-virtual {v3, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v4, v2

    .line 1249
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1252
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, "; "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1253
    const-string v0, "CPL-coros-token"

    invoke-direct {p0, v5, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->extractCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1254
    const-string v0, "CPL-coros-region"

    invoke-direct {p0, v5, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->extractCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1255
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0xa

    if-ge v3, v6, :cond_2

    return-void

    .line 1256
    :cond_2
    iput-boolean v2, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1257
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    if-eqz p1, :cond_3

    const-string v0, "2"

    goto :goto_2

    :cond_3
    const-string v0, "1"

    :cond_4
    :goto_2
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1259
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_5
    move-object v6, v0

    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda24;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda24;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {v6, v0, v1, v2}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final detectCoros$lambda$37(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1265
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda3;

    move-object v6, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda3;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V

    const-string p0, "(function(){\n                var out = {};\n                try { for (var i=0;i<localStorage.length;i++){ var k=localStorage.key(i); out[k]=localStorage.getItem(k); } } catch(e){}\n                return JSON.stringify(out);\n            })();"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static final detectCoros$lambda$37$lambda$36(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 1266
    const-string/jumbo v0, "userIdStr"

    const-string v3, "\""

    const/4 v4, 0x0

    .line 1268
    const-string v5, "LoginWeb"

    const-string v6, ""

    if-nez v2, :cond_0

    :try_start_0
    const-string/jumbo v7, "{}"

    goto :goto_0

    :cond_0
    move-object v7, v2

    :goto_0
    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v7, v8}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v7, v3}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\\""

    const-string v10, "\""

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "\\\\"

    const-string v16, "\\"

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1269
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1272
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 1273
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1274
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u9ad8\u9a70localStorage keys: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x5

    .line 1276
    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v8, "userId"

    const/4 v9, 0x0

    aput-object v8, v3, v9

    const/4 v8, 0x1

    aput-object v0, v3, v8

    const-string/jumbo v10, "user_id"

    const/4 v11, 0x2

    aput-object v10, v3, v11

    const-string/jumbo v10, "uid"

    const/4 v12, 0x3

    aput-object v10, v3, v12

    const/4 v10, 0x4

    aput-object v0, v3, v10

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1278
    invoke-virtual {v7, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1279
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v12, 0x6

    if-lt v10, v12, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v3

    check-cast v10, Ljava/lang/CharSequence;

    move v12, v9

    .line 1899
    :goto_3
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-ge v12, v13, :cond_5

    invoke-interface {v10, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 1279
    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v13, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    move-object v3, v6

    .line 1282
    :cond_5
    :try_start_1
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 1283
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1284
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1285
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1286
    invoke-virtual {v7, v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1287
    new-instance v13, Lkotlin/text/Regex;

    const-string v14, "\\b(\\d{15,20})\\b"

    invoke-direct {v13, v14}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v13, v12, v9, v11, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 1288
    invoke-interface {v12}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId\u4ece"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\u91cc\u6b63\u5219\u63d0\u53d6: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v6, v3

    goto :goto_4

    :catch_1
    move-exception v0

    .line 1292
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_7

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse localStorage userId error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", raw="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object v3, v6

    :cond_8
    if-eqz p0, :cond_9

    .line 1294
    const-string/jumbo v0, "\u4e2d\u56fd"

    goto :goto_6

    :cond_9
    const-string/jumbo v0, "\u56fd\u9645"

    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u2705 \u9ad8\u9a70"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\u767b\u5f55\u6210\u529f, region="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", userId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", token len="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1297
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1298
    const-string v2, "session_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p0, :cond_a

    .line 1299
    const-string v1, "coros_cn"

    goto :goto_7

    :cond_a
    const-string v1, "coros_int"

    :goto_7
    const-string v2, "login_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    move-object/from16 v2, p4

    .line 1297
    invoke-virtual {v2, v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1300
    invoke-virtual {v2}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void
.end method

.method private final detectGarmin(Z)V
    .locals 14

    .line 1165
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1166
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 1167
    const-string v3, "connect.garmin.cn"

    goto :goto_0

    :cond_1
    const-string v3, "connect.garmin.com"

    :goto_0
    move-object v6, v3

    .line 1168
    const-string v3, "https://"

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    .line 1169
    :cond_2
    const-string v3, "JWT_WEB"

    invoke-direct {p0, v0, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->extractCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1170
    const-string v3, "session"

    invoke-direct {p0, v0, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->extractCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1171
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const-string v3, "["

    const-string/jumbo v4, "\u4f73\u660e\u4e2d\u56fd"

    const-string/jumbo v5, "\u4f73\u660e\u56fd\u9645"

    const-string/jumbo v9, "\u4f73\u660e"

    const-string/jumbo v10, "\u4e2d\u56fd"

    const-string/jumbo v11, "\u56fd\u9645"

    const-string v12, "LoginWeb"

    const/16 v13, 0x14

    if-lt v0, v13, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v13, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v10, v11

    .line 1181
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " JWT_WEB+session\u5df2\u6355\u83b7\uff0c\u6b63\u5728\u63d0\u53d6CSRF..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->setEnableDebugLogs(Z)V

    .line 1183
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v5

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][WebView] \u5df2\u6355\u83b7\u767b\u5f55\u6001(JWT_WEB+session)\uff0c\u6b63\u5728\u63d0\u53d6CSRF..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_6

    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_6
    new-instance v4, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda9;

    move-object v5, p0

    move v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda9;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object p1, v5

    const-string v1, "(function(){try{var m=document.querySelector(\'meta[name=csrf-token]\');if(m&&m.content)return m.content;var html=document.documentElement.outerHTML||\'\';var r=html.match(/name=[\"\']csrf-token[\"\'][^>]*content=[\"\']([^\"\']+)/);if(r&&r[1])return r[1];return \'\';}catch(e){return \'\';}})()"

    invoke-virtual {v0, v1, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_7
    :goto_3
    move v0, p1

    move-object p1, p0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move-object v10, v11

    .line 1172
    :goto_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " JWT_WEB len="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", session len="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\uff0c\u7ee7\u7eed\u68c0\u6d4b..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget v6, p1, Lcom/jichi/ob/ui/LoginWebActivity;->checkCount:I

    const/4 v7, 0x3

    if-gt v6, v7, :cond_a

    .line 1175
    sget-object v6, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v6, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->setEnableDebugLogs(Z)V

    .line 1176
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move-object v4, v5

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "][WebView] \u767b\u5f55\u68c0\u6d4b\u4e2d\uff1a\u5c1a\u672a\u6355\u83b7\u767b\u5f55\u6001\uff0c\u7b49\u5f85\u9875\u9762\u767b\u5f55\u5b8c\u6210"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1178
    :cond_a
    iget-object v0, p1, Lcom/jichi/ob/ui/LoginWebActivity;->verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static final detectGarmin$lambda$31(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 1194
    const-string v1, ""

    const/4 v2, 0x1

    if-eqz p5, :cond_0

    check-cast p5, Ljava/lang/CharSequence;

    invoke-static {p5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_0

    new-array v3, v2, [C

    const/16 v4, 0x22

    aput-char v4, v3, v0

    invoke-static {p5, v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p5

    if-nez p5, :cond_1

    :cond_0
    move-object p5, v1

    .line 1195
    :cond_1
    iget-boolean v3, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1196
    iput-boolean v2, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1198
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 1199
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1200
    const-string v3, "jwt_web"

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1201
    const-string v3, "session"

    invoke-virtual {p1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1202
    const-string v3, "csrf"

    invoke-virtual {p1, v3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1203
    const-string v3, "cookies"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1204
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "toString(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    .line 1205
    const-string/jumbo v3, "\u4e2d\u56fd"

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "\u56fd\u9645"

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x8

    invoke-static {p5, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2705 \u4f73\u660e"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u767b\u5f55\u6210\u529f, JWT_WEB len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, ", session len="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", \u6240\u6709cookie len="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", CSRF="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LoginWeb"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    sget-object p2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {p2, v2}, Lcom/jichi/ob/api/GarminApi$Companion;->setEnableDebugLogs(Z)V

    .line 1207
    sget-object p2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    if-eqz p4, :cond_4

    const-string/jumbo p3, "\u4f73\u660e\u4e2d\u56fd"

    goto :goto_2

    :cond_4
    const-string/jumbo p3, "\u4f73\u660e\u56fd\u9645"

    :goto_2
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, "][WebView] \u2705 \u767b\u5f55\u6210\u529f(JWT_WEB+session\u5df2\u6355\u83b7)"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1208
    new-instance p2, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1, p4}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda6;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Z)V

    invoke-virtual {p0, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1215
    :cond_5
    iget-object p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static final detectGarmin$lambda$31$lambda$30(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Z)V
    .locals 2

    .line 1209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1210
    const-string v1, "***"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 1211
    const-string p2, "garmin_cn"

    goto :goto_0

    :cond_0
    const-string p2, "garmin_com"

    :goto_0
    const-string v0, "login_type"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    .line 1209
    invoke-virtual {p0, p2, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1212
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void
.end method

.method private final detectIgpsport()V
    .locals 3

    .line 1557
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    const-string v1, "igpsport_int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1558
    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    const-string/jumbo v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    new-instance v2, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda30;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Z)V

    const-string v0, "(function() {\n    try {\n        var raw = localStorage.getItem(\'persist:app-store\');\n        if (!raw) return \'NO_PERSIST\';\n        var obj = JSON.parse(raw);\n        var global = JSON.parse(obj.global || \'{}\');\n        return global.token || \'NO_TOKEN\';\n    } catch(e) { return \'ERR:\' + e.message; }\n})()"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static final detectIgpsport$lambda$56(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1571
    const-string v2, "Bearer "

    if-eqz v1, :cond_0

    .line 1572
    :try_start_0
    const-string v3, "\""

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "\\u0022"

    const-string v6, "\""

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string v11, "\\/"

    const-string v12, "/"

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 1573
    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x50

    if-le v3, v4, :cond_2

    .line 1574
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1576
    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;

    move/from16 v3, p1

    invoke-direct {v2, v3, v1, v0, v5}, Lcom/jichi/ob/ui/LoginWebActivity$detectIgpsport$1$1;-><init>(ZLjava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Lkotlin/coroutines/Continuation;)V

    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 1611
    const-string v1, "[igp] parse error"

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "LoginWeb"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final detectLogin()V
    .locals 4

    .line 969
    iget-boolean v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "garmin_cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 979
    :cond_1
    invoke-direct {p0, v2}, Lcom/jichi/ob/ui/LoginWebActivity;->detectGarmin(Z)V

    return-void

    .line 970
    :sswitch_1
    const-string v1, "blackbird"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 976
    :cond_2
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->detectBlackbird()V

    return-void

    .line 970
    :sswitch_2
    const-string/jumbo v1, "wahoo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 982
    :cond_3
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->detectWahoo()V

    return-void

    .line 970
    :sswitch_3
    const-string v1, "polar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "2bulu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    .line 985
    :cond_4
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->detectTwoBulu()V

    return-void

    .line 970
    :sswitch_5
    const-string v1, "garmin_com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    .line 978
    :cond_5
    invoke-direct {p0, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->detectGarmin(Z)V

    return-void

    .line 970
    :sswitch_6
    const-string v1, "coros_cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    .line 980
    :cond_6
    invoke-direct {p0, v2}, Lcom/jichi/ob/ui/LoginWebActivity;->detectCoros(Z)V

    return-void

    .line 970
    :sswitch_7
    const-string/jumbo v1, "trainingpeaks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v1, "suunto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    .line 983
    :cond_7
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->detectWahoo()V

    return-void

    .line 970
    :sswitch_9
    const-string/jumbo v1, "strava"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v1, "withings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "magene"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    .line 974
    :cond_8
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->detectMagene()V

    return-void

    .line 970
    :sswitch_c
    const-string v1, "outbase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    .line 975
    :cond_9
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->detectOutbase()V

    return-void

    .line 970
    :sswitch_d
    const-string v1, "igpsport_int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    .line 972
    :cond_a
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->detectIgpsport()V

    return-void

    .line 970
    :sswitch_e
    const-string v1, "fitbit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    .line 984
    :cond_b
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->detectWahoo()V

    return-void

    .line 970
    :sswitch_f
    const-string v1, "coros_int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    .line 981
    :cond_c
    invoke-direct {p0, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->detectCoros(Z)V

    return-void

    .line 970
    :sswitch_10
    const-string v1, "bryton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    .line 977
    :cond_d
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->detectBryton()V

    return-void

    .line 970
    :sswitch_11
    const-string v1, "igpsport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    .line 971
    :cond_e
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->detectIgpsport()V

    return-void

    .line 970
    :sswitch_12
    const-string/jumbo v1, "xingzhe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    .line 973
    :cond_f
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->detectXingzhe()V

    :cond_10
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7aa89db3 -> :sswitch_12
        -0x565ad45e -> :sswitch_11
        -0x5245d976 -> :sswitch_10
        -0x4c74f7e6 -> :sswitch_f
        -0x4bf3d4a4 -> :sswitch_e
        -0x49d0ae2e -> :sswitch_d
        -0x41f4a0e1 -> :sswitch_c
        -0x40788157 -> :sswitch_b
        -0x3808bd69 -> :sswitch_a
        -0x352abd05 -> :sswitch_9
        -0x351b17ca -> :sswitch_8
        -0x20f0e526 -> :sswitch_7
        -0x1b3d9520 -> :sswitch_6
        -0x6d093c4 -> :sswitch_5
        0x2eee84e -> :sswitch_4
        0x65e5f3e -> :sswitch_3
        0x6ba993e -> :sswitch_2
        0x4f6f9d38 -> :sswitch_1
        0x525c5e50 -> :sswitch_0
    .end sparse-switch
.end method

.method private final detectMagene()V
    .locals 3

    .line 1649
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda40;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    const-string v2, "(function() {\n    try {\n        var t = localStorage.getItem(\'token\') || \'\';\n        var r = localStorage.getItem(\'refresh_token\') || \'\';\n        if (!t) return \'NO_TOKEN\';\n        return JSON.stringify({t: t, r: r});\n    } catch(e) { return \'ERR:\' + e.message; }\n})()"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static final detectMagene$lambda$57(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "\u2705 \u8fc8\u91d1token len="

    .line 1662
    const-string v3, "LoginWeb"

    const-string v4, ""

    if-eqz v1, :cond_0

    :try_start_0
    const-string v5, "\""

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v1, v5}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1663
    const-string v7, "\\\""

    const-string v8, "\""

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 1664
    const-string v13, "\\\\"

    const-string v14, "\\"

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v1, v4

    .line 1665
    :goto_0
    const-string v5, "NO_TOKEN"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ERR:"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v5, v8, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1e

    if-ge v5, v6, :cond_1

    goto :goto_1

    .line 1666
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1667
    const-string/jumbo v1, "t"

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1668
    const-string v7, "r"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1669
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_2

    const/4 v5, 0x1

    .line 1670
    iput-boolean v5, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1671
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1673
    const-string v5, "***"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1674
    const-string v2, "extra"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1675
    const-string v2, "login_type"

    const-string v4, "magene"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    .line 1672
    invoke-virtual {v0, v2, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1676
    invoke-virtual {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    .line 1679
    :goto_2
    const-string v1, "[magene] parse error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final detectOutbase()V
    .locals 20

    move-object/from16 v0, p0

    .line 1686
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x3

    .line 1688
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "outbase.cn"

    invoke-virtual {v1, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1689
    const-string/jumbo v4, "www.outbase.cn"

    invoke-virtual {v1, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 1690
    const-string v4, "https://outbase.cn"

    invoke-virtual {v1, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 1687
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 1691
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/Iterable;

    const-string v3, "; "

    move-object v9, v3

    check-cast v9, Ljava/lang/CharSequence;

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1692
    const-string v8, "sessionId"

    invoke-direct {v0, v4, v8}, Lcom/jichi/ob/ui/LoginWebActivity;->extractCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 1693
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-string v10, "session_id"

    if-nez v9, :cond_0

    invoke-direct {v0, v4, v10}, Lcom/jichi/ob/ui/LoginWebActivity;->extractCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_0
    check-cast v8, Ljava/lang/String;

    .line 1694
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v9, 0xa

    if-gt v4, v9, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x4

    .line 1698
    new-array v4, v4, [Ljava/lang/String;

    const-string v9, "https://melon-gateway.immomo.com"

    invoke-virtual {v1, v9}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    .line 1699
    const-string v5, "melon-gateway.immomo.com"

    invoke-virtual {v1, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1700
    const-string v5, "https://immomo.com"

    invoke-virtual {v1, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1701
    const-string v5, ".immomo.com"

    invoke-virtual {v1, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 1697
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1702
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/Iterable;

    move-object v12, v3

    check-cast v12, Ljava/lang/CharSequence;

    const/16 v18, 0x3e

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1703
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[outbase] sessionId len="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", gatewayCookies len="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LoginWeb"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iput-boolean v6, v0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1706
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1707
    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1708
    const-string v3, "extra"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1709
    const-string v2, "login_type"

    const-string v3, "outbase"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    .line 1706
    invoke-virtual {v0, v2, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1710
    invoke-virtual {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void
.end method

.method private final detectTwoBulu()V
    .locals 14

    .line 1349
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x3

    .line 1351
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "https://www.2bulu.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1352
    const-string v2, "https://2bulu.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 1353
    const-string v2, "2bulu.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 1350
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1354
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    const-string v0, "; "

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v12, 0x3e

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1356
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 1357
    :cond_0
    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 1358
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    .line 1387
    new-instance v2, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda34;

    invoke-direct {v2, v0, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda34;-><init>(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V

    .line 1358
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1387
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final detectTwoBulu$lambda$39(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 9

    .line 1359
    const-string v0, "LoginWeb"

    .line 0
    const-string/jumbo v1, "\u2705 \u4e24\u6b65\u8def\u767b\u5f55\u9a8c\u8bc1\u901a\u8fc7, cookie len="

    const-string/jumbo v2, "\u4e24\u6b65\u8defcookie\u9a8c\u8bc1\u672a\u901a\u8fc7(\u672a\u767b\u5f55), \u7ee7\u7eed\u68c0\u6d4b: "

    const/4 v3, 0x0

    .line 1361
    :try_start_0
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 1362
    const-string v5, "https://www.2bulu.com/community/queryList.htm"

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 1363
    const-string v5, "Cookie"

    invoke-virtual {v4, v5, p0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 1364
    const-string v5, "User-Agent"

    const-string v6, "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 1365
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 1366
    new-instance v5, Lokhttp3/OkHttpClient;

    invoke-direct {v5}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 1367
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, ""

    .line 1368
    :cond_1
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "nologin"

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v3, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_2

    const/4 v2, 0x1

    .line 1370
    iput-boolean v2, p1, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1371
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda35;

    invoke-direct {v1, p1, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda35;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const/16 p0, 0x50

    .line 1380
    invoke-static {v4, p0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iget-object p0, p1, Lcom/jichi/ob/ui/LoginWebActivity;->verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1384
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4e24\u6b65\u8def\u9a8c\u8bc1\u5f02\u5e38: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object p0, p1, Lcom/jichi/ob/ui/LoginWebActivity;->verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static final detectTwoBulu$lambda$39$lambda$38(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 3

    .line 1374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1375
    const-string v1, "session_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1376
    const-string v1, "login_type"

    const-string v2, "2bulu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 1374
    invoke-virtual {p0, v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1377
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->enterTwoBuluBrowseMode(Ljava/lang/String;)V

    return-void
.end method

.method private final detectWahoo()V
    .locals 6

    .line 1331
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1332
    :cond_1
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "localhost:8080"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "code="

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1333
    :cond_2
    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->extractWahooCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1334
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 1335
    iput-boolean v1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1336
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u2705 Wahoo \u6388\u6743\u7801\u6355\u83b7(detectWahoo) len="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoginWeb"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1338
    const-string v2, "***"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1339
    const-string v1, "login_type"

    const-string/jumbo v2, "wahoo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 1337
    invoke-virtual {p0, v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1340
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    :cond_4
    :goto_0
    return-void
.end method

.method private final detectXingzhe()V
    .locals 14

    .line 1618
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x3

    .line 1620
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "https://www.imxingzhe.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1621
    const-string v2, "http://www.imxingzhe.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 1622
    const-string v2, "imxingzhe.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 1619
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1623
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    const-string v0, "; "

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v12, 0x3e

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1624
    const-string v1, "sessionid"

    invoke-direct {p0, v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->extractCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1625
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xa

    if-gt v2, v5, :cond_0

    goto :goto_0

    .line 1626
    :cond_0
    iget-object v2, p0, Lcom/jichi/ob/ui/LoginWebActivity;->verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    .line 1629
    :cond_1
    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;

    const/4 v4, 0x0

    invoke-direct {v2, v1, p0, v0, v4}, Lcom/jichi/ob/ui/LoginWebActivity$detectXingzhe$1;-><init>(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final enterTwoBuluBrowseMode(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 1401
    iput-boolean v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->twoBuluBrowseMode:Z

    .line 1402
    :try_start_0
    const-string/jumbo v1, "\u4e24\u6b65\u8def\uff08\u6d4f\u89c8\u8f68\u8ff9\u81ea\u52a8\u4e0b\u8f7dKML\uff09"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    :catch_0
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string/jumbo v2, "\u4e24\u6b65\u8def\u767b\u5f55\u6210\u529f\uff01\u6d4f\u89c8\u8f68\u8ff9\u8be6\u60c5\u9875\u5c06\u81ea\u52a8\u4e0b\u8f7dKML\uff0c\u6309\u8fd4\u56de\u952e\u9000\u51fa"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1404
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8fdb\u5165\u4e24\u6b65\u8def\u6d4f\u89c8\u6a21\u5f0f, cookie len="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginWeb"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :try_start_1
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda8;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method private static final enterTwoBuluBrowseMode$lambda$41(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 1407
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p6, "\u4e24\u6b65\u8def\u4e0b\u8f7d\u6355\u83b7: "

    invoke-direct {p3, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p6, " mime="

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p6, " disp="

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p6, "LoginWeb"

    invoke-static {p6, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p3, p2

    check-cast p3, Ljava/lang/CharSequence;

    const-string p6, ".kml"

    move-object p7, p6

    check-cast p7, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-static {p3, p7, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, ""

    if-nez p5, :cond_0

    move-object p5, p3

    :cond_0
    check-cast p5, Ljava/lang/CharSequence;

    const-string p7, "kml"

    move-object v1, p7

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p5, v1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p5

    if-nez p5, :cond_4

    if-nez p4, :cond_1

    move-object p5, p3

    goto :goto_0

    :cond_1
    move-object p5, p4

    .line 1409
    :goto_0
    check-cast p5, Ljava/lang/CharSequence;

    check-cast p7, Ljava/lang/CharSequence;

    invoke-static {p5, p7, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p5

    if-nez p5, :cond_4

    if-nez p4, :cond_2

    move-object p4, p3

    :cond_2
    check-cast p4, Ljava/lang/CharSequence;

    const-string p3, "filename"

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p4, p3, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 1414
    :cond_3
    check-cast p0, Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u68c0\u6d4b\u5230\u6587\u4ef6\u4e0b\u8f7d\uff08\u975eKML\uff09\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1411
    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/jichi/ob/ui/LoginWebActivity;->lastKmlTrack:Ljava/lang/String;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p3, "/"

    const/4 p4, 0x0

    const/4 p5, 0x2

    invoke-static {p2, p3, p4, p5, p4}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p7, "?"

    invoke-static {p3, p7, p4, p5, p4}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p6, p4, p5, p4}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_5
    check-cast p3, Ljava/lang/String;

    .line 1412
    sget-object p4, Lcom/jichi/ob/api/TwoBuluApi;->Companion:Lcom/jichi/ob/api/TwoBuluApi$Companion;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p4, p0, p2, p1, p3}, Lcom/jichi/ob/api/TwoBuluApi$Companion;->saveKmlDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final exchangeGarminTicket(Ljava/lang/String;Z)V
    .locals 2

    .line 1221
    iget-boolean v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1222
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 1241
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2, p1, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda7;-><init>(ZLjava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V

    .line 1222
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1241
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final exchangeGarminTicket$lambda$33(ZLjava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 5

    const-string/jumbo v0, "\u2705 \u4f73\u660e"

    .line 1224
    const-string v1, "LoginWeb"

    if-eqz p0, :cond_0

    :try_start_0
    const-string v2, "https://connect.garmin.cn/app"

    goto :goto_0

    .line 1225
    :cond_0
    const-string v2, "https://connect.garmin.com/modern/"

    .line 1226
    :goto_0
    sget-object v3, Lcom/jichi/ob/api/GarminOAuthHelper;->INSTANCE:Lcom/jichi/ob/api/GarminOAuthHelper;

    invoke-virtual {v3, p1, p0, v2}, Lcom/jichi/ob/api/GarminOAuthHelper;->loginWithTicket(Ljava/lang/String;ZLjava/lang/String;)Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;

    move-result-object p1

    .line 1227
    iget-boolean v2, p2, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/jichi/ob/ui/LoginWebActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 1228
    iput-boolean v2, p2, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    if-eqz p0, :cond_1

    .line 1229
    const-string/jumbo v2, "\u4e2d\u56fd"

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "\u56fd\u9645"

    :goto_1
    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u767b\u5f55\u6210\u529f, accessToken len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p1, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda5;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;Z)V

    invoke-virtual {p2, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 1238
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u4f73\u660eticket\u6362token\u5931\u8d25: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object p0, p2, Lcom/jichi/ob/ui/LoginWebActivity;->verifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static final exchangeGarminTicket$lambda$33$lambda$32(Lcom/jichi/ob/ui/LoginWebActivity;Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;Z)V
    .locals 2

    .line 1231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1232
    const-string v1, "***"

    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminOAuthHelper$OAuth2Token;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 1233
    const-string p2, "garmin_cn"

    goto :goto_0

    :cond_0
    const-string p2, "garmin_com"

    :goto_0
    const-string v0, "login_type"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    .line 1231
    invoke-virtual {p0, p2, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 1234
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void
.end method

.method private final extractCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 1714
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/String;

    const-string v2, ";"

    const/4 v6, 0x0

    aput-object v2, v1, v6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1893
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1715
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/CharSequence;

    new-array v8, p1, [Ljava/lang/String;

    const-string v1, "="

    aput-object v1, v8, v6

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1716
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, p1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1718
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private final extractWahooCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 1308
    const-string v0, "#"

    const-string v1, "code="

    const/4 v2, 0x0

    .line 1310
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1311
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    return-object v3

    .line 1313
    :cond_1
    :goto_0
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5, v6, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1314
    invoke-static {p1, v0, v2, v6, v2}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1315
    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v8, p1, [Ljava/lang/String;

    const-string p1, "&"

    aput-object p1, v8, v5

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1316
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1317
    invoke-static {v0, v1, v5, v6, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0, v1, v2, v6, v2}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_3
    return-object v2
.end method

.method private final flushGarminDebugToPersist()V
    .locals 4

    .line 1081
    :try_start_0
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/api/GarminApi$Companion;->getDebugLogs()Ljava/util/List;

    move-result-object v0

    .line 1082
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1084
    new-instance v1, Lcom/jichi/ob/util/PrefsManager;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    .line 1085
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jichi/ob/util/PrefsManager;->appendPersistLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1086
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1088
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1082
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method private final injectGarminListener()Ljava/lang/String;
    .locals 1

    .line 1881
    const-string v0, "(function(){\n    if (window.__garminTicketInjected) return;\n    window.__garminTicketInjected = true;\n    function extractTicket(str) {\n        if (!str) return null;\n        var m = str.match(/ticket=(ST-[A-Za-z0-9\\-]+)/);\n        return m ? m[1] : null;\n    }\n    function checkAndReport() {\n        try {\n            var t = extractTicket(location.href) || extractTicket(location.search) || extractTicket(location.hash);\n            if (t && window.GarminBridge) { window.GarminBridge.onTicket(t); return true; }\n        } catch(e) {}\n        return false;\n    }\n    // 1. \u7acb\u5373\u68c0\u67e5\n    checkAndReport();\n    // 2. \u8f6e\u8be2URL\u53d8\u5316\uff08JS\u91cd\u5b9a\u5411\u4e0d\u4f1a\u89e6\u53d1onPageStarted\uff09\n    setInterval(checkAndReport, 500);\n    // 3. \u76d1\u542cpostMessage\n    window.addEventListener(\'message\', function(e) {\n        try {\n            var t = extractTicket(typeof e.data === \'string\' ? e.data : JSON.stringify(e.data));\n            if (t && window.GarminBridge) window.GarminBridge.onTicket(t);\n        } catch(err) {}\n    });\n    // 4. \u62e6\u622aXMLHttpRequest\u54cd\u5e94\uff08ticket\u53ef\u80fd\u5728AJAX\u54cd\u5e94\u4e2d\uff09\n    var origOpen = XMLHttpRequest.prototype.open;\n    var origSend = XMLHttpRequest.prototype.send;\n    XMLHttpRequest.prototype.open = function(method, url) {\n        this.__url = url;\n        return origOpen.apply(this, arguments);\n    };\n    XMLHttpRequest.prototype.send = function() {\n        this.addEventListener(\'load\', function() {\n            try {\n                var t = extractTicket(this.responseText) || extractTicket(this.__url);\n                if (t && window.GarminBridge) window.GarminBridge.onTicket(t);\n            } catch(e) {}\n        });\n        return origSend.apply(this, arguments);\n    };\n    // 5. \u62e6\u622afetch\u54cd\u5e94\n    var origFetch = window.fetch;\n    if (origFetch) {\n        window.fetch = function() {\n            return origFetch.apply(this, arguments).then(function(resp) {\n                try {\n                    var clone = resp.clone();\n                    clone.text().then(function(text) {\n                        var t = extractTicket(text);\n                        if (t && window.GarminBridge) window.GarminBridge.onTicket(t);\n                    });\n                } catch(e) {}\n                return resp;\n            });\n        };\n    }\n    // v8.3.4: 6. \u8f6e\u8be2\u9875\u9762\u9519\u8bef\u63d0\u793a\u6587\u672c\uff08\u5bc6\u7801\u9519\u8bef/\u4e24\u6b65\u9a8c\u8bc1/\u98ce\u63a7\u7b49\uff09\uff0c\u56de\u4f20App\u7edf\u4e00\u5f39\u7a97\uff08\u5e26\u65e5\u5fd7+\u590d\u5236\uff09\n    var lastErr = \'\';\n    var errKeys = [\'password\',\'invalid\',\'incorrect\',\'two-step\',\'two step\',\'verification\',\'security code\',\'rate limit\',\'too many\',\'429\',\'\u5bc6\u7801\',\'\u65e0\u6548\',\'\u7528\u6237\u540d\',\'\u9a8c\u8bc1\u7801\',\'\u4e24\u6b65\',\'\u9891\u7e41\',\'\u98ce\u63a7\',\'\u9650\u6d41\'];\n    setInterval(function() {\n        try {\n            var t = document.body ? document.body.innerText : \'\';\n            if (!t) return;\n            var hit = \'\';\n            for (var i = 0; i < errKeys.length; i++) {\n                if (t.toLowerCase().indexOf(errKeys[i]) >= 0) { hit = t; break; }\n            }\n            if (hit && hit !== lastErr && window.GarminBridge) {\n                lastErr = hit;\n                var msg = hit.replace(/\\\\s+/g, \' \').substring(0, 300);\n                window.GarminBridge.onLoginError(msg);\n            }\n        } catch(e) {}\n    }, 2000);\n})();"

    return-object v0
.end method

.method private final isOAuth2CallbackType(Ljava/lang/String;)Z
    .locals 1

    .line 1327
    const-string/jumbo v0, "wahoo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "suunto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "strava"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "polar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fitbit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "withings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "trainingpeaks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final loginIgpBySms(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 927
    const-string v0, "LoginWeb"

    .line 0
    const-string v1, "loginIgpBySms \u5931\u8d25: "

    const-string/jumbo v2, "{\"phone\":\""

    const/4 v3, 0x0

    .line 928
    :try_start_0
    new-instance v4, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v4}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x14

    invoke-virtual {v4, v6, v7, v5}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v4

    .line 929
    sget-object v5, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\",\"code\":\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\",\"appId\":\"igpsport-web\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {p2, v2}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 930
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 931
    const-string v2, "https://prod.zh.igpsport.com/service/auth/account/login/phone"

    invoke-virtual {p2, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 932
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 933
    const-string p2, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {p1, p2, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 934
    const-string p2, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 14) Chrome/131.0.0.0 Mobile"

    invoke-virtual {p1, p2, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 935
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 936
    invoke-virtual {v4, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 937
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, ""

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    move-object p1, p2

    .line 938
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 939
    const-string v4, "code"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    .line 940
    const-string p1, "data"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "access_token"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p1

    .line 941
    :cond_3
    :goto_0
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4

    return-object p2

    :cond_4
    return-object v3

    .line 943
    :cond_5
    const-string p2, "message"

    const/16 v4, 0x64

    invoke-static {p1, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 946
    const-string p2, "loginIgpBySms \u5f02\u5e38"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private final loginTypeToDataSource()Lcom/jichi/ob/model/DataSource;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "garmin_cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 216
    :cond_0
    sget-object v0, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_1
    const-string v1, "blackbird"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 212
    :cond_1
    sget-object v0, Lcom/jichi/ob/model/DataSource;->BLACKBIRD:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_2
    const-string/jumbo v1, "wahoo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 219
    :cond_2
    sget-object v0, Lcom/jichi/ob/model/DataSource;->WAHOO:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_3
    const-string v1, "polar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 222
    :cond_3
    sget-object v0, Lcom/jichi/ob/model/DataSource;->POLAR:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_4
    const-string v1, "2bulu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    .line 226
    :cond_4
    sget-object v0, Lcom/jichi/ob/model/DataSource;->TWO_BULU:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_5
    const-string v1, "garmin_com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    .line 215
    :cond_5
    sget-object v0, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_6
    const-string v1, "coros_cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    .line 217
    :cond_6
    sget-object v0, Lcom/jichi/ob/model/DataSource;->COROS_CN:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_7
    const-string/jumbo v1, "trainingpeaks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    .line 225
    :cond_7
    sget-object v0, Lcom/jichi/ob/model/DataSource;->TRAININGPEAKS:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_8
    const-string/jumbo v1, "suunto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    .line 220
    :cond_8
    sget-object v0, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_9
    const-string/jumbo v1, "strava"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    .line 221
    :cond_9
    sget-object v0, Lcom/jichi/ob/model/DataSource;->STRAVA:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_a
    const-string/jumbo v1, "withings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    .line 224
    :cond_a
    sget-object v0, Lcom/jichi/ob/model/DataSource;->WITHINGS:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_b
    const-string v1, "magene"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    .line 211
    :cond_b
    sget-object v0, Lcom/jichi/ob/model/DataSource;->MAGENE:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_c
    const-string v1, "outbase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    .line 214
    :cond_c
    sget-object v0, Lcom/jichi/ob/model/DataSource;->OUTBASE:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_d
    const-string v1, "igpsport_int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    .line 209
    :cond_d
    sget-object v0, Lcom/jichi/ob/model/DataSource;->IGPSPORT_INT:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_e
    const-string v1, "fitbit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    .line 223
    :cond_e
    sget-object v0, Lcom/jichi/ob/model/DataSource;->FITBIT:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_f
    const-string v1, "coros_int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    .line 218
    :cond_f
    sget-object v0, Lcom/jichi/ob/model/DataSource;->COROS_INT:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_10
    const-string v1, "bryton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    .line 213
    :cond_10
    sget-object v0, Lcom/jichi/ob/model/DataSource;->BRYTON:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_11
    const-string v1, "igpsport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    .line 208
    :cond_11
    sget-object v0, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 207
    :sswitch_12
    const-string/jumbo v1, "xingzhe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    .line 210
    :cond_12
    sget-object v0, Lcom/jichi/ob/model/DataSource;->XINGZHE:Lcom/jichi/ob/model/DataSource;

    return-object v0

    .line 227
    :goto_0
    sget-object v0, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7aa89db3 -> :sswitch_12
        -0x565ad45e -> :sswitch_11
        -0x5245d976 -> :sswitch_10
        -0x4c74f7e6 -> :sswitch_f
        -0x4bf3d4a4 -> :sswitch_e
        -0x49d0ae2e -> :sswitch_d
        -0x41f4a0e1 -> :sswitch_c
        -0x40788157 -> :sswitch_b
        -0x3808bd69 -> :sswitch_a
        -0x352abd05 -> :sswitch_9
        -0x351b17ca -> :sswitch_8
        -0x20f0e526 -> :sswitch_7
        -0x1b3d9520 -> :sswitch_6
        -0x6d093c4 -> :sswitch_5
        0x2eee84e -> :sswitch_4
        0x65e5f3e -> :sswitch_3
        0x6ba993e -> :sswitch_2
        0x4f6f9d38 -> :sswitch_1
        0x525c5e50 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final onCreate$lambda$2(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 266
    iput-boolean p1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return-void
.end method

.method private static final onCreate$lambda$3(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 2

    .line 286
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 287
    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 289
    :catch_0
    check-cast p1, Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u8bf7\u624b\u52a8\u8bbf\u95ee: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final onCreate$lambda$4(Lcom/jichi/ob/ui/LoginWebActivity;ZLandroid/view/View;)V
    .locals 3

    .line 295
    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    const-string/jumbo v0, "\u5207\u6362\u5230\u8f6f\u4ef6\u5185\u6d4f\u89c8\u5668\u767b\u5f55\uff0c\u8bf7\u624b\u52a8\u5b8c\u6210\u9a8c\u8bc1"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 296
    sget p2, Lcom/jichi/ob/R$id;->mobileLoginLayout:I

    invoke-virtual {p0, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    sget p2, Lcom/jichi/ob/R$id;->webLoginContainer:I

    invoke-virtual {p0, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    :cond_0
    iget-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    const-string/jumbo v2, "webView"

    if-nez p2, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 300
    sget p2, Lcom/jichi/ob/R$id;->btnConfirmLogin:I

    invoke-virtual {p0, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 301
    const-string p1, "https://sso.garmin.cn/portal/sso/zh-CN/sign-in?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.cn%2Fapp"

    goto :goto_0

    :cond_3
    const-string p1, "https://sso.garmin.com/sso/signin?clientId=GarminConnect&service=https%3A%2F%2Fconnect.garmin.com%2Fmodern%2F"

    .line 302
    :goto_0
    iget-object p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, p0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static final onCreate$lambda$6(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 2

    .line 306
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    const-string/jumbo v0, "\u6e05\u7a7a\u98ce\u63a7"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 308
    const-string/jumbo v0, "\u82e5\u6e05\u7a7a\u98ce\u63a7\u540e\u5f3a\u884c\u5c1d\u8bd5\u767b\u5f55\uff0c\u53ef\u80fd\u589e\u52a0\u51b7\u5374\u65f6\u95f4\uff0c\u4f60\u786e\u5b9a\u6e05\u7a7a\u5417\uff1f"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 309
    const-string/jumbo v0, "\u786e\u5b9a\u6e05\u7a7a"

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 313
    const-string/jumbo p1, "\u53d6\u6d88"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 314
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final onCreate$lambda$6$lambda$5(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 310
    sget-object p1, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    sget-object p2, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/GarminApi$Companion;->clearAllCooldownFor(Lcom/jichi/ob/model/DataSource;)V

    .line 311
    check-cast p0, Landroid/content/Context;

    const-string/jumbo p1, "\u4f73\u660e\u56fd\u9645\uff1a\u98ce\u63a7\u51b7\u5374\u7f13\u5b58\u5df2\u6e05\u7a7a\uff0c\u53ef\u91cd\u65b0\u767b\u5f55"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final onCreate$lambda$7(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;ZLcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 11

    .line 317
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, p0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v0

    .line 318
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, p0

    goto :goto_3

    :cond_3
    :goto_2
    move-object v6, v0

    .line 319
    :goto_3
    move-object p0, v4

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    move-object p0, v6

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_5

    .line 320
    :goto_4
    const-string/jumbo p0, "\u8bf7\u8f93\u5165\u90ae\u7bb1\u548c\u5bc6\u7801"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    const/4 p0, 0x0

    .line 323
    invoke-virtual {p3, p0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 324
    const-string/jumbo p0, "\u767b\u5f55\u4e2d..."

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 325
    new-instance v5, Lcom/jichi/ob/api/GarminApi;

    invoke-direct {v5}, Lcom/jichi/ob/api/GarminApi;-><init>()V

    if-eqz p4, :cond_6

    .line 326
    sget-object p0, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    goto :goto_5

    :cond_6
    sget-object p0, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;

    :goto_5
    move-object v7, p0

    .line 329
    sget-object p0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {p0, v7, v4}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownRemainAnyMinutes(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_7

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u68c0\u6d4b\u5230\u672c\u5730\u51b7\u5374\u7f13\u5b58("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "\u5206\u949f)\uff0c\u5df2\u8df3\u8fc7\u76f4\u63a5\u5c1d\u8bd5\u767b\u5f55\uff08\u767b\u5f55\u6210\u529f\u5c06\u81ea\u52a8\u6e05\u9664\u7f13\u5b58\uff09..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    goto :goto_6

    .line 333
    :cond_7
    const-string/jumbo p0, "\u6b63\u5728\u901a\u8fc7\u4f73\u660e\u5b98\u65b9\u8001\u7248\u76f4\u8fde\u901a\u9053\u767b\u5f55..."

    check-cast p0, Ljava/lang/CharSequence;

    .line 330
    :goto_6
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    sget-object p0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;

    const/4 v10, 0x0

    move-object v8, p2

    move-object v9, p3

    move v3, p4

    move-object/from16 v2, p5

    invoke-direct/range {v1 .. v10}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$5$1;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;ZLjava/lang/String;Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    move/from16 p5, p2

    move-object/from16 p6, p3

    move-object p3, v0

    move-object p4, v1

    move-object p2, p0

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final onCreate$lambda$9(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    .line 498
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin()V

    return-void
.end method

.method private final sendIgpSmsCode(Ljava/lang/String;)Z
    .locals 9

    .line 908
    const-string v0, "code"

    const-string v1, "LoginWeb"

    .line 0
    const-string v2, "sendIgpSmsCode: "

    const-string/jumbo v3, "{\"type\":1,\"username\":\""

    const/4 v4, 0x0

    .line 909
    :try_start_0
    new-instance v5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x14

    invoke-virtual {v5, v7, v8, v6}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v5

    .line 910
    sget-object v6, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "\"}"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v7, "application/json; charset=utf-8"

    invoke-virtual {v3, v7}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v6, p1, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 911
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 912
    const-string v6, "https://prod.zh.igpsport.com/service/auth/account/SendVerificationCode"

    invoke-virtual {v3, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 913
    invoke-virtual {v3, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 914
    const-string v3, "Content-Type"

    const-string v6, "application/json"

    invoke-virtual {p1, v3, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 915
    const-string v3, "User-Agent"

    const-string v6, "Mozilla/5.0 (Linux; Android 14) Chrome/131.0.0.0 Mobile"

    invoke-virtual {p1, v3, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 916
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 917
    invoke-virtual {v5, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 918
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    .line 919
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 920
    const-string p1, "message"

    const-string v5, "ok"

    invoke-virtual {v3, p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, -0x1

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " code="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v4

    :catch_0
    move-exception p1

    .line 922
    const-string v0, "sendIgpSmsCode \u5f02\u5e38"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method private final setupIgpNativeLogin()V
    .locals 7

    .line 721
    sget v0, Lcom/jichi/ob/R$id;->igpSmsLoginLayout:I

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 722
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 723
    sget v0, Lcom/jichi/ob/R$id;->btnConfirmLogin:I

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 724
    :cond_0
    sget v0, Lcom/jichi/ob/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 725
    const-string/jumbo v1, "\u767b\u5f55 iGPSPORT"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/MaterialToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 728
    sget v0, Lcom/jichi/ob/R$id;->btnIgpWebFallback:I

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda26;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    :cond_1
    sget v0, Lcom/jichi/ob/R$id;->btnIgpBackToSms:I

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda27;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    :cond_2
    sget v0, Lcom/jichi/ob/R$id;->etIgpPhone:I

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 737
    sget v0, Lcom/jichi/ob/R$id;->etIgpCode:I

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 738
    sget v0, Lcom/jichi/ob/R$id;->btnIgpSendCode:I

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 739
    sget v1, Lcom/jichi/ob/R$id;->btnIgpLogin:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 740
    sget v1, Lcom/jichi/ob/R$id;->tvIgpStatus:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 743
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, v2, v4, v0, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda28;-><init>(Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda29;

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda29;-><init>(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v5, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setupIgpNativeLogin$lambda$11(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    .line 729
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->switchToIgpWebLogin()V

    return-void
.end method

.method private static final setupIgpNativeLogin$lambda$12(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    .line 733
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->switchBackToIgpSms()V

    return-void
.end method

.method private static final setupIgpNativeLogin$lambda$14(Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 9

    .line 744
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    move-object v2, p0

    .line 745
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p4, 0xb

    if-ne p0, p4, :cond_4

    move-object p0, v2

    check-cast p0, Ljava/lang/CharSequence;

    const/4 p4, 0x0

    move v0, p4

    .line 1895
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 745
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_3
    invoke-virtual {p2, p4}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 750
    const-string/jumbo p0, "\u6b63\u5728\u53d1\u9001\u9a8c\u8bc1\u7801..."

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    move-object p0, p3

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    check-cast p4, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$3$2;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p4

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_4
    :goto_1
    move-object v3, p1

    .line 746
    const-string/jumbo p0, "\u8bf7\u8f93\u5165\u6b63\u786e\u768411\u4f4d\u624b\u673a\u53f7"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupIgpNativeLogin$lambda$16(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 10

    .line 767
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    const-string p5, ""

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p5

    .line 768
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, p0

    goto :goto_3

    :cond_3
    :goto_2
    move-object v3, p5

    .line 769
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0xb

    if-ne p0, p1, :cond_7

    move-object p0, v2

    check-cast p0, Ljava/lang/CharSequence;

    const/4 p1, 0x0

    move p5, p1

    .line 1897
    :goto_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p5, v0, :cond_5

    invoke-interface {p0, p5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 769
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    .line 770
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p5, 0x6

    if-eq p0, p5, :cond_6

    const-string/jumbo p0, "\u8bf7\u8f93\u51656\u4f4d\u9a8c\u8bc1\u7801"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 771
    :cond_6
    invoke-virtual {p3, p1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 772
    const-string/jumbo p0, "\u767b\u5f55\u4e2d..."

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 773
    const-string/jumbo p0, "\u6b63\u5728\u767b\u5f55..."

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    move-object p0, p4

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;

    const/4 v6, 0x0

    move-object v5, p2

    move-object v4, p3

    move-object v1, p4

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpNativeLogin$4$2;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_7
    :goto_5
    move-object v5, p2

    .line 769
    const-string/jumbo p0, "\u8bf7\u8f93\u5165\u6b63\u786e\u768411\u4f4d\u624b\u673a\u53f7"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupIgpWebView()V
    .locals 5

    .line 855
    sget v0, Lcom/jichi/ob/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 856
    sget v0, Lcom/jichi/ob/R$id;->webView:I

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 857
    const-string/jumbo v2, "webView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v4, 0x1

    .line 859
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 860
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 862
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 863
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 864
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 865
    const-string v3, "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 868
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 869
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v3, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-virtual {v0, v3, v4}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 870
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    new-instance v3, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;

    invoke-direct {v3, p0}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    check-cast v3, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 899
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$3;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$3;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    check-cast v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private final showGarminResultDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1113
    :try_start_0
    new-instance v0, Landroid/app/Dialog;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1114
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/jichi/ob/R$layout;->dialog_garmin_login:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1115
    sget v2, Lcom/jichi/ob/R$id;->tvGarminDialogTitle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    sget p1, Lcom/jichi/ob/R$id;->tvGarminDialogGuide:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    sget p1, Lcom/jichi/ob/R$id;->tvGarminDialogLog:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1118
    move-object v2, p3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p3

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "\uff08\u6682\u65e0\u4f73\u660e\u65e5\u5fd7\uff09"

    check-cast v2, Ljava/lang/CharSequence;

    .line 1117
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    sget p1, Lcom/jichi/ob/R$id;->btnGarminContinue:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 1120
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 p4, 0x8

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1121
    :goto_1
    sget p4, Lcom/jichi/ob/R$id;->btnGarminCopyLog:I

    invoke-virtual {v1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    new-instance v3, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda33;

    invoke-direct {v3, p0, p2, p3}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda33;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1124
    sget p2, Lcom/jichi/ob/R$id;->btnGarminOk:I

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance p4, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda41;

    invoke-direct {p4, v0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda41;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    new-instance p2, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda42;

    invoke-direct {p2, v0, p0, p3, p5}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda42;-><init>(Landroid/app/Dialog;Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 1154
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1155
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1156
    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1157
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    const p3, 0x3f666666    # 0.9f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    const/4 p3, -0x2

    .line 1156
    invoke-virtual {p1, p2, p3}, Landroid/view/Window;->setLayout(II)V

    .line 1160
    :cond_3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final showGarminResultDialog$lambda$24(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1122
    move-object p3, p2

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "\uff08\u6682\u65e0\u4f73\u660e\u65e5\u5fd7\uff09"

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\n\n\u2014\u2014\u2014 \u4f73\u660e\u767b\u5f55\u65e5\u5fd7 \u2014\u2014\u2014\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->copyLogText(Ljava/lang/String;)V

    return-void
.end method

.method private static final showGarminResultDialog$lambda$25(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1124
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final showGarminResultDialog$lambda$29(Landroid/app/Dialog;Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 2

    .line 1126
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1129
    :try_start_0
    new-instance p0, Landroid/app/Dialog;

    move-object p4, p1

    check-cast p4, Landroid/content/Context;

    const v0, 0x1030010

    invoke-direct {p0, p4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1130
    invoke-virtual {p1}, Lcom/jichi/ob/ui/LoginWebActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p4

    sget v0, Lcom/jichi/ob/R$layout;->dialog_garmin_confirm:I

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 1131
    sget v0, Lcom/jichi/ob/R$id;->tvGarminConfirmGuide:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1132
    const-string/jumbo v1, "\u5ffd\u7565\u8b66\u544a\u7ee7\u7eed\u767b\u9646\u5176\u4ed6\u7aef\u53e3\uff1f\n\n\u82e5\u8d26\u53f7\u5bc6\u7801\u6709\u8bef\u6216\u5df2\u88ab\u98ce\u63a7\uff0c\u7ee7\u7eed\u5c1d\u8bd5\u5176\u4ed6\u7aef\u53e3\u4f1a\u5bfc\u81f4\u6240\u6709\u7aef\u53e3\u5747\u88ab\u89e6\u53d1\u98ce\u63a7\uff0824H \u65e0\u6cd5\u767b\u5f55\uff09\u3002\u662f\u5426\u786e\u8ba4\u7ee7\u7eed\uff1f"

    check-cast v1, Ljava/lang/CharSequence;

    .line 1131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    sget v0, Lcom/jichi/ob/R$id;->tvGarminConfirmLog:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1134
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "\uff08\u6682\u65e0\u4f73\u660e\u65e5\u5fd7\uff09"

    check-cast v1, Ljava/lang/CharSequence;

    .line 1133
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    sget v0, Lcom/jichi/ob/R$id;->btnGarminConfirmCopy:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda37;

    invoke-direct {v1, p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda37;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    sget p2, Lcom/jichi/ob/R$id;->btnGarminConfirmCancel:I

    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda38;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    sget p2, Lcom/jichi/ob/R$id;->btnGarminConfirmOk:I

    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p3}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda39;-><init>(Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    invoke-virtual {p0, p4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 1144
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1145
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1146
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1147
    invoke-virtual {p1}, Lcom/jichi/ob/ui/LoginWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const p3, 0x3f666666    # 0.9f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    const/4 p3, -0x2

    .line 1146
    invoke-virtual {p2, p1, p3}, Landroid/view/Window;->setLayout(II)V

    .line 1150
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final showGarminResultDialog$lambda$29$lambda$26(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 1136
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "\uff08\u6682\u65e0\u4f73\u660e\u65e5\u5fd7\uff09"

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u5ffd\u7565\u8b66\u544a\u7ee7\u7eed\u767b\u9646\u5176\u4ed6\u7aef\u53e3\n\n\u2014\u2014\u2014 \u4f73\u660e\u767b\u5f55\u65e5\u5fd7 \u2014\u2014\u2014\n"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->copyLogText(Ljava/lang/String;)V

    return-void
.end method

.method private static final showGarminResultDialog$lambda$29$lambda$27(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1138
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final showGarminResultDialog$lambda$29$lambda$28(Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1140
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1141
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final startIgpCountdown(Lcom/google/android/material/button/MaterialButton;)V
    .locals 2

    const/4 v0, 0x0

    .line 951
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 952
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/16 v1, 0x3c

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 953
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1;

    invoke-direct {v1, v0, p1}, Lcom/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/google/android/material/button/MaterialButton;)V

    .line 965
    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final switchBackToIgpSms()V
    .locals 4

    .line 830
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 832
    :try_start_0
    iput-boolean v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 833
    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_1

    const-string/jumbo v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/jichi/ob/ui/LoginWebActivity;->checkRunnable:Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 834
    sget v1, Lcom/jichi/ob/R$id;->webLoginContainer:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 835
    :cond_2
    sget v1, Lcom/jichi/ob/R$id;->btnIgpBackToSms:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    .line 836
    :cond_3
    sget v1, Lcom/jichi/ob/R$id;->btnConfirmLogin:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    .line 838
    :cond_4
    sget v1, Lcom/jichi/ob/R$id;->etIgpPhone:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 839
    :cond_5
    sget v1, Lcom/jichi/ob/R$id;->etIgpCode:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 840
    :cond_6
    sget v1, Lcom/jichi/ob/R$id;->etIgpCode:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 841
    :cond_7
    sget v1, Lcom/jichi/ob/R$id;->btnIgpLogin:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 842
    :cond_8
    sget v1, Lcom/jichi/ob/R$id;->btnIgpLogin:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_9

    const-string/jumbo v3, "\u767b\u5f55"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 843
    :cond_9
    sget v1, Lcom/jichi/ob/R$id;->btnIgpSendCode:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 844
    :cond_a
    sget v1, Lcom/jichi/ob/R$id;->btnIgpSendCode:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_b

    const-string/jumbo v2, "\u53d1\u9001\u9a8c\u8bc1\u7801"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 845
    :cond_b
    sget v1, Lcom/jichi/ob/R$id;->tvIgpStatus:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_c

    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    :cond_c
    sget v1, Lcom/jichi/ob/R$id;->igpSmsLoginLayout:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_d

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 848
    const-string/jumbo v1, "switchBackToIgpSms \u5931\u8d25"

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "LoginWeb"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final switchToIgpWebLogin()V
    .locals 7

    .line 797
    const-string/jumbo v0, "webView"

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 799
    :try_start_0
    sget v2, Lcom/jichi/ob/R$id;->igpSmsLoginLayout:I

    invoke-virtual {p0, v2}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 800
    :cond_1
    sget v2, Lcom/jichi/ob/R$id;->btnIgpBackToSms:I

    invoke-virtual {p0, v2}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    .line 801
    :cond_2
    sget v2, Lcom/jichi/ob/R$id;->btnConfirmLogin:I

    invoke-virtual {p0, v2}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    .line 803
    :cond_3
    sget v2, Lcom/jichi/ob/R$id;->btnConfirmLogin:I

    invoke-virtual {p0, v2}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    if-eqz v2, :cond_4

    new-instance v4, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda10;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    :cond_4
    sget v2, Lcom/jichi/ob/R$id;->webLoginContainer:I

    invoke-virtual {p0, v2}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 807
    :cond_5
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->setupIgpWebView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 810
    :try_start_1
    sget-object v4, Lcom/jichi/ob/ui/LoginWebActivity;->Companion:Lcom/jichi/ob/ui/LoginWebActivity$Companion;

    const-string v5, "igpsport"

    invoke-virtual {v4, v5, v1}, Lcom/jichi/ob/ui/LoginWebActivity$Companion;->clearPlatformWebLogin(Ljava/lang/String;Z)V

    .line 812
    iget-object v4, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v4, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_6
    invoke-virtual {v4, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 813
    iget-object v4, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v4, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_7
    invoke-virtual {v4}, Landroid/webkit/WebView;->clearHistory()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 815
    :catch_0
    :try_start_2
    iput v3, p0, Lcom/jichi/ob/ui/LoginWebActivity;->checkCount:I

    .line 816
    iput-boolean v3, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 818
    iget-object v3, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v3, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_8
    new-instance v4, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda12;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 821
    iget-object v3, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v3, :cond_9

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move-object v2, v3

    :goto_0
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->checkRunnable:Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 823
    const-string/jumbo v2, "switchToIgpWebLogin \u5931\u8d25"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "LoginWeb"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u7f51\u9875\u767b\u5f55\u6253\u5f00\u5931\u8d25\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_a
    :goto_1
    return-void
.end method

.method private static final switchToIgpWebLogin$lambda$17(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/view/View;)V
    .locals 0

    .line 804
    invoke-direct {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->confirmManualLogin()V

    return-void
.end method

.method private static final switchToIgpWebLogin$lambda$18(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 1

    .line 819
    :try_start_0
    iget-object p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez p0, :cond_0

    const-string/jumbo p0, "webView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const-string v0, "https://login.passport.igpsport.cn/login?lang=zh-Hans"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final twoBuluInjectKmlClick(Ljava/lang/String;)V
    .locals 4

    .line 1422
    iget-boolean v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->twoBuluBrowseMode:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1423
    :cond_0
    new-instance v0, Lkotlin/text/Regex;

    const-string/jumbo v1, "track/t-([A-Za-z0-9%._~+-]+).htm"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1424
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_1

    .line 1425
    :cond_1
    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->lastKmlTrack:Ljava/lang/String;

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e24\u6b65\u8def\u8f68\u8ff9\u8be6\u60c5\u9875: t-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", \u6ce8\u5165KML\u4e0b\u8f7d\u70b9\u51fb"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoginWeb"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez p1, :cond_2

    const-string/jumbo p1, "webView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, p1

    :goto_0
    new-instance p1, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda25;

    const-string v0, "(function(){\n  try{\n    var d8 = document.querySelector(\'#base_area > div:nth-child(8) > ul\');\n    if(d8){ var lis = d8.querySelectorAll(\'li\'); if(lis.length>1) lis[1].click(); }\n    setTimeout(function(){\n      var dd = document.querySelector(\'#base_area > div:nth-child(8) > div:nth-child(3) > ul\');\n      if(dd){ var ps = dd.querySelectorAll(\'li p\'); if(ps.length>0) ps[0].click(); }\n    }, 700);\n  }catch(e){}\n})();"

    invoke-direct {p1, p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda25;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static final twoBuluInjectKmlClick$lambda$42(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 1

    .line 1439
    iget-object p0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, "webView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 1729
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string/jumbo v2, "webView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 1730
    iput-boolean v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v6, p0

    const-string v7, "LoginWeb"

    const-string v0, "igpsport"

    const-string v1, "["

    .line 231
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 233
    :try_start_0
    sget v2, Lcom/jichi/ob/R$layout;->activity_login_web:I

    invoke-virtual {v6, v2}, Lcom/jichi/ob/ui/LoginWebActivity;->setContentView(I)V

    .line 234
    invoke-virtual {v6}, Lcom/jichi/ob/ui/LoginWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v3, "xingzhe"

    if-eqz v2, :cond_0

    :try_start_1
    const-string v4, "login_type"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    :cond_1
    iput-object v2, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    .line 235
    invoke-virtual {v6}, Lcom/jichi/ob/ui/LoginWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, ""

    .line 238
    :cond_3
    iget-object v4, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 239
    invoke-direct {v6}, Lcom/jichi/ob/ui/LoginWebActivity;->setupIgpNativeLogin()V

    return-void

    .line 243
    :cond_4
    sget v4, Lcom/jichi/ob/R$id;->toolbar:I

    invoke-virtual {v6, v4}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 244
    iget-object v5, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v9, "suunto"

    const-string v10, "outbase"

    const-string v11, "garmin_cn"

    const-string/jumbo v12, "wahoo"

    const-string v13, "garmin_com"

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_2
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    .line 253
    :cond_5
    const-string/jumbo v3, "\u767b\u5f55\u4f73\u660e\u4e2d\u56fd"

    goto/16 :goto_1

    .line 244
    :sswitch_1
    const-string v3, "blackbird"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    .line 250
    :cond_6
    const-string/jumbo v3, "\u767b\u5f55\u9ed1\u9e1f\u5355\u8f66"

    goto/16 :goto_1

    .line 244
    :sswitch_2
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    .line 256
    :cond_7
    const-string/jumbo v3, "\u767b\u5f55 Wahoo"

    goto/16 :goto_1

    .line 244
    :sswitch_3
    const-string v3, "polar"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    .line 259
    :cond_8
    const-string/jumbo v3, "\u767b\u5f55 Polar"

    goto/16 :goto_1

    .line 244
    :sswitch_4
    const-string v3, "2bulu"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    .line 263
    :cond_9
    const-string/jumbo v3, "\u767b\u5f55 \u4e24\u6b65\u8def"

    goto/16 :goto_1

    .line 244
    :sswitch_5
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    .line 252
    :cond_a
    const-string/jumbo v3, "\u767b\u5f55\u4f73\u660e\u56fd\u9645"

    goto/16 :goto_1

    .line 244
    :sswitch_6
    const-string v3, "coros_cn"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    .line 254
    :cond_b
    const-string/jumbo v3, "\u767b\u5f55\u9ad8\u9a70\u4e2d\u56fd"

    goto/16 :goto_1

    .line 244
    :sswitch_7
    const-string/jumbo v3, "trainingpeaks"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    .line 262
    :cond_c
    const-string/jumbo v3, "\u767b\u5f55 TrainingPeaks"

    goto/16 :goto_1

    .line 244
    :sswitch_8
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_0

    .line 257
    :cond_d
    const-string/jumbo v3, "\u767b\u5f55 \u677e\u62d3"

    goto/16 :goto_1

    .line 244
    :sswitch_9
    const-string/jumbo v3, "strava"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    .line 258
    :cond_e
    const-string/jumbo v3, "\u767b\u5f55 Strava"

    goto/16 :goto_1

    .line 244
    :sswitch_a
    const-string/jumbo v3, "withings"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_0

    .line 261
    :cond_f
    const-string/jumbo v3, "\u767b\u5f55 Withings"

    goto/16 :goto_1

    .line 244
    :sswitch_b
    const-string v3, "magene"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_0

    .line 248
    :cond_10
    const-string/jumbo v3, "\u767b\u5f55\u8fc8\u91d1/\u987d\u9e7f"

    goto :goto_1

    .line 244
    :sswitch_c
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_0

    .line 249
    :cond_11
    const-string/jumbo v3, "\u767b\u5f55 Outbase"

    goto :goto_1

    .line 244
    :sswitch_d
    const-string v3, "igpsport_int"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_0

    .line 246
    :cond_12
    const-string/jumbo v3, "\u767b\u5f55 iGPSPORT\u56fd\u9645"

    goto :goto_1

    .line 244
    :sswitch_e
    const-string v3, "fitbit"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_0

    .line 260
    :cond_13
    const-string/jumbo v3, "\u767b\u5f55 Fitbit"

    goto :goto_1

    .line 244
    :sswitch_f
    const-string v3, "coros_int"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_0

    .line 255
    :cond_14
    const-string/jumbo v3, "\u767b\u5f55\u9ad8\u9a70\u56fd\u9645"

    goto :goto_1

    .line 244
    :sswitch_10
    const-string v3, "bryton"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_0

    .line 251
    :cond_15
    const-string/jumbo v3, "\u767b\u5f55\u767e\u9510\u817e"

    goto :goto_1

    .line 244
    :sswitch_11
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_0

    .line 245
    :cond_16
    const-string/jumbo v3, "\u767b\u5f55 iGPSPORT"

    goto :goto_1

    .line 244
    :sswitch_12
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_0

    .line 247
    :cond_17
    const-string/jumbo v3, "\u767b\u5f55\u884c\u8005"

    goto :goto_1

    .line 264
    :goto_0
    const-string/jumbo v3, "\u767b\u5f55"

    :goto_1
    check-cast v3, Ljava/lang/CharSequence;

    .line 244
    invoke-virtual {v4, v3}, Lcom/google/android/material/appbar/MaterialToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    new-instance v3, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda43;

    invoke-direct {v3, v6}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda43;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v4, v3}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v3, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string/jumbo v8, "sso.garmin.cn"

    const-string/jumbo v15, "sso.garmin.com"

    const/16 v16, 0x2

    const-string v17, "connect.garmin.com"

    const-string v18, "connect.garmin.cn"

    const/4 v4, 0x4

    const-string v5, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"

    const/16 p1, 0x3

    const-string v14, "findViewById(...)"

    move-object/from16 v19, v5

    const/16 v20, 0x0

    const-string/jumbo v21, "webView"

    const/4 v5, 0x1

    if-eqz v3, :cond_1f

    .line 271
    :try_start_3
    sget v0, Lcom/jichi/ob/R$id;->mobileLoginLayout:I

    invoke-virtual {v6, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    sget v0, Lcom/jichi/ob/R$id;->webView:I

    invoke-virtual {v6, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_18

    .line 273
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v0, v20

    :cond_18
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 274
    sget v0, Lcom/jichi/ob/R$id;->btnConfirmLogin:I

    invoke-virtual {v6, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :cond_19
    sget v0, Lcom/jichi/ob/R$id;->etEmail:I

    invoke-virtual {v6, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 276
    sget v2, Lcom/jichi/ob/R$id;->etPassword:I

    invoke-virtual {v6, v2}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 277
    sget v3, Lcom/jichi/ob/R$id;->btnMobileLogin:I

    invoke-virtual {v6, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 278
    sget v9, Lcom/jichi/ob/R$id;->tvMobileLoginStatus:I

    invoke-virtual {v6, v9}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 279
    sget v10, Lcom/jichi/ob/R$id;->tvMobileLoginTitle:I

    invoke-virtual {v6, v10}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 280
    sget v11, Lcom/jichi/ob/R$id;->tvMfaGuide:I

    invoke-virtual {v6, v11}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 282
    const-string/jumbo v12, "\u4f73\u660e\u56fd\u9645\u7248\u767b\u5f55"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const-string v10, "https://connect.garmin.com/settings/security"

    .line 284
    new-instance v12, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda44;

    invoke-direct {v12, v10, v6}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda44;-><init>(Ljava/lang/String;Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    sget v10, Lcom/jichi/ob/R$id;->tvFallbackLogin:I

    invoke-virtual {v6, v10}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 294
    new-instance v11, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda45;

    move v12, v5

    const/4 v5, 0x0

    invoke-direct {v11, v6, v5}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda45;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Z)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    sget v10, Lcom/jichi/ob/R$id;->tvClearCooldown:I

    invoke-virtual {v6, v10}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_1a

    new-instance v11, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda46;

    invoke-direct {v11, v6}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda46;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1a
    move/from16 v22, v1

    move-object v1, v0

    .line 316
    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda1;

    move v11, v4

    move/from16 v10, v22

    move-object v4, v3

    move-object v3, v9

    move-object/from16 v9, v19

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;ZLcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v4, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    sget v0, Lcom/jichi/ob/R$id;->progressBar:I

    invoke-virtual {v6, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 442
    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1b

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v0, v20

    :cond_1b
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 443
    invoke-virtual {v0, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 444
    invoke-virtual {v0, v12}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 446
    invoke-virtual {v0, v12}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 447
    invoke-virtual {v0, v12}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 448
    invoke-virtual {v0, v10}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 449
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 452
    new-array v0, v11, [Ljava/lang/String;

    aput-object v18, v0, v10

    aput-object v17, v0, v12

    aput-object v15, v0, v16

    aput-object v8, v0, p1

    invoke-direct {v6, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->clearDomainCookies([Ljava/lang/String;)V

    .line 453
    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1c

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v0, v20

    :cond_1c
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;

    invoke-direct {v1, v6}, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    const-string v2, "GarminBridge"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1d

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v0, v20

    :cond_1d
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;

    invoke-direct {v1, v6}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 489
    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1e

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v0, v20

    :cond_1e
    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$8;

    invoke-direct {v1, v6}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$8;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    check-cast v1, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void

    :cond_1f
    const/4 v4, 0x0

    .line 497
    sget v3, Lcom/jichi/ob/R$id;->btnConfirmLogin:I

    invoke-virtual {v6, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_20

    new-instance v5, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v6}, Lcom/jichi/ob/ui/LoginWebActivity$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    invoke-virtual {v3, v5}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    :cond_20
    sget v3, Lcom/jichi/ob/R$id;->webLoginContainer:I

    invoke-virtual {v6, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_21

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    :cond_21
    sget v3, Lcom/jichi/ob/R$id;->progressBar:I

    invoke-virtual {v6, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/jichi/ob/ui/LoginWebActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 506
    sget v3, Lcom/jichi/ob/R$id;->webView:I

    invoke-virtual {v6, v3}, Lcom/jichi/ob/ui/LoginWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, v6, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v3, :cond_22

    .line 507
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v3, v20

    :cond_22
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v5, 0x1

    .line 508
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 509
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 511
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 512
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 513
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 515
    iget-object v5, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    iget-object v5, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    iget-object v5, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_2

    :cond_23
    move-object/from16 v5, v19

    goto :goto_3

    :cond_24
    :goto_2
    const-string v5, "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36"

    :goto_3
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 516
    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v5, 0x1

    .line 517
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 518
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    goto :goto_4

    :cond_25
    const/4 v5, 0x1

    .line 522
    :goto_4
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 523
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v3, v6, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v3, :cond_26

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v3, v20

    :cond_26
    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    const/4 v0, 0x4

    .line 526
    new-array v0, v0, [Ljava/lang/String;

    aput-object v18, v0, v4

    aput-object v17, v0, v5

    aput-object v15, v0, v16

    aput-object v8, v0, p1

    invoke-direct {v6, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->clearDomainCookies([Ljava/lang/String;)V

    .line 529
    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 530
    :cond_27
    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_28

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v0, v20

    :cond_28
    new-instance v3, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;

    invoke-direct {v3, v6}, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    const-string v8, "GarminBridge"

    invoke-virtual {v0, v3, v8}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    :cond_29
    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_2a

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v0, v20

    :cond_2a
    new-instance v3, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$11;

    invoke-direct {v3, v6}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$11;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    check-cast v3, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 690
    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_2b

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v0, v20

    :cond_2b
    new-instance v3, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$12;

    invoke-direct {v3, v6}, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$12;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;)V

    check-cast v3, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 700
    :try_start_4
    new-instance v0, Lcom/jichi/ob/util/PrefsManager;

    move-object v3, v6

    check-cast v3, Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v6}, Lcom/jichi/ob/ui/LoginWebActivity;->loginTypeToDataSource()Lcom/jichi/ob/model/DataSource;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jichi/ob/util/PrefsManager;->isLoggedIn(Lcom/jichi/ob/model/DataSource;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    iput-boolean v3, v6, Lcom/jichi/ob/ui/LoginWebActivity;->pendingClean:Z

    if-nez v0, :cond_2d

    .line 702
    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] \u672a\u767b\u5f55\u72b6\u6001\uff0c\u52a0\u8f7d\u524d\u6e05\u7406WebView\u6b8b\u7559\u767b\u5f55\u6001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_5

    :cond_2c
    move v5, v4

    .line 704
    :goto_5
    sget-object v0, Lcom/jichi/ob/ui/LoginWebActivity;->Companion:Lcom/jichi/ob/ui/LoginWebActivity$Companion;

    iget-object v1, v6, Lcom/jichi/ob/ui/LoginWebActivity;->loginType:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/jichi/ob/ui/LoginWebActivity$Companion;->clearPlatformWebLogin(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 706
    :catch_0
    :try_start_5
    iput-boolean v4, v6, Lcom/jichi/ob/ui/LoginWebActivity;->pendingClean:Z

    .line 708
    :cond_2d
    :goto_6
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, v6, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_2e

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v0, v20

    :cond_2e
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_7

    :cond_2f
    invoke-virtual {v6}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 710
    const-string v1, "onCreate failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    invoke-virtual {v6}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7aa89db3 -> :sswitch_12
        -0x565ad45e -> :sswitch_11
        -0x5245d976 -> :sswitch_10
        -0x4c74f7e6 -> :sswitch_f
        -0x4bf3d4a4 -> :sswitch_e
        -0x49d0ae2e -> :sswitch_d
        -0x41f4a0e1 -> :sswitch_c
        -0x40788157 -> :sswitch_b
        -0x3808bd69 -> :sswitch_a
        -0x352abd05 -> :sswitch_9
        -0x351b17ca -> :sswitch_8
        -0x20f0e526 -> :sswitch_7
        -0x1b3d9520 -> :sswitch_6
        -0x6d093c4 -> :sswitch_5
        0x2eee84e -> :sswitch_4
        0x65e5f3e -> :sswitch_3
        0x6ba993e -> :sswitch_2
        0x4f6f9d38 -> :sswitch_1
        0x525c5e50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x1

    .line 1722
    iput-boolean v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->detected:Z

    .line 1723
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity;->checkRunnable:Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    :catch_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

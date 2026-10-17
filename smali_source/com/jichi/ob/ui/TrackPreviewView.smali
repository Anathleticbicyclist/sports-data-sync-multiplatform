.class public final Lcom/jichi/ob/ui/TrackPreviewView;
.super Landroid/widget/FrameLayout;
.source "TrackPreviewView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/ui/TrackPreviewView$Companion;,
        Lcom/jichi/ob/ui/TrackPreviewView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrackPreviewView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackPreviewView.kt\ncom/jichi/ob/ui/TrackPreviewView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2214:1\n1#2:2215\n1878#3,3:2216\n1878#3,3:2219\n1878#3,3:2222\n1878#3,3:2225\n1878#3,3:2228\n1869#3,2:2231\n1878#3,2:2233\n1878#3,3:2235\n1880#3:2238\n1878#3,3:2239\n1878#3,3:2242\n1878#3,3:2245\n1878#3,3:2248\n1563#3:2251\n1634#3,3:2252\n1878#3,3:2255\n1878#3,3:2258\n1878#3,3:2261\n1878#3,3:2264\n1878#3,3:2267\n1878#3,3:2270\n1878#3,3:2273\n1878#3,3:2276\n1869#3,2:2279\n1878#3,3:2281\n1878#3,3:2284\n360#3,7:2287\n1563#3:2294\n1634#3,3:2295\n774#3:2298\n865#3,2:2299\n1869#3,2:2301\n1563#3:2303\n1634#3,3:2304\n774#3:2307\n865#3,2:2308\n1869#3,2:2310\n*S KotlinDebug\n*F\n+ 1 TrackPreviewView.kt\ncom/jichi/ob/ui/TrackPreviewView\n*L\n866#1:2216,3\n877#1:2219,3\n887#1:2222,3\n910#1:2225,3\n924#1:2228,3\n925#1:2231,2\n934#1:2233,2\n938#1:2235,3\n934#1:2238\n943#1:2239,3\n951#1:2242,3\n1123#1:2245,3\n1192#1:2248,3\n1221#1:2251\n1221#1:2252,3\n1223#1:2255,3\n1256#1:2258,3\n1324#1:2261,3\n1417#1:2264,3\n1435#1:2267,3\n1443#1:2270,3\n1449#1:2273,3\n1626#1:2276,3\n1627#1:2279,2\n1635#1:2281,3\n1646#1:2284,3\n1785#1:2287,7\n1834#1:2294\n1834#1:2295,3\n1834#1:2298\n1834#1:2299,2\n1840#1:2301,2\n1904#1:2303\n1904#1:2304,3\n1904#1:2307\n1904#1:2308,2\n1909#1:2310,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ea\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008,\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008$\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008A\n\u0002\u0010\u0014\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0006\n\u0002\u0008\u0011\u0018\u0000 \u00ed\u00022\u00020\u0001:\u0002\u00ed\u0002B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010v\u001a\u00020w2\u0006\u0010x\u001a\u00020n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010nJ\u0006\u0010y\u001a\u00020wJ\u0010\u0010z\u001a\u0004\u0018\u00010n2\u0006\u0010x\u001a\u00020nJ(\u0010\u00a5\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00a6\u00012\u0007\u0010\u00a7\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u00a8\u0001\u001a\u00020\u0007J\u0011\u0010\u00a9\u0001\u001a\u00020w2\u0008\u0010\u00aa\u0001\u001a\u00030\u00ab\u0001J3\u0010\u00ac\u0001\u001a\u00020w2\u0007\u0010\u00ad\u0001\u001a\u00020M2\u0007\u0010\u00ae\u0001\u001a\u00020S2\u0007\u0010\u00af\u0001\u001a\u00020Y2\u0007\u0010\u00b0\u0001\u001a\u00020_2\u0006\u0010$\u001a\u00020\u000bJ\u0007\u0010\u00b1\u0001\u001a\u00020wJ\u0012\u0010\u00b2\u0001\u001a\u00020\u00072\u0007\u0010\u00aa\u0001\u001a\u00020_H\u0002J\u001d\u0010\u00b3\u0001\u001a\u00030\u009c\u00012\u0008\u0010\u00aa\u0001\u001a\u00030\u00ab\u00012\t\u0008\u0002\u0010\u00a7\u0001\u001a\u00020\u0007J\u0012\u0010\u00c6\u0001\u001a\u00020\u001b2\u0007\u0010\u00c7\u0001\u001a\u00020\rH\u0002J\u0010\u0010\u00c8\u0001\u001a\u00020w2\u0007\u0010\u00c9\u0001\u001a\u00020\u001bJ\u0007\u0010\u00ca\u0001\u001a\u00020\u001bJ\u0010\u0010\u00cb\u0001\u001a\u00020w2\u0007\u0010\u00c9\u0001\u001a\u00020\u001bJ\u0010\u0010\u00cc\u0001\u001a\u00020w2\u0007\u0010\u00cd\u0001\u001a\u00020\u001bJ\u0007\u0010\u00ce\u0001\u001a\u00020wJ\t\u0010\u00cf\u0001\u001a\u00020wH\u0002J\u0010\u0010\u00d0\u0001\u001a\u00020w2\u0007\u0010\u00d1\u0001\u001a\u00020\u000bJ\u0007\u0010\u00d2\u0001\u001a\u00020wJ\u0007\u0010\u00d3\u0001\u001a\u00020\u000bJ\u0019\u0010\u00d4\u0001\u001a\u00020w2\u0007\u0010\u00d5\u0001\u001a\u00020\u001b2\u0007\u0010\u00d6\u0001\u001a\u00020\u001bJ\u0010\u0010\u00d7\u0001\u001a\u00020w2\u0007\u0010\u00c9\u0001\u001a\u00020\u001bJ\u0007\u0010\u00d8\u0001\u001a\u00020\u001bJ\u0012\u0010\u00d9\u0001\u001a\u00020\u000b2\u0007\u0010\u00da\u0001\u001a\u00020\rH\u0016J\u0007\u0010\u00db\u0001\u001a\u00020wJ\u0008\u0010\u00dc\u0001\u001a\u00030\u00dd\u0001Jt\u0010\u00de\u0001\u001a\u00030\u009c\u00012\t\u0008\u0002\u0010\u00a7\u0001\u001a\u00020\u00072\u0008\u0008\u0002\u0010,\u001a\u00020\u00072\u0008\u0008\u0002\u0010/\u001a\u00020\u000b2\u0008\u0008\u0002\u00102\u001a\u00020\u00072\u0008\u0008\u0002\u00105\u001a\u00020\u00072\t\u0008\u0002\u0010\u00df\u0001\u001a\u00020\u000b2\u000e\u0008\u0002\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0008\u0008\u0002\u0010>\u001a\u00020\u001b2\u0008\u0008\u0002\u0010A\u001a\u00020\u001b2\u0008\u0008\u0002\u0010D\u001a\u00020\u001bJc\u0010\u00e0\u0001\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00e3\u0001\u001a\u00020\u001b2\u0007\u0010\u00e4\u0001\u001a\u00020\u001b2\r\u0010\u00e5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0007\u0010\u00e6\u0001\u001a\u00020\u001b2\u0007\u0010\u00e7\u0001\u001a\u00020\u001b2\u0007\u0010\u00e8\u0001\u001a\u00020\u001b2\u0007\u0010\u00e9\u0001\u001a\u00020\u000b2\t\u0008\u0002\u0010\u00ea\u0001\u001a\u00020\u000bH\u0002J\u001c\u0010\u00eb\u0001\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001bH\u0002J%\u0010\u00ed\u0001\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u00aa\u0001\u001a\u00020MH\u0002J.\u0010\u00ee\u0001\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u00ef\u0001\u001a\u00020\u00072\u0007\u0010\u00f0\u0001\u001a\u00020\u0007H\u0002J7\u0010\u00f1\u0001\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u00f2\u0001\u001a\u00020\u00072\u0007\u0010\u00f3\u0001\u001a\u00020\u00072\u0007\u0010\u00f4\u0001\u001a\u00020\u0007H\u0002J\u001c\u0010\u00f5\u0001\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001bH\u0002J%\u0010\u00f6\u0001\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u00f7\u0001\u001a\u00020\u0007H\u0002J\u001c\u0010\u00f8\u0001\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001bH\u0002J\u001c\u0010\u00f9\u0001\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001bH\u0002J\u001c\u0010\u00fa\u0001\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001bH\u0002JR\u0010\u00fb\u0001\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00fc\u0001\u001a\u00020\u001b2\u0007\u0010\u00aa\u0001\u001a\u00020\u001b2\u0007\u0010\u00fd\u0001\u001a\u00020\u001b2\u0007\u0010\u00fe\u0001\u001a\u00020\u001b2\u0007\u0010\u00e6\u0001\u001a\u00020\u001b2\u0007\u0010\u00e7\u0001\u001a\u00020\u001b2\u0007\u0010\u00e8\u0001\u001a\u00020\u001bH\u0002JJ\u0010\u00ff\u0001\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u001a\u0010\u0080\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u00a6\u00010\u000f2\u0007\u0010\u0081\u0002\u001a\u00020\u00072\u0007\u0010\u0082\u0002\u001a\u00020\u001b2\u0007\u0010\u00f4\u0001\u001a\u00020\u001bH\u0002J8\u0010\u0083\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u001a\u0010\u0080\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u00a6\u00010\u000f2\u0007\u0010\u00d1\u0001\u001a\u00020\u000bH\u0002J/\u0010\u0084\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u001a\u0010\u0080\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u00a6\u00010\u000fH\u0002J/\u0010\u0085\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u001a\u0010\u0080\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u00a6\u00010\u000fH\u0002J@\u0010\u0086\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00fc\u0001\u001a\u00020\u001b2\u0007\u0010\u00aa\u0001\u001a\u00020\u001b2\u0007\u0010\u00fd\u0001\u001a\u00020\u001b2\u0007\u0010\u00fe\u0001\u001a\u00020\u001b2\u0007\u0010\u0087\u0002\u001a\u00020\u000bH\u0002J?\u0010\u0088\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u0089\u0002\u001a\u00020\u00072\r\u0010\u00e5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\t\u0008\u0002\u0010\u008a\u0002\u001a\u00020\u001bH\u0002J/\u0010\u008b\u0002\u001a\u00020\u001b2\u0007\u0010\u00b0\u0001\u001a\u00020n2\u0007\u0010\u008c\u0002\u001a\u00020\u001b2\u0007\u0010\u008d\u0002\u001a\u00020\u001b2\t\u0008\u0002\u0010\u008e\u0002\u001a\u00020\u001bH\u0002JD\u0010\u008f\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00b0\u0001\u001a\u00020n2\u0007\u0010\u0090\u0002\u001a\u00020\u001b2\u0007\u0010\u0091\u0002\u001a\u00020\u001b2\t\u0008\u0002\u0010\u0092\u0002\u001a\u00020\u00072\t\u0008\u0002\u0010\u008d\u0002\u001a\u00020\u001bH\u0002J=\u0010\u0093\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u0089\u0002\u001a\u00020\u00072\r\u0010\u00e5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0007\u0010\u008a\u0002\u001a\u00020\u001bH\u0002J=\u0010\u0094\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u0089\u0002\u001a\u00020\u00072\r\u0010\u00e5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0007\u0010\u008a\u0002\u001a\u00020\u001bH\u0002J=\u0010\u0095\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u0089\u0002\u001a\u00020\u00072\r\u0010\u00e5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0007\u0010\u008a\u0002\u001a\u00020\u001bH\u0002J=\u0010\u0096\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u0089\u0002\u001a\u00020\u00072\r\u0010\u00e5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0007\u0010\u008a\u0002\u001a\u00020\u001bH\u0002J=\u0010\u0097\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u0089\u0002\u001a\u00020\u00072\r\u0010\u00e5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0007\u0010\u008a\u0002\u001a\u00020\u001bH\u0002J=\u0010\u0098\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u0089\u0002\u001a\u00020\u00072\r\u0010\u00e5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0007\u0010\u008a\u0002\u001a\u00020\u001bH\u0002J=\u0010\u0099\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u0089\u0002\u001a\u00020\u00072\r\u0010\u00e5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0007\u0010\u008a\u0002\u001a\u00020\u001bH\u0002J|\u0010\u009a\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00e3\u0001\u001a\u00020\u001b2\u0007\u0010\u00e4\u0001\u001a\u00020\u001b2\u0007\u0010\u009b\u0002\u001a\u00020\u00072\u0007\u0010\u009c\u0002\u001a\u00020\u000b2\u0007\u0010\u009d\u0002\u001a\u00020\u00072\u0007\u0010\u009e\u0002\u001a\u00020\u00072\r\u0010\u00e5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0007\u0010\u00e6\u0001\u001a\u00020\u001b2\u0007\u0010\u00e7\u0001\u001a\u00020\u001b2\u0007\u0010\u00e8\u0001\u001a\u00020\u001b2\u0007\u0010\u00e9\u0001\u001a\u00020\u000bH\u0002J[\u0010\u009f\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00fc\u0001\u001a\u00020\u001b2\u0007\u0010\u00aa\u0001\u001a\u00020\u001b2\u0007\u0010\u00fd\u0001\u001a\u00020\u001b2\u0007\u0010\u00fe\u0001\u001a\u00020\u001b2\u0007\u0010\u009d\u0002\u001a\u00020\u00072\u0007\u0010\u00e6\u0001\u001a\u00020\u001b2\u0007\u0010\u00e7\u0001\u001a\u00020\u001b2\u0007\u0010\u00e8\u0001\u001a\u00020\u001bH\u0002J>\u0010\u00a0\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u001a\u0010\u0080\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u00a6\u00010\u000f2\r\u0010\u00a1\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002Jr\u0010\u00a2\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u001a\u0010\u0080\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u00a6\u00010\u000f2\r\u0010\u00a1\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\n\u0010\u00a3\u0002\u001a\u0005\u0018\u00010\u00a4\u00022\u0007\u0010\u00a5\u0002\u001a\u00020\u001b2\u0007\u0010\u00a6\u0002\u001a\u00020\u001b2\u0014\u0010\u00a7\u0002\u001a\u000f\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00070\u00b6\u0001H\u0002J\u0012\u0010\u00a8\u0002\u001a\u00020\u00072\u0007\u0010\u00aa\u0001\u001a\u00020\u001bH\u0002J\u0012\u0010\u00a9\u0002\u001a\u00020\u00072\u0007\u0010\u00aa\u0001\u001a\u00020\u001bH\u0002J$\u0010\u00aa\u0002\u001a\u00020\u00072\u0007\u0010\u00ab\u0002\u001a\u00020\u00072\u0007\u0010\u00ac\u0002\u001a\u00020\u00072\u0007\u0010\u00aa\u0001\u001a\u00020\u001bH\u0002J=\u0010\u00ad\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u00ae\u0002\u001a\u00020\u00072\r\u0010\u00e5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0007\u0010\u009c\u0002\u001a\u00020\u000bH\u0002J?\u0010\u00af\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u00ae\u0002\u001a\u00020\u00072\r\u0010\u00e5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\t\u0008\u0002\u0010\u008a\u0002\u001a\u00020\u001bH\u0002JT\u0010\u00b0\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00fc\u0001\u001a\u00020\u001b2\u0007\u0010\u00aa\u0001\u001a\u00020\u001b2\u0007\u0010\u00fd\u0001\u001a\u00020\u001b2\u0007\u0010\u00fe\u0001\u001a\u00020\u001b2\u0007\u0010\u00ae\u0002\u001a\u00020\u00072\t\u0008\u0002\u0010\u00b1\u0002\u001a\u00020\u001b2\t\u0008\u0002\u0010\u00b2\u0002\u001a\u00020\u0007J%\u0010\u00b3\u0002\u001a\u00020w2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0007\u0010\u00ec\u0001\u001a\u00020\u001b2\u0007\u0010\u00ae\u0002\u001a\u00020\u0007H\u0002J\u0007\u0010\u00c0\u0002\u001a\u00020\u000bJ\u0007\u0010\u00c1\u0002\u001a\u00020wJ\t\u0010\u00c3\u0002\u001a\u00020wH\u0002J\t\u0010\u00c4\u0002\u001a\u00020nH\u0002J\t\u0010\u00c5\u0002\u001a\u00020wH\u0002J\u0016\u0010\u00c6\u0002\u001a\u000f\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u00a6\u0001H\u0002J6\u0010\u00c7\u0002\u001a\u00020w2\u0007\u0010\u00c8\u0002\u001a\u00020\u000b2\u0007\u0010\u00fc\u0001\u001a\u00020\u00072\u0007\u0010\u00aa\u0001\u001a\u00020\u00072\u0007\u0010\u00fd\u0001\u001a\u00020\u00072\u0007\u0010\u00fe\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u00c9\u0002\u001a\u00020\u0007H\u0002J\t\u0010\u00ca\u0002\u001a\u00020\u0007H\u0002J\u0013\u0010\u00cb\u0002\u001a\u00020n2\u0008\u0010\u00cc\u0002\u001a\u00030\u00cd\u0002H\u0002J\u0015\u0010\u00ce\u0002\u001a\u0004\u0018\u00010n2\u0008\u0010\u00cf\u0002\u001a\u00030\u009c\u0001H\u0002J\t\u0010\u00d0\u0002\u001a\u00020nH\u0002J\u001b\u0010\u00d1\u0002\u001a\u00020n2\u0007\u0010\u00d2\u0002\u001a\u00020\u00072\u0007\u0010\u00d3\u0002\u001a\u00020\u0007H\u0002J\u001e\u0010\u00d4\u0002\u001a\u0005\u0018\u00010\u00d5\u00022\u0007\u0010\u00d6\u0002\u001a\u00020\u001b2\u0007\u0010\u00d7\u0002\u001a\u00020\u001bH\u0002J\u0012\u0010\u00d8\u0002\u001a\u00020n2\u0007\u0010\u00fe\u0001\u001a\u00020MH\u0002J\u0012\u0010\u00d9\u0002\u001a\u00020n2\u0007\u0010\u00aa\u0001\u001a\u00020SH\u0002J\u0012\u0010\u00da\u0002\u001a\u00020n2\u0007\u0010\u00fc\u0001\u001a\u00020YH\u0002J\u001f\u0010\u00db\u0002\u001a\u000f\u0012\u0004\u0012\u00020n\u0012\u0004\u0012\u00020n0\u00a6\u00012\u0007\u0010\u00aa\u0001\u001a\u00020_H\u0002J\u0014\u0010\u00dc\u0002\u001a\u00030\u00dd\u00022\u0008\u0010\u00de\u0002\u001a\u00030\u00dd\u0002H\u0002J\t\u0010\u00df\u0002\u001a\u00020wH\u0002J\t\u0010\u00e0\u0002\u001a\u00020wH\u0002Ja\u0010\u00e1\u0002\u001a\u00030\u009c\u00012\t\u0008\u0002\u0010\u00a7\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u00a8\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u00df\u0001\u001a\u00020\u000b2\u000e\u0008\u0002\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0008\u0008\u0002\u0010>\u001a\u00020\u001b2\u0008\u0008\u0002\u0010A\u001a\u00020\u001b2\u0008\u0008\u0002\u0010D\u001a\u00020\u001b2\u0008\u0008\u0002\u0010{\u001a\u00020\u000bJw\u0010\u00e2\u0002\u001a\u00020w2\t\u0008\u0002\u0010\u00a7\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u00a8\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u00df\u0001\u001a\u00020\u000b2\u000e\u0008\u0002\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0008\u0008\u0002\u0010>\u001a\u00020\u001b2\u0008\u0008\u0002\u0010A\u001a\u00020\u001b2\u0008\u0008\u0002\u0010D\u001a\u00020\u001b2\u0008\u0008\u0002\u0010{\u001a\u00020\u000b2\u0015\u0010\u00e3\u0002\u001a\u0010\u0012\u0005\u0012\u00030\u009c\u0001\u0012\u0004\u0012\u00020w0\u00b6\u0001J\u0012\u0010\u00e4\u0002\u001a\u00020n2\u0007\u0010\u00de\u0002\u001a\u00020nH\u0002JS\u0010\u00e5\u0002\u001a\u00030\u009c\u00012\u0007\u0010\u00d2\u0002\u001a\u00020\u00072\u0007\u0010\u00d3\u0002\u001a\u00020\u00072\u0007\u0010\u00df\u0001\u001a\u00020\u000b2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0006\u0010>\u001a\u00020\u001b2\u0006\u0010A\u001a\u00020\u001b2\u0006\u0010D\u001a\u00020\u001b2\u0006\u0010{\u001a\u00020\u000bH\u0002J\u0013\u0010\u00e6\u0002\u001a\u00020w2\u0008\u0010\u00e7\u0002\u001a\u00030\u00e2\u0001H\u0014J2\u0010\u00e8\u0002\u001a\u00030\u00dd\u00022\u0008\u0010\u00e9\u0002\u001a\u00030\u00dd\u00022\u0008\u0010\u00ea\u0002\u001a\u00030\u00dd\u00022\u0008\u0010\u00eb\u0002\u001a\u00030\u00dd\u00022\u0008\u0010\u00ec\u0002\u001a\u00030\u00dd\u0002H\u0002R0\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R$\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u001b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010!\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u001b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001e\"\u0004\u0008#\u0010 R$\u0010$\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R$\u0010)\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010&\"\u0004\u0008+\u0010(R$\u0010,\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u0018\"\u0004\u0008.\u0010\u001aR$\u0010/\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010&\"\u0004\u00081\u0010(R$\u00102\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0018\"\u0004\u00084\u0010\u001aR$\u00105\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u0018\"\u0004\u00087\u0010\u001aR0\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u0013\"\u0004\u0008:\u0010\u0015R$\u0010;\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u0018\"\u0004\u0008=\u0010\u001aR$\u0010>\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u001b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u001e\"\u0004\u0008@\u0010 R$\u0010A\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u001b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\u001e\"\u0004\u0008C\u0010 R$\u0010D\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u001b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u001e\"\u0004\u0008F\u0010 R\u000e\u0010G\u001a\u00020HX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020HX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010J\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010&\"\u0004\u0008L\u0010(R$\u0010N\u001a\u00020M2\u0006\u0010\u000e\u001a\u00020M@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR$\u0010T\u001a\u00020S2\u0006\u0010\u000e\u001a\u00020S@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR$\u0010Z\u001a\u00020Y2\u0006\u0010\u000e\u001a\u00020Y@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R$\u0010`\u001a\u00020_2\u0006\u0010\u000e\u001a\u00020_@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR$\u0010e\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010&\"\u0004\u0008g\u0010(R(\u0010i\u001a\u0004\u0018\u00010h2\u0008\u0010\u000e\u001a\u0004\u0018\u00010h@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR(\u0010o\u001a\u0004\u0018\u00010n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008p\u0010q\"\u0004\u0008r\u0010sR\u001a\u0010t\u001a\u000e\u0012\u0004\u0012\u00020n\u0012\u0004\u0012\u00020n0uX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010{\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008|\u0010&\"\u0004\u0008}\u0010(R%\u0010~\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000f\n\u0000\u001a\u0004\u0008\u007f\u0010&\"\u0005\u0008\u0080\u0001\u0010(R\'\u0010\u0081\u0001\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0082\u0001\u0010&\"\u0005\u0008\u0083\u0001\u0010(R\'\u0010\u0084\u0001\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u001b@FX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0085\u0001\u0010\u001e\"\u0005\u0008\u0086\u0001\u0010 R\'\u0010\u0087\u0001\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u001b@FX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0088\u0001\u0010\u001e\"\u0005\u0008\u0089\u0001\u0010 R\'\u0010\u008a\u0001\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008b\u0001\u0010&\"\u0005\u0008\u008c\u0001\u0010(R\'\u0010\u008d\u0001\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008e\u0001\u0010&\"\u0005\u0008\u008f\u0001\u0010(R\'\u0010\u0090\u0001\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0091\u0001\u0010\u0018\"\u0005\u0008\u0092\u0001\u0010\u001aR\'\u0010\u0093\u0001\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0094\u0001\u0010&\"\u0005\u0008\u0095\u0001\u0010(R\'\u0010\u0096\u0001\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0097\u0001\u0010\u0018\"\u0005\u0008\u0098\u0001\u0010\u001aR+\u0010\u0099\u0001\u001a\u0004\u0018\u00010n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010n@FX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009a\u0001\u0010q\"\u0005\u0008\u009b\u0001\u0010sR/\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009c\u00012\t\u0010\u000e\u001a\u0005\u0018\u00010\u009c\u0001@FX\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u009e\u0001\u0010\u009f\u0001\"\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\'\u0010\u00a2\u0001\u001a\u00020n2\u0006\u0010\u000e\u001a\u00020n@FX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00a3\u0001\u0010q\"\u0005\u0008\u00a4\u0001\u0010sR\u000f\u0010\u00b4\u0001\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R.\u0010\u00b5\u0001\u001a\u0011\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020w\u0018\u00010\u00b6\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001\"\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001R\u000f\u0010\u00bb\u0001\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u00bc\u0001\u001a\u00030\u00bd\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u00be\u0001\u001a\u00030\u00bf\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00c0\u0001\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00c1\u0001\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00c2\u0001\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00c3\u0001\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00c4\u0001\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00c5\u0001\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u00b4\u0002\u001a\u0005\u0018\u00010\u00b5\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00b6\u0002\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00b7\u0002\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00b8\u0002\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00b9\u0002\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00ba\u0002\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00bb\u0002\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00bc\u0002\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\'\u0010\u00bd\u0002\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00be\u0002\u0010&\"\u0005\u0008\u00bf\u0002\u0010(R\u000f\u0010\u00c2\u0002\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00ee\u0002"
    }
    d2 = {
        "Lcom/jichi/ob/ui/TrackPreviewView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "onInterceptTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "value",
        "",
        "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
        "points",
        "getPoints",
        "()Ljava/util/List;",
        "setPoints",
        "(Ljava/util/List;)V",
        "style",
        "getStyle",
        "()I",
        "setStyle",
        "(I)V",
        "",
        "lineWidth",
        "getLineWidth",
        "()F",
        "setLineWidth",
        "(F)V",
        "lineAlpha",
        "getLineAlpha",
        "setLineAlpha",
        "glow",
        "getGlow",
        "()Z",
        "setGlow",
        "(Z)V",
        "stickerPreview",
        "getStickerPreview",
        "setStickerPreview",
        "dataStyle",
        "getDataStyle",
        "setDataStyle",
        "include3d",
        "getInclude3d",
        "setInclude3d",
        "lineColorMode",
        "getLineColorMode",
        "setLineColorMode",
        "textColorMode",
        "getTextColorMode",
        "setTextColorMode",
        "items",
        "getItems",
        "setItems",
        "posMode",
        "getPosMode",
        "setPosMode",
        "dx",
        "getDx",
        "setDx",
        "dy",
        "getDy",
        "setDy",
        "scale",
        "getScale",
        "setScale",
        "paint",
        "Landroid/graphics/Paint;",
        "fillPaint",
        "useTemplate",
        "getUseTemplate",
        "setUseTemplate",
        "Lcom/jichi/ob/merge/StickerCore$StickerBg;",
        "bgType",
        "getBgType",
        "()Lcom/jichi/ob/merge/StickerCore$StickerBg;",
        "setBgType",
        "(Lcom/jichi/ob/merge/StickerCore$StickerBg;)V",
        "Lcom/jichi/ob/merge/StickerCore$StickerTrack;",
        "trackType",
        "getTrackType",
        "()Lcom/jichi/ob/merge/StickerCore$StickerTrack;",
        "setTrackType",
        "(Lcom/jichi/ob/merge/StickerCore$StickerTrack;)V",
        "Lcom/jichi/ob/merge/StickerCore$StickerLayout;",
        "layoutType",
        "getLayoutType",
        "()Lcom/jichi/ob/merge/StickerCore$StickerLayout;",
        "setLayoutType",
        "(Lcom/jichi/ob/merge/StickerCore$StickerLayout;)V",
        "Lcom/jichi/ob/merge/StickerCore$StickerText;",
        "textType",
        "getTextType",
        "()Lcom/jichi/ob/merge/StickerCore$StickerText;",
        "setTextType",
        "(Lcom/jichi/ob/merge/StickerCore$StickerText;)V",
        "glowOn",
        "getGlowOn",
        "setGlowOn",
        "Lcom/jichi/ob/merge/StickerCore$SummaryStats;",
        "summaryStats",
        "getSummaryStats",
        "()Lcom/jichi/ob/merge/StickerCore$SummaryStats;",
        "setSummaryStats",
        "(Lcom/jichi/ob/merge/StickerCore$SummaryStats;)V",
        "",
        "titleOverride",
        "getTitleOverride",
        "()Ljava/lang/String;",
        "setTitleOverride",
        "(Ljava/lang/String;)V",
        "dataOverrides",
        "",
        "setDataOverride",
        "",
        "key",
        "clearDataOverrides",
        "currentDataOverride",
        "transparentBg",
        "getTransparentBg",
        "setTransparentBg",
        "show3dBand",
        "getShow3dBand",
        "setShow3dBand",
        "track3d",
        "getTrack3d",
        "setTrack3d",
        "track3dRx",
        "getTrack3dRx",
        "setTrack3dRx",
        "track3dRy",
        "getTrack3dRy",
        "setTrack3dRy",
        "dataLayerOn",
        "getDataLayerOn",
        "setDataLayerOn",
        "watermarkOn",
        "getWatermarkOn",
        "setWatermarkOn",
        "trackWidth",
        "getTrackWidth",
        "setTrackWidth",
        "trackOn",
        "getTrackOn",
        "setTrackOn",
        "brandIdx",
        "getBrandIdx",
        "setBrandIdx",
        "badgeUrl",
        "getBadgeUrl",
        "setBadgeUrl",
        "Landroid/graphics/Bitmap;",
        "overlayBitmap",
        "getOverlayBitmap",
        "()Landroid/graphics/Bitmap;",
        "setOverlayBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "aspect",
        "getAspect",
        "setAspect",
        "resolveExportSize",
        "Lkotlin/Pair;",
        "sizePx",
        "heightPx",
        "applyTemplate",
        "t",
        "Lcom/jichi/ob/merge/StickerCore$StickerTemplate;",
        "applyCombo",
        "bg",
        "track",
        "layout",
        "text",
        "exitTemplate",
        "stickerTextColorOf",
        "renderThumb",
        "rotation",
        "onTemplateSwipe",
        "Lkotlin/Function1;",
        "getOnTemplateSwipe",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnTemplateSwipe",
        "(Lkotlin/jvm/functions/Function1;)V",
        "swipeAccumX",
        "gestureDetector",
        "Landroid/view/GestureDetector;",
        "scaleDetector",
        "Landroid/view/ScaleGestureDetector;",
        "twoFinger",
        "twoStartAngle",
        "twoStartMidY",
        "lastTouchX",
        "lastTouchY",
        "tiltX",
        "angleOf",
        "e",
        "setTrackRotation",
        "deg",
        "getTrackRotation",
        "rotateTrackBy",
        "zoomTrackBy",
        "factor",
        "resetTrackTransform",
        "push3D",
        "setTrack3dMode",
        "on",
        "resetTrack3d",
        "isTrack3d",
        "moveTrackBy",
        "ddx",
        "ddy",
        "tiltTrackBy",
        "getTiltX",
        "onTouchEvent",
        "event",
        "applyPosMode",
        "computeStats",
        "Lcom/jichi/ob/merge/StickerCore$TrackStats;",
        "exportTransparentPng",
        "watermark",
        "drawTemplateSticker",
        "c",
        "Landroid/graphics/Canvas;",
        "w",
        "h",
        "itms",
        "ox",
        "oy",
        "sc",
        "wm",
        "tBg",
        "drawTemplateBg",
        "s",
        "drawPhotoBg",
        "fillGrad",
        "top",
        "bottom",
        "drawStars",
        "seed",
        "n",
        "alpha",
        "drawChecker",
        "drawRoadGrid",
        "gridColor",
        "drawSatellite",
        "drawLightMap",
        "drawContours",
        "drawTemplateTrack",
        "l",
        "r",
        "b",
        "drawSimpleLine",
        "projected",
        "color",
        "width",
        "drawGlowPath",
        "drawNeon",
        "drawPhantom",
        "drawTerrainBand",
        "ice",
        "drawTemplateLayout",
        "txtColor",
        "off",
        "fitTextSize",
        "baseSize",
        "maxW",
        "minRatio",
        "drawStickerText",
        "x",
        "y",
        "fillColor",
        "drawLayoutTriple",
        "drawLayoutCorner",
        "drawLayoutGrid",
        "drawLayoutBig",
        "drawLayoutDual",
        "drawLayoutBar",
        "drawLayoutPoster",
        "drawSticker",
        "ds",
        "inc3d",
        "lineCol",
        "txtCol",
        "drawTrackIn",
        "drawGradientSegments",
        "pts",
        "drawBanded",
        "values",
        "",
        "vMin",
        "vMax",
        "colorFn",
        "speedColor",
        "elevationColor",
        "lerp",
        "c1",
        "c2",
        "drawStravaCard",
        "textColor",
        "drawOutbaseBadge",
        "drawTerrain3D",
        "thickness",
        "layers",
        "drawWatermark",
        "web",
        "Landroid/webkit/WebView;",
        "webReady",
        "renderScheduled",
        "pendingRender",
        "cssW",
        "cssH",
        "lastW",
        "lastH",
        "badgeOn",
        "getBadgeOn",
        "setBadgeOn",
        "webReadyPublic",
        "refreshWebRenderPublic",
        "templateIndex",
        "initWebRenderer",
        "htmlSource",
        "refreshCssSize",
        "renderSize",
        "onLayout",
        "changed",
        "templateIdxFor",
        "trackColorIdx",
        "formatDuration",
        "sec",
        "",
        "bitmapToDataUrl",
        "bmp",
        "buildRenderJs",
        "buildRenderPayload",
        "wPx",
        "hPx",
        "buildTrackJson",
        "Lorg/json/JSONArray;",
        "W",
        "H",
        "htmlBg",
        "htmlTrack",
        "htmlLayout",
        "htmlText",
        "round1",
        "",
        "v",
        "scheduleWebRender",
        "pushTransform",
        "exportTemplatePng",
        "exportTemplatePngAsync",
        "cb",
        "unwrapJsString",
        "fallbackExport",
        "onDraw",
        "canvas",
        "haversineM",
        "lat1",
        "lon1",
        "lat2",
        "lon2",
        "Companion",
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
.field public static final BRAND_CUSTOM:I

.field public static final BRAND_NAMES:[Ljava/lang/String;

.field public static final COLOR_BLACK:I = 0x2

.field public static final COLOR_GRADIENT:I = 0x5

.field public static final COLOR_GRAY:I = 0x1

.field public static final COLOR_ORANGE:I = 0x3

.field public static final COLOR_SKY:I = 0x4

.field public static final COLOR_WHITE:I = 0x0

.field public static final Companion:Lcom/jichi/ob/ui/TrackPreviewView$Companion;

.field public static final MODE_3D:I = 0x1

.field public static final MODE_TRACK:I = 0x0

.field public static final POS_BOTTOM:I = 0x2

.field public static final POS_CENTER:I = 0x0

.field public static final POS_LEFT:I = 0x3

.field public static final POS_RIGHT:I = 0x4

.field public static final POS_TOP:I = 0x1

.field public static final STICKER_NONE:I = 0x2

.field public static final STICKER_OUTBASE:I = 0x1

.field public static final STICKER_STRAVA:I = 0x0

.field public static final STYLE_ELEVATION:I = 0x2

.field public static final STYLE_ORANGE:I = 0x0

.field public static final STYLE_SKY:I = 0x4

.field public static final STYLE_SPEED:I = 0x1

.field public static final STYLE_TRANSPARENT:I = 0x3

.field private static final posNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final stickerLineNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final stickerTextNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final styleColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final styleDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final styleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final trackWidthNames:[Ljava/lang/String;


# instance fields
.field private aspect:Ljava/lang/String;

.field private badgeOn:Z

.field private badgeUrl:Ljava/lang/String;

.field private bgType:Lcom/jichi/ob/merge/StickerCore$StickerBg;

.field private brandIdx:I

.field private cssH:F

.field private cssW:F

.field private dataLayerOn:Z

.field private final dataOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataStyle:I

.field private dx:F

.field private dy:F

.field private final fillPaint:Landroid/graphics/Paint;

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private glow:Z

.field private glowOn:Z

.field private include3d:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastH:I

.field private lastTouchX:F

.field private lastTouchY:F

.field private lastW:I

.field private layoutType:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

.field private lineAlpha:F

.field private lineColorMode:I

.field private lineWidth:F

.field private onTemplateSwipe:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private overlayBitmap:Landroid/graphics/Bitmap;

.field private final paint:Landroid/graphics/Paint;

.field private pendingRender:Z

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;"
        }
    .end annotation
.end field

.field private posMode:I

.field private renderScheduled:Z

.field private rotation:F

.field private scale:F

.field private final scaleDetector:Landroid/view/ScaleGestureDetector;

.field private show3dBand:Z

.field private stickerPreview:Z

.field private style:I

.field private summaryStats:Lcom/jichi/ob/merge/StickerCore$SummaryStats;

.field private swipeAccumX:F

.field private templateIndex:I

.field private textColorMode:I

.field private textType:Lcom/jichi/ob/merge/StickerCore$StickerText;

.field private tiltX:F

.field private titleOverride:Ljava/lang/String;

.field private track3d:Z

.field private track3dRx:F

.field private track3dRy:F

.field private trackOn:Z

.field private trackType:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

.field private trackWidth:I

.field private transparentBg:Z

.field private twoFinger:Z

.field private twoStartAngle:F

.field private twoStartMidY:F

.field private useTemplate:Z

.field private watermarkOn:Z

.field private web:Landroid/webkit/WebView;

.field private webReady:Z


# direct methods
.method public static synthetic $r8$lambda$-gPl-IzrimOkt6xLo1sGIftxX0w(Lcom/jichi/ob/ui/TrackPreviewView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->refreshCssSize$lambda$43(Lcom/jichi/ob/ui/TrackPreviewView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3IK-6Gz_Zv67k0241oYUnTLn6_w(Lcom/jichi/ob/ui/TrackPreviewView;F)I
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTrackIn$lambda$33(Lcom/jichi/ob/ui/TrackPreviewView;F)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CDc1bh5SR79NYUYtMmRlnqpOIVk(ILkotlin/jvm/functions/Function0;Landroid/webkit/WebView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePngAsync$pollReady$lambda$65$lambda$64(ILkotlin/jvm/functions/Function0;Landroid/webkit/WebView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HPvOVZXHNjmvupoBQ5DetQrhpvY(Lcom/jichi/ob/ui/TrackPreviewView;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->onLayout$lambda$45(Lcom/jichi/ob/ui/TrackPreviewView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LAUxjSj_FzbVu6yrBpRoqedo1Yc(Lcom/jichi/ob/ui/TrackPreviewView;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->_init_$lambda$0(Lcom/jichi/ob/ui/TrackPreviewView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OT-OMEK4yd4DReFor8oDsDGM2uk(Lkotlin/jvm/functions/Function0;ILandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePngAsync$pollReady$lambda$65(Lkotlin/jvm/functions/Function0;ILandroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q1qIp8_N74U6AJONnIi2vecLmfU(Lcom/jichi/ob/ui/TrackPreviewView;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->scheduleWebRender$lambda$61(Lcom/jichi/ob/ui/TrackPreviewView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QJRT67Y4F1DIwLitx7aHAsDe8FY(Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZLandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p11}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePngAsync$lambda$69$lambda$68(Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZLandroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$btVrASMXxFX4rSoll8HFm33dF7U(Lkotlin/jvm/functions/Function0;Ljava/lang/StringBuilder;Lcom/jichi/ob/ui/TrackPreviewView;ILandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePngAsync$lambda$69$lambda$68$fetchChunk$lambda$66(Lkotlin/jvm/functions/Function0;Ljava/lang/StringBuilder;Lcom/jichi/ob/ui/TrackPreviewView;ILandroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cILFXVVXGM1bl2PUSOPXo9PJwNI(Lcom/jichi/ob/ui/TrackPreviewView;F)I
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTrackIn$lambda$32(Lcom/jichi/ob/ui/TrackPreviewView;F)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$f801f09hpYA9dlVdBrUC3i0trq8(Landroid/webkit/WebView;Lcom/jichi/ob/ui/TrackPreviewView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePng$lambda$62(Landroid/webkit/WebView;Lcom/jichi/ob/ui/TrackPreviewView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gk7H4pwB7NoZqPUiEAHpHxcQnxk(Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZ)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePngAsync$lambda$69(Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mQuUca6pUFndAXVm3W9W4L-dexQ(Lcom/jichi/ob/ui/TrackPreviewView;F)I
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTemplateTrack$lambda$10(Lcom/jichi/ob/ui/TrackPreviewView;F)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sjWlBsKZyrFA0_IUWL6h7vrCYmI(Ljava/lang/StringBuilder;Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZ)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePngAsync$lambda$69$lambda$68$lambda$67(Ljava/lang/StringBuilder;Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/jichi/ob/ui/TrackPreviewView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/ui/TrackPreviewView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->Companion:Lcom/jichi/ob/ui/TrackPreviewView$Companion;

    const/4 v0, 0x7

    .line 62
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u6700\u7ec6"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "\u7ec6"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string/jumbo v2, "\u4e2d"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string/jumbo v2, "\u8f83\u7c97"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string/jumbo v2, "\u7c97"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u6700\u7c97"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sput-object v1, Lcom/jichi/ob/ui/TrackPreviewView;->trackWidthNames:[Ljava/lang/String;

    const/16 v1, 0x12

    .line 67
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "\u9e21\u7fc5OB"

    aput-object v2, v1, v3

    const-string v2, "iGPSPORT"

    aput-object v2, v1, v4

    const-string/jumbo v2, "\u8fc8\u91d1"

    aput-object v2, v1, v5

    const-string/jumbo v2, "\u884c\u8005"

    aput-object v2, v1, v6

    const-string v2, "Wahoo"

    aput-object v2, v1, v7

    const-string/jumbo v2, "\u4f73\u660e"

    aput-object v2, v1, v8

    const-string v2, "Strava"

    aput-object v2, v1, v9

    const-string/jumbo v2, "\u5495\u549a"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    .line 68
    const-string/jumbo v2, "\u9ed1\u9e1f"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string/jumbo v2, "\u9ad8\u9a70"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "MyWhoosh"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "Zwift"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "Keep"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string v2, "Zepp"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string v2, "Komoot"

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-string/jumbo v2, "\u677e\u62d3"

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-string v2, "Outbase"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string/jumbo v2, "\u81ea\u5b9a\u4e49"

    aput-object v2, v1, v0

    .line 66
    sput-object v1, Lcom/jichi/ob/ui/TrackPreviewView;->BRAND_NAMES:[Ljava/lang/String;

    .line 71
    array-length v0, v1

    sub-int/2addr v0, v4

    sput v0, Lcom/jichi/ob/ui/TrackPreviewView;->BRAND_CUSTOM:I

    .line 93
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "\u767d"

    aput-object v1, v0, v3

    const-string/jumbo v2, "\u7070"

    aput-object v2, v0, v4

    const-string/jumbo v9, "\u9ed1"

    aput-object v9, v0, v5

    const-string/jumbo v10, "\u6a59"

    aput-object v10, v0, v6

    const-string/jumbo v11, "\u5929\u84dd"

    aput-object v11, v0, v7

    const-string/jumbo v12, "\u6e10\u53d8"

    aput-object v12, v0, v8

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->stickerLineNames:Ljava/util/List;

    .line 94
    new-array v0, v8, [Ljava/lang/String;

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    aput-object v9, v0, v5

    aput-object v10, v0, v6

    aput-object v11, v0, v7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->stickerTextNames:Ljava/util/List;

    .line 102
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "\u5c45\u4e2d"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u504f\u4e0a"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u504f\u4e0b"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u504f\u5de6"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u504f\u53f3"

    aput-object v1, v0, v7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->posNames:Ljava/util/List;

    .line 104
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "Strava\u6a59\u7ecf\u5178"

    aput-object v1, v0, v3

    const-string v1, "Strava\u901f\u5ea6"

    aput-object v1, v0, v4

    const-string v1, "Strava\u6d77\u62d4"

    aput-object v1, v0, v5

    const-string v1, "Outbase\u900f\u660e\u8d34\u7eb8"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u6781\u7b80\u5929\u84dd"

    aput-object v1, v0, v7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->styleNames:Ljava/util/List;

    .line 105
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "\u5355\u8272\u6a59+\u53d1\u5149"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u6309\u901f\u5ea6\u84dd\u2192\u7ea2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u6309\u6d77\u62d4\u9ec4\u2192\u7ea2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u7eaf\u8272\u53ef\u53e0\u5e95"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u5929\u84dd+\u53d1\u5149"

    aput-object v1, v0, v7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->styleDesc:Ljava/util/List;

    .line 106
    new-array v0, v8, [Ljava/lang/Integer;

    const v1, -0x3b3fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, -0x4fe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, -0xa61f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, -0xeee7d9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, -0xd47301

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->styleColors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/ui/TrackPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/ui/TrackPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 47
    invoke-virtual {p0, p2}, Lcom/jichi/ob/ui/TrackPreviewView;->setWillNotDraw(Z)V

    .line 48
    new-instance p2, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda12;-><init>(Lcom/jichi/ob/ui/TrackPreviewView;)V

    invoke-virtual {p0, p2}, Lcom/jichi/ob/ui/TrackPreviewView;->post(Ljava/lang/Runnable;)Z

    .line 124
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    const/high16 p2, 0x40a00000    # 5.0f

    .line 131
    iput p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    const p2, 0x3f733333    # 0.95f

    .line 134
    iput p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineAlpha:F

    const/4 p2, 0x1

    .line 143
    iput-boolean p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->stickerPreview:Z

    const/4 p3, 0x2

    .line 155
    iput p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineColorMode:I

    .line 163
    sget-object p3, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {p3}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFAULT()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->items:Ljava/util/List;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 178
    iput p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->scale:F

    .line 181
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    .line 182
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    .line 190
    sget-object p3, Lcom/jichi/ob/merge/StickerCore$StickerBg;->DEEP_SPACE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->bgType:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    .line 193
    sget-object p3, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackType:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    .line 196
    sget-object p3, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->layoutType:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    .line 199
    sget-object p3, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->textType:Lcom/jichi/ob/merge/StickerCore$StickerText;

    .line 202
    iput-boolean p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->glowOn:Z

    .line 214
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p3, Ljava/util/Map;

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const p3, 0x3f59999a    # 0.85f

    .line 235
    iput p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRx:F

    const p3, 0x3f147ae1    # 0.58f

    .line 237
    iput p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRy:F

    .line 241
    iput-boolean p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataLayerOn:Z

    .line 245
    iput-boolean p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->watermarkOn:Z

    const/4 p3, 0x3

    .line 249
    iput p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackWidth:I

    .line 253
    iput-boolean p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackOn:Z

    .line 269
    const-string p3, "1:1"

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->aspect:Ljava/lang/String;

    .line 332
    new-instance p3, Landroid/view/GestureDetector;

    new-instance v0, Lcom/jichi/ob/ui/TrackPreviewView$gestureDetector$1;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/TrackPreviewView$gestureDetector$1;-><init>(Lcom/jichi/ob/ui/TrackPreviewView;)V

    check-cast v0, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p3, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->gestureDetector:Landroid/view/GestureDetector;

    .line 354
    new-instance p3, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/jichi/ob/ui/TrackPreviewView$scaleDetector$1;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/TrackPreviewView$scaleDetector$1;-><init>(Lcom/jichi/ob/ui/TrackPreviewView;)V

    check-cast v0, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p3, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    const/4 p1, -0x1

    .line 1684
    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lastW:I

    .line 1685
    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lastH:I

    .line 1687
    iput-boolean p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->badgeOn:Z

    .line 1700
    iput p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->templateIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 40
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/ui/TrackPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/jichi/ob/ui/TrackPreviewView;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->initWebRenderer()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getPosNames$cp()Ljava/util/List;
    .locals 1

    .line 40
    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->posNames:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getStickerLineNames$cp()Ljava/util/List;
    .locals 1

    .line 40
    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->stickerLineNames:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getStickerTextNames$cp()Ljava/util/List;
    .locals 1

    .line 40
    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->stickerTextNames:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getStyleColors$cp()Ljava/util/List;
    .locals 1

    .line 40
    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->styleColors:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getStyleDesc$cp()Ljava/util/List;
    .locals 1

    .line 40
    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->styleDesc:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getStyleNames$cp()Ljava/util/List;
    .locals 1

    .line 40
    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->styleNames:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$pushTransform(Lcom/jichi/ob/ui/TrackPreviewView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->pushTransform()V

    return-void
.end method

.method public static final synthetic access$refreshCssSize(Lcom/jichi/ob/ui/TrackPreviewView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->refreshCssSize()V

    return-void
.end method

.method public static final synthetic access$setSwipeAccumX$p(Lcom/jichi/ob/ui/TrackPreviewView;F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->swipeAccumX:F

    return-void
.end method

.method public static final synthetic access$setWebReady$p(Lcom/jichi/ob/ui/TrackPreviewView;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->webReady:Z

    return-void
.end method

.method private final angleOf(Landroid/view/MotionEvent;)F
    .locals 6

    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 377
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v2, 0x1

    .line 378
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr p1, v0

    float-to-double v4, p1

    sub-float/2addr v3, v1

    float-to-double v0, v3

    .line 379
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private final bitmapToDataUrl(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6

    const-string v0, "data:image/jpeg;base64,"

    .line 1808
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 1810
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1811
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v4, v1

    check-cast v4, Ljava/io/OutputStream;

    const/16 v5, 0x58

    invoke-virtual {p1, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1812
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v2
.end method

.method private final buildRenderJs()Ljava/lang/String;
    .locals 8

    .line 1818
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->computeStats()Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v0

    .line 1819
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1821
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "distance"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getDistKm()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/jichi/ob/ui/TrackPreviewView;->round1(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1822
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "duration"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getDurationSec()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/jichi/ob/ui/TrackPreviewView;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1823
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "avgSpeed"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgSpeedKmh()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/jichi/ob/ui/TrackPreviewView;->round1(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1824
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "maxSpeed"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getMaxSpeedKmh()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/jichi/ob/ui/TrackPreviewView;->round1(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_3
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1825
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "climb"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAscentM()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_4
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1826
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "hr"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgHr()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1827
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "power"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgPower()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_6
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1828
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "kcal"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getCaloriesKcal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_7
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1829
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "cad"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgCad()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_8
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1830
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "alt"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAscentM()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_9
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1832
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->titleOverride:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "RIDING"

    :cond_a
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1834
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 2294
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 2295
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2296
    check-cast v3, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 1834
    invoke-virtual {v3}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 2296
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2297
    :cond_b
    check-cast v2, Ljava/util/List;

    .line 2294
    check-cast v2, Ljava/lang/Iterable;

    .line 2298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 2299
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_c

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2300
    :cond_d
    check-cast v0, Ljava/util/List;

    .line 1835
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1836
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "altMax"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_e

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->maxOrThrow(Ljava/lang/Iterable;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_e
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1837
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "altMin"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_f

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->minOrThrow(Ljava/lang/Iterable;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_f
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1840
    :cond_10
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->items:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 2301
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 1840
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_2

    :cond_11
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v2, "items"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1841
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->overlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->bitmapToDataUrl(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, ""

    :cond_12
    const-string v2, "photo"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1845
    :cond_13
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->renderSize()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 1846
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->aspect:Ljava/lang/String;

    .line 1847
    const-string v3, "3:4"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x40400000    # 3.0f

    :goto_3
    div-float/2addr v2, v3

    goto :goto_4

    .line 1848
    :cond_14
    const-string v3, "9:16"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x41100000    # 9.0f

    goto :goto_3

    :cond_15
    move v2, v0

    .line 1851
    :goto_4
    invoke-direct {p0, v0, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->buildTrackJson(FF)Lorg/json/JSONArray;

    move-result-object v0

    .line 1852
    const-string/jumbo v2, "track"

    if-eqz v0, :cond_16

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1854
    :cond_16
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->textType:Lcom/jichi/ob/merge/StickerCore$StickerText;

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->htmlText(Lcom/jichi/ob/merge/StickerCore$StickerText;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1855
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1856
    const-string/jumbo v5, "showBadge"

    iget-boolean v6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->badgeOn:Z

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1857
    iget-boolean v5, p0, Lcom/jichi/ob/ui/TrackPreviewView;->watermarkOn:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_17

    iget-boolean v5, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataLayerOn:Z

    if-eqz v5, :cond_17

    move v5, v6

    goto :goto_5

    :cond_17
    const/4 v5, 0x0

    :goto_5
    const-string/jumbo v7, "watermark"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1858
    const-string/jumbo v5, "trackColor"

    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->trackColorIdx()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1859
    const-string v5, "aspect"

    iget-object v7, p0, Lcom/jichi/ob/ui/TrackPreviewView;->aspect:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1861
    iget-object v5, p0, Lcom/jichi/ob/ui/TrackPreviewView;->bgType:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    invoke-direct {p0, v5}, Lcom/jichi/ob/ui/TrackPreviewView;->htmlBg(Lcom/jichi/ob/merge/StickerCore$StickerBg;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "bg"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1862
    iget-object v5, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackType:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    invoke-direct {p0, v5}, Lcom/jichi/ob/ui/TrackPreviewView;->htmlTrack(Lcom/jichi/ob/merge/StickerCore$StickerTrack;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1863
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->layoutType:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    invoke-direct {p0, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->htmlLayout(Lcom/jichi/ob/merge/StickerCore$StickerLayout;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "layout"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1864
    const-string/jumbo v2, "text"

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1865
    const-string/jumbo v2, "textU"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1866
    const-string/jumbo v0, "transparentBg"

    iget-boolean v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->transparentBg:Z

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1867
    const-string v0, "dataLayer"

    iget-boolean v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataLayerOn:Z

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1868
    const-string v0, "glow"

    iget-boolean v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->glowOn:Z

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1869
    const-string/jumbo v0, "show3dBand"

    iget-boolean v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->show3dBand:Z

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1870
    const-string/jumbo v0, "trackWidth"

    iget v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackWidth:I

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1872
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3d:Z

    const-string/jumbo v2, "track3d"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1873
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRx:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v3, "track3dRx"

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1874
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v5, "track3dRy"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1876
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3d:Z

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1877
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRx:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1878
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1879
    const-string/jumbo v0, "showTrack"

    iget-boolean v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackOn:Z

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1880
    const-string v0, "brand"

    iget v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->brandIdx:I

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1881
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->brandIdx:I

    sget v2, Lcom/jichi/ob/ui/TrackPreviewView;->BRAND_CUSTOM:I

    if-ne v0, v2, :cond_18

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->badgeUrl:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string v2, "badgeUrl"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1883
    :cond_18
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->useTemplate:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->templateIdxFor()I

    move-result v6

    .line 1884
    :cond_19
    iput v6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->templateIndex:I

    .line 1885
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stickerBridge.render("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final buildRenderPayload(II)Ljava/lang/String;
    .locals 6

    .line 1891
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->computeStats()Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v0

    .line 1892
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1893
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "distance"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getDistKm()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/jichi/ob/ui/TrackPreviewView;->round1(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1894
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "duration"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getDurationSec()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/jichi/ob/ui/TrackPreviewView;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1895
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "avgSpeed"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgSpeedKmh()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/jichi/ob/ui/TrackPreviewView;->round1(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1896
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "maxSpeed"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getMaxSpeedKmh()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/jichi/ob/ui/TrackPreviewView;->round1(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_3
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1897
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "climb"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAscentM()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_4
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1898
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "hr"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgHr()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1899
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "power"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgPower()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_6
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1900
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "kcal"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getCaloriesKcal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_7
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1901
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "cad"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAvgCad()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_8
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1902
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "alt"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->getAscentM()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_9
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1903
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->titleOverride:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "RIDING"

    :cond_a
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1904
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 2303
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 2304
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2305
    check-cast v3, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 1904
    invoke-virtual {v3}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 2305
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2306
    :cond_b
    check-cast v2, Ljava/util/List;

    .line 2303
    check-cast v2, Ljava/lang/Iterable;

    .line 2307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 2308
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_c

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2309
    :cond_d
    check-cast v0, Ljava/util/List;

    .line 1905
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1906
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "altMax"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_e

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->maxOrThrow(Ljava/lang/Iterable;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_e
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1907
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    const-string v3, "altMin"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_f

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->minOrThrow(Ljava/lang/Iterable;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_f
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1909
    :cond_10
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->items:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 2310
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 1909
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_2

    :cond_11
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v2, "items"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1910
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->overlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    invoke-direct {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->bitmapToDataUrl(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, ""

    :cond_12
    const-string v2, "photo"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    int-to-float p1, p1

    int-to-float p2, p2

    .line 1912
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/ui/TrackPreviewView;->buildTrackJson(FF)Lorg/json/JSONArray;

    move-result-object p1

    .line 1913
    const-string/jumbo p2, "track"

    if-eqz p1, :cond_14

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1915
    :cond_14
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->textType:Lcom/jichi/ob/merge/StickerCore$StickerText;

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->htmlText(Lcom/jichi/ob/merge/StickerCore$StickerText;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1916
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1917
    const-string/jumbo v3, "showBadge"

    iget-boolean v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->badgeOn:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1918
    iget-boolean v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->watermarkOn:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_15

    iget-boolean v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataLayerOn:Z

    if-eqz v3, :cond_15

    move v3, v4

    goto :goto_3

    :cond_15
    const/4 v3, 0x0

    :goto_3
    const-string/jumbo v5, "watermark"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1919
    const-string/jumbo v3, "trackColor"

    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->trackColorIdx()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1920
    const-string v3, "aspect"

    iget-object v5, p0, Lcom/jichi/ob/ui/TrackPreviewView;->aspect:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1921
    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->bgType:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    invoke-direct {p0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->htmlBg(Lcom/jichi/ob/merge/StickerCore$StickerBg;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "bg"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1922
    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackType:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    invoke-direct {p0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->htmlTrack(Lcom/jichi/ob/merge/StickerCore$StickerTrack;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1923
    iget-object p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->layoutType:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    invoke-direct {p0, p2}, Lcom/jichi/ob/ui/TrackPreviewView;->htmlLayout(Lcom/jichi/ob/merge/StickerCore$StickerLayout;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "layout"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1924
    const-string/jumbo p2, "text"

    invoke-virtual {v2, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1925
    const-string/jumbo p2, "textU"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1926
    const-string/jumbo p1, "transparentBg"

    iget-boolean p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->transparentBg:Z

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1927
    const-string p1, "dataLayer"

    iget-boolean p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataLayerOn:Z

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1928
    const-string p1, "glow"

    iget-boolean p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->glowOn:Z

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1929
    const-string/jumbo p1, "show3dBand"

    iget-boolean p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->show3dBand:Z

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1930
    const-string/jumbo p1, "trackWidth"

    iget p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackWidth:I

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1932
    iget-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3d:Z

    const-string/jumbo p2, "track3d"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1933
    iget p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRx:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v0, "track3dRx"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1934
    iget p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRy:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v3, "track3dRy"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1936
    iget-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3d:Z

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1937
    iget p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRx:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1938
    iget p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRy:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1939
    const-string/jumbo p1, "showTrack"

    iget-boolean p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackOn:Z

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1940
    const-string p1, "brand"

    iget p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->brandIdx:I

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1941
    iget p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->brandIdx:I

    sget p2, Lcom/jichi/ob/ui/TrackPreviewView;->BRAND_CUSTOM:I

    if-ne p1, p2, :cond_16

    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->badgeUrl:Ljava/lang/String;

    if-eqz p1, :cond_16

    const-string p2, "badgeUrl"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1943
    :cond_16
    iget-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->useTemplate:Z

    if-eqz p1, :cond_17

    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->templateIdxFor()I

    move-result v4

    .line 1944
    :cond_17
    iput v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->templateIndex:I

    .line 1945
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final buildTrackJson(FF)Lorg/json/JSONArray;
    .locals 10

    .line 1955
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1958
    :cond_0
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide v0, -0x10000000000001L

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v4, v2

    move-wide v6, v4

    move-wide v2, v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 1959
    invoke-virtual {p2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v8

    cmpg-double v8, v8, v4

    if-gez v8, :cond_2

    invoke-virtual {p2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v4

    .line 1960
    :cond_2
    invoke-virtual {p2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v8

    cmpl-double v8, v8, v0

    if-lez v8, :cond_3

    invoke-virtual {p2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v0

    .line 1961
    :cond_3
    invoke-virtual {p2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v8

    cmpg-double v8, v8, v6

    if-gez v8, :cond_4

    invoke-virtual {p2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v6

    .line 1962
    :cond_4
    invoke-virtual {p2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v8

    cmpl-double v8, v8, v2

    if-lez v8, :cond_1

    invoke-virtual {p2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v2

    goto :goto_0

    .line 1964
    :cond_5
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1965
    iget-object p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 1966
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1967
    invoke-virtual {v0}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v2

    sub-double/2addr v2, v6

    const-string/jumbo v8, "x"

    invoke-virtual {v1, v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    .line 1968
    invoke-virtual {v0}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v2

    sub-double/2addr v2, v4

    const-string/jumbo v8, "y"

    invoke-virtual {v1, v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    .line 1969
    invoke-virtual {v0}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmpl-double v2, v2, v8

    if-lez v2, :cond_6

    invoke-virtual {v0}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v8

    :cond_6
    const-string v0, "ele"

    invoke-virtual {v1, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    .line 1966
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_7
    return-object p1
.end method

.method private final drawBanded(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;[FFFLkotlin/jvm/functions/Function1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;[FFF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1476
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-eqz p4, :cond_0

    .line 1477
    aget v2, p4, v1

    goto :goto_1

    :cond_0
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_1

    :cond_1
    move v2, p5

    :goto_1
    sub-float/2addr v2, p5

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1478
    invoke-static {v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    .line 1479
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v3, p7

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1480
    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineAlpha:F

    const/16 v6, 0xff

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v5, v6, v7, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1481
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v6

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v8

    iget-object v9, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private final drawChecker(Landroid/graphics/Canvas;F)V
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x8

    int-to-float v2, v1

    div-float v2, p2, v2

    .line 751
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const v4, -0xefefec

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v7, 0x0

    .line 752
    iget-object v10, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move/from16 v9, p2

    move-object/from16 v5, p1

    move/from16 v8, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 753
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const v4, -0xd5d5ce

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_1

    add-int v6, v4, v5

    .line 755
    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    int-to-float v6, v4

    mul-float v12, v6, v2

    int-to-float v6, v5

    mul-float v13, v6, v2

    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    mul-float v14, v6, v2

    add-int/lit8 v6, v5, 0x1

    int-to-float v6, v6

    mul-float v15, v6, v2

    iget-object v6, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 758
    :cond_2
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const v2, 0x14ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v15, p2, v1

    .line 759
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p1

    move/from16 v14, p2

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawContours(Landroid/graphics/Canvas;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 813
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 814
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v4, 0x3ac49ba6    # 0.0015f

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v3, 0x2e29b6f6

    const v4, 0x33e1b98f

    const v5, 0x33f1632a

    const v6, 0x2e7cb342

    .line 815
    filled-new-array {v5, v6, v3, v4}, [I

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 817
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    aget v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v4

    const v6, 0x3da3d70a    # 0.08f

    mul-float/2addr v6, v5

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    mul-float/2addr v6, v2

    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, v5

    const v9, 0x3ed70a3d    # 0.42f

    add-float/2addr v8, v9

    mul-float v15, v2, v8

    const v8, 0x3e0f5c29    # 0.14f

    mul-float/2addr v5, v8

    const v8, 0x3df5c28f    # 0.12f

    add-float/2addr v5, v8

    mul-float/2addr v5, v2

    const v8, 0x3f1eb852    # 0.62f

    mul-float/2addr v8, v5

    .line 820
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    sub-float v10, v6, v5

    .line 821
    invoke-virtual {v9, v10, v15}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float/2addr v7, v5

    sub-float v12, v6, v7

    sub-float v11, v15, v8

    add-float/2addr v7, v6

    add-float v14, v6, v5

    move v13, v11

    move v6, v10

    move v10, v12

    move v12, v7

    .line 822
    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v11, v15, v8

    move v13, v11

    move v14, v12

    move v12, v10

    move v10, v14

    move v14, v6

    .line 823
    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 824
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 826
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 827
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5, v9}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    neg-float v6, v2

    const v7, 0x3cf5c28f    # 0.03f

    mul-float/2addr v6, v7

    const v7, 0x3d3851ec    # 0.045f

    mul-float/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->offset(FF)V

    iget-object v6, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final drawGlowPath(Landroid/graphics/Canvas;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;Z)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 872
    :cond_0
    iget-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->reset()V

    iget-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 873
    iget-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 874
    iget-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 875
    iget-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/16 v0, 0x8c

    const/16 v1, 0xff

    const/16 v2, 0x38

    const/16 v3, 0x2b

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 876
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 877
    check-cast p2, Ljava/lang/Iterable;

    .line 2220
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    if-nez v0, :cond_2

    .line 877
    invoke-virtual {p3, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    move v0, v2

    goto :goto_0

    .line 878
    :cond_3
    iget-object p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawGradientSegments(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;)V"
        }
    .end annotation

    .line 1456
    sget-object v0, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v0, p3}, Lcom/jichi/ob/merge/StickerCore;->cumulativeDist(Ljava/util/List;)[F

    move-result-object v0

    .line 1457
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x1

    sub-int/2addr p3, v1

    aget p3, v0, p3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 1458
    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1459
    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1460
    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1461
    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1462
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    .line 1463
    aget v5, v0, v4

    div-float/2addr v5, p3

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v5

    const/16 v6, 0xfc

    int-to-float v6, v6

    const/16 v7, -0xd1

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    const/16 v7, 0xff

    .line 1464
    invoke-static {v6, v1, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v6

    const/16 v8, 0x4c

    int-to-float v8, v8

    const/16 v9, 0x40

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 1465
    invoke-static {v8, v1, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v8

    const/4 v9, 0x2

    int-to-float v9, v9

    const/16 v10, 0xfd

    int-to-float v10, v10

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    float-to-int v5, v9

    .line 1466
    invoke-static {v5, v1, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    .line 1467
    iget-object v7, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v6, v8, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1468
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v8

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v10

    iget-object v11, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private final drawLayoutBar(Landroid/graphics/Canvas;FILjava/util/List;F)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1249
    move-object/from16 v1, p4

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    .line 1250
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 1251
    :cond_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->computeStats()Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v9

    .line 1252
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1253
    new-array v10, v2, [F

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v11, 0x1

    if-ge v4, v2, :cond_1

    const v5, 0x3f333333    # 0.7f

    int-to-float v6, v4

    mul-float/2addr v6, v5

    add-int/lit8 v5, v2, -0x1

    invoke-static {v5, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    const v5, 0x3e19999a    # 0.15f

    add-float/2addr v6, v5

    mul-float v6, v6, p2

    aput v6, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const v2, 0x3f51eb85    # 0.82f

    mul-float v2, v2, p2

    add-float v4, v2, p5

    .line 1256
    check-cast v1, Ljava/lang/Iterable;

    .line 2259
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v13, v3, 0x1

    if-gez v3, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1257
    aget v3, v10, v3

    .line 1258
    sget-object v2, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v2, v1, v9}, Lcom/jichi/ob/merge/StickerCore;->itemValue(ILcom/jichi/ob/merge/StickerCore$TrackStats;)Ljava/lang/String;

    move-result-object v2

    .line 1259
    sget-object v5, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v5}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    const-string v6, ""

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v14, v5

    goto :goto_3

    :cond_4
    :goto_2
    move-object v14, v6

    .line 1260
    :goto_3
    sget-object v5, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v5}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v15, v1

    goto :goto_5

    :cond_6
    :goto_4
    move-object v15, v6

    .line 1261
    :goto_5
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1262
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1263
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v5, 0x3d3851ec    # 0.045f

    mul-float v5, v5, p2

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1264
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move/from16 v5, p3

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1265
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    .line 1267
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move/from16 v18, v3

    move/from16 v17, v4

    .line 1268
    move-object v1, v14

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 1269
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3ca3d70a    # 0.02f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1270
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1271
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0xb3

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float v16, v16, v1

    add-float v3, v18, v16

    const v1, 0x3c23d70a    # 0.01f

    mul-float v1, v1, p2

    add-float/2addr v3, v1

    sub-float v4, v17, v1

    const v1, 0x3dcccccd    # 0.1f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v2, v14

    .line 1272
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1274
    :cond_7
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1275
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3cc49ba6    # 0.024f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1276
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1277
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0x99

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1278
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v1, v1, p2

    add-float v4, v17, v1

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v15

    move/from16 v3, v18

    .line 1279
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move-object/from16 v0, p0

    move v3, v13

    move/from16 v4, v17

    goto/16 :goto_1

    :cond_8
    :goto_6
    return-void
.end method

.method private final drawLayoutBig(Landroid/graphics/Canvas;FILjava/util/List;F)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1151
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->computeStats()Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v9

    .line 1152
    move-object/from16 v1, p4

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    .line 1153
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const v2, 0x3f051eb8    # 0.52f

    mul-float v2, v2, p2

    add-float v2, v2, p5

    .line 1155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v2

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1156
    sget-object v2, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v2, v1, v9}, Lcom/jichi/ob/merge/StickerCore;->itemValue(ILcom/jichi/ob/merge/StickerCore$TrackStats;)Ljava/lang/String;

    move-result-object v2

    .line 1157
    sget-object v3, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    const-string v5, ""

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v11, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-object v11, v5

    .line 1158
    :goto_2
    sget-object v3, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v12, v1

    goto :goto_4

    :cond_4
    :goto_3
    move-object v12, v5

    .line 1159
    :goto_4
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1160
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1161
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v3, 0x3d9fbe77    # 0.078f

    mul-float v3, v3, p2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1162
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move/from16 v14, p3

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1163
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v3, p2, v16

    const v1, 0x3f666666    # 0.9f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    .line 1164
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move/from16 v17, v3

    move/from16 v18, v4

    .line 1165
    move-object v1, v11

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1166
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3cf5c28f    # 0.03f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1167
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1168
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0xb3

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    div-float v15, v15, v16

    add-float v3, v17, v15

    const v1, 0x3c656042    # 0.014f

    mul-float v1, v1, p2

    add-float/2addr v3, v1

    sub-float v4, v18, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v2, v11

    .line 1169
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1171
    :cond_5
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1172
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3cd4fdf4    # 0.026f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1173
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1174
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0x99

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1175
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v1, 0x3d75c28f    # 0.06f

    mul-float v1, v1, p2

    add-float v4, v18, v1

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v3, v17

    .line 1176
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    const v0, 0x3dd70a3d    # 0.105f

    mul-float v0, v0, p2

    add-float v4, v18, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_6
    :goto_5
    return-void
.end method

.method private final drawLayoutCorner(Landroid/graphics/Canvas;FILjava/util/List;F)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1083
    move-object/from16 v1, p4

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    .line 1084
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 1085
    :cond_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->computeStats()Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v9

    const v2, 0x3dcccccd    # 0.1f

    mul-float v3, p2, v2

    const v2, 0x3e051eb8    # 0.13f

    mul-float v2, v2, p2

    add-float v2, v2, p5

    .line 1088
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v2

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1089
    sget-object v2, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v2, v1, v9}, Lcom/jichi/ob/merge/StickerCore;->itemValue(ILcom/jichi/ob/merge/StickerCore$TrackStats;)Ljava/lang/String;

    move-result-object v2

    .line 1090
    sget-object v5, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v5}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    const-string v6, ""

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v11, v5

    goto :goto_2

    :cond_2
    :goto_1
    move-object v11, v6

    .line 1091
    :goto_2
    sget-object v5, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v5}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v12, v1

    goto :goto_4

    :cond_4
    :goto_3
    move-object v12, v6

    .line 1092
    :goto_4
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1093
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1094
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v5, 0x3d6147ae    # 0.055f

    mul-float v5, v5, p2

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1095
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move/from16 v14, p3

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1096
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    const v1, 0x3f666666    # 0.9f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    .line 1097
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move/from16 v16, v3

    move/from16 v17, v4

    .line 1098
    move-object v1, v11

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const v18, 0x3cb43958    # 0.022f

    if-lez v1, :cond_5

    .line 1099
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    mul-float v2, p2, v18

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1100
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1101
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0xb3

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    add-float v3, v16, v15

    const v1, 0x3c23d70a    # 0.01f

    mul-float v1, v1, p2

    add-float/2addr v3, v1

    sub-float v4, v17, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v2, v11

    .line 1102
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1104
    :cond_5
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1105
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    mul-float v2, p2, v18

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1106
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1107
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0x99

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1108
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v1, 0x3b83126f    # 0.004f

    mul-float v1, v1, p2

    add-float v3, v16, v1

    const v1, 0x3d75c28f    # 0.06f

    mul-float v1, v1, p2

    add-float v4, v17, v1

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v12

    .line 1109
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    const v0, 0x3de147ae    # 0.11f

    mul-float v0, v0, p2

    add-float v4, v17, v0

    move-object/from16 v0, p0

    move/from16 v3, v16

    goto/16 :goto_0

    :cond_6
    :goto_5
    return-void
.end method

.method private final drawLayoutDual(Landroid/graphics/Canvas;FILjava/util/List;F)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v9, p3

    .line 1183
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->computeStats()Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v10

    .line 1184
    iget-object v11, v0, Lcom/jichi/ob/ui/TrackPreviewView;->summaryStats:Lcom/jichi/ob/merge/StickerCore$SummaryStats;

    .line 1185
    move-object/from16 v1, p4

    check-cast v1, Ljava/lang/Iterable;

    const/4 v12, 0x3

    invoke-static {v1, v12}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    const v2, 0x3e8a3d71    # 0.27f

    mul-float v3, p2, v2

    const v2, 0x3f451eb8    # 0.77f

    mul-float v13, p2, v2

    .line 1187
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-lez v2, :cond_0

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1188
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 1189
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v6, v5, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1190
    new-array v5, v12, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1192
    check-cast v1, Ljava/lang/Iterable;

    .line 2249
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v2, v15

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const v17, 0x3d4ccccd    # 0.05f

    const v18, 0x3cbc6a7f    # 0.023f

    const v19, 0x3eae147b    # 0.34f

    const v20, 0x3d54fdf4    # 0.052f

    const v21, 0x3dcccccd    # 0.1f

    const v22, 0x3f19999a    # 0.6f

    const-string v8, ""

    if-eqz v4, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v23, v2, 0x1

    if-gez v2, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 1193
    sget-object v5, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v5, v4, v10}, Lcom/jichi/ob/merge/StickerCore;->itemValue(ILcom/jichi/ob/merge/StickerCore$TrackStats;)Ljava/lang/String;

    move-result-object v5

    .line 1194
    sget-object v24, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual/range {v24 .. v24}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v26, v6

    goto :goto_5

    :cond_5
    :goto_4
    move-object/from16 v26, v8

    .line 1195
    :goto_5
    sget-object v6, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v6}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v27, v4

    goto :goto_7

    :cond_7
    :goto_6
    move-object/from16 v27, v8

    :goto_7
    int-to-float v2, v2

    mul-float v2, v2, v21

    add-float v2, v2, v22

    mul-float v2, v2, p2

    add-float v4, v2, p5

    .line 1198
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1199
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1200
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    mul-float v6, p2, v20

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1201
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1202
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    mul-float v6, p2, v19

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v2, v5

    const/4 v5, 0x0

    move/from16 v28, v15

    const/4 v12, 0x0

    const/16 v25, 0x2

    move-object v15, v1

    move-object/from16 v1, p1

    .line 1203
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move/from16 v19, v3

    move/from16 v21, v4

    .line 1204
    move-object/from16 v1, v26

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 1205
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3ca3d70a    # 0.02f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1206
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1207
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0xb3

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float v20, v20, v1

    add-float v3, v19, v20

    const v1, 0x3c23d70a    # 0.01f

    mul-float v1, v1, p2

    add-float/2addr v3, v1

    sub-float v4, v21, v1

    const v1, 0x3df5c28f    # 0.12f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    .line 1208
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1210
    :cond_8
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1211
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    mul-float v2, p2, v18

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1212
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1213
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0x99

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1214
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    mul-float v17, v17, p2

    add-float v4, v21, v17

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move/from16 v3, v19

    move-object/from16 v2, v27

    .line 1215
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move-object v1, v15

    move/from16 v2, v23

    move/from16 v6, v25

    move/from16 v15, v28

    const/4 v12, 0x3

    goto/16 :goto_3

    :cond_9
    move/from16 v26, v3

    move/from16 v25, v6

    move/from16 v28, v15

    const/4 v12, 0x0

    move-object v15, v1

    if-eqz v11, :cond_a

    const/4 v1, 0x3

    .line 1219
    new-array v1, v1, [Lkotlin/Pair;

    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;->fmtKm()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u603b\u8ddd\u79bb"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v28

    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;->fmtDur()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u603b\u65f6\u957f"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$SummaryStats;->fmtAscent()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u603b\u722c\u5347"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v25

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_9

    .line 2251
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v15, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 2252
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2253
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 1221
    sget-object v4, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v4, v3, v10}, Lcom/jichi/ob/merge/StickerCore;->itemValue(ILcom/jichi/ob/merge/StickerCore$TrackStats;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v5}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_c

    :cond_b
    move-object v3, v8

    :cond_c
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 2253
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2254
    :cond_d
    check-cast v1, Ljava/util/List;

    .line 1223
    :goto_9
    check-cast v1, Ljava/lang/Iterable;

    .line 2256
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move/from16 v15, v28

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v11, v15, 0x1

    if-gez v15, :cond_e

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_e
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    int-to-float v1, v15

    mul-float v1, v1, v21

    add-float v1, v1, v22

    mul-float v1, v1, p2

    add-float v4, v1, p5

    .line 1226
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1227
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1228
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    mul-float v3, p2, v20

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1229
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    mul-float v6, p2, v19

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move v3, v13

    .line 1230
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1231
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1232
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    mul-float v2, p2, v18

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1233
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1234
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/16 v13, 0x99

    invoke-static {v13, v2, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1235
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    mul-float v1, p2, v17

    add-float/2addr v4, v1

    const/16 v7, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    .line 1236
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move v13, v3

    move v15, v11

    goto/16 :goto_a

    :cond_f
    move v15, v13

    .line 1239
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1240
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1241
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3cf5c28f    # 0.03f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1242
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3f147ae1    # 0.58f

    mul-float v1, v1, p2

    add-float v4, v1, p5

    const/16 v7, 0x30

    const/4 v8, 0x0

    .line 1243
    const-string/jumbo v2, "\u672c\u6b21"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move/from16 v3, v26

    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1244
    const-string/jumbo v2, "\u7d2f\u8ba1"

    move-object/from16 v0, p0

    move v3, v15

    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    return-void
.end method

.method private final drawLayoutGrid(Landroid/graphics/Canvas;FILjava/util/List;F)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1116
    move-object/from16 v1, p4

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    .line 1117
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 1118
    :cond_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->computeStats()Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v9

    const v2, 0x3e570a3d    # 0.21f

    mul-float v2, v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, p2

    const v4, 0x3f4a3d71    # 0.79f

    mul-float v4, v4, p2

    const/4 v5, 0x3

    .line 1119
    new-array v10, v5, [F

    const/4 v5, 0x0

    aput v2, v10, v5

    const/4 v11, 0x1

    aput v3, v10, v11

    const/4 v2, 0x2

    aput v4, v10, v2

    const v2, 0x3df5c28f    # 0.12f

    mul-float v12, p2, v2

    const v2, 0x3f0f5c29    # 0.56f

    mul-float v2, v2, p2

    add-float v13, v2, p5

    .line 1123
    check-cast v1, Ljava/lang/Iterable;

    .line 2246
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v15, v5, 0x1

    if-gez v5, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1124
    rem-int/lit8 v2, v5, 0x3

    aget v3, v10, v2

    div-int/lit8 v5, v5, 0x3

    int-to-float v2, v5

    mul-float/2addr v2, v12

    add-float v4, v13, v2

    .line 1125
    sget-object v2, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v2, v1, v9}, Lcom/jichi/ob/merge/StickerCore;->itemValue(ILcom/jichi/ob/merge/StickerCore$TrackStats;)Ljava/lang/String;

    move-result-object v2

    .line 1126
    sget-object v5, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v5}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    const-string v6, ""

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v16, v5

    goto :goto_2

    :cond_3
    :goto_1
    move-object/from16 v16, v6

    .line 1127
    :goto_2
    sget-object v5, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v5}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v17, v1

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v17, v6

    .line 1128
    :goto_4
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1129
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1130
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v5, 0x3d2c0831    # 0.042f

    mul-float v5, v5, p2

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1131
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move/from16 v5, p3

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1132
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v18

    const v1, 0x3e851eb8    # 0.26f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    .line 1133
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move/from16 v19, v3

    move/from16 v20, v4

    .line 1134
    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 1135
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3ca3d70a    # 0.02f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1136
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1137
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0xb3

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float v18, v18, v1

    add-float v3, v19, v18

    const v1, 0x3c23d70a    # 0.01f

    mul-float v1, v1, p2

    add-float/2addr v3, v1

    sub-float v4, v20, v1

    const v1, 0x3e0f5c29    # 0.14f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    .line 1138
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1140
    :cond_6
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1141
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3cc49ba6    # 0.024f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1142
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1143
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0x99

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1144
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v1, 0x3d75c28f    # 0.06f

    mul-float v1, v1, p2

    add-float v4, v20, v1

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v19

    .line 1145
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move-object/from16 v0, p0

    move v5, v15

    goto/16 :goto_0

    :cond_7
    :goto_5
    return-void
.end method

.method private final drawLayoutPoster(Landroid/graphics/Canvas;FILjava/util/List;F)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 1286
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->computeStats()Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v11

    .line 1287
    move-object v1, v10

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v1, :cond_0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v13

    .line 1288
    :goto_0
    sget-object v2, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v2, v1, v11}, Lcom/jichi/ob/merge/StickerCore;->itemValue(ILcom/jichi/ob/merge/StickerCore$TrackStats;)Ljava/lang/String;

    move-result-object v2

    .line 1289
    sget-object v3, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    const-string v14, ""

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v15, v1

    goto :goto_2

    :cond_2
    :goto_1
    move-object v15, v14

    .line 1291
    :goto_2
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1292
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1293
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, p2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1294
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1295
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    const v1, 0x3e75c28f    # 0.24f

    mul-float v1, v1, p2

    add-float v4, v1, p5

    const/high16 v17, 0x40000000    # 2.0f

    div-float v3, p2, v17

    const v1, 0x3f75c28f    # 0.96f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    .line 1297
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move/from16 v18, v3

    .line 1298
    move-object v1, v15

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const v19, 0x3ca3d70a    # 0.02f

    const/16 v2, 0xb3

    if-lez v1, :cond_3

    .line 1299
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v3, 0x3d2c0831    # 0.042f

    mul-float v3, v3, p2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1300
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1301
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v2, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    div-float v16, v16, v17

    add-float v3, v18, v16

    mul-float v1, p2, v19

    add-float/2addr v3, v1

    sub-float/2addr v4, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v1, v15

    move v15, v2

    move-object v2, v1

    move-object/from16 v1, p1

    .line 1302
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    move v15, v2

    .line 1305
    :goto_3
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1306
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1307
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3d0f5c29    # 0.035f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1308
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const-string v2, "sans-serif-medium"

    invoke-static {v2, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1309
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0xcc

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3eab851f    # 0.335f

    mul-float v1, v1, p2

    add-float v4, v1, p5

    const/16 v7, 0x30

    const/4 v8, 0x0

    .line 1310
    const-string v2, "KILOMETERS"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move/from16 v3, v18

    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1312
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1313
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1314
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3cf5c28f    # 0.03f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1315
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const-string v2, "sans-serif-light"

    invoke-static {v2, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1316
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    const/16 v6, 0x99

    invoke-static {v6, v2, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3ec51eb8    # 0.385f

    mul-float v1, v1, p2

    add-float v4, v1, p5

    .line 1317
    const-string v2, "RIDING \u00b7 \u6211\u7684\u8f68\u8ff9"

    const/4 v5, 0x0

    move v1, v6

    const/4 v6, 0x0

    move/from16 v16, v12

    move v12, v1

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1319
    move-object v1, v10

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v13}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    .line 1320
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    const v3, 0x3e570a3d    # 0.21f

    mul-float v3, v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v4, v4, p2

    const v5, 0x3f4a3d71    # 0.79f

    mul-float v5, v5, p2

    .line 1321
    new-array v10, v2, [F

    aput v3, v10, v16

    aput v4, v10, v13

    const/4 v2, 0x2

    aput v5, v10, v2

    const v2, 0x3f59999a    # 0.85f

    mul-float v2, v2, p2

    add-float v4, v2, p5

    .line 1324
    check-cast v1, Ljava/lang/Iterable;

    .line 2262
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v20, v16, 0x1

    if-gez v16, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1325
    sget-object v2, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v2, v1, v11}, Lcom/jichi/ob/merge/StickerCore;->itemValue(ILcom/jichi/ob/merge/StickerCore$TrackStats;)Ljava/lang/String;

    move-result-object v2

    .line 1326
    sget-object v3, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v21, v3

    goto :goto_6

    :cond_6
    :goto_5
    move-object/from16 v21, v14

    .line 1327
    :goto_6
    sget-object v3, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v22, v1

    goto :goto_8

    :cond_8
    :goto_7
    move-object/from16 v22, v14

    .line 1328
    :goto_8
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1329
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1330
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v3, 0x3d23d70a    # 0.04f

    mul-float v3, v3, p2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1331
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1332
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 1333
    aget v1, v10, v16

    move-object/from16 v24, v21

    check-cast v24, Ljava/lang/CharSequence;

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_9

    div-float v3, v23, v17

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_9
    sub-float v3, v1, v3

    const v1, 0x3e6147ae    # 0.22f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move/from16 v25, v4

    .line 1334
    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 1335
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    mul-float v2, p2, v19

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1336
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1337
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v15, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1338
    aget v1, v10, v16

    div-float v23, v23, v17

    add-float v1, v1, v23

    const v2, 0x3c23d70a    # 0.01f

    mul-float v2, v2, p2

    add-float v3, v1, v2

    sub-float v4, v25, v2

    const v1, 0x3df5c28f    # 0.12f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1340
    :cond_a
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1341
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3cbc6a7f    # 0.023f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1342
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1343
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v12, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1344
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1345
    aget v3, v10, v16

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v1, v1, p2

    add-float v4, v25, v1

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move-object/from16 v0, p0

    move/from16 v16, v20

    move/from16 v4, v25

    goto/16 :goto_4

    :cond_b
    return-void
.end method

.method private final drawLayoutTriple(Landroid/graphics/Canvas;FILjava/util/List;F)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1049
    move-object/from16 v1, p4

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    .line 1050
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 1051
    :cond_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->computeStats()Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v9

    const v2, 0x3dcccccd    # 0.1f

    mul-float v3, p2, v2

    const v2, 0x3f1eb852    # 0.62f

    mul-float v2, v2, p2

    add-float v2, v2, p5

    .line 1055
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v2

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1056
    sget-object v2, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v2, v1, v9}, Lcom/jichi/ob/merge/StickerCore;->itemValue(ILcom/jichi/ob/merge/StickerCore$TrackStats;)Ljava/lang/String;

    move-result-object v2

    .line 1057
    sget-object v5, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v5}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    const-string v6, ""

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v11, v5

    goto :goto_2

    :cond_2
    :goto_1
    move-object v11, v6

    .line 1058
    :goto_2
    sget-object v5, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v5}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v12, v1

    goto :goto_4

    :cond_4
    :goto_3
    move-object v12, v6

    .line 1059
    :goto_4
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1060
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1061
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v5, 0x3d99999a    # 0.075f

    mul-float v5, v5, p2

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1062
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move/from16 v14, p3

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1063
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    const v1, 0x3f666666    # 0.9f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    .line 1064
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move/from16 v16, v3

    move/from16 v17, v4

    .line 1065
    move-object v1, v11

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1066
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3cd4fdf4    # 0.026f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1067
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1068
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0xb3

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    add-float v3, v16, v15

    const v1, 0x3c449ba6    # 0.012f

    mul-float v1, v1, p2

    add-float/2addr v3, v1

    sub-float v4, v17, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float v6, p2, v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v2, v11

    .line 1069
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1071
    :cond_5
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1072
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3cc49ba6    # 0.024f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1073
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1074
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0x99

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1075
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v1, 0x3b83126f    # 0.004f

    mul-float v1, v1, p2

    add-float v3, v16, v1

    const v1, 0x3d75c28f    # 0.06f

    mul-float v1, v1, p2

    add-float v4, v17, v1

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v12

    .line 1076
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    const v0, 0x3de147ae    # 0.11f

    mul-float v0, v0, p2

    add-float v4, v17, v0

    move-object/from16 v0, p0

    move/from16 v3, v16

    goto/16 :goto_0

    :cond_6
    :goto_5
    return-void
.end method

.method private final drawLightMap(Landroid/graphics/Canvas;F)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v9, p2

    .line 796
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 797
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const v2, 0x66c6e7c0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3da3d70a    # 0.08f

    mul-float v2, v9, v1

    const v1, 0x3df5c28f    # 0.12f

    mul-float v3, v9, v1

    const v1, 0x3f0ccccd    # 0.55f

    mul-float v4, v9, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v5, v9, v1

    const v1, 0x3cf5c28f    # 0.03f

    mul-float v6, v9, v1

    .line 798
    iget-object v8, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    move v7, v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move v2, v5

    .line 799
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const v3, 0x66a8d2e8

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3ee66666    # 0.45f

    mul-float v3, v9, v1

    const v1, 0x3f733333    # 0.95f

    mul-float v4, v9, v1

    const v1, 0x3f666666    # 0.9f

    mul-float v5, v9, v1

    .line 800
    iget-object v8, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 801
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 802
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v4, 0x3be56042    # 0.007f

    mul-float/2addr v4, v9

    const/high16 v5, 0x40200000    # 2.5f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 803
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 804
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    neg-float v3, v9

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v9

    invoke-virtual {v10, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v5, 0x3e99999a    # 0.3f

    mul-float v11, v9, v5

    const v5, 0x3f19999a    # 0.6f

    mul-float v13, v9, v5

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v14, v9, v5

    const v5, 0x3f866666    # 1.05f

    mul-float v15, v9, v5

    move/from16 v16, v13

    move v12, v2

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 805
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 806
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v5, 0x3ba3d70a    # 0.005f

    mul-float/2addr v5, v9

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 807
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v12, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v9

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v3, v9

    move v14, v2

    move/from16 v17, v13

    move/from16 v18, v15

    move v13, v2

    move v15, v3

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 808
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawNeon(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 884
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 885
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x44ff4fd8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 886
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 887
    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .line 2223
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    if-nez v4, :cond_1

    .line 887
    invoke-virtual {v0, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    move v4, v6

    goto :goto_0

    .line 888
    :cond_2
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 889
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    const v4, 0x3fb33333    # 1.4f

    mul-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 890
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ge v3, v0, :cond_4

    int-to-float v2, v3

    .line 891
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v5, v2, v4

    const/high16 v6, 0x40000000    # 2.0f

    const v7, -0x57aa09

    if-gez v5, :cond_3

    const v4, -0xb028

    mul-float/2addr v2, v6

    .line 893
    invoke-direct {p0, v4, v7, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->lerp(IIF)I

    move-result v2

    goto :goto_3

    :cond_3
    sub-float/2addr v2, v4

    mul-float/2addr v2, v6

    const v4, -0xdd2c12

    .line 894
    invoke-direct {p0, v7, v4, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->lerp(IIF)I

    move-result v2

    .line 896
    :goto_3
    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v7, 0xf2

    invoke-static {v7, v5, v6, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 897
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v6

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v8

    iget-object v9, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_4
    return-void
.end method

.method private final drawOutbaseBadge(Landroid/graphics/Canvas;FILjava/util/List;F)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1574
    move-object/from16 v1, p4

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    .line 1575
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const v2, 0x3d4ccccd    # 0.05f

    mul-float v9, p2, v2

    .line 1577
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->computeStats()Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v10

    const v2, 0x3f5c28f6    # 0.86f

    mul-float v2, v2, p2

    add-float v2, v2, p5

    .line 1579
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v7, v2

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1580
    sget-object v2, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v2, v1, v10}, Lcom/jichi/ob/merge/StickerCore;->itemValue(ILcom/jichi/ob/merge/StickerCore$TrackStats;)Ljava/lang/String;

    move-result-object v2

    .line 1581
    sget-object v3, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    const-string v4, ""

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v12, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-object v12, v4

    .line 1582
    :goto_2
    sget-object v3, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v13, v1

    goto :goto_4

    :cond_4
    :goto_3
    move-object v13, v4

    .line 1583
    :goto_4
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1584
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v1, 0x3d54fdf4    # 0.052f

    mul-float v1, v1, p2

    const v3, 0x3e99999a    # 0.3f

    mul-float v3, v3, p2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v19, v2

    move v2, v1

    move-object/from16 v1, v19

    .line 1586
    invoke-static/range {v0 .. v6}, Lcom/jichi/ob/ui/TrackPreviewView;->fitTextSize$default(Lcom/jichi/ob/ui/TrackPreviewView;Ljava/lang/String;FFFILjava/lang/Object;)F

    move-result v15

    .line 1587
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1588
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1589
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    sub-float v3, p2, v9

    const v2, 0x3ed70a3d    # 0.42f

    mul-float v6, p2, v2

    move v4, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    move-object/from16 v1, p1

    .line 1590
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move/from16 v17, v3

    move/from16 v18, v4

    .line 1591
    move-object v1, v12

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1592
    iget-object v7, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v2, v15, v1

    const v1, 0x3df5c28f    # 0.12f

    mul-float v3, p2, v1

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v12

    invoke-static/range {v0 .. v6}, Lcom/jichi/ob/ui/TrackPreviewView;->fitTextSize$default(Lcom/jichi/ob/ui/TrackPreviewView;Ljava/lang/String;FFFILjava/lang/Object;)F

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1593
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1594
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    const/16 v6, 0xb3

    invoke-static {v6, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sub-float v3, v17, v16

    const v2, 0x3ca3d70a    # 0.02f

    mul-float v2, v2, p2

    sub-float/2addr v3, v2

    const v2, 0x3bc49ba6    # 0.006f

    mul-float v2, v2, p2

    sub-float v4, v18, v2

    const v2, 0x3e3851ec    # 0.18f

    mul-float v6, p2, v2

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    move-object/from16 v1, p1

    .line 1595
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1598
    :cond_5
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1599
    iget-object v7, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v1, 0x3cd4fdf4    # 0.026f

    mul-float v2, p2, v1

    const v1, 0x3e8f5c29    # 0.28f

    mul-float v3, p2, v1

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v13

    invoke-static/range {v0 .. v6}, Lcom/jichi/ob/ui/TrackPreviewView;->fitTextSize$default(Lcom/jichi/ob/ui/TrackPreviewView;Ljava/lang/String;FFFILjava/lang/Object;)F

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1600
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1601
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    const/16 v6, 0x99

    invoke-static {v6, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1602
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v2, 0x3cf5c28f    # 0.03f

    mul-float v2, v2, p2

    add-float v4, v18, v2

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move/from16 v3, v17

    move-object/from16 v1, p1

    .line 1603
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    const v0, 0x3d9fbe77    # 0.078f

    mul-float v0, v0, p2

    add-float v7, v18, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_6
    :goto_5
    return-void
.end method

.method static synthetic drawOutbaseBadge$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;FILjava/util/List;FILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1573
    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawOutbaseBadge(Landroid/graphics/Canvas;FILjava/util/List;F)V

    return-void
.end method

.method private final drawPhantom(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    .line 904
    iget v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    rsub-int/lit8 v3, v1, 0x3

    int-to-float v3, v3

    const v4, 0x3fe66666    # 1.8f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    mul-int/lit8 v3, v1, 0x16

    add-int/lit8 v3, v3, 0x14

    .line 906
    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 907
    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 908
    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xc0

    const/16 v5, 0xff

    const/16 v6, 0x7c

    invoke-static {v3, v6, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 909
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 910
    move-object v3, p2

    check-cast v3, Ljava/lang/Iterable;

    .line 2226
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    if-nez v4, :cond_1

    .line 910
    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    move v4, v6

    goto :goto_1

    .line 911
    :cond_2
    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 913
    :cond_3
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float v6, v0, v1

    const v7, 0x3f733333    # 0.95f

    const v5, -0x641701

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/jichi/ob/ui/TrackPreviewView;->drawSimpleLine(Landroid/graphics/Canvas;Ljava/util/List;IFF)V

    return-void
.end method

.method private final drawPhotoBg(Landroid/graphics/Canvas;FLcom/jichi/ob/merge/StickerCore$StickerBg;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 656
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->overlayBitmap:Landroid/graphics/Bitmap;

    const v6, 0x3ca3d70a    # 0.02f

    const v7, 0x3f6147ae    # 0.88f

    const v8, 0x3df5c28f    # 0.12f

    const v9, 0x3f733333    # 0.95f

    const v10, 0x3ee66666    # 0.45f

    const v11, -0xe4dbc0

    const v12, -0xf4efda

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x1

    if-nez v3, :cond_1

    .line 659
    sget-object v3, Lcom/jichi/ob/merge/StickerCore$StickerBg;->PHOTO_OVERLAY:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    move-object/from16 v4, p3

    if-ne v4, v3, :cond_0

    .line 660
    invoke-direct {v0, v1, v2, v12, v11}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    const/4 v4, 0x7

    const/16 v5, 0x88

    const/4 v3, 0x7

    .line 661
    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStars(Landroid/graphics/Canvas;FIII)V

    move-object v15, v0

    mul-float v1, p2, v10

    mul-float v3, p2, v9

    mul-float v2, p2, v8

    mul-float v4, p2, v7

    .line 664
    iget-object v0, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 665
    iget-object v0, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v5, 0x332b8cff

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    mul-float v5, p2, v6

    .line 666
    iget-object v7, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move v6, v5

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 667
    iget-object v0, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v6, 0x3b83126f    # 0.004f

    mul-float v6, v6, p2

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 668
    iget-object v0, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v6, 0x662b8cff

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 669
    iget-object v7, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move v6, v5

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 670
    iget-object v5, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 671
    iget-object v5, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v6, 0x3d0f5c29    # 0.035f

    mul-float v6, v6, p2

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 672
    iget-object v5, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 673
    iget-object v5, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v6, -0x66000001

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr v1, v3

    div-float/2addr v1, v13

    add-float/2addr v2, v4

    div-float/2addr v2, v13

    .line 674
    iget-object v3, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v4, "\u7167\u7247"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    move-object v15, v0

    move-object v0, v1

    .line 677
    invoke-direct {v15, v0, v2, v12, v11}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    const/4 v4, 0x7

    const/16 v5, 0x88

    const/4 v3, 0x7

    move-object v0, v15

    .line 678
    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStars(Landroid/graphics/Canvas;FIII)V

    move-object v0, v1

    .line 679
    iget-object v1, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 680
    iget-object v1, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3d3851ec    # 0.045f

    mul-float v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 681
    iget-object v1, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 682
    iget-object v1, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x66ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    div-float v1, p2, v13

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, p2

    .line 683
    iget-object v3, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v4, "\u70b9\u51fb\u300c\u9009\u7167\u7247\u300d\u6dfb\u52a0\u80cc\u666f\u56fe"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    move-object/from16 v4, p3

    move-object v15, v0

    move-object v0, v1

    .line 686
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v3, v2, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 687
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 688
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p2, v5

    move/from16 v16, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, p2, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 689
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 690
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    sub-float v6, p2, v6

    div-float/2addr v6, v13

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float v3, p2, v3

    div-float/2addr v3, v13

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 691
    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 692
    sget-object v2, Lcom/jichi/ob/ui/TrackPreviewView$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v4}, Lcom/jichi/ob/merge/StickerCore$StickerBg;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x16

    const/4 v6, 0x0

    if-eq v2, v3, :cond_3

    const/16 v3, 0x17

    if-eq v2, v3, :cond_2

    .line 711
    iget-object v2, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    iget-object v2, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    mul-float v18, p2, v10

    mul-float v3, p2, v9

    mul-float v2, p2, v8

    mul-float v4, p2, v7

    .line 714
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    mul-float v22, p2, v16

    .line 715
    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v23, v22

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    move-object/from16 v5, v17

    .line 717
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 718
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 719
    iget-object v5, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    check-cast v1, Landroid/graphics/Shader;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 720
    iget-object v5, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move/from16 v1, v18

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 721
    iget-object v0, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 722
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 724
    iget-object v0, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 725
    iget-object v0, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .line 726
    iget-object v5, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object/from16 v0, p1

    move/from16 v4, p2

    move/from16 v3, v18

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 695
    :cond_2
    iget-object v0, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 696
    iget-object v0, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    check-cast v1, Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const v0, 0x3f0ccccd    # 0.55f

    mul-float v4, p2, v0

    .line 697
    iget-object v5, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v2, v3

    .line 698
    iget-object v1, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 699
    invoke-direct {v15, v0, v2, v12, v11}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    return-void

    :cond_3
    move/from16 v2, p2

    .line 703
    iget-object v3, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    iget-object v3, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 704
    iget-object v3, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    check-cast v1, Landroid/graphics/Shader;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v2, 0x0

    .line 705
    iget-object v5, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move/from16 v4, p2

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v2, v3

    .line 706
    iget-object v1, v15, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const v1, -0x55f4efda

    const v3, -0x66e4dbc0

    .line 707
    invoke-direct {v15, v0, v2, v1, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    return-void
.end method

.method private final drawRoadGrid(Landroid/graphics/Canvas;FI)V
    .locals 16

    move-object/from16 v0, p0

    .line 763
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 764
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v3, 0x3a9d4952    # 0.0012f

    mul-float v3, v3, p2

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 765
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move/from16 v7, p3

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    move v8, v2

    :goto_0
    const/16 v1, 0x9

    if-ge v8, v1, :cond_0

    int-to-float v1, v8

    mul-float v1, v1, p2

    const/high16 v2, 0x41100000    # 9.0f

    div-float v2, v1, v2

    const/4 v3, 0x0

    .line 766
    iget-object v6, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move v4, v2

    move-object/from16 v1, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    iget-object v6, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move v5, v2

    move/from16 v4, p2

    move v3, v2

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    move/from16 v4, p2

    .line 768
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v3, 0x3bc49ba6    # 0.006f

    mul-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    const/16 v5, 0xa6

    const/16 v6, 0xb3

    const/16 v7, 0x9a

    invoke-static {v3, v7, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 769
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    neg-float v2, v4

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    const v3, 0x3e99999a    # 0.3f

    mul-float v6, v4, v3

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const v3, 0x3dcccccd    # 0.1f

    mul-float v7, v4, v3

    const v3, 0x3f19999a    # 0.6f

    mul-float v8, v4, v3

    const v3, 0x3f0ccccd    # 0.55f

    mul-float v14, v4, v3

    const v3, 0x3f866666    # 1.05f

    mul-float v15, v4, v3

    const v3, 0x3eb33333    # 0.35f

    mul-float v11, v4, v3

    move v9, v14

    move v10, v15

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 770
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 771
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v5, 0x3b83126f    # 0.004f

    mul-float/2addr v5, v4

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 772
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    invoke-virtual {v9, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v10, v4, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v12, v4, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v13, v4, v2

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 773
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawSatellite(Landroid/graphics/Canvas;F)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v9, p2

    .line 778
    new-instance v10, Ljava/util/Random;

    const-wide/16 v1, 0x17

    invoke-direct {v10, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 779
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    const/16 v1, 0xe

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3d4ccccd    # 0.05f

    if-ge v11, v1, :cond_0

    .line 781
    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v9

    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v9

    .line 782
    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const v6, 0x3e23d70a    # 0.16f

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    mul-float/2addr v5, v9

    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const v7, 0x3e0f5c29    # 0.14f

    mul-float/2addr v6, v7

    add-float/2addr v6, v3

    mul-float/2addr v6, v9

    .line 783
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const/16 v7, 0xe8

    const/16 v8, 0xff

    const/16 v12, 0x26

    const/16 v13, 0x9c

    invoke-static {v12, v13, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    move v3, v4

    add-float v4, v1, v5

    move v7, v5

    add-float v5, v3, v6

    mul-float/2addr v7, v2

    mul-float/2addr v6, v2

    .line 784
    iget-object v8, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    move v2, v7

    move v7, v6

    move v6, v2

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 786
    iget-object v4, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    iget-object v4, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 787
    iget-object v4, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v5, 0x3b449ba6    # 0.003f

    mul-float/2addr v5, v9

    const v6, 0x3f99999a    # 1.2f

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 788
    iget-object v4, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v5, 0x334f7b9e

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 789
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    neg-float v4, v9

    mul-float/2addr v4, v3

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v3, v9

    invoke-virtual {v10, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const v3, 0x3eb33333    # 0.35f

    mul-float v11, v9, v3

    const v3, 0x3ecccccd    # 0.4f

    mul-float v12, v9, v3

    const v3, 0x3f0ccccd    # 0.55f

    mul-float v13, v9, v3

    const v3, 0x3dcccccd    # 0.1f

    mul-float v14, v9, v3

    const v3, 0x3f866666    # 1.05f

    mul-float v15, v9, v3

    const v3, 0x3ee66666    # 0.45f

    mul-float v16, v9, v3

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 790
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    mul-float/2addr v2, v9

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v9

    const v4, 0x3f333333    # 0.7f

    mul-float v18, v9, v4

    const v4, 0x3f19999a    # 0.6f

    mul-float v19, v9, v4

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v20, v9, v4

    move/from16 v21, v15

    move/from16 v17, v16

    move/from16 v16, v2

    move-object v15, v3

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 791
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawSimpleLine(Landroid/graphics/Canvas;Ljava/util/List;IFF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;IFF)V"
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 863
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 864
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float/2addr p5, v0

    float-to-int p5, p5

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result p3

    invoke-static {p5, v0, v1, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 865
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 866
    check-cast p2, Ljava/lang/Iterable;

    .line 2217
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 v0, p4, 0x1

    if-gez p4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast p5, Lkotlin/Pair;

    invoke-virtual {p5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p5

    if-nez p4, :cond_1

    .line 866
    invoke-virtual {p3, v1, p5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v1, p5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    move p4, v0

    goto :goto_0

    .line 867
    :cond_2
    iget-object p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawStars(Landroid/graphics/Canvas;FIII)V
    .locals 6

    .line 738
    new-instance v0, Ljava/util/Random;

    int-to-long v1, p3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 739
    iget-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->reset()V

    iget-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 740
    iget-object p3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p4, :cond_0

    .line 742
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, p2

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v3

    .line 743
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x400ccccd    # 2.2f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    .line 744
    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-static {p5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final drawSticker(Landroid/graphics/Canvas;FFIZIILjava/util/List;FFFZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FFIZII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FFFZ)V"
        }
    .end annotation

    move/from16 v10, p4

    .line 1359
    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1360
    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, -0x655f5a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1361
    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p2, v1

    div-float v1, p3, v1

    const/16 v3, 0x30

    const/4 v4, 0x0

    .line 1362
    const-string/jumbo v5, "\u6682\u65e0\u8f68\u8ff9\u6570\u636e"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object p2, p0

    move-object/from16 p3, p1

    move/from16 p6, v1

    move/from16 p5, v2

    move/from16 p9, v3

    move-object/from16 p10, v4

    move-object/from16 p4, v5

    move/from16 p7, v6

    move/from16 p8, v7

    invoke-static/range {p2 .. p10}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    return-void

    .line 1365
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const/4 v12, 0x1

    if-eqz v10, :cond_2

    if-eq v10, v12, :cond_1

    const v0, 0x3f70a3d7    # 0.94f

    goto :goto_0

    :cond_1
    const v0, 0x3f51eb85    # 0.82f

    goto :goto_0

    :cond_2
    const v0, 0x3f28f5c3    # 0.66f

    :goto_0
    mul-float/2addr v0, v11

    move v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move/from16 v6, p6

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    .line 1373
    invoke-direct/range {v0 .. v9}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTrackIn(Landroid/graphics/Canvas;FFFFIFFF)V

    .line 1375
    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->Companion:Lcom/jichi/ob/ui/TrackPreviewView$Companion;

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/jichi/ob/ui/TrackPreviewView$Companion;->stickerTextColor(I)I

    move-result v3

    if-eqz v10, :cond_4

    if-eq v10, v12, :cond_3

    move v2, v11

    goto :goto_1

    :cond_3
    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p8

    move v2, v11

    .line 1378
    invoke-static/range {v0 .. v7}, Lcom/jichi/ob/ui/TrackPreviewView;->drawOutbaseBadge$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;FILjava/util/List;FILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move/from16 v5, p5

    move-object/from16 v4, p8

    move v2, v11

    .line 1377
    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStravaCard(Landroid/graphics/Canvas;FILjava/util/List;Z)V

    :goto_1
    if-eqz p12, :cond_5

    .line 1382
    invoke-direct {p0, p1, v2, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->drawWatermark(Landroid/graphics/Canvas;FI)V

    :cond_5
    return-void
.end method

.method private final drawStickerText(Landroid/graphics/Canvas;Ljava/lang/String;FFIF)V
    .locals 7

    .line 1013
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 1014
    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 1015
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    .line 1016
    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1017
    invoke-static {p5}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p5}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v3, v3

    const v6, 0x3e991687    # 0.299f

    mul-float/2addr v3, v6

    int-to-float v4, v4

    const v6, 0x3f1645a2    # 0.587f

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    int-to-float v4, v5

    const v5, 0x3de978d5    # 0.114f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 1021
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpl-float v4, v4, p6

    if-lez v4, :cond_0

    const/4 v4, 0x0

    .line 1023
    :goto_0
    iget-object v5, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpl-float v5, v5, p6

    if-lez v5, :cond_0

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 1024
    sget-object v5, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v5, p2}, Lcom/jichi/ob/merge/StickerCore;->shrinkNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1025
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    move-object p2, v5

    goto :goto_0

    .line 1029
    :cond_0
    iget-object p6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1030
    iget-object p6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40200000    # 2.5f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1031
    iget-object p6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p6, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1032
    iget-object p6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p6, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1033
    iget-object p6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x430c0000    # 140.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const v3, -0x19dfdfe0

    goto :goto_1

    :cond_1
    const v3, -0x33000001    # -1.3421772E8f

    :goto_1
    invoke-virtual {p6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1034
    iget-object p6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1035
    iget-object p6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1036
    iget-object p6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1037
    iget-object p5, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1038
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1039
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1040
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    .line 1012
    iget-object p5, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Landroid/graphics/Paint;->getColor()I

    move-result p5

    :cond_0
    move v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const p6, 0x7f7fffff    # Float.MAX_VALUE

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText(Landroid/graphics/Canvas;Ljava/lang/String;FFIF)V

    return-void
.end method

.method private final drawStravaCard(Landroid/graphics/Canvas;FILjava/util/List;Z)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v11, p2

    move/from16 v6, p3

    .line 1512
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    const/4 v12, 0x1

    invoke-static {v2, v12, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v13

    const v2, 0x3d23d70a    # 0.04f

    mul-float v15, v11, v2

    sub-float v17, v11, v15

    const v2, 0x3f333333    # 0.7f

    mul-float v16, v11, v2

    const v2, 0x3f6e147b    # 0.93f

    mul-float v18, v11, v2

    const/4 v2, -0x1

    const/16 v22, 0x0

    if-eq v6, v2, :cond_1

    const v2, -0x655f5a

    if-ne v6, v2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v23, v22

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v23, v12

    .line 1519
    :goto_1
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    if-eqz v23, :cond_2

    const v3, -0x19ededea

    goto :goto_2

    :cond_2
    const v3, -0x19000001

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v2, 0x3d0f5c29    # 0.035f

    mul-float v19, v11, v2

    .line 1521
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v20, v19

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    move/from16 v24, v18

    move/from16 v2, v19

    .line 1522
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1524
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const v4, 0x332b8cff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1525
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    const v3, 0x3c449ba6    # 0.012f

    mul-float v25, v11, v3

    add-float v18, v16, v25

    const v3, 0x3ca3d70a    # 0.02f

    mul-float v19, v11, v3

    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v20, v19

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 1526
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const v14, 0x3d4ccccd    # 0.05f

    if-eqz p5, :cond_3

    mul-float v3, v11, v14

    add-float/2addr v15, v3

    add-float v2, v16, v2

    sub-float v4, v17, v3

    const v3, 0x3e75c28f    # 0.24f

    mul-float/2addr v3, v11

    add-float v5, v16, v3

    const/16 v9, 0xc0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, v2

    move v2, v15

    .line 1531
    invoke-static/range {v0 .. v10}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTerrain3D$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;FFFFIFIILjava/lang/Object;)V

    move v9, v6

    const v1, 0x3e851eb8    # 0.26f

    mul-float/2addr v1, v11

    add-float v16, v16, v1

    goto :goto_3

    :cond_3
    move v9, v6

    .line 1535
    :goto_3
    sget-object v1, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    const v2, 0x3d75c28f    # 0.06f

    invoke-virtual {v1, v13, v11, v2, v2}, Lcom/jichi/ob/merge/StickerCore;->stickerColumns(IFFF)Ljava/util/List;

    move-result-object v10

    const v1, 0x3d99999a    # 0.075f

    mul-float/2addr v1, v11

    add-float v4, v16, v1

    const v1, 0x3e03126f    # 0.128f

    mul-float/2addr v1, v11

    add-float v15, v16, v1

    .line 1538
    move-object/from16 v1, p4

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v13}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    move/from16 v1, v22

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 v22, v1, 0x1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1539
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 1540
    sget-object v5, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->computeStats()Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/jichi/ob/merge/StickerCore;->itemValue(ILcom/jichi/ob/merge/StickerCore$TrackStats;)Ljava/lang/String;

    move-result-object v5

    .line 1541
    sget-object v6, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v6}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    const-string v7, ""

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_5

    :cond_4
    move-object/from16 v17, v6

    goto :goto_6

    :cond_5
    :goto_5
    move-object/from16 v17, v7

    .line 1542
    :goto_6
    sget-object v6, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v6}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFS()Ljava/util/Map;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_7

    :cond_6
    move-object/from16 v18, v2

    goto :goto_8

    :cond_7
    :goto_7
    move-object/from16 v18, v7

    .line 1544
    :goto_8
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1545
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1546
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    mul-float v6, v11, v14

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1547
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v14, v1

    move-object/from16 v1, p1

    .line 1548
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move/from16 v27, v3

    move/from16 v26, v4

    .line 1550
    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/high16 v28, 0x40000000    # 2.0f

    if-lez v1, :cond_8

    .line 1551
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3cc49ba6    # 0.024f

    mul-float/2addr v2, v11

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1552
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0xb3

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    div-float v20, v20, v28

    add-float v3, v27, v20

    add-float v3, v3, v25

    const v1, 0x3c03126f    # 0.008f

    mul-float/2addr v1, v11

    sub-float v4, v26, v1

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    .line 1553
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1556
    :cond_8
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1557
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3cd4fdf4    # 0.026f

    mul-float/2addr v2, v11

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1558
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0x99

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1559
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v4, v15

    move-object/from16 v2, v18

    move/from16 v3, v27

    .line 1560
    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    move-object v6, v0

    move v7, v4

    if-lez v14, :cond_a

    .line 1563
    iget-object v0, v6, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, v6, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1564
    iget-object v0, v6, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1565
    iget-object v0, v6, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    if-eqz v23, :cond_9

    const v1, 0x33ffffff

    goto :goto_9

    :cond_9
    const/high16 v1, 0x33000000

    :goto_9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v1, v14, -0x1

    .line 1566
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v2, v1

    div-float v2, v2, v28

    add-float v1, v0, v2

    add-float v2, v16, v19

    sub-float v4, v24, v19

    .line 1567
    iget-object v5, v6, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move v3, v1

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_a
    move-object v0, v6

    move v15, v7

    move/from16 v4, v26

    const v14, 0x3d4ccccd    # 0.05f

    goto/16 :goto_4

    :cond_b
    move-object v6, v0

    return-void
.end method

.method private final drawTemplateBg(Landroid/graphics/Canvas;F)V
    .locals 6

    .line 626
    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->bgType:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v4, Lcom/jichi/ob/ui/TrackPreviewView$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore$StickerBg;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 650
    :pswitch_0
    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->bgType:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    invoke-direct {p0, p1, p2, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->drawPhotoBg(Landroid/graphics/Canvas;FLcom/jichi/ob/merge/StickerCore$StickerBg;)V

    return-void

    :pswitch_1
    const v3, -0xf5f1e4

    const v4, -0xe9dcc3

    .line 646
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    const/16 v4, 0x32

    const/16 v5, 0x88

    const/16 v3, 0x9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStars(Landroid/graphics/Canvas;FIII)V

    return-void

    :pswitch_2
    const v3, -0xd2e4b2

    const v4, -0x92d727

    .line 645
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    const/16 v4, 0x1e

    const/16 v5, 0x66

    const/4 v3, 0x5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStars(Landroid/graphics/Canvas;FIII)V

    return-void

    :pswitch_3
    const v3, -0x3b3fe

    const/16 v4, -0x75c4

    .line 644
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    return-void

    :pswitch_4
    const v3, -0xf2efe9

    const v4, -0xe1dbd0

    .line 643
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    return-void

    :pswitch_5
    const v3, -0xfafcf1

    const v4, -0xe5f1cd

    .line 642
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    return-void

    :pswitch_6
    const v3, -0xf8ece1

    const v4, -0xf1c5b6

    .line 641
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    return-void

    :pswitch_7
    const v3, -0xebeff4

    const v4, -0xc5dbf0

    .line 640
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    return-void

    :pswitch_8
    const v3, -0xf5f5f6

    const v4, -0xc4f5f6

    .line 639
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    return-void

    :pswitch_9
    const v3, -0xefebe8

    const v4, -0xe3dbd4

    .line 638
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    invoke-direct/range {p0 .. p2}, Lcom/jichi/ob/ui/TrackPreviewView;->drawContours(Landroid/graphics/Canvas;F)V

    return-void

    :pswitch_a
    const v3, -0x90e19

    const v4, -0x151d2e

    .line 637
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    invoke-direct/range {p0 .. p2}, Lcom/jichi/ob/ui/TrackPreviewView;->drawLightMap(Landroid/graphics/Canvas;F)V

    return-void

    :pswitch_b
    const v3, -0xf2e4d6

    const v4, -0xe4c5b5

    .line 636
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    invoke-direct/range {p0 .. p2}, Lcom/jichi/ob/ui/TrackPreviewView;->drawSatellite(Landroid/graphics/Canvas;F)V

    return-void

    :pswitch_c
    const v3, -0x100c0a

    const v4, -0x221a14

    .line 635
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    const v3, 0x3397a3b0

    invoke-direct {p0, p1, p2, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->drawRoadGrid(Landroid/graphics/Canvas;FI)V

    return-void

    :pswitch_d
    const/16 v3, -0x813

    const/16 v4, -0x1734

    .line 634
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    return-void

    :pswitch_e
    const v3, -0xb0b0b

    const v4, -0x1b1b19

    .line 633
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    const v3, 0x1a111827    # 3.0004807E-23f

    invoke-direct {p0, p1, p2, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->drawRoadGrid(Landroid/graphics/Canvas;FI)V

    return-void

    :pswitch_f
    const v3, -0x40a16

    const v4, -0xd182d

    .line 632
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    return-void

    :pswitch_10
    const/4 v3, -0x1

    const v4, -0xd0c0b

    .line 631
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    return-void

    :pswitch_11
    const/high16 v3, -0x1000000

    const v4, -0xf5f5f1

    .line 630
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    return-void

    :pswitch_12
    const v3, -0xe5facd

    const v4, -0xb3e26b

    .line 629
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    const/16 v4, 0x1a

    const/16 v5, 0x77

    const/16 v3, 0xb

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStars(Landroid/graphics/Canvas;FIII)V

    return-void

    .line 628
    :pswitch_13
    invoke-direct/range {p0 .. p2}, Lcom/jichi/ob/ui/TrackPreviewView;->drawChecker(Landroid/graphics/Canvas;F)V

    return-void

    :pswitch_14
    const v3, -0xf4efda

    const v4, -0xe4dbc0

    .line 627
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->fillGrad(Landroid/graphics/Canvas;FII)V

    const/16 v4, 0x2a

    const/16 v5, 0x99

    const/4 v3, 0x7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStars(Landroid/graphics/Canvas;FIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final drawTemplateLayout(Landroid/graphics/Canvas;FILjava/util/List;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    .line 983
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->layoutType:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v1, Lcom/jichi/ob/ui/TrackPreviewView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 985
    :pswitch_0
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawLayoutCorner(Landroid/graphics/Canvas;FILjava/util/List;F)V

    return-void

    .line 988
    :pswitch_1
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawLayoutDual(Landroid/graphics/Canvas;FILjava/util/List;F)V

    return-void

    .line 989
    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawLayoutBar(Landroid/graphics/Canvas;FILjava/util/List;F)V

    return-void

    .line 987
    :pswitch_3
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawLayoutBig(Landroid/graphics/Canvas;FILjava/util/List;F)V

    return-void

    .line 986
    :pswitch_4
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawLayoutGrid(Landroid/graphics/Canvas;FILjava/util/List;F)V

    return-void

    .line 984
    :pswitch_5
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawLayoutTriple(Landroid/graphics/Canvas;FILjava/util/List;F)V

    return-void

    .line 990
    :pswitch_6
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawLayoutPoster(Landroid/graphics/Canvas;FILjava/util/List;F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic drawTemplateLayout$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;FILjava/util/List;FILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 982
    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTemplateLayout(Landroid/graphics/Canvas;FILjava/util/List;F)V

    return-void
.end method

.method private final drawTemplateSticker(Landroid/graphics/Canvas;FFLjava/util/List;FFFZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FF",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FFFZZ)V"
        }
    .end annotation

    .line 552
    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v3, -0x655f5a

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 554
    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    div-float v3, p2, v2

    div-float v4, p3, v2

    const/16 v7, 0x30

    const/4 v8, 0x0

    .line 555
    const-string/jumbo v2, "\u6682\u65e0\u8f68\u8ff9\u6570\u636e"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    return-void

    .line 558
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    if-nez p9, :cond_1

    .line 559
    invoke-direct {p0, p1, v9}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTemplateBg(Landroid/graphics/Canvas;F)V

    .line 565
    :cond_1
    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->layoutType:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v4, Lcom/jichi/ob/ui/TrackPreviewView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3e99999a    # 0.3f

    packed-switch v3, :pswitch_data_0

    const v5, 0x3e51eb85    # 0.205f

    goto :goto_0

    :pswitch_0
    move v5, v4

    goto :goto_0

    :pswitch_1
    const v5, 0x3e851eb8    # 0.26f

    goto :goto_0

    :pswitch_2
    const v5, 0x3e8f5c29    # 0.28f

    :goto_0
    :pswitch_3
    const v3, 0x42eb851f    # 117.76f

    mul-float/2addr v3, v9

    const v6, 0x42bc6a7f    # 94.208f

    mul-float/2addr v6, v9

    const/16 v7, 0x400

    int-to-float v7, v7

    mul-float/2addr v5, v7

    mul-float/2addr v5, v9

    const v7, 0x41f5c28f    # 30.72f

    mul-float/2addr v7, v9

    .line 577
    iget-boolean v8, p0, Lcom/jichi/ob/ui/TrackPreviewView;->show3dBand:Z

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x2

    if-lt v8, v11, :cond_2

    const v8, 0x3e19999a    # 0.15f

    mul-float v8, v8, p3

    const/high16 v11, 0x42f00000    # 120.0f

    mul-float/2addr v11, v9

    .line 578
    invoke-static {v8, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_1

    :cond_2
    move v8, v10

    :goto_1
    const v11, 0x4399999a    # 307.2f

    mul-float/2addr v11, v9

    sub-float v12, p3, v3

    sub-float/2addr v12, v6

    sub-float/2addr v12, v5

    sub-float/2addr v12, v7

    sub-float/2addr v12, v8

    .line 579
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const v6, 0x3d23d70a    # 0.04f

    mul-float/2addr v6, p2

    add-float/2addr v5, v3

    .line 584
    iget-object v7, p0, Lcom/jichi/ob/ui/TrackPreviewView;->layoutType:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v8, Lcom/jichi/ob/ui/TrackPreviewView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v7}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->ordinal()I

    move-result v7

    aget v7, v8, v7

    const v8, 0x3f1eb852    # 0.62f

    packed-switch v7, :pswitch_data_1

    goto :goto_2

    :pswitch_4
    const v4, 0x3e051eb8    # 0.13f

    goto :goto_3

    :pswitch_5
    const v4, 0x3f147ae1    # 0.58f

    goto :goto_3

    :pswitch_6
    const v4, 0x3f51eb85    # 0.82f

    goto :goto_3

    :pswitch_7
    const v4, 0x3f19999a    # 0.6f

    goto :goto_3

    :pswitch_8
    const v4, 0x3f0f5c29    # 0.56f

    goto :goto_3

    :goto_2
    :pswitch_9
    mul-float v4, v9, v8

    goto :goto_4

    :goto_3
    :pswitch_a
    mul-float/2addr v4, v9

    :goto_4
    move v11, v4

    .line 594
    iget-boolean v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->show3dBand:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->layoutType:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v7, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->GRID:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    if-eq v4, v7, :cond_3

    .line 595
    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->layoutType:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v7, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->BAR:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    if-eq v4, v7, :cond_3

    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->layoutType:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v7, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->POSTER:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    if-eq v4, v7, :cond_3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v9

    move v12, v4

    goto :goto_5

    :cond_3
    move v12, v10

    .line 598
    :goto_5
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->getTrackRotation()F

    move-result v4

    cmpg-float v7, v4, v10

    const v8, 0x3f75c28f    # 0.96f

    if-nez v7, :cond_4

    mul-float v4, p2, v8

    move-object v0, p0

    move-object v1, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move v2, v6

    move/from16 v6, p5

    .line 607
    invoke-direct/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTemplateTrack(Landroid/graphics/Canvas;FFFFFFF)V

    goto :goto_6

    :cond_4
    div-float v0, p2, v2

    mul-float v2, p5, p7

    add-float/2addr v0, v2

    add-float v2, v3, v5

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v2, v7

    mul-float v7, p6, p7

    add-float/2addr v2, v7

    .line 602
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 603
    invoke-virtual {p1, v4, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    mul-float v4, p2, v8

    move-object v0, p0

    move-object v1, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move v2, v6

    move/from16 v6, p5

    .line 604
    invoke-direct/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTemplateTrack(Landroid/graphics/Canvas;FFFFFFF)V

    .line 605
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_6
    const v1, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v9

    add-float v3, v5, v1

    cmpl-float v2, v11, v3

    if-lez v2, :cond_5

    add-float/2addr v12, v3

    sub-float/2addr v11, v1

    .line 612
    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_7

    :cond_5
    add-float v1, v3, v12

    :goto_7
    move v5, v1

    .line 613
    iget-boolean v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->show3dBand:Z

    if-eqz v1, :cond_6

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v9

    add-float/2addr v1, v3

    cmpl-float v1, v5, v1

    if-lez v1, :cond_6

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v2, v9, v1

    const v1, 0x3f733333    # 0.95f

    mul-float v4, v9, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 614
    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTerrainBand(Landroid/graphics/Canvas;FFFFZ)V

    .line 616
    :cond_6
    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->textType:Lcom/jichi/ob/merge/StickerCore$StickerText;

    invoke-direct {p0, v1}, Lcom/jichi/ob/ui/TrackPreviewView;->stickerTextColorOf(Lcom/jichi/ob/merge/StickerCore$StickerText;)I

    move-result v3

    .line 619
    iget-boolean v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataLayerOn:Z

    if-eqz v1, :cond_7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    move v2, v9

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTemplateLayout(Landroid/graphics/Canvas;FILjava/util/List;F)V

    goto :goto_8

    :cond_7
    move v2, v9

    :goto_8
    if-eqz p8, :cond_8

    .line 620
    iget-boolean v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->watermarkOn:Z

    if-eqz v4, :cond_8

    invoke-direct {p0, p1, v2, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->drawWatermark(Landroid/graphics/Canvas;FI)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic drawTemplateSticker$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;FFLjava/util/List;FFFZZILjava/lang/Object;)V
    .locals 11

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 550
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->transparentBg:Z

    move v10, v0

    goto :goto_0

    :cond_0
    move/from16 v10, p9

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 547
    invoke-direct/range {v1 .. v10}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTemplateSticker(Landroid/graphics/Canvas;FFLjava/util/List;FFFZZ)V

    return-void
.end method

.method private final drawTemplateTrack(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 13

    .line 834
    iget-object v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    .line 835
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x2

    if-ge v2, v10, :cond_0

    goto :goto_0

    :cond_0
    sub-float v4, p4, p2

    sub-float v5, p5, p3

    .line 838
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackType:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v6, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ICE_3D:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v2, v6, :cond_9

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackType:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v6, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->bgType:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v6, Lcom/jichi/ob/merge/StickerCore$StickerBg;->ORANGE_BAND:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    if-ne v2, v6, :cond_1

    goto/16 :goto_4

    .line 842
    :cond_1
    sget-object v2, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    const/high16 v6, 0x41900000    # 18.0f

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/jichi/ob/merge/StickerCore;->projectTrackEx(Ljava/util/List;FFFFFF)Ljava/util/List;

    move-result-object v2

    .line 843
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v10, :cond_2

    :goto_0
    return-void

    .line 844
    :cond_2
    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackType:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v5, Lcom/jichi/ob/ui/TrackPreviewView$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v4}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const v5, 0x3f4ccccd    # 0.8f

    packed-switch v4, :pswitch_data_0

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 857
    :pswitch_0
    invoke-direct {p0, p1, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->drawPhantom(Landroid/graphics/Canvas;Ljava/util/List;)V

    return-void

    .line 851
    :pswitch_1
    sget-object v4, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v4, v3}, Lcom/jichi/ob/merge/StickerCore;->pointSpeeds(Ljava/util/List;)[F

    move-result-object v4

    .line 853
    array-length v5, v4

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x0

    :goto_1
    if-ge v12, v5, :cond_5

    aget v8, v4, v12

    const v9, 0x3dcccccd    # 0.1f

    cmpl-float v9, v8, v9

    if-lez v9, :cond_4

    cmpg-float v9, v8, v6

    if-gez v9, :cond_3

    move v6, v8

    :cond_3
    cmpl-float v9, v8, v7

    if-lez v9, :cond_4

    move v7, v8

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    cmpg-float v5, v7, v6

    if-gtz v5, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v7, v6, v5

    .line 855
    :cond_6
    new-instance v5, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda9;-><init>(Lcom/jichi/ob/ui/TrackPreviewView;)V

    move v0, v7

    move-object v7, v5

    move v5, v6

    move v6, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/jichi/ob/ui/TrackPreviewView;->drawBanded(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;[FFFLkotlin/jvm/functions/Function1;)V

    return-void

    .line 849
    :pswitch_2
    invoke-direct {p0, p1, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->drawNeon(Landroid/graphics/Canvas;Ljava/util/List;)V

    return-void

    .line 848
    :pswitch_3
    iget-boolean v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->glowOn:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3d:Z

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    move v11, v12

    :goto_2
    invoke-direct {p0, p1, v2, v11}, Lcom/jichi/ob/ui/TrackPreviewView;->drawGlowPath(Landroid/graphics/Canvas;Ljava/util/List;Z)V

    invoke-direct {p0, p1, v2, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->drawGradientSegments(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 847
    :pswitch_4
    iget v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    mul-float/2addr v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, -0x655f5a

    move-object p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v2

    move/from16 p6, v3

    move/from16 p7, v4

    move/from16 p5, v5

    invoke-direct/range {p2 .. p7}, Lcom/jichi/ob/ui/TrackPreviewView;->drawSimpleLine(Landroid/graphics/Canvas;Ljava/util/List;IFF)V

    return-void

    .line 846
    :pswitch_5
    iget v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    mul-float/2addr v1, v5

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, -0xeee7d9

    move-object p2, p0

    move-object/from16 p3, p1

    move/from16 p6, v1

    move-object/from16 p4, v2

    move/from16 p7, v3

    move/from16 p5, v4

    invoke-direct/range {p2 .. p7}, Lcom/jichi/ob/ui/TrackPreviewView;->drawSimpleLine(Landroid/graphics/Canvas;Ljava/util/List;IFF)V

    return-void

    .line 845
    :pswitch_6
    iget-boolean v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->glowOn:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3d:Z

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    move v11, v12

    :goto_3
    invoke-direct {p0, p1, v2, v11}, Lcom/jichi/ob/ui/TrackPreviewView;->drawGlowPath(Landroid/graphics/Canvas;Ljava/util/List;Z)V

    iget v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    move-object p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v2

    move/from16 p6, v3

    move/from16 p7, v4

    move/from16 p5, v5

    invoke-direct/range {p2 .. p7}, Lcom/jichi/ob/ui/TrackPreviewView;->drawSimpleLine(Landroid/graphics/Canvas;Ljava/util/List;IFF)V

    return-void

    .line 839
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackType:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v2, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ICE_3D:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    if-ne v1, v2, :cond_a

    move v6, v11

    goto :goto_5

    :cond_a
    move v6, v12

    :goto_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTerrainBand(Landroid/graphics/Canvas;FFFFZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final drawTemplateTrack$lambda$10(Lcom/jichi/ob/ui/TrackPreviewView;F)I
    .locals 0

    .line 855
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->speedColor(F)I

    move-result p0

    return p0
.end method

.method public static synthetic drawTerrain3D$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;FFFFIFIILjava/lang/Object;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    const/high16 v1, 0x41400000    # 12.0f

    move v9, v1

    goto :goto_0

    :cond_0
    move/from16 v9, p7

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    move v10, v0

    goto :goto_1

    :cond_1
    move/from16 v10, p8

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 1614
    invoke-virtual/range {v2 .. v10}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTerrain3D(Landroid/graphics/Canvas;FFFFIFI)V

    return-void
.end method

.method private final drawTerrainBand(Landroid/graphics/Canvas;FFFFZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 918
    sget-object v2, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    sub-float v10, p4, p2

    const v4, 0x3cb43958    # 0.022f

    mul-float v8, v10, v4

    const/4 v9, 0x5

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/jichi/ob/merge/StickerCore;->elevationTerrain(Ljava/util/List;FFFFFI)Lcom/jichi/ob/merge/StickerCore$TerrainGeom;

    move-result-object v11

    move v12, v6

    .line 919
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v13, 0x2

    if-ge v2, v13, :cond_0

    return-void

    :cond_0
    if-eqz p6, :cond_1

    const v2, -0xb03c09

    goto :goto_0

    :cond_1
    const v2, -0xe9cd6

    :goto_0
    move v14, v2

    if-eqz p6, :cond_2

    const v2, -0xf1b596

    goto :goto_1

    :cond_2
    const v2, -0x26b1e2

    :goto_1
    move v7, v2

    if-eqz p6, :cond_3

    const v2, 0x664fc3f7

    goto :goto_2

    :cond_3
    const v2, 0x66f1632a

    :goto_2
    move v8, v2

    .line 923
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 924
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getSide()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 2229
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v16, 0x0

    move/from16 v3, v16

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    if-nez v3, :cond_5

    .line 924
    invoke-virtual {v15, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_4

    :cond_5
    invoke-virtual {v15, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_4
    move v3, v5

    goto :goto_3

    .line 925
    :cond_6
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 2231
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 925
    invoke-virtual {v15, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5

    .line 926
    :cond_7
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 927
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    move-object v3, v2

    new-instance v2, Landroid/graphics/LinearGradient;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v4, p5

    move-object v13, v3

    move/from16 v3, p2

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move v9, v4

    check-cast v2, Landroid/graphics/Shader;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 928
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 929
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 931
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 932
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 933
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v5, 0x3b23d70a    # 0.0025f

    mul-float/2addr v5, v10

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 934
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getContours()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 2234
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v5, v16

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_8
    check-cast v6, Ljava/util/List;

    .line 935
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v13, 0x2

    if-lt v8, v13, :cond_d

    .line 936
    iget-object v8, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/16 v15, 0xff

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x30

    if-eqz p6, :cond_9

    const/16 v13, 0x9b

    const/16 v4, 0xe8

    invoke-static {v5, v13, v4, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    goto :goto_7

    :cond_9
    const/16 v4, 0xd9

    const/16 v13, 0xb8

    invoke-static {v5, v15, v4, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    :goto_7
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 937
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 938
    check-cast v6, Ljava/lang/Iterable;

    .line 2236
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move/from16 v6, v16

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v13, v6, 0x1

    if-gez v6, :cond_a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_a
    check-cast v8, Lkotlin/Pair;

    invoke-virtual {v8}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v15

    invoke-virtual {v8}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    if-nez v6, :cond_b

    .line 938
    invoke-virtual {v4, v15, v8}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_9

    :cond_b
    invoke-virtual {v4, v15, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_9
    move v6, v13

    goto :goto_8

    .line 939
    :cond_c
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_d
    move v5, v7

    const/4 v4, 0x1

    goto :goto_6

    .line 942
    :cond_e
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 943
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 2240
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v5, v16

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_f

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_f
    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    if-nez v5, :cond_10

    .line 943
    invoke-virtual {v2, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_b

    :cond_10
    invoke-virtual {v2, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_b
    move v5, v7

    goto :goto_a

    .line 944
    :cond_11
    invoke-virtual {v2, v12, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 945
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    if-eqz p6, :cond_12

    const v4, 0x204fc3f7

    goto :goto_c

    :cond_12
    const v4, 0x26f1632a

    :goto_c
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 946
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 947
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 948
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 949
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v3, 0x3ba3d70a    # 0.005f

    mul-float/2addr v3, v10

    const v4, 0x3fe66666    # 1.8f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 950
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 951
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 2243
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move/from16 v4, v16

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_13

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_13
    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    if-nez v4, :cond_14

    .line 951
    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_e

    :cond_14
    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_e
    move v4, v6

    goto :goto_d

    .line 952
    :cond_15
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 955
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    move/from16 v3, v16

    move v4, v3

    move v5, v4

    :goto_f
    if-ge v3, v2, :cond_18

    .line 956
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_16

    move v4, v3

    .line 957
    :cond_16
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_17

    move v5, v3

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 959
    :cond_18
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 960
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v12

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v13

    const v4, 0x3c1374bc    # 0.009f

    mul-float/2addr v4, v10

    const/high16 v5, 0x40600000    # 3.5f

    .line 961
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 962
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 963
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 964
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    if-eqz p6, :cond_19

    const v6, -0x401601

    goto :goto_10

    :cond_19
    const/16 v6, -0xe1a

    :goto_10
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 965
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 966
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v6, 0x3eb33333    # 0.35f

    mul-float/2addr v6, v4

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 967
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 968
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 969
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 970
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v5, 0x3cc49ba6    # 0.024f

    mul-float/2addr v10, v5

    const/high16 v5, 0x41100000    # 9.0f

    .line 971
    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 972
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 973
    iget-object v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 974
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getEMax()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v8, "\u25b2 %.0fm"

    invoke-static {v5, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "format(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 975
    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getEMin()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v11, "\u25bc %.0fm"

    invoke-static {v8, v11, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x400ccccd    # 2.2f

    mul-float v14, v4, v6

    sub-float/2addr v2, v14

    add-float v4, p3, v10

    .line 976
    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v4

    const v15, -0x1c0901

    const/16 v16, -0x912

    move-object v2, v5

    if-eqz p6, :cond_1a

    move v5, v15

    goto :goto_11

    :cond_1a
    move/from16 v5, v16

    :goto_11
    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    add-float/2addr v13, v14

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v10

    add-float/2addr v13, v0

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr v10, v0

    sub-float v0, v9, v10

    .line 977
    invoke-static {v13, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v4

    if-eqz p6, :cond_1b

    move v5, v15

    goto :goto_12

    :cond_1b
    move/from16 v5, v16

    :goto_12
    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move v3, v12

    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    return-void
.end method

.method private final drawTrackIn(Landroid/graphics/Canvas;FFFFIFFF)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    .line 1390
    iget-object v4, v0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    .line 1391
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v11, 0x2

    if-ge v3, v11, :cond_0

    goto :goto_0

    :cond_0
    sub-float v5, p4, p2

    sub-float v6, p5, p3

    .line 1393
    sget-object v3, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    const/high16 v7, 0x41900000    # 18.0f

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v3 .. v10}, Lcom/jichi/ob/merge/StickerCore;->projectTrackEx(Ljava/util/List;FFFFFF)Ljava/util/List;

    move-result-object v3

    .line 1394
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v11, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x5

    const/4 v6, 0x3

    if-ne v2, v5, :cond_2

    .line 1396
    iget v5, v0, Lcom/jichi/ob/ui/TrackPreviewView;->style:I

    if-ne v5, v6, :cond_2

    .line 1397
    invoke-direct {v0, v1, v3, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->drawGradientSegments(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 1401
    :cond_2
    sget-object v5, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {v5, v4}, Lcom/jichi/ob/merge/StickerCore;->pointSpeeds(Ljava/util/List;)[F

    move-result-object v5

    .line 1403
    array-length v7, v5

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    move v14, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v7, :cond_5

    aget v15, v5, v12

    const v16, 0x3dcccccd    # 0.1f

    cmpl-float v16, v15, v16

    if-lez v16, :cond_4

    cmpg-float v16, v15, v14

    if-gez v16, :cond_3

    move v14, v15

    :cond_3
    cmpl-float v16, v15, v13

    if-lez v16, :cond_4

    move v13, v15

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    cmpg-float v7, v13, v14

    const/high16 v12, 0x3f800000    # 1.0f

    if-gtz v7, :cond_6

    add-float v13, v14, v12

    .line 1406
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const v15, -0x800001

    :cond_7
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-lez v17, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v17

    move/from16 p8, v13

    float-to-double v12, v9

    cmpg-double v12, v17, v12

    if-gez v12, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v12

    double-to-float v9, v12

    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v12

    move/from16 p4, v9

    float-to-double v8, v15

    cmpl-double v8, v12, v8

    if-lez v8, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v8

    double-to-float v15, v8

    :cond_9
    move/from16 v9, p4

    move/from16 v13, p8

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_a
    move/from16 p8, v13

    cmpg-float v7, v15, v9

    if-gtz v7, :cond_b

    const/4 v8, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_b
    move v8, v9

    move v12, v15

    .line 1410
    :goto_3
    iget-boolean v7, v0, Lcom/jichi/ob/ui/TrackPreviewView;->glow:Z

    const/16 v9, 0x8c

    const/16 v13, 0x2b

    const/16 v15, 0xff

    const/4 v10, 0x1

    if-eqz v7, :cond_f

    .line 1411
    iget-object v7, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    iget-object v7, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1412
    iget-object v7, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1413
    iget-object v7, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v7, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1414
    iget-object v7, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    iget v11, v0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    const/high16 v17, 0x40800000    # 4.0f

    mul-float v11, v11, v17

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1415
    iget-object v7, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    iget v11, v0, Lcom/jichi/ob/ui/TrackPreviewView;->lineAlpha:F

    const v17, 0x3e6147ae    # 0.22f

    mul-float v11, v11, v17

    int-to-float v10, v15

    mul-float/2addr v11, v10

    float-to-int v10, v11

    invoke-static {v10, v13, v9, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1416
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 1417
    move-object v10, v3

    check-cast v10, Ljava/lang/Iterable;

    .line 2265
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v18, v11, 0x1

    if-gez v11, :cond_c

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_c
    check-cast v17, Lkotlin/Pair;

    invoke-virtual/range {v17 .. v17}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-virtual/range {v17 .. v17}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v13

    if-nez v11, :cond_d

    .line 1417
    invoke-virtual {v7, v9, v13}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    :cond_d
    invoke-virtual {v7, v9, v13}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    move/from16 v11, v18

    const/16 v9, 0x8c

    const/16 v13, 0x2b

    goto :goto_4

    .line 1418
    :cond_e
    iget-object v9, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1422
    :cond_f
    iget v7, v0, Lcom/jichi/ob/ui/TrackPreviewView;->style:I

    if-ne v7, v6, :cond_10

    iget v6, v0, Lcom/jichi/ob/ui/TrackPreviewView;->lineAlpha:F

    int-to-float v7, v15

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 1423
    sget-object v7, Lcom/jichi/ob/ui/TrackPreviewView;->Companion:Lcom/jichi/ob/ui/TrackPreviewView$Companion;

    invoke-virtual {v7, v2}, Lcom/jichi/ob/ui/TrackPreviewView$Companion;->stickerLineColor(I)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-virtual {v7, v2}, Lcom/jichi/ob/ui/TrackPreviewView$Companion;->stickerLineColor(I)I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-virtual {v7, v2}, Lcom/jichi/ob/ui/TrackPreviewView$Companion;->stickerLineColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 1422
    invoke-static {v6, v9, v10, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_6

    :cond_10
    const/4 v2, 0x0

    .line 1426
    :goto_6
    iget-object v6, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    iget-object v6, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1427
    iget-object v6, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1428
    iget-object v6, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v6, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1429
    iget-object v6, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz v2, :cond_14

    .line 1433
    iget-object v4, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1434
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1435
    check-cast v3, Ljava/lang/Iterable;

    .line 2268
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v10, 0x0

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v10, 0x1

    if-gez v10, :cond_11

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_11
    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    if-nez v10, :cond_12

    .line 1435
    invoke-virtual {v2, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_8

    :cond_12
    invoke-virtual {v2, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_8
    move v10, v5

    goto :goto_7

    .line 1436
    :cond_13
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 1438
    :cond_14
    iget v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->style:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_15

    new-instance v2, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda3;-><init>(Lcom/jichi/ob/ui/TrackPreviewView;)V

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p9, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move/from16 p7, v14

    invoke-direct/range {p2 .. p9}, Lcom/jichi/ob/ui/TrackPreviewView;->drawBanded(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;[FFFLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_15
    move-object v1, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 1439
    new-instance v2, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda4;-><init>(Lcom/jichi/ob/ui/TrackPreviewView;)V

    const/4 v3, 0x0

    move-object/from16 p3, p1

    move-object/from16 p2, v0

    move-object/from16 p4, v1

    move-object/from16 p9, v2

    move-object/from16 p6, v3

    move-object/from16 p5, v4

    move/from16 p7, v8

    move/from16 p8, v12

    invoke-direct/range {p2 .. p9}, Lcom/jichi/ob/ui/TrackPreviewView;->drawBanded(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;[FFFLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_16
    move-object v3, v1

    move-object/from16 v1, p1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1a

    .line 1441
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/jichi/ob/ui/TrackPreviewView;->lineAlpha:F

    int-to-float v5, v15

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v5, 0x8c

    const/16 v6, 0x2b

    invoke-static {v4, v6, v5, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1442
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1443
    check-cast v3, Ljava/lang/Iterable;

    .line 2271
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v10, 0x0

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v10, 0x1

    if-gez v10, :cond_17

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_17
    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    if-nez v10, :cond_18

    .line 1443
    invoke-virtual {v2, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_a

    :cond_18
    invoke-virtual {v2, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_a
    move v10, v5

    goto :goto_9

    .line 1444
    :cond_19
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 1447
    :cond_1a
    iget-object v2, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/jichi/ob/ui/TrackPreviewView;->lineAlpha:F

    int-to-float v5, v15

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v5, 0xfc

    const/16 v6, 0x4c

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1448
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1449
    check-cast v3, Ljava/lang/Iterable;

    .line 2274
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v10, 0x0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v10, 0x1

    if-gez v10, :cond_1b

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1b
    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    if-nez v10, :cond_1c

    .line 1449
    invoke-virtual {v2, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_c

    :cond_1c
    invoke-virtual {v2, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_c
    move v10, v5

    goto :goto_b

    .line 1450
    :cond_1d
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static final drawTrackIn$lambda$32(Lcom/jichi/ob/ui/TrackPreviewView;F)I
    .locals 0

    .line 1438
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->speedColor(F)I

    move-result p0

    return p0
.end method

.method private static final drawTrackIn$lambda$33(Lcom/jichi/ob/ui/TrackPreviewView;F)I
    .locals 0

    .line 1439
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->elevationColor(F)I

    move-result p0

    return p0
.end method

.method private final drawWatermark(Landroid/graphics/Canvas;FI)V
    .locals 9

    .line 1664
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1665
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1666
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr v1, p2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1668
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const-string v1, "sans-serif-light"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1669
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v1, 0x3e6147ae    # 0.22f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1670
    :catchall_0
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result p3

    const/16 v3, 0x99

    invoke-static {v3, v1, v2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p3, 0x40000000    # 2.0f

    div-float v3, p2, p3

    const p3, 0x3ce56042    # 0.028f

    mul-float/2addr p3, p2

    const/high16 v0, 0x40c00000    # 6.0f

    .line 1671
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    sub-float v4, p2, p3

    const/16 v7, 0x30

    const/4 v8, 0x0

    const-string/jumbo v2, "\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    return-void
.end method

.method private final elevationColor(F)I
    .locals 5

    const/4 v0, 0x3

    .line 1493
    new-array v1, v0, [Lkotlin/Pair;

    const v2, 0xfde047

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0xf59e0b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const v2, 0xb91c1c    # 1.699965E-38f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const v3, 0x1f2937

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    const v2, 0x403f5c29    # 2.99f

    .line 1494
    invoke-static {p1, v0, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    float-to-int v0, p1

    int-to-float v2, v0

    sub-float/2addr p1, v2

    .line 1496
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->lerp(IIF)I

    move-result p1

    return p1
.end method

.method public static synthetic exportTemplatePng$default(Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    const/16 p1, 0x400

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    const/4 p3, 0x1

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    .line 2061
    iget-object p4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->items:Ljava/util/List;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    .line 2062
    iget p5, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dx:F

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    iget p6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dy:F

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    iget p7, p0, Lcom/jichi/ob/ui/TrackPreviewView;->scale:F

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 2063
    iget-boolean p8, p0, Lcom/jichi/ob/ui/TrackPreviewView;->transparentBg:Z

    :cond_7
    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move-object p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    .line 2057
    invoke-virtual/range {p2 .. p10}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePng(IIZLjava/util/List;FFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static final exportTemplatePng$lambda$62(Landroid/webkit/WebView;Lcom/jichi/ob/ui/TrackPreviewView;)V
    .locals 2

    .line 2083
    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->getHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/webkit/WebView;->layout(IIII)V

    return-void
.end method

.method public static synthetic exportTemplatePngAsync$default(Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    const/16 p1, 0x400

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    const/4 p3, 0x1

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    .line 2096
    iget-object p4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->items:Ljava/util/List;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    .line 2097
    iget p5, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dx:F

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget p6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dy:F

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget p7, p0, Lcom/jichi/ob/ui/TrackPreviewView;->scale:F

    :cond_6
    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_7

    .line 2098
    iget-boolean p8, p0, Lcom/jichi/ob/ui/TrackPreviewView;->transparentBg:Z

    :cond_7
    move p10, p8

    move-object p11, p9

    move p8, p6

    move p9, p7

    move-object p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    .line 2092
    invoke-virtual/range {p2 .. p11}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePngAsync(IIZLjava/util/List;FFFZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final exportTemplatePngAsync$lambda$69(Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZ)Lkotlin/Unit;
    .locals 12

    .line 2120
    new-instance v0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda10;

    move-object v11, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZLandroid/webkit/WebView;)V

    const-string/jumbo p1, "window.__expErr||\'\'"

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2152
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final exportTemplatePngAsync$lambda$69$lambda$68(Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZLandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 12

    move-object/from16 v0, p11

    if-eqz v0, :cond_0

    .line 2121
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const-string v1, "\"\""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canvas \u5bfc\u51fa\u5f02\u5e38: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OB_STICKER"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    invoke-direct/range {p1 .. p9}, Lcom/jichi/ob/ui/TrackPreviewView;->fallbackExport(IIZLjava/util/List;FFFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2126
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2137
    new-instance v0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda7;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda7;-><init>(Ljava/lang/StringBuilder;Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZ)V

    const/4 p0, 0x0

    move-object/from16 p2, p10

    invoke-static {p2, v1, p1, p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePngAsync$lambda$69$lambda$68$fetchChunk(Landroid/webkit/WebView;Ljava/lang/StringBuilder;Lcom/jichi/ob/ui/TrackPreviewView;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final exportTemplatePngAsync$lambda$69$lambda$68$fetchChunk(Landroid/webkit/WebView;Ljava/lang/StringBuilder;Lcom/jichi/ob/ui/TrackPreviewView;ILkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/StringBuilder;",
            "Lcom/jichi/ob/ui/TrackPreviewView;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 2128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(window.__expChunks&&window.__expChunks["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "])||\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda13;

    move-object v6, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v2, p4

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda13;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/StringBuilder;Lcom/jichi/ob/ui/TrackPreviewView;ILandroid/webkit/WebView;)V

    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static final exportTemplatePngAsync$lambda$69$lambda$68$fetchChunk$lambda$66(Lkotlin/jvm/functions/Function0;Ljava/lang/StringBuilder;Lcom/jichi/ob/ui/TrackPreviewView;ILandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    if-eqz p5, :cond_0

    .line 2129
    check-cast p5, Ljava/lang/CharSequence;

    invoke-static {p5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_5

    .line 2130
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3de09eb0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x440

    if-eq v0, v1, :cond_2

    const v1, 0x33c587

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "null"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_2
    const-string v0, "\"\""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "undefined"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 2132
    :cond_4
    :goto_1
    invoke-direct {p2, p5}, Lcom/jichi/ob/ui/TrackPreviewView;->unwrapJsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    .line 2133
    invoke-static {p4, p1, p2, p3, p0}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePngAsync$lambda$69$lambda$68$fetchChunk(Landroid/webkit/WebView;Ljava/lang/StringBuilder;Lcom/jichi/ob/ui/TrackPreviewView;ILkotlin/jvm/functions/Function0;)V

    return-void

    .line 2130
    :cond_5
    :goto_2
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final exportTemplatePngAsync$lambda$69$lambda$68$lambda$67(Ljava/lang/StringBuilder;Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZ)Lkotlin/Unit;
    .locals 3

    .line 2138
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2141
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 2142
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 2144
    const-string v0, "base64 \u89e3\u7801\u5931\u8d25"

    check-cast p0, Ljava/lang/Throwable;

    const-string v1, "OB_STICKER"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 2148
    invoke-direct/range {p2 .. p10}, Lcom/jichi/ob/ui/TrackPreviewView;->fallbackExport(IIZLjava/util/List;FFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2149
    :cond_1
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final exportTemplatePngAsync$pollReady(Landroid/webkit/WebView;ILkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 2113
    new-instance v0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p1, p0}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function0;ILandroid/webkit/WebView;)V

    const-string/jumbo p1, "window.__expReady||\'\'"

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static final exportTemplatePngAsync$pollReady$lambda$65(Lkotlin/jvm/functions/Function0;ILandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 2114
    check-cast p3, Ljava/lang/CharSequence;

    const-string v0, "1"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p3, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    const/16 p3, 0x28

    if-ge p1, p3, :cond_1

    .line 2115
    new-instance p3, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda2;

    invoke-direct {p3, p1, p0, p2}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function0;Landroid/webkit/WebView;)V

    const-wide/16 p0, 0x64

    invoke-virtual {p2, p3, p0, p1}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 2116
    :cond_1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final exportTemplatePngAsync$pollReady$lambda$65$lambda$64(ILkotlin/jvm/functions/Function0;Landroid/webkit/WebView;)V
    .locals 0

    add-int/lit8 p0, p0, 0x1

    .line 2115
    invoke-static {p2, p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePngAsync$pollReady(Landroid/webkit/WebView;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic exportTransparentPng$default(Lcom/jichi/ob/ui/TrackPreviewView;IIZIIZLjava/util/List;FFFILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    const/16 p1, 0x400

    :cond_0
    and-int/lit8 p12, p11, 0x2

    const/4 v0, 0x0

    if-eqz p12, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    const/4 p4, 0x2

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    const/4 p6, 0x1

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    .line 535
    sget-object p7, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {p7}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFAULT()Ljava/util/List;

    move-result-object p7

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    .line 536
    iget p8, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dx:F

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    iget p9, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dy:F

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    iget p10, p0, Lcom/jichi/ob/ui/TrackPreviewView;->scale:F

    :cond_9
    move p11, p9

    move p12, p10

    move-object p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    .line 528
    invoke-virtual/range {p2 .. p12}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTransparentPng(IIZIIZLjava/util/List;FFF)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final fallbackExport(IIZLjava/util/List;FFFZ)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FFFZ)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 2167
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string v0, "createBitmap(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2168
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v3, p1

    move v4, v3

    move-object v1, p0

    move v9, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p8

    .line 2170
    invoke-direct/range {v1 .. v10}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTemplateSticker(Landroid/graphics/Canvas;FFLjava/util/List;FFFZZ)V

    return-object p2
.end method

.method private final fillGrad(Landroid/graphics/Canvas;FII)V
    .locals 16

    move-object/from16 v0, p0

    .line 732
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v5, p2, v3

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    check-cast v2, Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v12, 0x0

    .line 733
    iget-object v15, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    move/from16 v14, p2

    move-object/from16 v10, p1

    move/from16 v13, p2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 734
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private final fitTextSize(Ljava/lang/String;FFF)F
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    move v0, p2

    :goto_0
    mul-float v1, p2, p4

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, v1, p3

    if-lez v1, :cond_0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    .line 1003
    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    return v0
.end method

.method static synthetic fitTextSize$default(Lcom/jichi/ob/ui/TrackPreviewView;Ljava/lang/String;FFFILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const p4, 0x3f1eb852    # 0.62f

    .line 998
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/ui/TrackPreviewView;->fitTextSize(Ljava/lang/String;FFF)F

    move-result p0

    return p0
.end method

.method private final formatDuration(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1802
    const-string p1, "0:00:00"

    return-object p1

    :cond_0
    const/16 v0, 0xe10

    int-to-long v0, v0

    .line 1803
    div-long v2, p1, v0

    rem-long v0, p1, v0

    const/16 v4, 0x3c

    int-to-long v4, v4

    div-long/2addr v0, v4

    rem-long/2addr p1, v4

    .line 1804
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v2, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d:%02d:%02d"

    invoke-static {v4, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final haversineM(DDDD)D
    .locals 4

    sub-double v0, p5, p1

    .line 2207
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p7, p3

    .line 2208
    invoke-static {p7, p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    const/4 p7, 0x2

    int-to-double p7, p7

    div-double/2addr v0, p7

    .line 2209
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    .line 2210
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    mul-double/2addr p1, p5

    div-double/2addr p3, p7

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p5

    mul-double/2addr p1, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double/2addr p1, p3

    add-double/2addr v2, p1

    const-wide p1, 0x41584db033333333L    # 6371008.8

    mul-double/2addr p7, p1

    .line 2211
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const/4 p3, 0x1

    int-to-double p3, p3

    sub-double/2addr p3, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    mul-double/2addr p7, p1

    return-wide p7
.end method

.method private final htmlBg(Lcom/jichi/ob/merge/StickerCore$StickerBg;)Ljava/lang/String;
    .locals 1

    .line 1975
    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerBg;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1998
    :pswitch_0
    const-string p1, "bg-split"

    return-object p1

    .line 1997
    :pswitch_1
    const-string p1, "bg-frost"

    return-object p1

    .line 1996
    :pswitch_2
    const-string p1, "bg-photo"

    return-object p1

    .line 1995
    :pswitch_3
    const-string p1, "bg-annual"

    return-object p1

    .line 1994
    :pswitch_4
    const-string p1, "bg-retro"

    return-object p1

    .line 1993
    :pswitch_5
    const-string p1, "bg-orange"

    return-object p1

    .line 1992
    :pswitch_6
    const-string p1, "bg-dual"

    return-object p1

    .line 1991
    :pswitch_7
    const-string p1, "bg-trail"

    return-object p1

    .line 1990
    :pswitch_8
    const-string p1, "bg-ice"

    return-object p1

    .line 1989
    :pswitch_9
    const-string p1, "bg-orangeband"

    return-object p1

    .line 1988
    :pswitch_a
    const-string p1, "bg-heat"

    return-object p1

    .line 1987
    :pswitch_b
    const-string p1, "bg-contour"

    return-object p1

    .line 1986
    :pswitch_c
    const-string p1, "bg-lightmap"

    return-object p1

    .line 1985
    :pswitch_d
    const-string p1, "bg-sat"

    return-object p1

    .line 1984
    :pswitch_e
    const-string p1, "bg-map"

    return-object p1

    .line 1983
    :pswitch_f
    const-string p1, "bg-warm"

    return-object p1

    .line 1982
    :pswitch_10
    const-string p1, "bg-grayline"

    return-object p1

    .line 1981
    :pswitch_11
    const-string p1, "bg-cream"

    return-object p1

    .line 1980
    :pswitch_12
    const-string p1, "bg-white"

    return-object p1

    .line 1979
    :pswitch_13
    const-string p1, "bg-black"

    return-object p1

    .line 1978
    :pswitch_14
    const-string p1, "bg-neon"

    return-object p1

    .line 1977
    :pswitch_15
    const-string p1, "bg-checker"

    return-object p1

    .line 1976
    :pswitch_16
    const-string p1, "bg-stars"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final htmlLayout(Lcom/jichi/ob/merge/StickerCore$StickerLayout;)Ljava/lang/String;
    .locals 1

    .line 2012
    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 2014
    :pswitch_0
    const-string p1, "corner"

    return-object p1

    .line 2017
    :pswitch_1
    const-string p1, "dual"

    return-object p1

    .line 2018
    :pswitch_2
    const-string p1, "bar"

    return-object p1

    .line 2016
    :pswitch_3
    const-string p1, "big"

    return-object p1

    .line 2015
    :pswitch_4
    const-string p1, "grid"

    return-object p1

    .line 2013
    :pswitch_5
    const-string/jumbo p1, "trip"

    return-object p1

    .line 2019
    :pswitch_6
    const-string p1, "poster"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final htmlSource()Ljava/lang/String;
    .locals 5

    .line 1732
    :try_start_0
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "sticker_templates.html"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "open(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1733
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2000

    .line 1734
    new-array v2, v2, [B

    .line 1735
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_0
    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 1736
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 1737
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1738
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1739
    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private final htmlText(Lcom/jichi/ob/merge/StickerCore$StickerText;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/merge/StickerCore$StickerText;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2022
    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerText;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string/jumbo v0, "u-black"

    const-string/jumbo v1, "u-dark"

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 2028
    :pswitch_0
    const-string/jumbo p1, "t-cream"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 2027
    :pswitch_1
    const-string/jumbo p1, "t-neonpink"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 2026
    :pswitch_2
    const-string/jumbo p1, "t-sky"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 2025
    :pswitch_3
    const-string/jumbo p1, "t-orange"

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 2024
    :pswitch_4
    const-string/jumbo p1, "t-black"

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 2023
    :pswitch_5
    const-string/jumbo p1, "t-dark"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final htmlTrack(Lcom/jichi/ob/merge/StickerCore$StickerTrack;)Ljava/lang/String;
    .locals 1

    .line 2001
    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 2009
    :pswitch_0
    const-string p1, "phantom"

    return-object p1

    .line 2008
    :pswitch_1
    const-string p1, "ice"

    return-object p1

    .line 2007
    :pswitch_2
    const-string p1, "heat"

    return-object p1

    .line 2006
    :pswitch_3
    const-string p1, "neon"

    return-object p1

    .line 2002
    :pswitch_4
    const-string p1, "orange"

    return-object p1

    .line 2005
    :pswitch_5
    const-string p1, "grayfine"

    return-object p1

    .line 2004
    :pswitch_6
    const-string p1, "blackfine"

    return-object p1

    .line 2003
    :pswitch_7
    const-string/jumbo p1, "white"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final initWebRenderer()V
    .locals 7

    .line 1703
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    return-void

    .line 1704
    :cond_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1705
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1706
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1707
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1708
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1709
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1710
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1711
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1716
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1717
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1718
    new-instance v0, Lcom/jichi/ob/ui/TrackPreviewView$initWebRenderer$w$1$1;

    invoke-direct {v0, p0, v1}, Lcom/jichi/ob/ui/TrackPreviewView$initWebRenderer$w$1$1;-><init>(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/webkit/WebView;)V

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1725
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->htmlSource()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "utf-8"

    const/4 v6, 0x0

    const-string v2, "file:///android_asset/"

    const-string/jumbo v4, "text/html"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    iput-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    .line 1728
    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/TrackPreviewView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final lerp(IIF)I
    .locals 4

    .line 1500
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1501
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1502
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, p3

    add-float/2addr v2, p1

    float-to-int p1, v2

    .line 1503
    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private static final onLayout$lambda$45(Lcom/jichi/ob/ui/TrackPreviewView;)V
    .locals 1

    .line 1779
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->webReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->refreshCssSize()V

    :cond_0
    return-void
.end method

.method private final push3D()V
    .locals 5

    .line 409
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->webReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 410
    iget v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRx:F

    iget v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRy:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stickerBridge.set3DRotate("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method private final pushTransform()V
    .locals 8

    .line 2051
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->webReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 2052
    iget v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dx:F

    iget v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dy:F

    iget v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->scale:F

    iget v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->rotation:F

    iget v5, p0, Lcom/jichi/ob/ui/TrackPreviewView;->tiltX:F

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "stickerBridge.setTransform("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final refreshCssSize()V
    .locals 3

    .line 1743
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    .line 1744
    :cond_0
    new-instance v1, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/ui/TrackPreviewView;)V

    const-string v2, "JSON.stringify(stickerBridge.getCardSize())"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static final refreshCssSize$lambda$43(Lcom/jichi/ob/ui/TrackPreviewView;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1745
    const-string p1, ""

    :cond_0
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->unwrapJsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1747
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1748
    const-string/jumbo p1, "w"

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float p1, v3

    .line 1749
    const-string v3, "h"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 1752
    iget v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->cssW:F

    cmpg-float v1, p1, v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->cssH:F

    cmpg-float v1, v0, v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1753
    :cond_1
    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->cssW:F

    iput v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->cssH:F

    .line 1756
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final renderSize()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1763
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const/high16 v0, 0x44800000    # 1024.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    .line 1764
    :cond_0
    iget v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->cssW:F

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->cssH:F

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1765
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic renderThumb$default(Lcom/jichi/ob/ui/TrackPreviewView;Lcom/jichi/ob/merge/StickerCore$StickerTemplate;IILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0xa0

    .line 316
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/TrackPreviewView;->renderThumb(Lcom/jichi/ob/merge/StickerCore$StickerTemplate;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic resolveExportSize$default(Lcom/jichi/ob/ui/TrackPreviewView;IIILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 273
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/TrackPreviewView;->resolveExportSize(II)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final round1(D)D
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v0

    .line 2031
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private final scheduleWebRender()V
    .locals 3

    .line 2035
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->webReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2036
    iput-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->pendingRender:Z

    .line 2037
    iget-boolean v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->renderScheduled:Z

    if-nez v1, :cond_1

    .line 2038
    iput-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->renderScheduled:Z

    .line 2039
    new-instance v0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda11;-><init>(Lcom/jichi/ob/ui/TrackPreviewView;)V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v0, v1, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static final scheduleWebRender$lambda$61(Lcom/jichi/ob/ui/TrackPreviewView;)V
    .locals 7

    const/4 v0, 0x0

    .line 2040
    iput-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->renderScheduled:Z

    .line 2041
    iget-boolean v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->pendingRender:Z

    if-eqz v1, :cond_0

    .line 2042
    iput-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->pendingRender:Z

    .line 2043
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->buildRenderJs()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dx:F

    iget v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dy:F

    iget v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->scale:F

    iget v5, p0, Lcom/jichi/ob/ui/TrackPreviewView;->rotation:F

    iget p0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->tiltX:F

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "stickerBridge.setTransform("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ");"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private final speedColor(F)I
    .locals 5

    const/4 v0, 0x3

    .line 1486
    new-array v1, v0, [Lkotlin/Pair;

    const v2, 0x2563eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x22c55e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const v2, 0xfacc15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const v3, 0xef4444

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    const v2, 0x403f5c29    # 2.99f

    .line 1487
    invoke-static {p1, v0, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    float-to-int v0, p1

    int-to-float v2, v0

    sub-float/2addr p1, v2

    .line 1489
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->lerp(IIF)I

    move-result p1

    return p1
.end method

.method private final stickerTextColorOf(Lcom/jichi/ob/merge/StickerCore$StickerText;)I
    .locals 1

    .line 306
    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerText;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    const p1, -0xa1628

    return p1

    :pswitch_1
    const p1, -0xb028

    return p1

    :pswitch_2
    const p1, -0xa53706

    return p1

    :pswitch_3
    const p1, -0x3b3fe

    return p1

    :pswitch_4
    const p1, -0xeee7d9

    return p1

    :pswitch_5
    const/4 p1, -0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final templateIdxFor()I
    .locals 5

    .line 1785
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->INSTANCE:Lcom/jichi/ob/merge/StickerCore$StickerTemplates;

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->getALL()Ljava/util/List;

    move-result-object v0

    .line 2288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2289
    check-cast v2, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    .line 1785
    invoke-virtual {v2}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getBg()Lcom/jichi/ob/merge/StickerCore$StickerBg;

    move-result-object v3

    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->bgType:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getTrack()Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    move-result-object v3

    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackType:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    if-ne v3, v4, :cond_0

    .line 1786
    invoke-virtual {v2}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getLayout()Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->layoutType:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getText()Lcom/jichi/ob/merge/StickerCore$StickerText;

    move-result-object v3

    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->textType:Lcom/jichi/ob/merge/StickerCore$StickerText;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getGlow()Z

    move-result v2

    iget-boolean v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->glowOn:Z

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    const/4 v0, 0x1

    if-ltz v1, :cond_2

    add-int/2addr v1, v0

    return v1

    .line 1787
    :cond_2
    iget v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->templateIndex:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    return v0
.end method

.method private final trackColorIdx()I
    .locals 2

    .line 1790
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackType:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v1, Lcom/jichi/ob/ui/TrackPreviewView$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v0}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x7

    return v0

    :pswitch_1
    const/4 v0, 0x6

    return v0

    :pswitch_2
    const/4 v0, 0x5

    return v0

    :pswitch_3
    const/4 v0, 0x4

    return v0

    :pswitch_4
    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final unwrapJsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 2157
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const-string v0, "\""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v1, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v0, v2, v1, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v1, p1

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 2159
    const-string v2, "\\\""

    const-string v3, "\""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "\\\\"

    const-string v9, "\\"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "\\n"

    const-string v2, "\n"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "\\/"

    const-string v8, "/"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final applyCombo(Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V
    .locals 1

    const-string v0, "bg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "track"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 296
    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setUseTemplate(Z)V

    .line 297
    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->setBgType(Lcom/jichi/ob/merge/StickerCore$StickerBg;)V

    invoke-virtual {p0, p2}, Lcom/jichi/ob/ui/TrackPreviewView;->setTrackType(Lcom/jichi/ob/merge/StickerCore$StickerTrack;)V

    invoke-virtual {p0, p3}, Lcom/jichi/ob/ui/TrackPreviewView;->setLayoutType(Lcom/jichi/ob/merge/StickerCore$StickerLayout;)V

    invoke-virtual {p0, p4}, Lcom/jichi/ob/ui/TrackPreviewView;->setTextType(Lcom/jichi/ob/merge/StickerCore$StickerText;)V

    invoke-virtual {p0, p5}, Lcom/jichi/ob/ui/TrackPreviewView;->setGlowOn(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final applyPosMode()V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 510
    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setScale(F)V

    .line 511
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->posMode:I

    const/4 v1, 0x1

    const/high16 v2, -0x3d240000    # -110.0f

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/high16 v4, 0x42dc0000    # 110.0f

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 516
    invoke-virtual {p0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->setDx(F)V

    invoke-virtual {p0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->setDy(F)V

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {p0, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->setDx(F)V

    invoke-virtual {p0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->setDy(F)V

    goto :goto_0

    .line 514
    :cond_1
    invoke-virtual {p0, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->setDx(F)V

    invoke-virtual {p0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->setDy(F)V

    goto :goto_0

    .line 513
    :cond_2
    invoke-virtual {p0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->setDx(F)V

    invoke-virtual {p0, v4}, Lcom/jichi/ob/ui/TrackPreviewView;->setDy(F)V

    goto :goto_0

    .line 512
    :cond_3
    invoke-virtual {p0, v3}, Lcom/jichi/ob/ui/TrackPreviewView;->setDx(F)V

    invoke-virtual {p0, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->setDy(F)V

    .line 518
    :goto_0
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->pushTransform()V

    return-void
.end method

.method public final applyTemplate(Lcom/jichi/ob/merge/StickerCore$StickerTemplate;)V
    .locals 1

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 286
    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setUseTemplate(Z)V

    .line 287
    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getBg()Lcom/jichi/ob/merge/StickerCore$StickerBg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setBgType(Lcom/jichi/ob/merge/StickerCore$StickerBg;)V

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getTrack()Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setTrackType(Lcom/jichi/ob/merge/StickerCore$StickerTrack;)V

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getLayout()Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setLayoutType(Lcom/jichi/ob/merge/StickerCore$StickerLayout;)V

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getText()Lcom/jichi/ob/merge/StickerCore$StickerText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setTextType(Lcom/jichi/ob/merge/StickerCore$StickerText;)V

    invoke-virtual {p1}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getGlow()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->setGlowOn(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final clearDataOverrides()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->scheduleWebRender()V

    return-void
.end method

.method public final computeStats()Lcom/jichi/ob/merge/StickerCore$TrackStats;
    .locals 2

    .line 522
    sget-object v0, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jichi/ob/merge/StickerCore;->computeStats(Ljava/util/List;)Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v0

    return-object v0
.end method

.method public final currentDataOverride(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final drawTerrain3D(Landroid/graphics/Canvas;FFFFIFI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p6

    const-string v2, "c"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1618
    sget-object v2, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/jichi/ob/merge/StickerCore;->elevationTerrain(Ljava/util/List;FFFFFI)Lcom/jichi/ob/merge/StickerCore$TerrainGeom;

    move-result-object v11

    move v12, v6

    .line 1619
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-void

    .line 1625
    :cond_0
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 1626
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getSide()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 2277
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v14, 0x0

    move v3, v14

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    if-nez v3, :cond_2

    .line 1626
    invoke-virtual {v13, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_2
    invoke-virtual {v13, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    move v3, v5

    goto :goto_0

    .line 1627
    :cond_3
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 2279
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 1627
    invoke-virtual {v13, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 1628
    :cond_4
    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 1629
    iget-object v15, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const v7, -0x26b1e2

    const v8, 0x66f1632a

    move/from16 v5, p2

    move/from16 v3, p2

    move/from16 v6, p3

    move/from16 v4, p5

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move v7, v3

    move-object v3, v2

    move v2, v7

    move v7, v4

    check-cast v3, Landroid/graphics/Shader;

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1630
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1631
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1634
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 1635
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 2282
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v14

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v8, v5, 0x1

    if-gez v5, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    if-nez v5, :cond_6

    .line 1635
    invoke-virtual {v3, v9, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_4

    :cond_6
    invoke-virtual {v3, v9, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_4
    move v5, v8

    goto :goto_3

    .line 1636
    :cond_7
    invoke-virtual {v3, v12, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 1637
    iget-object v4, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    const v5, 0x26f1632a

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1638
    iget-object v4, v0, Lcom/jichi/ob/ui/TrackPreviewView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1641
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1642
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1643
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sub-float v8, v12, v2

    const v4, 0x3ba3d70a    # 0.005f

    mul-float/2addr v4, v8

    const v5, 0x3fe66666    # 1.8f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1644
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v4, -0xe9cd6

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1645
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 1646
    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getProfile()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 2285
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v14, 0x1

    if-gez v14, :cond_8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_8
    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    if-nez v14, :cond_9

    .line 1646
    invoke-virtual {v3, v13, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_6

    :cond_9
    invoke-virtual {v3, v13, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_6
    move v14, v6

    goto :goto_5

    .line 1647
    :cond_a
    iget-object v4, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1650
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1651
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1652
    iget-object v3, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/4 v13, -0x1

    if-ne v10, v13, :cond_b

    const v4, 0x55ffffff    # 3.518437E13f

    goto :goto_7

    :cond_b
    const/high16 v4, 0x33000000

    :goto_7
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1653
    iget-object v6, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    move/from16 v5, p5

    move v3, v7

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1654
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1655
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const v2, 0x3cb43958    # 0.022f

    mul-float/2addr v8, v2

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1656
    iget-object v1, v0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    if-ne v10, v13, :cond_c

    const v2, -0x55000001

    goto :goto_8

    :cond_c
    const/high16 v2, -0x67000000

    :goto_8
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1657
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getEMin()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v10, "%.0fm"

    invoke-static {v1, v10, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v12, "format(...)"

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    add-float v3, p2, v1

    const/high16 v1, 0x40400000    # 3.0f

    sub-float v4, p5, v1

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    .line 1658
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11}, Lcom/jichi/ob/merge/StickerCore$TerrainGeom;->getEMax()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v10, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x41200000    # 10.0f

    add-float v4, p3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Lcom/jichi/ob/ui/TrackPreviewView;->drawStickerText$default(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/graphics/Canvas;Ljava/lang/String;FFIFILjava/lang/Object;)V

    return-void
.end method

.method public final exitTemplate()V
    .locals 1

    const/4 v0, 0x0

    .line 302
    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setUseTemplate(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final exportTemplatePng(IIZLjava/util/List;FFFZ)Landroid/graphics/Bitmap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FFFZ)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, ","

    const-string v2, "items"

    move-object/from16 v5, p4

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2065
    invoke-virtual/range {p0 .. p2}, Lcom/jichi/ob/ui/TrackPreviewView;->resolveExportSize(II)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 2066
    iget-object v10, v1, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-nez v10, :cond_0

    move v4, v3

    move v3, v2

    move v2, v4

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/jichi/ob/ui/TrackPreviewView;->fallbackExport(IIZLjava/util/List;FFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    move v15, v3

    move v3, v2

    move v2, v15

    .line 2067
    invoke-virtual {v10}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v6, v2

    int-to-float v4, v4

    div-float/2addr v6, v4

    .line 2069
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v7, "createBitmap(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2070
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2071
    invoke-virtual {v10}, Landroid/webkit/WebView;->getLayerType()I

    move-result v11

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v12, 0x0

    .line 2073
    :try_start_0
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 2074
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 2073
    invoke-virtual {v10, v9, v8}, Landroid/webkit/WebView;->measure(II)V

    const/4 v8, 0x0

    .line 2075
    invoke-virtual {v10, v8, v8, v2, v3}, Landroid/webkit/WebView;->layout(IIII)V

    .line 2076
    invoke-virtual {v10, v5, v12}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2077
    invoke-direct {v1}, Lcom/jichi/ob/ui/TrackPreviewView;->buildRenderJs()Ljava/lang/String;

    move-result-object v5

    mul-float v8, p5, v6

    mul-float v6, v6, p6

    iget v9, v1, Lcom/jichi/ob/ui/TrackPreviewView;->rotation:F

    iget v13, v1, Lcom/jichi/ob/ui/TrackPreviewView;->tiltX:F

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v14, "stickerBridge.setTransform("

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v8, p7

    :try_start_1
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ");"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v12}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2078
    invoke-virtual {v10, v7}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2082
    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2083
    new-instance v0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda8;

    invoke-direct {v0, v10, v1}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda8;-><init>(Landroid/webkit/WebView;Lcom/jichi/ob/ui/TrackPreviewView;)V

    invoke-virtual {v1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->post(Ljava/lang/Runnable;)Z

    return-object v4

    :catch_0
    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    :goto_0
    move/from16 v9, p8

    .line 2080
    :try_start_2
    invoke-direct/range {v1 .. v9}, Lcom/jichi/ob/ui/TrackPreviewView;->fallbackExport(IIZLjava/util/List;FFFZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2082
    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2083
    new-instance v2, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda8;

    invoke-direct {v2, v10, v1}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda8;-><init>(Landroid/webkit/WebView;Lcom/jichi/ob/ui/TrackPreviewView;)V

    invoke-virtual {v1, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->post(Ljava/lang/Runnable;)Z

    return-object v0

    .line 2082
    :goto_1
    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2083
    new-instance v2, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda8;

    invoke-direct {v2, v10, v1}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda8;-><init>(Landroid/webkit/WebView;Lcom/jichi/ob/ui/TrackPreviewView;)V

    invoke-virtual {v1, v2}, Lcom/jichi/ob/ui/TrackPreviewView;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public final exportTemplatePngAsync(IIZLjava/util/List;FFFZLkotlin/jvm/functions/Function1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FFFZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v2, p9

    .line 2102
    const-string v0, "items"

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2101
    invoke-virtual/range {p0 .. p2}, Lcom/jichi/ob/ui/TrackPreviewView;->resolveExportSize(II)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 2102
    iget-object v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/jichi/ob/ui/TrackPreviewView;

    move-object v3, p0

    move v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lcom/jichi/ob/ui/TrackPreviewView;->fallbackExport(IIZLjava/util/List;FFFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2105
    :cond_0
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->renderSize()Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    int-to-float v0, v4

    div-float/2addr v0, p2

    int-to-float p2, v5

    div-float/2addr p2, p1

    .line 2108
    invoke-direct {p0, v4, v5}, Lcom/jichi/ob/ui/TrackPreviewView;->buildRenderPayload(II)Ljava/lang/String;

    move-result-object p1

    mul-float v0, v0, p5

    mul-float p2, p2, p6

    .line 2109
    iget v6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->rotation:F

    iget v7, p0, Lcom/jichi/ob/ui/TrackPreviewView;->tiltX:F

    .line 2110
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "stickerBridge.setTransform("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move/from16 v10, p7

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ");stickerBridge.exportPng("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 2111
    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2119
    new-instance v0, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda1;

    move-object v3, p0

    move v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/ui/TrackPreviewView;IIZLjava/util/List;FFFZ)V

    const/4 p1, 0x0

    invoke-static {v1, p1, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->exportTemplatePngAsync$pollReady(Landroid/webkit/WebView;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final exportTransparentPng(IIZIIZLjava/util/List;FFF)Landroid/graphics/Bitmap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZIIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FFF)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move/from16 v0, p1

    const-string v1, "items"

    move-object/from16 v10, p7

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v4, v0

    move v5, v4

    move-object v2, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v14, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    .line 541
    invoke-direct/range {v2 .. v14}, Lcom/jichi/ob/ui/TrackPreviewView;->drawSticker(Landroid/graphics/Canvas;FFIZIILjava/util/List;FFFZ)V

    return-object v1
.end method

.method public final getAspect()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->aspect:Ljava/lang/String;

    return-object v0
.end method

.method public final getBadgeOn()Z
    .locals 1

    .line 1687
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->badgeOn:Z

    return v0
.end method

.method public final getBadgeUrl()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->badgeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBgType()Lcom/jichi/ob/merge/StickerCore$StickerBg;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->bgType:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    return-object v0
.end method

.method public final getBrandIdx()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->brandIdx:I

    return v0
.end method

.method public final getDataLayerOn()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataLayerOn:Z

    return v0
.end method

.method public final getDataStyle()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataStyle:I

    return v0
.end method

.method public final getDx()F
    .locals 1

    .line 171
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dx:F

    return v0
.end method

.method public final getDy()F
    .locals 1

    .line 174
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dy:F

    return v0
.end method

.method public final getGlow()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->glow:Z

    return v0
.end method

.method public final getGlowOn()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->glowOn:Z

    return v0
.end method

.method public final getInclude3d()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->include3d:Z

    return v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getLayoutType()Lcom/jichi/ob/merge/StickerCore$StickerLayout;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->layoutType:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    return-object v0
.end method

.method public final getLineAlpha()F
    .locals 1

    .line 134
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineAlpha:F

    return v0
.end method

.method public final getLineColorMode()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineColorMode:I

    return v0
.end method

.method public final getLineWidth()F
    .locals 1

    .line 131
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    return v0
.end method

.method public final getOnTemplateSwipe()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->onTemplateSwipe:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOverlayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->overlayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    return-object v0
.end method

.method public final getPosMode()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->posMode:I

    return v0
.end method

.method public final getScale()F
    .locals 1

    .line 178
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->scale:F

    return v0
.end method

.method public final getShow3dBand()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->show3dBand:Z

    return v0
.end method

.method public final getStickerPreview()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->stickerPreview:Z

    return v0
.end method

.method public final getStyle()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->style:I

    return v0
.end method

.method public final getSummaryStats()Lcom/jichi/ob/merge/StickerCore$SummaryStats;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->summaryStats:Lcom/jichi/ob/merge/StickerCore$SummaryStats;

    return-object v0
.end method

.method public final getTextColorMode()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->textColorMode:I

    return v0
.end method

.method public final getTextType()Lcom/jichi/ob/merge/StickerCore$StickerText;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->textType:Lcom/jichi/ob/merge/StickerCore$StickerText;

    return-object v0
.end method

.method public final getTiltX()F
    .locals 1

    .line 449
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->tiltX:F

    return v0
.end method

.method public final getTitleOverride()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->titleOverride:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrack3d()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3d:Z

    return v0
.end method

.method public final getTrack3dRx()F
    .locals 1

    .line 235
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRx:F

    return v0
.end method

.method public final getTrack3dRy()F
    .locals 1

    .line 237
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRy:F

    return v0
.end method

.method public final getTrackOn()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackOn:Z

    return v0
.end method

.method public final getTrackRotation()F
    .locals 1

    .line 388
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->rotation:F

    return v0
.end method

.method public final getTrackType()Lcom/jichi/ob/merge/StickerCore$StickerTrack;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackType:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    return-object v0
.end method

.method public final getTrackWidth()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackWidth:I

    return v0
.end method

.method public final getTransparentBg()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->transparentBg:Z

    return v0
.end method

.method public final getUseTemplate()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->useTemplate:Z

    return v0
.end method

.method public final getWatermarkOn()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->watermarkOn:Z

    return v0
.end method

.method public final isTrack3d()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3d:Z

    return v0
.end method

.method public final moveTrackBy(FF)V
    .locals 1

    .line 438
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dx:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setDx(F)V

    .line 439
    iget p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dy:F

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->setDy(F)V

    .line 440
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->pushTransform()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v2, "canvas"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2177
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2179
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->initWebRenderer()V

    .line 2180
    :cond_0
    iget-boolean v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->webReady:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    .line 2181
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->scheduleWebRender()V

    return-void

    .line 2185
    :cond_1
    iget-boolean v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->stickerPreview:Z

    const/high16 v3, 0x41600000    # 14.0f

    const v4, -0x655f5a

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_2

    .line 2186
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2187
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2188
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v5, "\u8d34\u7eb8\u6e32\u67d3\u52a0\u8f7d\u4e2d\u2026"

    invoke-virtual {p1, v5, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 2191
    :cond_2
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2192
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2193
    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2194
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v5, "\u6682\u65e0\u8f68\u8ff9\u6570\u636e"

    invoke-virtual {p1, v5, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 2198
    :cond_3
    iget v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->style:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 2199
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->getWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->getHeight()I

    move-result v2

    int-to-float v5, v2

    iget v6, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineColorMode:I

    iget v7, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dx:F

    iget v8, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dy:F

    iget v9, p0, Lcom/jichi/ob/ui/TrackPreviewView;->scale:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTrackIn(Landroid/graphics/Canvas;FFFFIFFF)V

    return-void

    .line 2201
    :cond_4
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget v7, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dx:F

    iget v8, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dy:F

    iget v9, p0, Lcom/jichi/ob/ui/TrackPreviewView;->scale:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTrackIn(Landroid/graphics/Canvas;FFFFIFFF)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->stickerPreview:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1769
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    sub-int p3, p5, p3

    sub-int p5, v0, p4

    .line 1772
    iget-object p4, p1, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p4, v0, v0, p3, p5}, Landroid/webkit/WebView;->layout(IIII)V

    :cond_0
    if-eqz p2, :cond_2

    .line 1776
    iget p2, p1, Lcom/jichi/ob/ui/TrackPreviewView;->lastW:I

    if-ne p3, p2, :cond_1

    iget p2, p1, Lcom/jichi/ob/ui/TrackPreviewView;->lastH:I

    if-eq p5, p2, :cond_2

    .line 1777
    :cond_1
    iput p3, p1, Lcom/jichi/ob/ui/TrackPreviewView;->lastW:I

    .line 1778
    iput p5, p1, Lcom/jichi/ob/ui/TrackPreviewView;->lastH:I

    .line 1779
    new-instance p2, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/TrackPreviewView$$ExternalSyntheticLambda6;-><init>(Lcom/jichi/ob/ui/TrackPreviewView;)V

    const-wide/16 p3, 0x96

    invoke-virtual {p0, p2, p3, p4}, Lcom/jichi/ob/ui/TrackPreviewView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->stickerPreview:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    if-eq v1, v3, :cond_9

    const/4 v4, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v1, v4, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_9

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_9

    goto/16 :goto_0

    .line 460
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v4, :cond_b

    .line 461
    iput-boolean v3, p0, Lcom/jichi/ob/ui/TrackPreviewView;->twoFinger:Z

    .line 462
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->angleOf(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->twoStartAngle:F

    .line 463
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->twoStartMidY:F

    goto/16 :goto_0

    .line 468
    :cond_2
    iget-boolean v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3d:Z

    const/high16 v6, 0x43b40000    # 360.0f

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->twoFinger:Z

    if-nez v1, :cond_5

    .line 469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lastTouchX:F

    sub-float/2addr v1, v2

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lastTouchY:F

    sub-float/2addr v2, v4

    .line 471
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v0

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 472
    :cond_3
    iget v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRy:F

    mul-float/2addr v0, v6

    div-float/2addr v1, v0

    add-float/2addr v4, v1

    const v1, -0x4099999a    # -0.9f

    const v5, 0x3f666666    # 0.9f

    invoke-static {v4, v1, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/TrackPreviewView;->setTrack3dRy(F)V

    .line 473
    iget v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRx:F

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    const v0, -0x41e66666    # -0.15f

    const v2, 0x3f8ccccd    # 1.1f

    invoke-static {v1, v0, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setTrack3dRx(F)V

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lastTouchY:F

    .line 475
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->push3D()V

    :cond_4
    return v3

    .line 479
    :cond_5
    iget-boolean v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->twoFinger:Z

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v1, v4, :cond_b

    .line 481
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->angleOf(Landroid/view/MotionEvent;)F

    move-result v1

    .line 482
    iget v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->twoStartAngle:F

    sub-float v4, v1, v4

    const/high16 v7, 0x43340000    # 180.0f

    cmpl-float v7, v4, v7

    if-lez v7, :cond_6

    sub-float/2addr v4, v6

    :cond_6
    const/high16 v7, -0x3ccc0000    # -180.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_7

    add-float/2addr v4, v6

    .line 485
    :cond_7
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v5

    if-lez v7, :cond_8

    .line 486
    iget v7, p0, Lcom/jichi/ob/ui/TrackPreviewView;->rotation:F

    add-float/2addr v7, v4

    rem-float/2addr v7, v6

    iput v7, p0, Lcom/jichi/ob/ui/TrackPreviewView;->rotation:F

    .line 487
    iput v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->twoStartAngle:F

    .line 488
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->pushTransform()V

    .line 491
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 492
    iget v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->twoStartMidY:F

    sub-float v2, v1, v2

    .line 493
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    .line 494
    iget v4, p0, Lcom/jichi/ob/ui/TrackPreviewView;->tiltX:F

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v0, v5

    div-float/2addr v2, v0

    add-float/2addr v4, v2

    const/high16 v0, -0x3d740000    # -70.0f

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v4, v0, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    iput v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->tiltX:F

    .line 495
    iput v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->twoStartMidY:F

    .line 496
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->pushTransform()V

    goto :goto_0

    .line 501
    :cond_9
    iput-boolean v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->twoFinger:Z

    goto :goto_0

    .line 456
    :cond_a
    iput-boolean v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->twoFinger:Z

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lastTouchY:F

    .line 503
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 504
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3
.end method

.method public final refreshWebRenderPublic()V
    .locals 1

    .line 1694
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->webReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1695
    :cond_0
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->refreshCssSize()V

    .line 1696
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final renderThumb(Lcom/jichi/ob/merge/StickerCore$StickerTemplate;I)Landroid/graphics/Bitmap;
    .locals 11

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->applyTemplate(Lcom/jichi/ob/merge/StickerCore$StickerTemplate;)V

    .line 318
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "createBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v3, p2

    .line 321
    sget-object p2, Lcom/jichi/ob/merge/StickerCore;->INSTANCE:Lcom/jichi/ob/merge/StickerCore;

    invoke-virtual {p2}, Lcom/jichi/ob/merge/StickerCore;->getITEM_DEFAULT()Ljava/util/List;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x3f051eb8    # 0.52f

    move v4, v3

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/jichi/ob/ui/TrackPreviewView;->drawTemplateSticker(Landroid/graphics/Canvas;FFLjava/util/List;FFFZZ)V

    return-object p1
.end method

.method public final resetTrack3d()V
    .locals 5

    const v0, 0x3f59999a    # 0.85f

    .line 427
    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setTrack3dRx(F)V

    const v0, 0x3f147ae1    # 0.58f

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setTrack3dRy(F)V

    .line 428
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->webReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 429
    iget v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRx:F

    iget v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRy:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stickerBridge.set3DRotate("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final resetTrackTransform()V
    .locals 2

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setDx(F)V

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setDy(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/jichi/ob/ui/TrackPreviewView;->setScale(F)V

    iput v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->rotation:F

    iput v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->tiltX:F

    .line 404
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->pushTransform()V

    return-void
.end method

.method public final resolveExportSize(II)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-lez p2, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    iget-object p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->aspect:Ljava/lang/String;

    const-string v0, "3:4"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    mul-int/lit8 p2, p1, 0x4

    div-int/lit8 p2, p2, 0x3

    goto :goto_0

    .line 278
    :cond_1
    iget-object p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->aspect:Ljava/lang/String;

    const-string v0, "9:16"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    mul-int/lit8 p2, p1, 0x10

    div-int/lit8 p2, p2, 0x9

    goto :goto_0

    :cond_2
    move p2, p1

    .line 281
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final rotateTrackBy(F)V
    .locals 1

    .line 392
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->rotation:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setTrackRotation(F)V

    return-void
.end method

.method public final setAspect(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->aspect:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setBadgeOn(Z)V
    .locals 0

    .line 1688
    iput-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->badgeOn:Z

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setBadgeUrl(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->badgeUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setBgType(Lcom/jichi/ob/merge/StickerCore$StickerBg;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->bgType:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setBrandIdx(I)V
    .locals 2

    .line 258
    sget-object v0, Lcom/jichi/ob/ui/TrackPreviewView;->BRAND_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->brandIdx:I

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setDataLayerOn(Z)V
    .locals 0

    .line 242
    iput-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataLayerOn:Z

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setDataOverride(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataOverrides:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :goto_1
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->scheduleWebRender()V

    return-void
.end method

.method public final setDataStyle(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dataStyle:I

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setDx(F)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dx:F

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setDy(F)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->dy:F

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setGlow(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->glow:Z

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setGlowOn(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->glowOn:Z

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setInclude3d(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->include3d:Z

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->items:Ljava/util/List;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setLayoutType(Lcom/jichi/ob/merge/StickerCore$StickerLayout;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->layoutType:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setLineAlpha(F)V
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 135
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineAlpha:F

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setLineColorMode(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineColorMode:I

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setLineWidth(F)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->lineWidth:F

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setOnTemplateSwipe(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->onTemplateSwipe:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOverlayBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->points:Ljava/util/List;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setPosMode(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->posMode:I

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setScale(F)V
    .locals 2

    const v0, 0x3eb33333    # 0.35f

    const/high16 v1, 0x40200000    # 2.5f

    .line 179
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->scale:F

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setShow3dBand(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->show3dBand:Z

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setStickerPreview(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->stickerPreview:Z

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setStyle(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->style:I

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setSummaryStats(Lcom/jichi/ob/merge/StickerCore$SummaryStats;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->summaryStats:Lcom/jichi/ob/merge/StickerCore$SummaryStats;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setTextColorMode(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->textColorMode:I

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setTextType(Lcom/jichi/ob/merge/StickerCore$StickerText;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->textType:Lcom/jichi/ob/merge/StickerCore$StickerText;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setTitleOverride(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->titleOverride:Ljava/lang/String;

    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->scheduleWebRender()V

    return-void
.end method

.method public final setTrack3d(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3d:Z

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setTrack3dMode(Z)V
    .locals 5

    .line 417
    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->setTrack3d(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/TrackPreviewView;->setGlowOn(Z)V

    .line 419
    :cond_0
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->webReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_1

    .line 420
    iget v1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRx:F

    iget v2, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRy:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stickerBridge.set3DMode("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ");"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setTrack3dRx(F)V
    .locals 2

    const v0, -0x41e66666    # -0.15f

    const v1, 0x3f8ccccd    # 1.1f

    .line 236
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRx:F

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setTrack3dRy(F)V
    .locals 2

    const v0, -0x4099999a    # -0.9f

    const v1, 0x3f666666    # 0.9f

    .line 238
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->track3dRy:F

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setTrackOn(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackOn:Z

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setTrackRotation(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    .line 384
    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->rotation:F

    .line 385
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->pushTransform()V

    return-void
.end method

.method public final setTrackType(Lcom/jichi/ob/merge/StickerCore$StickerTrack;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackType:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setTrackWidth(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x6

    .line 250
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->trackWidth:I

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setTransparentBg(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->transparentBg:Z

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setUseTemplate(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->useTemplate:Z

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final setWatermarkOn(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->watermarkOn:Z

    invoke-virtual {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->invalidate()V

    return-void
.end method

.method public final tiltTrackBy(F)V
    .locals 2

    .line 445
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->tiltX:F

    add-float/2addr v0, p1

    const/high16 p1, -0x3d740000    # -70.0f

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v0, p1, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/jichi/ob/ui/TrackPreviewView;->tiltX:F

    .line 446
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->pushTransform()V

    return-void
.end method

.method public final webReadyPublic()Z
    .locals 1

    .line 1691
    iget-boolean v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->webReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zoomTrackBy(F)V
    .locals 2

    .line 397
    iget v0, p0, Lcom/jichi/ob/ui/TrackPreviewView;->scale:F

    mul-float/2addr v0, p1

    const p1, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, p1, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->setScale(F)V

    .line 398
    invoke-direct {p0}, Lcom/jichi/ob/ui/TrackPreviewView;->pushTransform()V

    return-void
.end method
